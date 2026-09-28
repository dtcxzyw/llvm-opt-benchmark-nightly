Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_base32-9e01f370e39e803c.uu_base32.920a41f3072ac136-cgu.0?download=true
inline.NumInlined: 585
inline.NumDeleted: 338
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvCscxmO3cvmuC8_9uu_base3221CAPTURE_STARTUP_STATE = constant ptr @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals21capture_startup_state, section ".init_array", align 8
@0 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fluent-bundle-0.16.0/src/args.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"e\00\00\00\00\00\00\00Z\00\00\00\1E\00\00\00" }>, align 8
@2 = private unnamed_addr constant [109 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/clap_builder-4.6.5/src/util/flat_map.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"l\00\00\00\00\00\00\00c\00\00\00)\00\00\00" }>, align 8
@4 = private unnamed_addr constant [51 x i8] c"+Mismatch between definition and access of `\C0\03`. \C0\00", align 1
@5 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/clap_builder-4.6.5/src/parser/error.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"k\00\00\00\00\00\00\00 \00\00\00\09\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -5875614554295535572 to ptr), ptr inttoptr (i64 3467203893602029906 to ptr) }>, align 8
@8 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCs6JMX4GRUq9U_4core3anyNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintNtB2_3Any7type_idCscxmO3cvmuC8_9uu_base32 }>, align 8
@9 = private unnamed_addr constant [99 x i8] c"Fatal internal error. Please consider filing a bug report at https://github.com/clap-rs/clap/issues", align 1
@10 = private unnamed_addr constant [122 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/clap_builder-4.6.5/src/parser/matches/arg_matches.rs\00", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"y\00\00\00\00\00\00\00G\04\00\00\0E\00\00\00" }>, align 8
@12 = private unnamed_addr constant [95 x i8] c"/rustc/7608eb7b07eaf93f16d7cf5bcb2098eca87503df/library/alloc/src/collections/vec_deque/mod.rs\00", align 1
@13 = private unnamed_addr constant [17 x i8] c"capacity overflow", align 1
@14 = private unnamed_addr constant [34 x i8] c"stream did not contain valid UTF-8", align 1
@15 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @14, [9 x i8] c"\22\00\00\00\00\00\00\00\15", [7 x i8] undef }>, align 8
@16 = private unnamed_addr constant [77 x i8] c"/rustc/7608eb7b07eaf93f16d7cf5bcb2098eca87503df/library/alloc/src/io/read.rs\00", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"L\00\00\00\00\00\00\00\E7\03\00\00\1F\00\00\00" }>, align 8
@18 = private unnamed_addr constant [27 x i8] c"failed to fill whole buffer", align 1
@19 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @18, [9 x i8] c"\1B\00\00\00\00\00\00\00%", [7 x i8] undef }>, align 8
@20 = private unnamed_addr constant [81 x i8] c"/rustc/7608eb7b07eaf93f16d7cf5bcb2098eca87503df/library/alloc/src/io/buf_read.rs\00", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @20, [16 x i8] c"P\00\00\00\00\00\00\00\BB\01\00\00-\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorECscxmO3cvmuC8_9uu_base32, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsa_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorECscxmO3cvmuC8_9uu_base32, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt, ptr @_RNvXsa_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr @22, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCscxmO3cvmuC8_9uu_base32, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCscxmO3cvmuC8_9uu_base32, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCscxmO3cvmuC8_9uu_base32, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCscxmO3cvmuC8_9uu_base32, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCscxmO3cvmuC8_9uu_base32, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtB4_6UError4codeCscxmO3cvmuC8_9uu_base32, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtB4_6UError5usageCscxmO3cvmuC8_9uu_base32 }>, align 8
@24 = private unnamed_addr constant [4 x i8] c"size", align 1
@25 = private unnamed_addr constant [29 x i8] c"base-common-invalid-wrap-size", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorECscxmO3cvmuC8_9uu_base32, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorECscxmO3cvmuC8_9uu_base32, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsv_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt, ptr @_RNvXs1_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr @26, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCscxmO3cvmuC8_9uu_base32, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCscxmO3cvmuC8_9uu_base32, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCscxmO3cvmuC8_9uu_base32, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCscxmO3cvmuC8_9uu_base32, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCscxmO3cvmuC8_9uu_base32, ptr @_RNvXs2_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtB5_6UError4code, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtB4_6UError5usageCscxmO3cvmuC8_9uu_base32 }>, align 8
@28 = private unnamed_addr constant [66 x i8] c"assertion failed: leftover_buffer.len() < encode_in_chunks_of_size", align 1
@29 = private unnamed_addr constant [33 x i8] c"src/uu/base32/src/base_common.rs\00", align 1
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c" \00\00\00\00\00\00\00\CA\01\00\00\15\00\00\00" }>, align 8
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c" \00\00\00\00\00\00\00\C6\01\00\00$\00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c" \00\00\00\00\00\00\00\D2\01\00\00\11\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c" \00\00\00\00\00\00\00\D8\01\00\00\12\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c" \00\00\00\00\00\00\00\E1\01\00\00\12\00\00\00" }>, align 8
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"y\00\00\00\00\00\00\00a\07\00\00\01\00\00\00" }>, align 8
@36 = private unnamed_addr constant [12 x i8] c"base32-about", align 1
@37 = private unnamed_addr constant [12 x i8] c"base32-usage", align 1
@38 = private unnamed_addr constant [6 x i8] c"base32", align 1
@39 = private unnamed_addr constant [35 x i8] c"assertion failed: mid <= self.len()", align 1
@40 = private unnamed_addr constant [78 x i8] c"/rustc/7608eb7b07eaf93f16d7cf5bcb2098eca87503df/library/core/src/slice/mod.rs\00", align 1
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @40, [16 x i8] c"M\00\00\00\00\00\00\00@\0F\00\00\09\00\00\00" }>, align 8
@42 = private unnamed_addr constant [33 x i8] c"assertion failed: k <= self.len()", align 1
@43 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @40, [16 x i8] c"M\00\00\00\00\00\00\00n\0F\00\00\09\00\00\00" }>, align 8
@44 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECscxmO3cvmuC8_9uu_base32, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsn_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_ENtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmtCscxmO3cvmuC8_9uu_base32 }>, align 8
@45 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@46 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCs6JMX4GRUq9U_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@47 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCs6JMX4GRUq9U_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt }>, align 8
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c" \00\00\00\00\00\00\005\00\00\00*\00\00\00" }>, align 8
@49 = private unnamed_addr constant [7 x i8] c"operand", align 1
@50 = private unnamed_addr constant [25 x i8] c"base-common-extra-operand", align 1
@51 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error11UUsageErrorECscxmO3cvmuC8_9uu_base32, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_11UUsageErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt }>, align 8
@52 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error11UUsageErrorECscxmO3cvmuC8_9uu_base32, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsw_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_11UUsageErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt, ptr @_RNvXs5_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_11UUsageErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr @51, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error11UUsageErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCscxmO3cvmuC8_9uu_base32, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error11UUsageErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCscxmO3cvmuC8_9uu_base32, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error11UUsageErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCscxmO3cvmuC8_9uu_base32, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error11UUsageErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCscxmO3cvmuC8_9uu_base32, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error11UUsageErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCscxmO3cvmuC8_9uu_base32, ptr @_RNvXs6_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_11UUsageErrorNtB5_6UError4code, ptr @_RNvXs6_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_11UUsageErrorNtB5_6UError5usage }>, align 8
@_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"l\00\00\00\00\00\00\00\16\00\00\000\00\00\00" }>, align 8
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"^\00\00\00\00\00\00\00T\04\00\008\00\00\00" }>, align 8
@55 = private unnamed_addr constant [5 x i8] c"error", align 1
@56 = private unnamed_addr constant [22 x i8] c"base-common-read-error", align 1
@57 = private unnamed_addr constant [64 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/", align 1
@58 = private unnamed_addr constant [65 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/=", align 1
@59 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB4_17Base64SimdWrapperNtB4_27SupportsFastDecodeAndEncode8alphabet, ptr @_RNvXs_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB4_17Base64SimdWrapperNtB4_27SupportsFastDecodeAndEncode15decode_into_vec, ptr @_RNvXs_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB4_17Base64SimdWrapperNtB4_27SupportsFastDecodeAndEncode19encode_to_vec_deque, ptr @_RNvXs_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB4_17Base64SimdWrapperNtB4_27SupportsFastDecodeAndEncode17unpadded_multiple, ptr @_RNvXs_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB4_17Base64SimdWrapperNtB4_27SupportsFastDecodeAndEncode23valid_decoding_multiple, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features8encoding17Base64SimdWrapperNtB4_27SupportsFastDecodeAndEncode23supports_partial_decodeCscxmO3cvmuC8_9uu_base32, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features8encoding17Base64SimdWrapperNtB4_27SupportsFastDecodeAndEncode13pad_remainderCscxmO3cvmuC8_9uu_base32 }>, align 8
@60 = private unnamed_addr constant [65 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789=_-", align 1
@61 = private unnamed_addr constant [514 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80>\80\80456789:;<=\80\80\80\82\80\80\80\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\80\80\80\80?\80\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80=\1E", align 1
@62 = private unnamed_addr constant <{ [8 x i8], ptr, [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", ptr @61, [8 x i8] c"\02\02\00\00\00\00\00\00" }>, align 8
@63 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features8encoding15EncodingWrapperECscxmO3cvmuC8_9uu_base32, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_15EncodingWrapperNtB5_27SupportsFastDecodeAndEncode8alphabet, ptr @_RNvXs3_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_15EncodingWrapperNtB5_27SupportsFastDecodeAndEncode15decode_into_vec, ptr @_RNvXs3_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_15EncodingWrapperNtB5_27SupportsFastDecodeAndEncode19encode_to_vec_deque, ptr @_RNvXs3_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_15EncodingWrapperNtB5_27SupportsFastDecodeAndEncode17unpadded_multiple, ptr @_RNvXs3_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_15EncodingWrapperNtB5_27SupportsFastDecodeAndEncode23valid_decoding_multiple, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features8encoding15EncodingWrapperNtB4_27SupportsFastDecodeAndEncode23supports_partial_decodeCscxmO3cvmuC8_9uu_base32, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features8encoding15EncodingWrapperNtB4_27SupportsFastDecodeAndEncode13pad_remainderCscxmO3cvmuC8_9uu_base32 }>, align 8
@64 = private unnamed_addr constant [33 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ234567=", align 1
@65 = private unnamed_addr constant [514 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ234567ABCDEFGHIJKLMNOPQRSTUVWXYZ234567ABCDEFGHIJKLMNOPQRSTUVWXYZ234567ABCDEFGHIJKLMNOPQRSTUVWXYZ234567ABCDEFGHIJKLMNOPQRSTUVWXYZ234567ABCDEFGHIJKLMNOPQRSTUVWXYZ234567ABCDEFGHIJKLMNOPQRSTUVWXYZ234567ABCDEFGHIJKLMNOPQRSTUVWXYZ234567\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\1A\1B\1C\1D\1E\1F\80\80\80\80\80\82\80\80\80\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80=\1D", align 1
@66 = private unnamed_addr constant <{ [8 x i8], ptr, [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", ptr @65, [8 x i8] c"\02\02\00\00\00\00\00\00" }>, align 8
@67 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features8encoding13Base32WrapperECscxmO3cvmuC8_9uu_base32, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base32WrapperNtB5_27SupportsFastDecodeAndEncode8alphabet, ptr @_RNvXs5_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base32WrapperNtB5_27SupportsFastDecodeAndEncode15decode_into_vec, ptr @_RNvXs5_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base32WrapperNtB5_27SupportsFastDecodeAndEncode19encode_to_vec_deque, ptr @_RNvXs5_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base32WrapperNtB5_27SupportsFastDecodeAndEncode17unpadded_multiple, ptr @_RNvXs5_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base32WrapperNtB5_27SupportsFastDecodeAndEncode23valid_decoding_multiple, ptr @_RNvXs5_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base32WrapperNtB5_27SupportsFastDecodeAndEncode23supports_partial_decode, ptr @_RNvXs5_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base32WrapperNtB5_27SupportsFastDecodeAndEncode13pad_remainder }>, align 8
@68 = private unnamed_addr constant [33 x i8] c"0123456789ABCDEFGHIJKLMNOPQRSTUV=", align 1
@69 = private unnamed_addr constant [514 x i8] c"0123456789ABCDEFGHIJKLMNOPQRSTUV0123456789ABCDEFGHIJKLMNOPQRSTUV0123456789ABCDEFGHIJKLMNOPQRSTUV0123456789ABCDEFGHIJKLMNOPQRSTUV0123456789ABCDEFGHIJKLMNOPQRSTUV0123456789ABCDEFGHIJKLMNOPQRSTUV0123456789ABCDEFGHIJKLMNOPQRSTUV0123456789ABCDEFGHIJKLMNOPQRSTUV\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\00\01\02\03\04\05\06\07\08\09\80\80\80\82\80\80\80\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80=\1D", align 1
@70 = private unnamed_addr constant <{ [8 x i8], ptr, [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", ptr @69, [8 x i8] c"\02\02\00\00\00\00\00\00" }>, align 8
@71 = private unnamed_addr constant [22 x i8] c"0123456789ABCDEFabcdef", align 1
@72 = private unnamed_addr constant [514 x i8] c"0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\00\01\02\03\04\05\06\07\08\09\80\80\80\80\80\80\80\0A\0B\0C\0D\0E\0F\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\0A\0B\0C\0D\0E\0F\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\1C", align 1
@73 = private unnamed_addr constant <{ [8 x i8], ptr, [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", ptr @72, [8 x i8] c"\02\02\00\00\00\00\00\00" }>, align 8
@74 = private unnamed_addr constant [2 x i8] c"01", align 1
@75 = private unnamed_addr constant [514 x i8] c"0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\00\01\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\11", align 1
@76 = private unnamed_addr constant <{ [8 x i8], ptr, [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", ptr @75, [8 x i8] c"\02\02\00\00\00\00\00\00" }>, align 8
@77 = private unnamed_addr constant [514 x i8] c"0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\00\01\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\19", align 1
@78 = private unnamed_addr constant <{ [8 x i8], ptr, [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", ptr @77, [8 x i8] c"\02\02\00\00\00\00\00\00" }>, align 8
@79 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs2_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_10Z85WrapperNtB5_27SupportsFastDecodeAndEncode8alphabet, ptr @_RNvXs2_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_10Z85WrapperNtB5_27SupportsFastDecodeAndEncode15decode_into_vec, ptr @_RNvXs2_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_10Z85WrapperNtB5_27SupportsFastDecodeAndEncode19encode_to_vec_deque, ptr @_RNvXs2_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_10Z85WrapperNtB5_27SupportsFastDecodeAndEncode17unpadded_multiple, ptr @_RNvXs2_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_10Z85WrapperNtB5_27SupportsFastDecodeAndEncode23valid_decoding_multiple, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features8encoding10Z85WrapperNtB4_27SupportsFastDecodeAndEncode23supports_partial_decodeCscxmO3cvmuC8_9uu_base32, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features8encoding10Z85WrapperNtB4_27SupportsFastDecodeAndEncode13pad_remainderCscxmO3cvmuC8_9uu_base32 }>, align 8
@80 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base58WrapperNtB5_27SupportsFastDecodeAndEncode8alphabet, ptr @_RNvXs1_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base58WrapperNtB5_27SupportsFastDecodeAndEncode15decode_into_vec, ptr @_RNvXs1_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base58WrapperNtB5_27SupportsFastDecodeAndEncode19encode_to_vec_deque, ptr @_RNvXs1_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base58WrapperNtB5_27SupportsFastDecodeAndEncode17unpadded_multiple, ptr @_RNvXs1_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base58WrapperNtB5_27SupportsFastDecodeAndEncode23valid_decoding_multiple, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features8encoding13Base58WrapperNtB4_27SupportsFastDecodeAndEncode23supports_partial_decodeCscxmO3cvmuC8_9uu_base32, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features8encoding13Base58WrapperNtB4_27SupportsFastDecodeAndEncode13pad_remainderCscxmO3cvmuC8_9uu_base32 }>, align 8
@81 = private unnamed_addr constant [25 x i8] c"(uutils coreutils) 0.10.0", align 1
@82 = private unnamed_addr constant [23 x i8] c"base-common-help-decode", align 1
@83 = private unnamed_addr constant [31 x i8] c"base-common-help-ignore-garbage", align 1
@84 = private unnamed_addr constant [4 x i8] c"COLS", align 1
@85 = private unnamed_addr constant [7 x i8] c"default", align 1
@86 = private unnamed_addr constant [21 x i8] c"base-common-help-wrap", align 1
@87 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEECscxmO3cvmuC8_9uu_base32, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read4readCscxmO3cvmuC8_9uu_base32, ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read13read_vectoredCscxmO3cvmuC8_9uu_base32, ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read16is_read_vectoredCscxmO3cvmuC8_9uu_base32, ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read11read_to_endCscxmO3cvmuC8_9uu_base32, ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read14read_to_stringCscxmO3cvmuC8_9uu_base32, ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read10read_exactCscxmO3cvmuC8_9uu_base32, ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read8read_bufCscxmO3cvmuC8_9uu_base32, ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read14read_buf_exactCscxmO3cvmuC8_9uu_base32, ptr @_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32, ptr @_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_8buf_read7BufRead7consumeCscxmO3cvmuC8_9uu_base32, ptr @_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_8buf_read7BufRead13has_data_leftCscxmO3cvmuC8_9uu_base32, ptr @_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_8buf_read7BufRead10read_untilCscxmO3cvmuC8_9uu_base32, ptr @_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_8buf_read7BufRead10skip_untilCscxmO3cvmuC8_9uu_base32, ptr @_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_8buf_read7BufRead9read_lineCscxmO3cvmuC8_9uu_base32 }>, align 8
@88 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECscxmO3cvmuC8_9uu_base32, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read4readCscxmO3cvmuC8_9uu_base32, ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read13read_vectoredCscxmO3cvmuC8_9uu_base32, ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read16is_read_vectoredCscxmO3cvmuC8_9uu_base32, ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read11read_to_endCscxmO3cvmuC8_9uu_base32, ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_to_stringCscxmO3cvmuC8_9uu_base32, ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read10read_exactCscxmO3cvmuC8_9uu_base32, ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read8read_bufCscxmO3cvmuC8_9uu_base32, ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_buf_exactCscxmO3cvmuC8_9uu_base32, ptr @_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32, ptr @_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead7consumeCscxmO3cvmuC8_9uu_base32, ptr @_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead13has_data_leftCscxmO3cvmuC8_9uu_base32, ptr @_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead10read_untilCscxmO3cvmuC8_9uu_base32, ptr @_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead10skip_untilCscxmO3cvmuC8_9uu_base32, ptr @_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCscxmO3cvmuC8_9uu_base32 }>, align 8
@89 = private unnamed_addr constant [80 x i8] c"/rustc/7608eb7b07eaf93f16d7cf5bcb2098eca87503df/library/core/src/slice/index.rs\00", align 1
@90 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @89, [16 x i8] c"O\00\00\00\00\00\00\00\F1\03\00\003\00\00\00" }>, align 8
@91 = private unnamed_addr constant [46 x i8] c"assertion failed: decode_in_chunks_of_size > 0", align 1
@92 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c" \00\00\00\00\00\00\00\C7\02\00\00\09\00\00\00" }>, align 8
@93 = private unnamed_addr constant [36 x i8] c"assertion failed: valid_multiple > 0", align 1
@94 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c" \00\00\00\00\00\00\00\C8\02\00\00\09\00\00\00" }>, align 8
@95 = private unnamed_addr constant [20 x i8] c"error: invalid input", align 1
@96 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c" \00\00\00\00\00\00\00$\03\00\00\09\00\00\00" }>, align 8
@97 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c" \00\00\00\00\00\00\00%\03\00\00\09\00\00\00" }>, align 8
@98 = private unnamed_addr constant [46 x i8] c"assertion failed: encode_in_chunks_of_size > 0", align 1
@99 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c" \00\00\00\00\00\00\00\A1\01\00\00\09\00\00\00" }>, align 8
@100 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c" \00\00\00\00\00\00\00\0F\02\00\00\09\00\00\00" }>, align 8
@101 = private unnamed_addr constant [1 x i8] c"\0A", align 1
@102 = private unnamed_addr constant [14 x i8] c"ignore-garbage", align 1
@_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common7options14IGNORE_GARBAGE = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @102, [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8
@103 = private unnamed_addr constant [4 x i8] c"file", align 1
@_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common7options4FILE = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @103, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@104 = private unnamed_addr constant [4 x i8] c"wrap", align 1
@_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common7options4WRAP = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @104, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@105 = private unnamed_addr constant [6 x i8] c"decode", align 1
@_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common7options6DECODE = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @105, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@106 = private unnamed_addr constant [58 x i8] c"123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz", align 1
@107 = private unnamed_addr constant [85 x i8] c"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ.-:+=^!/*?&<>()[]{}@%$#", align 1
@108 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_char, ptr @_RNvYNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtCscxmO3cvmuC8_9uu_base32 }>, align 8
@109 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@110 = private unnamed_addr constant [76 x i8] c"/rustc/7608eb7b07eaf93f16d7cf5bcb2098eca87503df/library/alloc/src/string.rs\00", align 1
@111 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @110, [16 x i8] c"K\00\00\00\00\00\00\00\89\0B\00\00\0E\00\00\00" }>, align 8
@112 = private unnamed_addr constant [5 x i8] c"Error", align 1
@113 = private unnamed_addr constant [4 x i8] c"None", align 1
@114 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs7tKScEop1B6_5alloc6string6StringNtB6_5Debug3fmtCscxmO3cvmuC8_9uu_base32 }>, align 8
@115 = private unnamed_addr constant [4 x i8] c"Some", align 1
@116 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsQ_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_5Debug3fmt }>, align 8
@117 = private unnamed_addr constant [12 x i8] c"USimpleError", align 1
@118 = private unnamed_addr constant [4 x i8] c"code", align 1
@119 = private unnamed_addr constant [7 x i8] c"message", align 1
@120 = private unnamed_addr constant [11 x i8] c"UUsageError", align 1
@121 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECscxmO3cvmuC8_9uu_base32, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionNtNtCs7tKScEop1B6_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCscxmO3cvmuC8_9uu_base32 }>, align 8
@122 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCscxmO3cvmuC8_9uu_base32 }>, align 8
@123 = private unnamed_addr constant [8 x i8] c"UIoError", align 1
@124 = private unnamed_addr constant [7 x i8] c"context", align 1
@125 = private unnamed_addr constant [5 x i8] c"inner", align 1
@126 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@127 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 8203884416791978196 to ptr), ptr inttoptr (i64 -4502996807296486835 to ptr) }>, align 8
@128 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 8022765338115755166 to ptr), ptr inttoptr (i64 -4205221647133633730 to ptr) }>, align 8
@129 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7465031386275593344 to ptr), ptr inttoptr (i64 2227572798057049637 to ptr) }>, align 8
@llvm.used = appending global [1 x ptr] [ptr @_RNvCscxmO3cvmuC8_9uu_base3221CAPTURE_STARTUP_STATE], section "llvm.metadata"

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 4, 8) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !9 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  switch i64 %i.d, label %.lr.ph.i.i [
    i64 0, label %bb.c
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.t, %.lr.ph.i.i ] ; 4 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.05.0.lcssa.i.i ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %.sroa.0.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !alias.scope !55, !noalias !56, !nonnull !9, !noundef !9
  %.sroa.3.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i, align 8, !alias.scope !55, !noalias !56, !noundef !9 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i, i64 %2)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !57, !noalias !58 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i32 %i.f, 0
  %i.i = sub i64 %.sroa.3.0.i.i.i.i.i, %2
  %spec.select.i.i.i.i.i.i = select i1 %i.h, i64 %i.i, i64 %i.g ; 2 uses
  %i.j = icmp eq i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %i.j, label %bb.g, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.025.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.05.024.i.i = phi i64 [ %i.t, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.sroa.01.025.i.i, 1            ; 2 uses
  %i.l = add nuw nsw i64 %i.k, %.sroa.05.024.i.i  ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.d
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %i.l ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %.sroa.0.0.in.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.i.i.i15.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i, align 8, !alias.scope !61, !noalias !62, !nonnull !9, !noundef !9
  %.sroa.3.0.in.i.i.i16.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.3.0.i.i.i17.i.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i, align 8, !alias.scope !61, !noalias !62, !noundef !9 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i, i64 %2)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i22.i.i), !alias.scope !63, !noalias !64 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %i.r = sub i64 %.sroa.3.0.i.i.i17.i.i, %2
  %spec.select.i.i.i.i23.i.i = select i1 %i.q, i64 %i.r, i64 %i.p
  %i.s = icmp sgt i64 %spec.select.i.i.i.i23.i.i, 0
  %i.t = select i1 %i.s, i64 %.sroa.05.024.i.i, i64 %i.l, !unpredictable !9 ; 2 uses
  %i.u = sub nuw nsw i64 %.sroa.01.025.i.i, %i.k  ; 2 uses
  %i.v = icmp ugt i64 %i.u, 1
  br i1 %i.v, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %spec.select.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.w = add nuw nsw i64 %spec.select.i.i.i.i.lobit.i.i, %.sroa.05.0.lcssa.i.i ; 2 uses
  %i.x = icmp ule i64 %i.w, %i.d
  tail call void @llvm.assume(i1 %i.x)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i.ph = phi i64 [ %i.w, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.y = icmp ult i64 %i.d, 64051194700380388
  tail call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %0, align 8, !range !10, !alias.scope !65, !noalias !66, !noundef !9
  %i.aa = icmp eq i64 %i.d, %i.z
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #22, !noalias !66
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !65, !noalias !66
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = phi ptr [ %.pre, %bb.d ], [ %i.b, %bb.c ]
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr %i.ab, i64 %.sroa.4.0.i.i.ph ; 7 uses
  %i.ad = icmp samesign ult i64 %.sroa.4.0.i.i.ph, %i.d
  br i1 %i.ad, label %bb.f, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCscxmO3cvmuC8_9uu_base32.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.af = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph
  %i.ag = mul nuw nsw i64 %i.af, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ac, i64 %i.ag, i1 false), !noalias !66
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCscxmO3cvmuC8_9uu_base32.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.e, %bb.f
  store i64 -1, ptr %i.ac, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %1, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %2, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.ah = add nuw nsw i64 %i.d, 1
  store i64 %i.ah, ptr %i.c, align 8, !alias.scope !65, !noalias !66
  br label %bb.j

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ai = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.d
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #23
  store i64 -1, ptr %i.e, align 8
  store ptr %1, ptr %.sroa.0.0.in.i.i.i.i.i, align 8
  store i64 %2, ptr %.sroa.3.0.in.i.i.i.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 2, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
  unreachable

bb.j:                                             ; preds = %bb.h, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCscxmO3cvmuC8_9uu_base32.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 4, 8) %2, double noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !9 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  switch i64 %i.d, label %.lr.ph.i.i [
    i64 0, label %.thread
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.t, %.lr.ph.i.i ] ; 4 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.05.0.lcssa.i.i ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %.sroa.0.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !alias.scope !95, !noalias !96, !nonnull !9, !noundef !9
  %.sroa.3.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i, align 8, !alias.scope !95, !noalias !96, !noundef !9 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i, i64 %2)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !97, !noalias !98 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i32 %i.f, 0
  %i.i = sub i64 %.sroa.3.0.i.i.i.i.i, %2
  %spec.select.i.i.i.i.i.i = select i1 %i.h, i64 %i.i, i64 %i.g ; 2 uses
  %i.j = icmp eq i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %i.j, label %bb.f, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.025.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.05.024.i.i = phi i64 [ %i.t, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.sroa.01.025.i.i, 1            ; 2 uses
  %i.l = add nuw nsw i64 %i.k, %.sroa.05.024.i.i  ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.d
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %i.l ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %.sroa.0.0.in.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.i.i.i15.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i, align 8, !alias.scope !101, !noalias !102, !nonnull !9, !noundef !9
  %.sroa.3.0.in.i.i.i16.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.3.0.i.i.i17.i.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i, align 8, !alias.scope !101, !noalias !102, !noundef !9 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i, i64 %2)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i22.i.i), !alias.scope !103, !noalias !104 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %i.r = sub i64 %.sroa.3.0.i.i.i17.i.i, %2
  %spec.select.i.i.i.i23.i.i = select i1 %i.q, i64 %i.r, i64 %i.p
  %i.s = icmp sgt i64 %spec.select.i.i.i.i23.i.i, 0
  %i.t = select i1 %i.s, i64 %.sroa.05.024.i.i, i64 %i.l, !unpredictable !9 ; 2 uses
  %i.u = sub nuw nsw i64 %.sroa.01.025.i.i, %i.k  ; 2 uses
  %i.v = icmp ugt i64 %i.u, 1
  br i1 %i.v, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %spec.select.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.w = add nuw nsw i64 %spec.select.i.i.i.i.lobit.i.i, %.sroa.05.0.lcssa.i.i ; 2 uses
  %i.x = icmp ule i64 %i.w, %i.d
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp ult i64 %i.d, 64051194700380388
  tail call void @llvm.assume(i1 %i.y)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i.ph60 = phi i64 [ %i.w, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.z = load i64, ptr %0, align 8, !range !10, !alias.scope !105, !noalias !106, !noundef !9
end_hunk_0
begin_hunk_1_@_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10filter_map15filter_map_foldTjRhERShuNCNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_buffer0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1f_NCB1l_s_0E0E0B1r_:bb.a
  br i1 %i.bg, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callRShNCNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_buffers_0E0B1q_.exit, label %bb.o, !prof !20

bb.o:                                             ; preds = %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque11spec_extendINtB7_8VecDequehEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCscxmO3cvmuC8_9uu_base32.exit.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24, !noalias !355
  unreachable

bb.p:                                             ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !366
  store i64 %i.q, ptr %i.c, align 8, !noalias !366
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !367, !noalias !368, !nonnull !9, !align !12, !noundef !9 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !366, !noundef !9
  %i.bk = icmp eq i64 %i.q, %i.bj
  br i1 %i.bk, label %bb.r, label %bb.q, !prof !20

bb.q:                                             ; preds = %bb.p
  call void @_RINvNtCs6JMX4GRUq9U_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bi, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #24, !noalias !366
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !366
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !367, !noalias !368, !nonnull !9, !noundef !9
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !367, !noalias !368, !nonnull !9, !align !12, !noundef !9
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !367, !noalias !368, !nonnull !9, !align !12, !noundef !9 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bo, i64 40
  %.val.i.i = load ptr, ptr %i.br, align 8, !noalias !366
  %i.bs = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %i.bm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef range(i64 0, -9223372036854775808) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bq) #25, !noalias !367, !inline_history !354 ; 2 uses
  %i.bt = extractvalue { ptr, ptr } %i.bs, 0      ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i4, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EE6unwrapCscxmO3cvmuC8_9uu_base32.exit.i.i, label %bb.s, !prof !20

