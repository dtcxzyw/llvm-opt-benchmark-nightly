Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_fold-9fbef8c9ae416a1b.uu_fold.607f53ef74bdd1d0-cgu.0?download=true
inline.NumInlined: 349
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvCs8hEv8bFEvN4_7uu_fold21CAPTURE_STARTUP_STATE = constant ptr @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals21capture_startup_state, section ".init_array", align 8
@0 = private unnamed_addr constant [1 x i8] c"\0A", align 1
@1 = private unnamed_addr constant [24 x i8] c"src/uu/fold/src/fold.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00@\01\00\00)\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00\0A\01\00\00\10\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00\07\01\00\00\1F\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00\BC\01\00\00)\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00\12\02\00\00(\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00\18\02\00\00(\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00,\02\00\00(\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00A\02\00\00$\00\00\00" }>, align 8
@10 = private unnamed_addr constant [12 x i8] c"valid prefix", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00\8F\02\00\00J\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00\8F\02\00\009\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -5875614554295535572 to ptr), ptr inttoptr (i64 3467203893602029906 to ptr) }>, align 8
@14 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCs6JMX4GRUq9U_4core3anyNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintNtB2_3Any7type_idCs8hEv8bFEvN4_7uu_fold }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockEECs8hEv8bFEvN4_7uu_fold, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtB8_3fmt5Write9write_strCs8hEv8bFEvN4_7uu_fold, ptr @_RNvYINtNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtBb_3fmt5Write10write_charCs8hEv8bFEvN4_7uu_fold, ptr @_RNvYINtNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtBb_3fmt5Write9write_fmtCs8hEv8bFEvN4_7uu_fold }>, align 8
@16 = private unnamed_addr constant [86 x i8] c"a formatting trait implementation returned an error when the underlying stream did not", align 1
@17 = private unnamed_addr constant [77 x i8] c"/rustc/7608eb7b07eaf93f16d7cf5bcb2098eca87503df/library/core/src/io/write.rs\00", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"L\00\00\00\00\00\00\00\9B\01\00\00\11\00\00\00" }>, align 8
@19 = private unnamed_addr constant [77 x i8] c"/rustc/7608eb7b07eaf93f16d7cf5bcb2098eca87503df/library/alloc/src/io/read.rs\00", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"L\00\00\00\00\00\00\00\E7\03\00\00\1F\00\00\00" }>, align 8
@21 = private unnamed_addr constant [27 x i8] c"failed to fill whole buffer", align 1
@22 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @21, [9 x i8] c"\1B\00\00\00\00\00\00\00%", [7 x i8] undef }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorECs8hEv8bFEvN4_7uu_fold, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsa_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorECs8hEv8bFEvN4_7uu_fold, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt, ptr @_RNvXsa_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr @23, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCs8hEv8bFEvN4_7uu_fold, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCs8hEv8bFEvN4_7uu_fold, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCs8hEv8bFEvN4_7uu_fold, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCs8hEv8bFEvN4_7uu_fold, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCs8hEv8bFEvN4_7uu_fold, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtB4_6UError4codeCs8hEv8bFEvN4_7uu_fold, ptr @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtB4_6UError5usageCs8hEv8bFEvN4_7uu_fold }>, align 8
@25 = private unnamed_addr constant [19 x i8] c"fold-error-readline", align 1
@26 = private unnamed_addr constant [26 x i8] c"fold-error-failed-to-write", align 1
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00\90\00\00\00\0F\00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00\91\00\00\00\22\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std2fs4FileECs8hEv8bFEvN4_7uu_fold, [16 x i8] c"\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read, ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read13read_vectored, ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read16is_read_vectored, ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read11read_to_end, ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read14read_to_string, ptr @_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exactCs8hEv8bFEvN4_7uu_fold, ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf, ptr @_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read14read_buf_exactCs8hEv8bFEvN4_7uu_fold }>, align 8
@_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE = external global { { { { { i64 } } } }, { { { { i32 } } } }, i32, i64 }
@30 = private unnamed_addr constant [8 x i8] c"\C0\02: \C0\01\0A\00", align 1
@31 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read, ptr @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read13read_vectored, ptr @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read16is_read_vectored, ptr @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read11read_to_end, ptr @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read14read_to_string, ptr @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exact, ptr @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf, ptr @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read14read_buf_exact }>, align 8
@32 = private unnamed_addr constant [4 x i8] c"fold", align 1
@33 = private unnamed_addr constant [25 x i8] c"(uutils coreutils) 0.10.0", align 1
@34 = private unnamed_addr constant [10 x i8] c"fold-usage", align 1
@35 = private unnamed_addr constant [10 x i8] c"fold-about", align 1
@36 = private unnamed_addr constant [5 x i8] c"bytes", align 1
@37 = private unnamed_addr constant [15 x i8] c"fold-bytes-help", align 1
@38 = private unnamed_addr constant [10 x i8] c"characters", align 1
@39 = private unnamed_addr constant [20 x i8] c"fold-characters-help", align 1
@40 = private unnamed_addr constant [6 x i8] c"spaces", align 1
@41 = private unnamed_addr constant [16 x i8] c"fold-spaces-help", align 1
@42 = private unnamed_addr constant [5 x i8] c"width", align 1
@43 = private unnamed_addr constant [15 x i8] c"fold-width-help", align 1
@44 = private unnamed_addr constant [5 x i8] c"WIDTH", align 1
@45 = private unnamed_addr constant [4 x i8] c"file", align 1
@46 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@47 = private unnamed_addr constant [33 x i8] c"failed to write the buffered data", align 1
@48 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @47, [9 x i8] c"!\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables10WIDTH_ROOT = external local_unnamed_addr global { [256 x i8] }
@49 = private unnamed_addr constant [103 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/unicode-width-0.2.2/src/tables.rs\00", align 1
@_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables12WIDTH_MIDDLE = external local_unnamed_addr global { [20 x [64 x i8]] }
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @49, [16 x i8] c"f\00\00\00\00\00\00\00\B8\00\00\00\15\00\00\00" }>, align 8
@_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables12WIDTH_LEAVES = external local_unnamed_addr global { [186 x [32 x i8]] }
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @49, [16 x i8] c"f\00\00\00\00\00\00\00\BE\00\00\00\19\00\00\00" }>, align 8
@52 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@53 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCs8hEv8bFEvN4_7uu_fold }>, align 8
@54 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@55 = private unnamed_addr constant [11 x i8] c"valid_up_to", align 1
@56 = private unnamed_addr constant [9 x i8] c"error_len", align 1
@57 = private unnamed_addr constant [4 x i8] c"None", align 1
@58 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs7tKScEop1B6_5alloc6string6StringNtB6_5Debug3fmtCs8hEv8bFEvN4_7uu_fold }>, align 8
@59 = private unnamed_addr constant [4 x i8] c"Some", align 1
@60 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRhNtB6_5Debug3fmtCs8hEv8bFEvN4_7uu_fold }>, align 8
@61 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs8hEv8bFEvN4_7uu_fold, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionNtNtCs7tKScEop1B6_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCs8hEv8bFEvN4_7uu_fold }>, align 8
@62 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCs8hEv8bFEvN4_7uu_fold }>, align 8
@63 = private unnamed_addr constant [8 x i8] c"UIoError", align 1
@64 = private unnamed_addr constant [7 x i8] c"context", align 1
@65 = private unnamed_addr constant [5 x i8] c"inner", align 1
@66 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@67 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7465031386275593344 to ptr), ptr inttoptr (i64 2227572798057049637 to ptr) }>, align 8
@llvm.used = appending global [1 x ptr] [ptr @_RNvCs8hEv8bFEvN4_7uu_fold21CAPTURE_STARTUP_STATE], section "llvm.metadata"

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvCs8hEv8bFEvN4_7uu_fold10push_bytesINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RINvCs8hEv8bFEvN4_7uu_fold27maybe_flush_unbroken_outputINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !30, !noundef !4 ; 3 uses
  %i.f = load i64, ptr %i.c, align 8, !range !6, !alias.scope !30, !noundef !4
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs8hEv8bFEvN4_7uu_fold.exit.thread.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit, !prof !7

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs8hEv8bFEvN4_7uu_fold.exit.thread.i: ; preds = %bb.b
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8hEv8bFEvN4_7uu_fold(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.e, i64 noundef %2, i64 noundef 1, i64 noundef 1) #19
  %i.i = load i64, ptr %i.d, align 8, !alias.scope !29, !noundef !4
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit: ; preds = %bb.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs8hEv8bFEvN4_7uu_fold.exit.thread.i
  %.sink4 = phi i64 [ %i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs8hEv8bFEvN4_7uu_fold.exit.thread.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.j = icmp sgt i64 %.sink4, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !29, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sink4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !29
  %i.n = add nuw i64 %.sink4, %2                  ; 7 uses
  store i64 %i.n, ptr %i.d, align 8, !alias.scope !29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i8, ptr %i.o, align 8, !range !8, !alias.scope !31, !noundef !4
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_RINvCs8hEv8bFEvN4_7uu_fold27maybe_flush_unbroken_outputINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit
  %i.r = icmp sgt i64 %i.n, -1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp samesign ult i64 %i.n, 8192
  br i1 %i.s, label %_RINvCs8hEv8bFEvN4_7uu_fold27maybe_flush_unbroken_outputINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !31, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  %i.v = load ptr, ptr %i.k, align 8, !noalias !31, !nonnull !4, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.w = load i64, ptr %i.u, align 8, !range !6, !alias.scope !32, !noalias !33, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !32, !noalias !33, !noundef !4 ; 4 uses
  %i.z = icmp sgt i64 %i.y, -1
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = sub nsw i64 %i.w, %i.y
  %i.ab = icmp ult i64 %i.n, %i.aa
  br i1 %i.ab, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit.thread.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit.i, !prof !9

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit.thread.i: ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !35, !noalias !36, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %i.v, i64 range(i64 0, -9223372036854775808) %i.n, i1 false), !noalias !37
  %i.af = add nuw i64 %i.y, %i.n
  store i64 %i.af, ptr %i.x, align 8, !alias.scope !35, !noalias !36
  br label %bb.f

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit.i: ; preds = %bb.d
  %i.ag = tail call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs8hEv8bFEvN4_7uu_fold(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef range(i64 0, -9223372036854775808) %i.n) #20, !noalias !31 ; 2 uses
  %.not.i1 = icmp eq ptr %i.ag, null
  br i1 %.not.i1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit.i
  %i.ah = tail call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.ag) #19, !noalias !31 ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.ah, 0
  %i.aj = extractvalue { ptr, ptr } %i.ah, 1
  br label %_RINvCs8hEv8bFEvN4_7uu_fold27maybe_flush_unbroken_outputINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit

