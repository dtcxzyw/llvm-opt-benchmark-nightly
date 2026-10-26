Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_expand-50a50713fde0b685.uu_expand.15d4497bd967269-cgu.0?download=true
inline.NumInlined: 580
inline.NumDeleted: 400
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvCs7ggdWxGWrR_9uu_expand21CAPTURE_STARTUP_STATE = constant ptr @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals21capture_startup_state, section ".init_array", align 8
@0 = private unnamed_addr constant [256 x i8] c"                                                                                                                                                                                                                                                                ", align 1
@1 = private unnamed_addr constant [28 x i8] c"src/uu/expand/src/expand.rs\00", align 1
@2 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fluent-bundle-0.16.0/src/args.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"e\00\00\00\00\00\00\00Z\00\00\00\1E\00\00\00" }>, align 8
@4 = private unnamed_addr constant [109 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/clap_builder-4.6.5/src/util/flat_map.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"l\00\00\00\00\00\00\00c\00\00\00)\00\00\00" }>, align 8
@6 = private unnamed_addr constant [51 x i8] c"+Mismatch between definition and access of `\C0\03`. \C0\00", align 1
@7 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/clap_builder-4.6.5/src/parser/error.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"k\00\00\00\00\00\00\00 \00\00\00\09\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -5875614554295535572 to ptr), ptr inttoptr (i64 3467203893602029906 to ptr) }>, align 8
@10 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCs6JMX4GRUq9U_4core3anyNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintNtB2_3Any7type_idCs7ggdWxGWrR_9uu_expand }>, align 8
@11 = private unnamed_addr constant [73 x i8] c"/rustc/7608eb7b07eaf93f16d7cf5bcb2098eca87503df/library/alloc/src/str.rs\00", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"H\00\00\00\00\00\00\00\C8\00\00\00\16\00\00\00" }>, align 8
@13 = private unnamed_addr constant [53 x i8] c"attempt to join into collection with len > usize::MAX", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"H\00\00\00\00\00\00\00\AF\00\00\00\0A\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockEECs7ggdWxGWrR_9uu_expand, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtB8_3fmt5Write9write_strCs7ggdWxGWrR_9uu_expand, ptr @_RNvYINtNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtBb_3fmt5Write10write_charCs7ggdWxGWrR_9uu_expand, ptr @_RNvYINtNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtBb_3fmt5Write9write_fmtCs7ggdWxGWrR_9uu_expand }>, align 8
@16 = private unnamed_addr constant [86 x i8] c"a formatting trait implementation returned an error when the underlying stream did not", align 1
@17 = private unnamed_addr constant [77 x i8] c"/rustc/7608eb7b07eaf93f16d7cf5bcb2098eca87503df/library/core/src/io/write.rs\00", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"L\00\00\00\00\00\00\00\9B\01\00\00\11\00\00\00" }>, align 8
@19 = private unnamed_addr constant [77 x i8] c"/rustc/7608eb7b07eaf93f16d7cf5bcb2098eca87503df/library/alloc/src/io/read.rs\00", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"L\00\00\00\00\00\00\00\E7\03\00\00\1F\00\00\00" }>, align 8
@21 = private unnamed_addr constant [27 x i8] c"failed to fill whole buffer", align 1
@22 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @21, [9 x i8] c"\1B\00\00\00\00\00\00\00%", [7 x i8] undef }>, align 8
@23 = private unnamed_addr constant [99 x i8] c"Fatal internal error. Please consider filing a bug report at https://github.com/clap-rs/clap/issues", align 1
@24 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorECs7ggdWxGWrR_9uu_expand, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsa_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorECs7ggdWxGWrR_9uu_expand, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt, ptr @_RNvXsa_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr @24, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCs7ggdWxGWrR_9uu_expand, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCs7ggdWxGWrR_9uu_expand, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCs7ggdWxGWrR_9uu_expand, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCs7ggdWxGWrR_9uu_expand, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCs7ggdWxGWrR_9uu_expand, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtB4_6UError4codeCs7ggdWxGWrR_9uu_expand, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtB4_6UError5usageCs7ggdWxGWrR_9uu_expand }>, align 8
@26 = private unnamed_addr constant [35 x i8] c"expand-error-failed-to-write-output", align 1
@27 = private unnamed_addr constant [10 x i8] c"\07--tabs=\C0\00", align 1
@28 = private unnamed_addr constant [122 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/clap_builder-4.6.5/src/parser/matches/arg_matches.rs\00", align 1
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @28, [16 x i8] c"y\00\00\00\00\00\00\00a\07\00\00\01\00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1B\00\00\00\00\00\00\00\C4\01\00\00&\00\00\00" }>, align 8
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1B\00\00\00\00\00\00\00I\01\00\00\1F\00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1B\00\00\00\00\00\00\00D\01\00\00.\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1B\00\00\00\00\00\00\00A\01\00\00&\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1B\00\00\00\00\00\00\00:\01\00\00*\00\00\00" }>, align 8
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1B\00\00\00\00\00\00\00=\01\00\00\1D\00\00\00" }>, align 8
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1B\00\00\00\00\00\00\006\01\00\00&\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1B\00\00\00\00\00\00\00i\00\00\004\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1B\00\00\00\00\00\00\00\91\00\00\00&\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1B\00\00\00\00\00\00\00\D6\00\00\00\13\00\00\00" }>, align 8
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1B\00\00\00\00\00\00\00\D8\00\00\00\10\00\00\00" }>, align 8
@41 = private unnamed_addr constant [1 x i8] c"-", align 1
@42 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std2fs4FileECs7ggdWxGWrR_9uu_expand, [16 x i8] c"\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read, ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read13read_vectored, ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read16is_read_vectored, ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read11read_to_end, ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read14read_to_string, ptr @_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exactCs7ggdWxGWrR_9uu_expand, ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf, ptr @_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read14read_buf_exactCs7ggdWxGWrR_9uu_expand }>, align 8
@43 = private unnamed_addr constant [4 x i8] c"file", align 1
@44 = private unnamed_addr constant [25 x i8] c"expand-error-is-directory", align 1
@45 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorECs7ggdWxGWrR_9uu_expand, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt }>, align 8
@46 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorECs7ggdWxGWrR_9uu_expand, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsv_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt, ptr @_RNvXs1_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr @45, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCs7ggdWxGWrR_9uu_expand, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCs7ggdWxGWrR_9uu_expand, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCs7ggdWxGWrR_9uu_expand, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCs7ggdWxGWrR_9uu_expand, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCs7ggdWxGWrR_9uu_expand, ptr @_RNvXs2_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtB5_6UError4code, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtB4_6UError5usageCs7ggdWxGWrR_9uu_expand }>, align 8
@47 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read, ptr @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read13read_vectored, ptr @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read16is_read_vectored, ptr @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read11read_to_end, ptr @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read14read_to_string, ptr @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exact, ptr @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf, ptr @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read14read_buf_exact }>, align 8
@_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE = external global { { { { { i64 } } } }, { { { { i32 } } } }, i32, i64 }
@48 = private unnamed_addr constant [8 x i8] c"\C0\02: \C0\01\0A\00", align 1
@49 = private unnamed_addr constant [6 x i8] c"expand", align 1
@50 = private unnamed_addr constant [25 x i8] c"(uutils coreutils) 0.10.0", align 1
@51 = private unnamed_addr constant [12 x i8] c"expand-about", align 1
@52 = private unnamed_addr constant [12 x i8] c"expand-usage", align 1
@53 = private unnamed_addr constant [19 x i8] c"expand-help-initial", align 1
@54 = private unnamed_addr constant [7 x i8] c"N, LIST", align 1
@55 = private unnamed_addr constant [16 x i8] c"expand-help-tabs", align 1
@56 = private unnamed_addr constant [19 x i8] c"expand-help-no-utf8", align 1
@57 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@58 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@59 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@60 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCs6JMX4GRUq9U_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@61 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1B\00\00\00\00\00\00\00\C0\00\00\00\0E\00\00\00" }>, align 8
@62 = private unnamed_addr constant [33 x i8] c"failed to write the buffered data", align 1
@63 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @62, [9 x i8] c"!\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@64 = private unnamed_addr constant [4 x i8] c"tabs", align 1
@_RNvNtCs7ggdWxGWrR_9uu_expand7options4TABS = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @64, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@65 = private unnamed_addr constant [5 x i8] c"FILES", align 1
@_RNvNtCs7ggdWxGWrR_9uu_expand7options5FILES = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @65, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@66 = private unnamed_addr constant [7 x i8] c"initial", align 1
@_RNvNtCs7ggdWxGWrR_9uu_expand7options7INITIAL = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @66, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@67 = private unnamed_addr constant [7 x i8] c"no-utf8", align 1
@_RNvNtCs7ggdWxGWrR_9uu_expand7options7NO_UTF8 = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @67, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@68 = private unnamed_addr constant [4 x i8] c"char", align 1
@69 = private unnamed_addr constant [30 x i8] c"expand-error-invalid-character", align 1
@70 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@71 = private unnamed_addr constant [9 x i8] c"specifier", align 1
@72 = private unnamed_addr constant [6 x i8] c"number", align 1
@73 = private unnamed_addr constant [35 x i8] c"expand-error-specifier-not-at-start", align 1
@74 = private unnamed_addr constant [45 x i8] c"expand-error-specifier-only-allowed-with-last", align 1
@75 = private unnamed_addr constant [36 x i8] c"expand-error-tab-size-cannot-be-zero", align 1
@76 = private unnamed_addr constant [4 x i8] c"size", align 1
@77 = private unnamed_addr constant [31 x i8] c"expand-error-tab-size-too-large", align 1
@78 = private unnamed_addr constant [40 x i8] c"expand-error-tab-sizes-must-be-ascending", align 1
@79 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@80 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCs7ggdWxGWrR_9uu_expand }>, align 8
@81 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@82 = private unnamed_addr constant [11 x i8] c"valid_up_to", align 1
@83 = private unnamed_addr constant [9 x i8] c"error_len", align 1
@84 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_char, ptr @_RNvYNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtCs7ggdWxGWrR_9uu_expand }>, align 8
@85 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@86 = private unnamed_addr constant [76 x i8] c"/rustc/7608eb7b07eaf93f16d7cf5bcb2098eca87503df/library/alloc/src/string.rs\00", align 1
@87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @86, [16 x i8] c"K\00\00\00\00\00\00\00\89\0B\00\00\0E\00\00\00" }>, align 8
@88 = private unnamed_addr constant [5 x i8] c"Error", align 1
@89 = private unnamed_addr constant [4 x i8] c"None", align 1
@90 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs7tKScEop1B6_5alloc6string6StringNtB6_5Debug3fmtCs7ggdWxGWrR_9uu_expand }>, align 8
@91 = private unnamed_addr constant [4 x i8] c"Some", align 1
@92 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRhNtB6_5Debug3fmtCs7ggdWxGWrR_9uu_expand }>, align 8
@93 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsQ_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_5Debug3fmt }>, align 8
@94 = private unnamed_addr constant [12 x i8] c"USimpleError", align 1
@95 = private unnamed_addr constant [4 x i8] c"code", align 1
@96 = private unnamed_addr constant [7 x i8] c"message", align 1
@97 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs7ggdWxGWrR_9uu_expand, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionNtNtCs7tKScEop1B6_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCs7ggdWxGWrR_9uu_expand }>, align 8
@98 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCs7ggdWxGWrR_9uu_expand }>, align 8
@99 = private unnamed_addr constant [8 x i8] c"UIoError", align 1
@100 = private unnamed_addr constant [7 x i8] c"context", align 1
@101 = private unnamed_addr constant [5 x i8] c"inner", align 1
@102 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@103 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 8022765338115755166 to ptr), ptr inttoptr (i64 -4205221647133633730 to ptr) }>, align 8
@104 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7465031386275593344 to ptr), ptr inttoptr (i64 2227572798057049637 to ptr) }>, align 8
@llvm.used = appending global [1 x ptr] [ptr @_RNvCs7ggdWxGWrR_9uu_expand21CAPTURE_STARTUP_STATE], section "llvm.metadata"

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 4, 10) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  switch i64 %i.d, label %.lr.ph.i.i [
    i64 0, label %bb.c
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.t, %.lr.ph.i.i ] ; 4 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.05.0.lcssa.i.i ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %.sroa.0.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !alias.scope !45, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i, align 8, !alias.scope !45, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i, i64 %2)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !46, !noalias !47 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %.sroa.0.0.in.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.i.i.i15.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i, align 8, !alias.scope !50, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i.i16.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.3.0.i.i.i17.i.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i, align 8, !alias.scope !50, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i, i64 %2)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i22.i.i), !alias.scope !51, !noalias !52 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %i.r = sub i64 %.sroa.3.0.i.i.i17.i.i, %2
  %spec.select.i.i.i.i23.i.i = select i1 %i.q, i64 %i.r, i64 %i.p
  %i.s = icmp sgt i64 %spec.select.i.i.i.i23.i.i, 0
  %i.t = select i1 %i.s, i64 %.sroa.05.024.i.i, i64 %i.l, !unpredictable !4 ; 2 uses
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
  %.sroa.4.0.i.i.ph = phi i64 [ %i.w, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.y = icmp ult i64 %i.d, 64051194700380388
  tail call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %0, align 8, !range !5, !alias.scope !53, !noundef !4
  %i.aa = icmp eq i64 %i.d, %i.z
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #21, !noalias !54
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !53
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = phi ptr [ %.pre, %bb.d ], [ %i.b, %bb.c ]
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr %i.ab, i64 %.sroa.4.0.i.i.ph ; 7 uses
  %i.ad = icmp samesign ult i64 %.sroa.4.0.i.i.ph, %i.d
  br i1 %i.ad, label %bb.f, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.af = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph
  %i.ag = mul nuw nsw i64 %i.af, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ac, i64 %i.ag, i1 false), !noalias !54
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit: ; preds = %bb.e, %bb.f
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
  store i64 %i.ah, ptr %i.c, align 8, !alias.scope !53
  br label %bb.j

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ai = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.d
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #22
  store i64 -1, ptr %i.e, align 8
  store ptr %1, ptr %.sroa.0.0.in.i.i.i.i.i, align 8
  store i64 %2, ptr %.sroa.3.0.in.i.i.i.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 2, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23
  unreachable