bb.s:                                             ; preds = %bb.r
  %i.bu = extractvalue { ptr, ptr } %i.bs, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !366
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  store ptr %i.bt, ptr %i.b, align 8, !noalias !366
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !noalias !366
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #24, !noalias !367
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EE6unwrapCscxmO3cvmuC8_9uu_base32.exit.i.i: ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !367, !noalias !368, !nonnull !9, !align !12, !noundef !9
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !367, !noalias !368, !nonnull !9, !noundef !9
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !367, !noalias !368, !nonnull !9, !align !12, !noundef !9
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !367, !noalias !368, !nonnull !9, !align !12, !noundef !9 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !range !22, !noalias !367, !noundef !9
  %i.cf = trunc nuw i64 %i.ce to i1
  br i1 %i.cf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EE6unwrapCscxmO3cvmuC8_9uu_base32.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !367, !noundef !9
  %i.ci = icmp eq i64 %i.ch, 0
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EE6unwrapCscxmO3cvmuC8_9uu_base32.exit.i.i
  %.sroa.0.0.i.i5 = phi i1 [ %i.ci, %bb.t ], [ false, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EE6unwrapCscxmO3cvmuC8_9uu_base32.exit.i.i ]
  %i.cj = getelementptr i8, ptr %i.cb, i64 56
  %.val2.i.i = load ptr, ptr %i.cj, align 8, !noalias !367
  %i.ck = tail call fastcc noundef ptr @_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode15write_to_output(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bx, ptr noalias nofree noundef align 8 dereferenceable(32) %i.bq, ptr noundef nonnull %i.bz, ptr %.val2.i.i, i1 noundef zeroext false, i1 noundef zeroext %.sroa.0.0.i.i5) #23, !noalias !367 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i1.i.i, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callRShNCNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_buffers_0E0B1q_.exit, label %bb.v, !prof !20

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !366
  store ptr %i.ck, ptr %i.a, align 8, !noalias !366
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #24, !noalias !367
  unreachable

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callRShNCNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_buffers_0E0B1q_.exit: ; preds = %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque11spec_extendINtB7_8VecDequehEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCscxmO3cvmuC8_9uu_base32.exit.i, %bb.u
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define void @_RNvCscxmO3cvmuC8_9uu_base326uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 12) #23
  call void @_RNvNtCscxmO3cvmuC8_9uu_base3211base_common8base_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @38, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 6, ptr %i.d, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMNtCscxmO3cvmuC8_9uu_base3211base_commonNtB2_6Config4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [40 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 16               ; 4 uses
  %i.r = alloca [16 x i8], align 16               ; 4 uses
  %i.s = alloca [16 x i8], align 16               ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  %i.u = alloca [40 x i8], align 8                ; 7 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 16               ; 4 uses
  %i.x = alloca [16 x i8], align 16               ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 3 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !434, !noalias !435, !nonnull !9, !noundef !9 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !434, !noalias !435, !noundef !9 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ai, 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i.i.i ; 2 uses
  %i.ak = icmp eq i64 %i.ai, 0
  br i1 %i.ak, label %_RNCNvMNtCscxmO3cvmuC8_9uu_base3211base_commonNtB4_6Config4from0B6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i
  %.sroa.0.0917.i.i.i = phi ptr [ %i.al, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ], [ %i.ag, %bb.a ] ; 3 uses
  %.sroa.8.016.i.i.i = phi i64 [ %i.am, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0917.i.i.i, i64 16 ; 2 uses
  %i.am = add nuw nsw i64 %.sroa.8.016.i.i.i, 1
  %i.an = getelementptr i8, ptr %.sroa.0.0917.i.i.i, i64 8
  %.val7.i.i.i = load i64, ptr %i.an, align 8, !noalias !436, !noundef !9
  %i.ao = icmp eq i64 %.val7.i.i.i, 4
  br i1 %i.ao, label %.split.i.i.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %.val.i.i.i = load ptr, ptr %.sroa.0.0917.i.i.i, align 8, !noalias !436, !nonnull !9, !noundef !9
  %i.ap = load i32, ptr %.val.i.i.i, align 1
  %i.aq = icmp ne i32 %i.ap, 1701603686
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.b, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %.lr.ph.i.i.i
  %i.at = icmp eq ptr %i.al, %i.aj
  br i1 %i.at, label %.loopexit164, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %.split.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !434, !noalias !435, !noundef !9 ; 2 uses
  %i.aw = icmp ult i64 %.sroa.8.016.i.i.i, %i.av
  br i1 %i.aw, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i.i, i64 noundef %i.av, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24, !noalias !436
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !434, !noalias !435, !nonnull !9, !noundef !9
  %i.az = getelementptr inbounds nuw [104 x i8], ptr %i.ay, i64 %.sroa.8.016.i.i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !437
  store i128 -49237559333878691962261109163680243548, ptr %i.w, align 16, !noalias !437
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.w) #23, !noalias !437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !437
  %.sroa.013.0.copyload.i.i = load i128, ptr %i.x, align 16, !noalias !437 ; 3 uses
  %i.ba = icmp eq i128 %.sroa.013.0.copyload.i.i, -49237559333878691962261109163680243548
  br i1 %i.ba, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = lshr i128 %.sroa.013.0.copyload.i.i, 64
  %i.bc = trunc nuw i128 %i.bb to i64
  %i.bd = trunc i128 %.sroa.013.0.copyload.i.i to i64
  %i.be = inttoptr i64 %i.bd to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr @103, ptr %i.v, align 8, !noalias !438
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 4, ptr %i.bf, align 8, !noalias !438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !438
  store i64 0, ptr %i.u, align 8, !noalias !439
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.be, ptr %.sroa.10.8..sroa_idx, align 8, !noalias !439
  %.sroa.13101.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.bc, ptr %.sroa.13101.8..sroa_idx, align 8, !noalias !439
  %.sroa.16.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 -5815876261132279644, ptr %.sroa.16.8..sroa_idx, align 8, !noalias !439
  %.sroa.16.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i64 -2669173439883760220, ptr %.sroa.16.8..sroa_idx.sroa_idx, align 8, !noalias !439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !438
  store ptr %i.v, ptr %i.t, align 8, !noalias !438
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCscxmO3cvmuC8_9uu_base32, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !438
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.u, ptr %i.bg, align 8, !noalias !438
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !438
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #24, !noalias !438
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !437
  %i.bh = call noundef i64 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.az) #23, !noalias !440 ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !440, !nonnull !9, !noundef !9 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !440, !noundef !9 ; 2 uses
  %.idx = mul nuw nsw i64 %i.bl, 24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx ; 3 uses
  %i.bn = icmp eq i64 %i.bl, 0
  br i1 %i.bn, label %select.unfold.i.i._crit_edge, label %.lr.ph

select.unfold.i.i:                                ; preds = %.lr.ph
  %i.bo = icmp eq ptr %i.bp, %i.bm
  br i1 %i.bo, label %select.unfold.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %select.unfold.i.i
  %.sroa.681.0180429 = phi ptr [ %i.bp, %select.unfold.i.i ], [ %i.bj, %bb.f ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.681.0180429, i64 24 ; 4 uses
  %i.bq = getelementptr i8, ptr %.sroa.681.0180429, i64 16
  %.val4.i.i = load i64, ptr %i.bq, align 8, !noalias !441, !noundef !9 ; 2 uses
  %i.br = icmp eq i64 %.val4.i.i, 0
  br i1 %i.br, label %select.unfold.i.i, label %bb.n

.loopexit164:                                     ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i, %bb.ak, %bb.aj
  %.sroa.9.0 = phi i64 [ undef, %bb.aj ], [ %.sroa.9.0.copyload, %bb.ak ], [ undef, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ] ; 5 uses
  %.sroa.8.0 = phi ptr [ undef, %bb.aj ], [ %.sroa.8.0.copyload, %bb.ak ], [ undef, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ] ; 7 uses
  %.sroa.0.0 = phi i64 [ -1, %bb.aj ], [ %.sroa.0.0.copyload, %bb.ak ], [ -1, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !442)
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  br label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %.loopexit164, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33
  %.sroa.0.0917.i.i.i30 = phi ptr [ %i.bs, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33 ], [ %i.ag, %.loopexit164 ] ; 3 uses
  %.sroa.8.016.i.i.i31 = phi i64 [ %i.bt, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33 ], [ 0, %.loopexit164 ] ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0917.i.i.i30, i64 16 ; 2 uses
  %i.bt = add nuw nsw i64 %.sroa.8.016.i.i.i31, 1
  %i.bu = getelementptr i8, ptr %.sroa.0.0917.i.i.i30, i64 8
  %.val7.i.i.i32 = load i64, ptr %i.bu, align 8, !noalias !445, !noundef !9
  %i.bv = icmp eq i64 %.val7.i.i.i32, 4
  br i1 %i.bv, label %.split.i.i.i34, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33

.split.i.i.i34:                                   ; preds = %.lr.ph.i.i.i29
  %.val.i.i.i35 = load ptr, ptr %.sroa.0.0917.i.i.i30, align 8, !noalias !445, !nonnull !9, !noundef !9
  %i.bw = load i32, ptr %.val.i.i.i35, align 1
  %i.bx = icmp ne i32 %i.bw, 1885434487
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.g, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33: ; preds = %.split.i.i.i34, %.lr.ph.i.i.i29
  %i.ca = icmp eq ptr %i.bs, %i.aj
  br i1 %i.ca, label %_RNCNvMNtCscxmO3cvmuC8_9uu_base3211base_commonNtB4_6Config4from0B6_.exit.thread, label %.lr.ph.i.i.i29

bb.g:                                             ; preds = %.split.i.i.i34
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !446, !noalias !447, !noundef !9 ; 2 uses
  %i.cd = icmp ult i64 %.sroa.8.016.i.i.i31, %i.cc
  br i1 %i.cd, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i.i31, i64 noundef %i.cc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24, !noalias !445
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !446, !noalias !447, !nonnull !9, !noundef !9
  %i.cg = getelementptr inbounds nuw [104 x i8], ptr %i.cf, i64 %.sroa.8.016.i.i.i31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !448
  store i128 53410479646238849826493945191968316847, ptr %i.r, align 16, !noalias !448
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.cg, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.r) #23, !noalias !448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !448
  %.sroa.013.0.copyload.i.i37 = load i128, ptr %i.s, align 16, !noalias !448 ; 3 uses
  %i.ch = icmp eq i128 %.sroa.013.0.copyload.i.i37, 53410479646238849826493945191968316847
  br i1 %i.ch, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !448
  %i.ci = call noundef align 8 ptr @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg5first(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.cg) #23, !noalias !449 ; 3 uses
  %.not8.i = icmp eq ptr %i.ci, null
  br i1 %.not8.i, label %_RNCNvMNtCscxmO3cvmuC8_9uu_base3211base_commonNtB4_6Config4from0B6_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val.i = load ptr, ptr %i.ci, align 8, !noalias !449, !nonnull !9, !noundef !9
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %.val10.i = load ptr, ptr %i.cj, align 8, !noalias !449, !nonnull !9, !align !12, !noundef !9 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !range !13, !invariant.load !9, !noalias !449
  %i.cm = add nsw i64 %i.cl, -1
  %i.cn = and i64 %i.cm, -16
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.cn ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !449
  %i.cq = getelementptr inbounds nuw i8, ptr %.val10.i, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !9, !noalias !449, !nonnull !9
  call void %i.cr(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.q, ptr noundef nonnull %i.cp) #25, !noalias !449, !inline_history !394
  %i.cs = load i128, ptr %i.q, align 16, !noalias !449, !noundef !9
  %.not.i = icmp eq i128 %i.cs, 53410479646238849826493945191968316847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !449
  br i1 %.not.i, label %bb.al, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #24, !noalias !449
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.ct = lshr i128 %.sroa.013.0.copyload.i.i37, 64
  %i.cu = trunc nuw i128 %i.ct to i64
  %i.cv = trunc i128 %.sroa.013.0.copyload.i.i37 to i64
  %i.cw = inttoptr i64 %i.cv to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr @104, ptr %i.p, align 8, !noalias !450
  %i.cx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 4, ptr %i.cx, align 8, !noalias !450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !450
  store i64 0, ptr %i.o, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.cw, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.cu, ptr %.sroa.11110.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i128 53410479646238849826493945191968316847, ptr %.sroa.12.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !450
  store ptr %i.p, ptr %i.n, align 8, !noalias !450
  %.sroa.42.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCscxmO3cvmuC8_9uu_base32, ptr %.sroa.42.0..sroa_idx.i42, align 8, !noalias !450
  %i.cy = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.cy, align 8, !noalias !450
  %.sroa.46.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i43, align 8, !noalias !450
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #24, !noalias !450
  unreachable

bb.n:                                             ; preds = %.lr.ph
  %i.cz = getelementptr i8, ptr %.sroa.681.0180429, i64 8
  %.val.i.i = load ptr, ptr %i.cz, align 8, !noalias !441, !nonnull !9, !noundef !9 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %.val.i266 = load ptr, ptr %.val.i.i, align 8, !alias.scope !451, !noalias !452, !nonnull !9, !noundef !9
  %i.da = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %.val1.i = load ptr, ptr %i.da, align 8, !alias.scope !451, !noalias !452, !nonnull !9, !align !12, !noundef !9 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !range !13, !invariant.load !9, !noalias !453
  %i.dd = add nsw i64 %i.dc, -1
  %i.de = and i64 %i.dd, -16
  %i.df = getelementptr inbounds nuw i8, ptr %.val.i266, i64 %i.de ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !453
  %i.dh = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !invariant.load !9, !noalias !453, !nonnull !9
  call void %i.di(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %i.dg) #25, !noalias !453, !inline_history !399
  %i.dj = load i128, ptr %i.c, align 16, !noalias !453, !noundef !9
  %.not.i.i = icmp eq i128 %i.dj, -49237559333878691962261109163680243548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !453
  br i1 %.not.i.i, label %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCscxmO3cvmuC8_9uu_base32.exit, label %bb.o, !prof !20

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #24, !noalias !453
  unreachable

_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.n
  %i.dk = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32
  %i.dl = icmp eq i64 %.val4.i.i, 1
  br i1 %i.dl, label %select.unfold.i.i54.preheader, label %.sink.split.i.i.i49._crit_edge

select.unfold.i.i54.preheader:                    ; preds = %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCscxmO3cvmuC8_9uu_base32.exit
  %i.dm = icmp eq ptr %i.bp, %i.bm
  br i1 %i.dm, label %select.unfold.i.i54._crit_edge, label %.sink.split.i.i.i49

select.unfold.i.i54:                              ; preds = %.sink.split.i.i.i49
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dp, i64 24 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.bm
  br i1 %i.do, label %select.unfold.i.i54._crit_edge, label %.sink.split.i.i.i49

.sink.split.i.i.i49:                              ; preds = %select.unfold.i.i54.preheader, %select.unfold.i.i54
  %i.dp = phi ptr [ %i.dn, %select.unfold.i.i54 ], [ %i.bp, %select.unfold.i.i54.preheader ] ; 3 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 16
  %.val4.i.i58 = load i64, ptr %i.dq, align 8, !noalias !454, !noundef !9
  %i.dr = icmp eq i64 %.val4.i.i58, 0
  br i1 %i.dr, label %select.unfold.i.i54, label %.sink.split.i.i.i49._crit_edge.loopexit

select.unfold.i.i._crit_edge:                     ; preds = %select.unfold.i.i, %bb.f
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #24
  unreachable

.sink.split.i.i.i49._crit_edge.loopexit:          ; preds = %.sink.split.i.i.i49
  %i.ds = getelementptr i8, ptr %i.dp, i64 8
  %.val.i.i57 = load ptr, ptr %i.ds, align 8, !noalias !454, !nonnull !9, !noundef !9
  br label %.sink.split.i.i.i49._crit_edge

.sink.split.i.i.i49._crit_edge:                   ; preds = %.sink.split.i.i.i49._crit_edge.loopexit, %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCscxmO3cvmuC8_9uu_base32.exit
  %spec.select.i18.i.i47.lcssa = phi ptr [ %i.dk, %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCscxmO3cvmuC8_9uu_base32.exit ], [ %.val.i.i57, %.sink.split.i.i.i49._crit_edge.loopexit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %.val.i267 = load ptr, ptr %spec.select.i18.i.i47.lcssa, align 8, !alias.scope !455, !noalias !456, !nonnull !9, !noundef !9
  %i.dt = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i47.lcssa, i64 8
  %.val1.i268 = load ptr, ptr %i.dt, align 8, !alias.scope !455, !noalias !456, !nonnull !9, !align !12, !noundef !9 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.val1.i268, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !range !13, !invariant.load !9, !noalias !457
  %i.dw = add nsw i64 %i.dv, -1
  %i.dx = and i64 %i.dw, -16
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.i267, i64 %i.dx ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !457
  %i.ea = getelementptr inbounds nuw i8, ptr %.val1.i268, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !invariant.load !9, !noalias !457, !nonnull !9
  call void %i.eb(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %i.dz) #25, !noalias !457, !inline_history !399
  %i.ec = load i128, ptr %i.b, align 16, !noalias !457, !noundef !9
  %.not.i.i269 = icmp eq i128 %i.ec, -49237559333878691962261109163680243548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !457
  br i1 %.not.i.i269, label %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCscxmO3cvmuC8_9uu_base32.exit270, label %bb.p, !prof !20

bb.p:                                             ; preds = %.sink.split.i.i.i49._crit_edge
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #24, !noalias !457
  unreachable

_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCscxmO3cvmuC8_9uu_base32.exit270: ; preds = %.sink.split.i.i.i49._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 0, ptr %i.ae, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 0, ptr %.sroa.517.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !nonnull !9, !noundef !9
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.eg = load i64, ptr %i.ef, align 8, !noundef !9
  store i64 1, ptr %i.ad, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ee, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.eg, ptr %.sroa.520.0..sroa_idx, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i8 1, ptr %i.eh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !458
  store i64 0, ptr %i.m, align 8, !noalias !458
  %.sroa.4.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i63, align 8, !noalias !458
  %.sroa.5.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i64, align 8, !noalias !458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !458
  %i.ei = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 1610612768, ptr %i.ei, align 8, !noalias !458
  store ptr %i.m, ptr %i.l, align 8, !noalias !458
  %i.ej = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @108, ptr %i.ej, align 8, !noalias !458
  %i.ek = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #23, !noalias !459
  br i1 %i.ek, label %bb.q, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCscxmO3cvmuC8_9uu_base32.exit, !prof !21

bb.q:                                             ; preds = %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCscxmO3cvmuC8_9uu_base32.exit270
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #24, !noalias !459
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCscxmO3cvmuC8_9uu_base32.exit: ; preds = %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCscxmO3cvmuC8_9uu_base32.exit270
  %.sroa.086.0.copyload87 = load i64, ptr %i.m, align 8, !noalias !460 ; 3 uses
  %.sroa.5.0.copyload89 = load ptr, ptr %.sroa.4.0..sroa_idx.i63, align 8, !noalias !460, !nonnull !9, !noundef !9 ; 8 uses
  %.sroa.891.0.copyload93 = load i64, ptr %.sroa.5.0..sroa_idx.i64, align 8, !noalias !460 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  switch i64 %.sroa.891.0.copyload93, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCscxmO3cvmuC8_9uu_base32.exit
  %i.el = load i8, ptr %.sroa.5.0.copyload89, align 1, !alias.scope !461, !noalias !462, !noundef !9 ; 2 uses
  switch i8 %i.el, label %bb.s [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCscxmO3cvmuC8_9uu_base32.exit
  %.pr.i = load i8, ptr %.sroa.5.0.copyload89, align 1, !alias.scope !461, !noalias !462
  br label %bb.s

bb.s:                                             ; preds = %thread-pre-split.i, %bb.r
  %i.em = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.el, %bb.r ]
  switch i8 %i.em, label %bb.z [
    i8 43, label %bb.t
    i8 45, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload89, i64 1
  %i.eo = add nsw i64 %.sroa.891.0.copyload93, -1
  br label %bb.z

bb.u:                                             ; preds = %bb.s
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload89, i64 1 ; 2 uses
  %i.eq = add nsw i64 %.sroa.891.0.copyload93, -1 ; 3 uses
  %i.er = icmp samesign ult i64 %.sroa.891.0.copyload93, 17
  br i1 %i.er, label %.preheader114.i, label %.lr.ph.i

.preheader114.i:                                  ; preds = %bb.u
  %.not103137.i = icmp eq i64 %i.eq, 0
  br i1 %.not103137.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

.lr.ph.i:                                         ; preds = %bb.u, %bb.x
  %.sroa.0.1136.i = phi ptr [ %i.es, %bb.x ], [ %i.ep, %bb.u ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.et, %bb.x ], [ %i.eq, %bb.u ]
  %.sroa.084.0134.i = phi i64 [ %i.fe, %bb.x ], [ 0, %bb.u ]
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.et = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.eu = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.ev = extractvalue { i64, i1 } %i.eu, 0
  %i.ew = extractvalue { i64, i1 } %i.eu, 1
  br i1 %i.ew, label %.loopexit, label %bb.v, !prof !21

bb.v:                                             ; preds = %.lr.ph.i
  %i.ex = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !461, !noalias !462, !noundef !9
  %i.ey = zext i8 %i.ex to i32
  %i.ez = add nsw i32 %i.ey, -48                  ; 2 uses
  %i.fa = icmp ult i32 %i.ez, 10
  br i1 %i.fa, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.fb = zext nneg i32 %i.ez to i64
  %i.fc = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ev, i64 %i.fb) ; 2 uses
  %i.fd = extractvalue { i64, i1 } %i.fc, 1
  br i1 %i.fd, label %.loopexit, label %bb.x, !prof !21

bb.x:                                             ; preds = %bb.w
  %i.fe = extractvalue { i64, i1 } %i.fc, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.et, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %.preheader114.i, %bb.y
  %.sroa.0.2140.i = phi ptr [ %i.fl, %bb.y ], [ %i.ep, %.preheader114.i ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.fk, %bb.y ], [ %i.eq, %.preheader114.i ]
  %.sroa.084.2138.i = phi i64 [ %i.fn, %bb.y ], [ 0, %.preheader114.i ]
  %i.ff = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !461, !noalias !462, !noundef !9
  %i.fg = zext i8 %i.ff to i32
  %i.fh = add nsw i32 %i.fg, -48                  ; 2 uses
  %i.fi = icmp ult i32 %i.fh, 10
  br i1 %i.fi, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %.lr.ph141.i
  %i.fj = mul i64 %.sroa.084.2138.i, 10
  %i.fk = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.fm = zext nneg i32 %i.fh to i64
  %i.fn = sub i64 %i.fj, %i.fm                    ; 2 uses
  %.not103.i = icmp eq i64 %i.fk, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.z:                                             ; preds = %bb.t, %bb.s
  %.sroa.26.0.i = phi i64 [ %i.eo, %bb.t ], [ %.sroa.891.0.copyload93, %bb.s ] ; 4 uses
  %.sroa.0.0.i66 = phi ptr [ %i.en, %bb.t ], [ %.sroa.5.0.copyload89, %bb.s ] ; 2 uses
  %i.fo = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.fo, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.z
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.z, %bb.ac
  %.sroa.0.3145.i = phi ptr [ %i.fp, %bb.ac ], [ %.sroa.0.0.i66, %bb.z ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.fq, %bb.ac ], [ %.sroa.26.0.i, %bb.z ]
  %.sroa.084.3143.i = phi i64 [ %i.gb, %bb.ac ], [ 0, %bb.z ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.fq = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.fr = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.fs = extractvalue { i64, i1 } %i.fr, 0
  %i.ft = extractvalue { i64, i1 } %i.fr, 1
  br i1 %i.ft, label %.loopexit, label %bb.aa, !prof !21

bb.aa:                                            ; preds = %.preheader111.i
  %i.fu = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !461, !noalias !462, !noundef !9
  %i.fv = zext i8 %i.fu to i32
  %i.fw = add nsw i32 %i.fv, -48                  ; 2 uses
  %i.fx = icmp ult i32 %i.fw, 10
  br i1 %i.fx, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.fy = zext nneg i32 %i.fw to i64
  %i.fz = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.fs, i64 %i.fy) ; 2 uses
  %i.ga = extractvalue { i64, i1 } %i.fz, 1
  br i1 %i.ga, label %.loopexit, label %bb.ac, !prof !21

bb.ac:                                            ; preds = %bb.ab
  %i.gb = extractvalue { i64, i1 } %i.fz, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.fq, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.ad
  %.sroa.0.4149.i = phi ptr [ %i.gi, %bb.ad ], [ %.sroa.0.0.i66, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.gh, %bb.ad ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.gk, %bb.ad ], [ 0, %.preheader.i ]
  %i.gc = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !461, !noalias !462, !noundef !9
  %i.gd = zext i8 %i.gc to i32
  %i.ge = add nsw i32 %i.gd, -48                  ; 2 uses
  %i.gf = icmp ult i32 %i.ge, 10
  br i1 %i.gf, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %.lr.ph150.i
  %i.gg = mul i64 %.sroa.084.4147.i, 10
  %i.gh = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.gj = zext nneg i32 %i.ge to i64
  %i.gk = add i64 %i.gg, %i.gj                    ; 2 uses
  %.not105.i = icmp eq i64 %i.gh, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

select.unfold.i.i54._crit_edge:                   ; preds = %select.unfold.i.i54, %select.unfold.i.i54.preheader
  %i.gl = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.gm = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.gn = load i64, ptr %i.gm, align 8, !noundef !9 ; 2 uses
  %i.go = icmp eq i64 %i.gn, 1
  %.pre = load ptr, ptr %i.gl, align 8            ; 2 uses
  br i1 %i.go, label %bb.aj, label %bb.ak

.loopexit:                                        ; preds = %.lr.ph.i, %bb.w, %bb.v, %.lr.ph141.i, %.preheader111.i, %bb.aa, %bb.ab, %.lr.ph150.i, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCscxmO3cvmuC8_9uu_base32.exit, %bb.r, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload89, i64 noundef %.sroa.891.0.copyload93) #22
  %i.gp = load i8, ptr %i.ac, align 8, !range !18, !noundef !9
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.ag, label %bb.ah

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.x, %bb.y, %bb.ac, %bb.ad, %.preheader.i, %.preheader114.i
  %.sroa.1597.0 = phi i64 [ %i.gk, %bb.ad ], [ %i.fn, %bb.y ], [ %i.gb, %bb.ac ], [ 0, %.preheader.i ], [ 0, %.preheader114.i ], [ %i.fe, %bb.x ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 7, i64 noundef %.sroa.1597.0) #23
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ah, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 25, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aa) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.gr = icmp eq i64 %.sroa.086.0.copyload87, 0
  br i1 %i.gr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload89, i64 noundef %.sroa.086.0.copyload87, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !463
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit

bb.ag:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 %.sroa.086.0.copyload87, ptr %i.ab, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.sroa.5.0.copyload89, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.891.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %.sroa.891.0.copyload93, ptr %.sroa.891.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 7, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ab) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 25, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aa) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit

bb.ah:                                            ; preds = %.loopexit
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.gt = load double, ptr %i.gs, align 8, !noundef !9
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 7, double noundef %i.gt) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.ae

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.af, %bb.ae, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !464
  %i.gu = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #23, !noalias !464 ; 4 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.ai, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !24

bb.ai:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #26, !noalias !464
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gu, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  store i32 1, ptr %.sroa.4107.0..sroa_idx, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gu, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @52, ptr %i.gx, align 8
  store i64 2, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECscxmO3cvmuC8_9uu_base32.exit

bb.aj:                                            ; preds = %select.unfold.i.i54._crit_edge
  %lhsc = load i8, ptr %.pre, align 1
  %i.gy = icmp eq i8 %lhsc, 45
  br i1 %i.gy, label %.loopexit164, label %bb.ak

bb.ak:                                            ; preds = %select.unfold.i.i54._crit_edge, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.pre, i64 noundef %i.gn) #23
  %.sroa.0.0.copyload = load i64, ptr %i.z, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %.loopexit164

bb.al:                                            ; preds = %bb.k
  %i.gz = getelementptr i8, ptr %i.co, i64 24
  %.val = load ptr, ptr %i.gz, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.ha = getelementptr i8, ptr %i.co, i64 32
  %.val25 = load i64, ptr %i.ha, align 8, !noundef !9 ; 3 uses
  switch i64 %.val25, label %thread-pre-split.i.i [
    i64 0, label %.loopexit.i68
    i64 1, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al
  %i.hb = load i8, ptr %.val, align 1, !alias.scope !465, !noalias !466, !noundef !9 ; 2 uses
  switch i8 %i.hb, label %bb.an [
    i8 43, label %.loopexit.i68
    i8 45, label %.loopexit.i68
  ]

thread-pre-split.i.i:                             ; preds = %bb.al
  %.pr.i.i = load i8, ptr %.val, align 1, !alias.scope !465, !noalias !466
  br label %bb.an

bb.an:                                            ; preds = %thread-pre-split.i.i, %bb.am
  %i.hc = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.hb, %bb.am ]
  %cond.i.i = icmp eq i8 %i.hc, 43                ; 2 uses
  %i.hd = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %.val25, %i.hd    ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i70 = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.he = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.he, label %.preheader.i.i, label %.preheader56.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.an
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5366.i.i, label %_RNCNvMNtCscxmO3cvmuC8_9uu_base3211base_commonNtB4_6Config4from0B6_.exit.thread, label %.lr.ph.i.i

.preheader56.i.i:                                 ; preds = %bb.ao
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i432, i64 1
  %i.hg = add nsw i64 %.sroa.15.1.i.i431, -1      ; 2 uses
  %.not52.i.i = icmp eq i64 %i.hg, 0
  br i1 %.not52.i.i, label %_RNCNvMNtCscxmO3cvmuC8_9uu_base3211base_commonNtB4_6Config4from0B6_.exit.thread, label %.preheader56.i.i.preheader

.preheader56.i.i.preheader:                       ; preds = %bb.an, %.preheader56.i.i
  %.sroa.0.1.i.i432 = phi ptr [ %i.hf, %.preheader56.i.i ], [ %.sroa.0.0.i.i70, %bb.an ] ; 2 uses
  %.sroa.15.1.i.i431 = phi i64 [ %i.hg, %.preheader56.i.i ], [ %.sroa.15.0.i.i, %bb.an ]
  %.sroa.042.0.i.i430 = phi i64 [ %i.hp, %.preheader56.i.i ], [ 0, %bb.an ]
  %i.hh = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i430, i64 10) ; 2 uses
  %i.hi = extractvalue { i64, i1 } %i.hh, 1
  br i1 %i.hi, label %.loopexit.i68, label %bb.ao, !prof !21

bb.ao:                                            ; preds = %.preheader56.i.i.preheader
  %i.hj = extractvalue { i64, i1 } %i.hh, 0       ; 2 uses
  %i.hk = load i8, ptr %.sroa.0.1.i.i432, align 1, !alias.scope !465, !noalias !466, !noundef !9
  %i.hl = zext i8 %i.hk to i32
  %i.hm = add nsw i32 %i.hl, -48                  ; 2 uses
  %i.hn = icmp ugt i32 %i.hm, 9
  %i.ho = zext nneg i32 %i.hm to i64
  %i.hp = add i64 %i.hj, %i.ho                    ; 3 uses
  %i.hq = icmp ult i64 %i.hp, %i.hj
  %or.cond.i = select i1 %i.hn, i1 true, i1 %i.hq, !prof !25
  br i1 %or.cond.i, label %.loopexit.i68, label %.preheader56.i.i, !prof !25

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.ap
  %.sroa.0.269.i.i = phi ptr [ %i.hx, %bb.ap ], [ %.sroa.0.0.i.i70, %.preheader.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.hw, %bb.ap ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.hz, %bb.ap ], [ 0, %.preheader.i.i ]
  %i.hr = load i8, ptr %.sroa.0.269.i.i, align 1, !alias.scope !465, !noalias !466, !noundef !9
  %i.hs = zext i8 %i.hr to i32
  %i.ht = add nsw i32 %i.hs, -48                  ; 2 uses
  %i.hu = icmp ult i32 %i.ht, 10
  br i1 %i.hu, label %bb.ap, label %.loopexit.i68

bb.ap:                                            ; preds = %.lr.ph.i.i
  %i.hv = mul i64 %.sroa.042.267.i.i, 10
  %i.hw = add nsw i64 %.sroa.15.268.i.i, -1       ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i, i64 1
  %i.hy = zext nneg i32 %i.ht to i64
  %i.hz = add i64 %i.hv, %i.hy                    ; 2 uses
  %.not53.i.i = icmp eq i64 %i.hw, 0
  br i1 %.not53.i.i, label %_RNCNvMNtCscxmO3cvmuC8_9uu_base3211base_commonNtB4_6Config4from0B6_.exit.thread, label %.lr.ph.i.i

.loopexit.i68:                                    ; preds = %bb.ao, %.preheader56.i.i.preheader, %.lr.ph.i.i, %bb.am, %bb.am, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !467
  store i64 0, ptr %i.k, align 8, !noalias !467
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !467
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !467
  store i64 0, ptr %i.j, align 8, !noalias !467
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.val, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !467
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.val25, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !467
  %i.ia = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i8 1, ptr %i.ia, align 8, !noalias !467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !468
  store i64 0, ptr %i.e, align 8, !noalias !468
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !468
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !468
  %i.ib = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1610612768, ptr %i.ib, align 8, !noalias !468
  store ptr %i.e, ptr %i.d, align 8, !noalias !468
  %i.ic = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @108, ptr %i.ic, align 8, !noalias !468
  %i.id = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #23, !noalias !469
  br i1 %i.id, label %bb.aq, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCscxmO3cvmuC8_9uu_base32.exit.i.i, !prof !21

bb.aq:                                            ; preds = %.loopexit.i68
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #24, !noalias !469
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCscxmO3cvmuC8_9uu_base32.exit.i.i: ; preds = %.loopexit.i68
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.e, align 8, !noalias !470 ; 3 uses
  %.sroa.5.0.copyload4.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !470, !nonnull !9, !noundef !9 ; 8 uses
  %.sroa.8.0.copyload7.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !470 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !467
  switch i64 %.sroa.8.0.copyload7.i.i, label %thread-pre-split.i.i.i [
    i64 0, label %.loopexit.i2.i
    i64 1, label %bb.ar
  ]

