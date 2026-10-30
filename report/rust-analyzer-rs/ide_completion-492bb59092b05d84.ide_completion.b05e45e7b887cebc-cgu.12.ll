Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_completion-492bb59092b05d84.ide_completion.b05e45e7b887cebc-cgu.12?download=true
inline.NumInlined: 1145
inline.NumDeleted: 650
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [22 x i8] c"crates/hir/src/lib.rs\00", align 1
@_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES = external global { { { [303 x i64] } }, { { { { { i32 } } } } }, {}, [4 x i8] }
@1 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBe_4Type19iterate_assoc_itemsuNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_paths5_0E0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTNtCsileJQcQObtj_7hir_def11AssocItemIdEE9call_once6vtableB1a_, ptr @_RNCINvMs1x_Cs8Xq8PKFYOms_3hirNtB9_4Type19iterate_assoc_itemsuNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_paths5_0E0B15_ }>, align 8
@2 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBe_4Type19iterate_assoc_itemsuNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_paths7_0E0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTNtCsileJQcQObtj_7hir_def11AssocItemIdEE9call_once6vtableB1a_, ptr @_RNCINvMs1x_Cs8Xq8PKFYOms_3hirNtB9_4Type19iterate_assoc_itemsuNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_paths7_0E0B15_ }>, align 8
@3 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBe_4Type19iterate_assoc_itemsuNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4type18complete_type_paths4_0E0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTNtCsileJQcQObtj_7hir_def11AssocItemIdEE9call_once6vtableB1a_, ptr @_RNCINvMs1x_Cs8Xq8PKFYOms_3hirNtB9_4Type19iterate_assoc_itemsuNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4type18complete_type_paths4_0E0B15_ }>, align 8
@4 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBe_4Type19iterate_assoc_itemsuNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4type18complete_type_paths7_0E0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTNtCsileJQcQObtj_7hir_def11AssocItemIdEE9call_once6vtableB1a_, ptr @_RNCINvMs1x_Cs8Xq8PKFYOms_3hirNtB9_4Type19iterate_assoc_itemsuNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4type18complete_type_paths7_0E0B15_ }>, align 8
@5 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBe_4Type19iterate_assoc_itemsuNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix16complete_postfixs_0E0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTNtCsileJQcQObtj_7hir_def11AssocItemIdEE9call_once6vtableB1a_, ptr @_RNCINvMs1x_Cs8Xq8PKFYOms_3hirNtB9_4Type19iterate_assoc_itemsuNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix16complete_postfixs_0E0B15_ }>, align 8
@_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL = external local_unnamed_addr global { { { i64 } } }
@_RNvNvMs1x_Cs8Xq8PKFYOms_3hirNtB8_4Type23iterate_path_candidates10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@6 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_10DebugValueRINtNtCshzWfHUSfYae_4core6option6OptionRNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtB5_5Value6recordCsf8NQSppxkmK_14ide_completion }>, align 8
@_RNvNvMs1x_Cs8Xq8PKFYOms_3hirNtB8_4Type23iterate_path_candidatess_10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@_RNvNvMs1x_Cs8Xq8PKFYOms_3hirNtB8_4Type38iterate_path_candidates_split_inherent10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@_RNvNvMs1x_Cs8Xq8PKFYOms_3hirNtB8_4Type38iterate_path_candidates_split_inherents_10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@7 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs17_NtCsaMQbKjKCVRW_12tracing_core5fieldjNtB6_5Value6record }>, align 8
@_RNvNvMs1x_Cs8Xq8PKFYOms_3hirNtB8_4Type40iterate_method_candidates_split_inherent10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@8 = private unnamed_addr constant [80 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/std/src/thread/local.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"O\00\00\00\00\00\00\00\AE\01\00\00\19\00\00\00" }>, align 8
@10 = private unnamed_addr constant [80 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/core/src/str/pattern.rs\00", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"O\00\00\00\00\00\00\00\F3\05\00\00\14\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9canonical11instantiate17instantiate_valueNtNtBf_2ty2TyE0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder11BoundRegionNtNtBf_8interner10DbInternerEEE9call_once6vtableCsf8NQSppxkmK_14ide_completion, ptr @_RNCINvNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9canonical11instantiate17instantiate_valueNtNtBa_2ty2TyE0Csf8NQSppxkmK_14ide_completion }>, align 8
@13 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9canonical11instantiate17instantiate_valueNtNtBf_2ty2TyEs_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder7BoundTyNtNtBf_8interner10DbInternerEEE9call_once6vtableCsf8NQSppxkmK_14ide_completion, ptr @_RNCINvNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9canonical11instantiate17instantiate_valueNtNtBa_2ty2TyEs_0Csf8NQSppxkmK_14ide_completion }>, align 8
@14 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9canonical11instantiate17instantiate_valueNtNtBf_2ty2TyEs0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder10BoundConstNtNtBf_8interner10DbInternerEEE9call_once6vtableCsf8NQSppxkmK_14ide_completion, ptr @_RNCINvNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9canonical11instantiate17instantiate_valueNtNtBa_2ty2TyEs0_0Csf8NQSppxkmK_14ide_completion }>, align 8
@15 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@16 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @15, [24 x i8] zeroinitializer }>, align 8
@17 = private unnamed_addr constant [86 x i8] c"internal error: entered unreachable code: `Mode::MethodCall` can only return functions", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\15\00\00\00\00\00\00\00\D6\18\00\00!\00\00\00" }>, align 8
@19 = private unnamed_addr constant [61 x i8] c"crates/hir-ty/src/next_solver/infer/canonical/instantiate.rs\00", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"<\00\00\00\00\00\00\00]\00\00\00B\00\00\00" }>, align 8
@21 = private unnamed_addr constant [30 x i8] c"\C0\1A is a region but value is \C0\00", align 1
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"<\00\00\00\00\00\00\00_\00\00\00\16\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"<\00\00\00\00\00\00\00e\00\00\00F\00\00\00" }>, align 8
@24 = private unnamed_addr constant [29 x i8] c"\C0\19 is a const but value is \C0\00", align 1
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"<\00\00\00\00\00\00\00g\00\00\00\16\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"<\00\00\00\00\00\00\00a\00\00\00B\00\00\00" }>, align 8
@27 = private unnamed_addr constant [28 x i8] c"\C0\18 is a type but value is \C0\00", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"<\00\00\00\00\00\00\00c\00\00\00\16\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\15\00\00\00\00\00\00\00\07\1D\00\00.\00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\15\00\00\00\00\00\00\00\15\1D\00\00*\00\00\00" }>, align 8
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\15\00\00\00\00\00\00\00\EE\18\00\00!\00\00\00" }>, align 8
@_RNvNCNKNvNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner6tls_db9GLOBAL_DB0s_023___RUST_STD_INTERNAL_VAL = external thread_local local_unnamed_addr global { { { { ptr, [1 x i64] } } } }
@32 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECsf8NQSppxkmK_14ide_completion, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa8databaseNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_13AsDynDatabase15as_dyn_databaseCsf8NQSppxkmK_14ide_completion }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECsf8NQSppxkmK_14ide_completion, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCshzWfHUSfYae_4core3anyNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB2_3Any7type_idCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa5zalsa13ZalsaDatabase6zalsasCsf8NQSppxkmK_14ide_completion, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase5zalsaCsf8NQSppxkmK_14ide_completion, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase9zalsa_mutCsf8NQSppxkmK_14ide_completion, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase11zalsa_localCsf8NQSppxkmK_14ide_completion, ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa8databaseNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_13AsDynDatabase15as_dyn_databaseCsf8NQSppxkmK_14ide_completion, ptr @32, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_lru_evictionCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database15synthetic_writeCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_cancellationCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database18cancellation_tokenCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21report_untracked_readCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21ingredient_debug_nameCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database28unwind_if_revision_cancelledCsf8NQSppxkmK_14ide_completion, ptr @_RNvXsb_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database25zalsa_register_downcaster }>, align 8
@34 = private unnamed_addr constant [3 x i8] c"mod", align 1
@35 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECsf8NQSppxkmK_14ide_completion, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@36 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECsf8NQSppxkmK_14ide_completion, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCshzWfHUSfYae_4core3anyNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB2_3Any7type_idCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa5zalsa13ZalsaDatabase6zalsasCsf8NQSppxkmK_14ide_completion, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase5zalsaCsf8NQSppxkmK_14ide_completion, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase9zalsa_mutCsf8NQSppxkmK_14ide_completion, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase11zalsa_localCsf8NQSppxkmK_14ide_completion, ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa8databaseNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_13AsDynDatabase15as_dyn_databaseCsf8NQSppxkmK_14ide_completion, ptr @32, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_lru_evictionCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database15synthetic_writeCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_cancellationCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database18cancellation_tokenCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21report_untracked_readCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21ingredient_debug_nameCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database28unwind_if_revision_cancelledCsf8NQSppxkmK_14ide_completion, ptr @_RNvXsb_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database25zalsa_register_downcaster, ptr @_RNvXs1_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr @35, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase9file_text, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase13set_file_text, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase29set_file_text_with_durability, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase11source_root, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase16file_source_root, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase36set_file_source_root_with_durability, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase31set_source_root_with_durability, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase12resolve_pathCsf8NQSppxkmK_14ide_completion, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase10crates_map, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase18nonce_and_revision, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase11line_column, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase25zalsa_register_downcaster, ptr @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty2dbNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_11HirDatabase6as_dynCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase8mir_bodyCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase20mir_body_for_closureCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase22monomorphized_mir_bodyCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase34monomorphized_mir_body_for_closureCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase10const_evalCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase15anon_const_evalCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase17const_eval_staticCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase23const_eval_discriminantCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase18lookup_impl_methodCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase13layout_of_adtCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase12layout_of_tyCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase18target_data_layoutCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase26dyn_compatibility_of_traitCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase2tyCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase36type_for_type_alias_with_diagnosticsCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase8value_tyCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase14type_for_constCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase31type_for_const_with_diagnosticsCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase15type_for_staticCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase32type_for_static_with_diagnosticsCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase29impl_self_ty_with_diagnosticsCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase12impl_self_tyCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase34const_param_types_with_diagnosticsCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase17const_param_typesCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase14const_param_tyCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase27impl_trait_with_diagnosticsCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase10impl_traitCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase28field_types_with_diagnosticsCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase11field_typesCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase23callable_item_signatureCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase40callable_item_signature_with_diagnosticsCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase17trait_environmentCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase33generic_defaults_with_diagnosticsCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase16generic_defaultsCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase34type_alias_bounds_with_diagnosticsCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase17type_alias_boundsCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase22type_alias_self_boundsCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase12variances_ofCsf8NQSppxkmK_14ide_completion, ptr @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty2dbNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_11HirDatabase25zalsa_register_downcasterBx_ }>, align 8
@_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3new10SYMBOL_STR = external global { ptr, i64 }
@_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@37 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions10ra_fixture19complete_ra_fixture0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTNtNtCsuAhG64lL82_9text_size5range9TextRangeEE9call_once6vtableBc_, ptr @_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions10ra_fixture19complete_ra_fixture0B7_ }>, align 8
@38 = private unnamed_addr constant [10 x i8] c"pub(crate)", align 1
@39 = private unnamed_addr constant [13 x i8] c"pub(crate) $0", align 1
@40 = private unnamed_addr constant [10 x i8] c"pub(super)", align 1
@41 = private unnamed_addr constant [13 x i8] c"pub(super) $0", align 1
@42 = private unnamed_addr constant [3 x i8] c"pub", align 1
@43 = private unnamed_addr constant [6 x i8] c"pub $0", align 1
@44 = private unnamed_addr constant [4 x i8] c"enum", align 1
@45 = private unnamed_addr constant [18 x i8] c"enum $1 {\0A    $0\0A}", align 1
@46 = private unnamed_addr constant [6 x i8] c"mod $0", align 1
@47 = private unnamed_addr constant [6 x i8] c"static", align 1
@48 = private unnamed_addr constant [9 x i8] c"static $0", align 1
@49 = private unnamed_addr constant [6 x i8] c"struct", align 1
@50 = private unnamed_addr constant [9 x i8] c"struct $0", align 1
@51 = private unnamed_addr constant [5 x i8] c"trait", align 1
@52 = private unnamed_addr constant [19 x i8] c"trait $1 {\0A    $0\0A}", align 1
@53 = private unnamed_addr constant [5 x i8] c"union", align 1
@54 = private unnamed_addr constant [19 x i8] c"union $1 {\0A    $0\0A}", align 1
@55 = private unnamed_addr constant [3 x i8] c"use", align 1
@56 = private unnamed_addr constant [7 x i8] c"use $0;", align 1
@57 = private unnamed_addr constant [4 x i8] c"impl", align 1
@58 = private unnamed_addr constant [18 x i8] c"impl $1 {\0A    $0\0A}", align 1
@59 = private unnamed_addr constant [8 x i8] c"impl for", align 1
@60 = private unnamed_addr constant [25 x i8] c"impl $1 for $2 {\0A    $0\0A}", align 1
@61 = private unnamed_addr constant [6 x i8] c"extern", align 1
@62 = private unnamed_addr constant [9 x i8] c"extern $0", align 1
@63 = private unnamed_addr constant [4 x i8] c"type", align 1
@64 = private unnamed_addr constant [7 x i8] c"type $0", align 1
@65 = private unnamed_addr constant [5 x i8] c"crate", align 1
@66 = private unnamed_addr constant [9 x i8] c"crate $0;", align 1
@67 = private unnamed_addr constant [2 x i8] c"fn", align 1
@68 = private unnamed_addr constant [20 x i8] c"fn $1($2) {\0A    $0\0A}", align 1
@69 = private unnamed_addr constant [6 x i8] c"unsafe", align 1
@70 = private unnamed_addr constant [9 x i8] c"unsafe $0", align 1
@71 = private unnamed_addr constant [5 x i8] c"const", align 1
@72 = private unnamed_addr constant [8 x i8] c"const $0", align 1
@73 = private unnamed_addr constant [5 x i8] c"async", align 1
@74 = private unnamed_addr constant [8 x i8] c"async $0", align 1
@75 = private unnamed_addr constant [4 x i8] c"safe", align 1
@76 = private unnamed_addr constant [7 x i8] c"safe $0", align 1
@77 = private unnamed_addr constant [10 x i8] c"fn $1($2);", align 1
@78 = private unnamed_addr constant [14 x i8] c"static $1: $2;", align 1
@79 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9item_list18complete_item_list0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8ScopeDefINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrEEE9call_once6vtableBc_, ptr @_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9item_list18complete_item_list0B7_ }>, align 8
@_RNvNvNtNtCsf8NQSppxkmK_14ide_completion11completions9item_list18complete_item_list10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvNtNtCsf8NQSppxkmK_14ide_completion11completions9item_list18complete_item_list10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@80 = private unnamed_addr constant [18 x i8] c"complete_item_list", align 1
@81 = private unnamed_addr constant [38 x i8] c"ide_completion::completions::item_list", align 1
@82 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest, ptr @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata, ptr @_RNvYNtNtCsaMQbKjKCVRW_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsf8NQSppxkmK_14ide_completion }>, align 8
@83 = private unnamed_addr constant [50 x i8] c"crates/ide-completion/src/completions/item_list.rs", align 1
@_RNvNvNvNtNtCsf8NQSppxkmK_14ide_completion11completions9item_list18complete_item_list10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00\1F\00\00\00", ptr @80, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @81, [8 x i8] c"&\00\00\00\00\00\00\00", ptr inttoptr (i64 8 to ptr), [8 x i8] zeroinitializer, ptr @_RNvNvNtNtCsf8NQSppxkmK_14ide_completion11completions9item_list18complete_item_list10___CALLSITE, ptr @82, ptr @81, [8 x i8] c"&\00\00\00\00\00\00\00", ptr @83, [9 x i8] c"2\00\00\00\00\00\00\00\02", [7 x i8] undef }>, align 8
@84 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -8407916533717187642 to ptr), ptr inttoptr (i64 8687281100977841205 to ptr) }>, align 8
@85 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"O\00\00\00\00\00\00\00k\04\00\00$\00\00\00" }>, align 8
@86 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char, ptr @_RNvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmtCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs8K4cjrcxBsw_6hir_ty7display8HirWrite19start_location_linkCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs8K4cjrcxBsw_6hir_ty7display8HirWrite27start_location_link_genericCsf8NQSppxkmK_14ide_completion, ptr @_RNvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs8K4cjrcxBsw_6hir_ty7display8HirWrite17end_location_linkCsf8NQSppxkmK_14ide_completion }>, align 8
@87 = private unnamed_addr constant [29 x i8] c"Writing to String can't fail!", align 1
@88 = private unnamed_addr constant [29 x i8] c"crates/hir-ty/src/display.rs\00", align 1
@89 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @88, [16 x i8] c"\1C\00\00\00\00\00\00\00z\01\00\00/\00\00\00" }>, align 8
@90 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -654675508425364404 to ptr), ptr inttoptr (i64 7626636266285069727 to ptr) }>, align 8
@switch.table._RINvMs1x_Cs8Xq8PKFYOms_3hirNtB7_4Type40iterate_method_candidates_split_inherentINtNvNtNtCsf8NQSppxkmK_14ide_completion11completions3dot16complete_methods8CallbackNCNvB1k_22complete_undotted_selfs0_0EEB1o_ = private unnamed_addr constant [4 x i8] c"\02\05\01\0D", align 4
@switch.table._RNvYNtCs8Xq8PKFYOms_3hir5FieldNtNtCs6oosyzwIepl_6ide_db13documentation7HasDocs4docsCsf8NQSppxkmK_14ide_completion = private unnamed_addr constant [3 x i8] c"\01\02\00", align 4

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCs8Xq8PKFYOms_3hir21resolve_absolute_pathINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtBQ_3str4iter5SplitReENvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB23_6Symbol6internEECsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([432 x i8]) align 8 captures(none) dereferenceable(432) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %2, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(128) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 121 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !4, !alias.scope !64, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB1u_6Symbol6internENtNtNtB9_6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !64, !nonnull !5, !noundef !5 ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.val1.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !64, !noundef !5 ; 30 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.f = load i64, ptr %3, align 8, !range !6, !alias.scope !66, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  br i1 %i.g, label %bb.l, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 26 ; 2 uses
  %i.j = load i8, ptr %i.i, align 2, !range !4, !alias.scope !67, !noundef !5
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.ai, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %.promoted.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !66 ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %.promoted52.i.i.i.i = load i8, ptr %i.l, align 8, !alias.scope !67 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.m = trunc nuw i8 %.promoted52.i.i.i.i to i1  ; 2 uses
  %i.n = icmp eq i64 %.promoted.i.i.i.i, 0
  br i1 %i.n, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.peel.i.i.i = icmp ult i64 %.promoted.i.i.i.i, %.val1.i.i.i
  br i1 %.not.i.i.i.peel.i.i.i, label %bb.d, label %.split.i.i.i.peel.i.i.i