bb.j:                                             ; preds = %bb.h, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 4, 10) %2, double noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  switch i64 %i.d, label %.lr.ph.i.i [
    i64 0, label %.thread
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.t, %.lr.ph.i.i ] ; 4 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.05.0.lcssa.i.i ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %.sroa.0.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !alias.scope !83, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i, align 8, !alias.scope !83, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i, i64 %2)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !84, !noalias !85 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %.sroa.0.0.in.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.i.i.i15.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i, align 8, !alias.scope !88, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i.i16.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.3.0.i.i.i17.i.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i, align 8, !alias.scope !88, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i, i64 %2)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i22.i.i), !alias.scope !89, !noalias !90 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %i.r = sub i64 %.sroa.3.0.i.i.i17.i.i, %2
  %spec.select.i.i.i.i23.i.i = select i1 %i.q, i64 %i.r, i64 %i.p
  %i.s = icmp sgt i64 %spec.select.i.i.i.i23.i.i, 0
  %i.t = select i1 %i.s, i64 %.sroa.05.024.i.i, i64 %i.l, !unpredictable !4 ; 2 uses
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
  %.sroa.4.0.i.i.ph60 = phi i64 [ %i.w, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.z = load i64, ptr %0, align 8, !range !5, !alias.scope !91, !noundef !4
  %i.aa = icmp eq i64 %i.d, %i.z
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #21, !noalias !92
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !91
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.ab = phi ptr [ %.pre, %bb.c ], [ %i.b, %.thread ]
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr %i.ab, i64 %.sroa.4.0.i.i.ph60 ; 13 uses
  %i.ad = icmp samesign ult i64 %.sroa.4.0.i.i.ph60, %i.d
  br i1 %i.ad, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.af = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph60
  %i.ag = mul nuw nsw i64 %i.af, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ac, i64 %i.ag, i1 false), !noalias !92
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit: ; preds = %bb.d, %bb.e
  store i64 -1, ptr %i.ac, align 8
  %.sroa.040.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %1, ptr %.sroa.040.sroa.4.0..sroa_idx, align 8
  %.sroa.040.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %2, ptr %.sroa.040.sroa.5.0..sroa_idx, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 0, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i64 0, ptr %.sroa.643.0..sroa_idx, align 8
  %.sroa.845.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store i64 0, ptr %.sroa.845.0..sroa_idx, align 8
  %.sroa.1047.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  store i64 0, ptr %.sroa.1047.0..sroa_idx, align 8
  %.sroa.1249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  store i64 0, ptr %.sroa.1249.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  store i64 -1, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  store double %3, ptr %.sroa.21.0..sroa_idx, align 8
  %i.ah = add nuw nsw i64 %i.d, 1
  store i64 %i.ah, ptr %i.c, align 8, !alias.scope !91
  br label %bb.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ai = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.d
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #22
  store i64 -1, ptr %i.e, align 8
  store ptr %1, ptr %.sroa.0.0.in.i.i.i.i.i, align 8
  store i64 %2, ptr %.sroa.3.0.in.i.i.i.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.aj, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 0, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 0, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i64 0, ptr %.sroa.617.0..sroa_idx, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 0, ptr %.sroa.718.0..sroa_idx, align 8
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i64 -1, ptr %.sroa.819.0..sroa_idx, align 8
  %.sroa.920.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.920.0..sroa_idx, align 8
  %.sroa.1321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store double %3, ptr %.sroa.1321.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23
  unreachable

