Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish.fish.38b934acfd6838ec-cgu.2?download=true
inline.NumInlined: 264
inline.NumDeleted: 144
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [80 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/std/src/thread/local.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00\AD\01\00\00\19\00\00\00" }>, align 8
@2 = private unnamed_addr constant [14 x i8] c"FISH_FAST_FAIL", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvCs4RW8js5ES7g_4fish13throwing_mainEs_0EB1o_, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvCs4RW8js5ES7g_4fish13throwing_mainEs_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoEE9call_once6vtableBR_, ptr @_RNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvCs4RW8js5ES7g_4fish13throwing_mainEs_0BM_, ptr @_RNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvCs4RW8js5ES7g_4fish13throwing_mainEs_0BM_ }>, align 8
@4 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startuE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_once6vtableCs4RW8js5ES7g_4fish, ptr @_RNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startuE0Cs4RW8js5ES7g_4fish, ptr @_RNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startuE0Cs4RW8js5ES7g_4fish }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrEECs4RW8js5ES7g_4fish, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCs4RW8js5ES7g_4fish, ptr @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write10write_charCs4RW8js5ES7g_4fish, ptr @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write9write_fmtCs4RW8js5ES7g_4fish }>, align 8
@6 = private unnamed_addr constant [86 x i8] c"a formatting trait implementation returned an error when the underlying stream did not", align 1
@7 = private unnamed_addr constant [77 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/io/write.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"L\00\00\00\00\00\00\00\9B\01\00\00\11\00\00\00" }>, align 8
@9 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@10 = private unnamed_addr constant [12 x i8] c"package_name", align 1
@11 = private unnamed_addr constant [5 x i8] c"4.8.1", align 1
@12 = private unnamed_addr constant [7 x i8] c"version", align 1
@13 = private unnamed_addr constant [12 x i8] c"fish-version", align 1
@_RNvNtCs8frGy5WneL6_4fish5panic7AT_EXIT = external local_unnamed_addr global { { { [2 x i64] } }, { { { { { i32 } } } } }, {}, [4 x i8] }
@_RNvNCNvNtCs8frGy5WneL6_4fish5panic13panic_handlers_09PANICKING = external global { { { i8 } } }
@14 = private unnamed_addr constant [32 x i8] c"%s crashed, please report a bug.", align 1
@15 = private unnamed_addr constant <{ [13 x i8], [3 x i8] }> <{ [13 x i8] c".\00\00\00\FF\FF\FF\FF\00\00\00\00\00", [3 x i8] undef }>, align 4
@16 = private unnamed_addr constant [13 x i8] c"src/panic.rs\00", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"\0C\00\00\00\00\00\00\00'\00\00\00\0D\00\00\00" }>, align 8
@18 = private unnamed_addr constant [1 x i8] c"\0A", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"\0C\00\00\00\00\00\00\00)\00\00\00\11\00\00\00" }>, align 8
@20 = private unnamed_addr constant [37 x i8] c" Debug PID %d or press Enter to exit\0A", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"\0C\00\00\00\00\00\00\00,\00\00\00\11\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"\0C\00\00\00\00\00\00\002\00\00\00\19\00\00\00" }>, align 8
@_RNvNCNKNvNvNtNtCs8frGy5WneL6_4fish7threads7threads9thread_id9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { i64, i8, [7 x i8] }
@23 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs3_NtCs1HV6ixfL8cZ_11fish_printf11printf_implNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@24 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@25 = private unnamed_addr constant [76 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/alloc/src/borrow.rs\00", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"K\00\00\00\00\00\00\00 \01\00\00%\00\00\00" }>, align 8
@_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14MAIN_THREAD_ID = external local_unnamed_addr global { i64, { { { { { i32 } } } } }, {}, [4 x i8] }
@27 = private unnamed_addr constant [15 x i8] c"BadFormatString", align 1
@28 = private unnamed_addr constant [10 x i8] c"MissingArg", align 1
@29 = private unnamed_addr constant [8 x i8] c"ExtraArg", align 1
@30 = private unnamed_addr constant [10 x i8] c"BadArgType", align 1
@31 = private unnamed_addr constant [8 x i8] c"Overflow", align 1
@32 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtB6_5ErrorNtB6_5Debug3fmtCs4RW8js5ES7g_4fish }>, align 8
@33 = private unnamed_addr constant [3 x i8] c"Fmt", align 1
@34 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@35 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@36 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@37 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@38 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@39 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@40 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@41 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @40, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"L\00\00\00\00\00\00\00\DC\00\00\00$\00\00\00" }>, align 8
@switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs4RW8js5ES7g_4fish = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs4RW8js5ES7g_4fish.67 = private unnamed_addr constant [6 x ptr] [ptr @34, ptr @35, ptr @36, ptr @37, ptr @38, ptr @39], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCsaL1QbXo9JQH_3std2fsNtB6_4File4openRNtNtNtB8_3ffi6os_str5OsStrECs4RW8js5ES7g_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i128 18446745954905227264, ptr %i.a, align 16
  call void @_RNvMsj_NtCsaL1QbXo9JQH_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdE4withNCNvBW_9thread_id0BU_ECs4RW8js5ES7g_4fish() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtCs8frGy5WneL6_4fish7threads7threads9thread_id9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !5, !noalias !22, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_RNvYNCNKNvNvNtNtCs8frGy5WneL6_4fish7threads7threads9thread_id9THREAD_ID0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1i_6option6OptionQIB1X_NtBa_8ThreadIdEEEE9call_onceCs4RW8js5ES7g_4fish.exit.i, !prof !7