bb.ar:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCscxmO3cvmuC8_9uu_base32.exit.i.i
  %i.ie = load i8, ptr %.sroa.5.0.copyload4.i.i, align 1, !alias.scope !471, !noalias !472, !noundef !9 ; 2 uses
  switch i8 %i.ie, label %bb.as [
    i8 43, label %.loopexit.i2.i
    i8 45, label %.loopexit.i2.i
  ]

thread-pre-split.i.i.i:                           ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCscxmO3cvmuC8_9uu_base32.exit.i.i
  %.pr.i.i.i = load i8, ptr %.sroa.5.0.copyload4.i.i, align 1, !alias.scope !471, !noalias !472
  br label %bb.as

bb.as:                                            ; preds = %thread-pre-split.i.i.i, %bb.ar
  %i.if = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.ie, %bb.ar ]
  switch i8 %i.if, label %bb.az [
    i8 43, label %bb.at
    i8 45, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload4.i.i, i64 1
  %i.ih = add nsw i64 %.sroa.8.0.copyload7.i.i, -1
  br label %bb.az

bb.au:                                            ; preds = %bb.as
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload4.i.i, i64 1 ; 2 uses
  %i.ij = add nsw i64 %.sroa.8.0.copyload7.i.i, -1 ; 3 uses
  %i.ik = icmp samesign ult i64 %.sroa.8.0.copyload7.i.i, 17
  br i1 %i.ik, label %.preheader114.i.i.i, label %.lr.ph.i.i.i69

.preheader114.i.i.i:                              ; preds = %bb.au
  %.not103137.i.i.i = icmp eq i64 %i.ij, 0
  br i1 %.not103137.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph141.i.i.i

.lr.ph.i.i.i69:                                   ; preds = %bb.au, %bb.ax
  %.sroa.0.1136.i.i.i = phi ptr [ %i.il, %bb.ax ], [ %i.ii, %bb.au ] ; 2 uses
  %.sroa.26.1135.i.i.i = phi i64 [ %i.im, %bb.ax ], [ %i.ij, %bb.au ]
  %.sroa.084.0134.i.i.i = phi i64 [ %i.ix, %bb.ax ], [ 0, %bb.au ]
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i.i, i64 1
  %i.im = add nsw i64 %.sroa.26.1135.i.i.i, -1    ; 2 uses
  %i.in = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i.i, i64 10) ; 2 uses
  %i.io = extractvalue { i64, i1 } %i.in, 0
  %i.ip = extractvalue { i64, i1 } %i.in, 1
  br i1 %i.ip, label %.loopexit.i2.i, label %bb.av, !prof !21

bb.av:                                            ; preds = %.lr.ph.i.i.i69
  %i.iq = load i8, ptr %.sroa.0.1136.i.i.i, align 1, !alias.scope !471, !noalias !472, !noundef !9
  %i.ir = zext i8 %i.iq to i32
  %i.is = add nsw i32 %i.ir, -48                  ; 2 uses
  %i.it = icmp ult i32 %i.is, 10
  br i1 %i.it, label %bb.aw, label %.loopexit.i2.i

bb.aw:                                            ; preds = %bb.av
  %i.iu = zext nneg i32 %i.is to i64
  %i.iv = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.io, i64 %i.iu) ; 2 uses
  %i.iw = extractvalue { i64, i1 } %i.iv, 1
  br i1 %i.iw, label %.loopexit.i2.i, label %bb.ax, !prof !21

bb.ax:                                            ; preds = %bb.aw
  %i.ix = extractvalue { i64, i1 } %i.iv, 0       ; 2 uses
  %.not102.i.i.i = icmp eq i64 %i.im, 0
  br i1 %.not102.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i69

.lr.ph141.i.i.i:                                  ; preds = %.preheader114.i.i.i, %bb.ay
  %.sroa.0.2140.i.i.i = phi ptr [ %i.je, %bb.ay ], [ %i.ii, %.preheader114.i.i.i ] ; 2 uses
  %.sroa.26.2139.i.i.i = phi i64 [ %i.jd, %bb.ay ], [ %i.ij, %.preheader114.i.i.i ]
  %.sroa.084.2138.i.i.i = phi i64 [ %i.jg, %bb.ay ], [ 0, %.preheader114.i.i.i ]
  %i.iy = load i8, ptr %.sroa.0.2140.i.i.i, align 1, !alias.scope !471, !noalias !472, !noundef !9
  %i.iz = zext i8 %i.iy to i32
  %i.ja = add nsw i32 %i.iz, -48                  ; 2 uses
  %i.jb = icmp ult i32 %i.ja, 10
  br i1 %i.jb, label %bb.ay, label %.loopexit.i2.i

bb.ay:                                            ; preds = %.lr.ph141.i.i.i
  %i.jc = mul i64 %.sroa.084.2138.i.i.i, 10
  %i.jd = add nsw i64 %.sroa.26.2139.i.i.i, -1    ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i.i, i64 1
  %i.jf = zext nneg i32 %i.ja to i64
  %i.jg = sub i64 %i.jc, %i.jf                    ; 2 uses
  %.not103.i.i.i = icmp eq i64 %i.jd, 0
  br i1 %.not103.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph141.i.i.i

bb.az:                                            ; preds = %bb.at, %bb.as
  %.sroa.26.0.i.i.i = phi i64 [ %i.ih, %bb.at ], [ %.sroa.8.0.copyload7.i.i, %bb.as ] ; 4 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.ig, %bb.at ], [ %.sroa.5.0.copyload4.i.i, %bb.as ] ; 2 uses
  %i.jh = icmp samesign ult i64 %.sroa.26.0.i.i.i, 16
  br i1 %i.jh, label %.preheader.i.i.i, label %.preheader111.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.az
  %.not105146.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i, 0
  br i1 %.not105146.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph150.i.i.i

.preheader111.i.i.i:                              ; preds = %bb.az, %bb.bc
  %.sroa.0.3145.i.i.i = phi ptr [ %i.ji, %bb.bc ], [ %.sroa.0.0.i.i.i, %bb.az ] ; 2 uses
  %.sroa.26.3144.i.i.i = phi i64 [ %i.jj, %bb.bc ], [ %.sroa.26.0.i.i.i, %bb.az ]
  %.sroa.084.3143.i.i.i = phi i64 [ %i.ju, %bb.bc ], [ 0, %bb.az ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i.i, i64 1
  %i.jj = add nsw i64 %.sroa.26.3144.i.i.i, -1    ; 2 uses
  %i.jk = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i.i, i64 10) ; 2 uses
  %i.jl = extractvalue { i64, i1 } %i.jk, 0
  %i.jm = extractvalue { i64, i1 } %i.jk, 1
  br i1 %i.jm, label %.loopexit.i2.i, label %bb.ba, !prof !21

bb.ba:                                            ; preds = %.preheader111.i.i.i
  %i.jn = load i8, ptr %.sroa.0.3145.i.i.i, align 1, !alias.scope !471, !noalias !472, !noundef !9
  %i.jo = zext i8 %i.jn to i32
  %i.jp = add nsw i32 %i.jo, -48                  ; 2 uses
  %i.jq = icmp ult i32 %i.jp, 10
  br i1 %i.jq, label %bb.bb, label %.loopexit.i2.i

bb.bb:                                            ; preds = %bb.ba
  %i.jr = zext nneg i32 %i.jp to i64
  %i.js = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.jl, i64 %i.jr) ; 2 uses
  %i.jt = extractvalue { i64, i1 } %i.js, 1
  br i1 %i.jt, label %.loopexit.i2.i, label %bb.bc, !prof !21

bb.bc:                                            ; preds = %bb.bb
  %i.ju = extractvalue { i64, i1 } %i.js, 0       ; 2 uses
  %.not104.i.i.i = icmp eq i64 %i.jj, 0
  br i1 %.not104.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader111.i.i.i

.lr.ph150.i.i.i:                                  ; preds = %.preheader.i.i.i, %bb.bd
  %.sroa.0.4149.i.i.i = phi ptr [ %i.kb, %bb.bd ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.26.4148.i.i.i = phi i64 [ %i.ka, %bb.bd ], [ %.sroa.26.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.084.4147.i.i.i = phi i64 [ %i.kd, %bb.bd ], [ 0, %.preheader.i.i.i ]
  %i.jv = load i8, ptr %.sroa.0.4149.i.i.i, align 1, !alias.scope !471, !noalias !472, !noundef !9
  %i.jw = zext i8 %i.jv to i32
  %i.jx = add nsw i32 %i.jw, -48                  ; 2 uses
  %i.jy = icmp ult i32 %i.jx, 10
  br i1 %i.jy, label %bb.bd, label %.loopexit.i2.i

bb.bd:                                            ; preds = %.lr.ph150.i.i.i
  %i.jz = mul i64 %.sroa.084.4147.i.i.i, 10
  %i.ka = add nsw i64 %.sroa.26.4148.i.i.i, -1    ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i.i, i64 1
  %i.kc = zext nneg i32 %i.jx to i64
  %i.kd = add i64 %i.jz, %i.kc                    ; 2 uses
  %.not105.i.i.i = icmp eq i64 %i.ka, 0
  br i1 %.not105.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph150.i.i.i

.loopexit.i2.i:                                   ; preds = %bb.aw, %bb.av, %.lr.ph.i.i.i69, %.lr.ph141.i.i.i, %bb.bb, %bb.ba, %.preheader111.i.i.i, %.lr.ph150.i.i.i, %bb.ar, %bb.ar, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCscxmO3cvmuC8_9uu_base32.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !467
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload4.i.i, i64 noundef %.sroa.8.0.copyload7.i.i) #22, !noalias !467
  %i.ke = load i8, ptr %i.i, align 8, !range !18, !noalias !467, !noundef !9
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %bb.bg, label %bb.bh

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.ax, %bb.ay, %bb.bc, %bb.bd, %.preheader.i.i.i, %.preheader114.i.i.i
  %.sroa.1511.0.i.i = phi i64 [ %i.kd, %bb.bd ], [ %i.jg, %bb.ay ], [ %i.ju, %bb.bc ], [ 0, %.preheader.i.i.i ], [ 0, %.preheader114.i.i.i ], [ %i.ix, %bb.ax ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, i64 noundef %.sroa.1511.0.i.i) #23, !noalias !467
  br label %bb.be

bb.be:                                            ; preds = %bb.bh, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !467
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !467
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 29, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g) #23, !noalias !467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !467
  %i.kg = icmp eq i64 %.sroa.0.0.copyload1.i.i, 0
  br i1 %i.kg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload4.i.i, i64 noundef %.sroa.0.0.copyload1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !473
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit.i.i

bb.bg:                                            ; preds = %.loopexit.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !467
  store i64 %.sroa.0.0.copyload1.i.i, ptr %i.h, align 8, !noalias !467
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.5.0.copyload4.i.i, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !467
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.8.0.copyload7.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !467
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h) #23, !noalias !467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !467
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !467
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 29, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g) #23, !noalias !467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !467
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit.i.i

bb.bh:                                            ; preds = %.loopexit.i2.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ki = load double, ptr %i.kh, align 8, !noalias !467, !noundef !9
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, double noundef %i.ki) #23, !noalias !467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !467
  br label %bb.be

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit.i.i: ; preds = %bb.bg, %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !467
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !474
  %i.kj = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #23, !noalias !474 ; 4 uses
  %i.kk = icmp eq ptr %i.kj, null
  br i1 %i.kk, label %bb.bi, label %bb.bj, !prof !24

bb.bi:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #26, !noalias !474
  unreachable

_RNCNvMNtCscxmO3cvmuC8_9uu_base3211base_commonNtB4_6Config4from0B6_.exit.thread: ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33, %.preheader56.i.i, %bb.ap, %bb.a, %bb.j, %.preheader.i.i
  %.sroa.0.0278 = phi i64 [ %.sroa.0.0, %.preheader56.i.i ], [ -1, %bb.a ], [ %.sroa.0.0, %.preheader.i.i ], [ %.sroa.0.0, %bb.j ], [ %.sroa.0.0, %bb.ap ], [ %.sroa.0.0, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33 ]
  %.sroa.8.0276 = phi ptr [ %.sroa.8.0, %.preheader56.i.i ], [ undef, %bb.a ], [ %.sroa.8.0, %.preheader.i.i ], [ %.sroa.8.0, %bb.j ], [ %.sroa.8.0, %bb.ap ], [ %.sroa.8.0, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33 ]
  %.sroa.9.0274 = phi i64 [ %.sroa.9.0, %.preheader56.i.i ], [ undef, %bb.a ], [ %.sroa.9.0, %.preheader.i.i ], [ %.sroa.9.0, %bb.j ], [ %.sroa.9.0, %bb.ap ], [ %.sroa.9.0, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33 ]
  %.sroa.11.0 = phi i64 [ %i.hp, %.preheader56.i.i ], [ undef, %bb.a ], [ 0, %.preheader.i.i ], [ undef, %bb.j ], [ %i.hz, %bb.ap ], [ undef, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33 ]
  %.sroa.6.0 = phi i64 [ 1, %.preheader56.i.i ], [ 0, %bb.a ], [ 1, %.preheader.i.i ], [ 0, %bb.j ], [ 1, %bb.ap ], [ 0, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33 ]
  %i.kl = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 6) #23
  %i.km = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 14) #23
  %i.kn = zext i1 %i.kl to i8
  %i.ko = zext i1 %i.km to i8
  store i64 %.sroa.6.0, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.11.0, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0278, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.8.0276, ptr %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx, align 8
  %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.9.0274, ptr %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.kn, ptr %.sroa.613.0..sroa_idx, align 8
  %.sroa.714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %i.ko, ptr %.sroa.714.0..sroa_idx, align 1
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECscxmO3cvmuC8_9uu_base32.exit

bb.bj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kj, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !467
  %.sroa.4.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  store i32 1, ptr %.sroa.4.0..sroa_idx13.i.i, align 8, !noalias !467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !467
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kj, ptr %i.kp, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @27, ptr %i.kq, align 8
  store i64 2, ptr %0, align 8
  %.0.val.off.i = add i64 %.sroa.0.0, -1
  %switch.i = icmp ult i64 %.0.val.off.i, -2
  br i1 %switch.i, label %bb.bk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECscxmO3cvmuC8_9uu_base32.exit

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0, i64 noundef %.sroa.0.0, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.bk, %bb.bj, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %_RNCNvMNtCscxmO3cvmuC8_9uu_base3211base_commonNtB4_6Config4from0B6_.exit.thread
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTcbEE8grow_oneCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !477
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !477
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 8) #23, !noalias !477
  %i.f = load i64, ptr %i.a, align 8, !range !22, !noalias !477, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !23, !noalias !477, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !477
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !477, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !477
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !477
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !477
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequehE15make_contiguousCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !9 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 7 uses
  %i.d = sub i64 %i.a, %i.c                       ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !9 ; 6 uses
  %.not = icmp ugt i64 %i.f, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9, !noundef !9 ; 15 uses
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = sub i64 %i.a, %i.f                       ; 11 uses
  %i.j = sub i64 %i.c, %i.i                       ; 12 uses
  %.not8 = icmp ult i64 %i.d, %i.i
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not9 = icmp ult i64 %i.d, %i.j
  br i1 %.not9, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %i.h, i64 %i.j, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %i.l, i64 %i.i, i1 false)
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.m = icmp ugt i64 %i.i, %i.j
  %i.n = icmp eq i64 %i.a, %i.c                   ; 2 uses
  br i1 %i.m, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.o, i64 %i.i, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.h, i64 %i.j, i1 false)
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %bb.i, label %bb.k

bb.h:                                             ; preds = %bb.e
  br i1 %i.n, label %bb.m, label %bb.l

bb.i:                                             ; preds = %bb.k, %bb.g
  %.not.i = icmp ugt i64 %i.i, %i.c
  br i1 %.not.i, label %bb.j, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh12rotate_rightCscxmO3cvmuC8_9uu_base32.exit, !prof !21

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #24, !noalias !482
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh12rotate_rightCscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  tail call fastcc void @_RINvNtNtCs6JMX4GRUq9U_4core5slice6rotate10ptr_rotatehECscxmO3cvmuC8_9uu_base32(i64 noundef %i.j, ptr noundef %i.r, i64 noundef %i.i) #25
  br label %bb.o

bb.k:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %i.s, i64 %i.i, i1 false)
  br label %bb.i

bb.l:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %i.h, i64 %i.j, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %.not.i10 = icmp ugt i64 %i.i, %i.c
  br i1 %.not.i10, label %bb.n, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11rotate_leftCscxmO3cvmuC8_9uu_base32.exit, !prof !21

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #24, !noalias !483
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11rotate_leftCscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.m
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.j
  tail call fastcc void @_RINvNtNtCs6JMX4GRUq9U_4core5slice6rotate10ptr_rotatehECscxmO3cvmuC8_9uu_base32(i64 noundef %i.j, ptr noundef %i.w, i64 noundef %i.i) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11rotate_leftCscxmO3cvmuC8_9uu_base32.exit, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh12rotate_rightCscxmO3cvmuC8_9uu_base32.exit, %bb.d
  %.sink = phi i64 [ %i.j, %bb.f ], [ %i.d, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11rotate_leftCscxmO3cvmuC8_9uu_base32.exit ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh12rotate_rightCscxmO3cvmuC8_9uu_base32.exit ], [ 0, %bb.d ] ; 2 uses
  store i64 %.sink, ptr %i.e, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o
  %.sink14 = phi i64 [ %.sink, %bb.o ], [ %i.f, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink14
  %i.y = insertvalue { ptr, i64 } poison, ptr %i.x, 0
  %i.z = insertvalue { ptr, i64 } %i.y, i64 %i.c, 1
  ret { ptr, i64 } %i.z
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCscxmO3cvmuC8_9uu_base32(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 17) %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !25
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #23
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_RNvNtCscxmO3cvmuC8_9uu_base3211base_common8base_app:_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB3_3Arg19visible_short_aliascECscxmO3cvmuC8_9uu_base32.exit
  %.sroa.5.i10.sroa.0.0 = select i1 %i.ae, ptr undef, ptr %.sroa.5.i10.sroa.0.0.copyload
  %.sroa.5.i10.sroa.4.0 = select i1 %i.ae, i64 undef, i64 %.sroa.5.i10.sroa.4.0.copyload
  store i64 0, ptr %i.y, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 1, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store i64 -1, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  store i64 0, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.12.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.14.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.17.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.19.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.21.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.23.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 216
  %.sroa.0.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.24.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.26.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.28.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 264
  store i64 0, ptr %.sroa.0.sroa.29.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 272
  store i64 -1, ptr %.sroa.0.sroa.30.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 296
  store i64 -1, ptr %.sroa.0.sroa.32.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 320
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.0.sroa.34.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 328
  store ptr %.sroa.5.i.sroa.0.0, ptr %.sroa.0.sroa.35.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 336
  store i64 %.sroa.5.i.sroa.4.0, ptr %.sroa.0.sroa.36.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 344
  store i64 -1, ptr %.sroa.0.sroa.37.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 368
  store i64 -1, ptr %.sroa.0.sroa.39.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 392
  store i64 -1, ptr %.sroa.0.sroa.41.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 416
  store i64 -1, ptr %.sroa.0.sroa.43.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.0.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 440
  store i64 -1, ptr %.sroa.0.sroa.45.0..sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.4.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %i.y, i64 464
  store i64 %.sroa.0.0.copyload.i11, ptr %.sroa.4.0..sroa_idx135, align 8, !alias.scope !642, !noalias !640
  %.sroa.6.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %i.y, i64 472
  store ptr %.sroa.5.i10.sroa.0.0, ptr %.sroa.6.0..sroa_idx138, align 8, !alias.scope !642, !noalias !640
  %.sroa.8.0..sroa_idx140 = getelementptr inbounds nuw i8, ptr %i.y, i64 480
  store i64 %.sroa.5.i10.sroa.4.0, ptr %.sroa.8.0..sroa_idx140, align 8, !alias.scope !642, !noalias !640
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 488
  store i64 -1, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 512
  store i64 -1, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 536
  store i64 -1, ptr %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.8.sroa.11.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 560
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.8.sroa.11.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.8.sroa.14.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 592
  store ptr null, ptr %.sroa.8.sroa.14.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.8.sroa.16.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 608
  store ptr @81, ptr %.sroa.8.sroa.16.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.8.sroa.17.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 616
  store i64 25, ptr %.sroa.8.sroa.17.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.8.sroa.18.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 624
  store ptr null, ptr %.sroa.8.sroa.18.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.8.sroa.20.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 640
  store ptr null, ptr %.sroa.8.sroa.20.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.8.sroa.22.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 656
  store ptr null, ptr %.sroa.8.sroa.22.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.8.sroa.24.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 672
  store ptr null, ptr %.sroa.8.sroa.24.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.8.sroa.26.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 688
  store ptr null, ptr %.sroa.8.sroa.26.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.8.sroa.27.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 696
  store i32 -1, ptr %.sroa.8.sroa.27.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !642, !noalias !640
  %.sroa.8.sroa.28.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 700
  %.sroa.8.sroa.29.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 704
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 708
  store i8 0, ptr %i.af, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i32 128, ptr %.sroa.8.sroa.28.0..sroa.8.0..sroa_idx140.sroa_idx, align 4
  store i32 128, ptr %.sroa.8.sroa.29.0..sroa.8.0..sroa_idx140.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization27configure_localized_command(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.y) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 576
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 584
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 488 ; 2 uses
  store i64 -1, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 512
  store i64 -1, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 636
  store i8 -1, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store i64 -1, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  store i64 0, ptr %i.am, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i, align 8
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 632
  store i32 0, ptr %i.an, align 8
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i, align 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx.i, align 8
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.414.0..sroa_idx.i, align 8
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx.i, align 8
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 216
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.420.0..sroa_idx.i, align 8
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.423.0..sroa_idx.i, align 8
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.426.0..sroa_idx.i, align 8
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  store i64 0, ptr %.sroa.527.0..sroa_idx.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 624
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 592
  store ptr null, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 296
  store i64 0, ptr %i.aq, align 8
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 304
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.429.0..sroa_idx.i, align 8
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 312
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 328 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.432.0..sroa_idx.i, align 8
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 336 ; 2 uses
  store i64 0, ptr %i.o, align 8
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.435.0..sroa_idx.i, align 8
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 360
  store i64 0, ptr %.sroa.536.0..sroa_idx.i, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 628
  store i32 -1, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 368
  store i64 0, ptr %i.at, align 8
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.440.0..sroa_idx.i, align 8
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 384
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.541.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.443.0..sroa_idx.i, align 8
  %.sroa.544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 408
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.544.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.446.0..sroa_idx.i, align 8
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 432
  store i64 0, ptr %.sroa.547.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 552
  store i64 -2, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 608
  store ptr null, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i64 0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 440
  store i64 0, ptr %i.ax, align 8
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 448
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.459.0..sroa_idx.i, align 8
  %.sroa.560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 456
  %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.560.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 480
  store i64 0, ptr %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i, align 8
  store ptr @105, ptr %i.ag, align 8
  store i64 6, ptr %i.ah, align 8
  store i32 100, ptr %i.ao, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTcbEE8grow_oneCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay) #22
  %.pre = load ptr, ptr %.sroa.432.0..sroa_idx.i, align 8 ; 2 uses
  store i32 68, ptr %.pre, align 4, !noalias !643
  %i.az = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  store i8 1, ptr %i.az, align 4, !noalias !643
  store i64 1, ptr %.sroa.533.0..sroa_idx.i, align 8
  %.sroa.4174.0.copyload = load i64, ptr %i.ai, align 8 ; 2 uses
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 496
  %.sroa.5175.0.copyload = load ptr, ptr %.sroa.5175.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 23) #23
  %.sroa.0395.0.copyload = load i64, ptr %i.n, align 8
  %.sroa.2396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.2396.0.copyload = load ptr, ptr %.sroa.2396.0..sroa_idx, align 8
  %.sroa.3397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.3397.0.copyload = load i64, ptr %.sroa.3397.0..sroa_idx, align 8
  %.0.val.off.i = add i64 %.sroa.4174.0.copyload, -1
  %switch.i = icmp ult i64 %.0.val.off.i, -2
  br i1 %switch.i, label %bb.a, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit

bb.a:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB3_3Arg19visible_short_aliascECscxmO3cvmuC8_9uu_base32.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5175.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5175.0.copyload, i64 noundef %.sroa.4174.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !644
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit: ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB3_3Arg19visible_short_aliascECscxmO3cvmuC8_9uu_base32.exit, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %i.r, ptr noundef nonnull align 8 dereferenceable(488) %i.o, i64 488, i1 false)
  %.sroa.4165.0..sroa_idx166 = getelementptr inbounds nuw i8, ptr %i.r, i64 488
  store i64 %.sroa.0395.0.copyload, ptr %.sroa.4165.0..sroa_idx166, align 8
  %.sroa.6168.0..sroa_idx169 = getelementptr inbounds nuw i8, ptr %i.r, i64 496
  store ptr %.sroa.2396.0.copyload, ptr %.sroa.6168.0..sroa_idx169, align 8
  %.sroa.7171.0..sroa_idx172 = getelementptr inbounds nuw i8, ptr %i.r, i64 504
  store i64 %.sroa.3397.0.copyload, ptr %.sroa.7171.0..sroa_idx172, align 8
  %.sroa.7171.sroa.0.sroa.5.0..sroa.7171.0..sroa_idx172.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7171.sroa.0.sroa.5.0..sroa.7171.0..sroa_idx172.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.p, i64 80, i1 false)
  %.sroa.7171.sroa.5.0..sroa.7171.0..sroa_idx172.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 592
  store ptr @105, ptr %.sroa.7171.sroa.5.0..sroa.7171.0..sroa_idx172.sroa_idx, align 8
  %.sroa.7171.sroa.6.0..sroa.7171.0..sroa_idx172.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 600
  store i64 6, ptr %.sroa.7171.sroa.6.0..sroa.7171.0..sroa_idx172.sroa_idx, align 8
  %.sroa.7171.sroa.7.0..sroa.7171.0..sroa_idx172.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7171.sroa.7.0..sroa.7171.0..sroa_idx172.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 636
  store i8 2, ptr %i.ba, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !645)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 128 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 144 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !646, !noalias !647, !noundef !9 ; 3 uses
  %i.be = load i64, ptr %i.bb, align 8, !range !10, !alias.scope !646, !noalias !647, !noundef !9
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit51

bb.b:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb) #22, !noalias !647
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit51

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit51: ; preds = %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !646, !noalias !647, !nonnull !9, !noundef !9
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bd ; 2 uses
  store ptr @105, ptr %i.bi, align 8, !noalias !647
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 6, ptr %i.bj, align 8, !noalias !645
  %i.bk = add i64 %i.bd, 1
  store i64 %i.bk, ptr %i.bc, align 8, !alias.scope !646, !noalias !647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.s, ptr noundef nonnull align 8 dereferenceable(640) %i.r, i64 640, i1 false), !alias.scope !648, !noalias !649
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.s) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.u, ptr noundef nonnull align 8 dereferenceable(712) %i.t, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 31) #23
  %.sroa.0401.0.copyload = load i64, ptr %i.k, align 8
  %.sroa.2402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.2402.0.copyload = load ptr, ptr %.sroa.2402.0..sroa_idx, align 8
  %.sroa.3403.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.3403.0.copyload = load i64, ptr %.sroa.3403.0..sroa_idx, align 8
  store i64 0, ptr %i.l, align 8
  %.sroa.0179.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.0179.sroa.5.0..sroa_idx, align 8
  %.sroa.0179.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 0, ptr %.sroa.0179.sroa.7.0..sroa_idx, align 8
  %.sroa.0179.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 0, ptr %.sroa.0179.sroa.9.0..sroa_idx, align 8
  %.sroa.0179.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store i64 -1, ptr %.sroa.0179.sroa.11.0..sroa_idx, align 8
  %.sroa.0179.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store i64 0, ptr %.sroa.0179.sroa.13.0..sroa_idx, align 8
  %.sroa.0179.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.14.0..sroa_idx, align 8
  %.sroa.0179.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 136 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.16.0..sroa_idx, align 8
  %.sroa.0179.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 144 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.17.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.18.0..sroa_idx, align 8
  %.sroa.0179.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.19.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.20.0..sroa_idx, align 8
  %.sroa.0179.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.21.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.22.0..sroa_idx, align 8
  %.sroa.0179.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.23.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.24.0..sroa_idx, align 8
  %.sroa.0179.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.26.0..sroa_idx, align 8
  %.sroa.0179.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.28.0..sroa_idx, align 8
  %.sroa.0179.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 288
  %.sroa.0179.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.29.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.31.0..sroa_idx, align 8
  %.sroa.0179.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.32.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0179.sroa.33.0..sroa_idx, align 8
  %.sroa.0179.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.34.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.35.0..sroa_idx, align 8
  %.sroa.0179.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  %.sroa.0179.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.36.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.38.0..sroa_idx, align 8
  %.sroa.0179.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.39.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.40.0..sroa_idx, align 8
  %.sroa.0179.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.41.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.42.0..sroa_idx, align 8
  %.sroa.0179.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 432
  %.sroa.0179.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.43.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.45.0..sroa_idx, align 8
  %.sroa.0179.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.46.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.47.0..sroa_idx, align 8
  %.sroa.0179.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 480
  store i64 0, ptr %.sroa.0179.sroa.48.0..sroa_idx, align 8
  %.sroa.4180.0..sroa_idx181 = getelementptr inbounds nuw i8, ptr %i.l, i64 488
  store i64 %.sroa.0401.0.copyload, ptr %.sroa.4180.0..sroa_idx181, align 8
  %.sroa.6183.0..sroa_idx184 = getelementptr inbounds nuw i8, ptr %i.l, i64 496
  store ptr %.sroa.2402.0.copyload, ptr %.sroa.6183.0..sroa_idx184, align 8
  %.sroa.7186.0..sroa_idx187 = getelementptr inbounds nuw i8, ptr %i.l, i64 504
  store i64 %.sroa.3403.0.copyload, ptr %.sroa.7186.0..sroa_idx187, align 8
  %.sroa.7186.sroa.5.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 512
  store i64 -1, ptr %.sroa.7186.sroa.5.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.7.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 552
  store i64 -2, ptr %.sroa.7186.sroa.7.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.9.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 576
  store ptr @102, ptr %.sroa.7186.sroa.9.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.10.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 584
  store i64 14, ptr %.sroa.7186.sroa.10.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.11.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 592
  store ptr @102, ptr %.sroa.7186.sroa.11.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.12.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 600
  store i64 14, ptr %.sroa.7186.sroa.12.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.13.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 608
  store ptr null, ptr %.sroa.7186.sroa.13.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.15.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 624
  store i32 105, ptr %.sroa.7186.sroa.15.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.16.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 628
  store i32 -1, ptr %.sroa.7186.sroa.16.0..sroa.7186.0..sroa_idx187.sroa_idx, align 4
  %.sroa.7186.sroa.17.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 632
  store i32 0, ptr %.sroa.7186.sroa.17.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.18.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i8 2, ptr %.sroa.7186.sroa.18.0..sroa.7186.0..sroa_idx187.sroa_idx, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 128 ; 2 uses
  %i.bm = load i64, ptr %.sroa.0179.sroa.17.0..sroa_idx, align 8, !alias.scope !651, !noalias !652, !noundef !9 ; 3 uses
  %i.bn = load i64, ptr %i.bl, align 8, !range !10, !alias.scope !651, !noalias !652, !noundef !9
  %i.bo = icmp eq i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.c, label %_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg14overrides_withReECscxmO3cvmuC8_9uu_base32.exit52

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit51
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl) #22, !noalias !652
  br label %_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg14overrides_withReECscxmO3cvmuC8_9uu_base32.exit52

_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg14overrides_withReECscxmO3cvmuC8_9uu_base32.exit52: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit51, %bb.c
  %i.bp = load ptr, ptr %.sroa.0179.sroa.16.0..sroa_idx, align 8, !alias.scope !651, !noalias !652, !nonnull !9, !noundef !9
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bm ; 2 uses
  store ptr @102, ptr %i.bq, align 8, !noalias !652
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 14, ptr %i.br, align 8, !noalias !650
  %i.bs = add i64 %i.bm, 1
  store i64 %i.bs, ptr %.sroa.0179.sroa.17.0..sroa_idx, align 8, !alias.scope !651, !noalias !652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.m, ptr noundef nonnull align 8 dereferenceable(640) %i.l, i64 640, i1 false), !alias.scope !653, !noalias !654
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.m) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.v, ptr noundef nonnull align 8 dereferenceable(712) %i.u, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247.sroa.21)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247.sroa.23)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247.sroa.25)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247.sroa.27)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247.sroa.32)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247.sroa.40)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247.sroa.42)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247.sroa.47)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !655
  %i.bt = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #23, !noalias !655 ; 4 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.d, label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscxmO3cvmuC8_9uu_base32.exit