bb.i:                                             ; preds = %bb.g, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 4, 10) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  switch i64 %i.d, label %.lr.ph.i.i [
    i64 0, label %.thread
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.t, %.lr.ph.i.i ] ; 4 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.05.0.lcssa.i.i ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %.sroa.0.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !alias.scope !121, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i, align 8, !alias.scope !121, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i, i64 %2)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !122, !noalias !123 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %.sroa.0.0.in.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.i.i.i15.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i, align 8, !alias.scope !126, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i.i16.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.3.0.i.i.i17.i.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i, align 8, !alias.scope !126, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i, i64 %2)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i22.i.i), !alias.scope !127, !noalias !128 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %i.r = sub i64 %.sroa.3.0.i.i.i17.i.i, %2
  %spec.select.i.i.i.i23.i.i = select i1 %i.q, i64 %i.r, i64 %i.p
  %i.s = icmp sgt i64 %spec.select.i.i.i.i23.i.i, 0
  %i.t = select i1 %i.s, i64 %.sroa.05.024.i.i, i64 %i.l, !unpredictable !4 ; 2 uses
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
  %.sroa.4.0.i.i.ph60 = phi i64 [ %i.w, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.z = sitofp i64 %3 to double
  %i.aa = load i64, ptr %0, align 8, !range !5, !alias.scope !129, !noundef !4
  %i.ab = icmp eq i64 %i.d, %i.aa
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #21, !noalias !130
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !129
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.ac = phi ptr [ %.pre, %bb.c ], [ %i.b, %.thread ]
  %i.ad = getelementptr inbounds nuw [144 x i8], ptr %i.ac, i64 %.sroa.4.0.i.i.ph60 ; 13 uses
  %i.ae = icmp samesign ult i64 %.sroa.4.0.i.i.ph60, %i.d
  br i1 %i.ae, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.ag = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph60
  %i.ah = mul nuw nsw i64 %i.ag, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.ad, i64 %i.ah, i1 false), !noalias !130
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit: ; preds = %bb.d, %bb.e
  store i64 -1, ptr %i.ad, align 8
  %.sroa.040.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %1, ptr %.sroa.040.sroa.4.0..sroa_idx, align 8
  %.sroa.040.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %2, ptr %.sroa.040.sroa.5.0..sroa_idx, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 0, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 0, ptr %.sroa.643.0..sroa_idx, align 8
  %.sroa.845.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store i64 0, ptr %.sroa.845.0..sroa_idx, align 8
  %.sroa.1047.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  store i64 0, ptr %.sroa.1047.0..sroa_idx, align 8
  %.sroa.1249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  store i64 0, ptr %.sroa.1249.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  store i64 -1, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  store double %i.z, ptr %.sroa.21.0..sroa_idx, align 8
  %i.ai = add nuw nsw i64 %i.d, 1
  store i64 %i.ai, ptr %i.c, align 8, !alias.scope !129
  br label %bb.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.aj = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.d
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = sitofp i64 %3 to double
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #22
  store i64 -1, ptr %i.e, align 8
  store ptr %1, ptr %.sroa.0.0.in.i.i.i.i.i, align 8
  store i64 %2, ptr %.sroa.3.0.in.i.i.i.i.i, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.al, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 0, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 0, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i64 0, ptr %.sroa.617.0..sroa_idx, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 0, ptr %.sroa.718.0..sroa_idx, align 8
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i64 -1, ptr %.sroa.819.0..sroa_idx, align 8
  %.sroa.920.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.920.0..sroa_idx, align 8
  %.sroa.1321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store double %i.ak, ptr %.sroa.1321.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23
  unreachable

bb.i:                                             ; preds = %bb.g, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !4 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit, label %bb.b

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !133, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !133
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockEECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7ggdWxGWrR_9uu_expand.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = ptrtoint ptr %.val to i64                ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i
    i64 1, label %bb.d
  ], !prof !7

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !136
  store i8 3, ptr %i.a, align 8, !alias.scope !136
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7ggdWxGWrR_9uu_expand.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7ggdWxGWrR_9uu_expand.exit: ; preds = %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std2fs4FileECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #0 {
bb.a:
  %.val = load i32, ptr %0, align 4, !range !8, !noundef !4
  %i.a = tail call noundef i32 @close(i32 noundef %.val) #22 ; 0 uses
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs7ggdWxGWrR_9uu_expand.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs7ggdWxGWrR_9uu_expand.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs7ggdWxGWrR_9uu_expand.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %.val.i = load i64, ptr %0, align 8, !range !5, !alias.scope !139, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !139, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !139
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_0
begin_hunk_1_@_RNvMs_Cs7ggdWxGWrR_9uu_expandNtB4_7Options3new:bb.a
bb.s:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaEBP_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !857
  store i64 0, ptr %i.n, align 8, !noalias !857
  %i.gv = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 7 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.gv, align 8, !noalias !857
  %i.gw = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store i64 0, ptr %i.gw, align 8, !noalias !857
  %i.gx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %.preheader.i52

.preheader.i52:                                   ; preds = %.loopexit217.i, %bb.s
  %i.gz = phi i64 [ 0, %bb.s ], [ %i.jb, %.loopexit217.i ] ; 2 uses
  %.sroa.03.0299.i = phi i8 [ 0, %bb.s ], [ %.sroa.03.2223.i, %.loopexit217.i ] ; 2 uses
  %.sroa.06.0298.i = phi i1 [ false, %bb.s ], [ %.sroa.06.1.i, %.loopexit217.i ] ; 3 uses
  %.sroa.0.0297.i = phi i64 [ 0, %bb.s ], [ %.sroa.0.1.i, %.loopexit217.i ] ; 4 uses
  %.sroa.11133.0296.i = phi ptr [ %i.gr, %bb.s ], [ %.sroa.11133.3.i, %.loopexit217.i ]
  %.sroa.17.0295.i = phi i64 [ 0, %bb.s ], [ %.sroa.17.2.i, %.loopexit217.i ]
  br label %bb.t

bb.t:                                             ; preds = %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaENtB5_8Searcher4nextB17_.exit.i.i.i100.i, %.preheader.i52
  %.sroa.17.1.i = phi i64 [ %i.in, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaENtB5_8Searcher4nextB17_.exit.i.i.i100.i ], [ %.sroa.17.0295.i, %.preheader.i52 ] ; 3 uses
  %.sroa.11133.1.i = phi ptr [ %.sroa.11133.2.i, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaENtB5_8Searcher4nextB17_.exit.i.i.i100.i ], [ %.sroa.11133.0296.i, %.preheader.i52 ] ; 7 uses
  %i.ha = ptrtoint ptr %.sroa.11133.1.i to i64
  %i.hb = icmp eq ptr %.sroa.11133.1.i, %i.ey     ; 2 uses
  br i1 %i.hb, label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE7get_endBY_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.11133.1.i, i64 1 ; 3 uses
  %i.hd = load i8, ptr %.sroa.11133.1.i, align 1, !alias.scope !853, !noalias !858, !noundef !4 ; 5 uses
  %i.he = icmp sgt i8 %i.hd, -1
  br i1 %i.he, label %bb.v, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i99.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i99.i: ; preds = %bb.u
  %i.hf = and i8 %i.hd, 31
  %i.hg = zext nneg i8 %i.hf to i32               ; 3 uses
  %i.hh = icmp ne ptr %i.hc, %i.ey
  call void @llvm.assume(i1 %i.hh)
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.11133.1.i, i64 2 ; 3 uses
  %i.hj = load i8, ptr %i.hc, align 1, !alias.scope !853, !noalias !858, !noundef !4
  %i.hk = shl nuw nsw i32 %i.hg, 6
  %i.hl = and i8 %i.hj, 63
  %i.hm = zext nneg i8 %i.hl to i32               ; 2 uses
  %i.hn = or disjoint i32 %i.hk, %i.hm
  %i.ho = icmp samesign ugt i8 %i.hd, -33
  br i1 %i.ho, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i102.i, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaENtB5_8Searcher4nextB17_.exit.i.i.i100.i