.split.i.i.i.peel.i.i.i:                          ; preds = %bb.c
  %i.o = icmp eq i64 %.promoted.i.i.i.i, %.val1.i.i.i
  br i1 %i.o, label %bb.e, label %.loopexit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.promoted.i.i.i.i
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !69, !noalias !70, !noundef !5
  %i.r = icmp sgt i8 %i.q, -65
  br i1 %i.r, label %bb.e, label %.loopexit.i.i.i

bb.e:                                             ; preds = %bb.d, %.split.i.i.i.peel.i.i.i, %.lr.ph.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.promoted.i.i.i.i ; 4 uses
  %i.t = icmp samesign eq i64 %.promoted.i.i.i.i, %.val1.i.i.i
  br i1 %i.t, label %.loopexit51.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i8, ptr %i.s, align 1, !noalias !71, !noundef !5 ; 5 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %bb.g, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.peel.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.peel.i.i.i: ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.x = and i8 %i.u, 31
  %i.y = zext nneg i8 %i.x to i32                 ; 3 uses
  %i.z = add nuw nsw i64 %.promoted.i.i.i.i, 1
  %i.aa = icmp samesign ne i64 %i.z, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = load i8, ptr %i.w, align 1, !noalias !71, !noundef !5
  %i.ac = shl nuw nsw i32 %i.y, 6
  %i.ad = and i8 %i.ab, 63
  %i.ae = zext nneg i8 %i.ad to i32               ; 2 uses
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = icmp samesign ugt i8 %i.u, -33
  br i1 %i.ag, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.peel.i.i.i, label %bb.h

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.peel.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.ai = add nuw nsw i64 %.promoted.i.i.i.i, 2
  %i.aj = icmp samesign ne i64 %i.ai, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load i8, ptr %i.ah, align 1, !noalias !71, !noundef !5
  %i.al = shl nuw nsw i32 %i.ae, 6
  %i.am = and i8 %i.ak, 63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an            ; 2 uses
  %i.ap = shl nuw nsw i32 %i.y, 12
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %i.ar = icmp samesign ugt i8 %i.u, -17
  br i1 %i.ar, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.peel.i.i.i, label %bb.h

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.peel.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.at = add nuw nsw i64 %.promoted.i.i.i.i, 3
  %i.au = icmp samesign ne i64 %i.at, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.au)
  %i.av = load i8, ptr %i.as, align 1, !noalias !71, !noundef !5
  %i.aw = shl nuw nsw i32 %i.y, 18
  %i.ax = and i32 %i.aw, 1835008
  %i.ay = shl nuw nsw i32 %i.ao, 6
  %i.az = and i8 %i.av, 63
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = or disjoint i32 %i.bb, %i.ax
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = zext nneg i8 %i.u to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.peel.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.peel.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.peel.i.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i.i = phi i32 [ %i.aq, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.peel.i.i.i ], [ %i.bc, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.peel.i.i.i ], [ %i.af, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.peel.i.i.i ], [ %i.bd, %bb.g ] ; 4 uses
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.be)
  br i1 %i.m, label %.loopexit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 128
  br i1 %i.bf, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 2048
  br i1 %i.bg, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 65536
  %..i.i.peel.i.i.i = select i1 %i.bh, i64 3, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !66, !noundef !5 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, -1
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !66, !nonnull !5, !noundef !5 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !66, !noundef !5 ; 16 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 9 uses
  %i.bq = add nsw i64 %i.bo, -1                   ; 5 uses
  br i1 %i.bk, label %bb.aa, label %bb.s

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.i.i.peel.i.i.i = phi i64 [ 2, %bb.j ], [ %..i.i.peel.i.i.i, %bb.k ], [ 1, %bb.i ]
  %i.br = add i64 %.sroa.01.0.i.i.peel.i.i.i, %.promoted.i.i.i.i ; 16 uses
  store i64 %i.br, ptr %i.h, align 8, !alias.scope !72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i.i.i = icmp ult i64 %i.br, %.val1.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %.split.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.n
  %i.bt = icmp eq i64 %i.br, %.val1.i.i.i
  br i1 %i.bt, label %bb.p, label %.loopexit.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.br
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !69, !noalias !74, !noundef !5
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.p, label %.loopexit.i.i.i