bb.d:                                             ; preds = %_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg14overrides_withReECscxmO3cvmuC8_9uu_base32.exit52
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #26, !noalias !656
  unreachable

_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscxmO3cvmuC8_9uu_base32.exit: ; preds = %_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg14overrides_withReECscxmO3cvmuC8_9uu_base32.exit52
  store ptr @84, ptr %i.bt, align 8, !noalias !657
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 4, ptr %i.bv, align 8, !noalias !658
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.15, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.17, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.19, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.21, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.23, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.25, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.27, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.32, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.40, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.42, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.47, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bw = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef 76, ptr noalias nofree noundef nonnull %i.a, i64 noundef 20) #23 ; 2 uses
  %i.bx = extractvalue { ptr, i64 } %i.bw, 0
  %i.by = extractvalue { ptr, i64 } %i.bw, 1      ; 16 uses
  %.not.i = icmp slt i64 %i.by, 0
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !25

bb.e:                                             ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscxmO3cvmuC8_9uu_base32.exit
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.e
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !659
  %i.ca = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.by, i64 noundef range(i64 1, 9) 1) #23, !noalias !659 ; 18 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscxmO3cvmuC8_9uu_base32.exit, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4407.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscxmO3cvmuC8_9uu_base32.exit ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4407.0.ph, i64 %i.by) #26
  unreachable

bb.g:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr align 1 %i.bx, i64 %i.by, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %cond = icmp eq i64 %i.by, 1
  %i.cc = load i8, ptr %i.ca, align 1, !alias.scope !660, !noalias !661 ; 2 uses
  br i1 %cond, label %bb.h, label %thread-pre-split.i

bb.h:                                             ; preds = %bb.g
  switch i8 %i.cc, label %bb.o [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.g
  switch i8 %i.cc, label %bb.o [
    i8 43, label %bb.i
    i8 45, label %bb.j
  ]

bb.i:                                             ; preds = %thread-pre-split.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.ce = add nsw i64 %i.by, -1
  br label %bb.o

bb.j:                                             ; preds = %thread-pre-split.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 2 uses
  %i.cg = add nsw i64 %i.by, -1                   ; 3 uses
  %i.ch = icmp samesign ult i64 %i.by, 17
  br i1 %i.ch, label %.preheader114.i, label %.lr.ph.i

.preheader114.i:                                  ; preds = %bb.j
  %.not103137.i = icmp eq i64 %i.cg, 0
  br i1 %.not103137.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.m
  %.sroa.0.1136.i = phi ptr [ %i.ci, %bb.m ], [ %i.cf, %bb.j ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.cj, %bb.m ], [ %i.cg, %bb.j ]
  %.sroa.084.0134.i = phi i64 [ %i.cu, %bb.m ], [ 0, %bb.j ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.cj = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.ck = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.cl = extractvalue { i64, i1 } %i.ck, 0
  %i.cm = extractvalue { i64, i1 } %i.ck, 1
  br i1 %i.cm, label %.loopexit, label %bb.k, !prof !21

bb.k:                                             ; preds = %.lr.ph.i
  %i.cn = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !660, !noalias !661, !noundef !9
  %i.co = zext i8 %i.cn to i32
  %i.cp = add nsw i32 %i.co, -48                  ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 10
  br i1 %i.cq, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.cr = zext nneg i32 %i.cp to i64
  %i.cs = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.cl, i64 %i.cr) ; 2 uses
  %i.ct = extractvalue { i64, i1 } %i.cs, 1
  br i1 %i.ct, label %.loopexit, label %bb.m, !prof !21

bb.m:                                             ; preds = %bb.l
  %i.cu = extractvalue { i64, i1 } %i.cs, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.cj, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %.preheader114.i, %bb.n
  %.sroa.0.2140.i = phi ptr [ %i.db, %bb.n ], [ %i.cf, %.preheader114.i ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.da, %bb.n ], [ %i.cg, %.preheader114.i ]
  %.sroa.084.2138.i = phi i64 [ %i.dd, %bb.n ], [ 0, %.preheader114.i ]
  %i.cv = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !660, !noalias !661, !noundef !9
  %i.cw = zext i8 %i.cv to i32
  %i.cx = add nsw i32 %i.cw, -48                  ; 2 uses
  %i.cy = icmp ult i32 %i.cx, 10
  br i1 %i.cy, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.lr.ph141.i
  %i.cz = mul i64 %.sroa.084.2138.i, 10
  %i.da = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.dc = zext nneg i32 %i.cx to i64
  %i.dd = sub i64 %i.cz, %i.dc                    ; 2 uses
  %.not103.i = icmp eq i64 %i.da, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.o:                                             ; preds = %bb.h, %bb.i, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.ce, %bb.i ], [ %i.by, %thread-pre-split.i ], [ %i.by, %bb.h ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.cd, %bb.i ], [ %i.ca, %thread-pre-split.i ], [ %i.ca, %bb.h ] ; 2 uses
  %i.de = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.de, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.o
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.o, %bb.r
  %.sroa.0.3145.i = phi ptr [ %i.df, %bb.r ], [ %.sroa.0.0.i, %bb.o ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.dg, %bb.r ], [ %.sroa.26.0.i, %bb.o ]
  %.sroa.084.3143.i = phi i64 [ %i.dr, %bb.r ], [ 0, %bb.o ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.dg = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.dh = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.di = extractvalue { i64, i1 } %i.dh, 0
  %i.dj = extractvalue { i64, i1 } %i.dh, 1
  br i1 %i.dj, label %.loopexit, label %bb.p, !prof !21

bb.p:                                             ; preds = %.preheader111.i
  %i.dk = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !660, !noalias !661, !noundef !9
  %i.dl = zext i8 %i.dk to i32
  %i.dm = add nsw i32 %i.dl, -48                  ; 2 uses
  %i.dn = icmp ult i32 %i.dm, 10
  br i1 %i.dn, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.do = zext nneg i32 %i.dm to i64
  %i.dp = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.di, i64 %i.do) ; 2 uses
  %i.dq = extractvalue { i64, i1 } %i.dp, 1
  br i1 %i.dq, label %.loopexit, label %bb.r, !prof !21

bb.r:                                             ; preds = %bb.q
  %i.dr = extractvalue { i64, i1 } %i.dp, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.dg, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.s
  %.sroa.0.4149.i = phi ptr [ %i.dy, %bb.s ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.dx, %bb.s ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.ea, %bb.s ], [ 0, %.preheader.i ]
  %i.ds = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !660, !noalias !661, !noundef !9
  %i.dt = zext i8 %i.ds to i32
  %i.du = add nsw i32 %i.dt, -48                  ; 2 uses
  %i.dv = icmp ult i32 %i.du, 10
  br i1 %i.dv, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %.lr.ph150.i
  %i.dw = mul i64 %.sroa.084.4147.i, 10
  %i.dx = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.dz = zext nneg i32 %i.du to i64
  %i.ea = add i64 %i.dw, %i.dz                    ; 2 uses
  %.not105.i = icmp eq i64 %i.dx, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit:                                        ; preds = %.lr.ph.i, %bb.l, %bb.k, %.lr.ph141.i, %.preheader111.i, %bb.p, %bb.q, %.lr.ph150.i, %bb.h, %bb.h, %.thread
  %.ph = phi ptr [ %i.ca, %.preheader111.i ], [ %i.ca, %.lr.ph141.i ], [ %i.ca, %.lr.ph150.i ], [ %i.ca, %bb.h ], [ inttoptr (i64 1 to ptr), %.thread ], [ %i.ca, %bb.h ], [ %i.ca, %bb.q ], [ %i.ca, %bb.p ], [ %i.ca, %bb.k ], [ %i.ca, %bb.l ], [ %i.ca, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.by) #22
  %i.eb = load i8, ptr %i.f, align 8, !range !18, !noundef !9
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.v, label %bb.w

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.m, %bb.n, %bb.r, %bb.s, %.preheader.i, %.preheader114.i
  %.sroa.15324.0 = phi i64 [ %i.dd, %bb.n ], [ 0, %.preheader114.i ], [ %i.ea, %bb.s ], [ 0, %.preheader.i ], [ %i.dr, %bb.r ], [ %i.cu, %bb.m ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 7, i64 noundef %.sroa.15324.0) #23
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.ed = phi ptr [ %.ph, %bb.w ], [ %i.ca, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 21, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ee = icmp eq i64 %i.by, 0
  br i1 %i.ee, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit93, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ed, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !662
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit93

bb.v:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.by, ptr %i.e, align 8
  %.sroa.5319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.ph, ptr %.sroa.5319.0..sroa_idx, align 8
  %.sroa.8320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.by, ptr %.sroa.8320.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 7, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 21, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit93

bb.w:                                             ; preds = %.loopexit
  %i.ef = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.eg = load double, ptr %i.ef, align 8, !noundef !9
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 7, double noundef %i.eg) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.t

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit93: ; preds = %bb.v, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.0413.0.copyload = load i64, ptr %i.h, align 8
  %.sroa.2414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.2414.0.copyload = load ptr, ptr %.sroa.2414.0..sroa_idx, align 8
  %.sroa.3415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.3415.0.copyload = load i64, ptr %.sroa.3415.0..sroa_idx, align 8
  store i64 0, ptr %i.i, align 8
  %.sroa.0247.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.0247.sroa.5.0..sroa_idx, align 8
  %.sroa.0247.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 0, ptr %.sroa.0247.sroa.7.0..sroa_idx, align 8
  %.sroa.0247.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 0, ptr %.sroa.0247.sroa.9.0..sroa_idx, align 8
  %.sroa.0247.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store i64 -1, ptr %.sroa.0247.sroa.11.0..sroa_idx, align 8
  %.sroa.0247.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store i64 0, ptr %.sroa.0247.sroa.13.0..sroa_idx, align 8
  %.sroa.0247.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.14.0..sroa_idx, align 8
  %.sroa.0247.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.15, i64 16, i1 false)
  %.sroa.0247.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 136 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.16.0..sroa_idx, align 8
  %.sroa.0247.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 144 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.17.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.17, i64 16, i1 false)
  %.sroa.0247.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.18.0..sroa_idx, align 8
  %.sroa.0247.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.19.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.19, i64 16, i1 false)
  %.sroa.0247.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.20.0..sroa_idx, align 8
  %.sroa.0247.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.21.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.21, i64 16, i1 false)
  %.sroa.0247.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.22.0..sroa_idx, align 8
  %.sroa.0247.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.23.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.23, i64 16, i1 false)
  %.sroa.0247.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.24.0..sroa_idx, align 8
  %.sroa.0247.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.25.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.25, i64 16, i1 false)
  %.sroa.0247.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.26.0..sroa_idx, align 8
  %.sroa.0247.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.27.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.27, i64 16, i1 false)
  %.sroa.0247.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.28.0..sroa_idx, align 8
  %.sroa.0247.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 288
  %.sroa.0247.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.29.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.31.0..sroa_idx, align 8
  %.sroa.0247.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.32.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.32, i64 16, i1 false)
  %.sroa.0247.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0247.sroa.33.0..sroa_idx, align 8
  %.sroa.0247.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 336
  store i64 0, ptr %.sroa.0247.sroa.34.0..sroa_idx, align 8
  %.sroa.0247.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 344
  store i64 1, ptr %.sroa.0247.sroa.35.0..sroa_idx, align 8
  %.sroa.0247.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 352
  store ptr %i.bt, ptr %.sroa.0247.sroa.36.0..sroa_idx, align 8
  %.sroa.0247.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 360
  store i64 1, ptr %.sroa.0247.sroa.37.0..sroa_idx, align 8
  %.sroa.0247.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 368
  store i64 0, ptr %.sroa.0247.sroa.38.0..sroa_idx, align 8
  %.sroa.0247.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.39.0..sroa_idx, align 8
  %.sroa.0247.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.40.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.40, i64 16, i1 false)
  %.sroa.0247.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.41.0..sroa_idx, align 8
  %.sroa.0247.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.42, i64 16, i1 false)
  %.sroa.0247.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.43.0..sroa_idx, align 8
  %.sroa.0247.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 432
  %.sroa.0247.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.44.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.46.0..sroa_idx, align 8
  %.sroa.0247.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.47.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0247.sroa.47, i64 16, i1 false)
  %.sroa.0247.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0247.sroa.48.0..sroa_idx, align 8
  %.sroa.0247.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 480
  store i64 0, ptr %.sroa.0247.sroa.49.0..sroa_idx, align 8
  %.sroa.4248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 488
  store i64 %.sroa.0413.0.copyload, ptr %.sroa.4248.0..sroa_idx, align 8
  %.sroa.6251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 496
  store ptr %.sroa.2414.0.copyload, ptr %.sroa.6251.0..sroa_idx, align 8
  %.sroa.7254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 504
  store i64 %.sroa.3415.0.copyload, ptr %.sroa.7254.0..sroa_idx, align 8
  %.sroa.7254.sroa.5.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 512
  store i64 -1, ptr %.sroa.7254.sroa.5.0..sroa.7254.0..sroa_idx.sroa_idx, align 8
  %.sroa.7254.sroa.7.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 552
  store i64 -2, ptr %.sroa.7254.sroa.7.0..sroa.7254.0..sroa_idx.sroa_idx, align 8
  %.sroa.7254.sroa.9.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 576
  store ptr @104, ptr %.sroa.7254.sroa.9.0..sroa.7254.0..sroa_idx.sroa_idx, align 8
  %.sroa.7254.sroa.10.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 584
  store i64 4, ptr %.sroa.7254.sroa.10.0..sroa.7254.0..sroa_idx.sroa_idx, align 8
  %.sroa.7254.sroa.11.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 592
  store ptr @104, ptr %.sroa.7254.sroa.11.0..sroa.7254.0..sroa_idx.sroa_idx, align 8
  %.sroa.7254.sroa.12.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 600
  store i64 4, ptr %.sroa.7254.sroa.12.0..sroa.7254.0..sroa_idx.sroa_idx, align 8
  %.sroa.7254.sroa.13.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 608
  store ptr null, ptr %.sroa.7254.sroa.13.0..sroa.7254.0..sroa_idx.sroa_idx, align 8
  %.sroa.7254.sroa.15.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 624
  store i32 119, ptr %.sroa.7254.sroa.15.0..sroa.7254.0..sroa_idx.sroa_idx, align 8
  %.sroa.7254.sroa.16.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 628
  store i32 -1, ptr %.sroa.7254.sroa.16.0..sroa.7254.0..sroa_idx.sroa_idx, align 4
  %.sroa.7254.sroa.17.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 632
  store i32 0, ptr %.sroa.7254.sroa.17.0..sroa.7254.0..sroa_idx.sroa_idx, align 8
  %.sroa.7254.sroa.18.0..sroa.7254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 636
  store i8 -1, ptr %.sroa.7254.sroa.18.0..sroa.7254.0..sroa_idx.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247.sroa.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247.sroa.21)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247.sroa.23)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247.sroa.25)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247.sroa.27)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247.sroa.32)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247.sroa.40)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247.sroa.42)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247.sroa.47)
  call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 2 uses
  %i.ei = load i64, ptr %.sroa.0247.sroa.17.0..sroa_idx, align 8, !alias.scope !664, !noalias !665, !noundef !9 ; 3 uses
  %i.ej = load i64, ptr %i.eh, align 8, !range !10, !alias.scope !664, !noalias !665, !noundef !9
  %i.ek = icmp eq i64 %i.ei, %i.ej
  br i1 %i.ek, label %bb.x, label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECscxmO3cvmuC8_9uu_base32.exit

bb.x:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit93
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eh) #22, !noalias !665
  br label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECscxmO3cvmuC8_9uu_base32.exit

_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.x, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit93
  %i.el = load ptr, ptr %.sroa.0247.sroa.16.0..sroa_idx, align 8, !alias.scope !664, !noalias !665, !nonnull !9, !noundef !9
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.ei ; 2 uses
  store ptr @104, ptr %i.em, align 8, !noalias !665
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i64 4, ptr %i.en, align 8, !noalias !663
  %i.eo = add i64 %i.ei, 1
  store i64 %i.eo, ptr %.sroa.0247.sroa.17.0..sroa_idx, align 8, !alias.scope !664, !noalias !665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.j, ptr noundef nonnull align 8 dereferenceable(640) %i.i, i64 640, i1 false), !alias.scope !666, !noalias !667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.j) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.w, ptr noundef nonnull align 8 dereferenceable(712) %i.v, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.15338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15338.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.17340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17340.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.19342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19342.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.21344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.21344.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.23346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23346.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.25348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25348.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.27350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27350.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.32355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.32355.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.34357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.34357.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.39362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.39362.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.41364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.41364.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.46369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 456 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46369.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 0, ptr %i.b, align 8, !alias.scope !668, !noalias !669
  %.sroa.2327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.2327.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.3329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 1, ptr %.sroa.3329.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.5330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 1, ptr %.sroa.5330.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.6331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %.sroa.6331.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.7333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 2, ptr %.sroa.7333.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.13336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 0, ptr %.sroa.13336.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.14337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.14337.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.16339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.16339.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.18341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.18341.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.20343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.20343.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.22345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.22345.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.24347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.24347.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.26349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.26349.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.28351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.28351.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.29352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %.sroa.31354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.29352.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.31354.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.33356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.33356.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.35358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.35358.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.36359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %.sroa.38361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.36359.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.38361.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.40363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.40363.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.42365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42365.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.43366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %.sroa.44367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %.sroa.45368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43366.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45368.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.47370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 472 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.47370.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.48371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 480 ; 3 uses
  store i64 0, ptr %.sroa.48371.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.49372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  store i64 -1, ptr %.sroa.49372.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.50374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  store i64 -1, ptr %.sroa.50374.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.51376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 552
  store i64 -2, ptr %.sroa.51376.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.52378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  store ptr @103, ptr %.sroa.52378.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.54379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  store i64 4, ptr %.sroa.54379.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.56380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  store ptr null, ptr %.sroa.56380.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.57382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  store ptr null, ptr %.sroa.57382.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.58384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  store i32 -1, ptr %.sroa.58384.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.59385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 628
  store i32 -1, ptr %.sroa.59385.0..sroa_idx, align 4, !alias.scope !668, !noalias !669
  %.sroa.60386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 632
  store i32 0, ptr %.sroa.60386.0..sroa_idx, align 8, !alias.scope !668, !noalias !669
  %.sroa.61387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 636
  store i8 1, ptr %.sroa.61387.0..sroa_idx, align 4, !alias.scope !668, !noalias !669
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  call void @llvm.experimental.noalias.scope.decl(metadata !672)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !673
  %i.ep = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef range(i64 1, 9) 8) #23, !noalias !673 ; 5 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.y, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i, !prof !24

bb.y:                                             ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECscxmO3cvmuC8_9uu_base32.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #26, !noalias !673
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECscxmO3cvmuC8_9uu_base32.exit
  store i64 1, ptr %i.ep, align 8, !noalias !674
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i64 1, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !674
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i8 3, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !674
  %i.er = ptrtoint ptr %i.ep to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !675)
  %i.es = load i64, ptr %.sroa.46369.0..sroa_idx, align 8, !alias.scope !676, !noalias !677, !noundef !9 ; 4 uses
  %.idx = shl nuw nsw i64 %i.es, 4
  %i.et = getelementptr inbounds nuw i8, ptr inttoptr (i64 8 to ptr), i64 %.idx
  %cond495 = icmp eq i64 %i.es, 0
  br i1 %cond495, label %bb.aa, label %.lr.ph

bb.z:                                             ; preds = %.lr.ph
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i494, i64 16 ; 2 uses
  %i.ev = add i64 %.sroa.8.0.i.i.i493, 1
  %i.ew = icmp eq ptr %i.eu, %i.et
  br i1 %i.ew, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCscxmO3cvmuC8_9uu_base32.exit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i, %bb.z
  %.sroa.0.0.i.i.i494 = phi ptr [ %i.eu, %bb.z ], [ inttoptr (i64 8 to ptr), %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i ] ; 2 uses
  %.sroa.8.0.i.i.i493 = phi i64 [ %i.ev, %bb.z ], [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i ] ; 2 uses
  %.val.i.i.i = load i128, ptr %.sroa.0.0.i.i.i494, align 8, !noalias !678
  %i.ex = icmp eq i128 %.val.i.i.i, 63958622876645927927552189038096644140
  br i1 %i.ex, label %bb.ac, label %bb.z

bb.aa:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.44367.0..sroa_idx) #22, !noalias !679
  %.pre.i.i.i = load ptr, ptr %.sroa.45368.0..sroa_idx, align 8, !alias.scope !680, !noalias !679
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCscxmO3cvmuC8_9uu_base32.exit.i.i.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCscxmO3cvmuC8_9uu_base32.exit.i.i.i: ; preds = %bb.z, %bb.aa
  %i.ey = phi ptr [ %.pre.i.i.i, %bb.aa ], [ inttoptr (i64 8 to ptr), %bb.z ]
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.es ; 2 uses
  store i64 -5875614554295535572, ptr %i.ez, align 8, !noalias !681
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i64 3467203893602029906, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !681
  %i.fa = add i64 %i.es, 1
  store i64 %i.fa, ptr %.sroa.46369.0..sroa_idx, align 8, !alias.scope !680, !noalias !679
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 464 ; 2 uses
  %i.fc = load i64, ptr %.sroa.48371.0..sroa_idx, align 8, !alias.scope !682, !noalias !683, !noundef !9 ; 3 uses
  %i.fd = load i64, ptr %i.fb, align 8, !range !10, !alias.scope !682, !noalias !683, !noundef !9
  %i.fe = icmp eq i64 %i.fc, %i.fd
  br i1 %i.fe, label %bb.ab, label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECscxmO3cvmuC8_9uu_base32.exit

bb.ab:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCscxmO3cvmuC8_9uu_base32.exit.i.i.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fb) #22, !noalias !683
  br label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECscxmO3cvmuC8_9uu_base32.exit

bb.ac:                                            ; preds = %.lr.ph
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i493, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #24, !noalias !678
  unreachable

_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECscxmO3cvmuC8_9uu_base32.exit: ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCscxmO3cvmuC8_9uu_base32.exit.i.i.i, %bb.ab
  %i.ff = load ptr, ptr %.sroa.47370.0..sroa_idx, align 8, !alias.scope !682, !noalias !683, !nonnull !9, !noundef !9
  %i.fg = getelementptr inbounds nuw [32 x i8], ptr %i.ff, i64 %i.fc ; 4 uses
  store i64 %i.er, ptr %i.fg, align 8, !noalias !684
  %.sroa.7.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i64 ptrtoint (ptr @8 to i64), ptr %.sroa.7.0..sroa_idx3.i.i, align 8, !noalias !684
  %.sroa.10.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store i64 -5875614554295535572, ptr %.sroa.10.0..sroa_idx5.i.i, align 8, !noalias !684
  %.sroa.13.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  store i64 3467203893602029906, ptr %.sroa.13.0..sroa_idx7.i.i, align 8, !noalias !684
  %i.fh = add i64 %i.fc, 1
  store i64 %i.fh, ptr %.sroa.48371.0..sroa_idx, align 8, !alias.scope !682, !noalias !683
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.c, ptr noundef nonnull align 8 dereferenceable(640) %i.b, i64 640, i1 false), !alias.scope !685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.c) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %i.w, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.experimental.noalias.scope.decl(metadata !686)
  %.val.i131 = load i64, ptr %2, align 8, !range !10, !alias.scope !686, !noundef !9 ; 2 uses
  %i.fi = icmp eq i64 %.val.i131, 0
  br i1 %i.fi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit133, label %bb.ad

bb.ad:                                            ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECscxmO3cvmuC8_9uu_base32.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef %.val.i131, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !686
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit133

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit133: ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECscxmO3cvmuC8_9uu_base32.exit, %bb.ad
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCscxmO3cvmuC8_9uu_base3211base_common9get_input(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.0.i = alloca [24 x i8], align 8          ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !11, !noundef !9
  %.not = icmp eq i64 %i.i, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !713
  store i128 18446745954905227264, ptr %i.e, align 16, !noalias !713
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i = load ptr, ptr %i.j, align 8, !alias.scope !712, !noalias !714, !nonnull !9, !noundef !9 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i.i = load i64, ptr %i.k, align 8, !alias.scope !712, !noalias !714, !noundef !9 ; 2 uses
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i) #23, !noalias !712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !713
  call void @llvm.experimental.noalias.scope.decl(metadata !715)
  %i.l = load i32, ptr %i.f, align 8, !range !716, !alias.scope !715, !noalias !717, !noundef !9
  %i.m = trunc nuw i32 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !715, !noalias !717, !nonnull !9, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !718
  store i64 1, ptr %i.d, align 8, !noalias !718
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.val.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !718
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.val1.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !718
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 0, ptr %i.p, align 8, !noalias !718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !719
  store i64 0, ptr %i.c, align 8, !noalias !719
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !719
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !719
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.q, align 8, !noalias !719
  store ptr %i.c, ptr %i.b, align 8, !noalias !719
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @108, ptr %i.r, align 8, !noalias !719
  %i.s = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #23, !noalias !720
  br i1 %i.s, label %bb.d, label %_RNCNvNtCscxmO3cvmuC8_9uu_base3211base_common9get_input0B5_.exit.i, !prof !21

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #24, !noalias !720
  unreachable

_RNCNvNtCscxmO3cvmuC8_9uu_base3211base_common9get_input0B5_.exit.i: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !718
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !722
  %i.t = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #23, !noalias !722 ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %bb.j, !prof !24

bb.e:                                             ; preds = %_RNCNvNtCscxmO3cvmuC8_9uu_base3211base_common9get_input0B5_.exit.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #26, !noalias !722
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.v = tail call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio5stdin() #23
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !723
  %i.w = tail call noundef dereferenceable_or_null(8192) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8192, i64 noundef range(i64 1, 9) 1) #23, !noalias !723 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.g, label %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinE13with_capacityCscxmO3cvmuC8_9uu_base32.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8192) #26, !noalias !724
  unreachable

_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinE13with_capacityCscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.f
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !725
  %i.y = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 48, i64 noundef range(i64 1, 9) 8) #23, !noalias !725 ; 6 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.h, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !24

bb.h:                                             ; preds = %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinE13with_capacityCscxmO3cvmuC8_9uu_base32.exit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #26, !noalias !725
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinE13with_capacityCscxmO3cvmuC8_9uu_base32.exit
  store ptr %i.w, ptr %i.y, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 8192, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.512.0..sroa_idx, i8 0, i64 17, i1 false)
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %i.v, ptr %.sroa.614.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @87, ptr %i.ab, align 8
  store i64 0, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit6, %bb.j, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  ret void

bb.j:                                             ; preds = %_RNCNvNtCscxmO3cvmuC8_9uu_base3211base_common9get_input0B5_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !noalias !721
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !721
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @23, ptr %i.ad, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.i

bb.k:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !range !14, !alias.scope !715, !noalias !717, !noundef !9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i32 %i.af, ptr %i.g, align 4
  %i.ag = call noundef i32 @_RNvXs3_NtNtNtCs2vKOLqTMYjT_3std3sys2fd4unixNtB5_8FileDescNtNtNtNtBb_2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g) #23
  %i.ah = zext i32 %i.ag to i64
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 221 to ptr), ptr %i.ai, ptr null, ptr null, ptr nonnull inttoptr (i64 2 to ptr)) #27, !srcloc !726 ; 0 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !727
  %i.ak = call noundef dereferenceable_or_null(8192) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8192, i64 noundef range(i64 1, 9) 1) #23, !noalias !727 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.l, label %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileE13with_capacityCscxmO3cvmuC8_9uu_base32.exit

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8192) #26, !noalias !728
  unreachable

_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileE13with_capacityCscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.k
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !729
  %i.am = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 48, i64 noundef range(i64 1, 9) 8) #23, !noalias !729 ; 6 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.m, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit6, !prof !24

