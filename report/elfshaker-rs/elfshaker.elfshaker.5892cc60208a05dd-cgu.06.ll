Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.06?download=true
inline.NumInlined: 491
inline.NumDeleted: 247
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [99 x i8] c"Fatal internal error. Please consider filing a bug report at https://github.com/clap-rs/clap/issues", align 1
@1 = private unnamed_addr constant [123 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/clap_builder-4.5.40/src/parser/matches/arg_matches.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"z\00\00\00\00\00\00\00G\04\00\00\0E\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs1_NtCs1ftIqucrW6Z_15crossbeam_utils6threadNtBK_19ScopedThreadBuilder5spawnNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB23_4pack6PackIdINtNtB4_6result6ResultuNtNtB23_5error5ErrorENCINvMs0_NtB23_10repositoryNtB45_10Repository25find_unreferenced_objectsINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB2U_EEs1_0B56_E00INtB5b_3VecB3e_EE0ECs7BtpbLEd5q3_9elfshaker, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs1_NtCs1ftIqucrW6Z_15crossbeam_utils6threadNtBd_19ScopedThreadBuilder5spawnNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB1w_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtB1w_5error5ErrorENCINvMs0_NtB1w_10repositoryNtB3O_10Repository25find_unreferenced_objectsINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB2n_EEs1_0B4P_E00INtB4U_3VecB2H_EE0INtNtNtB2M_3ops8function6FnOnceuE9call_once6vtableCs7BtpbLEd5q3_9elfshaker }>, align 8
@4 = private unnamed_addr constant [106 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/crossbeam-utils-0.8.21/src/thread.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"i\00\00\00\00\00\00\00\DE\01\00\00#\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs1_NtCs1ftIqucrW6Z_15crossbeam_utils6threadNtBK_19ScopedThreadBuilder5spawnNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtB4_6result6ResultNtNtB25_7packidx9FileEntryNtNtNtB4_2io5error5ErrorENCINvMs0_NtB23_10repositoryNtB4N_10Repository15create_snapshotINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB2U_EB2U_E0B5E_E00INtB5J_3VecB3t_EE0ECs7BtpbLEd5q3_9elfshaker, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs1_NtCs1ftIqucrW6Z_15crossbeam_utils6threadNtBd_19ScopedThreadBuilder5spawnNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB1y_7packidx9FileEntryNtNtNtB31_2io5error5ErrorENCINvMs0_NtB1w_10repositoryNtB4x_10Repository15create_snapshotINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB2n_EB2n_E0B5o_E00INtB5t_3VecB2W_EE0INtNtNtB31_3ops8function6FnOnceuE9call_once6vtableCs7BtpbLEd5q3_9elfshaker }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs1_NtCs1ftIqucrW6Z_15crossbeam_utils6threadNtBK_19ScopedThreadBuilder5spawnNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB23_4pack6PackIdINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB3G_6string6StringENtNtB23_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB4_5slice4iter4IterB2V_EE00IB3C_B3f_EE0EB4W_, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs1_NtCs1ftIqucrW6Z_15crossbeam_utils6threadNtBd_19ScopedThreadBuilder5spawnNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB1w_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB3p_6string6StringENtNtB1w_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB2N_5slice4iter4IterB2o_EE00IB3l_B2I_EE0INtNtNtB2N_3ops8function6FnOnceuE9call_once6vtableB4F_ }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs1_NtCs1ftIqucrW6Z_15crossbeam_utils6threadNtBK_19ScopedThreadBuilder5spawnNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB23_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB25_7packidx9FileEntryEEINtNtB4_6result6ResultNtB2X_12ExtractStatsNtNtB23_5error5ErrorENCINvMsa_B2X_NtB2X_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB3n_9into_iter8IntoIterB2U_EE00IB3l_B4j_EE0ECs7BtpbLEd5q3_9elfshaker, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs1_NtCs1ftIqucrW6Z_15crossbeam_utils6threadNtBd_19ScopedThreadBuilder5spawnNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB1w_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB1y_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB2q_12ExtractStatsNtNtB1w_5error5ErrorENCINvMsa_B2q_NtB2q_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB2Q_9into_iter8IntoIterB2n_EE00IB2O_B3M_EE0INtNtNtB3R_3ops8function6FnOnceuE9call_once6vtableCs7BtpbLEd5q3_9elfshaker }>, align 8
@9 = private unnamed_addr constant [29 x i8] c"failed to spawn scoped thread", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"i\00\00\00\00\00\00\00\11\01\00\00\0E\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"i\00\00\00\00\00\00\00\BC\00\00\00\0A\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7BtpbLEd5q3_9elfshaker, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs3oUPovFnLWP_4core3anyINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBw_5boxed3BoxDNtB2_3AnyNtNtB4_6marker4SendEL_EEB1h_7type_idCs7BtpbLEd5q3_9elfshaker }>, align 8
@13 = private unnamed_addr constant [12 x i8] c"nthread == 0", align 1
@14 = private unnamed_addr constant [17 x i8] c"src/repo/algo.rs\00", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\10\00\00\00\00\00\00\00\13\00\00\00\05\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"i\00\00\00\00\00\00\00\CC\01\00\00$\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\10\00\00\00\00\00\00\00\1A\00\00\00\0D\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"i\00\00\00\00\00\00\00#\02\00\00*\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"i\00\00\00\00\00\00\00#\02\00\00:\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"z\00\00\00\00\00\00\00\95\07\00\00\01\00\00\00" }>, align 8
@21 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@22 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCs3oUPovFnLWP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultIB2c_NtNtB2g_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1q_6result6ResultIB1Y_NtNtB22_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEENtNtB1q_3fmt5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1q_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB1q_2io5error5ErrorEEEEENtNtB1q_3fmt5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB38_5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1q_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2V_5error5ErrorEEEEENtNtB1q_3fmt5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEECs7BtpbLEd5q3_9elfshaker, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1q_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEENtNtB1q_3fmt5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB8_6thread11join_handle10JoinHandleuEEEENtNtB1q_3fmt5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1U_4sync3ArcINtB1s_5MutexINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEEEEECs7BtpbLEd5q3_9elfshaker, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1q_4sync3ArcINtBY_5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB8_6thread11join_handle10JoinHandleuEEEEEEENtNtB2r_3fmt5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"i\00\00\00\00\00\00\00\1E\02\00\00)\00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"i\00\00\00\00\00\00\00\1E\02\00\009\00\00\00" }>, align 8
@31 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7476649721672475091 to ptr), ptr inttoptr (i64 5246068680339048326 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = tail call noundef align 8 ptr @_RINvMNtNtCskfBPnJUU6aB_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE3geteECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !noalias !20 ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21
  store i128 166310101364263904992416576642764729534, ptr %i.a, align 16, !noalias !21
  call void @_RNvMNtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.a), !noalias !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21
  %.sroa.013.0.copyload.i = load i128, ptr %i.b, align 16, !noalias !21 ; 3 uses
  %i.d = icmp eq i128 %.sroa.013.0.copyload.i, 166310101364263904992416576642764729534
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i128 %.sroa.013.0.copyload.i, 64
  %i.f = trunc nuw i128 %i.e to i64
  %i.g = trunc i128 %.sroa.013.0.copyload.i to i64
  %i.h = inttoptr i64 %i.g to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i128 166310101364263904992416576642764729534, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21
  %i.i = call noundef align 8 ptr @_RNvMNtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg5first(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.c) ; 2 uses
  %.not8 = icmp eq ptr %i.i, null
  br i1 %.not8, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.a, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.j, align 8
  store i64 2, ptr %0, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = call noundef align 8 ptr @_RINvMNtNtCskfBPnJUU6aB_12clap_builder4util9any_valueNtB3_8AnyValue12downcast_refNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i) ; 2 uses
  %.not9 = icmp eq ptr %i.k, null
  br i1 %.not9, label %bb.g, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8
  store i64 2, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23
  unreachable