bb.v:                                             ; preds = %bb.u
  %i.hp = zext nneg i8 %i.hd to i32
  br label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaENtB5_8Searcher4nextB17_.exit.i.i.i100.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i102.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i99.i
  %i.hq = icmp ne ptr %i.hi, %i.ey
  call void @llvm.assume(i1 %i.hq)
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.11133.1.i, i64 3 ; 3 uses
  %i.hs = load i8, ptr %i.hi, align 1, !alias.scope !853, !noalias !858, !noundef !4
  %i.ht = shl nuw nsw i32 %i.hm, 6
  %i.hu = and i8 %i.hs, 63
  %i.hv = zext nneg i8 %i.hu to i32
  %i.hw = or disjoint i32 %i.ht, %i.hv            ; 2 uses
  %i.hx = shl nuw nsw i32 %i.hg, 12
  %i.hy = or disjoint i32 %i.hw, %i.hx
  %i.hz = icmp samesign ugt i8 %i.hd, -17
  br i1 %i.hz, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit16.i.i.i.i.i.i103.i, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaENtB5_8Searcher4nextB17_.exit.i.i.i100.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit16.i.i.i.i.i.i103.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i102.i
  %i.ia = icmp ne ptr %i.hr, %i.ey
  call void @llvm.assume(i1 %i.ia)
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.11133.1.i, i64 4
  %i.ic = load i8, ptr %i.hr, align 1, !alias.scope !853, !noalias !858, !noundef !4
  %i.id = shl nuw nsw i32 %i.hg, 18
  %i.ie = and i32 %i.id, 1835008
  %i.if = shl nuw nsw i32 %i.hw, 6
  %i.ig = and i8 %i.ic, 63
  %i.ih = zext nneg i8 %i.ig to i32
  %i.ii = or disjoint i32 %i.if, %i.ih
  %i.ij = or disjoint i32 %i.ii, %i.ie
  br label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaENtB5_8Searcher4nextB17_.exit.i.i.i100.i

_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaENtB5_8Searcher4nextB17_.exit.i.i.i100.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit16.i.i.i.i.i.i103.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i102.i, %bb.v, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i99.i
  %.sroa.11133.2.i = phi ptr [ %i.hc, %bb.v ], [ %i.ib, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit16.i.i.i.i.i.i103.i ], [ %i.hr, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i102.i ], [ %i.hi, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i99.i ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i.i101.i = phi i32 [ %i.hp, %bb.v ], [ %i.ij, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit16.i.i.i.i.i.i103.i ], [ %i.hy, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i102.i ], [ %i.hn, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i99.i ] ; 2 uses
  %i.ik = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i101.i, 1114112
  call void @llvm.assume(i1 %i.ik)
  %i.il = ptrtoint ptr %.sroa.11133.2.i to i64
  %i.im = sub i64 %i.il, %i.ha
  %i.in = add i64 %i.im, %.sroa.17.1.i            ; 3 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i101.i, label %bb.t [
    i32 44, label %bb.w
    i32 32, label %bb.w
  ]

bb.w:                                             ; preds = %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaENtB5_8Searcher4nextB17_.exit.i.i.i100.i, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaENtB5_8Searcher4nextB17_.exit.i.i.i100.i
  %i.io = sub nuw i64 %.sroa.17.1.i, %.sroa.0.0297.i
  br label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE4nextBY_.exit.i

_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE7get_endBY_.exit.i.i: ; preds = %bb.t
  %i.ip = add i64 %i.fa, %.sroa.0.0297.i
  %i.iq = sub i64 %i.ex, %i.ip
  br label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE4nextBY_.exit.i

_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE4nextBY_.exit.i: ; preds = %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE7get_endBY_.exit.i.i, %bb.w
  %.sroa.17.2.i = phi i64 [ %i.in, %bb.w ], [ %.sroa.17.1.i, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE7get_endBY_.exit.i.i ]
  %.sroa.11133.3.i = phi ptr [ %.sroa.11133.2.i, %bb.w ], [ %i.ey, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE7get_endBY_.exit.i.i ]
  %.sroa.0.1.i = phi i64 [ %i.in, %bb.w ], [ %.sroa.0.0297.i, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE7get_endBY_.exit.i.i ]
  %.sroa.4.1.i.i = phi i64 [ %i.io, %bb.w ], [ %i.iq, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE7get_endBY_.exit.i.i ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sroa.0.0297.i ; 2 uses
  %.not.i = icmp eq i64 %.sroa.4.1.i.i, 0
  br i1 %.not.i, label %.loopexit217.i, label %.lr.ph.i53

bb.x:                                             ; preds = %.loopexit217.i
  %i.ir = icmp ult i64 %i.jb, 1152921504606846976
  call void @llvm.assume(i1 %i.ir)
  switch i64 %i.jb, label %bb.z [
    i64 0, label %bb.aa
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %.thread.i
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.sroa.430.i.sroa.6.7.copyload = phi i64 [ 1, %bb.y ], [ %i.jb, %bb.x ]
  %i.is = phi i8 [ 0, %bb.y ], [ %.sroa.03.2223.i, %bb.x ]
  %.sroa.430.i.sroa.3.7.copyload = load i64, ptr %i.n, align 8, !noalias !857
  %.sroa.430.i.sroa.5.7.copyload = load i64, ptr %i.gv, align 8, !noalias !857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !857
  %i.it = inttoptr i64 %.sroa.430.i.sroa.5.7.copyload to ptr
  br label %_RNvCs7ggdWxGWrR_9uu_expand14tabstops_parse.exit.thread

bb.aa:                                            ; preds = %bb.x
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !856
  %i.iu = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8, i64 noundef range(i64 1, 9) 8) #22, !noalias !856 ; 3 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.ab, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit104.i, !prof !13

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #25, !noalias !856
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit104.i: ; preds = %bb.aa
  store i64 8, ptr %i.iu, align 8, !noalias !856
  %.val96.i = load i64, ptr %i.n, align 8, !range !5, !noalias !857, !noundef !4 ; 2 uses
  %i.iw = icmp eq i64 %.val96.i, 0
  br i1 %i.iw, label %.thread.i, label %bb.ac

bb.ac:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit104.i
  %.val97.i = load ptr, ptr %i.gv, align 8, !noalias !857, !nonnull !4, !noundef !4
  %i.ix = shl nuw i64 %.val96.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val97.i, i64 noundef %i.ix, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !856
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ac, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit104.i
  store i64 1, ptr %i.n, align 8, !noalias !857
  store ptr %i.iu, ptr %i.gv, align 8, !noalias !857
  br label %bb.y

.lr.ph.i53:                                       ; preds = %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE4nextBY_.exit.i, %bb.af
  %.sroa.03.2293.i = phi i8 [ %.sroa.03.3.i, %bb.af ], [ %.sroa.03.0299.i, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE4nextBY_.exit.i ] ; 3 uses
  %.sroa.039.0292.i = phi i64 [ %i.iy, %bb.af ], [ 0, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE4nextBY_.exit.i ] ; 4 uses
  %i.iy = add nuw i64 %.sroa.039.0292.i, 1        ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 %.sroa.039.0292.i
  %i.ja = load i8, ptr %i.iz, align 1, !alias.scope !853, !noundef !4
  switch i8 %i.ja, label %bb.ad [
    i8 43, label %bb.af
    i8 47, label %bb.ae
  ]

.loopexit217.i:                                   ; preds = %bb.af, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs7ggdWxGWrR_9uu_expand.exit.i, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE4nextBY_.exit.i
  %i.jb = phi i64 [ %i.kt, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs7ggdWxGWrR_9uu_expand.exit.i ], [ %i.gz, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE4nextBY_.exit.i ], [ %i.gz, %bb.af ] ; 4 uses
  %.sroa.03.2223.i = phi i8 [ %.sroa.03.2293.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs7ggdWxGWrR_9uu_expand.exit.i ], [ %.sroa.03.0299.i, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE4nextBY_.exit.i ], [ %.sroa.03.3.i, %bb.af ] ; 2 uses
  %.sroa.06.1.i = phi i1 [ %.not90.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs7ggdWxGWrR_9uu_expand.exit.i ], [ %.sroa.06.0298.i, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE4nextBY_.exit.i ], [ %.sroa.06.0298.i, %bb.af ]
  br i1 %i.hb, label %bb.x, label %.preheader.i52

bb.ad:                                            ; preds = %.lr.ph.i53
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 %.sroa.039.0292.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !857
  %i.jd = sub nuw i64 %.sroa.4.1.i.i, %.sroa.039.0292.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jc, i64 noundef %i.jd) #22, !noalias !856
  call void @llvm.experimental.noalias.scope.decl(metadata !859)
  %i.je = load i64, ptr %i.m, align 8, !range !11, !alias.scope !859, !noalias !857, !noundef !4
  %i.jf = trunc nuw i64 %i.je to i1
  br i1 %i.jf, label %bb.ag, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs7ggdWxGWrR_9uu_expand.exit.i, !prof !13

bb.ae:                                            ; preds = %.lr.ph.i53
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i53
  %.sroa.03.3.i = phi i8 [ 1, %bb.ae ], [ 2, %.lr.ph.i53 ] ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.iy, %.sroa.4.1.i.i
  br i1 %exitcond.not.i, label %.loopexit217.i, label %.lr.ph.i53

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.gx, i64 16, i1 false), !noalias !857
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 43, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #23, !noalias !861
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs7ggdWxGWrR_9uu_expand.exit.i: ; preds = %bb.ad
  %i.jg = load ptr, ptr %i.gx, align 8, !alias.scope !859, !noalias !857, !nonnull !4, !noundef !4 ; 8 uses
  %i.jh = load i64, ptr %i.gy, align 8, !alias.scope !859, !noalias !857, !noundef !4 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !857
  switch i64 %i.jh, label %thread-pre-split.i.i [
    i64 0, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit.thread248
    i64 1, label %bb.ah
  ]