bb.m:                                             ; preds = %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileE13with_capacityCscxmO3cvmuC8_9uu_base32.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #26, !noalias !729
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit6: ; preds = %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileE13with_capacityCscxmO3cvmuC8_9uu_base32.exit
  store ptr %i.ak, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 8192, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.5.0..sroa_idx, i8 0, i64 17, i1 false)
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i32 %i.af, ptr %.sroa.69.0..sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @88, ptr %i.ap, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.i
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18fast_decode_buffer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %4, i1 noundef zeroext %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 12 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %i.d = alloca [256 x i8], align 1               ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !9, !nonnull !9
  %i.g = tail call { ptr, i64 } %i.f(ptr noundef nonnull %3) #25 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 3 uses
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.d, i8 0, i64 256, i1 false), !alias.scope !774, !noalias !775
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = icmp samesign eq i64 %i.i, 0
  br i1 %i.k, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15alphabet_lookup.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %i.i, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.0.02.i.prol = phi ptr [ %i.n, %.lr.ph.i.prol ], [ %i.h, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.l = load i8, ptr %.sroa.0.02.i.prol, align 1, !alias.scope !775, !noalias !774, !noundef !9
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.prol, i64 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.m
  store i8 1, ptr %i.o, align 1, !alias.scope !774, !noalias !775
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !733

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.0.02.i.unr = phi ptr [ %i.h, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %i.p = icmp ult i64 %i.i, 8
  br i1 %i.p, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15alphabet_lookup.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.02.i = phi ptr [ %i.au, %.lr.ph.i ], [ %.sroa.0.02.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.q = load i8, ptr %.sroa.0.02.i, align 1, !alias.scope !775, !noalias !774, !noundef !9
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.r
  store i8 1, ptr %i.t, align 1, !alias.scope !774, !noalias !775
  %i.u = load i8, ptr %i.s, align 1, !alias.scope !775, !noalias !774, !noundef !9
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.v
  store i8 1, ptr %i.x, align 1, !alias.scope !774, !noalias !775
  %i.y = load i8, ptr %i.w, align 1, !alias.scope !775, !noalias !774, !noundef !9
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.z
  store i8 1, ptr %i.ab, align 1, !alias.scope !774, !noalias !775
  %i.ac = load i8, ptr %i.aa, align 1, !alias.scope !775, !noalias !774, !noundef !9
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ad
  store i8 1, ptr %i.af, align 1, !alias.scope !774, !noalias !775
  %i.ag = load i8, ptr %i.ae, align 1, !alias.scope !775, !noalias !774, !noundef !9
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ah
  store i8 1, ptr %i.aj, align 1, !alias.scope !774, !noalias !775
  %i.ak = load i8, ptr %i.ai, align 1, !alias.scope !775, !noalias !774, !noundef !9
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 6
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.al
  store i8 1, ptr %i.an, align 1, !alias.scope !774, !noalias !775
  %i.ao = load i8, ptr %i.am, align 1, !alias.scope !775, !noalias !774, !noundef !9
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ap
  store i8 1, ptr %i.ar, align 1, !alias.scope !774, !noalias !775
  %i.as = load i8, ptr %i.aq, align 1, !alias.scope !775, !noalias !774, !noundef !9
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.at
  store i8 1, ptr %i.av, align 1, !alias.scope !774, !noalias !775
  %i.aw = icmp eq ptr %i.au, %i.j
  br i1 %i.aw, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15alphabet_lookup.exit, label %.lr.ph.i

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15alphabet_lookup.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !invariant.load !9, !nonnull !9
  %i.az = tail call noundef i64 %i.ay(ptr noundef nonnull %3) #25 ; 10 uses
  %i.ba = shl i64 %i.az, 10                       ; 9 uses
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %6, label %7, !prof !21

6:                                                ; preds = %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15alphabet_lookup.exit
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #24
  unreachable

7:                                                ; preds = %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15alphabet_lookup.exit
  %.not49 = icmp eq i64 %i.az, 0
  br i1 %.not49, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %7
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #24
  unreachable

bb.c:                                             ; preds = %7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 9 uses
  store i64 0, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not.i = icmp slt i64 %i.ba, 0
  br i1 %.not.i, label %bb.d, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i, !prof !25

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !776
  %i.bd = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ba, i64 noundef range(i64 1, 9) 1) #23, !noalias !776 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4122.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4122.0.ph, i64 %i.ba) #26
  unreachable

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  store i64 %i.ba, ptr %i.b, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 10 uses
  store ptr %i.bd, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 12 uses
  store i64 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !invariant.load !9, !nonnull !9
  %i.bj = tail call noundef zeroext i1 %i.bi(ptr noundef nonnull %3) #25 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !9 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bn ; 2 uses
  %i.bp = icmp samesign eq i64 %i.bn, 0
  br i1 %i.bp, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.val69 = load ptr, ptr %i.bq, align 8          ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val71 = load ptr, ptr %i.br, align 8          ; 2 uses
  br i1 %i.bj, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.backedge.us
  %.sroa.01.0199.us = phi ptr [ %i.bs, %.backedge.us ], [ %i.bl, %.lr.ph ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.01.0199.us, i64 1 ; 2 uses
  %i.bt = load i8, ptr %.sroa.01.0199.us, align 1, !noundef !9 ; 3 uses
  switch i8 %i.bt, label %bb.f [
    i8 10, label %.backedge.us
    i8 13, label %.backedge.us
  ]

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !range !18, !noundef !9
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %5, label %.backedge.us, label %.split.us

bb.h:                                             ; preds = %bb.f
  %i.by = load i64, ptr %i.bg, align 8, !alias.scope !777, !noundef !9 ; 3 uses
  %i.bz = load i64, ptr %i.b, align 8, !range !10, !alias.scope !777, !noundef !9
  %i.ca = icmp eq i64 %i.by, %i.bz
  br i1 %i.ca, label %bb.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit.us

bb.i:                                             ; preds = %bb.h
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #22
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit.us

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit.us: ; preds = %bb.i, %bb.h
  %i.cb = load ptr, ptr %i.bf, align 8, !alias.scope !777, !nonnull !9, !noundef !9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.by
  store i8 %i.bt, ptr %i.cc, align 1
  %i.cd = add nsw i64 %i.by, 1                    ; 3 uses
  store i64 %i.cd, ptr %i.bg, align 8, !alias.scope !777
  call void @llvm.experimental.noalias.scope.decl(metadata !778)
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
  %.not14.i.us = icmp ult i64 %i.cd, %i.az
  br i1 %.not14.i.us, label %.backedge.us, label %.lr.ph.i85.us

.lr.ph.i85.us:                                    ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit.us
  %i.ce = load ptr, ptr %i.bf, align 8, !alias.scope !778, !noalias !779, !nonnull !9 ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i.us, %.lr.ph.i85.us
  %i.cf = phi i64 [ %i.cd, %.lr.ph.i85.us ], [ %i.cp, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i.us ] ; 3 uses
  %..i.i.us = call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.ba, i64 %i.cf) ; 2 uses
  %i.cg = urem i64 %..i.i.us, %i.az
  %i.ch = sub nuw nsw i64 %..i.i.us, %i.cg        ; 5 uses
  %i.ci = icmp samesign ult i64 %i.ch, %i.az
  br i1 %i.ci, label %.backedge.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = call { ptr, ptr } %.val69(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef range(i64 1, -9223372036854775808) %i.ch, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #25, !noalias !778, !inline_history !1 ; 2 uses
  %i.ck = extractvalue { ptr, ptr } %i.cj, 0      ; 2 uses
  %.not12.i.us = icmp eq ptr %i.ck, null
  br i1 %.not12.i.us, label %bb.l, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.thread155

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !780)
  %i.cl = load ptr, ptr %i.bb, align 8, !alias.scope !781, !noalias !778, !nonnull !9, !noundef !9
  %i.cm = load i64, ptr %i.bc, align 8, !alias.scope !781, !noalias !778, !noundef !9
  %i.cn = call noundef ptr %.val71(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cl, i64 noundef %i.cm) #25, !noalias !782, !inline_history !2 ; 2 uses
  %.not.i15.i.us = icmp eq ptr %i.cn, null
  br i1 %.not.i15.i.us, label %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i.us, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.us

_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i.us: ; preds = %bb.l
  store i64 0, ptr %i.bc, align 8, !alias.scope !781, !noalias !778
  store i64 0, ptr %i.bg, align 8, !alias.scope !783, !noalias !784
  %.not.i.i.i.i.i.us = icmp eq i64 %i.cf, %i.ch
  br i1 %.not.i.i.i.i.i.us, label %.backedge.us, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i.us

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i.us: ; preds = %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i.us
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ch
  %i.cp = sub nuw nsw i64 %i.cf, %i.ch            ; 4 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr nonnull align 1 %i.co, i64 %i.cp, i1 false), !noalias !785
  store i64 %i.cp, ptr %i.bg, align 8, !alias.scope !778, !noalias !786
  %.not.i86.us = icmp ult i64 %i.cp, %i.az
  br i1 %.not.i86.us, label %.backedge.us, label %bb.j

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.us: ; preds = %bb.l
  %i.cq = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.cn) #23, !noalias !778 ; 2 uses
  %i.cr = extractvalue { ptr, ptr } %i.cq, 0      ; 2 uses
  %.not52.us = icmp eq ptr %i.cr, null
  br i1 %.not52.us, label %.backedge.us, label %.loopexit

.backedge.us:                                     ; preds = %bb.j, %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i.us, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i.us, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit.us, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.us, %.lr.ph.split.us, %.lr.ph.split.us, %bb.g
  %i.cs = icmp eq ptr %i.bs, %i.bo
  br i1 %i.cs, label %._crit_edge.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %.backedge
  %i.ct = phi i64 [ %i.cw, %.backedge ], [ 0, %.lr.ph ] ; 6 uses
  %.sroa.01.0199 = phi ptr [ %i.cu, %.backedge ], [ %i.bl, %.lr.ph ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.01.0199, i64 1 ; 2 uses
  %i.cv = load i8, ptr %.sroa.01.0199, align 1, !noundef !9 ; 3 uses
  switch i8 %i.cv, label %bb.m [
    i8 10, label %.backedge
    i8 13, label %.backedge
  ]

._crit_edge.loopexit:                             ; preds = %.backedge.us
  %.pr.pre228.pre = load i64, ptr %i.bg, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.backedge, %._crit_edge.loopexit, %bb.e
  %.pr.pre228 = phi i64 [ 0, %bb.e ], [ %.pr.pre228.pre, %._crit_edge.loopexit ], [ %i.cw, %.backedge ] ; 5 uses
  br i1 %i.bj, label %bb.aa, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104.thread

.backedge:                                        ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit, %bb.w, %.lr.ph.split, %.lr.ph.split, %bb.n
  %i.cw = phi i64 [ %i.dg, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit ], [ 0, %bb.w ], [ %i.ct, %.lr.ph.split ], [ %i.ct, %.lr.ph.split ], [ %i.ct, %bb.n ] ; 2 uses
  %i.cx = icmp eq ptr %i.cu, %i.bo
  br i1 %i.cx, label %._crit_edge, label %.lr.ph.split

bb.m:                                             ; preds = %.lr.ph.split
  %i.cy = zext i8 %i.cv to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !range !18, !noundef !9
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %5, label %.backedge, label %.split.us

bb.o:                                             ; preds = %bb.m
  %i.dc = load i64, ptr %i.b, align 8, !range !10, !alias.scope !777, !noundef !9
  %i.dd = icmp eq i64 %i.ct, %i.dc
  br i1 %i.dd, label %bb.p, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit

bb.p:                                             ; preds = %bb.o
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #22
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.o, %bb.p
  %i.de = load ptr, ptr %i.bf, align 8, !alias.scope !777, !nonnull !9, !noundef !9
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.ct
  store i8 %i.cv, ptr %i.df, align 1
  %i.dg = add nsw i64 %i.ct, 1                    ; 3 uses
  store i64 %i.dg, ptr %i.bg, align 8, !alias.scope !777
  %i.dh = icmp eq i64 %i.dg, %i.ba
  br i1 %i.dh, label %bb.t, label %.backedge

.split.us:                                        ; preds = %bb.n, %bb.g
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !787
  %i.di = call noundef dereferenceable_or_null(20) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 20, i64 noundef range(i64 1, 9) 1) #23, !noalias !787 ; 3 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.split.us
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 20) #26
  unreachable

bb.r:                                             ; preds = %.split.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.di, ptr noundef nonnull align 1 dereferenceable(20) @95, i64 20, i1 false)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !788
  %i.dk = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #23, !noalias !788 ; 6 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.s, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !24

bb.s:                                             ; preds = %bb.r
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #26, !noalias !788
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.r
  store i64 20, ptr %i.dk, align 8
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.di, ptr %.sroa.4125.0..sroa_idx, align 8
  %.sroa.5126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i64 20, ptr %.sroa.5126.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  store i32 1, ptr %.sroa.6.0..sroa_idx, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit119

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.thread155: ; preds = %bb.k
  %i.dm = extractvalue { ptr, ptr } %i.cj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dm) ]
  br label %bb.x

bb.t:                                             ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit
  %i.dn = load ptr, ptr %i.bf, align 8, !nonnull !9, !noundef !9
  %i.do = call { ptr, ptr } %.val69(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dn, i64 noundef range(i64 1, -9223372036854775808) %i.ba, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #25, !inline_history !3 ; 2 uses
  %i.dp = extractvalue { ptr, ptr } %i.do, 0      ; 2 uses
  %.not50 = icmp eq ptr %i.dp, null
  br i1 %.not50, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dq = extractvalue { ptr, ptr } %i.do, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dq) ]
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit119

bb.v:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !789)
  %i.dr = load ptr, ptr %i.bb, align 8, !alias.scope !789, !nonnull !9, !noundef !9
  %i.ds = load i64, ptr %i.bc, align 8, !alias.scope !789, !noundef !9
  %i.dt = call noundef ptr %.val71(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dr, i64 noundef %i.ds) #25, !noalias !789, !inline_history !4 ; 2 uses
  %.not.i88 = icmp eq ptr %i.dt, null
  br i1 %.not.i88, label %bb.w, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit: ; preds = %bb.v
  %i.du = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.dt) #23 ; 2 uses
  %i.dv = extractvalue { ptr, ptr } %i.du, 0
  %i.dw = extractvalue { ptr, ptr } %i.du, 1
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit119

bb.w:                                             ; preds = %bb.v
  store i64 0, ptr %i.bc, align 8, !alias.scope !789
  store i64 0, ptr %i.bg, align 8
  br label %.backedge

.loopexit:                                        ; preds = %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.us
  %i.dx = extractvalue { ptr, ptr } %i.cq, 1
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.thread155
  %.sroa.0.0.i160 = phi ptr [ %i.ck, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.thread155 ], [ %i.cr, %.loopexit ]
  %.sroa.4.0.i159 = phi ptr [ %i.dm, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.thread155 ], [ %i.dx, %.loopexit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i159) ]
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit119

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit119: ; preds = %bb.au, %bb.at, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.x, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit, %bb.u, %bb.ae
  %.sroa.10.1 = phi ptr [ %.sroa.4.0.i96168, %bb.ae ], [ @27, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.4.0.i159, %bb.x ], [ %i.dq, %bb.u ], [ %i.dw, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit ], [ %.sroa.10.2, %bb.at ], [ %.sroa.10.2, %bb.au ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.0.i97169, %bb.ae ], [ %i.dk, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.0.0.i160, %bb.x ], [ %i.dp, %bb.u ], [ %i.dv, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit ], [ %.sroa.0.2, %bb.at ], [ %.sroa.0.2, %bb.au ] ; 2 uses
  %.val67 = load i64, ptr %i.b, align 8, !range !10, !noundef !9 ; 2 uses
  %i.dy = icmp eq i64 %.val67, 0
  br i1 %i.dy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit, label %bb.y

bb.y:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit119
  %.val68 = load ptr, ptr %i.bf, align 8, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val68, i64 noundef %.val67, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit119, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val65 = load i64, ptr %i.c, align 8, !range !10, !noundef !9 ; 2 uses
  %i.dz = icmp eq i64 %.val65, 0
  br i1 %i.dz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit89, label %bb.z

bb.z:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit
  %.val66 = load ptr, ptr %i.bb, align 8, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val66, i64 noundef %.val65, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit89

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit89: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val63 = load i64, ptr %0, align 8, !range !10, !noundef !9 ; 2 uses
  %i.ea = icmp eq i64 %.val63, 0
  br i1 %i.ea, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit90, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit90.sink.split

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104.thread: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i102, %bb.ab, %._crit_edge, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104._RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104.threadthread-pre-split_crit_edge, %bb.aa
  %i.eb = phi i64 [ %.pr.pre228, %._crit_edge ], [ %.pr.pre228, %bb.aa ], [ %.pr.pre, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104._RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104.threadthread-pre-split_crit_edge ], [ %i.et, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i102 ], [ %i.ei, %bb.ab ] ; 3 uses
  %i.ec = icmp sgt i64 %i.eb, -1
  call void @llvm.assume(i1 %i.ec)
  %i.ed = icmp eq i64 %i.eb, 0
  br i1 %i.ed, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit112, label %bb.af

bb.aa:                                            ; preds = %._crit_edge
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.val72 = load ptr, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val73 = load ptr, ptr %i.ef, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !790)
  call void @llvm.experimental.noalias.scope.decl(metadata !791)
  %i.eg = icmp sgt i64 %.pr.pre228, -1
  call void @llvm.assume(i1 %i.eg)
  %.not14.i92 = icmp ult i64 %.pr.pre228, %i.az
  br i1 %.not14.i92, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104.thread, label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %bb.aa
  %i.eh = load ptr, ptr %i.bf, align 8, !alias.scope !790, !noalias !791, !nonnull !9 ; 3 uses
  br label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i102, %.lr.ph.i93
  %i.ei = phi i64 [ %.pr.pre228, %.lr.ph.i93 ], [ %i.et, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i102 ] ; 4 uses
  %..i.i94 = call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.ba, i64 %i.ei) ; 2 uses
  %i.ej = urem i64 %..i.i94, %i.az
  %i.ek = sub nuw nsw i64 %..i.i94, %i.ej         ; 5 uses
  %i.el = icmp samesign ult i64 %i.ek, %i.az
  br i1 %i.el, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.em = call { ptr, ptr } %.val72(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eh, i64 noundef range(i64 1, -9223372036854775808) %i.ek, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #25, !noalias !790, !inline_history !1 ; 2 uses
  %i.en = extractvalue { ptr, ptr } %i.em, 0      ; 2 uses
  %.not12.i95 = icmp eq ptr %i.en, null
  br i1 %.not12.i95, label %bb.ad, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104.thread164

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104.thread164: ; preds = %bb.ac
  %i.eo = extractvalue { ptr, ptr } %i.em, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eo) ]
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  %i.ep = load ptr, ptr %i.bb, align 8, !alias.scope !793, !noalias !790, !nonnull !9, !noundef !9
  %i.eq = load i64, ptr %i.bc, align 8, !alias.scope !793, !noalias !790, !noundef !9
  %i.er = call noundef ptr %.val73(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ep, i64 noundef %i.eq) #25, !noalias !794, !inline_history !2 ; 2 uses
  %.not.i15.i98 = icmp eq ptr %i.er, null
  br i1 %.not.i15.i98, label %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i100, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104

_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i100: ; preds = %bb.ad
  store i64 0, ptr %i.bc, align 8, !alias.scope !793, !noalias !790
  store i64 0, ptr %i.bg, align 8, !alias.scope !795, !noalias !796
  %.not.i.i.i.i.i101 = icmp eq i64 %i.ei, %i.ek
  br i1 %.not.i.i.i.i.i101, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit112, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i102

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i102: ; preds = %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i100
  %i.es = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek
  %i.et = sub nuw nsw i64 %i.ei, %i.ek            ; 5 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eh, ptr nonnull align 1 %i.es, i64 %i.et, i1 false), !noalias !797
  store i64 %i.et, ptr %i.bg, align 8, !alias.scope !790, !noalias !798
  %.not.i103 = icmp ult i64 %i.et, %i.az
  br i1 %.not.i103, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104.thread, label %bb.ab

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104: ; preds = %bb.ad
  %i.eu = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.er) #23, !noalias !790 ; 2 uses
  %i.ev = extractvalue { ptr, ptr } %i.eu, 0      ; 2 uses
  %i.ew = extractvalue { ptr, ptr } %i.eu, 1
  %.not53 = icmp eq ptr %i.ev, null
  br i1 %.not53, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104._RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104.threadthread-pre-split_crit_edge, label %bb.ae

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104._RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104.threadthread-pre-split_crit_edge: ; preds = %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104
  %.pr.pre = load i64, ptr %i.bg, align 8
  br label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104.thread

bb.ae:                                            ; preds = %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104.thread164, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104
  %.sroa.0.0.i97169 = phi ptr [ %i.en, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104.thread164 ], [ %i.ev, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104 ]
  %.sroa.4.0.i96168 = phi ptr [ %i.eo, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104.thread164 ], [ %i.ew, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i96168) ]
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit119

bb.af:                                            ; preds = %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ex = load ptr, ptr %i.bf, align 8, !nonnull !9, !noundef !9
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ez = load ptr, ptr %i.ey, align 8, !invariant.load !9, !nonnull !9
  call void %i.ez(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ex, i64 noundef %i.eb) #25
  %i.fa = load i64, ptr %i.a, align 8, !range !11, !noundef !9 ; 5 uses
  %.not54 = icmp eq i64 %i.fa, -1                 ; 3 uses
  br i1 %.not54, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit112: ; preds = %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i100, %bb.ao, %bb.an, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit104.thread
  %.val61 = load i64, ptr %i.b, align 8, !range !10, !noundef !9 ; 2 uses
  %i.fb = icmp eq i64 %.val61, 0
  br i1 %i.fb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit105, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit112
  %.val62 = load ptr, ptr %i.bf, align 8, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val62, i64 noundef %.val61, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit105

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit105: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit112, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val59 = load i64, ptr %i.c, align 8, !range !10, !noundef !9 ; 2 uses
  %i.fc = icmp eq i64 %.val59, 0
  br i1 %i.fc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit106, label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit105
  %.val60 = load ptr, ptr %i.bb, align 8, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val60, i64 noundef %.val59, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit106

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit106: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit105, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load i64, ptr %0, align 8, !range !10, !noundef !9 ; 2 uses
  %i.fd = icmp eq i64 %.val, 0
  br i1 %i.fd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit90, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit90.sink.split

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.af
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4140.0.copyload = load ptr, ptr %.sroa.4140.0..sroa_idx, align 8
  %.sroa.5141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5141.0.copyload = load i64, ptr %.sroa.5141.0..sroa_idx, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ff = load i8, ptr %i.fe, align 8, !range !18, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fg = trunc nuw i8 %i.ff to i1
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit
  %.sroa.13.0 = phi i64 [ undef, %bb.ai ], [ %.sroa.5141.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit ]
  %.sroa.9.0 = phi ptr [ undef, %bb.ai ], [ %.sroa.4140.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit ] ; 5 uses
  %.sroa.046.0 = phi i1 [ false, %bb.ai ], [ %i.fg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit ]
  %i.fh = load ptr, ptr %i.bf, align 8, !nonnull !9
  %i.fi = load i64, ptr %i.bg, align 8
  %.sroa.324.0 = select i1 %.not54, i64 %i.fi, i64 %.sroa.13.0
  %.sroa.023.0 = select i1 %.not54, ptr %i.fh, ptr %.sroa.9.0
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !invariant.load !9, !nonnull !9
  %i.fl = call { ptr, ptr } %i.fk(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.023.0, i64 noundef %.sroa.324.0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #25 ; 2 uses
  %i.fm = extractvalue { ptr, ptr } %i.fl, 0      ; 2 uses
  %.not56 = icmp eq ptr %i.fm, null
  br i1 %.not56, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fn = extractvalue { ptr, ptr } %i.fl, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fn) ]
  br label %bb.at

bb.al:                                            ; preds = %bb.aj
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val70 = load ptr, ptr %i.fo, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  %i.fp = load ptr, ptr %i.bb, align 8, !alias.scope !799, !nonnull !9, !noundef !9
  %i.fq = load i64, ptr %i.bc, align 8, !alias.scope !799, !noundef !9
  %i.fr = call noundef ptr %.val70(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fp, i64 noundef %i.fq) #25, !noalias !799, !inline_history !4 ; 2 uses
  %.not.i108 = icmp eq ptr %i.fr, null
  br i1 %.not.i108, label %bb.am, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit109

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit109: ; preds = %bb.al
  %i.fs = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.fr) #23 ; 2 uses
  %i.ft = extractvalue { ptr, ptr } %i.fs, 0
  %i.fu = extractvalue { ptr, ptr } %i.fs, 1
  br label %bb.at

bb.am:                                            ; preds = %bb.al
  store i64 0, ptr %i.bc, align 8, !alias.scope !799
  br i1 %.sroa.046.0, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fv = icmp sgt i64 %i.fa, 0
  br i1 %i.fv, label %bb.ao, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit112

bb.ao:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit112

bb.ap:                                            ; preds = %bb.am
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !800
  %i.fw = call noundef dereferenceable_or_null(20) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 20, i64 noundef range(i64 1, 9) 1) #23, !noalias !800 ; 3 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 20) #26
  unreachable

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.fw, ptr noundef nonnull align 1 dereferenceable(20) @95, i64 20, i1 false)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !801
  %i.fy = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #23, !noalias !801 ; 6 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %bb.as, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit116, !prof !24

bb.as:                                            ; preds = %bb.ar
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #26, !noalias !801
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit116: ; preds = %bb.ar
  store i64 20, ptr %i.fy, align 8
  %.sroa.4131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr %i.fw, ptr %.sroa.4131.0..sroa_idx, align 8
  %.sroa.5132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store i64 20, ptr %.sroa.5132.0..sroa_idx, align 8
  %.sroa.6133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  store i32 1, ptr %.sroa.6133.0..sroa_idx, align 8
  br label %bb.at

bb.at:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit116, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit109, %bb.ak
  %.sroa.10.2 = phi ptr [ %i.fn, %bb.ak ], [ %i.fu, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit109 ], [ @27, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit116 ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %i.fm, %bb.ak ], [ %i.ft, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit109 ], [ %i.fy, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit116 ] ; 2 uses
  %i.ga = icmp sgt i64 %i.fa, 0
  br i1 %i.ga, label %bb.au, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit119

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit119

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit90.sink.split: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit106, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit89
  %.val.sink = phi i64 [ %.val63, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit89 ], [ %.val, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit106 ]
  %.sroa.10.3.ph = phi ptr [ %.sroa.10.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit89 ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit106 ]
  %.sroa.0.3.ph = phi ptr [ %.sroa.0.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit89 ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit106 ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef %.val.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit90

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit90: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit90.sink.split, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit106, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit89
  %.sroa.10.3 = phi ptr [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit106 ], [ %.sroa.10.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit89 ], [ %.sroa.10.3.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit90.sink.split ]
  %.sroa.0.3 = phi ptr [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit106 ], [ %.sroa.0.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit89 ], [ %.sroa.0.3.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit90.sink.split ]
  %i.gb = insertvalue { ptr, ptr } poison, ptr %.sroa.0.3, 0
  %i.gc = insertvalue { ptr, ptr } %i.gb, ptr %.sroa.10.3, 1
  ret { ptr, ptr } %i.gc
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18fast_decode_stream(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(136) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %5, i1 noundef zeroext %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 14 uses
  %i.f = alloca [24 x i8], align 8                ; 14 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [256 x i8], align 1               ; 14 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !9, !nonnull !9
  %i.k = tail call { ptr, i64 } %i.j(ptr noundef nonnull %4) #25 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.h, i8 0, i64 256, i1 false), !alias.scope !875, !noalias !876
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = icmp samesign eq i64 %i.m, 0
  br i1 %i.o, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15alphabet_lookup.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %i.m, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.0.02.i.prol = phi ptr [ %i.r, %.lr.ph.i.prol ], [ %i.l, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.p = load i8, ptr %.sroa.0.02.i.prol, align 1, !alias.scope !876, !noalias !875, !noundef !9
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.prol, i64 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.q
  store i8 1, ptr %i.s, align 1, !alias.scope !875, !noalias !876
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !805

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.0.02.i.unr = phi ptr [ %i.l, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol ]
  %i.t = icmp ult i64 %i.m, 8
  br i1 %i.t, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15alphabet_lookup.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.02.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %.sroa.0.02.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.u = load i8, ptr %.sroa.0.02.i, align 1, !alias.scope !876, !noalias !875, !noundef !9
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.v
  store i8 1, ptr %i.x, align 1, !alias.scope !875, !noalias !876
  %i.y = load i8, ptr %i.w, align 1, !alias.scope !876, !noalias !875, !noundef !9
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.z
  store i8 1, ptr %i.ab, align 1, !alias.scope !875, !noalias !876
  %i.ac = load i8, ptr %i.aa, align 1, !alias.scope !876, !noalias !875, !noundef !9
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ad
  store i8 1, ptr %i.af, align 1, !alias.scope !875, !noalias !876
  %i.ag = load i8, ptr %i.ae, align 1, !alias.scope !876, !noalias !875, !noundef !9
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ah
  store i8 1, ptr %i.aj, align 1, !alias.scope !875, !noalias !876
  %i.ak = load i8, ptr %i.ai, align 1, !alias.scope !876, !noalias !875, !noundef !9
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 5
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.al
  store i8 1, ptr %i.an, align 1, !alias.scope !875, !noalias !876
  %i.ao = load i8, ptr %i.am, align 1, !alias.scope !876, !noalias !875, !noundef !9
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 6
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ap
  store i8 1, ptr %i.ar, align 1, !alias.scope !875, !noalias !876
  %i.as = load i8, ptr %i.aq, align 1, !alias.scope !876, !noalias !875, !noundef !9
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 7
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.at
  store i8 1, ptr %i.av, align 1, !alias.scope !875, !noalias !876
  %i.aw = load i8, ptr %i.au, align 1, !alias.scope !876, !noalias !875, !noundef !9
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ax
  store i8 1, ptr %i.az, align 1, !alias.scope !875, !noalias !876
  %i.ba = icmp eq ptr %i.ay, %i.n
  br i1 %i.ba, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15alphabet_lookup.exit, label %.lr.ph.i

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15alphabet_lookup.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !9, !nonnull !9
  %i.bd = tail call noundef i64 %i.bc(ptr noundef nonnull %4) #25 ; 14 uses
  %i.be = shl i64 %i.bd, 10                       ; 18 uses
  %.not = icmp eq i64 %i.be, 0
  br i1 %.not, label %7, label %8, !prof !21

7:                                                ; preds = %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15alphabet_lookup.exit
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #24
  unreachable

8:                                                ; preds = %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15alphabet_lookup.exit
  %.not73 = icmp eq i64 %i.bd, 0
  br i1 %.not73, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %8
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #24
  unreachable

bb.c:                                             ; preds = %8
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !9, !nonnull !9
  %i.bh = tail call noundef zeroext i1 %i.bg(ptr noundef nonnull %4) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.not.i = icmp slt i64 %i.be, 0
  br i1 %.not.i, label %bb.d, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i, !prof !25

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !877
  %i.bi = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.be, i64 noundef range(i64 1, 9) 1) #23, !noalias !877 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4170.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4170.0.ph, i64 %i.be) #26
  unreachable

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  store i64 %i.be, ptr %i.g, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 12 uses
  store ptr %i.bi, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 20 uses
  store i64 0, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 9 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 13 uses
  store i64 0, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !9, !nonnull !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void %i.bp(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noundef nonnull %0) #25
  %i.bq = load ptr, ptr %i.e, align 8, !noundef !9 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %._crit_edge281, label %.lr.ph280

.lr.ph280:                                        ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.val93 = load ptr, ptr %i.bt, align 8          ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.val95 = load ptr, ptr %i.bu, align 8          ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !9 ; 2 uses
  br i1 %i.bh, label %.lr.ph280.split.us, label %.lr.ph280.split

.lr.ph280.split.us:                               ; preds = %.lr.ph280, %._crit_edge.split.us.us
  %i.bx = phi ptr [ %i.dc, %._crit_edge.split.us.us ], [ %i.bq, %.lr.ph280 ] ; 2 uses
  %i.by = load i64, ptr %i.bs, align 8, !noundef !9 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %.split283.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph280.split.us
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.by
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.backedge.us.us
  %.sroa.07.0275.us.us = phi ptr [ %i.cb, %.backedge.us.us ], [ %i.bx, %.lr.ph.us.preheader ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.07.0275.us.us, i64 1 ; 2 uses
  %i.cc = load i8, ptr %.sroa.07.0275.us.us, align 1, !noundef !9 ; 3 uses
  switch i8 %i.cc, label %bb.f [
    i8 10, label %.backedge.us.us
    i8 13, label %.backedge.us.us
  ]

bb.f:                                             ; preds = %.lr.ph.us
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !range !18, !noundef !9
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %6, label %.backedge.us.us, label %.split.us

bb.h:                                             ; preds = %bb.f
  %i.ch = load i64, ptr %i.bl, align 8, !alias.scope !878, !noundef !9 ; 3 uses
  %i.ci = load i64, ptr %i.g, align 8, !range !10, !alias.scope !878, !noundef !9
  %i.cj = icmp eq i64 %i.ch, %i.ci
  br i1 %i.cj, label %bb.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit.us.us

bb.i:                                             ; preds = %bb.h
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #22
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit.us.us

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit.us.us: ; preds = %bb.i, %bb.h
  %i.ck = load ptr, ptr %i.bk, align 8, !alias.scope !878, !nonnull !9, !noundef !9
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ch
  store i8 %i.cc, ptr %i.cl, align 1
  %i.cm = add nsw i64 %i.ch, 1                    ; 3 uses
  store i64 %i.cm, ptr %i.bl, align 8, !alias.scope !878
  call void @llvm.experimental.noalias.scope.decl(metadata !879)
  call void @llvm.experimental.noalias.scope.decl(metadata !880)
  %.not14.i147.us.us = icmp ult i64 %i.cm, %i.bd
  br i1 %.not14.i147.us.us, label %.backedge.us.us, label %.lr.ph.i148.us.us

.lr.ph.i148.us.us:                                ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit.us.us
  %i.cn = load ptr, ptr %i.bk, align 8, !alias.scope !879, !noalias !880, !nonnull !9 ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i157.us.us, %.lr.ph.i148.us.us
  %i.co = phi i64 [ %i.cm, %.lr.ph.i148.us.us ], [ %i.cy, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i157.us.us ] ; 3 uses
  %..i.i149.us.us = call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.be, i64 %i.co) ; 2 uses
  %i.cp = urem i64 %..i.i149.us.us, %i.bd
  %i.cq = sub nuw nsw i64 %..i.i149.us.us, %i.cp  ; 5 uses
  %i.cr = icmp samesign ult i64 %i.cq, %i.bd
  br i1 %i.cr, label %.backedge.us.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cs = call { ptr, ptr } %.val93(ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cn, i64 noundef range(i64 1, -9223372036854775808) %i.cq, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #25, !noalias !879, !inline_history !1 ; 2 uses
  %i.ct = extractvalue { ptr, ptr } %i.cs, 0      ; 2 uses
  %.not12.i150.us.us = icmp eq ptr %i.ct, null
  br i1 %.not12.i150.us.us, label %bb.l, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit159.thread230

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  %i.cu = load ptr, ptr %i.bm, align 8, !alias.scope !882, !noalias !879, !nonnull !9, !noundef !9
  %i.cv = load i64, ptr %i.bn, align 8, !alias.scope !882, !noalias !879, !noundef !9
  %i.cw = call noundef ptr %.val95(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cu, i64 noundef %i.cv) #25, !noalias !883, !inline_history !2 ; 2 uses
  %.not.i15.i153.us.us = icmp eq ptr %i.cw, null
  br i1 %.not.i15.i153.us.us, label %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i155.us.us, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit159.us.us

_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i155.us.us: ; preds = %bb.l
  store i64 0, ptr %i.bn, align 8, !alias.scope !882, !noalias !879
  store i64 0, ptr %i.bl, align 8, !alias.scope !884, !noalias !885
  %.not.i.i.i.i.i156.us.us = icmp eq i64 %i.co, %i.cq
  br i1 %.not.i.i.i.i.i156.us.us, label %.backedge.us.us, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i157.us.us

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i157.us.us: ; preds = %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i155.us.us
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cq
  %i.cy = sub nuw nsw i64 %i.co, %i.cq            ; 4 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cn, ptr nonnull align 1 %i.cx, i64 %i.cy, i1 false), !noalias !886
  store i64 %i.cy, ptr %i.bl, align 8, !alias.scope !879, !noalias !887
  %.not.i158.us.us = icmp ult i64 %i.cy, %i.bd
  br i1 %.not.i158.us.us, label %.backedge.us.us, label %bb.j

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit159.us.us: ; preds = %bb.l
  %i.cz = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.cw) #23, !noalias !879 ; 2 uses
  %i.da = extractvalue { ptr, ptr } %i.cz, 0      ; 2 uses
  %.not80.us.us = icmp eq ptr %i.da, null
  br i1 %.not80.us.us, label %.backedge.us.us, label %.loopexit

.backedge.us.us:                                  ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i157.us.us, %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i155.us.us, %bb.j, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit.us.us, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit159.us.us, %.lr.ph.us, %.lr.ph.us, %bb.g
  %i.db = icmp eq ptr %i.cb, %i.ca
  br i1 %i.db, label %._crit_edge.split.us.us, label %.lr.ph.us

._crit_edge.split.us.us:                          ; preds = %.backedge.us.us
  call void %i.bw(ptr noundef nonnull %0, i64 noundef %i.by) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void %i.bp(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noundef nonnull %0) #25
  %i.dc = load ptr, ptr %i.e, align 8, !noundef !9 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %._crit_edge281, label %.lr.ph280.split.us

._crit_edge281:                                   ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %bb.e
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !9, !noundef !9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.df, ptr %i.c, align 8
  call void @_RNvNtCscxmO3cvmuC8_9uu_base3211base_common17format_read_error(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) #23
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !888
  %i.dg = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #23, !noalias !888 ; 4 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.m, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !24

bb.m:                                             ; preds = %._crit_edge281
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #26, !noalias !888
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %._crit_edge281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.4173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store i32 1, ptr %.sroa.4173.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !889
  %i.di = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.dj = and i64 %i.di, 3
  switch i64 %i.dj, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit
    i64 3, label %bb.n
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit
    i64 1, label %bb.o
  ], !prof !15