bb.p:                                             ; preds = %bb.o, %.split.i.i.i.i.i.i, %bb.m
  %i.bx = icmp samesign eq i64 %i.br, %.val1.i.i.i
  br i1 %i.bx, label %bb.ah, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.br
  %i.bz = load i8, ptr %i.by, align 1, !noalias !75, !noundef !5 ; 3 uses
  %i.ca = icmp sgt i8 %i.bz, -1
  br i1 %i.ca, label %.loopexit.i.i.i.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.i.i.i: ; preds = %bb.q
  %i.cb = add nuw nsw i64 %i.br, 1
  %i.cc = icmp samesign ne i64 %i.cb, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = icmp samesign ugt i8 %i.bz, -33
  br i1 %i.cd, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.i.i.i, label %.loopexit.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.i.i.i
  %i.ce = add nuw nsw i64 %i.br, 2
  %i.cf = icmp samesign ne i64 %i.ce, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp samesign ugt i8 %i.bz, -17
  br i1 %i.cg, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.i.i.i, label %.loopexit.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.i.i.i
  %i.ch = add nuw nsw i64 %i.br, 3
  %i.ci = icmp samesign ne i64 %i.ch, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.ci)
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.o, %.split.i.i.i.i.i.i, %bb.d, %.split.i.i.i.peel.i.i.i
  %.lcssa44.i.i.i = phi i64 [ %.promoted.i.i.i.i, %.split.i.i.i.peel.i.i.i ], [ %.promoted.i.i.i.i, %bb.d ], [ %i.br, %.split.i.i.i.i.i.i ], [ %i.br, %bb.o ]
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef %.lcssa44.i.i.i, i64 noundef %.val1.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #36, !noalias !74
  unreachable