_RNvYNCNKNvNvNtNtCs8frGy5WneL6_4fish7threads7threads9thread_id9THREAD_ID0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1i_6option6OptionQIB1X_NtBa_8ThreadIdEEEE9call_onceCs4RW8js5ES7g_4fish.exit.i: ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdzE16get_or_init_slowNvNvNvB1g_9thread_id9THREAD_ID27___rust_std_internal_init_fnECs4RW8js5ES7g_4fish(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvYNCNKNvNvNtNtCs8frGy5WneL6_4fish7threads7threads9thread_id9THREAD_ID0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1i_6option6OptionQIB1X_NtBa_8ThreadIdEEEE9call_onceCs4RW8js5ES7g_4fish.exit.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22
  unreachable

bb.c:                                             ; preds = %_RNvYNCNKNvNvNtNtCs8frGy5WneL6_4fish7threads7threads9thread_id9THREAD_ID0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1i_6option6OptionQIB1X_NtBa_8ThreadIdEEEE9call_onceCs4RW8js5ES7g_4fish.exit.i, %bb.a
  %.sroa.0.0.i.i.i2.i = phi ptr [ %i.e, %_RNvYNCNKNvNvNtNtCs8frGy5WneL6_4fish7threads7threads9thread_id9THREAD_ID0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1i_6option6OptionQIB1X_NtBa_8ThreadIdEEEE9call_onceCs4RW8js5ES7g_4fish.exit.i ], [ %i.a, %bb.a ]
  %.val.i = load i64, ptr %.sroa.0.0.i.i.i2.i, align 8, !noundef !6
  ret i64 %.val.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCsaL1QbXo9JQH_3std2fsNtB6_11OpenOptions4openRNtNtNtB8_3ffi6os_str8OsStringECs4RW8js5ES7g_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !6
  tail call void @_RNvMsj_NtCsaL1QbXo9JQH_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %1 = load i64, ptr %0, align 8, !range !32, !alias.scope !33, !noundef !6
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  switch i64 %1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish.exit.i [
    i64 2, label %.split.us.i
    i64 3, label %.split.us9.i
  ]

.split.us.i:                                      ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i.us.i = load i64, ptr %i.a, align 8, !alias.scope !33 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.us.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish.exit.us.us.i, label %.split.us.split.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish.exit.us.us.i: ; preds = %.split.us.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish.exit

.split.us.split.i:                                ; preds = %.split.us.i
  %.val3.i.us.i = load ptr, ptr %2, align 8, !alias.scope !33, !nonnull !6, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.us.i, i64 noundef %.val2.i.us.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !35
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish.exit

.split.us9.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.us.i = load i64, ptr %i.c, align 8, !alias.scope !33 ; 2 uses
  %i.d = icmp eq i64 %.val.i.us.i, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish.exit.us10.us.i, label %.split.us9.split.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish.exit.us10.us.i: ; preds = %.split.us9.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish.exit

.split.us9.split.i:                               ; preds = %.split.us9.i
  %3 = shl nuw i64 %.val.i.us.i, 2
  %.val1.i.us.i = load ptr, ptr %2, align 8, !alias.scope !33, !nonnull !6, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.us.i, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #23, !noalias !36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish.exit.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish.exit.us.us.i, %.split.us.split.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish.exit.us10.us.i, %.split.us9.split.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !47, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !47, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.011.i.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.f, align 8, !alias.scope !48, !noalias !47 ; 2 uses
  %i.h = icmp eq i64 %.val8.i.i, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val9.i.i = load ptr, ptr %i.i, align 8, !alias.scope !48, !noalias !47, !nonnull !6, !noundef !6
  %i.j = shl nuw i64 %.val8.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 4) #23, !noalias !49
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = icmp eq i64 %i.g, %i.d
  br i1 %i.k, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish.exit, label %.lr.ph.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit.i.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !8, !alias.scope !50, !noundef !6 ; 2 uses
  %i.l = icmp eq i64 %.val, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs4RW8js5ES7g_4fish.exit4, label %bb.c