bb.ah:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs7ggdWxGWrR_9uu_expand.exit.i
  %i.ji = load i8, ptr %i.jg, align 1, !alias.scope !862, !noalias !856, !noundef !4 ; 2 uses
  switch i8 %i.ji, label %bb.ai [
    i8 43, label %.loopexit.thread.i
    i8 45, label %.loopexit.thread.i
  ]

thread-pre-split.i.i:                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs7ggdWxGWrR_9uu_expand.exit.i
  %.pr.i.i = load i8, ptr %i.jg, align 1, !alias.scope !862, !noalias !856
  br label %bb.ai

bb.ai:                                            ; preds = %thread-pre-split.i.i, %bb.ah
  %i.jj = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.ji, %bb.ah ]
  %cond.i.i = icmp eq i8 %i.jj, 43                ; 2 uses
  %i.jk = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.jh, %i.jk      ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i105.i = getelementptr inbounds nuw i8, ptr %i.jg, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.jl = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.jl, label %.preheader.i.i, label %.preheader56.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.ai
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5366.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i, label %.lr.ph.i.i

.preheader56.i.i:                                 ; preds = %bb.al
  %.not52.i.i = icmp eq i64 %i.jn, 0
  br i1 %.not52.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.preheader56.i.i.preheader

.preheader56.i.i.preheader:                       ; preds = %bb.ai, %.preheader56.i.i
  %.sroa.0.1.i106.i986 = phi ptr [ %i.jm, %.preheader56.i.i ], [ %.sroa.0.0.i105.i, %bb.ai ] ; 2 uses
  %.sroa.15.1.i.i985 = phi i64 [ %i.jn, %.preheader56.i.i ], [ %.sroa.15.0.i.i, %bb.ai ]
  %.sroa.042.0.i.i984 = phi i64 [ %i.jy, %.preheader56.i.i ], [ 0, %bb.ai ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i106.i986, i64 1
  %i.jn = add nsw i64 %.sroa.15.1.i.i985, -1      ; 2 uses
  %i.jo = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i984, i64 10) ; 2 uses
  %i.jp = extractvalue { i64, i1 } %i.jo, 0       ; 2 uses
  %i.jq = extractvalue { i64, i1 } %i.jo, 1
  %i.jr = load i8, ptr %.sroa.0.1.i106.i986, align 1, !alias.scope !862, !noalias !856, !noundef !4 ; 2 uses
  br i1 %i.jq, label %bb.ak, label %bb.aj, !prof !13

bb.aj:                                            ; preds = %.preheader56.i.i.preheader
  %i.js = zext i8 %i.jr to i32
  %i.jt = add nsw i32 %i.js, -48                  ; 2 uses
  %i.ju = icmp ult i32 %i.jt, 10
  br i1 %i.ju, label %bb.al, label %.loopexit.i56

bb.ak:                                            ; preds = %.preheader56.i.i.preheader
  %i.jv = add i8 %i.jr, -48
  %i.jw = icmp ult i8 %i.jv, 10
  br i1 %i.jw, label %.loopexit216.i, label %.loopexit.i56

bb.al:                                            ; preds = %bb.aj
  %i.jx = zext nneg i32 %i.jt to i64
  %i.jy = add i64 %i.jp, %i.jx                    ; 3 uses
  %i.jz = icmp ult i64 %i.jy, %i.jp
  br i1 %i.jz, label %.loopexit216.i, label %.preheader56.i.i, !prof !13

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.am
  %.sroa.0.269.i.i = phi ptr [ %i.kg, %bb.am ], [ %.sroa.0.0.i105.i, %.preheader.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.kf, %bb.am ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.ki, %bb.am ], [ 0, %.preheader.i.i ]
  %i.ka = load i8, ptr %.sroa.0.269.i.i, align 1, !alias.scope !862, !noalias !856, !noundef !4
  %i.kb = zext i8 %i.ka to i32
  %i.kc = add nsw i32 %i.kb, -48                  ; 2 uses
  %i.kd = icmp ult i32 %i.kc, 10
  br i1 %i.kd, label %bb.am, label %.loopexit.i56

bb.am:                                            ; preds = %.lr.ph.i.i
  %i.ke = mul i64 %.sroa.042.267.i.i, 10
  %i.kf = add nsw i64 %.sroa.15.268.i.i, -1       ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i, i64 1
  %i.kh = zext nneg i32 %i.kc to i64
  %i.ki = add i64 %i.ke, %i.kh                    ; 2 uses
  %.not53.i.i = icmp eq i64 %i.kf, 0
  br i1 %.not53.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i: ; preds = %.preheader56.i.i, %bb.am
  %.sroa.12135.0.i = phi i64 [ %i.ki, %bb.am ], [ %i.jy, %.preheader56.i.i ] ; 3 uses
  %i.kj = icmp eq i64 %.sroa.12135.0.i, 0
  br i1 %i.kj, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i, label %bb.an

bb.an:                                            ; preds = %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i
  %i.kk = load i64, ptr %i.gw, align 8, !noalias !857, !noundef !4 ; 5 uses
  %.not88.i = icmp eq i64 %i.kk, 0
  br i1 %.not88.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kl = load ptr, ptr %i.gv, align 8, !noalias !857, !nonnull !4, !noundef !4
  %i.km = getelementptr [8 x i8], ptr %i.kl, i64 %i.kk
  %i.kn = getelementptr i8, ptr %i.km, i64 -8
  %i.ko = load i64, ptr %i.kn, align 8, !noalias !856, !noundef !4
  %.not89.i = icmp ult i64 %i.ko, %.sroa.12135.0.i
  br i1 %.not89.i, label %bb.ap, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br i1 %.sroa.06.0298.i, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not90.i = icmp ne i8 %.sroa.03.2293.i, 0
  %i.kp = load i64, ptr %i.n, align 8, !range !5, !alias.scope !863, !noalias !857, !noundef !4
  %i.kq = icmp eq i64 %i.kk, %i.kp
  br i1 %i.kq, label %bb.ar, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs7ggdWxGWrR_9uu_expand.exit.i

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsb8JHtmRizrl_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #21, !noalias !856
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs7ggdWxGWrR_9uu_expand.exit.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs7ggdWxGWrR_9uu_expand.exit.i: ; preds = %bb.ar, %bb.aq
  %i.kr = load ptr, ptr %i.gv, align 8, !alias.scope !863, !noalias !857, !nonnull !4, !noundef !4
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.kk
  store i64 %.sroa.12135.0.i, ptr %i.ks, align 8, !noalias !856
  %i.kt = add i64 %i.kk, 1                        ; 2 uses
  store i64 %i.kt, ptr %i.gw, align 8, !alias.scope !863, !noalias !857
  br label %.loopexit217.i