.loopexit51.i.i.i:                                ; preds = %bb.e
  %i.cj = xor i8 %.promoted52.i.i.i.i, 1
  store i8 %i.cj, ptr %i.l, align 8, !alias.scope !67
  br i1 %i.m, label %bb.ah, label %bb.r

bb.r:                                             ; preds = %.loopexit51.i.i.i
  store i8 1, ptr %i.i, align 2, !alias.scope !67
  br label %bb.ai

.loopexit.i.i.i.i:                                ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.i.i.i, %bb.q, %bb.h
  %.lcssa46.i.i.i = phi i64 [ %.promoted.i.i.i.i, %bb.h ], [ %i.br, %bb.q ], [ %i.br, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.i.i.i ], [ %i.br, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.i.i.i ], [ %i.br, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.i.i.i ] ; 2 uses
  store i8 0, ptr %i.l, align 8, !alias.scope !67
  br label %bb.ah

bb.s:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %.promoted.i.i.i.i.i = load i64, ptr %i.bp, align 8, !alias.scope !79 ; 2 uses
  %i.ck = add i64 %.promoted.i.i.i.i.i, %i.bq     ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %.val1.i.i.i
  br i1 %i.cl, label %.lr.ph.i1.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i1.i.i.i.i:                                ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !79, !noundef !5
  %i.co = load i64, ptr %i.h, align 8, !alias.scope !79 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !79 ; 2 uses
  %i.cr = sub i64 %i.bo, %i.cq
  %invariant.op = sub i64 1, %i.co
  br label %.lr.ph.split.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.v, %bb.s
  store i64 %.val1.i.i.i, ptr %i.bp, align 8, !alias.scope !79
  br label %bb.ai

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.v, %.lr.ph.i1.i.i.i.i
  %i.cs = phi i64 [ %.sink70.i.i.i.i.i, %bb.v ], [ %i.bj, %.lr.ph.i1.i.i.i.i ] ; 3 uses
  %i.ct = phi i64 [ %i.dd, %bb.v ], [ %i.ck, %.lr.ph.i1.i.i.i.i ]
  %i.cu = phi i64 [ %.sink71.i.i.i.i.i, %bb.v ], [ %.promoted.i.i.i.i.i, %.lr.ph.i1.i.i.i.i ] ; 7 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ct
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !77, !noalias !80, !noundef !5
  %i.cx = and i8 %i.cw, 63
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = shl nuw i64 1, %i.cy
  %i.da = and i64 %i.cz, %i.cn
  %.not.i2.i.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i2.i.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.db = add i64 %i.cu, %i.bo
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %..i.i3.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.cs, i64 %i.co) ; 2 uses
  %i.dc = icmp ult i64 %..i.i3.i.i.i.i, %i.bo
  br i1 %i.dc, label %.lr.ph, label %.preheader36.i.i.i.i.i.preheader