default.unreachable:                              ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  unreachable

bb.n:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %i.dk = icmp ult ptr %i.df, inttoptr (i64 188978561024 to ptr)
  %i.dl = and i64 %i.di, 1095216660480
  %i.dm = icmp ne i64 %i.dl, 1095216660480
  call void @llvm.assume(i1 %i.dk)
  call void @llvm.assume(i1 %i.dm)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit

bb.o:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %i.dn = getelementptr i8, ptr %i.df, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dn) ]
end_hunk_2
begin_hunk_3_@_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18fast_decode_stream:bb.a
  store ptr %i.dn, ptr %i.do, align 8, !alias.scope !890, !noalias !889
  store i8 3, ptr %i.a, align 8, !alias.scope !890, !noalias !889
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.do) #23, !noalias !889
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit122

.lr.ph280.split:                                  ; preds = %.lr.ph280, %._crit_edge.split
  %i.dp = phi ptr [ %i.fs, %._crit_edge.split ], [ %i.bq, %.lr.ph280 ] ; 2 uses
  %i.dq = load i64, ptr %i.bs, align 8, !noundef !9 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %.split283.us, label %.lr.ph.preheader

.split283.us:                                     ; preds = %.lr.ph280.split, %.lr.ph280.split.us
  %.pr.pre334 = load i64, ptr %i.bl, align 8      ; 5 uses
  br i1 %i.bh, label %bb.p, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.thread

.lr.ph.preheader:                                 ; preds = %.lr.ph280.split
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dq
  br label %.lr.ph

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.thread: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i, %bb.q, %.split283.us, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit._RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.threadthread-pre-split_crit_edge, %bb.p
  %i.dt = phi i64 [ %.pr.pre334, %.split283.us ], [ %.pr.pre334, %bb.p ], [ %.pr.pre, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit._RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.threadthread-pre-split_crit_edge ], [ %i.ej, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i ], [ %i.dy, %bb.q ] ; 3 uses
  %i.du = icmp sgt i64 %i.dt, -1
  call void @llvm.assume(i1 %i.du)
  %i.dv = icmp eq i64 %i.dt, 0
  br i1 %i.dv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit116, label %bb.u

bb.p:                                             ; preds = %.split283.us
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  %i.dw = icmp sgt i64 %.pr.pre334, -1
  call void @llvm.assume(i1 %i.dw)
  %.not14.i = icmp ult i64 %.pr.pre334, %i.bd
  br i1 %.not14.i, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.thread, label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %bb.p
  %i.dx = load ptr, ptr %i.bk, align 8, !alias.scope !891, !noalias !892, !nonnull !9 ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i, %.lr.ph.i110
  %i.dy = phi i64 [ %.pr.pre334, %.lr.ph.i110 ], [ %i.ej, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i ] ; 4 uses
  %..i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.be, i64 %i.dy) ; 2 uses
  %i.dz = urem i64 %..i.i, %i.bd
  %i.ea = sub nuw nsw i64 %..i.i, %i.dz           ; 5 uses
  %i.eb = icmp samesign ult i64 %i.ea, %i.bd
  br i1 %i.eb, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ec = call { ptr, ptr } %.val93(ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dx, i64 noundef range(i64 1, -9223372036854775808) %i.ea, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #25, !noalias !891, !inline_history !1 ; 2 uses
  %i.ed = extractvalue { ptr, ptr } %i.ec, 0      ; 2 uses
  %.not12.i = icmp eq ptr %i.ed, null
  br i1 %.not12.i, label %bb.s, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.thread202

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.thread202: ; preds = %bb.r
  %i.ee = extractvalue { ptr, ptr } %i.ec, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ee) ]
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  %i.ef = load ptr, ptr %i.bm, align 8, !alias.scope !894, !noalias !891, !nonnull !9, !noundef !9
  %i.eg = load i64, ptr %i.bn, align 8, !alias.scope !894, !noalias !891, !noundef !9
  %i.eh = call noundef ptr %.val95(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ef, i64 noundef %i.eg) #25, !noalias !895, !inline_history !2 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.eh, null
  br i1 %.not.i15.i, label %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit

_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i: ; preds = %bb.s
  store i64 0, ptr %i.bn, align 8, !alias.scope !894, !noalias !891
  store i64 0, ptr %i.bl, align 8, !alias.scope !896, !noalias !897
  %.not.i.i.i.i.i = icmp eq i64 %i.dy, %i.ea
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit116, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i: ; preds = %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ea
  %i.ej = sub nuw nsw i64 %i.dy, %i.ea            ; 5 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr nonnull align 1 %i.ei, i64 %i.ej, i1 false), !noalias !898
  store i64 %i.ej, ptr %i.bl, align 8, !alias.scope !891, !noalias !899
  %.not.i111 = icmp ult i64 %i.ej, %i.bd
  br i1 %.not.i111, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.thread, label %bb.q

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit: ; preds = %bb.s
  %i.ek = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.eh) #23, !noalias !891 ; 2 uses
  %i.el = extractvalue { ptr, ptr } %i.ek, 0      ; 2 uses
  %i.em = extractvalue { ptr, ptr } %i.ek, 1
  %.not81 = icmp eq ptr %i.el, null
  br i1 %.not81, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit._RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.threadthread-pre-split_crit_edge, label %bb.t

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit._RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.threadthread-pre-split_crit_edge: ; preds = %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit
  %.pr.pre = load i64, ptr %i.bl, align 8
  br label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.thread

bb.t:                                             ; preds = %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.thread202, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit
  %.sroa.0.0.i207 = phi ptr [ %i.ed, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.thread202 ], [ %i.el, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit ]
  %.sroa.4.0.i206 = phi ptr [ %i.ee, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.thread202 ], [ %i.em, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i206) ]
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit122

bb.u:                                             ; preds = %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.en = load ptr, ptr %i.bk, align 8, !nonnull !9, !noundef !9
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ep = load ptr, ptr %i.eo, align 8, !invariant.load !9, !nonnull !9
  call void %i.ep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.en, i64 noundef %i.dt) #25
  %i.eq = load i64, ptr %i.d, align 8, !range !11, !noundef !9 ; 5 uses
  %.not82 = icmp eq i64 %i.eq, -1                 ; 3 uses
  br i1 %.not82, label %bb.w, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit116: ; preds = %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i, %bb.ac, %bb.ab, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit.thread
  %.val91 = load i64, ptr %i.f, align 8, !range !10, !noundef !9 ; 2 uses
  %i.er = icmp eq i64 %.val91, 0
  br i1 %i.er, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit116
  %.val92 = load ptr, ptr %i.bm, align 8, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val92, i64 noundef %.val91, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit116, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val89 = load i64, ptr %i.g, align 8, !range !10, !noundef !9 ; 2 uses
  %i.es = icmp eq i64 %.val89, 0
  br i1 %i.es, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit112, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit112.sink.split

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.u
  %.sroa.4192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4192.0.copyload = load ptr, ptr %.sroa.4192.0..sroa_idx, align 8
  %.sroa.5193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5193.0.copyload = load i64, ptr %.sroa.5193.0..sroa_idx, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.eu = load i8, ptr %i.et, align 8, !range !18, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ev = trunc nuw i8 %i.eu to i1
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit
  %.sroa.13.0 = phi i64 [ undef, %bb.w ], [ %.sroa.5193.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit ]
  %.sroa.9.0 = phi ptr [ undef, %bb.w ], [ %.sroa.4192.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit ] ; 5 uses
  %.sroa.068.0 = phi i1 [ false, %bb.w ], [ %i.ev, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit ]
  %i.ew = load ptr, ptr %i.bk, align 8, !nonnull !9
  %i.ex = load i64, ptr %i.bl, align 8
  %.sroa.346.0 = select i1 %.not82, i64 %i.ex, i64 %.sroa.13.0
  %.sroa.045.0 = select i1 %.not82, ptr %i.ew, ptr %.sroa.9.0
  %i.ey = call { ptr, ptr } %.val93(ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.045.0, i64 noundef %.sroa.346.0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #25 ; 2 uses
  %i.ez = extractvalue { ptr, ptr } %i.ey, 0      ; 2 uses
  %.not84 = icmp eq ptr %i.ez, null
  br i1 %.not84, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fa = extractvalue { ptr, ptr } %i.ey, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fa) ]
  br label %bb.ag

bb.z:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !900)
  %i.fb = load ptr, ptr %i.bm, align 8, !alias.scope !900, !nonnull !9, !noundef !9
  %i.fc = load i64, ptr %i.bn, align 8, !alias.scope !900, !noundef !9
  %i.fd = call noundef ptr %.val95(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fb, i64 noundef %i.fc) #25, !noalias !900, !inline_history !4 ; 2 uses
  %.not.i113 = icmp eq ptr %i.fd, null
  br i1 %.not.i113, label %bb.aa, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit: ; preds = %bb.z
  %i.fe = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.fd) #23 ; 2 uses
  %i.ff = extractvalue { ptr, ptr } %i.fe, 0
  %i.fg = extractvalue { ptr, ptr } %i.fe, 1
  br label %bb.ag

bb.aa:                                            ; preds = %bb.z
  store i64 0, ptr %i.bn, align 8, !alias.scope !900
  br i1 %.sroa.068.0, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fh = icmp sgt i64 %i.eq, 0
  br i1 %i.fh, label %bb.ac, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit116

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0, i64 noundef %i.eq, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit116

bb.ad:                                            ; preds = %bb.aa
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !901
  %i.fi = call noundef dereferenceable_or_null(20) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 20, i64 noundef range(i64 1, 9) 1) #23, !noalias !901 ; 3 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 20) #26
  unreachable

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.fi, ptr noundef nonnull align 1 dereferenceable(20) @95, i64 20, i1 false)
  %i.fk = call fastcc noundef nonnull align 8 ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 32) #25, !noalias !902 ; 5 uses
  store i64 20, ptr %i.fk, align 8
  %.sroa.4183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.fi, ptr %.sroa.4183.0..sroa_idx, align 8
  %.sroa.5184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store i64 20, ptr %.sroa.5184.0..sroa_idx, align 8
  %.sroa.6185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  store i32 1, ptr %.sroa.6185.0..sroa_idx, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit, %bb.y
  %.sroa.14.0 = phi ptr [ %i.fa, %bb.y ], [ %i.fg, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit ], [ @27, %bb.af ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.ez, %bb.y ], [ %i.ff, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit ], [ %i.fk, %bb.af ] ; 2 uses
  %i.fl = icmp sgt i64 %i.eq, 0
  br i1 %i.fl, label %bb.ah, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit122

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0, i64 noundef %i.eq, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit122

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit122: ; preds = %bb.ah, %bb.ag, %bb.bd, %bb.ar, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit144, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit145, %bb.av, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit163, %bb.ba, %bb.t, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit
  %.sroa.14.1 = phi ptr [ @27, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit ], [ %.sroa.4.0.i206, %bb.t ], [ %i.hk, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit144 ], [ %.sroa.4.0.i151234, %bb.bd ], [ %i.hy, %bb.ba ], [ %i.ie, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit163 ], [ %.sroa.4.0.i130220, %bb.av ], [ @27, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit145 ], [ %i.he, %bb.ar ], [ %.sroa.14.0, %bb.ag ], [ %.sroa.14.0, %bb.ah ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %i.dg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit ], [ %.sroa.0.0.i207, %bb.t ], [ %i.hj, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit144 ], [ %.sroa.0.0.i152235, %bb.bd ], [ %i.hx, %bb.ba ], [ %i.id, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit163 ], [ %.sroa.0.0.i131221, %bb.av ], [ %i.hs, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit145 ], [ %i.hd, %bb.ar ], [ %.sroa.0.0, %bb.ag ], [ %.sroa.0.0, %bb.ah ] ; 2 uses
  %.val87 = load i64, ptr %i.f, align 8, !range !10, !noundef !9 ; 2 uses
  %i.fm = icmp eq i64 %.val87, 0
  br i1 %i.fm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit123, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit122
  %.val88 = load ptr, ptr %i.bm, align 8, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val88, i64 noundef %.val87, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit123

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit123: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit122, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val = load i64, ptr %i.g, align 8, !range !10, !noundef !9 ; 2 uses
  %i.fn = icmp eq i64 %.val, 0
  br i1 %i.fn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit112, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit112.sink.split

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit112.sink.split: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit123, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit
  %.val.sink = phi i64 [ %.val89, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit ], [ %.val, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit123 ]
  %.sroa.14.2.ph = phi ptr [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit ], [ %.sroa.14.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit123 ]
  %.sroa.0.2.ph = phi ptr [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit ], [ %.sroa.0.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit123 ]
  %.val86 = load ptr, ptr %i.bk, align 8, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val86, i64 noundef %.val.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit112

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit112: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit112.sink.split, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit123, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit
  %.sroa.14.2 = phi ptr [ %.sroa.14.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit123 ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit ], [ %.sroa.14.2.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit112.sink.split ]
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit123 ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit ], [ %.sroa.0.2.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit112.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.fo = insertvalue { ptr, ptr } poison, ptr %.sroa.0.2, 0
  %i.fp = insertvalue { ptr, ptr } %i.fo, ptr %.sroa.14.2, 1
  ret { ptr, ptr } %i.fp

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %.sroa.07.0275 = phi ptr [ %i.fq, %.backedge ], [ %i.dp, %.lr.ph.preheader ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.07.0275, i64 1 ; 2 uses
  %i.fr = load i8, ptr %.sroa.07.0275, align 1, !noundef !9 ; 3 uses
  switch i8 %i.fr, label %bb.aj [
    i8 10, label %.backedge
    i8 13, label %.backedge
  ]

._crit_edge.split:                                ; preds = %.backedge
  call void %i.bw(ptr noundef nonnull %0, i64 noundef %i.dq) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void %i.bp(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noundef nonnull %0) #25
  %i.fs = load ptr, ptr %i.e, align 8, !noundef !9 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %._crit_edge281, label %.lr.ph280.split

.backedge:                                        ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit, %bb.bc, %.lr.ph, %.lr.ph, %bb.ak
  %i.fu = icmp eq ptr %i.fq, %i.ds
  br i1 %i.fu, label %._crit_edge.split, label %.lr.ph

bb.aj:                                            ; preds = %.lr.ph
  %i.fv = zext i8 %i.fr to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !range !18, !noundef !9
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %6, label %.backedge, label %.split.us

bb.al:                                            ; preds = %bb.aj
  %i.fz = load i64, ptr %i.bl, align 8, !alias.scope !878, !noundef !9 ; 3 uses
  %i.ga = load i64, ptr %i.g, align 8, !range !10, !alias.scope !878, !noundef !9
  %i.gb = icmp eq i64 %i.fz, %i.ga
  br i1 %i.gb, label %bb.am, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit

bb.am:                                            ; preds = %bb.al
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #22
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.al, %bb.am
  %i.gc = load ptr, ptr %i.bk, align 8, !alias.scope !878, !nonnull !9, !noundef !9
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.fz
  store i8 %i.fr, ptr %i.gd, align 1
  %i.ge = add nsw i64 %i.fz, 1                    ; 2 uses
  store i64 %i.ge, ptr %i.bl, align 8, !alias.scope !878
  %i.gf = icmp eq i64 %i.ge, %i.be
  br i1 %i.gf, label %bb.az, label %.backedge

.split.us:                                        ; preds = %bb.ak, %bb.g
  br i1 %i.bh, label %bb.an, label %.preheader

.preheader:                                       ; preds = %.split.us
  %i.gg = load i64, ptr %i.bl, align 8, !noundef !9 ; 2 uses
  %i.gh = icmp sgt i64 %i.gg, -1
  call void @llvm.assume(i1 %i.gh)
  %.not74287 = icmp ult i64 %i.gg, %i.be
  br i1 %.not74287, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit138.thread, label %.lr.ph288

bb.an:                                            ; preds = %.split.us
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  call void @llvm.experimental.noalias.scope.decl(metadata !904)
  %.promoted.i125 = load i64, ptr %i.bl, align 8, !alias.scope !903, !noalias !904 ; 3 uses
  %i.gi = icmp sgt i64 %.promoted.i125, -1
  call void @llvm.assume(i1 %i.gi)
  %.not14.i126 = icmp ult i64 %.promoted.i125, %i.bd
  br i1 %.not14.i126, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit138.thread, label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %bb.an
  %i.gj = load ptr, ptr %i.bk, align 8, !alias.scope !903, !noalias !904, !nonnull !9 ; 3 uses
  br label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i136, %.lr.ph.i127
  %i.gk = phi i64 [ %.promoted.i125, %.lr.ph.i127 ], [ %i.gv, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i136 ] ; 3 uses
  %..i.i128 = call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.be, i64 %i.gk) ; 2 uses
  %i.gl = urem i64 %..i.i128, %i.bd
  %i.gm = sub nuw nsw i64 %..i.i128, %i.gl        ; 5 uses
  %i.gn = icmp samesign ult i64 %i.gm, %i.bd
  br i1 %i.gn, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit138.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.go = call { ptr, ptr } %.val93(ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gj, i64 noundef range(i64 1, -9223372036854775808) %i.gm, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #25, !noalias !903, !inline_history !1 ; 2 uses
  %i.gp = extractvalue { ptr, ptr } %i.go, 0      ; 2 uses
  %.not12.i129 = icmp eq ptr %i.gp, null
  br i1 %.not12.i129, label %bb.aq, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit138.thread216

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit138.thread216: ; preds = %bb.ap
  %i.gq = extractvalue { ptr, ptr } %i.go, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gq) ]
  br label %bb.av

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.gr = load ptr, ptr %i.bm, align 8, !alias.scope !906, !noalias !903, !nonnull !9, !noundef !9
  %i.gs = load i64, ptr %i.bn, align 8, !alias.scope !906, !noalias !903, !noundef !9
  %i.gt = call noundef ptr %.val95(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gr, i64 noundef %i.gs) #25, !noalias !907, !inline_history !2 ; 2 uses
  %.not.i15.i132 = icmp eq ptr %i.gt, null
  br i1 %.not.i15.i132, label %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i134, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit138

_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i134: ; preds = %bb.aq
  store i64 0, ptr %i.bn, align 8, !alias.scope !906, !noalias !903
  store i64 0, ptr %i.bl, align 8, !alias.scope !908, !noalias !909
  %.not.i.i.i.i.i135 = icmp eq i64 %i.gk, %i.gm
  br i1 %.not.i.i.i.i.i135, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit138.thread, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i136

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i136: ; preds = %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i134
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gm
  %i.gv = sub nuw nsw i64 %i.gk, %i.gm            ; 4 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gj, ptr nonnull align 1 %i.gu, i64 %i.gv, i1 false), !noalias !910
  store i64 %i.gv, ptr %i.bl, align 8, !alias.scope !903, !noalias !911
  %.not.i137 = icmp ult i64 %i.gv, %i.bd
  br i1 %.not.i137, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit138.thread, label %bb.ao

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit138: ; preds = %bb.aq
  %i.gw = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.gt) #23, !noalias !903 ; 2 uses
  %i.gx = extractvalue { ptr, ptr } %i.gw, 0      ; 2 uses
  %i.gy = extractvalue { ptr, ptr } %i.gw, 1
  %.not77 = icmp eq ptr %i.gx, null
  br i1 %.not77, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit138.thread, label %bb.av

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit138.thread: ; preds = %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit, %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i134, %bb.ao, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i136, %.preheader, %bb.an, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit138
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !912
  %i.gz = call noundef dereferenceable_or_null(20) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 20, i64 noundef range(i64 1, 9) 1) #23, !noalias !912 ; 3 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %bb.aw, label %bb.ax

.lr.ph288:                                        ; preds = %.preheader, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit
  %i.hb = load ptr, ptr %i.bk, align 8, !nonnull !9, !noundef !9
  %i.hc = call { ptr, ptr } %.val93(ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hb, i64 noundef range(i64 1, -9223372036854775808) %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #25, !inline_history !3 ; 2 uses
  %i.hd = extractvalue { ptr, ptr } %i.hc, 0      ; 2 uses
  %.not75 = icmp eq ptr %i.hd, null
  br i1 %.not75, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph288
  %i.he = extractvalue { ptr, ptr } %i.hc, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.he) ]
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit122

bb.as:                                            ; preds = %.lr.ph288
  call void @llvm.experimental.noalias.scope.decl(metadata !913)
  %i.hf = load ptr, ptr %i.bm, align 8, !alias.scope !913, !nonnull !9, !noundef !9
  %i.hg = load i64, ptr %i.bn, align 8, !alias.scope !913, !noundef !9
  %i.hh = call noundef ptr %.val95(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hf, i64 noundef %i.hg) #25, !noalias !913, !inline_history !4 ; 2 uses
  %.not.i143 = icmp eq ptr %i.hh, null
  br i1 %.not.i143, label %bb.at, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit144

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit144: ; preds = %bb.as
  %i.hi = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.hh) #23 ; 2 uses
  %i.hj = extractvalue { ptr, ptr } %i.hi, 0
  %i.hk = extractvalue { ptr, ptr } %i.hi, 1
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit122

bb.at:                                            ; preds = %bb.as
  store i64 0, ptr %i.bn, align 8, !alias.scope !913
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  %i.hl = load i64, ptr %i.bl, align 8, !alias.scope !914, !noalias !915, !noundef !9 ; 5 uses
  %i.hm = icmp sgt i64 %i.hl, -1
  call void @llvm.assume(i1 %i.hm)
  %i.hn = icmp samesign ugt i64 %i.be, %i.hl
  br i1 %i.hn, label %bb.au, label %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit, !prof !21

bb.au:                                            ; preds = %bb.at
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 1, 0) %i.be, i64 noundef %i.hl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #24, !noalias !916
  unreachable

_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.at
  store i64 0, ptr %i.bl, align 8, !alias.scope !914, !noalias !915
  %.not.i.i.i.i = icmp eq i64 %i.hl, %i.be
  br i1 %.not.i.i.i.i, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit138.thread, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit: ; preds = %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit
  %i.ho = load ptr, ptr %i.bk, align 8, !alias.scope !914, !noalias !915, !nonnull !9, !noundef !9 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.be
  %i.hq = sub nuw nsw i64 %i.hl, %i.be            ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ho, ptr nonnull align 1 %i.hp, i64 %i.hq, i1 false), !noalias !917
  store i64 %i.hq, ptr %i.bl, align 8, !noalias !917
  %i.hr = icmp samesign ult i64 %i.hq, %i.be
  br i1 %i.hr, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit138.thread, label %.lr.ph288

bb.av:                                            ; preds = %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit138.thread216, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit138
  %.sroa.0.0.i131221 = phi ptr [ %i.gp, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit138.thread216 ], [ %i.gx, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit138 ]
  %.sroa.4.0.i130220 = phi ptr [ %i.gq, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit138.thread216 ], [ %i.gy, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit138 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i130220) ]
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit122

bb.aw:                                            ; preds = %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit138.thread
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 20) #26
  unreachable

bb.ax:                                            ; preds = %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit138.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.gz, ptr noundef nonnull align 1 dereferenceable(20) @95, i64 20, i1 false)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !918
  %i.hs = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #23, !noalias !918 ; 6 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %bb.ay, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit145, !prof !24

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #26, !noalias !918
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit145: ; preds = %bb.ax
  store i64 20, ptr %i.hs, align 8
  %.sroa.4176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store ptr %i.gz, ptr %.sroa.4176.0..sroa_idx, align 8
  %.sroa.5177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store i64 20, ptr %.sroa.5177.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  store i32 1, ptr %.sroa.6.0..sroa_idx, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit122

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit159.thread230: ; preds = %bb.k
  %i.hu = extractvalue { ptr, ptr } %i.cs, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hu) ]
  br label %bb.bd

bb.az:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit
  %i.hv = load ptr, ptr %i.bk, align 8, !nonnull !9, !noundef !9
  %i.hw = call { ptr, ptr } %.val93(ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hv, i64 noundef range(i64 1, -9223372036854775808) %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #25, !inline_history !3 ; 2 uses
  %i.hx = extractvalue { ptr, ptr } %i.hw, 0      ; 2 uses
  %.not78 = icmp eq ptr %i.hx, null
  br i1 %.not78, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hy = extractvalue { ptr, ptr } %i.hw, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hy) ]
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit122

bb.bb:                                            ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !919)
  %i.hz = load ptr, ptr %i.bm, align 8, !alias.scope !919, !nonnull !9, !noundef !9
  %i.ia = load i64, ptr %i.bn, align 8, !alias.scope !919, !noundef !9
  %i.ib = call noundef ptr %.val95(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hz, i64 noundef %i.ia) #25, !noalias !919, !inline_history !4 ; 2 uses
  %.not.i162 = icmp eq ptr %i.ib, null
  br i1 %.not.i162, label %bb.bc, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit163

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode15write_to_output.exit163: ; preds = %bb.bb
  %i.ic = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.ib) #23 ; 2 uses
  %i.id = extractvalue { ptr, ptr } %i.ic, 0
  %i.ie = extractvalue { ptr, ptr } %i.ic, 1
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit122

bb.bc:                                            ; preds = %bb.bb
  store i64 0, ptr %i.bn, align 8, !alias.scope !919
  store i64 0, ptr %i.bl, align 8
  br label %.backedge

.loopexit:                                        ; preds = %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit159.us.us
  %i.if = extractvalue { ptr, ptr } %i.cz, 1
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit159.thread230
  %.sroa.0.0.i152235 = phi ptr [ %i.ct, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit159.thread230 ], [ %i.da, %.loopexit ]
  %.sroa.4.0.i151234 = phi ptr [ %i.hu, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_decode18flush_ready_chunks.exit159.thread230 ], [ %i.if, %.loopexit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i151234) ]
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VechEEECscxmO3cvmuC8_9uu_base32.exit122
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode15write_to_output(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull %2, ptr nofree readonly captures(none) %.56.val, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !9
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !942)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !range !943, !alias.scope !941, !noalias !942, !noundef !9 ; 10 uses
  %i.d = tail call fastcc { ptr, i64 } @_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequehE15make_contiguousCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #23, !noalias !941 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 1        ; 2 uses
  %i.f = urem i64 %i.e, %i.c
  %i.g = sub nuw nsw i64 %i.e, %i.f               ; 2 uses
  %.not4.i = icmp ugt i64 %i.c, %i.g
  br i1 %.not4.i, label %.._crit_edge_crit_edge.i, label %.lr.ph.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre8.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !941, !noalias !942
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = extractvalue { ptr, i64 } %i.d, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre.i = load i64, ptr %i.i, align 8, !alias.scope !944, !noalias !942
  br label %bb.c

._crit_edge.i:                                    ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit.i, %.._crit_edge_crit_edge.i
  %i.k = phi i64 [ %.pre8.i, %.._crit_edge_crit_edge.i ], [ %i.af, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit.i ]
  %.sroa.01.0.lcssa.i = phi i64 [ 0, %.._crit_edge_crit_edge.i ], [ %i.s, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit.i ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !941, !noalias !942, !nonnull !9, !noundef !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = tail call noundef ptr %.56.val(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.k) #25, !noalias !942, !inline_history !927 ; 2 uses
  %.not16.i = icmp eq ptr %i.o, null
  br i1 %.not16.i, label %bb.e, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode22write_with_line_breaks.exit.thread4

bb.c:                                             ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit.i, %.lr.ph.i
  %i.p = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.af, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit.i ] ; 3 uses
  %.sroa.01.07.i = phi i64 [ 0, %.lr.ph.i ], [ %i.s, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit.i ]
  %.sroa.03.06.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.q, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit.i ] ; 2 uses
  %.sroa.5.05.i = phi i64 [ %i.g, %.lr.ph.i ], [ %i.r, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i, i64 %i.c
  %i.r = sub nuw i64 %.sroa.5.05.i, %i.c          ; 2 uses
  %i.s = add i64 %.sroa.01.07.i, %i.c             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945)
  %i.t = load i64, ptr %0, align 8, !range !10, !alias.scope !944, !noalias !942, !noundef !9
  %i.u = sub i64 %i.t, %i.p
  %i.v = icmp ugt i64 %i.c, %i.u
  br i1 %i.v, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit.i, !prof !21

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i.i: ; preds = %bb.c
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.p, i64 noundef %i.c, i64 noundef 1, i64 noundef 1) #23, !noalias !942
  %i.w = load i64, ptr %i.i, align 8, !alias.scope !946, !noalias !942, !noundef !9
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i.i, %bb.c
  %.sink15.i = phi i64 [ %i.w, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.x = icmp sgt i64 %.sink15.i, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = load ptr, ptr %i.j, align 8, !alias.scope !946, !noalias !942, !nonnull !9, !noundef !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sink15.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.03.06.i, i64 %i.c, i1 false), !noalias !947
  %i.aa = add i64 %.sink15.i, %i.c                ; 4 uses
  store i64 %i.aa, ptr %i.i, align 8, !alias.scope !946, !noalias !942
  %i.ab = load i64, ptr %0, align 8, !range !10, !alias.scope !948, !noalias !942, !noundef !9
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit.i

bb.d:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit.i
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #22, !noalias !942
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscxmO3cvmuC8_9uu_base32.exit.i: ; preds = %bb.d, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit.i
  %i.ad = load ptr, ptr %i.j, align 8, !alias.scope !948, !noalias !942, !nonnull !9, !noundef !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aa
  store i8 10, ptr %i.ae, align 1, !noalias !942
  %i.af = add i64 %i.aa, 1                        ; 3 uses
  store i64 %i.af, ptr %i.i, align 8, !alias.scope !948, !noalias !942
  %.not.i = icmp ugt i64 %i.c, %i.r
  br i1 %.not.i, label %._crit_edge.i, label %bb.c

bb.e:                                             ; preds = %._crit_edge.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !942, !noalias !941, !noundef !9 ; 4 uses
  %i.ai = icmp ugt i64 %.sroa.01.0.lcssa.i, %i.ah
  br i1 %i.ai, label %bb.f, label %_RINvNtNtCs6JMX4GRUq9U_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i, !prof !21

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.01.0.lcssa.i, i64 noundef %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #24, !noalias !949
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i: ; preds = %bb.e
  %i.aj = sub nuw i64 %i.ah, %.sroa.01.0.lcssa.i  ; 2 uses
  %i.ak = icmp eq i64 %i.ah, %.sroa.01.0.lcssa.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %i.ak, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.thread.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !942, !noalias !950, !noundef !9
  %i.an = add i64 %i.am, %.sroa.01.0.lcssa.i      ; 2 uses
  %i.ao = load i64, ptr %1, align 8, !range !10, !alias.scope !942, !noalias !950, !noundef !9 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.an, %i.ao
  %i.ap = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.ao
  %.sroa.0.0.i.i.i.i.i = sub nuw i64 %i.an, %i.ap
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.al, align 8, !alias.scope !942, !noalias !950
  store i64 %i.aj, ptr %i.ag, align 8, !alias.scope !942, !noalias !950
  br i1 %3, label %bb.h, label %bb.g

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.thread.i: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECscxmO3cvmuC8_9uu_base32.exit.i
  store i64 0, ptr %i.al, align 8, !alias.scope !942, !noalias !950
  store i64 %i.aj, ptr %i.ag, align 8, !alias.scope !942, !noalias !950
  br i1 %3, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode22write_with_line_breaks.exit.thread, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.thread.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i
  store i64 0, ptr %i.n, align 8, !alias.scope !941, !noalias !942
  br label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode22write_with_line_breaks.exit.thread