bb.f:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit.thread.i
  store i64 0, ptr %i.d, align 8, !noalias !31
  br label %_RINvCs8hEv8bFEvN4_7uu_fold27maybe_flush_unbroken_outputINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit

_RINvCs8hEv8bFEvN4_7uu_fold27maybe_flush_unbroken_outputINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit: ; preds = %bb.f, %bb.e, %bb.c, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit, %bb.a
  %.sroa.3.0 = phi ptr [ undef, %bb.a ], [ undef, %bb.f ], [ %i.aj, %bb.e ], [ undef, %bb.c ], [ undef, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.f ], [ %i.ai, %bb.e ], [ null, %bb.c ], [ null, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs8hEv8bFEvN4_7uu_fold.exit ]
  %i.ak = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.al = insertvalue { ptr, ptr } %i.ak, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.al
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvCs8hEv8bFEvN4_7uu_fold11emit_outputINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !5, !noundef !4 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !range !10, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  %i.h = add i64 %i.g, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !align !5, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %i.h, %bb.b ], [ %i.l, %bb.c ] ; 12 uses
  %.not = icmp eq i64 %.sroa.01.0, 0              ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %.not18 = icmp ugt i64 %.sroa.01.0, %i.q
  br i1 %.not18, label %bb.g, label %bb.h, !prof !11