bb.c:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish.exit
  %i.m = mul nuw i64 %.val, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !51
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs4RW8js5ES7g_4fish.exit4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs4RW8js5ES7g_4fish.exit4: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !6 ; 4 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs4RW8js5ES7g_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = ptrtoint ptr %.val to i64                ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4RW8js5ES7g_4fish.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4RW8js5ES7g_4fish.exit.i
    i64 1, label %bb.d
  ], !prof !9

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4RW8js5ES7g_4fish.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !54
  store i8 3, ptr %i.a, align 8, !alias.scope !54
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4RW8js5ES7g_4fish.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4RW8js5ES7g_4fish.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs4RW8js5ES7g_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs4RW8js5ES7g_4fish.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4RW8js5ES7g_4fish.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvCs4RW8js5ES7g_4fish13throwing_mainEs_0EB1o_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !6, !align !10, !noundef !6 ; 5 uses
  %i.b = load ptr, ptr %.val1, align 8, !invariant.load !6 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.b(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !8, !invariant.load !6 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtB4_6marker4SendNtB2I_4SyncEL_EECs4RW8js5ES7g_4fish.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !11, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.g) #23
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtB4_6marker4SendNtB2I_4SyncEL_EECs4RW8js5ES7g_4fish.exit

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !8, !invariant.load !6 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtBS_6marker4SendNtB2v_4SyncEL_ENtNtBQ_4drop4Drop4dropCs4RW8js5ES7g_4fish.exit5.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !11, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #23
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtBS_6marker4SendNtB2v_4SyncEL_ENtNtBQ_4drop4Drop4dropCs4RW8js5ES7g_4fish.exit5.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtBS_6marker4SendNtB2v_4SyncEL_ENtNtBQ_4drop4Drop4dropCs4RW8js5ES7g_4fish.exit5.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.d
  resume { ptr, i32 } %i.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtB4_6marker4SendNtB2I_4SyncEL_EECs4RW8js5ES7g_4fish.exit: ; preds = %bb.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle4args10FluentArgsECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !63, !nonnull !6, !noundef !6 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !63, !noundef !6 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTINtNtB7_6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish.exit.i, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs4RW8js5ES7g_4fish.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit.i.i.i.i
  %i.d = icmp eq i64 %i.f, %.val1.i
  br i1 %i.d, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTINtNtB7_6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs4RW8js5ES7g_4fish.exit.i.i.i
  %.sroa.0.0.i.i.i1 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs4RW8js5ES7g_4fish.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i.i1 ; 3 uses
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i.i1, 1     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %.val.i.i.i.i = load i64, ptr %i.e, align 8, !range !12, !alias.scope !66, !noalias !63, !noundef !6 ; 2 uses
  %i.g = icmp sgt i64 %.val.i.i.i.i, 0
  br i1 %i.g, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !66, !noalias !63, !nonnull !6, !noundef !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !67
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueECs4RW8js5ES7g_4fish(ptr noalias nofree noundef readonly align 8 dereferenceable(120) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs4RW8js5ES7g_4fish.exit.i.i.i unwind label %bb.d, !noalias !63

bb.c:                                             ; preds = %.lr.ph3
  %i.j = add i64 %.sroa.0.1.i.i.i2, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %.val1.i
  br i1 %i.k, label %.body.i, label %.lr.ph3

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit.i.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.f, %.val1.i
  br i1 %i.m, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i.i2 = phi i64 [ %i.j, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i2
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef readonly align 8 dereferenceable(144) %i.n) #24
          to label %bb.c unwind label %bb.e, !noalias !63

bb.e:                                             ; preds = %.lr.ph3
  %i.o = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvNtCsaL1QbXo9JQH_3std9panicking8set_hook
; Function Attrs: noreturn nonlazybind uwtable
declare void @_RNvNtCsaL1QbXo9JQH_3std7process4exit(i32 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtCsaL1QbXo9JQH_3std2rt19lang_start_internal(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs3zOvCg6Ax1K_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtB5_5types11FluentValueECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs476pBYQK2Ku_11fish_fluent16format_localized(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvCs4RW8js5ES7g_4fish13throwing_main0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2T_8for_each4callB1n_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB49_3VecB1n_E14extend_trustedBN_E0E0EB2j_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvCs4RW8js5ES7g_4fish13throwing_mains_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2V_8for_each4callB1n_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4b_3VecB1n_E14extend_trustedBN_E0E0EB2j_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvCs4RW8js5ES7g_4fish14fish_parse_opt0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2U_8for_each4callRNtNtB1r_6utfstr8Utf32StrNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4v_3VecB3X_E14extend_trustedBN_E0E0EB2j_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvNtCs8frGy5WneL6_4fish6common16get_program_name() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs4RW8js5ES7g_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 288230376151711744)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions5sleep(i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @getpid() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs5UXtnEuoeIl_11fish_common12read_blocked(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), i32 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs4RW8js5ES7g_4fish(ptr noundef nonnull) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #17

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #18

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions() unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #20

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNvNtNtCs8frGy5WneL6_4fish7threads7threads14main_thread_id15init_not_called() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterhE8as_sliceCs4RW8js5ES7g_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtB6_5ErrorNtB6_5Debug3fmtCs4RW8js5ES7g_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish5event5EventE9drop_slowBH_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unixNtB5_6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write5write(ptr noalias nofree noundef nonnull, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvCs4RW8js5ES7g_4fish13throwing_main() unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { noinline noreturn }
attributes #23 = { nounwind }
attributes #24 = { cold }
attributes #25 = { cold noreturn nounwind }
attributes #26 = { noinline }
attributes #27 = { inlinehint }
attributes #28 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{i64 0, i64 -9223372036854775808}
!9 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!10 = !{i64 8}
!11 = !{i64 1, i64 536870913}
!12 = !{i64 -1, i64 -9223372036854775808}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{i8 0, i8 6}
!15 = !{!"branch_weights", i32 2002, i32 2000}
!16 = distinct !{!16, i1 true, !"_RNvYNCNKNvNvNtNtCs8frGy5WneL6_4fish7threads7threads9thread_id9THREAD_ID0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1i_6option6OptionQIB1X_NtBa_8ThreadIdEEEE9call_onceCs4RW8js5ES7g_4fish"}
!17 = distinct !{!17, !16, !"_RNvYNCNKNvNvNtNtCs8frGy5WneL6_4fish7threads7threads9thread_id9THREAD_ID0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1i_6option6OptionQIB1X_NtBa_8ThreadIdEEEE9call_onceCs4RW8js5ES7g_4fish: argument 0"}
!18 = distinct !{!18, i1 true, !"_RNCNKNvNvNtNtCs8frGy5WneL6_4fish7threads7threads9thread_id9THREAD_ID0s_0Cs4RW8js5ES7g_4fish"}
!19 = distinct !{!19, !18, !"_RNCNKNvNvNtNtCs8frGy5WneL6_4fish7threads7threads9thread_id9THREAD_ID0s_0Cs4RW8js5ES7g_4fish: argument 0"}
!20 = distinct !{!20, i1 true, !"_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdzE11get_or_initNvNvNvB1g_9thread_id9THREAD_ID27___rust_std_internal_init_fnECs4RW8js5ES7g_4fish"}
!21 = distinct !{!21, !20, !"_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdzE11get_or_initNvNvNvB1g_9thread_id9THREAD_ID27___rust_std_internal_init_fnECs4RW8js5ES7g_4fish: argument 0"}
!22 = !{!21, !19, !17}
!23 = distinct !{!23, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish"}
!24 = distinct !{!24, !23, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish: argument 0"}
!25 = distinct !{!25, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish"}
!26 = distinct !{!26, !25, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish: argument 0"}
!27 = distinct !{!27, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!28 = distinct !{!28, !27, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!29 = distinct !{!29, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!30 = distinct !{!30, !29, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!31 = !{!24}
!32 = !{i64 0, i64 8}
!33 = !{!26, !24}
!34 = !{!26}
!35 = !{!28, !26, !24}
!36 = !{!30, !26, !24}
!37 = distinct !{!37, i1 true, !"_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!38 = distinct !{!38, !37, !"_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!39 = distinct !{!39, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish"}
!40 = distinct !{!40, !39, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish: argument 0"}
!41 = distinct !{!41, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!42 = distinct !{!42, !41, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!43 = distinct !{!43, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!44 = distinct !{!44, !43, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!45 = distinct !{!45, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!46 = distinct !{!46, !45, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!47 = !{!38}
!48 = !{!40}
!49 = !{!42, !40, !38}
!50 = !{!44}
!51 = !{!46}
!52 = distinct !{!52, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs4RW8js5ES7g_4fish"}
!53 = distinct !{!53, !52, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs4RW8js5ES7g_4fish: argument 0"}
!54 = !{!53}
!55 = distinct !{!55, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTINtNtBG_6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEEECs4RW8js5ES7g_4fish"}
!56 = distinct !{!56, !55, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTINtNtBG_6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEEECs4RW8js5ES7g_4fish: argument 0"}
!57 = distinct !{!57, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs4RW8js5ES7g_4fish"}
!58 = distinct !{!58, !57, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs4RW8js5ES7g_4fish: argument 0"}
!59 = distinct !{!59, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs4RW8js5ES7g_4fish"}
!60 = distinct !{!60, !59, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs4RW8js5ES7g_4fish: argument 0"}
!61 = distinct !{!61, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!62 = distinct !{!62, !61, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!63 = !{!56}
!64 = !{!58}
!65 = !{!60}
!66 = !{!60, !58}
!67 = !{!62, !60, !58, !56}
!68 = !{!58, !56}
!69 = distinct !{!69, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!70 = distinct !{!70, !69, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!71 = distinct !{!71, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!72 = distinct !{!72, !71, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!73 = !{i64 0, i64 7}
!74 = !{!70}
!75 = !{!72}
!76 = distinct !{!76, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish6parser9BlockDataECs4RW8js5ES7g_4fish"}
!77 = distinct !{!77, !76, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish6parser9BlockDataECs4RW8js5ES7g_4fish: argument 0"}
!78 = distinct !{!78, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs4RW8js5ES7g_4fish"}
!79 = distinct !{!79, !78, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs4RW8js5ES7g_4fish: argument 0"}
!80 = distinct !{!80, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!81 = distinct !{!81, !80, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!82 = distinct !{!82, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!83 = distinct !{!83, !82, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!84 = distinct !{!84, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish5event5EventEECs4RW8js5ES7g_4fish"}
!85 = distinct !{!85, !84, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish5event5EventEECs4RW8js5ES7g_4fish: argument 0"}
!86 = distinct !{!86, i1 true, !"_RNvXsw_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish5event5EventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!87 = distinct !{!87, !86, !"_RNvXsw_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish5event5EventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!88 = distinct !{!88, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs4RW8js5ES7g_4fish"}
!89 = distinct !{!89, !88, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs4RW8js5ES7g_4fish: argument 0"}
!90 = distinct !{!90, i1 true, !"_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!91 = distinct !{!91, !90, !"_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!92 = distinct !{!92, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish"}
!93 = distinct !{!93, !92, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish: argument 0"}
!94 = distinct !{!94, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!95 = distinct !{!95, !94, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!96 = distinct !{!96, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!97 = distinct !{!97, !96, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!98 = distinct !{!98, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!99 = distinct !{!99, !98, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!100 = distinct !{!100, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs4RW8js5ES7g_4fish"}
!101 = distinct !{!101, !100, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs4RW8js5ES7g_4fish: argument 0"}
!102 = distinct !{!102, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs4RW8js5ES7g_4fish"}
!103 = distinct !{!103, !102, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs4RW8js5ES7g_4fish: argument 0"}
!104 = distinct !{!104, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!105 = distinct !{!105, !104, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!106 = distinct !{!106, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs4RW8js5ES7g_4fish"}
!107 = distinct !{!107, !106, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs4RW8js5ES7g_4fish: argument 0"}
!108 = distinct !{!108, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs4RW8js5ES7g_4fish"}
!109 = distinct !{!109, !108, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs4RW8js5ES7g_4fish: argument 0"}
!110 = distinct !{!110, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!111 = distinct !{!111, !110, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!112 = distinct !{!112, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtB12_3ast11JobPipelineEEECs4RW8js5ES7g_4fish"}
!113 = distinct !{!113, !112, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtB12_3ast11JobPipelineEEECs4RW8js5ES7g_4fish: argument 0"}
!114 = distinct !{!114, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtBG_3ast11JobPipelineEECs4RW8js5ES7g_4fish"}
!115 = distinct !{!115, !114, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtBG_3ast11JobPipelineEECs4RW8js5ES7g_4fish: argument 0"}
!116 = distinct !{!116, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceEEECs4RW8js5ES7g_4fish"}
!117 = distinct !{!117, !116, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceEEECs4RW8js5ES7g_4fish: argument 0"}
!118 = distinct !{!118, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceEECs4RW8js5ES7g_4fish"}
!119 = distinct !{!119, !118, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceEECs4RW8js5ES7g_4fish: argument 0"}
!120 = distinct !{!120, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!121 = distinct !{!121, !120, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!122 = distinct !{!122, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtB12_3ast11JobPipelineEEECs4RW8js5ES7g_4fish"}
!123 = distinct !{!123, !122, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtB12_3ast11JobPipelineEEECs4RW8js5ES7g_4fish: argument 0"}
!124 = distinct !{!124, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtBG_3ast11JobPipelineEECs4RW8js5ES7g_4fish"}
!125 = distinct !{!125, !124, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtBG_3ast11JobPipelineEECs4RW8js5ES7g_4fish: argument 0"}
!126 = distinct !{!126, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceEEECs4RW8js5ES7g_4fish"}
!127 = distinct !{!127, !126, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceEEECs4RW8js5ES7g_4fish: argument 0"}
!128 = distinct !{!128, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceEECs4RW8js5ES7g_4fish"}
!129 = distinct !{!129, !128, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceEECs4RW8js5ES7g_4fish: argument 0"}
!130 = distinct !{!130, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!131 = distinct !{!131, !130, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!132 = !{!77}
!133 = !{i64 0, i64 -9223372036854775806}
!134 = !{!79}
!135 = !{!81}
!136 = !{!81, !79, !77}
!137 = !{!83, !77}
!138 = !{!85}
!139 = !{!87}
!140 = !{!87, !85, !77}
!141 = !{!89}
!142 = !{!91}
!143 = !{!91, !89, !77}
!144 = !{!93}
!145 = !{!95, !93, !91, !89, !77}
!146 = !{!97, !89, !77}
!147 = !{!99, !89, !77}
!148 = !{!101}
!149 = !{!105, !103, !101}
!150 = !{!107}
!151 = !{!111, !109, !107}
!152 = !{!113}
!153 = !{!121, !119, !117, !115, !113}
!154 = !{!123}
!155 = !{!131, !129, !127, !125, !123}
!156 = distinct !{!156, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs4RW8js5ES7g_4fish"}
!157 = distinct !{!157, !156, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs4RW8js5ES7g_4fish: argument 0"}
!158 = !{!157}
!159 = distinct !{!159, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!160 = distinct !{!160, !159, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!161 = !{!160}
!162 = distinct !{!162, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!163 = distinct !{!163, !162, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!164 = distinct !{!164, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvCs4RW8js5ES7g_4fish13throwing_mainEs_0EB1o_"}
!165 = distinct !{!165, !164, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvCs4RW8js5ES7g_4fish13throwing_mainEs_0EB1o_: argument 0"}
!166 = !{!163}
!167 = !{!165}
!168 = distinct !{!168, i1 true, !"_RNvXsA_Cs476pBYQK2Ku_11fish_fluentReNtB5_13ToFluentValue15to_fluent_value"}
!169 = distinct !{!169, !168, !"_RNvXsA_Cs476pBYQK2Ku_11fish_fluentReNtB5_13ToFluentValue15to_fluent_value: argument 0"}
!170 = !{!169}
!171 = distinct !{!171, i1 true, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs4RW8js5ES7g_4fish"}
!172 = distinct !{!172, !171, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs4RW8js5ES7g_4fish: argument 0"}
!173 = !{!172}
!174 = !{i64 0, i64 2}
!175 = !{i64 0, i64 -9223372036854775807}
!176 = distinct !{!176, i1 true, !"_RNvYNCNKNvNvNtNtCs8frGy5WneL6_4fish7threads7threads9thread_id9THREAD_ID0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1i_6option6OptionQIB1X_NtBa_8ThreadIdEEEE9call_onceCs4RW8js5ES7g_4fish"}
!177 = distinct !{!177, !176, !"_RNvYNCNKNvNvNtNtCs8frGy5WneL6_4fish7threads7threads9thread_id9THREAD_ID0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1i_6option6OptionQIB1X_NtBa_8ThreadIdEEEE9call_onceCs4RW8js5ES7g_4fish: argument 0"}
!178 = distinct !{!178, i1 true, !"_RNCNKNvNvNtNtCs8frGy5WneL6_4fish7threads7threads9thread_id9THREAD_ID0s_0Cs4RW8js5ES7g_4fish"}
!179 = distinct !{!179, !178, !"_RNCNKNvNvNtNtCs8frGy5WneL6_4fish7threads7threads9thread_id9THREAD_ID0s_0Cs4RW8js5ES7g_4fish: argument 0"}
!180 = distinct !{!180, i1 true, !"_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdzE11get_or_initNvNvNvB1g_9thread_id9THREAD_ID27___rust_std_internal_init_fnECs4RW8js5ES7g_4fish"}
!181 = distinct !{!181, !180, !"_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdzE11get_or_initNvNvNvB1g_9thread_id9THREAD_ID27___rust_std_internal_init_fnECs4RW8js5ES7g_4fish: argument 0"}
!182 = !{!181, !179, !177}
!183 = distinct !{!183, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs4RW8js5ES7g_4fish"}
!184 = distinct !{!184, !183, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs4RW8js5ES7g_4fish: argument 0"}
!185 = distinct !{!185, !183, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs4RW8js5ES7g_4fish: argument 1"}
!186 = distinct !{!186, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!187 = distinct !{!187, !186, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!188 = distinct !{!188, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs4RW8js5ES7g_4fish"}
!189 = distinct !{!189, !188, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs4RW8js5ES7g_4fish: argument 0"}
!190 = distinct !{!190, !188, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs4RW8js5ES7g_4fish: argument 1"}
!191 = distinct !{!191, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!192 = distinct !{!192, !191, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!193 = distinct !{!193, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs4RW8js5ES7g_4fish"}
!194 = distinct !{!194, !193, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs4RW8js5ES7g_4fish: argument 0"}
!195 = distinct !{!195, !193, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs4RW8js5ES7g_4fish: argument 1"}
!196 = distinct !{!196, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!197 = distinct !{!197, !196, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!198 = distinct !{!198, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs4RW8js5ES7g_4fish"}
!199 = distinct !{!199, !198, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs4RW8js5ES7g_4fish: argument 0"}
!200 = distinct !{!200, !198, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs4RW8js5ES7g_4fish: argument 1"}
!201 = distinct !{!201, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish"}
!202 = distinct !{!202, !201, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish: argument 0"}
!203 = !{!184}
!204 = !{!184, !185}
!205 = !{!187}
!206 = !{!189}
!207 = !{!189, !190}
!208 = !{!192}
!209 = !{!194}
!210 = !{!194, !195}
!211 = !{!197}
!212 = !{i32 0, i32 2}
!213 = !{!"branch_weights", i32 1, i32 127}
!214 = !{!"branch_weights", i32 127, i32 255873}
!215 = !{!199}
!216 = !{!199, !200}
!217 = !{!202}
!218 = distinct !{!218, i1 true, !"_RNvYNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvCs4RW8js5ES7g_4fish13throwing_mainEs_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoEE9call_onceBP_"}
!219 = distinct !{!219, !218, !"_RNvYNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvCs4RW8js5ES7g_4fish13throwing_mainEs_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoEE9call_onceBP_: argument 0"}
!220 = distinct !{!220, !218, !"_RNvYNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvCs4RW8js5ES7g_4fish13throwing_mainEs_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoEE9call_onceBP_: argument 1"}
!221 = distinct !{!221, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvCs4RW8js5ES7g_4fish13throwing_mainEs_0EB1o_"}
!222 = distinct !{!222, !221, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvCs4RW8js5ES7g_4fish13throwing_mainEs_0EB1o_: argument 0"}
!223 = !{!219}
!224 = !{!219, !220}
!225 = !{!222}
!226 = distinct !{!226, i1 true, !"_RNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startuE0Cs4RW8js5ES7g_4fish"}
!227 = distinct !{!227, !226, !"_RNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startuE0Cs4RW8js5ES7g_4fish: argument 0"}
!228 = !{!227}
!229 = distinct !{!229, i1 true, !"_RNvXs2S_NtCslLGyqsphxMB_10widestring9utfstringNtNtB8_6utfstr8Utf32StrNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_owned"}
!230 = distinct !{!230, !229, !"_RNvXs2S_NtCslLGyqsphxMB_10widestring9utfstringNtNtB8_6utfstr8Utf32StrNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_owned: argument 1"}
!231 = distinct !{!231, !229, !"_RNvXs2S_NtCslLGyqsphxMB_10widestring9utfstringNtNtB8_6utfstr8Utf32StrNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_owned: argument 0"}
!232 = distinct !{!232, i1 true, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs4RW8js5ES7g_4fish"}
!233 = distinct !{!233, !232, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs4RW8js5ES7g_4fish: argument 1"}
!234 = distinct !{!234, !232, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs4RW8js5ES7g_4fish: argument 0"}
end_hunk_1