bb.v:                                             ; preds = %bb.z, %bb.y, %bb.t
  %.sink71.i.i.i.i.i = phi i64 [ %i.dz, %bb.z ], [ %i.dy, %bb.y ], [ %i.db, %bb.t ] ; 3 uses
  %.sink70.i.i.i.i.i = phi i64 [ 0, %bb.z ], [ %i.cr, %bb.y ], [ 0, %bb.t ] ; 2 uses
  store i64 %.sink71.i.i.i.i.i, ptr %i.bp, align 8, !alias.scope !79
  store i64 %.sink70.i.i.i.i.i, ptr %i.bi, align 8, !alias.scope !79
  %i.dd = add i64 %.sink71.i.i.i.i.i, %i.bq       ; 2 uses
  %i.de = icmp ult i64 %i.dd, %.val1.i.i.i
  br i1 %i.de, label %.lr.ph.split.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

bb.w:                                             ; preds = %.lr.ph
  %i.df = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i113, 1 ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.bo
  br i1 %i.dg, label %.lr.ph, label %.preheader36.i.i.i.i.i.preheader

.preheader36.i.i.i.i.i.preheader:                 ; preds = %bb.w, %bb.u
  %i.dh = icmp ult i64 %i.cs, %i.co
  br i1 %i.dh, label %.lr.ph115, label %.split.us.i.i.i.i.i

.lr.ph:                                           ; preds = %bb.u, %bb.w
  %.sroa.04.0.i.i.i.i.i113 = phi i64 [ %i.df, %bb.w ], [ %..i.i3.i.i.i.i, %bb.u ] ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.04.0.i.i.i.i.i113
  %i.dj = load i8, ptr %i.di, align 1, !alias.scope !78, !noalias !80, !noundef !5
  %i.dk = add i64 %.sroa.04.0.i.i.i.i.i113, %i.cu ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.dk
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !77, !noalias !80, !noundef !5
  %.not21.i.i.i.i.i = icmp eq i8 %i.dj, %i.dn
  br i1 %.not21.i.i.i.i.i, label %bb.w, label %bb.z

.preheader36.i.i.i.i.i:                           ; preds = %bb.x
  %i.do = icmp ult i64 %i.cs, %i.dq
  br i1 %i.do, label %.lr.ph115, label %.split.us.i.i.i.i.i

.split.us.i.i.i.i.i:                              ; preds = %.preheader36.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i
  %i.dp = add i64 %i.cu, %i.bo                    ; 2 uses
  store i64 %i.dp, ptr %i.bp, align 8, !alias.scope !79
  store i64 0, ptr %i.bi, align 8, !alias.scope !79
  br label %bb.ah

.lr.ph115:                                        ; preds = %.preheader36.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i
  %.sroa.2.0.i.i.i.i.i114 = phi i64 [ %i.dq, %.preheader36.i.i.i.i.i ], [ %i.co, %.preheader36.i.i.i.i.i.preheader ]
  %i.dq = add i64 %.sroa.2.0.i.i.i.i.i114, -1     ; 6 uses
  %i.dr = icmp ult i64 %i.dq, %i.bo
  br i1 %i.dr, label %bb.x, label %.split32.us.i.i.i.i.i

bb.x:                                             ; preds = %.lr.ph115
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.dq
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !78, !noalias !80, !noundef !5
  %i.du = add i64 %i.dq, %i.cu                    ; 2 uses
  %i.dv = icmp ult i64 %i.du, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.du
  %i.dx = load i8, ptr %i.dw, align 1, !alias.scope !77, !noalias !80, !noundef !5
  %.not20.i.i.i.i.i = icmp eq i8 %i.dt, %i.dx
  br i1 %.not20.i.i.i.i.i, label %.preheader36.i.i.i.i.i, label %bb.y

.split32.us.i.i.i.i.i:                            ; preds = %.lr.ph115
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.dq, i64 noundef range(i64 0, -9223372036854775808) %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #36, !noalias !81
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.dy = add i64 %i.cu, %i.cq
  br label %bb.v

bb.z:                                             ; preds = %.lr.ph
  %.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.cu, %invariant.op
  %i.dz = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i.i113
  br label %bb.v

bb.aa:                                            ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %.promoted.i4.i.i.i.i = load i64, ptr %i.bp, align 8, !alias.scope !85 ; 3 uses
  %i.ea = add i64 %.promoted.i4.i.i.i.i, %i.bq    ; 3 uses
  %i.eb = icmp ult i64 %i.ea, %.val1.i.i.i
  br i1 %i.eb, label %.lr.ph.i7.i.i.i.i, label %._crit_edge.i5.i.i.i.i

.lr.ph.i7.i.i.i.i:                                ; preds = %bb.aa
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !85, !noundef !5 ; 2 uses
  %i.ee = load i64, ptr %i.h, align 8, !alias.scope !85
  %.fr63.i.i.i.i = freeze i64 %i.ee               ; 10 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !85
  %umax.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr63.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.bo) ; 2 uses
  %i.eh = add i64 %.fr63.i.i.i.i, -1              ; 2 uses
  %.first_iter.i8.i.i.i.i = icmp ult i64 %i.eh, %i.bo
  %i.ei = sub i64 1, %.fr63.i.i.i.i               ; 2 uses
  br i1 %.first_iter.i8.i.i.i.i, label %.lr.ph.split.us.i.us.i.i.i.i.preheader, label %.lr.ph.split.us.i.i.i.i.i.preheader