bb.f:                                             ; preds = %._crit_edge, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit24.thread, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit24
  %i.r = phi ptr [ %.pre, %._crit_edge ], [ %i.ag, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit24.thread ], [ %i.ag, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit24 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.s = load i64, ptr %i.r, align 8, !range !6, !alias.scope !61, !noalias !62, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !61, !noalias !62, !noundef !4 ; 4 uses
  %i.v = icmp sgt i64 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = sub nsw i64 %i.s, %i.u
  %i.x = icmp ugt i64 %i.w, 1
  br i1 %i.x, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit.thread, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit, !prof !9

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit.thread: ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !64, !noalias !65, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.u
  store i8 10, ptr %i.aa, align 1, !noalias !64
  %i.ab = add nuw i64 %i.u, 1
  store i64 %i.ab, ptr %i.t, align 8, !alias.scope !64, !noalias !65
  br label %bb.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit: ; preds = %bb.f
  %i.ac = tail call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs8hEv8bFEvN4_7uu_fold(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1) #20 ; 2 uses
  %.not20 = icmp eq ptr %i.ac, null
  br i1 %.not20, label %bb.i, label %bb.ap

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.01.0, i64 noundef %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !4, !align !5, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.ah = load i64, ptr %i.ag, align 8, !range !6, !alias.scope !66, !noalias !67, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !66, !noalias !67, !noundef !4 ; 4 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = sub nsw i64 %i.ah, %i.aj
  %i.am = icmp ult i64 %.sroa.01.0, %i.al
  br i1 %i.am, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit24.thread, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit24, !prof !9

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit24.thread: ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !69, !noalias !70, !nonnull !4, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull readonly align 1 %i.ae, i64 range(i64 0, -9223372036854775808) %.sroa.01.0, i1 false), !noalias !69
  %i.aq = add nuw i64 %i.aj, %.sroa.01.0
  store i64 %i.aq, ptr %i.ai, align 8, !alias.scope !69, !noalias !70
  br label %bb.f

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit24: ; preds = %bb.h
  %i.ar = tail call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs8hEv8bFEvN4_7uu_fold(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef range(i64 0, -9223372036854775808) %.sroa.01.0) #20 ; 2 uses
  %.not19 = icmp eq ptr %i.ar, null
  br i1 %.not19, label %bb.f, label %bb.ap