bb.as:                                            ; preds = %bb.ap
  %i.ku = icmp eq i8 %.sroa.03.2293.i, 1
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !856
  %i.kv = call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #22, !noalias !856 ; 3 uses
  %i.kw = icmp eq ptr %i.kv, null                 ; 2 uses
  br i1 %i.ku, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  br i1 %i.kw, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %bb.as
  br i1 %i.kw, label %bb.ax, label %bb.aw

bb.av:                                            ; preds = %bb.at
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #25, !noalias !856
  unreachable

bb.aw:                                            ; preds = %bb.au, %bb.at
  %.sink.i = phi i8 [ 47, %bb.au ], [ 43, %bb.at ]
  store i8 %.sink.i, ptr %i.kv, align 1, !noalias !856
  %i.kx = ptrtoint ptr %i.kv to i64
  br label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i

bb.ax:                                            ; preds = %bb.au
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #25, !noalias !856
  unreachable

_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i: ; preds = %bb.ao, %.preheader.i.i, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit120.thread204.i, %bb.bj, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit.thread248, %bb.aw
  %.sroa.13.sroa.11.sroa.0.0 = phi i56 [ %.sroa.13.sroa.11.0.extract.trunc130, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit120.thread204.i ], [ 0, %bb.aw ], [ %.sroa.13.sroa.11.0.extract.trunc, %bb.bj ], [ %.sroa.13.sroa.11.0.extract.trunc128, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit.thread248 ], [ undef, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ undef, %.preheader.i.i ], [ undef, %bb.ao ]
  %.sroa.13.sroa.0.0 = phi i8 [ %.sroa.13.sroa.0.0.extract.trunc126, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit120.thread204.i ], [ 1, %bb.aw ], [ %.sroa.13.sroa.0.0.extract.trunc, %bb.bj ], [ %.sroa.13.sroa.0.0.extract.trunc125, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit.thread248 ], [ undef, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ undef, %.preheader.i.i ], [ undef, %bb.ao ]
  %.sroa.42.0 = phi i64 [ undef, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit120.thread204.i ], [ undef, %bb.aw ], [ %i.my, %bb.bj ], [ undef, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit.thread248 ], [ undef, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ undef, %.preheader.i.i ], [ undef, %bb.ao ]
  %.sroa.38.0 = phi i64 [ undef, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit120.thread204.i ], [ undef, %bb.aw ], [ %i.np, %bb.bj ], [ undef, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit.thread248 ], [ undef, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ undef, %.preheader.i.i ], [ undef, %bb.ao ]
  %.sroa.31.0 = phi i64 [ %i.jh, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit120.thread204.i ], [ 1, %bb.aw ], [ %i.my, %bb.bj ], [ %.sroa.4191.0253, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit.thread248 ], [ undef, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ undef, %.preheader.i.i ], [ undef, %bb.ao ]
  %.sroa.24.0 = phi i64 [ %i.nq, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit120.thread204.i ], [ %i.kx, %bb.aw ], [ 1, %bb.bj ], [ %.sroa.9192.0254, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit.thread248 ], [ undef, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ undef, %.preheader.i.i ], [ undef, %bb.ao ]
  %.sroa.0120.0 = phi i64 [ -9223372036854775804, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit120.thread204.i ], [ -9223372036854775806, %bb.aw ], [ 1, %bb.bj ], [ -9223372036854775808, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit.thread248 ], [ -9223372036854775803, %bb.ao ], [ -9223372036854775805, %.preheader.i.i ], [ -9223372036854775805, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i ]
  %.val.i55 = load i64, ptr %i.n, align 8, !range !5, !noalias !857, !noundef !4 ; 2 uses
  %i.ky = icmp eq i64 %.val.i55, 0
  br i1 %i.ky, label %_RNvCs7ggdWxGWrR_9uu_expand14tabstops_parse.exit, label %bb.ay

bb.ay:                                            ; preds = %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i
  %.val95.i = load ptr, ptr %i.gv, align 8, !noalias !857, !nonnull !4, !noundef !4
  %i.kz = shl nuw i64 %.val.i55, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val95.i, i64 noundef %i.kz, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !856
  br label %_RNvCs7ggdWxGWrR_9uu_expand14tabstops_parse.exit

.loopexit.thread.i:                               ; preds = %bb.ah, %bb.ah
  %i.la = getelementptr inbounds nuw i8, ptr %i.jg, i64 1
  br label %.lr.ph.i.i.i111.preheader.i

.loopexit.i56:                                    ; preds = %bb.aj, %.lr.ph.i.i, %bb.ak
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jh
  %i.lc = icmp samesign eq i64 %i.jh, 0
  br i1 %i.lc, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit.thread248, label %.lr.ph.i.i.i111.preheader.i

.lr.ph.i.i.i111.preheader.i:                      ; preds = %.loopexit.i56, %.loopexit.thread.i
  %2 = phi i64 [ 1, %.loopexit.thread.i ], [ %i.jh, %.loopexit.i56 ] ; 2 uses
  %i.ld = phi ptr [ %i.la, %.loopexit.thread.i ], [ %i.lb, %.loopexit.i56 ] ; 4 uses
  br label %.lr.ph.i.i.i111.i

.lr.ph.i.i.i111.i:                                ; preds = %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc10is_numericENtB5_8Searcher4nextCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i, %.lr.ph.i.i.i111.preheader.i
  %i.le = phi i64 [ %i.mt, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc10is_numericENtB5_8Searcher4nextCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i111.preheader.i ] ; 4 uses
  %i.lf = phi ptr [ %i.mp, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc10is_numericENtB5_8Searcher4nextCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i ], [ %i.jg, %.lr.ph.i.i.i111.preheader.i ] ; 6 uses
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 1 ; 3 uses
  %i.li = load i8, ptr %i.lf, align 1, !alias.scope !864, !noalias !865, !noundef !4 ; 5 uses
  %i.lj = icmp sgt i8 %i.li, -1
  br i1 %i.lj, label %bb.az, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i112.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i112.i: ; preds = %.lr.ph.i.i.i111.i
  %i.lk = and i8 %i.li, 31
  %i.ll = zext nneg i8 %i.lk to i32               ; 3 uses
  %i.lm = icmp ne ptr %i.lh, %i.ld
  call void @llvm.assume(i1 %i.lm)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lf, i64 2 ; 3 uses
  %i.lo = load i8, ptr %i.lh, align 1, !alias.scope !864, !noalias !865, !noundef !4
  %i.lp = shl nuw nsw i32 %i.ll, 6
  %i.lq = and i8 %i.lo, 63
  %i.lr = zext nneg i8 %i.lq to i32               ; 2 uses
  %i.ls = or disjoint i32 %i.lp, %i.lr
  %i.lt = icmp samesign ugt i8 %i.li, -33
  br i1 %i.lt, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i115.i, label %bb.ba

bb.az:                                            ; preds = %.lr.ph.i.i.i111.i
  %i.lu = zext nneg i8 %i.li to i32
  br label %bb.ba

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i115.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i112.i
  %i.lv = icmp ne ptr %i.ln, %i.ld
  call void @llvm.assume(i1 %i.lv)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lf, i64 3 ; 3 uses
  %i.lx = load i8, ptr %i.ln, align 1, !alias.scope !864, !noalias !865, !noundef !4
  %i.ly = shl nuw nsw i32 %i.lr, 6
  %i.lz = and i8 %i.lx, 63
  %i.ma = zext nneg i8 %i.lz to i32
  %i.mb = or disjoint i32 %i.ly, %i.ma            ; 2 uses
  %i.mc = shl nuw nsw i32 %i.ll, 12
  %i.md = or disjoint i32 %i.mb, %i.mc
  %i.me = icmp samesign ugt i8 %i.li, -17
  br i1 %i.me, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit16.i.i.i.i.i.i116.i, label %bb.ba

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit16.i.i.i.i.i.i116.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i115.i
  %i.mf = icmp ne ptr %i.lw, %i.ld
  call void @llvm.assume(i1 %i.mf)
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.mh = load i8, ptr %i.lw, align 1, !alias.scope !864, !noalias !865, !noundef !4
  %i.mi = shl nuw nsw i32 %i.ll, 18
  %i.mj = and i32 %i.mi, 1835008
  %i.mk = shl nuw nsw i32 %i.mb, 6
  %i.ml = and i8 %i.mh, 63
  %i.mm = zext nneg i8 %i.ml to i32
  %i.mn = or disjoint i32 %i.mk, %i.mm
  %i.mo = or disjoint i32 %i.mn, %i.mj
  br label %bb.ba