.lr.ph.split.us.i.i.i.i.i.preheader:              ; preds = %.lr.ph.i7.i.i.i.i
  %exitcond.not.i.i.i.i.i117.not = icmp ult i64 %.fr63.i.i.i.i, %i.bo
  br label %.lr.ph.split.us.i.i.i.i.i

.lr.ph.split.us.i.us.i.i.i.i.preheader:           ; preds = %.lr.ph.i7.i.i.i.i
  %exitcond.not.i.us.i.i.i.i122.not = icmp ult i64 %.fr63.i.i.i.i, %i.bo
  %.not34.i.us.us.i.i.i.i125 = icmp eq i64 %.fr63.i.i.i.i, 0
  br label %.lr.ph.split.us.i.us.i.i.i.i

.lr.ph.split.us.i.us.i.i.i.i:                     ; preds = %.lr.ph.split.us.i.us.i.i.i.i.preheader, %bb.ad
  %i.ej = phi i64 [ %i.fj, %bb.ad ], [ %i.ea, %.lr.ph.split.us.i.us.i.i.i.i.preheader ]
  %i.ek = phi i64 [ %.sink.i9.us.i.i.i.i, %bb.ad ], [ %.promoted.i4.i.i.i.i, %.lr.ph.split.us.i.us.i.i.i.i.preheader ] ; 7 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ej
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !83, !noalias !80, !noundef !5
  %i.en = and i8 %i.em, 63
  %i.eo = zext nneg i8 %i.en to i64
  %i.ep = shl nuw i64 1, %i.eo
  %i.eq = and i64 %i.ep, %i.ed
  %.not.us.i.us.i.i.i.i = icmp eq i64 %i.eq, 0
  br i1 %.not.us.i.us.i.i.i.i, label %bb.ac, label %.preheader35.i.us.i.i.i.i.preheader

.preheader35.i.us.i.i.i.i.preheader:              ; preds = %.lr.ph.split.us.i.us.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i122.not, label %.lr.ph124, label %.preheader.i10.us.us.i.i.i.i.preheader

.preheader35.i.us.i.i.i.i:                        ; preds = %.lr.ph124
  %i.er = add i64 %.sroa.04.0.us.i.us.i.i.i.i123, 1 ; 2 uses
  %exitcond.not.i.us.i.i.i.i = icmp eq i64 %i.er, %umax.i.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i, label %.preheader.i10.us.us.i.i.i.i.preheader, label %.lr.ph124

.preheader.i10.us.us.i.i.i.i.preheader:           ; preds = %.preheader35.i.us.i.i.i.i, %.preheader35.i.us.i.i.i.i.preheader
  br i1 %.not34.i.us.us.i.i.i.i125, label %.split.us.i12.i.i.i.i, label %.lr.ph127

.lr.ph124:                                        ; preds = %.preheader35.i.us.i.i.i.i.preheader, %.preheader35.i.us.i.i.i.i
  %.sroa.04.0.us.i.us.i.i.i.i123 = phi i64 [ %i.er, %.preheader35.i.us.i.i.i.i ], [ %.fr63.i.i.i.i, %.preheader35.i.us.i.i.i.i.preheader ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.04.0.us.i.us.i.i.i.i123
  %i.et = load i8, ptr %i.es, align 1, !alias.scope !84, !noalias !80, !noundef !5
  %i.eu = add i64 %.sroa.04.0.us.i.us.i.i.i.i123, %i.ek ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.ev)
  %i.ew = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.eu
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !83, !noalias !80, !noundef !5
  %.not21.us.i.us.i.i.i.i = icmp eq i8 %i.et, %i.ex
  br i1 %.not21.us.i.us.i.i.i.i, label %.preheader35.i.us.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph124
  %i.ey = add i64 %i.ek, %i.ei
  %i.ez = add i64 %i.ey, %.sroa.04.0.us.i.us.i.i.i.i123
  br label %bb.ad

.preheader.i10.us.us.i.i.i.i:                     ; preds = %.lr.ph127
  %.not34.i.us.us.i.i.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not34.i.us.us.i.i.i.i, label %.split.us.i12.i.i.i.i, label %.lr.ph127

.lr.ph127:                                        ; preds = %.preheader.i10.us.us.i.i.i.i.preheader, %.preheader.i10.us.us.i.i.i.i
  %.sroa.2.0.us.i.us.us.i.i.i.i126 = phi i64 [ %i.fa, %.preheader.i10.us.us.i.i.i.i ], [ %.fr63.i.i.i.i, %.preheader.i10.us.us.i.i.i.i.preheader ]
  %i.fa = add i64 %.sroa.2.0.us.i.us.us.i.i.i.i126, -1 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !84, !noalias !80, !noundef !5
  %i.fd = add i64 %i.fa, %i.ek                    ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.fe)
  %i.ff = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.fd
  %i.fg = load i8, ptr %i.ff, align 1, !alias.scope !83, !noalias !80, !noundef !5
  %.not20.us.i.us.us.i.i.i.i = icmp eq i8 %i.fc, %i.fg
  br i1 %.not20.us.i.us.us.i.i.i.i, label %.preheader.i10.us.us.i.i.i.i, label %.split.us.us.i.i.i.i

.split.us.us.i.i.i.i:                             ; preds = %.lr.ph127
  %i.fh = add i64 %i.ek, %i.eg
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.split.us.i.us.i.i.i.i
  %i.fi = add i64 %i.ek, %i.bo
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.split.us.us.i.i.i.i, %bb.ab
  %.sink.i9.us.i.i.i.i = phi i64 [ %i.fi, %bb.ac ], [ %i.ez, %bb.ab ], [ %i.fh, %.split.us.us.i.i.i.i ] ; 3 uses
  store i64 %.sink.i9.us.i.i.i.i, ptr %i.bp, align 8, !alias.scope !85
  %i.fj = add i64 %.sink.i9.us.i.i.i.i, %i.bq     ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %.val1.i.i.i
  br i1 %i.fk, label %.lr.ph.split.us.i.us.i.i.i.i, label %._crit_edge.i5.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.split.us.i.i.i.i.i.preheader, %bb.ag
  %i.fl = phi i64 [ %i.gd, %bb.ag ], [ %i.ea, %.lr.ph.split.us.i.i.i.i.i.preheader ]
  %i.fm = phi i64 [ %.sink.i9.i.i.i.i, %bb.ag ], [ %.promoted.i4.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.preheader ] ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.fl
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !83, !noalias !80, !noundef !5
  %i.fp = and i8 %i.fo, 63
  %i.fq = zext nneg i8 %i.fp to i64
  %i.fr = shl nuw i64 1, %i.fq
  %i.fs = and i64 %i.fr, %i.ed
  %.not.us.i.i.i.i.i = icmp eq i64 %i.fs, 0
  br i1 %.not.us.i.i.i.i.i, label %bb.af, label %.preheader35.i.i.i.i.i.preheader