bb.i:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit.thread, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit
  %i.as = load i64, ptr %i.c, align 8, !range !10, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !4 ; 3 uses
  %i.az = icmp sgt i64 %i.ay, -1
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = icmp ult i64 %.sroa.01.0, %i.ay
  store i64 0, ptr %i.ax, align 8
  br i1 %i.ba, label %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECs8hEv8bFEvN4_7uu_fold.exit

_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit: ; preds = %bb.i
  %i.bb = sub nuw nsw i64 %i.ay, %.sroa.01.0      ; 3 uses
  br i1 %.not, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECs8hEv8bFEvN4_7uu_fold.exit.sink.split, label %bb.j

bb.j:                                             ; preds = %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !71, !noalias !72, !nonnull !4, !noundef !4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.sroa.01.0
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr nonnull align 1 %i.be, i64 %i.bb, i1 false), !noalias !73
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECs8hEv8bFEvN4_7uu_fold.exit.sink.split

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECs8hEv8bFEvN4_7uu_fold.exit.sink.split: ; preds = %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE5drainINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs8hEv8bFEvN4_7uu_fold.exit, %bb.j
  store i64 %i.bb, ptr %i.ax, align 8, !noalias !73
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECs8hEv8bFEvN4_7uu_fold.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECs8hEv8bFEvN4_7uu_fold.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECs8hEv8bFEvN4_7uu_fold.exit.sink.split, %bb.i
  %i.bf = phi i64 [ 0, %bb.i ], [ %i.bb, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECs8hEv8bFEvN4_7uu_fold.exit.sink.split ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.bj = load i8, ptr %i.bi, align 1, !range !8, !noundef !4
  %i.bk = trunc nuw i8 %i.bj to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !74
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef range(i64 0, -9223372036854775808) %i.bf) #19
  %i.bl = load i64, ptr %i.a, align 8, !range !10, !noalias !74, !noundef !4
  %i.bm = trunc nuw i64 %i.bl to i1
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECs8hEv8bFEvN4_7uu_fold.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !74
  %i.bn = icmp samesign eq i64 %i.bf, 0
  br i1 %i.bn, label %_RNvCs8hEv8bFEvN4_7uu_fold17compute_col_count.exit, label %.lr.ph28.i.preheader

.lr.ph28.i.preheader:                             ; preds = %bb.k
  %xtraiter = and i64 %i.bf, 1
  %i.bo = icmp eq i64 %i.bf, 1
  br i1 %i.bo, label %.lr.ph28.i.epil.preheader, label %.lr.ph28.i.preheader.new

.lr.ph28.i.preheader.new:                         ; preds = %.lr.ph28.i.preheader
  %unroll_iter = and i64 %i.bf, -2
  br label %.lr.ph28.i