bb.h:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.i
  %i.aq = tail call fastcc { ptr, i64 } @_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequehE15make_contiguousCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #23 ; 2 uses
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0
  %i.as = extractvalue { ptr, i64 } %i.aq, 1
  %i.at = tail call noundef ptr %.56.val(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.as) #25, !noalias !942, !inline_history !927 ; 2 uses
  %.not17.i = icmp eq ptr %i.at, null
  br i1 %.not17.i, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode22write_with_line_breaks.exit, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode22write_with_line_breaks.exit.thread4

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode22write_with_line_breaks.exit: ; preds = %bb.h
  %i.au = tail call noundef ptr %.56.val(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 1) #25, !noalias !942, !inline_history !927 ; 2 uses
  %.not8 = icmp eq ptr %i.au, null
  br i1 %.not8, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode22write_with_line_breaks.exit.thread, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode22write_with_line_breaks.exit.thread4

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.av = tail call fastcc { ptr, i64 } @_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequehE15make_contiguousCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #23 ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.av, 0
  %i.ax = extractvalue { ptr, i64 } %i.av, 1
  %i.ay = tail call noundef ptr %.56.val(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef %i.ax) #25, !noalias !951, !inline_history !938 ; 2 uses
  %.not.i10 = icmp eq ptr %i.ay, null
  br i1 %.not.i10, label %bb.j, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode22write_with_line_breaks.exit.thread4

bb.j:                                             ; preds = %bb.i
  br i1 %3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !952, !noundef !9
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequehE8truncateCscxmO3cvmuC8_9uu_base32.exit.i, label %_RINvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB6_8VecDequehE12slice_rangesNtNtNtCs6JMX4GRUq9U_4core3ops5range9RangeFullECscxmO3cvmuC8_9uu_base32.exit.i.i

_RINvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB6_8VecDequehE12slice_rangesNtNtNtCs6JMX4GRUq9U_4core3ops5range9RangeFullECscxmO3cvmuC8_9uu_base32.exit.i.i: ; preds = %bb.k
  store i64 0, ptr %i.az, align 8, !alias.scope !952
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequehE8truncateCscxmO3cvmuC8_9uu_base32.exit.i

_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequehE8truncateCscxmO3cvmuC8_9uu_base32.exit.i: ; preds = %_RINvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB6_8VecDequehE12slice_rangesNtNtNtCs6JMX4GRUq9U_4core3ops5range9RangeFullECscxmO3cvmuC8_9uu_base32.exit.i.i, %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bc, align 8, !alias.scope !951
  br label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode22write_with_line_breaks.exit.thread

bb.l:                                             ; preds = %bb.j
  br i1 %4, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode22write_with_line_breaks.exit.thread, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode25write_without_line_breaks.exit

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode25write_without_line_breaks.exit: ; preds = %bb.l
  %i.bd = tail call noundef ptr %.56.val(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 1) #25, !noalias !951, !inline_history !938 ; 2 uses
  %.not7 = icmp eq ptr %i.bd, null
  br i1 %.not7, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode22write_with_line_breaks.exit.thread, label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode22write_with_line_breaks.exit.thread4

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode22write_with_line_breaks.exit.thread: ; preds = %bb.l, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequehE8truncateCscxmO3cvmuC8_9uu_base32.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque5drain5DrainhEECscxmO3cvmuC8_9uu_base32.exit.thread.i, %bb.g, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode25write_without_line_breaks.exit, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode22write_with_line_breaks.exit
  br label %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode22write_with_line_breaks.exit.thread4

_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode22write_with_line_breaks.exit.thread4: ; preds = %bb.i, %bb.h, %._crit_edge.i, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode25write_without_line_breaks.exit, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode22write_with_line_breaks.exit, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode22write_with_line_breaks.exit.thread
  %.sroa.0.0 = phi ptr [ %i.au, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode22write_with_line_breaks.exit ], [ null, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode22write_with_line_breaks.exit.thread ], [ %i.bd, %_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode25write_without_line_breaks.exit ], [ %i.o, %._crit_edge.i ], [ %i.at, %bb.h ], [ %i.ay, %bb.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_buffer(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %4, i64 noundef range(i64 0, 2) %5, i64 %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 16 uses
  %i.b = alloca [32 x i8], align 8                ; 11 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 18 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 3 uses
  store i64 %5, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store i64 %6, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !9, !nonnull !9
  %i.k = tail call noundef i64 %i.j(ptr noundef nonnull %3) #25
  %i.l = shl i64 %i.k, 10                         ; 5 uses
  store i64 %i.l, ptr %i.f, align 8
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.m = trunc nuw i64 %5 to i1                   ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %6, 0
  br i1 %i.n, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %i.e, align 8
  %.sroa.07.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.07.sroa.4.0..sroa_idx, align 8
  %.sroa.07.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.07.sroa.5.0..sroa_idx, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 76, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.x
  call fastcc void @_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10filter_map15filter_map_foldTjRhERShuNCNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_buffer0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1f_NCB1l_s_0E0E0B1r_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(96) %i.a, i64 noundef 0) #25, !noalias !957
  %i.p = ptrtoint ptr %i.o to i64
  %gepdiff = add nsw i64 %i.x, -1
  %.not.i.not.i.i.i9.i.i = icmp ult i64 %i.af, %gepdiff
  br i1 %.not.i.not.i.i.i9.i.i, label %.lr.ph.i.i, label %_RINvXs5_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7step_byINtB6_6StepByINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterhEEEINtB6_10StepByImplB14_E9spec_folduNCINvNtB8_10filter_map15filter_map_foldTjRhERShuNCNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_buffer0NCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callB3g_NCB3m_s_0E0E0EB3s_.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.q = phi i64 [ %i.t, %.lr.ph.i.i ], [ 1, %bb.f ] ; 2 uses
  %i.r = phi ptr [ %.pn.i, %.lr.ph.i.i ], [ %i.ae, %bb.f ]
  %.pn.i = getelementptr i8, ptr %i.r, i64 %i.l   ; 2 uses
  %storemerge.i.i.i.i11.i.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1
  %i.s = add i64 %i.q, %i.af
  %i.t = add i64 %i.q, %i.l
  call fastcc void @_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10filter_map15filter_map_foldTjRhERShuNCNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_buffer0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1f_NCB1l_s_0E0E0B1r_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(96) %i.a, i64 noundef %i.s) #25, !noalias !958
  %i.u = ptrtoint ptr %storemerge.i.i.i.i11.i.i to i64
  %i.v = sub nuw i64 %i.p, %i.u
  %.not.i.not.i.i.i.i.i = icmp ult i64 %i.af, %i.v
  br i1 %.not.i.not.i.i.i.i.i, label %.lr.ph.i.i, label %_RINvXs5_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7step_byINtB6_6StepByINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterhEEEINtB6_10StepByImplB14_E9spec_folduNCINvNtB8_10filter_map15filter_map_foldTjRhERShuNCNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_buffer0NCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callB3g_NCB3m_s_0E0E0EB3s_.exit

bb.g:                                             ; preds = %bb.i, %bb.h, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !9 ; 5 uses
  store i64 %i.x, ptr %i.d, align 8
  %i.y = icmp sgt i64 %i.x, -1
  tail call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.c, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.af = add i64 %i.l, -1                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %.sroa.413.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.f, ptr %i.ag, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %3, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %4, ptr %.sroa.529.0..sroa_idx, align 8
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.b, ptr %.sroa.630.0..sroa_idx, align 8
  %.sroa.731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.e, ptr %.sroa.731.0..sroa_idx, align 8
  %.sroa.832.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %1, ptr %.sroa.832.0..sroa_idx, align 8
  %.sroa.933.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %2, ptr %.sroa.933.0..sroa_idx, align 8
  %.sroa.1034.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.g, ptr %.sroa.1034.0..sroa_idx, align 8
  %i.ah = icmp samesign eq i64 %i.x, 0
  br i1 %i.ah, label %_RINvXs5_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7step_byINtB6_6StepByINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterhEEEINtB6_10StepByImplB14_E9spec_folduNCINvNtB8_10filter_map15filter_map_foldTjRhERShuNCNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_buffer0NCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callB3g_NCB3m_s_0E0E0EB3s_.exit, label %bb.f

_RINvXs5_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7step_byINtB6_6StepByINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterhEEEINtB6_10StepByImplB14_E9spec_folduNCINvNtB8_10filter_map15filter_map_foldTjRhERShuNCNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_buffer0NCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callB3g_NCB3m_s_0E0E0EB3s_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = call fastcc { ptr, i64 } @_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequehE15make_contiguousCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #23 ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0
  %i.ak = extractvalue { ptr, i64 } %i.ai, 1
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !9, !nonnull !9
  %i.an = call { ptr, ptr } %i.am(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #25 ; 2 uses
  %i.ao = extractvalue { ptr, ptr } %i.an, 0      ; 2 uses
  %.not35 = icmp eq ptr %i.ao, null
  br i1 %.not35, label %bb.k, label %bb.j

bb.h:                                             ; preds = %bb.d
  store i64 -1, ptr %i.e, align 8
  br label %bb.g

bb.i:                                             ; preds = %bb.d
  store i64 0, ptr %i.e, align 8
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %6, ptr %.sroa.42.0..sroa_idx, align 8
  br label %bb.g

bb.j:                                             ; preds = %_RINvXs5_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7step_byINtB6_6StepByINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterhEEEINtB6_10StepByImplB14_E9spec_folduNCINvNtB8_10filter_map15filter_map_foldTjRhERShuNCNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_buffer0NCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callB3g_NCB3m_s_0E0E0EB3s_.exit
  %i.ap = extractvalue { ptr, ptr } %i.an, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  br label %bb.q

bb.k:                                             ; preds = %_RINvXs5_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7step_byINtB6_6StepByINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterhEEEINtB6_10StepByImplB14_E9spec_folduNCINvNtB8_10filter_map15filter_map_foldTjRhERShuNCNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_buffer0NCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callB3g_NCB3m_s_0E0E0EB3s_.exit
  %i.aq = load i64, ptr %i.h, align 8
  %i.ar = icmp eq i64 %i.aq, 0
  %.sroa.026.0 = select i1 %i.m, i1 %i.ar, i1 false
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val40 = load ptr, ptr %i.as, align 8
  %i.at = call fastcc noundef ptr @_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode15write_to_output(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e, ptr noalias nofree noundef align 8 dereferenceable(32) %i.b, ptr noundef nonnull %1, ptr %.val40, i1 noundef zeroext true, i1 noundef zeroext %.sroa.026.0) #23 ; 2 uses
  %.not36 = icmp eq ptr %i.at, null
  br i1 %.not36, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.at) #23 ; 2 uses
  %i.av = extractvalue { ptr, ptr } %i.au, 0
  %i.aw = extractvalue { ptr, ptr } %i.au, 1
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %.val47 = load i64, ptr %i.b, align 8, !range !10, !noundef !9 ; 2 uses
  %i.ax = icmp eq i64 %.val47, 0
  br i1 %i.ax, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val48 = load ptr, ptr %i.ac, align 8, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val48, i64 noundef %.val47, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val45 = load i64, ptr %i.c, align 8, !range !10, !noundef !9 ; 2 uses
  %i.ay = icmp eq i64 %.val45, 0
  br i1 %i.ay, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit53, label %bb.o

bb.o:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit
  %.val46 = load ptr, ptr %i.aa, align 8, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val46, i64 noundef %.val45, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit53

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit53: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val51 = load i64, ptr %i.e, align 8, !range !11, !noundef !9 ; 2 uses
  %i.az = icmp sgt i64 %.val51, 0
  br i1 %i.az, label %bb.p, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit

bb.p:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit53
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val52 = load ptr, ptr %i.ba, align 8, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val52, i64 noundef %.val51, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit53, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val38 = load i64, ptr %0, align 8, !range !10, !noundef !9 ; 2 uses
  %i.bb = icmp eq i64 %.val38, 0
  br i1 %i.bb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit.sink.split

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit.sink.split: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit58
  %.val.sink = phi i64 [ %.val, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit58 ], [ %.val38, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit ]
  %.sroa.4.0.ph = phi ptr [ %.sroa.4.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit58 ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit58 ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit ]
  %.val37 = load ptr, ptr %i.ad, align 8, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val37, i64 noundef %.val.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit.sink.split, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit58, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit
  %.sroa.4.0 = phi ptr [ %.sroa.4.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit58 ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit ], [ %.sroa.4.0.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit.sink.split ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit58 ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit ], [ %.sroa.0.0.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit.sink.split ]
  %i.bc = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.bd = insertvalue { ptr, ptr } %i.bc, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.bd

bb.q:                                             ; preds = %bb.l, %bb.j
  %.sroa.4.1 = phi ptr [ %i.ap, %bb.j ], [ %i.aw, %bb.l ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %i.ao, %bb.j ], [ %i.av, %bb.l ] ; 2 uses
  %.val43 = load i64, ptr %i.b, align 8, !range !10, !noundef !9 ; 2 uses
  %i.be = icmp eq i64 %.val43, 0
  br i1 %i.be, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit54, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val44 = load ptr, ptr %i.ac, align 8, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val44, i64 noundef %.val43, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit54

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit54: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val41 = load i64, ptr %i.c, align 8, !range !10, !noundef !9 ; 2 uses
  %i.bf = icmp eq i64 %.val41, 0
  br i1 %i.bf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit55, label %bb.s

bb.s:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit54
  %.val42 = load ptr, ptr %i.aa, align 8, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val42, i64 noundef %.val41, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit55

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit55: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit54, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val49 = load i64, ptr %i.e, align 8, !range !11, !noundef !9 ; 2 uses
  %i.bg = icmp sgt i64 %.val49, 0
  br i1 %i.bg, label %bb.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit58

bb.t:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit55
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val50 = load ptr, ptr %i.bh, align 8, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val50, i64 noundef %.val49, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit58

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit58: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit55, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val = load i64, ptr %0, align 8, !range !10, !noundef !9 ; 2 uses
  %i.bi = icmp eq i64 %.val, 0
  br i1 %i.bi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit.sink.split
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_stream(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(136) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  %i.f = alloca [32 x i8], align 8                ; 14 uses
  %i.g = alloca [32 x i8], align 8                ; 17 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !9, !nonnull !9
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull %4) #25
  %i.k = shl i64 %i.j, 10                         ; 17 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.l = trunc nuw i64 %6 to i1                   ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %7, 0
  br i1 %i.m, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %i.g, align 8
  %.sroa.012.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.012.sroa.4.0..sroa_idx, align 8
  %.sroa.012.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.012.sroa.5.0..sroa_idx, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 76, ptr %.sroa.413.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.f, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.not.i = icmp slt i64 %i.k, 0
  br i1 %.not.i, label %bb.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i, !prof !25

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.f
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !976
  %i.p = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.k, i64 noundef range(i64 1, 9) 1) #23, !noalias !976 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.i, label %bb.j

bb.g:                                             ; preds = %bb.d
  store i64 -1, ptr %i.g, align 8
  br label %bb.f

bb.h:                                             ; preds = %bb.d
  store i64 0, ptr %i.g, align 8
  %.sroa.07.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.07.sroa.4.0..sroa_idx, align 8
  %.sroa.07.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.07.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %7, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.i:                                             ; preds = %bb.f, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4115.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.f ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4115.0.ph, i64 %i.k) #26
  unreachable

bb.j:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  store i64 %i.k, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 6 uses
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 6 uses
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !9, !nonnull !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void %i.u(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %0) #25
  %i.v = load ptr, ptr %i.d, align 8, !noundef !9 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.val89 = load ptr, ptr %i.y, align 8           ; 3 uses
  %i.z = icmp eq i64 %7, 0
  %.sroa.042.0 = select i1 %i.l, i1 %i.z, i1 false ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.val91 = load ptr, ptr %i.aa, align 8          ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !9
  br label %bb.n

._crit_edge:                                      ; preds = %bb.al, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !9, !noundef !9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ae, ptr %i.c, align 8
  call void @_RNvNtCscxmO3cvmuC8_9uu_base3211base_common17format_read_error(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) #23
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !977
  %i.af = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #23, !noalias !977 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !24

bb.k:                                             ; preds = %._crit_edge
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #26, !noalias !977
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i32 1, ptr %.sroa.4118.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !978
  %i.ah = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ai = and i64 %i.ah, 3
  switch i64 %i.ai, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit
    i64 3, label %bb.l
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit
    i64 1, label %bb.m
  ], !prof !15

default.unreachable:                              ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  unreachable

bb.l:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %i.aj = icmp ult ptr %i.ae, inttoptr (i64 188978561024 to ptr)
  %i.ak = and i64 %i.ah, 1095216660480
  %i.al = icmp ne i64 %i.ak, 1095216660480
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.assume(i1 %i.al)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit

bb.m:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %i.am = getelementptr i8, ptr %i.ae, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !alias.scope !979, !noalias !978
  store i8 3, ptr %i.a, align 8, !alias.scope !979, !noalias !978
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #23, !noalias !978
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

bb.n:                                             ; preds = %.lr.ph, %bb.al
  %i.ao = phi i64 [ 0, %.lr.ph ], [ %i.cw, %bb.al ] ; 2 uses
  %i.ap = phi ptr [ %i.p, %.lr.ph ], [ %i.cx, %bb.al ] ; 3 uses
  %i.aq = phi i64 [ 0, %.lr.ph ], [ %i.cy, %bb.al ] ; 7 uses
  %i.ar = phi ptr [ %i.v, %.lr.ph ], [ %i.cz, %bb.al ] ; 3 uses
  %i.as = load i64, ptr %i.x, align 8, !noundef !9 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = load ptr, ptr %i.r, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.av = call { ptr, ptr } %.val89(ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #25 ; 2 uses
  %i.aw = extractvalue { ptr, ptr } %i.av, 0      ; 2 uses
  %.not83 = icmp eq ptr %i.aw, null
  br i1 %.not83, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ax = icmp sgt i64 %i.aq, -1
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.aq, 0
  br i1 %i.ay, label %bb.af, label %bb.z

bb.q:                                             ; preds = %bb.o
  %i.az = extractvalue { ptr, ptr } %i.av, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  br label %bb.w

bb.r:                                             ; preds = %bb.o
  %i.ba = call fastcc noundef ptr @_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode15write_to_output(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g, ptr noalias nofree noundef align 8 dereferenceable(32) %i.f, ptr noundef nonnull %2, ptr %.val91, i1 noundef zeroext true, i1 noundef zeroext %.sroa.042.0) #23 ; 2 uses
  %.not84 = icmp eq ptr %i.ba, null
  br i1 %.not84, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.ba) #23 ; 2 uses
  %i.bc = extractvalue { ptr, ptr } %i.bb, 0
  %i.bd = extractvalue { ptr, ptr } %i.bb, 1
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %.val86 = load i64, ptr %i.e, align 8, !range !10, !noundef !9 ; 2 uses
  %i.be = icmp eq i64 %.val86, 0
  br i1 %i.be, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %.val86, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val95 = load i64, ptr %i.f, align 8, !range !10, !noundef !9 ; 2 uses
  %i.bf = icmp eq i64 %.val95, 0
  br i1 %i.bf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit
  %.val96 = load ptr, ptr %i.o, align 8, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val96, i64 noundef %.val95, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val99 = load i64, ptr %i.g, align 8, !range !11, !noundef !9 ; 2 uses
end_hunk_3
begin_hunk_4_@_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_stream:bb.a
  %.val85 = load ptr, ptr %i.r, align 8, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val85, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit101

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit101: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val93 = load i64, ptr %i.f, align 8, !range !10, !noundef !9 ; 2 uses
  %i.bl = icmp eq i64 %.val93, 0
  br i1 %i.bl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit102, label %bb.y

bb.y:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit101
  %.val94 = load ptr, ptr %i.o, align 8, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val94, i64 noundef %.val93, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit102

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit102: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit101, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val97 = load i64, ptr %i.g, align 8, !range !11, !noundef !9 ; 2 uses
  %i.bm = icmp sgt i64 %.val97, 0
  br i1 %i.bm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit105.sink.split, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit105

bb.z:                                             ; preds = %bb.p
  %i.bn = sub nsw i64 %i.k, %i.aq
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %i.bn) ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !980)
  %i.bo = load i64, ptr %i.e, align 8, !range !10, !alias.scope !981, !noundef !9
  %i.bp = sub nsw i64 %i.bo, %i.aq
  %i.bq = icmp ugt i64 %..i, %i.bp
  br i1 %i.bq, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i, !prof !21

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i: ; preds = %bb.z
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.aq, i64 noundef %..i, i64 noundef 1, i64 noundef 1) #23
  %i.br = load i64, ptr %i.s, align 8, !alias.scope !980, !noundef !9 ; 2 uses
  %i.bs = icmp sgt i64 %i.br, -1
  call void @llvm.assume(i1 %i.bs)
  %.pre = load ptr, ptr %i.r, align 8, !alias.scope !980
  br label %bb.aa

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i: ; preds = %bb.z
  %.not.i106 = icmp eq i64 %i.k, %i.aq
  br i1 %.not.i106, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit, label %bb.aa

bb.aa:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i
  %i.bt = phi ptr [ %.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i ], [ %i.ap, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i ] ; 2 uses
  %i.bu = phi i64 [ %i.br, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i ], [ %i.aq, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr nonnull readonly align 1 %i.ar, i64 %..i, i1 false), !noalias !980
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i, %bb.aa
  %i.bw = phi ptr [ %i.bt, %bb.aa ], [ %i.ap, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i ]
  %i.bx = phi i64 [ %i.bu, %bb.aa ], [ %i.k, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i ]
  %i.by = add i64 %i.bx, %..i                     ; 5 uses
  store i64 %i.by, ptr %i.s, align 8, !alias.scope !980
  %i.bz = icmp sgt i64 %i.by, -1
  call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp eq i64 %i.by, %i.k
  br i1 %i.ca, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit
  %i.cb = load ptr, ptr %i.r, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.cc = call { ptr, ptr } %.val89(ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef range(i64 0, -9223372036854775808) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #25, !inline_history !971 ; 2 uses
  %i.cd = extractvalue { ptr, ptr } %i.cc, 0      ; 2 uses
  %.not76 = icmp eq ptr %i.cd, null
  br i1 %.not76, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ce = extractvalue { ptr, ptr } %i.cc, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  br label %bb.w

bb.ad:                                            ; preds = %bb.ab
  store i64 0, ptr %i.s, align 8
  %i.cf = call fastcc noundef ptr @_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode15write_to_output(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g, ptr noalias nofree noundef align 8 dereferenceable(32) %i.f, ptr noundef nonnull %2, ptr %.val91, i1 noundef zeroext false, i1 noundef zeroext %.sroa.042.0) #23 ; 2 uses
  %.not77 = icmp eq ptr %i.cf, null
  br i1 %.not77, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cg = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.cf) #23 ; 2 uses
  %i.ch = extractvalue { ptr, ptr } %i.cg, 0
  %i.ci = extractvalue { ptr, ptr } %i.cg, 1
  br label %bb.w

bb.af:                                            ; preds = %bb.p, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit, %bb.ad
  %i.cj = phi i64 [ %i.ao, %bb.p ], [ %i.by, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit ], [ 0, %bb.ad ] ; 4 uses
  %i.ck = phi ptr [ %i.ap, %bb.p ], [ %i.bw, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit ], [ %i.cb, %bb.ad ]
  %i.cl = phi i64 [ 0, %bb.p ], [ %i.by, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit ], [ 0, %bb.ad ]
  %.sroa.025.0 = phi i64 [ 0, %bb.p ], [ %..i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit ], [ %..i, %bb.ad ] ; 4 uses
  %i.cm = sub nuw i64 %i.as, %.sroa.025.0         ; 3 uses
  %i.cn = urem i64 %i.cm, %i.k
  %i.co = sub nuw i64 %i.cm, %i.cn                ; 3 uses
  %.not78 = icmp ult i64 %i.cm, %i.k
  br i1 %.not78, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.aj, %bb.af
  %.sroa.025.1 = phi i64 [ %i.ct, %bb.aj ], [ %.sroa.025.0, %bb.af ] ; 4 uses
  %i.cp = icmp ult i64 %.sroa.025.1, %i.as
  br i1 %i.cp, label %bb.am, label %bb.al

bb.ah:                                            ; preds = %bb.af
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.025.0
  %i.cr = urem i64 %i.co, %i.k
  %i.cs = sub nuw nsw i64 %i.co, %i.cr
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ao, %bb.ah
  %.sroa.644.0 = phi i64 [ %i.cs, %bb.ah ], [ %i.dl, %bb.ao ] ; 2 uses
  %.sroa.043.0 = phi ptr [ %i.cq, %bb.ah ], [ %i.dm, %bb.ao ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.043.0) ]
  %.not80 = icmp ugt i64 %i.k, %.sroa.644.0
  br i1 %.not80, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ct = add i64 %i.co, %.sroa.025.0
  br label %bb.ag

bb.ak:                                            ; preds = %bb.ai
  %i.cu = call { ptr, ptr } %.val89(ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.043.0, i64 noundef range(i64 0, -9223372036854775808) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #25, !inline_history !971 ; 2 uses
  %i.cv = extractvalue { ptr, ptr } %i.cu, 0      ; 2 uses
  %.not81 = icmp eq ptr %i.cv, null
  br i1 %.not81, label %bb.ao, label %bb.an

bb.al:                                            ; preds = %bb.ag, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit113
  %i.cw = phi i64 [ %i.dj, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit113 ], [ %i.cj, %bb.ag ]
  %i.cx = phi ptr [ %i.dh, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit113 ], [ %i.ck, %bb.ag ]
  %i.cy = phi i64 [ %i.dj, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit113 ], [ %i.cl, %bb.ag ]
  %.sroa.025.2 = phi i64 [ %i.as, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit113 ], [ %.sroa.025.1, %bb.ag ]
  call void %i.ac(ptr noundef nonnull %0, i64 noundef %.sroa.025.2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void %i.u(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %0) #25
  %i.cz = load ptr, ptr %i.d, align 8, !noundef !9 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %._crit_edge, label %bb.n

bb.am:                                            ; preds = %bb.ag
  %i.db = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.025.1
  %gepdiff = sub nuw nsw i64 %i.as, %.sroa.025.1  ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  %i.dc = load i64, ptr %i.e, align 8, !range !10, !alias.scope !983, !noundef !9
  %i.dd = sub i64 %i.dc, %i.cj
  %i.de = icmp ugt i64 %gepdiff, %i.dd
  br i1 %i.de, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i112, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit113, !prof !21

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i112: ; preds = %bb.am
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.cj, i64 noundef %gepdiff, i64 noundef 1, i64 noundef 1) #23
  %i.df = load i64, ptr %i.s, align 8, !alias.scope !982, !noundef !9
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit113

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit113: ; preds = %bb.am, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i112
  %.sink172 = phi i64 [ %i.df, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i112 ], [ %i.cj, %bb.am ] ; 3 uses
  %i.dg = icmp sgt i64 %.sink172, -1
  call void @llvm.assume(i1 %i.dg)
  %i.dh = load ptr, ptr %i.r, align 8, !alias.scope !982, !nonnull !9, !noundef !9 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sink172
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull readonly align 1 %i.db, i64 %gepdiff, i1 false), !noalias !982
  %i.dj = add i64 %.sink172, %gepdiff             ; 3 uses
  store i64 %i.dj, ptr %i.s, align 8, !alias.scope !982
  br label %bb.al

bb.an:                                            ; preds = %bb.ak
  %i.dk = extractvalue { ptr, ptr } %i.cu, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dk) ]
  br label %bb.w