.preheader35.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.split.us.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i117.not, label %.lr.ph119, label %.preheader.i10.i.i.i.i

.preheader35.i.i.i.i.i:                           ; preds = %.lr.ph119
  %i.ft = add i64 %.sroa.04.0.us.i.i.i.i.i118, 1  ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ft, %umax.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.preheader.i10.i.i.i.i, label %.lr.ph119

.lr.ph119:                                        ; preds = %.preheader35.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i
  %.sroa.04.0.us.i.i.i.i.i118 = phi i64 [ %i.ft, %.preheader35.i.i.i.i.i ], [ %.fr63.i.i.i.i, %.preheader35.i.i.i.i.i.preheader ] ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.04.0.us.i.i.i.i.i118
  %i.fv = load i8, ptr %i.fu, align 1, !alias.scope !84, !noalias !80, !noundef !5
  %i.fw = add i64 %.sroa.04.0.us.i.i.i.i.i118, %i.fm ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.fx)
  %i.fy = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.fw
  %i.fz = load i8, ptr %i.fy, align 1, !alias.scope !83, !noalias !80, !noundef !5
  %.not21.us.i.i.i.i.i = icmp eq i8 %i.fv, %i.fz
  br i1 %.not21.us.i.i.i.i.i, label %.preheader35.i.i.i.i.i, label %bb.ae

.preheader.i10.i.i.i.i:                           ; preds = %.preheader35.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i
  %.not34.i.i.i.i.i = icmp eq i64 %.fr63.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i, label %.split.us.i12.i.i.i.i, label %.split32.us.i11.i.i.i.i

.split32.us.i11.i.i.i.i:                          ; preds = %.preheader.i10.i.i.i.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.eh, i64 noundef range(i64 0, -9223372036854775808) %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #36, !noalias !86
  unreachable

bb.ae:                                            ; preds = %.lr.ph119
  %i.ga = add i64 %i.fm, %i.ei
  %i.gb = add i64 %i.ga, %.sroa.04.0.us.i.i.i.i.i118
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.gc = add i64 %i.fm, %i.bo
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sink.i9.i.i.i.i = phi i64 [ %i.gc, %bb.af ], [ %i.gb, %bb.ae ] ; 3 uses
  store i64 %.sink.i9.i.i.i.i, ptr %i.bp, align 8, !alias.scope !85
  %i.gd = add i64 %.sink.i9.i.i.i.i, %i.bq        ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %.val1.i.i.i
  br i1 %i.ge, label %.lr.ph.split.us.i.i.i.i.i, label %._crit_edge.i5.i.i.i.i

._crit_edge.i5.i.i.i.i:                           ; preds = %bb.ag, %bb.ad, %bb.aa
  store i64 %.val1.i.i.i, ptr %i.bp, align 8, !alias.scope !85
  br label %bb.ai

.split.us.i12.i.i.i.i:                            ; preds = %.preheader.i10.us.us.i.i.i.i.preheader, %.preheader.i10.us.us.i.i.i.i, %.preheader.i10.i.i.i.i
  %.us-phi.i.i.i.i = phi i64 [ %i.fm, %.preheader.i10.i.i.i.i ], [ %i.ek, %.preheader.i10.us.us.i.i.i.i ], [ %i.ek, %.preheader.i10.us.us.i.i.i.i.preheader ] ; 2 uses
  %i.gf = add i64 %.us-phi.i.i.i.i, %i.bo         ; 2 uses
  store i64 %i.gf, ptr %i.bp, align 8, !alias.scope !85
  br label %bb.ah

bb.ah:                                            ; preds = %.split.us.i12.i.i.i.i, %.split.us.i.i.i.i.i, %.loopexit.i.i.i.i, %.loopexit51.i.i.i, %bb.p
  %.sroa.8.0.ph.i.i.i = phi i64 [ %.val1.i.i.i, %.loopexit51.i.i.i ], [ %.lcssa46.i.i.i, %.loopexit.i.i.i.i ], [ %i.dp, %.split.us.i.i.i.i.i ], [ %i.gf, %.split.us.i12.i.i.i.i ], [ %.val1.i.i.i, %bb.p ]
  %.sroa.4.02.ph.i.i.i = phi i64 [ %.val1.i.i.i, %.loopexit51.i.i.i ], [ %.lcssa46.i.i.i, %.loopexit.i.i.i.i ], [ %i.cu, %.split.us.i.i.i.i.i ], [ %.us-phi.i.i.i.i, %.split.us.i12.i.i.i.i ], [ %.val1.i.i.i, %bb.p ]
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !alias.scope !64, !noundef !5 ; 2 uses
  %i.gi = sub nuw i64 %.sroa.4.02.ph.i.i.i, %i.gh
  store i64 %.sroa.8.0.ph.i.i.i, ptr %i.gg, align 8, !alias.scope !64
  br label %bb.al

bb.ai:                                            ; preds = %._crit_edge.i5.i.i.i.i, %._crit_edge.i.i.i.i.i, %bb.r, %.preheader.i.i.i.i
  store i8 1, ptr %i.a, align 1, !alias.scope !87
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.gk = load i8, ptr %i.gj, align 8, !range !4, !alias.scope !87, !noundef !5
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %._crit_edge.i.i.i.i, label %bb.aj