bb.l:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECs8hEv8bFEvN4_7uu_fold.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !74, !nonnull !4, !noundef !4 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !noalias !74, !noundef !4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bs ; 8 uses
  %i.bu = icmp samesign eq i64 %i.bs, 0
  br i1 %i.bu, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  br i1 %i.bk, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.r
  %.sroa.0.024.us.i = phi i64 [ %.sroa.0.2.us.i, %bb.r ], [ 0, %.lr.ph.i ] ; 3 uses
  %.sroa.0.01623.us.i = phi ptr [ %.sroa.0.117.ph.us.i, %bb.r ], [ %i.bq, %.lr.ph.i ] ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.01623.us.i, i64 1 ; 3 uses
  %i.bw = load i8, ptr %.sroa.0.01623.us.i, align 1, !noalias !75, !noundef !4 ; 5 uses
  %i.bx = icmp sgt i8 %i.bw, -1
  br i1 %i.bx, label %bb.m, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.us.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.us.i: ; preds = %.lr.ph.split.us.i
  %i.by = and i8 %i.bw, 31
  %i.bz = zext nneg i8 %i.by to i32               ; 3 uses
  %i.ca = icmp ne ptr %i.bv, %i.bt
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.01623.us.i, i64 2 ; 3 uses
  %i.cc = load i8, ptr %i.bv, align 1, !noalias !75, !noundef !4
  %i.cd = shl nuw nsw i32 %i.bz, 6
  %i.ce = and i8 %i.cc, 63
  %i.cf = zext nneg i8 %i.ce to i32               ; 2 uses
  %i.cg = or disjoint i32 %i.cd, %i.cf
  %i.ch = icmp samesign ugt i8 %i.bw, -33
  br i1 %i.ch, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.us.i, label %bb.n

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.us.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.us.i
  %i.ci = icmp ne ptr %i.cb, %i.bt
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.01623.us.i, i64 3 ; 3 uses
  %i.ck = load i8, ptr %i.cb, align 1, !noalias !75, !noundef !4
  %i.cl = shl nuw nsw i32 %i.cf, 6
  %i.cm = and i8 %i.ck, 63
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = or disjoint i32 %i.cl, %i.cn            ; 2 uses
  %i.cp = shl nuw nsw i32 %i.bz, 12
  %i.cq = or disjoint i32 %i.co, %i.cp
  %i.cr = icmp samesign ugt i8 %i.bw, -17
  br i1 %i.cr, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.us.i, label %bb.n

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.us.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.us.i
  %i.cs = icmp ne ptr %i.cj, %i.bt
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.01623.us.i, i64 4
  %i.cu = load i8, ptr %i.cj, align 1, !noalias !75, !noundef !4
  %i.cv = shl nuw nsw i32 %i.bz, 18
  %i.cw = and i32 %i.cv, 1835008
  %i.cx = shl nuw nsw i32 %i.co, 6
  %i.cy = and i8 %i.cu, 63
  %i.cz = zext nneg i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cx, %i.cz
  %i.db = or disjoint i32 %i.da, %i.cw
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.split.us.i
  %i.dc = zext nneg i8 %i.bw to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.us.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.us.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.us.i
  %.sroa.0.117.ph.us.i = phi ptr [ %i.cb, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.us.i ], [ %i.cj, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.us.i ], [ %i.ct, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.us.i ], [ %i.bv, %bb.m ] ; 2 uses
  %.sroa.4.0.i.ph.us.i = phi i32 [ %i.cg, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.us.i ], [ %i.cq, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.us.i ], [ %i.db, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.us.i ], [ %i.dc, %bb.m ] ; 2 uses
  %i.dd = icmp samesign ult i32 %.sroa.4.0.i.ph.us.i, 1114112
  tail call void @llvm.assume(i1 %i.dd)
  switch i32 %.sroa.4.0.i.ph.us.i, label %bb.q [
    i32 13, label %bb.r
    i32 9, label %bb.p
    i32 8, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.de = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.024.us.i, i64 1)
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.df = and i64 %.sroa.0.024.us.i, -8
  %i.dg = add i64 %i.df, 8
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.dh = add i64 %.sroa.0.024.us.i, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %.sroa.0.2.us.i = phi i64 [ %i.dh, %bb.q ], [ %i.de, %bb.o ], [ %i.dg, %bb.p ], [ 0, %bb.n ] ; 2 uses
  %i.di = icmp eq ptr %.sroa.0.117.ph.us.i, %i.bt
  br i1 %i.di, label %._crit_edge.i, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.x
  %.sroa.0.024.i = phi i64 [ %.sroa.0.2.i, %bb.x ], [ 0, %.lr.ph.i ] ; 3 uses
  %.sroa.0.01623.i = phi ptr [ %.sroa.0.117.ph.i, %bb.x ], [ %i.bq, %.lr.ph.i ] ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.01623.i, i64 1 ; 3 uses
  %i.dk = load i8, ptr %.sroa.0.01623.i, align 1, !noalias !75, !noundef !4 ; 5 uses
  %i.dl = icmp sgt i8 %i.dk, -1
  br i1 %i.dl, label %bb.s, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i: ; preds = %.lr.ph.split.i
  %i.dm = and i8 %i.dk, 31
  %i.dn = zext nneg i8 %i.dm to i32               ; 3 uses
  %i.do = icmp ne ptr %i.dj, %i.bt
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.01623.i, i64 2 ; 3 uses
  %i.dq = load i8, ptr %i.dj, align 1, !noalias !75, !noundef !4
  %i.dr = shl nuw nsw i32 %i.dn, 6
  %i.ds = and i8 %i.dq, 63
  %i.dt = zext nneg i8 %i.ds to i32               ; 2 uses
  %i.du = or disjoint i32 %i.dr, %i.dt
  %i.dv = icmp samesign ugt i8 %i.dk, -33
  br i1 %i.dv, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i, label %bb.t