bb.ao:                                            ; preds = %bb.ak
  %i.dl = sub nuw i64 %.sroa.644.0, %i.k
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.043.0, i64 %i.k
  %i.dn = call fastcc noundef ptr @_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode15write_to_output(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g, ptr noalias nofree noundef align 8 dereferenceable(32) %i.f, ptr noundef nonnull %2, ptr %.val91, i1 noundef zeroext false, i1 noundef zeroext %.sroa.042.0) #23 ; 2 uses
  %.not82 = icmp eq ptr %i.dn, null
  br i1 %.not82, label %bb.ai, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.do = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.dn) #23 ; 2 uses
  %i.dp = extractvalue { ptr, ptr } %i.do, 0
  %i.dq = extractvalue { ptr, ptr } %i.do, 1
  br label %bb.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs6JMX4GRUq9U_4core3anyNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintNtB2_3Any7type_idCscxmO3cvmuC8_9uu_base32(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @7, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base58WrapperNtB5_27SupportsFastDecodeAndEncode17unpadded_multiple(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i64 9007199254740991
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base58WrapperNtB5_27SupportsFastDecodeAndEncode23valid_decoding_multiple(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i64 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs1_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base58WrapperNtB5_27SupportsFastDecodeAndEncode8alphabet(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @106, i64 58 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs7tKScEop1B6_5alloc6string6StringNtB6_5Debug3fmtCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !12, !noundef !9 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !9
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs6JMX4GRUq9U_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !12, !noundef !9
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCs6JMX4GRUq9U_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !9
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs2_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtB5_6UError4code(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !noundef !9
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs2_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_10Z85WrapperNtB5_27SupportsFastDecodeAndEncode17unpadded_multiple(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i64 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs2_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_10Z85WrapperNtB5_27SupportsFastDecodeAndEncode23valid_decoding_multiple(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i64 5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_10Z85WrapperNtB5_27SupportsFastDecodeAndEncode8alphabet(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @107, i64 85 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs3_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_15EncodingWrapperNtB5_27SupportsFastDecodeAndEncode17unpadded_multiple(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !9
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs3_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_15EncodingWrapperNtB5_27SupportsFastDecodeAndEncode23valid_decoding_multiple(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !9
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvXs3_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_15EncodingWrapperNtB5_27SupportsFastDecodeAndEncode8alphabet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !9
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read10read_exactCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1013, !noalias !1014, !noundef !9 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1013, !noalias !1014, !noundef !9
  %i.g = sub nuw i64 %i.f, %i.d
  %.not.i.not = icmp ugt i64 %2, %i.g
  br i1 %.not.i.not, label %.lr.ph.i, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read10read_exact0ECscxmO3cvmuC8_9uu_base32.exit.thread

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read10read_exact0ECscxmO3cvmuC8_9uu_base32.exit.thread: ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !alias.scope !1013, !noalias !1014, !nonnull !9, !noundef !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull readonly align 1 %i.i, i64 range(i64 0, -9223372036854775808) %2, i1 false), !alias.scope !1015, !noalias !1016
  %i.j = add i64 %i.d, %2
  store i64 %i.j, ptr %i.c, align 8, !alias.scope !1013, !noalias !1014
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECscxmO3cvmuC8_9uu_base32.exit

.lr.ph.i:                                         ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.q, %.lr.ph.i
  %.sroa.0.025.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.0.117.i, %bb.q ] ; 5 uses
  %.sroa.7.024.i = phi i64 [ %2, %.lr.ph.i ], [ %.sroa.7.115.i, %bb.q ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  %i.r = load i64, ptr %i.c, align 8, !alias.scope !1021, !noalias !1022, !noundef !9 ; 3 uses
  %i.s = load i64, ptr %i.e, align 8, !alias.scope !1021, !noalias !1022, !noundef !9 ; 3 uses
  %i.t = icmp ne i64 %i.r, %i.s
  %i.u = load i64, ptr %i.k, align 8, !alias.scope !1021, !noalias !1022 ; 2 uses
  %.not.i.i = icmp ult i64 %.sroa.7.024.i, %i.u
  %or.cond.i.i = select i1 %i.t, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  %.not.i.i.i = icmp ult i64 %i.r, %i.s
  %.pre.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1024, !noalias !1025 ; 3 uses
  br i1 %.not.i.i.i, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECscxmO3cvmuC8_9uu_base32.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1026
  store ptr %.pre.i.i.i, ptr %i.b, align 8, !noalias !1026
  store i64 %i.u, ptr %i.m, align 8, !noalias !1026
  store i64 0, ptr %i.n, align 8, !noalias !1026
  %i.v = load i8, ptr %i.p, align 8, !range !18, !alias.scope !1024, !noalias !1025, !noundef !9
  store i8 %i.v, ptr %i.o, align 8, !noalias !1026
  %i.w = call noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #23, !noalias !1027 ; 2 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !1024, !noalias !1025
  %i.x = load i64, ptr %i.n, align 8, !noalias !1026, !noundef !9 ; 2 uses
  store i64 %i.x, ptr %i.e, align 8, !alias.scope !1024, !noalias !1025
  %i.y = load i8, ptr %i.o, align 8, !range !18, !noalias !1026, !noundef !9
  store i8 %i.y, ptr %i.p, align 8, !alias.scope !1024, !noalias !1025
  %.not3.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not3.i.i.i, label %bb.e, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECscxmO3cvmuC8_9uu_base32.exit.thread.i.i

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECscxmO3cvmuC8_9uu_base32.exit.thread.i.i: ; preds = %bb.d
  %i.z = ptrtoint ptr %i.w to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1026
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1026
  br label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECscxmO3cvmuC8_9uu_base32.exit.i.i

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECscxmO3cvmuC8_9uu_base32.exit.i.i: ; preds = %bb.e, %bb.c
  %i.aa = phi i64 [ %i.s, %bb.c ], [ %i.x, %bb.e ] ; 2 uses
  %i.ab = phi i64 [ %i.r, %bb.c ], [ 0, %bb.e ]   ; 3 uses
  %i.ac = sub nuw i64 %i.aa, %i.ab                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %i.ab ; 2 uses
  %i.ae = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.ae, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !alias.scope !1021, !noalias !1022
  %i.af = call { i64, ptr } @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.l, ptr noalias nofree noundef nonnull %.sroa.0.025.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.024.i) #23
  br label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read4readCscxmO3cvmuC8_9uu_base32.exit.i

bb.g:                                             ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECscxmO3cvmuC8_9uu_base32.exit.i.i, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECscxmO3cvmuC8_9uu_base32.exit.thread.i.i
  %.sroa.69.012.i.i = phi i64 [ %i.z, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECscxmO3cvmuC8_9uu_base32.exit.thread.i.i ], [ %i.ac, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECscxmO3cvmuC8_9uu_base32.exit.i.i ]
  %i.ag = inttoptr i64 %.sroa.69.012.i.i to ptr
  %i.ah = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.ag, 1
  br label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read4readCscxmO3cvmuC8_9uu_base32.exit.i

bb.h:                                             ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECscxmO3cvmuC8_9uu_base32.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ac, i64 range(i64 0, -9223372036854775808) %.sroa.7.024.i) ; 4 uses
  %i.ai = icmp eq i64 %..i.i.i.i, 1
  br i1 %i.ai, label %bb.i, label %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECscxmO3cvmuC8_9uu_base32.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load i8, ptr %i.ad, align 1, !noalias !1029, !noundef !9
  store i8 %i.aj, ptr %.sroa.0.025.i, align 1, !alias.scope !1030, !noalias !1031
  br label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECscxmO3cvmuC8_9uu_base32.exit.i.i.i: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.025.i, ptr nonnull readonly align 1 %i.ad, i64 range(i64 0, -9223372036854775808) %..i.i.i.i, i1 false), !alias.scope !1032, !noalias !1033
  br label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i

_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECscxmO3cvmuC8_9uu_base32.exit.i.i.i, %bb.i
  %i.ak = inttoptr i64 %..i.i.i.i to ptr
  %i.al = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.ak, 1
  %i.am = add i64 %..i.i.i.i, %i.ab
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 %i.am)
  store i64 %..i.i.i, ptr %i.c, align 8, !alias.scope !1021, !noalias !1022
  br label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read4readCscxmO3cvmuC8_9uu_base32.exit.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read4readCscxmO3cvmuC8_9uu_base32.exit.i: ; preds = %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i, %bb.g, %bb.f
  %.merged.i.i = phi { i64, ptr } [ %i.af, %bb.f ], [ %i.ah, %bb.g ], [ %i.al, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i ] ; 2 uses
  %i.an = extractvalue { i64, ptr } %.merged.i.i, 0
  %i.ao = extractvalue { i64, ptr } %.merged.i.i, 1 ; 11 uses
  %i.ap = ptrtoint ptr %i.ao to i64               ; 8 uses
  %i.aq = trunc nuw i64 %i.an to i1
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read4readCscxmO3cvmuC8_9uu_base32.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ar = and i64 %i.ap, 3
  switch i64 %i.ar, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split12.i
    i64 1, label %.split11.i
  ], !prof !15

default.unreachable:                              ; preds = %bb.j
  unreachable

.split.i:                                         ; preds = %bb.j
  %i.as = lshr i64 %i.ap, 32
  %i.at = trunc nuw i64 %i.as to i32
  %i.au = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #23
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !9, !noundef !9
  %i.ax = call noundef zeroext i1 %i.aw(i32 noundef %i.at) #23, !inline_history !1008
  br i1 %i.ax, label %.thread.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECscxmO3cvmuC8_9uu_base32.exit

.split12.i:                                       ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !range !19, !noundef !9
  %i.ba = icmp eq i8 %i.az, 35
  br i1 %i.ba, label %.thread.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECscxmO3cvmuC8_9uu_base32.exit

.split11.i:                                       ; preds = %bb.j
  %i.bb = getelementptr i8, ptr %i.ao, i64 31
  %i.bc = load i8, ptr %i.bb, align 8, !range !19, !noundef !9
  %i.bd = icmp eq i8 %i.bc, 35
  br i1 %i.bd, label %bb.p, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECscxmO3cvmuC8_9uu_base32.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.j
  %i.be = lshr i64 %i.ap, 32
  %i.bf = icmp ult ptr %i.ao, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.be to i8
  %spec.select.i.i.i.i = select i1 %i.bf, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.bg = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp eq i8 %spec.select.i.i.i.i, 35
end_hunk_4
begin_hunk_5_@_RNvXs5_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base32WrapperNtB5_27SupportsFastDecodeAndEncode17unpadded_multiple
define internal noundef i64 @_RNvXs5_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base32WrapperNtB5_27SupportsFastDecodeAndEncode17unpadded_multiple(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !9
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base32WrapperNtB5_27SupportsFastDecodeAndEncode23supports_partial_decode(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs5_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base32WrapperNtB5_27SupportsFastDecodeAndEncode23valid_decoding_multiple(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !9
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvXs5_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base32WrapperNtB5_27SupportsFastDecodeAndEncode8alphabet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !9
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead7consumeCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !9
  %i.c = add i64 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !9
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 %i.c)
  store i64 %..i, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1348, !noalias !1349, !noundef !9 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1348, !noalias !1349, !noundef !9 ; 2 uses
  %.not.i = icmp ult i64 %i.c, %i.e
  %.pre.i = load ptr, ptr %1, align 8, !alias.scope !1348, !noalias !1349 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1350
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1348, !noalias !1349, !noundef !9
  store ptr %.pre.i, ptr %i.a, align 8, !noalias !1350
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.i, align 8, !noalias !1350
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.j, align 8, !noalias !1350
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !range !18, !alias.scope !1348, !noalias !1349, !noundef !9
  store i8 %i.m, ptr %i.k, align 8, !noalias !1350
  %i.n = call noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #23, !noalias !1351 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !1348, !noalias !1349
  %i.o = load i64, ptr %i.j, align 8, !noalias !1350, !noundef !9 ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !1348, !noalias !1349
  %i.p = load i8, ptr %i.k, align 8, !range !18, !noalias !1350, !noundef !9
  store i8 %i.p, ptr %i.l, align 8, !alias.scope !1348, !noalias !1349
  %.not3.i = icmp eq ptr %i.n, null
  br i1 %.not3.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.q = phi i64 [ %i.e, %bb.a ], [ %i.o, %bb.e ]
  %i.r = phi i64 [ %i.c, %bb.a ], [ 0, %bb.e ]    ; 2 uses
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.r
  store ptr %i.t, ptr %0, align 8, !alias.scope !1347, !noalias !1352
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.u, align 8, !alias.scope !1347, !noalias !1352
  br label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECscxmO3cvmuC8_9uu_base32.exit

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.v, align 8, !alias.scope !1347, !noalias !1352
  store ptr null, ptr %0, align 8, !alias.scope !1347, !noalias !1352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1350
  br label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECscxmO3cvmuC8_9uu_base32.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1350
  br label %bb.c

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_8buf_read7BufRead7consumeCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !9
  %i.c = add i64 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !9
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 %i.c)
  store i64 %..i, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1358, !noalias !1359, !noundef !9 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1358, !noalias !1359, !noundef !9 ; 2 uses
  %.not.i = icmp ult i64 %i.c, %i.e
  %.pre.i = load ptr, ptr %1, align 8, !alias.scope !1358, !noalias !1359 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1360
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1358, !noalias !1359, !noundef !9
  store ptr %.pre.i, ptr %i.a, align 8, !noalias !1360
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.i, align 8, !noalias !1360
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.j, align 8, !noalias !1360
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !range !18, !alias.scope !1358, !noalias !1359, !noundef !9
  store i8 %i.m, ptr %i.k, align 8, !noalias !1360
  %i.n = call noundef ptr @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #23, !noalias !1361 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !1358, !noalias !1359
  %i.o = load i64, ptr %i.j, align 8, !noalias !1360, !noundef !9 ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !1358, !noalias !1359
  %i.p = load i8, ptr %i.k, align 8, !range !18, !noalias !1360, !noundef !9
  store i8 %i.p, ptr %i.l, align 8, !alias.scope !1358, !noalias !1359
  %.not3.i = icmp eq ptr %i.n, null
  br i1 %.not3.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.q = phi i64 [ %i.e, %bb.a ], [ %i.o, %bb.e ]
  %i.r = phi i64 [ %i.c, %bb.a ], [ 0, %bb.e ]    ; 2 uses
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.r
  store ptr %i.t, ptr %0, align 8, !alias.scope !1357, !noalias !1362
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.u, align 8, !alias.scope !1357, !noalias !1362
  br label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinECscxmO3cvmuC8_9uu_base32.exit

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.v, align 8, !alias.scope !1357, !noalias !1362
  store ptr null, ptr %0, align 8, !alias.scope !1357, !noalias !1362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1360
  br label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinECscxmO3cvmuC8_9uu_base32.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1360
  br label %bb.c

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinECscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs6_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_11UUsageErrorNtB5_6UError4code(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !noundef !9
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_11UUsageErrorNtB5_6UError5usage(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs6JMX4GRUq9U_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 5) #23
  ret i1 %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsQ_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !9 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsv_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsx_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionNtNtCs7tKScEop1B6_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !9
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 4) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1367, !noundef !9 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !10, !alias.scope !1368, !noundef !9
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i, !prof !21

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i, i64 noundef 1, i64 noundef 1) #23
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1367, !nonnull !9, !noundef !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i
  %i.m = icmp samesign ult i32 %1, 2048
  %i.n = trunc i32 %1 to i8
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 3 uses
  %i.q = lshr i32 %1, 6
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128                ; 2 uses
  %i.u = lshr i32 %1, 12
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = lshr i32 %1, 18
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = or disjoint i8 %i.z, -16
  br i1 %i.m, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i
  %i.ab = trunc nuw nsw i32 %1 to i8
  store i8 %i.ab, ptr %i.l, align 1, !noalias !1367
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = or disjoint i8 %i.r, -64
  store i8 %i.ac, ptr %i.l, align 1, !noalias !1367
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.p, ptr %i.ad, align 1, !noalias !1367
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i32 %1, 65536
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = or disjoint i8 %i.v, -32
  store i8 %i.af, ptr %i.l, align 1, !noalias !1367
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.t, ptr %i.ag, align 1, !noalias !1367
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.p, ptr %i.ah, align 1, !noalias !1367
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.aa, ptr %i.l, align 1, !noalias !1367
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.ai, align 1, !noalias !1367
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.t, ptr %i.aj, align 1, !noalias !1367
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store i8 %i.p, ptr %i.ak, align 1, !noalias !1367
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.al = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !1367
  ret i1 false
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1378, !noalias !1379, !noundef !9 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !10, !alias.scope !1378, !noalias !1379, !noundef !9
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i.i, !prof !21

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1) #23, !noalias !1379
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !1380, !noalias !1379, !noundef !9 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1380, !noalias !1379, !nonnull !9, !noundef !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !1380
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !1380, !noalias !1379
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB4_17Base64SimdWrapperNtB4_27SupportsFastDecodeAndEncode17unpadded_multiple(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !9
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB4_17Base64SimdWrapperNtB4_27SupportsFastDecodeAndEncode23valid_decoding_multiple(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !9
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvXs_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB4_17Base64SimdWrapperNtB4_27SupportsFastDecodeAndEncode8alphabet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !9
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.c, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsn_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_ENtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmtCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !align !12, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !9, !nonnull !9
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #25
  ret i1 %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsv_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @116, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsw_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_11UUsageErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @116, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsx_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 7, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @121, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @122) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead10read_untilCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc { i64, ptr } @_RINvNtNtCs7tKScEop1B6_5alloc2io8buf_read18default_read_untilINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) #23
  ret { i64, ptr } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead10skip_untilCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer.i

.outer.i:                                         ; preds = %bb.n, %bb.a
  %.sroa.01.0.ph.i = phi i64 [ %i.bg, %bb.n ], [ 0, %bb.a ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECscxmO3cvmuC8_9uu_base32.exit.i, %.outer.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  %i.l = load i64, ptr %i.c, align 8, !alias.scope !1404, !noalias !1405, !noundef !9 ; 2 uses
  %i.m = load i64, ptr %i.d, align 8, !alias.scope !1404, !noalias !1405, !noundef !9 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.l, %i.m
  %.pre.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1404, !noalias !1405 ; 3 uses
  br i1 %.not.i.i.i, label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1406
  %i.n = load i64, ptr %i.f, align 8, !alias.scope !1404, !noalias !1405, !noundef !9
  store ptr %.pre.i.i.i, ptr %i.b, align 8, !noalias !1406
  store i64 %i.n, ptr %i.g, align 8, !noalias !1406
  store i64 0, ptr %i.h, align 8, !noalias !1406
  %i.o = load i8, ptr %i.j, align 8, !range !18, !alias.scope !1404, !noalias !1405, !noundef !9
  store i8 %i.o, ptr %i.i, align 8, !noalias !1406
  %i.p = call noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #23, !noalias !1407 ; 2 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !1404, !noalias !1405
  %i.q = load i64, ptr %i.h, align 8, !noalias !1406, !noundef !9 ; 2 uses
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !1404, !noalias !1405
  %i.r = load i8, ptr %i.i, align 8, !range !18, !noalias !1406, !noundef !9
  store i8 %i.r, ptr %i.j, align 8, !alias.scope !1404, !noalias !1405
  %.not3.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not3.i.i.i, label %bb.d, label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit.thread.i

_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit.thread.i: ; preds = %bb.c
  %i.s = ptrtoint ptr %i.p to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1406
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1406
  br label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit.i

_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit.i: ; preds = %bb.d, %bb.b
  %i.t = phi i64 [ %i.m, %bb.b ], [ %i.q, %bb.d ]
  %i.u = phi i64 [ %i.l, %bb.b ], [ 0, %bb.d ]    ; 2 uses
  %i.v = sub nuw i64 %i.t, %i.u                   ; 9 uses
  %i.w = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.w, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit.i, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit.thread.i
  %.sroa.8.020.i = phi i64 [ %i.s, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit.thread.i ], [ %i.v, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit.i ] ; 6 uses
  %i.x = inttoptr i64 %.sroa.8.020.i to ptr       ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.y = and i64 %.sroa.8.020.i, 3                ; 2 uses
  switch i64 %i.y, label %default.unreachable [
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 0, label %bb.h
    i64 1, label %bb.i
  ], !prof !15

default.unreachable:                              ; preds = %bb.o, %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.z = lshr i64 %.sroa.8.020.i, 32
  %i.aa = trunc nuw i64 %i.z to i32
  %i.ab = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !9, !noundef !9
  %i.ae = call noundef i8 %i.ad(i32 noundef %i.aa) #23, !inline_history !1390
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i

bb.g:                                             ; preds = %bb.e
  %i.af = lshr i64 %.sroa.8.020.i, 32
  %i.ag = icmp ult i64 %.sroa.8.020.i, 188978561024
  %switch.idx.cast.i.i.i.i = trunc nuw nsw i64 %i.af to i8
  call void @llvm.assume(i1 %i.ag)
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i

bb.h:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ai = load i8, ptr %i.ah, align 8, !range !19, !noundef !9
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i

bb.i:                                             ; preds = %bb.e
  %i.aj = getelementptr i8, ptr %i.x, i64 31
  %i.ak = load i8, ptr %i.aj, align 8, !range !19, !noundef !9
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i = phi i8 [ %i.ae, %bb.f ], [ %switch.idx.cast.i.i.i.i, %bb.g ], [ %i.ai, %bb.h ], [ %i.ak, %bb.i ]
  %i.al = icmp eq i8 %.sroa.0.0.i.i, 35
  br i1 %i.al, label %bb.o, label %_RINvNtNtCs7tKScEop1B6_5alloc2io8buf_read18default_skip_untilINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECscxmO3cvmuC8_9uu_base32.exit

bb.j:                                             ; preds = %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %i.u ; 2 uses
  %i.an = icmp samesign ult i64 %i.v, 16
  br i1 %i.an, label %.preheader.i.i, label %bb.k

.preheader.i.i:                                   ; preds = %bb.j
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %bb.j
  %i.ao = call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef range(i64 0, -9223372036854775808) %i.v) #23
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i

._crit_edge.i.i:                                  ; preds = %bb.l, %.lr.ph.i.i, %.preheader.i.i
  %.sroa.01.0.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %.sroa.01.05.i.i, %.lr.ph.i.i ], [ %i.v, %bb.l ]
  %.sroa.0.1.i.i = phi i64 [ 0, %.preheader.i.i ], [ 1, %.lr.ph.i.i ], [ 0, %bb.l ]
  %i.ap = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i, 0
  %i.aq = insertvalue { i64, i64 } %i.ap, i64 %.sroa.01.0.lcssa.i.i, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.l
  %.sroa.01.05.i.i = phi i64 [ %i.au, %bb.l ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.01.05.i.i
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !1408, !noundef !9
  %i.at = icmp eq i8 %i.as, %1
  br i1 %i.at, label %._crit_edge.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.au = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.v
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i: ; preds = %._crit_edge.i.i, %bb.k
  %.merged.i.i = phi { i64, i64 } [ %i.aq, %._crit_edge.i.i ], [ %i.ao, %bb.k ] ; 2 uses
  %i.av = extractvalue { i64, i64 } %.merged.i.i, 0
  %i.aw = trunc nuw i64 %i.av to i1
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i
  %i.ax = extractvalue { i64, i64 } %.merged.i.i, 1
  %i.ay = add i64 %i.ax, 1                        ; 2 uses
  %i.az = load i64, ptr %i.c, align 8, !alias.scope !1409, !noundef !9
  %i.ba = add i64 %i.az, %i.ay
  %i.bb = load i64, ptr %i.d, align 8, !alias.scope !1409, !noundef !9
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bb, i64 %i.ba)
  store i64 %..i.i.i, ptr %i.c, align 8, !alias.scope !1409
  %i.bc = add i64 %i.ay, %.sroa.01.0.ph.i
  br label %.loopexit.i

bb.n:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i
  %i.bd = load i64, ptr %i.c, align 8, !alias.scope !1410, !noundef !9
  %i.be = add i64 %i.bd, %i.v
  %i.bf = load i64, ptr %i.d, align 8, !alias.scope !1410, !noundef !9
  %..i.i14.i = call noundef i64 @llvm.umin.i64(i64 %i.bf, i64 %i.be)
  store i64 %..i.i14.i, ptr %i.c, align 8, !alias.scope !1410
  %i.bg = add i64 %i.v, %.sroa.01.0.ph.i          ; 2 uses
  %i.bh = icmp eq i64 %i.v, 0
  br i1 %i.bh, label %.loopexit.i, label %.outer.i

.loopexit.i:                                      ; preds = %bb.n, %bb.m
  %.sroa.01.1.i = phi i64 [ %i.bc, %bb.m ], [ %i.bg, %bb.n ]
  %i.bi = inttoptr i64 %.sroa.01.1.i to ptr
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io8buf_read18default_skip_untilINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECscxmO3cvmuC8_9uu_base32.exit

bb.o:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1411
  switch i64 %i.y, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECscxmO3cvmuC8_9uu_base32.exit.i
    i64 3, label %bb.p
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECscxmO3cvmuC8_9uu_base32.exit.i
    i64 1, label %bb.q
  ], !prof !15

bb.p:                                             ; preds = %bb.o
  %i.bj = icmp ult i64 %.sroa.8.020.i, 188978561024
  call void @llvm.assume(i1 %i.bj)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECscxmO3cvmuC8_9uu_base32.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bk = getelementptr i8, ptr %i.x, i64 -1      ; 2 uses
end_hunk_5
begin_hunk_6_@_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_8buf_read7BufRead10skip_untilCscxmO3cvmuC8_9uu_base32:bb.a
  %i.aq = insertvalue { i64, i64 } %i.ap, i64 %.sroa.01.0.lcssa.i.i, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.l
  %.sroa.01.05.i.i = phi i64 [ %i.au, %bb.l ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.01.05.i.i
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !1463, !noundef !9
  %i.at = icmp eq i8 %i.as, %1
  br i1 %i.at, label %._crit_edge.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.au = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.v
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i: ; preds = %._crit_edge.i.i, %bb.k
  %.merged.i.i = phi { i64, i64 } [ %i.aq, %._crit_edge.i.i ], [ %i.ao, %bb.k ] ; 2 uses
  %i.av = extractvalue { i64, i64 } %.merged.i.i, 0
  %i.aw = trunc nuw i64 %i.av to i1
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i
  %i.ax = extractvalue { i64, i64 } %.merged.i.i, 1
  %i.ay = add i64 %i.ax, 1                        ; 2 uses
  %i.az = load i64, ptr %i.c, align 8, !alias.scope !1464, !noundef !9
  %i.ba = add i64 %i.az, %i.ay
  %i.bb = load i64, ptr %i.d, align 8, !alias.scope !1464, !noundef !9
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bb, i64 %i.ba)
  store i64 %..i.i.i, ptr %i.c, align 8, !alias.scope !1464
  %i.bc = add i64 %i.ay, %.sroa.01.0.ph.i
  br label %.loopexit.i

bb.n:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i
  %i.bd = load i64, ptr %i.c, align 8, !alias.scope !1465, !noundef !9
  %i.be = add i64 %i.bd, %i.v
  %i.bf = load i64, ptr %i.d, align 8, !alias.scope !1465, !noundef !9
  %..i.i14.i = call noundef i64 @llvm.umin.i64(i64 %i.bf, i64 %i.be)
  store i64 %..i.i14.i, ptr %i.c, align 8, !alias.scope !1465
  %i.bg = add i64 %i.v, %.sroa.01.0.ph.i          ; 2 uses
  %i.bh = icmp eq i64 %i.v, 0
  br i1 %i.bh, label %.loopexit.i, label %.outer.i

.loopexit.i:                                      ; preds = %bb.n, %bb.m
  %.sroa.01.1.i = phi i64 [ %i.bc, %bb.m ], [ %i.bg, %bb.n ]
  %i.bi = inttoptr i64 %.sroa.01.1.i to ptr
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io8buf_read18default_skip_untilINtNtNtB4_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEECscxmO3cvmuC8_9uu_base32.exit

bb.o:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1466
  switch i64 %i.y, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECscxmO3cvmuC8_9uu_base32.exit.i
    i64 3, label %bb.p
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECscxmO3cvmuC8_9uu_base32.exit.i
    i64 1, label %bb.q
  ], !prof !15

bb.p:                                             ; preds = %bb.o
  %i.bj = icmp ult i64 %.sroa.8.020.i, 188978561024
  call void @llvm.assume(i1 %i.bj)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECscxmO3cvmuC8_9uu_base32.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bk = getelementptr i8, ptr %i.x, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  store ptr %i.bk, ptr %i.k, align 8, !alias.scope !1467, !noalias !1466
  store i8 3, ptr %i.a, align 8, !alias.scope !1467, !noalias !1466
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #23, !noalias !1468
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECscxmO3cvmuC8_9uu_base32.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECscxmO3cvmuC8_9uu_base32.exit.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1466
  br label %bb.b

_RINvNtNtCs7tKScEop1B6_5alloc2io8buf_read18default_skip_untilINtNtNtB4_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEECscxmO3cvmuC8_9uu_base32.exit: ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i, %.loopexit.i
  %.sroa.3.0.i = phi ptr [ %i.bi, %.loopexit.i ], [ %i.x, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i ]
  %.sroa.0.0.i = phi i64 [ 0, %.loopexit.i ], [ 1, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i ]
  %i.bl = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.bm = insertvalue { i64, ptr } %i.bl, ptr %.sroa.3.0.i, 1
  ret { i64, ptr } %i.bm
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_8buf_read7BufRead13has_data_leftCscxmO3cvmuC8_9uu_base32(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1478, !noalias !1479, !noundef !9 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1478, !noalias !1479, !noundef !9 ; 2 uses
  %.not.i.i = icmp ult i64 %i.c, %i.e
  %.pre.i.i = load ptr, ptr %1, align 8, !alias.scope !1478, !noalias !1479 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1480
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1478, !noalias !1479, !noundef !9
  store ptr %.pre.i.i, ptr %i.a, align 8, !noalias !1480
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.i, align 8, !noalias !1480
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.j, align 8, !noalias !1480
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !range !18, !alias.scope !1478, !noalias !1479, !noundef !9
  store i8 %i.m, ptr %i.k, align 8, !noalias !1480
  %i.n = call noundef ptr @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #23, !noalias !1481 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !1478, !noalias !1479
  %i.o = load i64, ptr %i.j, align 8, !noalias !1480, !noundef !9 ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !1478, !noalias !1479
  %i.p = load i8, ptr %i.k, align 8, !range !18, !noalias !1480, !noundef !9
  store i8 %i.p, ptr %i.l, align 8, !alias.scope !1478, !noalias !1479
  %.not3.i.i = icmp eq ptr %i.n, null
  br i1 %.not3.i.i, label %bb.c, label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit.thread

_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit.thread: ; preds = %bb.b
  %i.q = ptrtoint ptr %i.n to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1480
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1480
  br label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit

_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.a, %bb.c
  %i.r = phi i64 [ %i.e, %bb.a ], [ %i.o, %bb.c ]
  %i.s = phi i64 [ %i.c, %bb.a ], [ 0, %bb.c ]
  %i.t = sub nuw i64 %i.r, %i.s                   ; 2 uses
  %i.u = icmp eq ptr %.pre.i.i, null
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit.thread, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit
  %.sroa.5.03 = phi i64 [ %i.q, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit.thread ], [ %i.t, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit ]
  %i.v = inttoptr i64 %.sroa.5.03 to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8
  br label %bb.f

bb.e:                                             ; preds = %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_8buf_read7BufRead8fill_bufCscxmO3cvmuC8_9uu_base32.exit
  %i.x = icmp ne i64 %i.t, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.z = zext i1 %i.x to i8
  store i8 %i.z, ptr %i.y, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge = phi i8 [ 0, %bb.e ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_8buf_read7BufRead9read_lineCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1487, !noalias !1488, !noundef !9 ; 4 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = tail call fastcc { i64, ptr } @_RINvNtNtCs7tKScEop1B6_5alloc2io8buf_read18default_read_untilINtNtNtB4_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i8 noundef 10, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1487, !noalias !1488, !nonnull !9, !noundef !9
  %i.h = load i64, ptr %i.b, align 8, !alias.scope !1487, !noalias !1488, !noundef !9 ; 3 uses
  %i.i = sub nuw i64 %i.h, %i.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1489
  call void @_RNvMNtCs6JMX4GRUq9U_4core3stre9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.i) #23, !noalias !1487
  %i.k = load i64, ptr %i.a, align 8, !range !22, !noalias !1489, !noundef !9
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1489
  %i.l = icmp sgt i64 %i.h, -1
  call void @llvm.assume(i1 %i.l)
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvYINtNtNtB4_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB4_8buf_read7BufRead9read_line0ECscxmO3cvmuC8_9uu_base32.exit

bb.c:                                             ; preds = %bb.a
  %i.m = extractvalue { i64, ptr } %i.e, 1
  %i.n = extractvalue { i64, ptr } %i.e, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1489
  %i.o = trunc nuw i64 %i.n to i1
  %..i = select i1 %i.o, ptr %i.m, ptr @15
  %i.p = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %..i, 1
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvYINtNtNtB4_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB4_8buf_read7BufRead9read_line0ECscxmO3cvmuC8_9uu_base32.exit

_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvYINtNtNtB4_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB4_8buf_read7BufRead9read_line0ECscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.012.i = phi i64 [ %i.h, %bb.b ], [ %i.c, %bb.c ]
  %.merged.i = phi { i64, ptr } [ %i.e, %bb.b ], [ %i.p, %bb.c ]
  store i64 %.sroa.0.012.i, ptr %i.b, align 8, !alias.scope !1490, !noalias !1488
  ret { i64, ptr } %.merged.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtQNtNtCs7tKScEop1B6_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCscxmO3cvmuC8_9uu_base32.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @108, ptr noundef nonnull %1, ptr noundef nonnull %2) #23, !inline_history !1491
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error11UUsageErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCscxmO3cvmuC8_9uu_base32(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @126, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error11UUsageErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCscxmO3cvmuC8_9uu_base32(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error11UUsageErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCscxmO3cvmuC8_9uu_base32(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error11UUsageErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCscxmO3cvmuC8_9uu_base32(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error11UUsageErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCscxmO3cvmuC8_9uu_base32(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @127, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtB4_6UError5usageCscxmO3cvmuC8_9uu_base32(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCscxmO3cvmuC8_9uu_base32(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @126, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCscxmO3cvmuC8_9uu_base32(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCscxmO3cvmuC8_9uu_base32(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCscxmO3cvmuC8_9uu_base32(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCscxmO3cvmuC8_9uu_base32(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @128, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtB4_6UError4codeCscxmO3cvmuC8_9uu_base32(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtB4_6UError5usageCscxmO3cvmuC8_9uu_base32(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCscxmO3cvmuC8_9uu_base32(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @126, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCscxmO3cvmuC8_9uu_base32(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCscxmO3cvmuC8_9uu_base32(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCscxmO3cvmuC8_9uu_base32(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCscxmO3cvmuC8_9uu_base32(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @129, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features8encoding10Z85WrapperNtB4_27SupportsFastDecodeAndEncode13pad_remainderCscxmO3cvmuC8_9uu_base32(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree nonnull readonly captures(none) %2, i64 range(i64 0, -9223372036854775808) %3) unnamed_addr #9 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features8encoding10Z85WrapperNtB4_27SupportsFastDecodeAndEncode23supports_partial_decodeCscxmO3cvmuC8_9uu_base32(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features8encoding13Base58WrapperNtB4_27SupportsFastDecodeAndEncode13pad_remainderCscxmO3cvmuC8_9uu_base32(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree nonnull readonly captures(none) %2, i64 range(i64 0, -9223372036854775808) %3) unnamed_addr #9 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features8encoding13Base58WrapperNtB4_27SupportsFastDecodeAndEncode23supports_partial_decodeCscxmO3cvmuC8_9uu_base32(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features8encoding15EncodingWrapperNtB4_27SupportsFastDecodeAndEncode13pad_remainderCscxmO3cvmuC8_9uu_base32(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree readonly align 8 captures(none) %1, ptr noalias nofree nonnull readonly captures(none) %2, i64 range(i64 0, -9223372036854775808) %3) unnamed_addr #9 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features8encoding15EncodingWrapperNtB4_27SupportsFastDecodeAndEncode23supports_partial_decodeCscxmO3cvmuC8_9uu_base32(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features8encoding17Base64SimdWrapperNtB4_27SupportsFastDecodeAndEncode13pad_remainderCscxmO3cvmuC8_9uu_base32(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree readonly align 8 captures(none) %1, ptr noalias nofree nonnull readonly captures(none) %2, i64 range(i64 0, -9223372036854775808) %3) unnamed_addr #9 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features8encoding17Base64SimdWrapperNtB4_27SupportsFastDecodeAndEncode23supports_partial_decodeCscxmO3cvmuC8_9uu_base32(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nounwind nonlazybind uwtable
declare noundef align 8 ptr @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg5first(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtCs6JMX4GRUq9U_4core3stre9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsa_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RINvNtCs6JMX4GRUq9U_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals21capture_startup_state() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs6JMX4GRUq9U_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #18

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_11UUsageErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path11to_path_buf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #20

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_6