._crit_edge.i.i.i.i:                              ; preds = %bb.ai
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 104
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !87
  %.phi.trans.insert2.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 112
  %.pre3.i.i.i.i = load i64, ptr %.phi.trans.insert2.i.i.i.i, align 8, !alias.scope !87
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !87, !noundef !5 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !87, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.gn, %i.gp
  br i1 %.not.i.i.i.i, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB1u_6Symbol6internENtNtNtB9_6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge.i.i.i.i
  %i.gq = phi i64 [ %.pre3.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.gn, %bb.aj ]
  %i.gr = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.gp, %bb.aj ] ; 2 uses
  %i.gs = sub nuw i64 %i.gq, %i.gr
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %.sroa.4.1.i.i.i = phi i64 [ %i.gs, %bb.ak ], [ %i.gi, %bb.ah ]
  %.pn.i = phi i64 [ %i.gr, %bb.ak ], [ %i.gh, %bb.ah ]
  %.sroa.0.1.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.pn.i
  %i.gt = tail call noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i, i64 noundef %.sroa.4.1.i.i.i), !noalias !61
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB1u_6Symbol6internENtNtNtB9_6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB1u_6Symbol6internENtNtNtB9_6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.a, %bb.aj, %bb.al
  %.sroa.0.0.i = phi ptr [ %i.gt, %bb.al ], [ null, %bb.a ], [ null, %bb.aj ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %3, i64 128, i1 false)
  %.sroa.029.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %1, ptr %.sroa.029.sroa.4.0..sroa_idx, align 8
  %.sroa.029.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %2, ptr %.sroa.029.sroa.5.0..sroa_idx, align 8
  %.sroa.029.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.0.0.i, ptr %.sroa.029.sroa.6.0..sroa_idx, align 8
  %.sroa.029.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %.sroa.029.sroa.7.0..sroa_idx, align 8
  %.sroa.029.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr null, ptr %.sroa.029.sroa.9.0..sroa_idx, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 -3, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 -3, ptr %.sroa.632.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1x_Cs8Xq8PKFYOms_3hirNtB7_4Type11instantiateINtCs83ee1IJTiSq_6either6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB1m_10filter_map9FilterMapINtNtB1m_6copied6CopiedINtNtNtB1q_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B3q_NtB3q_11GenericArgs5types0ENCNvB2_14type_arguments0EIBN_IB1i_IB2B_IB2Y_NtNtB3s_2ty2TyEENCB58_s_0EINtNtNtB1o_7sources5empty5EmptyBp_EEEECsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [12 x i8], align 4                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [12 x i8], align 4                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 16               ; 6 uses
  %i.q = alloca [16 x i8], align 4                ; 6 uses
  %i.r = alloca [16 x i8], align 4                ; 6 uses
  %i.s = alloca [16 x i8], align 4                ; 7 uses
  %i.t = alloca [32 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvMs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB5_10DbInterner7conjure(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 8, !range !7, !noundef !5 ; 4 uses
  %i.w = icmp samesign ugt i32 %i.v, 8
  %i.x = zext nneg i32 %i.v to i64                ; 2 uses
  %i.y = add nsw i64 %i.x, -8
  %i.z = select i1 %i.w, i64 %i.y, i64 0
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 10 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 8 ; 10 uses
  switch i64 %i.z, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.g
    i64 3, label %bb.j
  ]

bb.b:                                             ; preds = %bb.c, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.aa = icmp samesign ugt i32 %i.v, 2
  %i.ab = add nsw i64 %i.x, -2
  %i.ac = select i1 %i.aa, i64 %i.ab, i64 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 7 uses
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 7 uses
  switch i64 %i.ac, label %bb.b [
    i64 0, label %bb.l
    i64 1, label %bb.m
    i64 2, label %bb.n
    i64 3, label %bb.o
    i64 4, label %bb.p
    i64 5, label %bb.q
    i64 6, label %bb.r
  ]

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %.sroa.5.0.copyload, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %.sroa.11.0.copyload, ptr %i.af, align 4
  store i32 4, ptr %i.r, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 16 dereferenceable(32) %i.t, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !115
  store i32 -1, ptr %i.l, align 4, !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !alias.scope !116, !noalias !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !115
  store ptr %i.k, ptr %i.j, align 8, !noalias !115
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.l, ptr %i.ag, align 8, !noalias !115
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.n, ptr %i.ah, align 8, !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 16 dereferenceable(32) %i.t, i64 32, i1 false)
  %i.ai = call noundef nonnull ptr @_RINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgs8for_itemNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2G_10filter_map9FilterMapINtNtB2G_6copied6CopiedINtNtNtB2K_5slice4iter4IterNtB6_10GenericArgEENCNvB2_5types0ENCNvMs1x_B1r_NtB1r_4Type14type_arguments0EIB27_IB2C_IB3V_IB4i_NtNtB8_2ty2TyEENCB5i_s_0EINtNtNtB2I_7sources5empty5EmptyB5t_EEEE0ECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j), !noalias !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !115
  %.sroa.06.0.copyload.i = load i32, ptr %i.l, align 4, !noalias !115 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.06.0.copyload.i, -1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !115
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !115
  br label %_RINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB1h_10filter_map9FilterMapINtNtB1h_6copied6CopiedINtNtNtB1l_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B3l_NtB3l_11GenericArgs5types0ENCNvMs1x_B2_NtB2_4Type14type_arguments0EIBI_IB1d_IB2w_IB2T_NtNtB3n_2ty2TyEENCB53_s_0EINtNtNtB1j_7sources5empty5EmptyB5d_EEEECsf8NQSppxkmK_14ide_completion.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %i.n, align 8, !alias.scope !114, !nonnull !5, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !114, !nonnull !5, !align !8, !noundef !5
  %i.am = call { i32, i32 } @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type18builtin_type_crate(ptr noundef nonnull %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.al), !noalias !119 ; 2 uses
  %i.an = extractvalue { i32, i32 } %i.am, 0
  %i.ao = extractvalue { i32, i32 } %i.am, 1
  br label %_RINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB1h_10filter_map9FilterMapINtNtB1h_6copied6CopiedINtNtNtB1l_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B3l_NtB3l_11GenericArgs5types0ENCNvMs1x_B2_NtB2_4Type14type_arguments0EIBI_IB1d_IB2w_IB2T_NtNtB3n_2ty2TyEENCB53_s_0EINtNtNtB1j_7sources5empty5EmptyB5d_EEEECsf8NQSppxkmK_14ide_completion.exit

_RINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB1h_10filter_map9FilterMapINtNtB1h_6copied6CopiedINtNtNtB1l_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B3l_NtB3l_11GenericArgs5types0ENCNvMs1x_B2_NtB2_4Type14type_arguments0EIBI_IB1d_IB2w_IB2T_NtNtB3n_2ty2TyEENCB53_s_0EINtNtNtB1j_7sources5empty5EmptyB5d_EEEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.e, %bb.f
  %.sroa.4.0.i = phi i32 [ %.sroa.6.0.copyload.i, %bb.e ], [ %i.ao, %bb.f ]
  %.sroa.3.0.i = phi i32 [ %.sroa.5.0.copyload.i, %bb.e ], [ %i.an, %bb.f ]
  %.sroa.0.0.i = phi i32 [ %.sroa.06.0.copyload.i, %bb.e ], [ 11, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.v

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %.sroa.5.0.copyload, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %.sroa.11.0.copyload, ptr %i.aq, align 4
  store i32 6, ptr %i.q, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 16 dereferenceable(32) %i.t, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !121
  store i32 -1, ptr %i.h, align 4, !noalias !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !alias.scope !122, !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !121
  store ptr %i.g, ptr %i.f, align 8, !noalias !121
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.h, ptr %i.ar, align 8, !noalias !121
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.m, ptr %i.as, align 8, !noalias !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 16 dereferenceable(32) %i.t, i64 32, i1 false)
end_hunk_0