bb.s:                                             ; preds = %.lr.ph.split.i
  %i.dw = zext nneg i8 %i.dk to i32
  br label %bb.t

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i
  %i.dx = icmp ne ptr %i.dp, %i.bt
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.01623.i, i64 3 ; 3 uses
  %i.dz = load i8, ptr %i.dp, align 1, !noalias !75, !noundef !4
  %i.ea = shl nuw nsw i32 %i.dt, 6
  %i.eb = and i8 %i.dz, 63
  %i.ec = zext nneg i8 %i.eb to i32
  %i.ed = or disjoint i32 %i.ea, %i.ec            ; 2 uses
  %i.ee = shl nuw nsw i32 %i.dn, 12
  %i.ef = or disjoint i32 %i.ed, %i.ee
  %i.eg = icmp samesign ugt i8 %i.dk, -17
  br i1 %i.eg, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i, label %bb.t

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i
  %i.eh = icmp ne ptr %i.dy, %i.bt
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.01623.i, i64 4
  %i.ej = load i8, ptr %i.dy, align 1, !noalias !75, !noundef !4
  %i.ek = shl nuw nsw i32 %i.dn, 18
  %i.el = and i32 %i.ek, 1835008
  %i.em = shl nuw nsw i32 %i.ed, 6
  %i.en = and i8 %i.ej, 63
  %i.eo = zext nneg i8 %i.en to i32
  %i.ep = or disjoint i32 %i.em, %i.eo
  %i.eq = or disjoint i32 %i.ep, %i.el
  br label %bb.t

bb.t:                                             ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i, %bb.s, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i
  %.sroa.0.117.ph.i = phi ptr [ %i.dp, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i ], [ %i.dy, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i ], [ %i.ei, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i ], [ %i.dj, %bb.s ] ; 2 uses
  %.sroa.4.0.i.ph.i = phi i32 [ %i.du, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i ], [ %i.ef, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i ], [ %i.eq, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i ], [ %i.dw, %bb.s ] ; 6 uses
  %i.er = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.er)
  switch i32 %.sroa.4.0.i.ph.i, label %bb.u [
    i32 13, label %bb.x
    i32 9, label %bb.v
    i32 8, label %bb.w
  ]

._crit_edge.i:                                    ; preds = %bb.x, %bb.r, %bb.l
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.l ], [ %.sroa.0.2.us.i, %bb.r ], [ %.sroa.0.2.i, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !74
  br label %_RNvCs8hEv8bFEvN4_7uu_fold17compute_col_count.exit

bb.u:                                             ; preds = %bb.t
  %i.es = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 127
  br i1 %i.es, label %bb.z, label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.et = and i64 %.sroa.0.024.i, -8
  %i.eu = add i64 %i.et, 8
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.ev = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.024.i, i64 1)
  br label %bb.x

bb.x:                                             ; preds = %bb.ab, %bb.w, %bb.v, %bb.t
  %.sroa.0.2.i = phi i64 [ %i.fb, %bb.ab ], [ %i.ev, %bb.w ], [ %i.eu, %bb.v ], [ 0, %bb.t ] ; 2 uses
  %i.ew = icmp eq ptr %.sroa.0.117.ph.i, %i.bt
  br i1 %i.ew, label %._crit_edge.i, label %.lr.ph.split.i

bb.y:                                             ; preds = %bb.u
  %i.ex = icmp samesign ugt i32 %.sroa.4.0.i.ph.i, 159
  br i1 %i.ex, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.u
  %i.ey = icmp samesign ugt i32 %.sroa.4.0.i.ph.i, 31
  %spec.select.i = zext i1 %i.ey to i64
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.ez = tail call fastcc i8 @_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables12lookup_width(i32 noundef %.sroa.4.0.i.ph.i) #22
end_hunk_0