bb.h:                                             ; preds = %bb.c, %.thread, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = tail call noundef align 8 ptr @_RINvMNtNtCskfBPnJUU6aB_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE3geteECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !noalias !26 ; 5 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27
  store i128 166310101364263904992416576642764729534, ptr %i.a, align 16, !noalias !27
  call void @_RNvMNtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.a), !noalias !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27
  %.sroa.013.0.copyload.i = load i128, ptr %i.b, align 16, !noalias !27 ; 3 uses
  %i.d = icmp eq i128 %.sroa.013.0.copyload.i, 166310101364263904992416576642764729534
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i128 %.sroa.013.0.copyload.i, 64
  %i.f = trunc nuw i128 %i.e to i64
  %i.g = trunc i128 %.sroa.013.0.copyload.i to i64
  %i.h = inttoptr i64 %i.g to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx21, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 166310101364263904992416576642764729534, ptr %.sroa.6.0..sroa_idx, align 8
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27
  %i.j = call noundef i64 @_RNvMNtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_RNSINvNtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs1xwejQucwHj_5alloc6string6StringE5reifyCs7BtpbLEd5q3_9elfshaker, ptr %i.p, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.o, ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx, align 8
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx, align 8
  %.sroa.48.sroa.7.0..sroa.48.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %.sroa.48.sroa.7.0..sroa.48.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx, align 8
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.f

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink = phi i64 [ 0, %bb.d ], [ 1, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsaL1QbXo9JQH_3std4path7PathBufEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !6
  %switch = icmp ugt i64 %i.a, -3
  br i1 %switch, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !6
  %switch = icmp ugt i64 %i.a, -3
  br i1 %switch, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_TNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB18_7packidx9FileEntryEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !6 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB14_7packidx9FileEntryEEEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB14_7packidx9FileEntryEEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBI_7packidx9FileEntryEEECs7BtpbLEd5q3_9elfshaker.exit.i, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.c = icmp eq i64 %i.a, 2
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB14_7packidx9FileEntryEEEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !46, !noundef !6 ; 2 uses
  %i.e = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !46, !nonnull !6, !noundef !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i, i64 noundef 1) #25, !noalias !46
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val2.i.i.i.i.i.i = load i32, ptr %i.g, align 8, !range !47, !alias.scope !46, !noundef !6
  %i.h = tail call noundef i32 @close(i32 noundef %.val2.i.i.i.i.i.i) #25, !noalias !46 ; 0 uses
  %i.i = icmp eq i64 %i.a, 0
  br i1 %i.i, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderECs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs6_CscCEFg35tJHG_9zstd_safeNtB5_4DCtxNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #26
          to label %common.resume.i.i unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBI_7packidx9FileEntryEEECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume.i.i:                                ; preds = %bb.h, %bb.g
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.k, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.j:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBI_7packidx9FileEntryEEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderECs7BtpbLEd5q3_9elfshaker.exit.i.i
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB14_7packidx9FileEntryEEEECs7BtpbLEd5q3_9elfshaker.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultIBY_NtNtB12_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultIBC_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultIBw_NtNtB7_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultIBC_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultINtNtB7_3vec3VecNtNtB7_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultINtNtBG_3vec3VecNtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6result6ResultINtNtBG_3vec3VecNtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultIBC_NtNtBG_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultINtNtB7_3vec3VecNtNtB7_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEECs7BtpbLEd5q3_9elfshaker.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBK_2io5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
end_hunk_0