bb.ba:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit16.i.i.i.i.i.i116.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i115.i, %bb.az, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i112.i
  %i.mp = phi ptr [ %i.lw, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i115.i ], [ %i.mg, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit16.i.i.i.i.i.i116.i ], [ %i.ln, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i112.i ], [ %i.lh, %bb.az ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i.i113.i = phi i32 [ %i.md, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i115.i ], [ %i.mo, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit16.i.i.i.i.i.i116.i ], [ %i.ls, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i112.i ], [ %i.lu, %bb.az ] ; 4 uses
  %i.mq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i113.i, 1114112
  call void @llvm.assume(i1 %i.mq)
  %i.mr = ptrtoint ptr %i.mp to i64
  %i.ms = sub i64 %i.le, %i.lg
  %i.mt = add i64 %i.ms, %i.mr
  %i.mu = add nsw i32 %.sroa.4.0.i.ph.i.i.i.i.i113.i, -48
  %or.cond.i.i.i.i.i.i.i.i = icmp ult i32 %i.mu, 10
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc10is_numericENtB5_8Searcher4nextCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.mv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i113.i, 178
  br i1 %i.mv, label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc10is_numericECs7ggdWxGWrR_9uu_expand.exit.i, label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc10is_numericNtB5_11MultiCharEq7matchesCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i.i

_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc10is_numericNtB5_11MultiCharEq7matchesCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i.i: ; preds = %bb.bb
  %i.mw = call noundef zeroext i1 @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data1n11lookup_slow(i32 noundef range(i32 0, 1114112) %.sroa.4.0.i.ph.i.i.i.i.i113.i) #21, !noalias !866
  br i1 %i.mw, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc10is_numericENtB5_8Searcher4nextCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc10is_numericECs7ggdWxGWrR_9uu_expand.exit.i

_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc10is_numericENtB5_8Searcher4nextCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc10is_numericNtB5_11MultiCharEq7matchesCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i.i, %bb.ba
  %i.mx = icmp eq ptr %i.mp, %i.ld
  br i1 %i.mx, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit.thread248, label %.lr.ph.i.i.i111.i

_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc10is_numericECs7ggdWxGWrR_9uu_expand.exit.i: ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc10is_numericNtB5_11MultiCharEq7matchesCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i.i, %bb.bb
  %i.my = sub nuw i64 %2, %i.le                   ; 13 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.le ; 6 uses
  %.not.i.i54 = icmp eq i64 %2, %i.le
  br i1 %.not.i.i54, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit.thread248, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7ggdWxGWrR_9uu_expand.exit.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7ggdWxGWrR_9uu_expand.exit.i: ; preds = %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc10is_numericECs7ggdWxGWrR_9uu_expand.exit.i
  %rhsc.i = load i8, ptr %i.mz, align 1, !noalias !856
  switch i8 %rhsc.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7ggdWxGWrR_9uu_expand.exit124.thread.i [
    i8 47, label %bb.bd
    i8 43, label %bb.bd
  ]

.loopexit216.i:                                   ; preds = %bb.al, %bb.ak
  %.not.i118.i = icmp slt i64 %i.jh, 0
  br i1 %.not.i118.i, label %bb.bk, label %bb.bc, !prof !15

bb.bc:                                            ; preds = %.loopexit216.i
  %i.na = icmp eq i64 %i.jh, 0
  br i1 %i.na, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit120.thread204.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.bc
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !867
  %i.nb = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.jh, i64 noundef range(i64 1, 9) 1) #22, !noalias !867 ; 3 uses
  %i.nc = icmp eq ptr %i.nb, null
  br i1 %i.nc, label %bb.bk, label %bb.bl

bb.bd:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7ggdWxGWrR_9uu_expand.exit.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7ggdWxGWrR_9uu_expand.exit.i
  %cond.i = icmp eq i64 %i.my, 1
  br i1 %cond.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.i

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.i: ; preds = %bb.bd
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 1
  %i.ne = load i8, ptr %i.nd, align 1, !alias.scope !868, !noalias !856, !noundef !4
  %i.nf = icmp sgt i8 %i.ne, -65
  br i1 %i.nf, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread194.i, !prof !869

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7ggdWxGWrR_9uu_expand.exit124.thread.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7ggdWxGWrR_9uu_expand.exit.i
  %.not.i109 = icmp slt i64 %i.my, 0
  br i1 %.not.i109, label %bb.be, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i, !prof !870

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7ggdWxGWrR_9uu_expand.exit124.thread.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !871
  %i.ng = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.my, i64 noundef range(i64 1, 9) 1) #22, !noalias !871 ; 3 uses
  %i.nh = icmp eq ptr %i.ng, null
  br i1 %i.nh, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7ggdWxGWrR_9uu_expand.exit124.thread.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4191.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7ggdWxGWrR_9uu_expand.exit124.thread.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4191.0.ph, i64 %i.my) #25, !noalias !856
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit.thread248: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs7ggdWxGWrR_9uu_expand.exit.i, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc10is_numericENtB5_8Searcher4nextCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i, %.loopexit.i56, %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc10is_numericECs7ggdWxGWrR_9uu_expand.exit.i, %bb.bf
  %.sroa.9192.0254 = phi i64 [ %i.ni, %bb.bf ], [ 1, %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc10is_numericECs7ggdWxGWrR_9uu_expand.exit.i ], [ 1, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc10is_numericENtB5_8Searcher4nextCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i ], [ 1, %.loopexit.i56 ], [ 1, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs7ggdWxGWrR_9uu_expand.exit.i ]
  %.sroa.4191.0253 = phi i64 [ %i.my, %bb.bf ], [ 0, %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc10is_numericECs7ggdWxGWrR_9uu_expand.exit.i ], [ 0, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc10is_numericENtB5_8Searcher4nextCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i ], [ 0, %.loopexit.i56 ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs7ggdWxGWrR_9uu_expand.exit.i ] ; 3 uses
  %.sroa.13.sroa.0.0.extract.trunc125 = trunc i64 %.sroa.4191.0253 to i8
  %.sroa.13.sroa.11.0.extract.shift127 = lshr i64 %.sroa.4191.0253, 8
  %.sroa.13.sroa.11.0.extract.trunc128 = trunc nuw nsw i64 %.sroa.13.sroa.11.0.extract.shift127 to i56
  br label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i

bb.bf:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %i.ni = ptrtoint ptr %i.ng to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ng, ptr nonnull align 1 %i.mz, i64 %i.my, i1 false), !noalias !856
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit.thread248

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread194.i: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.i
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mz, i64 noundef %i.my, i64 noundef 0, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #23, !noalias !856
  unreachable

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread.i: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.i, %bb.bd
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !872
  %i.nj = call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #22, !noalias !872 ; 3 uses
  %i.nk = icmp eq ptr %i.nj, null
  br i1 %i.nk, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #25, !noalias !856
  unreachable

bb.bh:                                            ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread.i
  %i.nl = load i8, ptr %i.mz, align 1, !noalias !856
  store i8 %i.nl, ptr %i.nj, align 1, !noalias !856
  %.not.i128.i = icmp slt i64 %i.my, 0
  br i1 %.not.i128.i, label %bb.bi, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i129.i, !prof !15

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i129.i: ; preds = %bb.bh
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !873
  %i.nm = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.my, i64 noundef range(i64 1, 9) 1) #22, !noalias !873 ; 3 uses
  %i.nn = icmp eq ptr %i.nm, null
  br i1 %i.nn, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i129.i, %bb.bh
  %.sroa.4159.0.ph.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i129.i ], [ 0, %bb.bh ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4159.0.ph.i, i64 %i.my) #25, !noalias !856
  unreachable

bb.bj:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i129.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nm, ptr nonnull align 1 %i.mz, i64 %i.my, i1 false), !noalias !856
  %i.no = ptrtoint ptr %i.nj to i64               ; 2 uses
  %.sroa.13.sroa.0.0.extract.trunc = trunc i64 %i.no to i8
  %.sroa.13.sroa.11.0.extract.shift = lshr i64 %i.no, 8
  %.sroa.13.sroa.11.0.extract.trunc = trunc nuw i64 %.sroa.13.sroa.11.0.extract.shift to i56
  %i.np = ptrtoint ptr %i.nm to i64
  br label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i

bb.bk:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, %.loopexit216.i
  %.sroa.4151.0.ph.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %.loopexit216.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4151.0.ph.i, i64 %i.jh) #25, !noalias !856
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit120.thread204.i: ; preds = %bb.bl, %bb.bc
  %i.nq = phi i64 [ %i.nr, %bb.bl ], [ 1, %bb.bc ]
  %.sroa.13.sroa.0.0.extract.trunc126 = trunc i64 %i.jh to i8
  %.sroa.13.sroa.11.0.extract.shift129 = lshr i64 %i.jh, 8
  %.sroa.13.sroa.11.0.extract.trunc130 = trunc nuw nsw i64 %.sroa.13.sroa.11.0.extract.shift129 to i56
  br label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i

bb.bl:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nb, ptr nonnull align 1 %i.jg, i64 %i.jh, i1 false), !noalias !856
  %i.nr = ptrtoint ptr %i.nb to i64
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ggdWxGWrR_9uu_expand.exit120.thread204.i

_RNvCs7ggdWxGWrR_9uu_expand14tabstops_parse.exit: ; preds = %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !857
  %i.ns = inttoptr i64 %.sroa.31.0 to ptr
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0120.0, ptr %i.nt, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.13.sroa.0.0, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i56 %.sroa.13.sroa.11.sroa.0.0, ptr %.sroa.525.0..sroa_idx, align 1
  %.sroa.525.sroa.4.0..sroa.525.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.24.0, ptr %.sroa.525.sroa.4.0..sroa.525.0..sroa_idx.sroa_idx, align 8
  %.sroa.525.sroa.5.0..sroa.525.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ns, ptr %.sroa.525.sroa.5.0..sroa.525.0..sroa_idx.sroa_idx, align 8
  %.sroa.525.sroa.6.0..sroa.525.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.38.0, ptr %.sroa.525.sroa.6.0..sroa.525.0..sroa_idx.sroa_idx, align 8
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.42.0, ptr %.sroa.626.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  %i.nu = icmp eq i64 %.sroa.0175.0.copyload, 0
  br i1 %i.nu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit, label %bb.br

.loopexit321:                                     ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i, %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.nv = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8, i64 noundef range(i64 1, 9) 8) #22 ; 3 uses
  %i.nw = icmp eq ptr %i.nv, null
  br i1 %i.nw, label %bb.bm, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !13

bb.bm:                                            ; preds = %.loopexit321
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #25
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %.loopexit321
  store i64 8, ptr %i.nv, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit82

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit82: ; preds = %bb.bu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %.sroa.027.0 = phi i8 [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.13.sroa.0.1271, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81 ], [ %.sroa.13.sroa.0.1271, %bb.bu ]
  %.sroa.028.0 = phi i64 [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.24.1274, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81 ], [ %.sroa.24.1274, %bb.bu ]
  %.sroa.3.0 = phi ptr [ %i.nv, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.31.1273, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81 ], [ %.sroa.31.1273, %bb.bu ]
  %.sroa.431.0 = phi i64 [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.38.1272, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81 ], [ %.sroa.38.1272, %bb.bu ]
  %i.nx = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 7) #22
  %i.ny = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 7) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  br i1 %i.aa, label %.loopexit, label %.lr.ph.i.i.i58

.lr.ph.i.i.i58:                                   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit82, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i62
  %.sroa.0.0917.i.i.i59 = phi ptr [ %i.nz, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i62 ], [ %i.w, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit82 ] ; 3 uses
  %.sroa.8.016.i.i.i60 = phi i64 [ %i.oa, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i62 ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit82 ] ; 4 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.0.0917.i.i.i59, i64 16 ; 2 uses
  %i.oa = add nuw nsw i64 %.sroa.8.016.i.i.i60, 1
  %i.ob = getelementptr i8, ptr %.sroa.0.0917.i.i.i59, i64 8
  %.val7.i.i.i61 = load i64, ptr %i.ob, align 8, !noalias !877, !noundef !4
  %i.oc = icmp eq i64 %.val7.i.i.i61, 5
  br i1 %i.oc, label %.split.i.i.i64, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i62

.split.i.i.i64:                                   ; preds = %.lr.ph.i.i.i58
  %.val.i.i.i65 = load ptr, ptr %.sroa.0.0917.i.i.i59, align 8, !noalias !877, !nonnull !4, !noundef !4 ; 2 uses
  %i.od = load i32, ptr %.val.i.i.i65, align 1
  %i.oe = xor i32 %i.od, 1162627398
  %i.of = getelementptr i8, ptr %.val.i.i.i65, i64 4
  %i.og = load i8, ptr %i.of, align 1
  %i.oh = zext i8 %i.og to i32
  %i.oi = xor i32 %i.oh, 83
  %i.oj = or i32 %i.oe, %i.oi
  %i.ok = icmp ne i32 %i.oj, 0
  %i.ol = zext i1 %i.ok to i32
  %i.om = icmp eq i32 %i.ol, 0
  br i1 %i.om, label %bb.bn, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i62

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i62: ; preds = %.split.i.i.i64, %.lr.ph.i.i.i58
  %i.on = icmp eq ptr %i.nz, %i.z
  br i1 %i.on, label %.loopexit, label %.lr.ph.i.i.i58

bb.bn:                                            ; preds = %.split.i.i.i64
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.op = load i64, ptr %i.oo, align 8, !alias.scope !878, !noundef !4 ; 2 uses
  %i.oq = icmp ult i64 %.sroa.8.016.i.i.i60, %i.op
  br i1 %i.oq, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i.i60, i64 noundef %i.op, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !877
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.os = load ptr, ptr %i.or, align 8, !alias.scope !878, !nonnull !4, !noundef !4
  %i.ot = getelementptr inbounds nuw [104 x i8], ptr %i.os, i64 %.sroa.8.016.i.i.i60 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !879
  store i128 -49237559333878691962261109163680243548, ptr %i.j, align 16, !noalias !879
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ot, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.j) #22, !noalias !879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !879
  %.sroa.013.0.copyload.i.i67 = load i128, ptr %i.k, align 16, !noalias !879 ; 3 uses
  %i.ou = icmp eq i128 %.sroa.013.0.copyload.i.i67, -49237559333878691962261109163680243548
  br i1 %i.ou, label %bb.bv, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ov = lshr i128 %.sroa.013.0.copyload.i.i67, 64
  %i.ow = trunc nuw i128 %i.ov to i64
  %i.ox = trunc i128 %.sroa.013.0.copyload.i.i67 to i64
  %i.oy = inttoptr i64 %i.ox to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @65, ptr %i.i, align 8, !noalias !880
  %i.oz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 5, ptr %i.oz, align 8, !noalias !880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !880
  store i64 0, ptr %i.h, align 8, !noalias !881
  %.sroa.10181.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.oy, ptr %.sroa.10181.8..sroa_idx, align 8, !noalias !881
  %.sroa.13182.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.ow, ptr %.sroa.13182.8..sroa_idx, align 8, !noalias !881
  %.sroa.16183.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 -5815876261132279644, ptr %.sroa.16183.8..sroa_idx, align 8, !noalias !881
  %.sroa.16183.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 -2669173439883760220, ptr %.sroa.16183.8..sroa_idx.sroa_idx, align 8, !noalias !881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !880
  store ptr %i.i, ptr %i.g, align 8, !noalias !880
  %.sroa.42.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs7ggdWxGWrR_9uu_expand, ptr %.sroa.42.0..sroa_idx.i76, align 8, !noalias !880
  %i.pa = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.pa, align 8, !noalias !880
  %.sroa.46.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i77, align 8, !noalias !880
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #23, !noalias !880
  unreachable

bb.br:                                            ; preds = %_RNvCs7ggdWxGWrR_9uu_expand14tabstops_parse.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5176.0.copyload, i64 noundef %.sroa.0175.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !882
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit

end_hunk_1
