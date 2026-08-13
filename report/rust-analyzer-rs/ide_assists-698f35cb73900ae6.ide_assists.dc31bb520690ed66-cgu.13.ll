inline.NumInlined: 2227
inline.NumDeleted: 861
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 52
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [95 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/salsa-0.27.2/src/table.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"^\00\00\00\00\00\00\00\B6\00\00\00\0A\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"^\00\00\00\00\00\00\00\C5\00\00\00\09\00\00\00" }>, align 8
@3 = private unnamed_addr constant [96 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"_\00\00\00\00\00\00\00M\00\00\00\1F\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"_\00\00\00\00\00\00\00G\00\00\00\17\00\00\00" }>, align 8
@6 = private unnamed_addr constant [97 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/core/src/slice/sort/unstable/heapsort.rs\00", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"`\00\00\00\00\00\00\00\14\00\00\00\0F\00\00\00" }>, align 8
@8 = private unnamed_addr constant [98 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/core/src/slice/sort/unstable/quicksort.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"a\00\00\00\00\00\00\00o\00\00\00\0B\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"a\00\00\00\00\00\00\00\85\00\00\00\0B\00\00\00" }>, align 8
@11 = private unnamed_addr constant [2 x i8] c"r#", align 1
@12 = private unnamed_addr constant [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", align 8
@13 = private unnamed_addr constant [17 x i8] c"\08Convert \C0\04 to \C0\00", align 1
@14 = private unnamed_addr constant [20 x i8] c"convert_char_literal", align 1
@15 = private unnamed_addr constant [8 x i8] c"\05&mut \C0\00", align 1
@16 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@17 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtCshzWfHUSfYae_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@18 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@19 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCshzWfHUSfYae_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@20 = private unnamed_addr constant [34 x i8] c"Format: was already formatted once", align 1
@21 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/itertools-0.15.0/src/format.rs\00", align 1
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @21, [16 x i8] c"c\00\00\00\00\00\00\00_\00\00\00\15\00\00\00" }>, align 8
@23 = private unnamed_addr constant [38 x i8] c"assertion failed: start.raw <= end.raw", align 1
@24 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/text-size-1.1.1/src/range.rs\00", align 1
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @24, [16 x i8] c"a\00\00\00\00\00\00\000\00\00\00\09\00\00\00" }>, align 8
@_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt5LEVEL = external local_unnamed_addr global { { { i64 } } }
@26 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECsiU5vK8fN4ZC_11ide_assists, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa8databaseNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_13AsDynDatabase15as_dyn_databaseCsiU5vK8fN4ZC_11ide_assists }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECsiU5vK8fN4ZC_11ide_assists, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECsiU5vK8fN4ZC_11ide_assists, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCshzWfHUSfYae_4core3anyNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB2_3Any7type_idCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa5zalsa13ZalsaDatabase6zalsasCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase5zalsaCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase9zalsa_mutCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase11zalsa_localCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa8databaseNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_13AsDynDatabase15as_dyn_databaseCsiU5vK8fN4ZC_11ide_assists, ptr @26, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_lru_evictionCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database15synthetic_writeCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_cancellationCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database18cancellation_tokenCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21report_untracked_readCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21ingredient_debug_nameCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database28unwind_if_revision_cancelledCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXsb_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database25zalsa_register_downcaster, ptr @_RNvXs1_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr @27, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase9file_text, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase13set_file_text, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase29set_file_text_with_durability, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase11source_root, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase16file_source_root, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase36set_file_source_root_with_durability, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase31set_source_root_with_durability, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase12resolve_pathCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase10crates_map, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase18nonce_and_revision, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase11line_column, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase25zalsa_register_downcaster, ptr @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty2dbNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_11HirDatabase6as_dynCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase8mir_bodyCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase20mir_body_for_closureCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase22monomorphized_mir_bodyCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase34monomorphized_mir_body_for_closureCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase10const_evalCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase15anon_const_evalCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase17const_eval_staticCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase23const_eval_discriminantCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase18lookup_impl_methodCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase13layout_of_adtCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase12layout_of_tyCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase18target_data_layoutCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase26dyn_compatibility_of_traitCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase2tyCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase36type_for_type_alias_with_diagnosticsCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase8value_tyCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase14type_for_constCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase31type_for_const_with_diagnosticsCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase15type_for_staticCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase32type_for_static_with_diagnosticsCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase29impl_self_ty_with_diagnosticsCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase12impl_self_tyCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase34const_param_types_with_diagnosticsCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase17const_param_typesCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase14const_param_tyCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase27impl_trait_with_diagnosticsCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase10impl_traitCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase28field_types_with_diagnosticsCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase11field_typesCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase23callable_item_signatureCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase40callable_item_signature_with_diagnosticsCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase17trait_environmentCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase33generic_defaults_with_diagnosticsCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase16generic_defaultsCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase34type_alias_bounds_with_diagnosticsCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase17type_alias_boundsCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase22type_alias_self_boundsCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase12variances_ofCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty2dbNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_11HirDatabase25zalsa_register_downcasterBx_ }>, align 8
@29 = private unnamed_addr constant [13 x i8] c"\02./\C0\07/mod.rs\00", align 1
@30 = private unnamed_addr constant [14 x i8] c"move_to_mod_rs", align 1
@31 = private unnamed_addr constant [30 x i8] c"\08Convert \C0\07.rs to \C8\00\00\07/mod.rs\00", align 1
@32 = private unnamed_addr constant [16 x i8] c"not_all_selected", align 1
@33 = private unnamed_addr constant [14 x i8] c"already_mod_rs", align 1
@34 = private unnamed_addr constant [14 x i8] c"reorder_fields", align 1
@35 = private unnamed_addr constant [21 x i8] c"Reorder record fields", align 1
@36 = private unnamed_addr constant [21 x i8] c"reorder_sorted_fields", align 1
@37 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@38 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @37, [24 x i8] zeroinitializer }>, align 8
@39 = private unnamed_addr constant [16 x i8] c"merge_match_arms", align 1
@40 = private unnamed_addr constant [16 x i8] c"Merge match arms", align 1
@41 = private unnamed_addr constant [4 x i8] c"\01_\C0\00", align 1
@42 = private unnamed_addr constant [23 x i8] c"no_missing_fields_slice", align 1
@43 = private unnamed_addr constant [25 x i8] c"expand_slice_rest_pattern", align 1
@44 = private unnamed_addr constant [17 x i8] c"Fill slice fields", align 1
@45 = private unnamed_addr constant [23 x i8] c"no_missing_fields_tuple", align 1
@46 = private unnamed_addr constant [25 x i8] c"expand_tuple_rest_pattern", align 1
@47 = private unnamed_addr constant [17 x i8] c"Fill tuple fields", align 1
@48 = private unnamed_addr constant [26 x i8] c"expand_record_rest_pattern", align 1
@49 = private unnamed_addr constant [18 x i8] c"Fill struct fields", align 1
@50 = private unnamed_addr constant [17 x i8] c"no_missing_fields", align 1
@51 = private unnamed_addr constant [30 x i8] c"no_missing_fields_tuple_struct", align 1
@52 = private unnamed_addr constant [32 x i8] c"expand_tuple_struct_rest_pattern", align 1
@53 = private unnamed_addr constant [24 x i8] c"Fill tuple struct fields", align 1
@54 = private unnamed_addr constant [27 x i8] c"Convert char representation", align 1
@55 = private unnamed_addr constant [14 x i8] c"\03'\\x\C3 \00\00i\02\00\01'\00", align 1
@56 = private unnamed_addr constant [10 x i8] c"\04'\\u{\C0\02}'\00", align 1
@57 = private unnamed_addr constant [22 x i8] c"into_to_qualified_from", align 1
@58 = private unnamed_addr constant [40 x i8] c"Convert `into` to fully qualified `from`", align 1
@59 = private unnamed_addr constant [30 x i8] c"promote_local_non_simple_ident", align 1
@60 = private unnamed_addr constant [23 x i8] c"promote_local_non_const", align 1
@61 = private unnamed_addr constant [22 x i8] c"promote_local_to_const", align 1
@62 = private unnamed_addr constant [25 x i8] c"Promote local to constant", align 1
@63 = private unnamed_addr constant [20 x i8] c"Convert integer base", align 1
@64 = private unnamed_addr constant [5 x i8] c"\020b\C0\00", align 1
@65 = private unnamed_addr constant [5 x i8] c"\020o\C0\00", align 1
@66 = private unnamed_addr constant [5 x i8] c"\020x\C0\00", align 1
@67 = private unnamed_addr constant [23 x i8] c"convert_integer_literal", align 1
@_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL = external local_unnamed_addr global { { { i64 } } }
@68 = private unnamed_addr constant [42 x i8] c"assertion failed: entered unreachable code", align 1
@69 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsl_NtCsaMQbKjKCVRW_12tracing_core5fieldNtNtCshzWfHUSfYae_4core3fmt9ArgumentsNtB5_5Value6record }>, align 8
@70 = private unnamed_addr constant [23 x i8] c"replace_let_with_if_let", align 1
@71 = private unnamed_addr constant [23 x i8] c"Replace let with if let", align 1
@_RNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23replace_let_with_if_let20let_expr_needs_paren10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23replace_let_with_if_let20let_expr_needs_paren10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23replace_let_with_if_let20let_expr_needs_parens_10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23replace_let_with_if_let20let_expr_needs_parens_10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@72 = private unnamed_addr constant [67 x i8] c"event crates/ide-assists/src/handlers/replace_let_with_if_let.rs:95", align 1
@73 = private unnamed_addr constant [46 x i8] c"ide_assists::handlers::replace_let_with_if_let", align 1
@74 = private unnamed_addr constant [7 x i8] c"message", align 1
@75 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @74, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@76 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest, ptr @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata, ptr @_RNvYNtNtCsaMQbKjKCVRW_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsiU5vK8fN4ZC_11ide_assists }>, align 8
@77 = private unnamed_addr constant [58 x i8] c"crates/ide-assists/src/handlers/replace_let_with_if_let.rs", align 1
@_RNvNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23replace_let_with_if_let20let_expr_needs_paren10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00_\00\00\00", ptr @72, [8 x i8] c"C\00\00\00\00\00\00\00", ptr @73, [8 x i8] c".\00\00\00\00\00\00\00", ptr @75, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23replace_let_with_if_let20let_expr_needs_paren10___CALLSITE, ptr @76, ptr @73, [8 x i8] c".\00\00\00\00\00\00\00", ptr @77, [9 x i8] c":\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@78 = private unnamed_addr constant [67 x i8] c"event crates/ide-assists/src/handlers/replace_let_with_if_let.rs:99", align 1
@_RNvNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23replace_let_with_if_let20let_expr_needs_parens_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00c\00\00\00", ptr @78, [8 x i8] c"C\00\00\00\00\00\00\00", ptr @73, [8 x i8] c".\00\00\00\00\00\00\00", ptr @75, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23replace_let_with_if_let20let_expr_needs_parens_10___CALLSITE, ptr @76, ptr @73, [8 x i8] c".\00\00\00\00\00\00\00", ptr @77, [9 x i8] c":\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@79 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -8407916533717187642 to ptr), ptr inttoptr (i64 8687281100977841205 to ptr) }>, align 8
@80 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECsiU5vK8fN4ZC_11ide_assists, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCshzWfHUSfYae_4core3anyNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB2_3Any7type_idCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa5zalsa13ZalsaDatabase6zalsasCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase5zalsaCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase9zalsa_mutCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase11zalsa_localCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa8databaseNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_13AsDynDatabase15as_dyn_databaseCsiU5vK8fN4ZC_11ide_assists, ptr @26, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_lru_evictionCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database15synthetic_writeCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_cancellationCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database18cancellation_tokenCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21report_untracked_readCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21ingredient_debug_nameCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database28unwind_if_revision_cancelledCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXsb_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database25zalsa_register_downcaster }>, align 8
@81 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@82 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@83 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char, ptr @_RNvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@84 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@85 = private unnamed_addr constant [76 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/alloc/src/string.rs\00", align 1
@86 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @85, [16 x i8] c"K\00\00\00\00\00\00\00\89\0B\00\00\0E\00\00\00" }>, align 8
@87 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@88 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderECsiU5vK8fN4ZC_11ide_assists, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsG_Cs42xZ1oUXfIG_8smol_strNtB5_14SmolStrBuilderNtNtCshzWfHUSfYae_4core3fmt5Write9write_str, ptr @_RNvYNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderNtNtCshzWfHUSfYae_4core3fmt5Write10write_charCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@89 = private unnamed_addr constant [51 x i8] c"a formatting trait implementation returned an error", align 1
@90 = private unnamed_addr constant [95 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/smol_str-0.3.6/src/lib.rs\00", align 1
@91 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @90, [16 x i8] c"^\00\00\00\00\00\00\00<\03\00\00\09\00\00\00" }>, align 8
@92 = private unnamed_addr constant [5 x i8] c"Error", align 1
@93 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/text-size-1.1.1/src/traits.rs\00", align 1
@94 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @93, [16 x i8] c"b\00\00\00\00\00\00\00\12\00\00\00\1F\00\00\00" }>, align 8
@95 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -654675508425364404 to ptr), ptr inttoptr (i64 7626636266285069727 to ptr) }>, align 8
@switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559 = private unnamed_addr constant [3 x i8] c"\02\00\01", align 4

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table3getINtNtB8_5input5ValueNtCsgIpRO4v45SJ_7base_db15SourceRootInputEECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = and i64 %i.b, 1023                       ; 3 uses
  %i.d = lshr i64 %i.b, 10                        ; 2 uses
  %i.e = tail call noundef i64 @_RNvMs8_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsiU5vK8fN4ZC_11ide_assists(i64 noundef range(i64 0, 4194304) %i.d)
  %i.f = tail call noundef align 8 ptr @_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsd9Lm8bEdjjY_5salsa5table4PageEKj3a_E3getCsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %0, i64 noundef %i.e) ; 6 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %select.unfold.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load atomic i8, ptr %i.g acquire, align 8
  %.not6.i.i = icmp eq i8 %i.h, 0
  br i1 %.not6.i.i, label %select.unfold.i, label %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsiU5vK8fN4ZC_11ide_assists.exit.i

_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.02.0.copyload.i = load i128, ptr %i.i, align 8
  %.not3.i = icmp eq i128 %.sroa.02.0.copyload.i, 79634637955721074408142697210495444378
  br i1 %.not3.i, label %_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table4pageINtNtB8_5input5ValueNtCsgIpRO4v45SJ_7base_db15SourceRootInputEECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.c, !prof !4

select.unfold.i:                                  ; preds = %bb.b, %bb.a
  tail call void @_RNvNvXs_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB6_3VecpEINtNtNtCshzWfHUSfYae_4core3ops5index5IndexjE5index13assert_failed(i64 noundef range(i64 0, 4194304) %i.d) #42
  unreachable

bb.c:                                             ; preds = %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsiU5vK8fN4ZC_11ide_assists.exit.i
  tail call void @_RINvNtCsd9Lm8bEdjjY_5salsa5table18type_assert_failedINtNtB4_5input5ValueNtCsgIpRO4v45SJ_7base_db15SourceRootInputEEB1a_(ptr noundef nonnull align 8 %i.f) #42
  unreachable

_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table4pageINtNtB8_5input5ValueNtCsgIpRO4v45SJ_7base_db15SourceRootInputEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsiU5vK8fN4ZC_11ide_assists.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp ult i64 %i.c, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table4pageINtNtB8_5input5ValueNtCsgIpRO4v45SJ_7base_db15SourceRootInputEECsiU5vK8fN4ZC_11ide_assists.exit
  %i.m = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %i.c
  ret ptr %i.n

bb.e:                                             ; preds = %_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table4pageINtNtB8_5input5ValueNtCsgIpRO4v45SJ_7base_db15SourceRootInputEECsiU5vK8fN4ZC_11ide_assists.exit
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table3getINtNtB8_5input5ValueNtCsgIpRO4v45SJ_7base_db19FileSourceRootInputEECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = and i64 %i.b, 1023                       ; 3 uses
  %i.d = lshr i64 %i.b, 10                        ; 2 uses
  %i.e = tail call noundef i64 @_RNvMs8_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsiU5vK8fN4ZC_11ide_assists(i64 noundef range(i64 0, 4194304) %i.d)
  %i.f = tail call noundef align 8 ptr @_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsd9Lm8bEdjjY_5salsa5table4PageEKj3a_E3getCsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %0, i64 noundef %i.e) ; 6 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %select.unfold.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load atomic i8, ptr %i.g acquire, align 8
  %.not6.i.i = icmp eq i8 %i.h, 0
  br i1 %.not6.i.i, label %select.unfold.i, label %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsiU5vK8fN4ZC_11ide_assists.exit.i

_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.02.0.copyload.i = load i128, ptr %i.i, align 8
  %.not3.i = icmp eq i128 %.sroa.02.0.copyload.i, -18836347538129564574064071311202341121
  br i1 %.not3.i, label %_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table4pageINtNtB8_5input5ValueNtCsgIpRO4v45SJ_7base_db19FileSourceRootInputEECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.c, !prof !4

select.unfold.i:                                  ; preds = %bb.b, %bb.a
  tail call void @_RNvNvXs_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB6_3VecpEINtNtNtCshzWfHUSfYae_4core3ops5index5IndexjE5index13assert_failed(i64 noundef range(i64 0, 4194304) %i.d) #42
  unreachable

bb.c:                                             ; preds = %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsiU5vK8fN4ZC_11ide_assists.exit.i
  tail call void @_RINvNtCsd9Lm8bEdjjY_5salsa5table18type_assert_failedINtNtB4_5input5ValueNtCsgIpRO4v45SJ_7base_db19FileSourceRootInputEEB1a_(ptr noundef nonnull align 8 %i.f) #42
  unreachable

_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table4pageINtNtB8_5input5ValueNtCsgIpRO4v45SJ_7base_db19FileSourceRootInputEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsiU5vK8fN4ZC_11ide_assists.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp ult i64 %i.c, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table4pageINtNtB8_5input5ValueNtCsgIpRO4v45SJ_7base_db19FileSourceRootInputEECsiU5vK8fN4ZC_11ide_assists.exit
  %i.m = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.c
  ret ptr %i.n

bb.e:                                             ; preds = %_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table4pageINtNtB8_5input5ValueNtCsgIpRO4v45SJ_7base_db19FileSourceRootInputEECsiU5vK8fN4ZC_11ide_assists.exit
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table3getINtNtB8_5input5ValueNtCsgIpRO4v45SJ_7base_db8FileTextEECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = and i64 %i.b, 1023                       ; 3 uses
  %i.d = lshr i64 %i.b, 10                        ; 2 uses
  %i.e = tail call noundef i64 @_RNvMs8_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsiU5vK8fN4ZC_11ide_assists(i64 noundef range(i64 0, 4194304) %i.d)
  %i.f = tail call noundef align 8 ptr @_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsd9Lm8bEdjjY_5salsa5table4PageEKj3a_E3getCsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %0, i64 noundef %i.e) ; 6 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %select.unfold.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load atomic i8, ptr %i.g acquire, align 8
  %.not6.i.i = icmp eq i8 %i.h, 0
  br i1 %.not6.i.i, label %select.unfold.i, label %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsiU5vK8fN4ZC_11ide_assists.exit.i

_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.02.0.copyload.i = load i128, ptr %i.i, align 8
  %.not3.i = icmp eq i128 %.sroa.02.0.copyload.i, 45044671185516981076287063621392547805
  br i1 %.not3.i, label %_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table4pageINtNtB8_5input5ValueNtCsgIpRO4v45SJ_7base_db8FileTextEECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.c, !prof !4

select.unfold.i:                                  ; preds = %bb.b, %bb.a
  tail call void @_RNvNvXs_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB6_3VecpEINtNtNtCshzWfHUSfYae_4core3ops5index5IndexjE5index13assert_failed(i64 noundef range(i64 0, 4194304) %i.d) #42
  unreachable

bb.c:                                             ; preds = %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsiU5vK8fN4ZC_11ide_assists.exit.i
  tail call void @_RINvNtCsd9Lm8bEdjjY_5salsa5table18type_assert_failedINtNtB4_5input5ValueNtCsgIpRO4v45SJ_7base_db8FileTextEEB1a_(ptr noundef nonnull align 8 %i.f) #42
  unreachable

_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table4pageINtNtB8_5input5ValueNtCsgIpRO4v45SJ_7base_db8FileTextEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsiU5vK8fN4ZC_11ide_assists.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp ult i64 %i.c, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table4pageINtNtB8_5input5ValueNtCsgIpRO4v45SJ_7base_db8FileTextEECsiU5vK8fN4ZC_11ide_assists.exit
  %i.m = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %i.c
  ret ptr %i.n

bb.e:                                             ; preds = %_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table4pageINtNtB8_5input5ValueNtCsgIpRO4v45SJ_7base_db8FileTextEECsiU5vK8fN4ZC_11ide_assists.exit
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table3getINtNtB8_5input5ValueNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = and i64 %i.b, 1023                       ; 3 uses
  %i.d = lshr i64 %i.b, 10                        ; 2 uses
  %i.e = tail call noundef i64 @_RNvMs8_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsiU5vK8fN4ZC_11ide_assists(i64 noundef range(i64 0, 4194304) %i.d)
  %i.f = tail call noundef align 8 ptr @_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsd9Lm8bEdjjY_5salsa5table4PageEKj3a_E3getCsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %0, i64 noundef %i.e) ; 6 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %select.unfold.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load atomic i8, ptr %i.g acquire, align 8
  %.not6.i.i = icmp eq i8 %i.h, 0
  br i1 %.not6.i.i, label %select.unfold.i, label %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsiU5vK8fN4ZC_11ide_assists.exit.i

_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.02.0.copyload.i = load i128, ptr %i.i, align 8
  %.not3.i = icmp eq i128 %.sroa.02.0.copyload.i, -93679404294354602834388906467554866625
  br i1 %.not3.i, label %_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table4pageINtNtB8_5input5ValueNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.c, !prof !4

select.unfold.i:                                  ; preds = %bb.b, %bb.a
  tail call void @_RNvNvXs_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB6_3VecpEINtNtNtCshzWfHUSfYae_4core3ops5index5IndexjE5index13assert_failed(i64 noundef range(i64 0, 4194304) %i.d) #42
  unreachable

bb.c:                                             ; preds = %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsiU5vK8fN4ZC_11ide_assists.exit.i
  tail call void @_RINvNtCsd9Lm8bEdjjY_5salsa5table18type_assert_failedINtNtB4_5input5ValueNtNtCsgIpRO4v45SJ_7base_db5input5CrateEEB1c_(ptr noundef nonnull align 8 %i.f) #42
  unreachable

_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table4pageINtNtB8_5input5ValueNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCsiU5vK8fN4ZC_11ide_assists.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp ult i64 %i.c, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table4pageINtNtB8_5input5ValueNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECsiU5vK8fN4ZC_11ide_assists.exit
  %i.m = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw [304 x i8], ptr %i.m, i64 %i.c
  ret ptr %i.n

bb.e:                                             ; preds = %_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table4pageINtNtB8_5input5ValueNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECsiU5vK8fN4ZC_11ide_assists.exit
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table3getINtNtB8_8interned5ValueNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = and i64 %i.b, 1023                       ; 3 uses
  %i.d = lshr i64 %i.b, 10                        ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB14_E0E0EB2O_:bb.a
  br i1 %i.p, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBZ_E0E0EB2I_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1F_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.04.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.08.0) #47
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBZ_E0E0EB2I_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBZ_E0E0EB2I_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3E_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 144115188075855872) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3E_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3E_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3E_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.sroa.0.0.val13 = load ptr, ptr %.sroa.0.0, align 8, !nonnull !5, !noundef !5
  %.sroa.04.0.val14 = load ptr, ptr %.sroa.04.0, align 8
  %i.n = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0B2v_(ptr nonnull %.sroa.0.0.val13, ptr %.sroa.04.0.val14) #47 ; 2 uses
  %.sroa.0.0.val = load ptr, ptr %.sroa.0.0, align 8, !nonnull !5, !noundef !5
  %.sroa.08.0.val12 = load ptr, ptr %.sroa.08.0, align 8
  %i.o = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0B2v_(ptr nonnull %.sroa.0.0.val, ptr %.sroa.08.0.val12) #47
  %i.p = xor i1 %i.n, %i.o
  br i1 %i.p, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3y_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.04.0.val = load ptr, ptr %.sroa.04.0, align 8, !nonnull !5, !noundef !5
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8
  %i.q = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0B2v_(ptr nonnull %.sroa.04.0.val, ptr %.sroa.08.0.val) #47
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3y_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3y_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB14_E0E0EB2T_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 144115188075855872) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB14_E0E0EB2T_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB14_E0E0EB2T_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB14_E0E0EB2T_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.04.0) #47 ; 2 uses
  %i.o = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.08.0) #47
  %i.p = xor i1 %i.n, %i.o
  br i1 %i.p, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBZ_E0E0EB2N_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.04.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.08.0) #47
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBZ_E0E0EB2N_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBZ_E0E0EB2N_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB30_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 72057594037927936) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB30_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB30_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB30_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 4 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 4 uses
  %.val18 = load ptr, ptr %4, align 8, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %.sroa.0.0.val19 = load i64, ptr %.sroa.0.0, align 8, !range !551, !noundef !5
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 8  ; 2 uses
  %.sroa.0.0.val20 = load ptr, ptr %i.n, align 8
  %.sroa.04.0.val21 = load i64, ptr %.sroa.04.0, align 8
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 8 ; 2 uses
  %.sroa.04.0.val22 = load ptr, ptr %i.o, align 8
  %.val3.i = load ptr, ptr %.val18, align 8
  %i.p = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i, i64 %.sroa.0.0.val19, ptr %.sroa.0.0.val20) #47
  %.val.i = load ptr, ptr %.val18, align 8
  %i.q = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i, i64 %.sroa.04.0.val21, ptr %.sroa.04.0.val22) #47
  %i.r = icmp ult i64 %i.p, %i.q                  ; 2 uses
  %.val14 = load ptr, ptr %4, align 8, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %.sroa.0.0.val = load i64, ptr %.sroa.0.0, align 8, !range !551, !noundef !5
  %.sroa.0.0.val15 = load ptr, ptr %i.n, align 8
  %.sroa.08.0.val16 = load i64, ptr %.sroa.08.0, align 8
  %i.s = getelementptr i8, ptr %.sroa.08.0, i64 8 ; 2 uses
  %.sroa.08.0.val17 = load ptr, ptr %i.s, align 8
  %.val3.i23 = load ptr, ptr %.val14, align 8
  %i.t = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i23, i64 %.sroa.0.0.val, ptr %.sroa.0.0.val15) #47
  %.val.i24 = load ptr, ptr %.val14, align 8
  %i.u = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i24, i64 %.sroa.08.0.val16, ptr %.sroa.08.0.val17) #47
  %i.v = icmp ult i64 %i.t, %i.u
  %i.w = xor i1 %i.r, %i.v
  br i1 %i.w, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2U_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %4, align 8, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %.sroa.04.0.val = load i64, ptr %.sroa.04.0, align 8, !range !551, !noundef !5
  %.sroa.04.0.val12 = load ptr, ptr %i.o, align 8
  %.sroa.08.0.val = load i64, ptr %.sroa.08.0, align 8
  %.sroa.08.0.val13 = load ptr, ptr %i.s, align 8
  %.val3.i25 = load ptr, ptr %.val, align 8
  %i.x = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i25, i64 %.sroa.04.0.val, ptr %.sroa.04.0.val12) #47
  %.val.i26 = load ptr, ptr %.val, align 8
  %i.y = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i26, i64 %.sroa.08.0.val, ptr %.sroa.08.0.val13) #47
  %i.z = icmp ult i64 %i.x, %i.y
  %i.aa = xor i1 %i.r, %i.z
  %..i = select i1 %i.aa, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2U_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2U_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB35_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 144115188075855872) %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %switch.lookup

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB35_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB35_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB35_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load ptr, ptr %.sroa.0.0, align 8, !nonnull !5, !align !82, !noundef !5
  %.sroa.04.0.val14 = load ptr, ptr %.sroa.04.0, align 8, !nonnull !5, !noundef !5
  %i.n = load i64, ptr %.sroa.0.0.val13, align 8, !range !552, !noundef !5 ; 2 uses
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.n
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.o = load i64, ptr %.sroa.04.0.val14, align 8, !range !552, !noundef !5 ; 2 uses
  %switch.gep10 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.o
  %switch.load11 = load i8, ptr %switch.gep10, align 1
  %i.p = icmp ult i8 %switch.load, %switch.load11 ; 2 uses
  %.sroa.08.0.val12 = load ptr, ptr %.sroa.08.0, align 8, !nonnull !5, !noundef !5
  %switch.gep2 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.n
  %switch.load3 = load i8, ptr %switch.gep2, align 1
  %i.q = load i64, ptr %.sroa.08.0.val12, align 8, !range !552, !noundef !5 ; 2 uses
  %switch.gep18 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.q
  %switch.load19 = load i8, ptr %switch.gep18, align 1
  %i.r = icmp ult i8 %switch.load3, %switch.load19
  %i.s = xor i1 %i.p, %i.r
  br i1 %i.s, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3RNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2Z_.exit, label %switch.lookup5

switch.lookup5:                                   ; preds = %switch.lookup
  %switch.gep6 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.o
  %switch.load7 = load i8, ptr %switch.gep6, align 1
  %switch.gep14 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.q
  %switch.load15 = load i8, ptr %switch.gep14, align 1
  %i.t = icmp ult i8 %switch.load7, %switch.load15
  %i.u = xor i1 %i.p, %i.t
  %..i = select i1 %i.u, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3RNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2Z_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3RNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2Z_.exit: ; preds = %switch.lookup, %switch.lookup5
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %switch.lookup ], [ %..i, %switch.lookup5 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB36_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 48038396025285291) %3) unnamed_addr #6 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB36_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB36_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB36_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load ptr, ptr %.sroa.0.0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.04.0.val14 = load ptr, ptr %.sroa.04.0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = ptrtoint ptr %.sroa.0.0.val13 to i64
  %i.o = and i64 %i.n, 1
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr i8, ptr %.sroa.0.0.val13, i64 %i.p ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 4 uses
  %i.u = ptrtoint ptr %.sroa.04.0.val14 to i64
  %i.v = and i64 %i.u, 1
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr i8, ptr %.sroa.04.0.val14, i64 %i.w ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noundef !5 ; 4 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.aa)
  %i.ab = tail call i32 @memcmp(ptr nonnull %i.r, ptr nonnull %i.y, i64 %spec.store.select.i.i.i) ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub i64 %i.t, %i.aa
  %spec.select.i.i.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac ; 2 uses
  %.sroa.08.0.val12 = load ptr, ptr %.sroa.08.0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.af = ptrtoint ptr %.sroa.08.0.val12 to i64
  %i.ag = and i64 %i.af, 1
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr i8, ptr %.sroa.08.0.val12, i64 %i.ah ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noundef !5 ; 4 uses
  %spec.store.select.i.i.i15 = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.al)
  %i.am = tail call i32 @memcmp(ptr nonnull %i.r, ptr nonnull %i.aj, i64 %spec.store.select.i.i.i15) ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp eq i32 %i.am, 0
  %i.ap = sub i64 %i.t, %i.al
  %spec.select.i.i.i16 = select i1 %i.ao, i64 %i.ap, i64 %i.an
  %i.aq = xor i64 %spec.select.i.i.i16, %spec.select.i.i.i
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3TNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB30_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select.i.i.i17 = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.al)
  %i.as = tail call i32 @memcmp(ptr nonnull %i.y, ptr nonnull %i.aj, i64 %spec.store.select.i.i.i17) ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp eq i32 %i.as, 0
  %i.av = sub i64 %i.aa, %i.al
  %spec.select.i.i.i18 = select i1 %i.au, i64 %i.av, i64 %i.at
  %i.aw = xor i64 %spec.select.i.i.i18, %spec.select.i.i.i
  %i.ax = icmp slt i64 %i.aw, 0
  %..i = select i1 %i.ax, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3TNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB30_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3TNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB30_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB34_(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef nonnull captures(address) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 12 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -88 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds i8, ptr %1, i64 -64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  %i.e = load i8, ptr %i.c, align 4, !range !282, !alias.scope !568, !noalias !569, !noundef !5 ; 3 uses
  %i.f = zext nneg i8 %i.e to i64
  %i.g = load i8, ptr %i.d, align 4, !range !282, !alias.scope !569, !noalias !568, !noundef !5 ; 2 uses
  %i.h = zext nneg i8 %i.g to i64
  %i.i = tail call i8 @llvm.scmp.i8.i64(i64 %i.f, i64 %i.h)
  %i.j = icmp eq i8 %i.e, %i.g
  br i1 %i.j, label %bb.b, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i [
    i8 1, label %bb.c
    i8 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !568, !noalias !569, !noundef !5
  %i.m = getelementptr inbounds i8, ptr %1, i64 -63
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !569, !noalias !568, !noundef !5
  %i.o = tail call i8 @llvm.ucmp.i8.i8(i8 %i.l, i8 %i.n)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.q = load i32, ptr %i.p, align 4, !range !285, !alias.scope !568, !noalias !569, !noundef !5 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 -60
  %i.s = load i32, ptr %i.r, align 4, !range !285, !alias.scope !569, !noalias !568, !noundef !5 ; 2 uses
  %i.t = tail call i8 @llvm.ucmp.i8.i32(i32 %i.q, i32 %i.s)
  %i.u = icmp eq i32 %i.q, %i.s
  br i1 %i.u, label %bb.e, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !568, !noalias !569, !noundef !5
  %i.x = getelementptr inbounds i8, ptr %1, i64 -56
  %i.y = load i32, ptr %i.x, align 4, !alias.scope !569, !noalias !568, !noundef !5
  %i.z = tail call i8 @llvm.ucmp.i8.i32(i32 %i.w, i32 %i.y)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %.sroa.0.0.i.i.i = phi i8 [ %i.i, %bb.a ], [ %i.o, %bb.c ], [ %i.z, %bb.e ], [ %i.t, %bb.d ] ; 2 uses
  %i.aa = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.aa, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !575, !noalias !578, !noundef !5 ; 2 uses
  %i.ad = icmp ugt i64 %i.ac, 1                   ; 2 uses
  %i.ae = load ptr, ptr %1, align 8, !alias.scope !575, !noalias !578, !nonnull !5
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !575, !noalias !578
  %.sink11.i.i.i.i = select i1 %i.ad, ptr %i.ae, ptr %1
  %.sink10.i.i.i.i = select i1 %i.ad, i64 %i.ag, i64 %i.ac ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %1, i64 -72
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !580, !noalias !583, !noundef !5 ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, 1                   ; 2 uses
  %i.ak = load ptr, ptr %i.b, align 8, !alias.scope !580, !noalias !583, !nonnull !5
  %i.al = getelementptr inbounds i8, ptr %1, i64 -80
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !580, !noalias !583
  %.sink11.i1.i.i.i = select i1 %i.aj, ptr %i.ak, ptr %i.b
  %.sink10.i2.i.i.i = select i1 %i.aj, i64 %i.am, i64 %i.ai ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %..i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i) ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.an = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.an, %..i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.f, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i
  %i.ao = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, %bb.f
  %.sroa.01.019.i.i.i.i.i = phi i64 [ %i.an, %bb.f ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %.val15.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !595, !noalias !596, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !597, !noalias !598, !nonnull !5, !noundef !5 ; 2 uses
  %i.as = ptrtoint ptr %.val15.i.i.i.i.i to i64
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB35_:bb.a
  %i.jw = icmp eq i32 %i.js, %i.ju
  br i1 %i.jw, label %bb.y, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i61

bb.y:                                             ; preds = %bb.x
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.jy = load i32, ptr %i.jx, align 4, !alias.scope !1344, !noalias !1345, !noundef !5
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jb, i64 32
  %i.ka = load i32, ptr %i.jz, align 4, !alias.scope !1345, !noalias !1344, !noundef !5
  %i.kb = tail call i8 @llvm.ucmp.i8.i32(i32 %i.jy, i32 %i.ka)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i61

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i61: ; preds = %bb.y, %bb.x, %bb.w, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit60
  %.sroa.0.0.i.i.i62 = phi i8 [ %i.jk, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit60 ], [ %i.jq, %bb.w ], [ %i.kb, %bb.y ], [ %i.jv, %bb.x ] ; 2 uses
  %i.kc = icmp eq i8 %.sroa.0.0.i.i.i62, 0
  br i1 %i.kc, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i64, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit80

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i64: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i61, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.ke = load i64, ptr %i.kd, align 8, !alias.scope !1351, !noalias !1354, !noundef !5 ; 2 uses
  %i.kf = icmp ugt i64 %i.ke, 1                   ; 2 uses
  %i.kg = load ptr, ptr %i.jd, align 8, !alias.scope !1351, !noalias !1354, !nonnull !5
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.ki = load i64, ptr %i.kh, align 8, !alias.scope !1351, !noalias !1354
  %.sink11.i.i.i.i65 = select i1 %i.kf, ptr %i.kg, ptr %i.jd
  %.sink10.i.i.i.i66 = select i1 %i.kf, i64 %i.ki, i64 %i.ke ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.kk = load i64, ptr %i.kj, align 8, !alias.scope !1356, !noalias !1359, !noundef !5 ; 2 uses
  %i.kl = icmp ugt i64 %i.kk, 1                   ; 2 uses
  %i.km = load ptr, ptr %i.jb, align 8, !alias.scope !1356, !noalias !1359, !nonnull !5
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.ko = load i64, ptr %i.kn, align 8, !alias.scope !1356, !noalias !1359
  %.sink11.i1.i.i.i67 = select i1 %i.kl, ptr %i.km, ptr %i.jb
  %.sink10.i2.i.i.i68 = select i1 %i.kl, i64 %i.ko, i64 %i.kk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  %..i.i.i.i.i.i69 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i68, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i66) ; 2 uses
  %.not.i.i.i.i.i70 = icmp eq i64 %..i.i.i.i.i.i69, 0
  br i1 %.not.i.i.i.i.i70, label %._crit_edge.i.i.i.i.i79, label %.lr.ph.i.i.i.i.i71

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i71
  %i.kp = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i72, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i78 = icmp eq i64 %i.kp, %..i.i.i.i.i.i69
  br i1 %exitcond.not.i.i.i.i.i78, label %._crit_edge.i.i.i.i.i79, label %.lr.ph.i.i.i.i.i71

._crit_edge.i.i.i.i.i79:                          ; preds = %bb.z, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i64
  %i.kq = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i66, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i68)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit80

.loopexit.i.i.i.i.i77:                            ; preds = %.lr.ph.i.i.i.i.i71
  %i.kr = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i76, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit80

.lr.ph.i.i.i.i.i71:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i64, %bb.z
  %.sroa.01.019.i.i.i.i.i72 = phi i64 [ %i.kp, %bb.z ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i64 ] ; 3 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i65, i64 %.sroa.01.019.i.i.i.i.i72
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i67, i64 %.sroa.01.019.i.i.i.i.i72
  %.val15.i.i.i.i.i73 = load ptr, ptr %i.ks, align 8, !alias.scope !1371, !noalias !1372, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i74 = load ptr, ptr %i.kt, align 8, !alias.scope !1373, !noalias !1374, !nonnull !5, !noundef !5 ; 2 uses
  %i.ku = ptrtoint ptr %.val15.i.i.i.i.i73 to i64
  %i.kv = and i64 %i.ku, 1
  %i.kw = sub nsw i64 0, %i.kv
  %i.kx = getelementptr i8, ptr %.val15.i.i.i.i.i73, i64 %i.kw ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kx) ]
  %i.ky = load ptr, ptr %i.kx, align 8, !noalias !1375, !nonnull !5, !noundef !5
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.la = load i64, ptr %i.kz, align 8, !noalias !1375, !noundef !5 ; 2 uses
  %i.lb = ptrtoint ptr %.val16.i.i.i.i.i74 to i64
  %i.lc = and i64 %i.lb, 1
  %i.ld = sub nsw i64 0, %i.lc
  %i.le = getelementptr i8, ptr %.val16.i.i.i.i.i74, i64 %i.ld ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.le) ]
  %i.lf = load ptr, ptr %i.le, align 8, !noalias !1375, !nonnull !5, !noundef !5
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lh = load i64, ptr %i.lg, align 8, !noalias !1375, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i75 = tail call i64 @llvm.umin.i64(i64 %i.la, i64 %i.lh)
  %i.li = tail call i32 @memcmp(ptr nonnull %i.ky, ptr nonnull %i.lf, i64 %spec.store.select.i.i.i.i.i.i.i75), !noalias !1375 ; 2 uses
  %i.lj = sext i32 %i.li to i64
  %i.lk = icmp eq i32 %i.li, 0
  %i.ll = sub i64 %i.la, %i.lh
  %spec.select.i.i.i.i.i.i.i76 = select i1 %i.lk, i64 %i.ll, i64 %i.lj ; 2 uses
  %i.lm = icmp eq i64 %spec.select.i.i.i.i.i.i.i76, 0
  br i1 %i.lm, label %bb.z, label %.loopexit.i.i.i.i.i77

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit80: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i61, %._crit_edge.i.i.i.i.i79, %.loopexit.i.i.i.i.i77
  %.sroa.0.0.i.i63 = phi i8 [ %.sroa.0.0.i.i.i62, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i61 ], [ %i.kq, %._crit_edge.i.i.i.i.i79 ], [ %i.kr, %.loopexit.i.i.i.i.i77 ]
  %i.ln = select i1 %i.iz, ptr %i.eb, ptr %i.ef, !unpredictable !5
  %i.lo = select i1 %i.gp, ptr %i.ed, ptr %i.dy, !unpredictable !5
  %i.lp = icmp eq i8 %.sroa.0.0.i.i63, -1         ; 2 uses
  %i.lq = select i1 %i.lp, ptr %i.jd, ptr %i.jb, !unpredictable !5
  %i.lr = select i1 %i.lp, ptr %i.jb, ptr %i.jd, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.lo, i64 88, i1 false)
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ls, ptr noundef nonnull align 8 dereferenceable(88) %i.lq, i64 88, i1 false)
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.lt, ptr noundef nonnull align 8 dereferenceable(88) %i.lr, i64 88, i1 false)
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.lu, ptr noundef nonnull align 8 dereferenceable(88) %i.ln, i64 88, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB35_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 64)) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val21 = load i64, ptr %i.a, align 8, !range !551, !noundef !5
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val22 = load ptr, ptr %i.b, align 8
  %.val23 = load i64, ptr %0, align 8
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val24 = load ptr, ptr %i.c, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val3.i = load ptr, ptr %.0.val, align 8
  %i.d = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i, i64 %.val21, ptr %.val22) #47
  %.val.i = load ptr, ptr %.0.val, align 8
  %i.e = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i, i64 %.val23, ptr %.val24) #47
  %i.f = icmp ult i64 %i.d, %i.e                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val16 = load i64, ptr %i.g, align 8, !range !551, !noundef !5
  %i.i = getelementptr i8, ptr %0, i64 56
  %.val17 = load ptr, ptr %i.i, align 8
  %.val18 = load i64, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %0, i64 40
  %.val19 = load ptr, ptr %i.j, align 8
  %.val3.i25 = load ptr, ptr %.0.val, align 8
  %i.k = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i25, i64 %.val16, ptr %.val17) #47
  %.val.i26 = load ptr, ptr %.0.val, align 8
  %i.l = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i26, i64 %.val18, ptr %.val19) #47
  %i.m = icmp ult i64 %i.k, %i.l                  ; 2 uses
  %i.n = zext i1 %i.f to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.n ; 4 uses
  %i.p = xor i1 %i.f, true
  %i.q = zext i1 %i.p to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.q ; 5 uses
  %i.s = select i1 %i.m, i64 3, i64 2
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.s ; 5 uses
  %i.u = select i1 %i.m, i64 2, i64 3
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.u ; 4 uses
  %.val11 = load i64, ptr %i.t, align 8, !range !551, !noundef !5
  %i.w = getelementptr i8, ptr %i.t, i64 8
  %.val12 = load ptr, ptr %i.w, align 8
  %.val13 = load i64, ptr %i.o, align 8
  %i.x = getelementptr i8, ptr %i.o, i64 8
  %.val14 = load ptr, ptr %i.x, align 8
  %.val3.i27 = load ptr, ptr %.0.val, align 8
  %i.y = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i27, i64 %.val11, ptr %.val12) #47
  %.val.i28 = load ptr, ptr %.0.val, align 8
  %i.z = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i28, i64 %.val13, ptr %.val14) #47
  %i.aa = icmp ult i64 %i.y, %i.z                 ; 3 uses
  %.val6 = load i64, ptr %i.v, align 8, !range !551, !noundef !5
  %i.ab = getelementptr i8, ptr %i.v, i64 8
  %.val7 = load ptr, ptr %i.ab, align 8
  %.val8 = load i64, ptr %i.r, align 8
  %i.ac = getelementptr i8, ptr %i.r, i64 8
  %.val9 = load ptr, ptr %i.ac, align 8
  %.val3.i29 = load ptr, ptr %.0.val, align 8
  %i.ad = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i29, i64 %.val6, ptr %.val7) #47
  %.val.i30 = load ptr, ptr %.0.val, align 8
  %i.ae = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i30, i64 %.val8, ptr %.val9) #47
  %i.af = icmp ult i64 %i.ad, %i.ae               ; 3 uses
  %i.ag = select i1 %i.aa, ptr %i.t, ptr %i.o, !unpredictable !5
  %i.ah = select i1 %i.af, ptr %i.r, ptr %i.v, !unpredictable !5
  %i.ai = select i1 %i.af, ptr %i.t, ptr %i.r, !unpredictable !5
  %i.aj = select i1 %i.aa, ptr %i.o, ptr %i.ai, !unpredictable !5 ; 4 uses
  %i.ak = select i1 %i.aa, ptr %i.r, ptr %i.t, !unpredictable !5
  %i.al = select i1 %i.af, ptr %i.v, ptr %i.ak, !unpredictable !5 ; 4 uses
  %.val1 = load i64, ptr %i.al, align 8, !range !551, !noundef !5
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.val2 = load ptr, ptr %i.am, align 8
  %.val3 = load i64, ptr %i.aj, align 8
  %i.an = getelementptr i8, ptr %i.aj, i64 8
  %.val4 = load ptr, ptr %i.an, align 8
  %.val3.i31 = load ptr, ptr %.0.val, align 8
  %i.ao = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i31, i64 %.val1, ptr %.val2) #47
  %.val.i32 = load ptr, ptr %.0.val, align 8
  %i.ap = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i32, i64 %.val3, ptr %.val4) #47
  %i.aq = icmp ult i64 %i.ao, %i.ap               ; 2 uses
  %i.ar = select i1 %i.aq, ptr %i.al, ptr %i.aj, !unpredictable !5
  %i.as = select i1 %i.aq, ptr %i.aj, ptr %i.al, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3a_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !nonnull !5, !align !82, !noundef !5
  %.val9 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = load i64, ptr %.val8, align 8, !range !552, !noundef !5
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.c = load i64, ptr %.val9, align 8, !range !552, !noundef !5
  %switch.gep18 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.c
  %switch.load19 = load i8, ptr %switch.gep18, align 1
  %i.d = icmp ult i8 %switch.load, %switch.load19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load ptr, ptr %i.e, align 8, !nonnull !5, !align !82, !noundef !5
  %.val7 = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.g = load i64, ptr %.val6, align 8, !range !552, !noundef !5
  %switch.gep2 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.g
  %switch.load3 = load i8, ptr %switch.gep2, align 1
  %i.h = load i64, ptr %.val7, align 8, !range !552, !noundef !5
  %switch.gep30 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.h
  %switch.load31 = load i8, ptr %switch.gep30, align 1
  %i.i = icmp ult i8 %switch.load3, %switch.load31 ; 2 uses
  %i.j = zext i1 %i.d to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j ; 3 uses
  %i.l = xor i1 %i.d, true
  %i.m = zext i1 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 4 uses
  %i.o = select i1 %i.i, i64 3, i64 2
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o ; 4 uses
  %i.q = select i1 %i.i, i64 2, i64 3
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.q ; 3 uses
  %.val4 = load ptr, ptr %i.p, align 8, !nonnull !5, !align !82, !noundef !5
  %.val5 = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.s = load i64, ptr %.val4, align 8, !range !552, !noundef !5
  %switch.gep6 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.s
  %switch.load7 = load i8, ptr %switch.gep6, align 1
  %i.t = load i64, ptr %.val5, align 8, !range !552, !noundef !5
  %switch.gep22 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.t
  %switch.load23 = load i8, ptr %switch.gep22, align 1
  %i.u = icmp ult i8 %switch.load7, %switch.load23 ; 3 uses
  %.val2 = load ptr, ptr %i.r, align 8, !nonnull !5, !align !82, !noundef !5
  %.val3 = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.v = load i64, ptr %.val2, align 8, !range !552, !noundef !5
  %switch.gep10 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.v
  %switch.load11 = load i8, ptr %switch.gep10, align 1
  %i.w = load i64, ptr %.val3, align 8, !range !552, !noundef !5
  %switch.gep34 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.w
  %switch.load35 = load i8, ptr %switch.gep34, align 1
  %i.x = icmp ult i8 %switch.load11, %switch.load35 ; 3 uses
  %i.y = select i1 %i.x, ptr %i.p, ptr %i.n, !unpredictable !5
  %i.z = select i1 %i.u, ptr %i.k, ptr %i.y, !unpredictable !5 ; 3 uses
  %i.aa = select i1 %i.u, ptr %i.n, ptr %i.p, !unpredictable !5
  %i.ab = select i1 %i.x, ptr %i.r, ptr %i.aa, !unpredictable !5 ; 3 uses
  %.val = load ptr, ptr %i.ab, align 8, !nonnull !5, !align !82, !noundef !5
  %.val1 = load ptr, ptr %i.z, align 8, !nonnull !5, !noundef !5
  %i.ac = load i64, ptr %.val, align 8, !range !552, !noundef !5
  %switch.gep14 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.ac
  %switch.load15 = load i8, ptr %switch.gep14, align 1
  %i.ad = load i64, ptr %.val1, align 8, !range !552, !noundef !5
  %switch.gep26 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.ad
  %switch.load27 = load i8, ptr %switch.gep26, align 1
  %i.ae = icmp ult i8 %switch.load15, %switch.load27 ; 2 uses
  %.val37 = load i64, ptr %i.p, align 8
  %.val38 = load i64, ptr %i.k, align 8
  %i.af = select i1 %i.u, i64 %.val37, i64 %.val38, !unpredictable !5
  store i64 %i.af, ptr %1, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val39 = load i64, ptr %i.ab, align 8
  %.val40 = load i64, ptr %i.z, align 8
  %i.ah = select i1 %i.ae, i64 %.val39, i64 %.val40, !unpredictable !5
  store i64 %i.ah, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val41 = load i64, ptr %i.z, align 8
  %.val42 = load i64, ptr %i.ab, align 8
  %i.aj = select i1 %i.ae, i64 %.val41, i64 %.val42, !unpredictable !5
  store i64 %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val43 = load i64, ptr %i.n, align 8
  %.val44 = load i64, ptr %i.r, align 8
  %i.al = select i1 %i.x, i64 %.val43, i64 %.val44, !unpredictable !5
  store i64 %i.al, ptr %i.ak, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB3b_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 96)) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val8 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.val9 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = ptrtoint ptr %.val8 to i64
  %i.c = and i64 %i.b, 1
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr i8, ptr %.val8, i64 %i.d   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.i = ptrtoint ptr %.val9 to i64
  %i.j = and i64 %i.i, 1
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr i8, ptr %.val9, i64 %i.k   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.o)
  %i.p = tail call i32 @memcmp(ptr nonnull %i.f, ptr nonnull %i.m, i64 %spec.store.select.i.i.i) ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp eq i32 %i.p, 0
  %i.s = sub i64 %i.h, %i.o
  %spec.select.i.i.i = select i1 %i.r, i64 %i.s, i64 %i.q ; 2 uses
  %i.t = icmp sgt i64 %spec.select.i.i.i, -1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val6 = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.val7 = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = ptrtoint ptr %.val6 to i64
  %i.x = and i64 %i.w, 1
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr i8, ptr %.val6, i64 %i.y   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !5, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5 ; 2 uses
  %i.ad = ptrtoint ptr %.val7 to i64
  %i.ae = and i64 %i.ad, 1
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr i8, ptr %.val7, i64 %i.af ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !5, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i10 = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.aj)
  %i.ak = tail call i32 @memcmp(ptr nonnull %i.aa, ptr nonnull %i.ah, i64 %spec.store.select.i.i.i10) ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub i64 %i.ac, %i.aj
  %spec.select.i.i.i11 = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i.i11, 0    ; 2 uses
  %spec.select.i.i.i.lobit = lshr i64 %spec.select.i.i.i, 63
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %spec.select.i.i.i.lobit ; 3 uses
  %i.aq = zext i1 %i.t to i64
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.aq ; 4 uses
  %i.as = select i1 %i.ao, i64 3, i64 2
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.as ; 4 uses
  %i.au = select i1 %i.ao, i64 2, i64 3
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.au ; 3 uses
  %.val4 = load ptr, ptr %i.at, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.val5 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aw = ptrtoint ptr %.val4 to i64
  %i.ax = and i64 %i.aw, 1
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr i8, ptr %.val4, i64 %i.ay ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !5, !noundef !5
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !5 ; 2 uses
  %i.bd = ptrtoint ptr %.val5 to i64
  %i.be = and i64 %i.bd, 1
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = getelementptr i8, ptr %.val5, i64 %i.bf ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !5, !noundef !5
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i12 = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.bj)
  %i.bk = tail call i32 @memcmp(ptr nonnull %i.ba, ptr nonnull %i.bh, i64 %spec.store.select.i.i.i12) ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp eq i32 %i.bk, 0
  %i.bn = sub i64 %i.bc, %i.bj
  %spec.select.i.i.i13 = select i1 %i.bm, i64 %i.bn, i64 %i.bl
  %i.bo = icmp slt i64 %spec.select.i.i.i13, 0    ; 3 uses
  %.val2 = load ptr, ptr %i.av, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.val3 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bp = ptrtoint ptr %.val2 to i64
  %i.bq = and i64 %i.bp, 1
  %i.br = sub nsw i64 0, %i.bq
  %i.bs = getelementptr i8, ptr %.val2, i64 %i.br ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !5, !noundef !5
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !5 ; 2 uses
  %i.bw = ptrtoint ptr %.val3 to i64
  %i.bx = and i64 %i.bw, 1
  %i.by = sub nsw i64 0, %i.bx
  %i.bz = getelementptr i8, ptr %.val3, i64 %i.by ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !5, !noundef !5
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i14 = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.cc)
  %i.cd = tail call i32 @memcmp(ptr nonnull %i.bt, ptr nonnull %i.ca, i64 %spec.store.select.i.i.i14) ; 2 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp eq i32 %i.cd, 0
  %i.cg = sub i64 %i.bv, %i.cc
  %spec.select.i.i.i15 = select i1 %i.cf, i64 %i.cg, i64 %i.ce
  %i.ch = icmp slt i64 %spec.select.i.i.i15, 0    ; 3 uses
  %i.ci = select i1 %i.bo, ptr %i.at, ptr %i.ap, !unpredictable !5
  %i.cj = select i1 %i.ch, ptr %i.ar, ptr %i.av, !unpredictable !5
  %i.ck = select i1 %i.ch, ptr %i.at, ptr %i.ar, !unpredictable !5
  %i.cl = select i1 %i.bo, ptr %i.ap, ptr %i.ck, !unpredictable !5 ; 3 uses
  %i.cm = select i1 %i.bo, ptr %i.ar, ptr %i.at, !unpredictable !5
  %i.cn = select i1 %i.ch, ptr %i.av, ptr %i.cm, !unpredictable !5 ; 3 uses
  %.val = load ptr, ptr %i.cn, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.val1 = load ptr, ptr %i.cl, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.co = ptrtoint ptr %.val to i64
  %i.cp = and i64 %i.co, 1
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr i8, ptr %.val, i64 %i.cq  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ]
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !5, !noundef !5
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !5 ; 2 uses
  %i.cv = ptrtoint ptr %.val1 to i64
  %i.cw = and i64 %i.cv, 1
  %i.cx = sub nsw i64 0, %i.cw
  %i.cy = getelementptr i8, ptr %.val1, i64 %i.cx ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cy) ]
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !5, !noundef !5
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load i64, ptr %i.da, align 8, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i16 = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.db)
  %i.dc = tail call i32 @memcmp(ptr nonnull %i.cs, ptr nonnull %i.cz, i64 %spec.store.select.i.i.i16) ; 2 uses
  %i.dd = sext i32 %i.dc to i64
  %i.de = icmp eq i32 %i.dc, 0
  %i.df = sub i64 %i.cu, %i.db
  %spec.select.i.i.i17 = select i1 %i.de, i64 %i.df, i64 %i.dd
  %i.dg = icmp slt i64 %spec.select.i.i.i17, 0    ; 2 uses
  %i.dh = select i1 %i.dg, ptr %i.cn, ptr %i.cl, !unpredictable !5
  %i.di = select i1 %i.dg, ptr %i.cl, ptr %i.cn, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i64 24, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %i.di, i64 24, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort8_stableINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1e_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB23_11SyntaxTokenB2p_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5j_(ptr noundef nonnull captures(address, read_provenance) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 128)) %1, ptr noundef nonnull captures(address, read_provenance) initializes((0, 128)) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.i:
  tail call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1e_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB23_11SyntaxTokenB2p_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5j_(ptr noundef %0, ptr noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  tail call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1e_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB23_11SyntaxTokenB2p_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5j_(ptr noundef %i.a, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  %i.e = getelementptr i8, ptr %2, i64 48         ; 3 uses
  %i.f = tail call { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !noalias !1376
  %i.g = extractvalue { i32, i32 } %i.f, 0
  %i.h = tail call { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  %i.i = extractvalue { i32, i32 } %i.h, 0
  %i.j = icmp ult i32 %i.g, %i.i                  ; 3 uses
  %..i21.i = select i1 %i.j, ptr %i.b, ptr %2
  %i.k = xor i1 %i.j, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i, i64 16, i1 false), !noalias !1379
  %i.l = zext i1 %i.j to i64
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort8_stableNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3J_:.lr.ph.i
  %i.du = getelementptr i8, ptr %i.dr, i64 8
  %i.dv = icmp ne ptr %i.dn, %i.dt
  %i.dw = icmp ne ptr %i.dl, %i.du
  %or.cond.i = select i1 %i.dv, i1 true, i1 %i.dw, !prof !1390
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3Q_.exit, !prof !1390

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #42, !noalias !1443
  unreachable

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3Q_.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort8_stableNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB19_E0E0EB2Y_(ptr noundef nonnull captures(address, read_provenance) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 64)) %1, ptr noundef nonnull captures(address, read_provenance) initializes((0, 64)) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) #47 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d) #47 ; 2 uses
  %i.f = zext i1 %i.b to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f ; 3 uses
  %i.h = xor i1 %i.b, true
  %i.i = zext i1 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i ; 4 uses
  %i.k = select i1 %i.e, i64 3, i64 2
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 4 uses
  %i.m = select i1 %i.e, i64 2, i64 3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 3 uses
  %i.o = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g) #47 ; 3 uses
  %i.p = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j) #47 ; 3 uses
  %i.q = select i1 %i.o, ptr %i.l, ptr %i.g, !unpredictable !5
  %i.r = select i1 %i.p, ptr %i.j, ptr %i.n, !unpredictable !5
  %i.s = select i1 %i.p, ptr %i.l, ptr %i.j, !unpredictable !5
  %i.t = select i1 %i.o, ptr %i.g, ptr %i.s, !unpredictable !5 ; 3 uses
  %i.u = select i1 %i.o, ptr %i.j, ptr %i.l, !unpredictable !5
  %i.v = select i1 %i.p, ptr %i.n, ptr %i.u, !unpredictable !5 ; 3 uses
  %i.w = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t) #47 ; 2 uses
  %i.x = select i1 %i.w, ptr %i.v, ptr %i.t, !unpredictable !5
  %i.y = select i1 %i.w, ptr %i.t, ptr %i.v, !unpredictable !5
  %i.z = load i64, ptr %i.q, align 8
  store i64 %i.z, ptr %2, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i64, ptr %i.x, align 8
  store i64 %i.ab, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.y, align 8
  store i64 %i.ad, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %2, i64 24        ; 4 uses
  %i.af = load i64, ptr %i.r, align 8
  store i64 %i.af, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ah = getelementptr i8, ptr %2, i64 32        ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag) #47 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #47 ; 2 uses
  %i.an = zext i1 %i.aj to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.an ; 3 uses
  %i.ap = xor i1 %i.aj, true
  %i.aq = zext i1 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.aq ; 4 uses
  %i.as = select i1 %i.am, i64 3, i64 2
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.as ; 4 uses
  %i.au = select i1 %i.am, i64 2, i64 3
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 3 uses
  %i.aw = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ao) #47 ; 3 uses
  %i.ax = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar) #47 ; 3 uses
  %i.ay = select i1 %i.aw, ptr %i.at, ptr %i.ao, !unpredictable !5
  %i.az = select i1 %i.ax, ptr %i.ar, ptr %i.av, !unpredictable !5
  %i.ba = select i1 %i.ax, ptr %i.at, ptr %i.ar, !unpredictable !5
  %i.bb = select i1 %i.aw, ptr %i.ao, ptr %i.ba, !unpredictable !5 ; 3 uses
  %i.bc = select i1 %i.aw, ptr %i.ar, ptr %i.at, !unpredictable !5
  %i.bd = select i1 %i.ax, ptr %i.av, ptr %i.bc, !unpredictable !5 ; 3 uses
  %i.be = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bb) #47 ; 2 uses
  %i.bf = select i1 %i.be, ptr %i.bd, ptr %i.bb, !unpredictable !5
  %i.bg = select i1 %i.be, ptr %i.bb, ptr %i.bd, !unpredictable !5
  %i.bh = load i64, ptr %i.ay, align 8
  store i64 %i.bh, ptr %i.ah, align 8
  %i.bi = getelementptr i8, ptr %2, i64 40
  %i.bj = load i64, ptr %i.bf, align 8
  store i64 %i.bj, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %2, i64 48
  %i.bl = load i64, ptr %i.bg, align 8
  store i64 %i.bl, ptr %i.bk, align 8
  %i.bm = getelementptr i8, ptr %2, i64 56        ; 4 uses
  %i.bn = load i64, ptr %i.az, align 8
  store i64 %i.bn, ptr %i.bm, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bp = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #47 ; 3 uses
  %..i21.i = select i1 %i.bp, ptr %i.ah, ptr %2
  %i.bq = xor i1 %i.bp, true
  %i.br = load i64, ptr %..i21.i, align 8, !alias.scope !1456, !noalias !1459
  store i64 %i.br, ptr %1, align 8, !noalias !1463
  %i.bs = zext i1 %i.bp to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bs ; 3 uses
  %i.bu = zext i1 %i.bq to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bu ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae) #47 ; 3 uses
  %..i.i = select i1 %i.bx, ptr %i.ae, ptr %i.bm
  %i.by = xor i1 %i.bx, true
  %i.bz = load i64, ptr %..i.i, align 8, !alias.scope !1456, !noalias !1464
  store i64 %i.bz, ptr %i.bo, align 8, !noalias !1468
  %.neg.i.i = sext i1 %i.by to i64
  %i.ca = getelementptr [8 x i8], ptr %i.bm, i64 %.neg.i.i ; 3 uses
  %.neg13.i.i = sext i1 %i.bx to i64
  %i.cb = getelementptr [8 x i8], ptr %i.ae, i64 %.neg13.i.i ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cd = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bv) #47 ; 3 uses
  %..i21.i.1 = select i1 %i.cd, ptr %i.bt, ptr %i.bv
  %i.ce = xor i1 %i.cd, true
  %i.cf = load i64, ptr %..i21.i.1, align 8, !alias.scope !1456, !noalias !1459
  store i64 %i.cf, ptr %i.bw, align 8, !noalias !1463
  %i.cg = zext i1 %i.cd to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.cg ; 3 uses
  %i.ci = zext i1 %i.ce to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.ci ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cb) #47 ; 3 uses
  %..i.i.1 = select i1 %i.cl, ptr %i.cb, ptr %i.ca
  %i.cm = xor i1 %i.cl, true
  %i.cn = load i64, ptr %..i.i.1, align 8, !alias.scope !1456, !noalias !1464
  store i64 %i.cn, ptr %i.cc, align 8, !noalias !1468
  %.neg.i.i.1 = sext i1 %i.cm to i64
  %i.co = getelementptr [8 x i8], ptr %i.ca, i64 %.neg.i.i.1 ; 3 uses
  %.neg13.i.i.1 = sext i1 %i.cl to i64
  %i.cp = getelementptr [8 x i8], ptr %i.cb, i64 %.neg13.i.i.1 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cr = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cj) #47 ; 3 uses
  %..i21.i.2 = select i1 %i.cr, ptr %i.ch, ptr %i.cj
  %i.cs = xor i1 %i.cr, true
  %i.ct = load i64, ptr %..i21.i.2, align 8, !alias.scope !1456, !noalias !1459
  store i64 %i.ct, ptr %i.ck, align 8, !noalias !1463
  %i.cu = zext i1 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cu ; 3 uses
  %i.cw = zext i1 %i.cs to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cw ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cz = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cp) #47 ; 3 uses
  %..i.i.2 = select i1 %i.cz, ptr %i.cp, ptr %i.co
  %i.da = xor i1 %i.cz, true
  %i.db = load i64, ptr %..i.i.2, align 8, !alias.scope !1456, !noalias !1464
  store i64 %i.db, ptr %i.cq, align 8, !noalias !1468
  %.neg.i.i.2 = sext i1 %i.da to i64
  %i.dc = getelementptr [8 x i8], ptr %i.co, i64 %.neg.i.i.2 ; 3 uses
  %.neg13.i.i.2 = sext i1 %i.cz to i64
  %i.dd = getelementptr [8 x i8], ptr %i.cp, i64 %.neg13.i.i.2 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.df = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cx) #47 ; 3 uses
  %..i21.i.3 = select i1 %i.df, ptr %i.cv, ptr %i.cx
  %i.dg = xor i1 %i.df, true
  %i.dh = load i64, ptr %..i21.i.3, align 8, !alias.scope !1456, !noalias !1459
  store i64 %i.dh, ptr %i.cy, align 8, !noalias !1463
  %i.di = zext i1 %i.df to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.di
  %i.dk = zext i1 %i.dg to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dk
  %i.dm = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dd) #47 ; 3 uses
  %..i.i.3 = select i1 %i.dm, ptr %i.dd, ptr %i.dc
  %i.dn = xor i1 %i.dm, true
  %i.do = load i64, ptr %..i.i.3, align 8, !alias.scope !1456, !noalias !1464
  store i64 %i.do, ptr %i.de, align 8, !noalias !1468
  %.neg.i.i.3 = sext i1 %i.dn to i64
  %i.dp = getelementptr [8 x i8], ptr %i.dc, i64 %.neg.i.i.3
  %.neg13.i.i.3 = sext i1 %i.dm to i64
  %i.dq = getelementptr [8 x i8], ptr %i.dd, i64 %.neg13.i.i.3
  %i.dr = getelementptr i8, ptr %i.dq, i64 8
  %i.ds = getelementptr i8, ptr %i.dp, i64 8
  %i.dt = icmp ne ptr %i.dl, %i.dr
  %i.du = icmp ne ptr %i.dj, %i.ds
  %or.cond.i = select i1 %i.dt, i1 true, i1 %i.du, !prof !1390
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1g_E0E0EB35_.exit, !prof !1390

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #42
  unreachable

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1g_E0E0EB35_.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort8_stableRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3a_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.i:
  tail call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3a_(ptr noundef %0, ptr noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  tail call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3a_(ptr noundef %i.a, ptr noundef %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.e = getelementptr i8, ptr %2, i64 24         ; 3 uses
  %.sroa.011.0.val.i = load ptr, ptr %i.b, align 8, !alias.scope !1469, !nonnull !5, !align !82, !noundef !5
  %.sroa.06.0.val.i = load ptr, ptr %2, align 8, !alias.scope !1469, !nonnull !5, !noundef !5
  %i.f = load i64, ptr %.sroa.011.0.val.i, align 8, !range !552, !noalias !1469, !noundef !5
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.g = load i64, ptr %.sroa.06.0.val.i, align 8, !range !552, !noalias !1469, !noundef !5
  %switch.gep28 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.g
  %switch.load29 = load i8, ptr %switch.gep28, align 1
  %i.h = icmp ult i8 %switch.load, %switch.load29 ; 3 uses
  %i.i = xor i1 %i.h, true
  %.val = load i64, ptr %i.b, align 8
  %.val52 = load i64, ptr %2, align 8
  %i.j = select i1 %i.h, i64 %.val, i64 %.val52
  store i64 %i.j, ptr %1, align 8, !noalias !1472
  %i.k = zext i1 %i.h to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.k ; 3 uses
  %i.m = zext i1 %i.i to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.017.0.val.i = load ptr, ptr %i.d, align 8, !alias.scope !1469, !nonnull !5, !align !82, !noundef !5
  %.sroa.015.0.val.i = load ptr, ptr %i.e, align 8, !alias.scope !1469, !nonnull !5, !noundef !5
  %i.p = load i64, ptr %.sroa.017.0.val.i, align 8, !range !552, !noalias !1469, !noundef !5
  %switch.gep7 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.p
  %switch.load8 = load i8, ptr %switch.gep7, align 1
  %i.q = load i64, ptr %.sroa.015.0.val.i, align 8, !range !552, !noalias !1469, !noundef !5
  %switch.gep40 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.q
  %switch.load41 = load i8, ptr %switch.gep40, align 1
  %i.r = icmp ult i8 %switch.load8, %switch.load41 ; 3 uses
  %i.s = xor i1 %i.r, true
  %.val53 = load i64, ptr %i.e, align 8
  %.val54 = load i64, ptr %i.d, align 8
  %i.t = select i1 %i.r, i64 %.val53, i64 %.val54
  store i64 %i.t, ptr %i.c, align 8, !noalias !1476
  %.neg.i.i = sext i1 %i.s to i64
  %i.u = getelementptr [8 x i8], ptr %i.d, i64 %.neg.i.i ; 3 uses
  %.neg13.i.i = sext i1 %i.r to i64
  %i.v = getelementptr [8 x i8], ptr %i.e, i64 %.neg13.i.i ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.011.0.val.i.1 = load ptr, ptr %i.l, align 8, !alias.scope !1469, !nonnull !5, !align !82, !noundef !5
  %.sroa.06.0.val.i.1 = load ptr, ptr %i.n, align 8, !alias.scope !1469, !nonnull !5, !noundef !5
  %i.x = load i64, ptr %.sroa.011.0.val.i.1, align 8, !range !552, !noalias !1469, !noundef !5
  %switch.gep10 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.x
  %switch.load11 = load i8, ptr %switch.gep10, align 1
  %i.y = load i64, ptr %.sroa.06.0.val.i.1, align 8, !range !552, !noalias !1469, !noundef !5
  %switch.gep31 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.y
  %switch.load32 = load i8, ptr %switch.gep31, align 1
  %i.z = icmp ult i8 %switch.load11, %switch.load32 ; 3 uses
  %i.aa = xor i1 %i.z, true
  %.val55 = load i64, ptr %i.l, align 8
  %.val56 = load i64, ptr %i.n, align 8
  %i.ab = select i1 %i.z, i64 %.val55, i64 %.val56
  store i64 %i.ab, ptr %i.o, align 8, !noalias !1472
  %i.ac = zext i1 %i.z to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ac ; 3 uses
  %i.ae = zext i1 %i.aa to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ae ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.017.0.val.i.1 = load ptr, ptr %i.u, align 8, !alias.scope !1469, !nonnull !5, !align !82, !noundef !5
  %.sroa.015.0.val.i.1 = load ptr, ptr %i.v, align 8, !alias.scope !1469, !nonnull !5, !noundef !5
  %i.ah = load i64, ptr %.sroa.017.0.val.i.1, align 8, !range !552, !noalias !1469, !noundef !5
  %switch.gep13 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.ah
  %switch.load14 = load i8, ptr %switch.gep13, align 1
  %i.ai = load i64, ptr %.sroa.015.0.val.i.1, align 8, !range !552, !noalias !1469, !noundef !5
  %switch.gep46 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.ai
  %switch.load47 = load i8, ptr %switch.gep46, align 1
  %i.aj = icmp ult i8 %switch.load14, %switch.load47 ; 3 uses
  %i.ak = xor i1 %i.aj, true
  %.val57 = load i64, ptr %i.v, align 8
  %.val58 = load i64, ptr %i.u, align 8
  %i.al = select i1 %i.aj, i64 %.val57, i64 %.val58
  store i64 %i.al, ptr %i.w, align 8, !noalias !1476
  %.neg.i.i.1 = sext i1 %i.ak to i64
  %i.am = getelementptr [8 x i8], ptr %i.u, i64 %.neg.i.i.1 ; 3 uses
  %.neg13.i.i.1 = sext i1 %i.aj to i64
  %i.an = getelementptr [8 x i8], ptr %i.v, i64 %.neg13.i.i.1 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.011.0.val.i.2 = load ptr, ptr %i.ad, align 8, !alias.scope !1469, !nonnull !5, !align !82, !noundef !5
  %.sroa.06.0.val.i.2 = load ptr, ptr %i.af, align 8, !alias.scope !1469, !nonnull !5, !noundef !5
  %i.ap = load i64, ptr %.sroa.011.0.val.i.2, align 8, !range !552, !noalias !1469, !noundef !5
  %switch.gep16 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.ap
  %switch.load17 = load i8, ptr %switch.gep16, align 1
  %i.aq = load i64, ptr %.sroa.06.0.val.i.2, align 8, !range !552, !noalias !1469, !noundef !5
  %switch.gep34 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.aq
  %switch.load35 = load i8, ptr %switch.gep34, align 1
  %i.ar = icmp ult i8 %switch.load17, %switch.load35 ; 3 uses
  %i.as = xor i1 %i.ar, true
  %.val59 = load i64, ptr %i.ad, align 8
  %.val60 = load i64, ptr %i.af, align 8
  %i.at = select i1 %i.ar, i64 %.val59, i64 %.val60
  store i64 %i.at, ptr %i.ag, align 8, !noalias !1472
  %i.au = zext i1 %i.ar to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.au ; 3 uses
  %i.aw = zext i1 %i.as to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.aw ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.017.0.val.i.2 = load ptr, ptr %i.am, align 8, !alias.scope !1469, !nonnull !5, !align !82, !noundef !5
  %.sroa.015.0.val.i.2 = load ptr, ptr %i.an, align 8, !alias.scope !1469, !nonnull !5, !noundef !5
  %i.az = load i64, ptr %.sroa.017.0.val.i.2, align 8, !range !552, !noalias !1469, !noundef !5
  %switch.gep19 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.az
  %switch.load20 = load i8, ptr %switch.gep19, align 1
  %i.ba = load i64, ptr %.sroa.015.0.val.i.2, align 8, !range !552, !noalias !1469, !noundef !5
  %switch.gep43 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.ba
  %switch.load44 = load i8, ptr %switch.gep43, align 1
  %i.bb = icmp ult i8 %switch.load20, %switch.load44 ; 3 uses
  %i.bc = xor i1 %i.bb, true
  %.val61 = load i64, ptr %i.an, align 8
  %.val62 = load i64, ptr %i.am, align 8
  %i.bd = select i1 %i.bb, i64 %.val61, i64 %.val62
  store i64 %i.bd, ptr %i.ao, align 8, !noalias !1476
  %.neg.i.i.2 = sext i1 %i.bc to i64
  %i.be = getelementptr [8 x i8], ptr %i.am, i64 %.neg.i.i.2 ; 3 uses
  %.neg13.i.i.2 = sext i1 %i.bb to i64
  %i.bf = getelementptr [8 x i8], ptr %i.an, i64 %.neg13.i.i.2 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.011.0.val.i.3 = load ptr, ptr %i.av, align 8, !alias.scope !1469, !nonnull !5, !align !82, !noundef !5
  %.sroa.06.0.val.i.3 = load ptr, ptr %i.ax, align 8, !alias.scope !1469, !nonnull !5, !noundef !5
  %i.bh = load i64, ptr %.sroa.011.0.val.i.3, align 8, !range !552, !noalias !1469, !noundef !5
  %switch.gep22 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.bh
  %switch.load23 = load i8, ptr %switch.gep22, align 1
  %i.bi = load i64, ptr %.sroa.06.0.val.i.3, align 8, !range !552, !noalias !1469, !noundef !5
  %switch.gep37 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.bi
  %switch.load38 = load i8, ptr %switch.gep37, align 1
  %i.bj = icmp ult i8 %switch.load23, %switch.load38 ; 3 uses
  %i.bk = xor i1 %i.bj, true
  %.val63 = load i64, ptr %i.av, align 8
  %.val64 = load i64, ptr %i.ax, align 8
  %i.bl = select i1 %i.bj, i64 %.val63, i64 %.val64
  store i64 %i.bl, ptr %i.ay, align 8, !noalias !1472
  %i.bm = zext i1 %i.bj to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bm
  %i.bo = zext i1 %i.bk to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bo
  %.sroa.017.0.val.i.3 = load ptr, ptr %i.be, align 8, !alias.scope !1469, !nonnull !5, !align !82, !noundef !5
  %.sroa.015.0.val.i.3 = load ptr, ptr %i.bf, align 8, !alias.scope !1469, !nonnull !5, !noundef !5
  %i.bq = load i64, ptr %.sroa.017.0.val.i.3, align 8, !range !552, !noalias !1469, !noundef !5
  %switch.gep25 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.bq
  %switch.load26 = load i8, ptr %switch.gep25, align 1
  %i.br = load i64, ptr %.sroa.015.0.val.i.3, align 8, !range !552, !noalias !1469, !noundef !5
  %switch.gep49 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.br
  %switch.load50 = load i8, ptr %switch.gep49, align 1
  %i.bs = icmp ult i8 %switch.load26, %switch.load50 ; 3 uses
  %i.bt = xor i1 %i.bs, true
  %.val65 = load i64, ptr %i.bf, align 8
  %.val66 = load i64, ptr %i.be, align 8
  %i.bu = select i1 %i.bs, i64 %.val65, i64 %.val66
  store i64 %i.bu, ptr %i.bg, align 8, !noalias !1476
  %.neg.i.i.3 = sext i1 %i.bt to i64
  %i.bv = getelementptr [8 x i8], ptr %i.be, i64 %.neg.i.i.3
  %.neg13.i.i.3 = sext i1 %i.bs to i64
  %i.bw = getelementptr [8 x i8], ptr %i.bf, i64 %.neg13.i.i.3
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %i.by = getelementptr i8, ptr %i.bv, i64 8
  %i.bz = icmp ne ptr %i.bp, %i.bx
  %i.ca = icmp ne ptr %i.bn, %i.by
  %or.cond.i = select i1 %i.bz, i1 true, i1 %i.ca, !prof !1390
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3h_.exit, !prof !1390

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #42, !noalias !1469
  unreachable

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3h_.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB3c_(ptr noalias nofree noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 2, 33) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph:
  %i.a = lshr i64 %1, 1                           ; 2 uses
  %i.b = add nsw i64 %1, -1                       ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.b
  %i.d = getelementptr [16 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -16
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  br label %bb.a

._crit_edge:                                      ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.ad, i64 16      ; 2 uses
  %i.h = getelementptr i8, ptr %i.ac, i64 16
  %i.i = and i64 %1, 1
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %.sroa.0.010 = phi ptr [ %2, %.lr.ph ], [ %i.v, %bb.a ] ; 2 uses
  %.sroa.04.09 = phi i64 [ 0, %.lr.ph ], [ %i.k, %bb.a ]
  %.sroa.06.08 = phi ptr [ %0, %.lr.ph ], [ %i.u, %bb.a ] ; 4 uses
  %.sroa.011.07 = phi ptr [ %i.d, %.lr.ph ], [ %i.s, %bb.a ] ; 4 uses
  %.sroa.015.06 = phi ptr [ %i.e, %.lr.ph ], [ %i.ad, %bb.a ] ; 4 uses
  %.sroa.017.05 = phi ptr [ %i.c, %.lr.ph ], [ %i.ac, %bb.a ] ; 4 uses
  %.sroa.019.04 = phi ptr [ %i.f, %.lr.ph ], [ %i.ae, %bb.a ] ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.04.09, 1          ; 2 uses
  %.sroa.011.0.val = load i64, ptr %.sroa.011.07, align 8, !range !551, !noundef !5
  %i.l = getelementptr i8, ptr %.sroa.011.07, i64 8
  %.sroa.011.0.val22 = load ptr, ptr %i.l, align 8
  %.sroa.06.0.val = load i64, ptr %.sroa.06.08, align 8
  %i.m = getelementptr i8, ptr %.sroa.06.08, i64 8
  %.sroa.06.0.val23 = load ptr, ptr %i.m, align 8
  %.val3.i = load ptr, ptr %.0.val, align 8
  %i.n = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i, i64 %.sroa.011.0.val, ptr %.sroa.011.0.val22) #47
  %.val.i = load ptr, ptr %.0.val, align 8
  %i.o = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i, i64 %.sroa.06.0.val, ptr %.sroa.06.0.val23) #47
  %i.p = icmp ult i64 %i.n, %i.o                  ; 3 uses
  %..i21 = select i1 %i.p, ptr %.sroa.011.07, ptr %.sroa.06.08
  %i.q = xor i1 %i.p, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010, ptr noundef nonnull align 8 dereferenceable(16) %..i21, i64 16, i1 false), !noalias !1480
  %i.r = zext i1 %i.p to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.07, i64 %i.r ; 4 uses
  %i.t = zext i1 %i.q to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sroa.06.08, i64 %i.t ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 16 ; 2 uses
  %.sroa.017.0.val = load i64, ptr %.sroa.017.05, align 8, !range !551, !noundef !5
  %i.w = getelementptr i8, ptr %.sroa.017.05, i64 8
  %.sroa.017.0.val25 = load ptr, ptr %i.w, align 8
  %.sroa.015.0.val = load i64, ptr %.sroa.015.06, align 8
  %i.x = getelementptr i8, ptr %.sroa.015.06, i64 8
  %.sroa.015.0.val26 = load ptr, ptr %i.x, align 8
  %.val3.i27 = load ptr, ptr %.0.val, align 8
  %i.y = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i27, i64 %.sroa.017.0.val, ptr %.sroa.017.0.val25) #47
  %.val.i28 = load ptr, ptr %.0.val, align 8
  %i.z = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i28, i64 %.sroa.015.0.val, ptr %.sroa.015.0.val26) #47
  %i.aa = icmp ult i64 %i.y, %i.z                 ; 3 uses
  %..i = select i1 %i.aa, ptr %.sroa.015.06, ptr %.sroa.017.05
  %i.ab = xor i1 %i.aa, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.04, ptr noundef nonnull align 8 dereferenceable(16) %..i, i64 16, i1 false), !noalias !1484
  %.neg.i = sext i1 %i.ab to i64
  %i.ac = getelementptr [16 x i8], ptr %.sroa.017.05, i64 %.neg.i ; 2 uses
  %.neg13.i = sext i1 %i.aa to i64
  %i.ad = getelementptr [16 x i8], ptr %.sroa.015.06, i64 %.neg13.i ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.sroa.019.04, i64 -16
  %exitcond.not = icmp eq i64 %i.k, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.a

bb.b:                                             ; preds = %._crit_edge
  %i.af = icmp ult ptr %i.u, %i.g                 ; 3 uses
  %.sroa.06.0..sroa.011.0 = select i1 %i.af, ptr %i.u, ptr %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0..sroa.011.0, i64 16, i1 false)
  %i.ag = zext i1 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.ag
  %i.ai = xor i1 %i.af, true
  %i.aj = zext i1 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.aj
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.sroa.011.1 = phi ptr [ %i.s, %._crit_edge ], [ %i.ak, %bb.b ]
  %.sroa.06.1 = phi ptr [ %i.u, %._crit_edge ], [ %i.ah, %bb.b ]
  %i.al = icmp ne ptr %.sroa.06.1, %i.g
  %i.am = icmp ne ptr %.sroa.011.1, %i.h
  %or.cond = select i1 %i.al, i1 true, i1 %i.am, !prof !1390
  br i1 %or.cond, label %bb.e, label %bb.d, !prof !1390

bb.d:                                             ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1r_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2g_11SyntaxTokenB2C_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5w_(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 576460752303423488) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.b, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %.not5 = icmp samesign eq i64 %2, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1d_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB22_11SyntaxTokenB2o_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5i_.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1d_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB22_11SyntaxTokenB2o_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5i_.exit
  %.sroa.0.06 = phi ptr [ %i.d, %.lr.ph ], [ %i.x, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1d_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB22_11SyntaxTokenB2o_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5i_.exit ] ; 6 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -16 ; 4 uses
  %i.g = call { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.06), !noalias !1488
  %i.h = extractvalue { i32, i32 } %i.g, 0
  %i.i = call { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
  %i.j = extractvalue { i32, i32 } %i.i, 0
  %i.k = icmp ult i32 %i.h, %i.j
  br i1 %i.k, label %bb.e, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1d_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB22_11SyntaxTokenB2o_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5i_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = load i64, ptr %.sroa.0.06, align 8, !range !6, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noundef !5
  store i64 %i.l, ptr %i.a, align 8
  store ptr %i.n, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.06, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %i.o = icmp eq ptr %i.f, %0
  br i1 %i.o, label %._crit_edge18, label %.lr.ph17

bb.f:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i15, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.p = icmp eq ptr %i.q, %0
  br i1 %i.p, label %._crit_edge18, label %.lr.ph17

.lr.ph17:                                         ; preds = %bb.e, %bb.f
  %.sroa.0.0.i15 = phi ptr [ %i.q, %bb.f ], [ %i.f, %bb.e ] ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %.sroa.0.0.i15, i64 -16 ; 4 uses
  %i.r = invoke { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %.lr.ph17
  %i.s = invoke { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc.i
  %i.t = extractvalue { i32, i32 } %i.r, 0
  %i.u = extractvalue { i32, i32 } %i.s, 0
  %i.v = icmp ult i32 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %._crit_edge18

._crit_edge18:                                    ; preds = %bb.f, %bb.g, %bb.e
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.e ], [ %0, %bb.f ], [ %.sroa.0.0.i15, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !1491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1d_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB22_11SyntaxTokenB2o_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5i_.exit

bb.h:                                             ; preds = %.noexc.i, %.lr.ph17
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i15, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !1496
  resume { ptr, i32 } %i.w
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3W_:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.021, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ay, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1m_E0E0EB3b_(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.b, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %.not5 = icmp samesign eq i64 %2, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB18_E0E0EB2X_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB18_E0E0EB2X_.exit
  %.sroa.0.06 = phi ptr [ %i.q, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB18_E0E0EB2X_.exit ], [ %i.d, %.lr.ph.preheader ] ; 5 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -8 ; 4 uses
  %i.f = call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.06, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #47
  br i1 %i.f, label %bb.d, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB18_E0E0EB2X_.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = load ptr, ptr %.sroa.0.06, align 8, !nonnull !5, !noundef !5
  store ptr %i.g, ptr %i.a, align 8
  %i.h = load i64, ptr %i.e, align 8
  store i64 %i.h, ptr %.sroa.0.06, align 8
  %i.i = icmp eq ptr %i.e, %0
  br i1 %i.i, label %._crit_edge17, label %.lr.ph16

bb.e:                                             ; preds = %bb.f
  %i.j = load i64, ptr %i.l, align 8
  store i64 %i.j, ptr %.sroa.0.0.i14, align 8
  %i.k = icmp eq ptr %i.l, %0
  br i1 %i.k, label %._crit_edge17, label %.lr.ph16

.lr.ph16:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i14 = phi ptr [ %i.l, %bb.e ], [ %i.e, %bb.d ] ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.0.i14, i64 -8 ; 4 uses
  %i.m = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph16
  br i1 %i.m, label %bb.e, label %._crit_edge17

._crit_edge17:                                    ; preds = %bb.e, %bb.f, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i14, %bb.f ]
  %i.n = load i64, ptr %i.a, align 8, !noalias !1638
  store i64 %i.n, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !1638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB18_E0E0EB2X_.exit

bb.g:                                             ; preds = %.lr.ph16
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load i64, ptr %i.a, align 8, !noalias !1643
  store i64 %i.p, ptr %.sroa.0.0.i14, align 8, !noalias !1643
  resume { ptr, i32 } %i.o

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB18_E0E0EB2X_.exit: ; preds = %.lr.ph, %._crit_edge17
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB3i_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %.not6 = icmp samesign eq i64 %2, %1
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2
  %.val = load ptr, ptr %3, align 8, !nonnull !5, !align !82, !noundef !5 ; 4 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB34_.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB34_.exit
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %i.t, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB34_.exit ] ; 7 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.07, i64 -16 ; 4 uses
  %.val13.i = load i64, ptr %.sroa.0.07, align 8, !range !551, !noundef !5
  %i.e = getelementptr i8, ptr %.sroa.0.07, i64 8 ; 2 uses
  %.val14.i = load ptr, ptr %i.e, align 8
  %.val15.i = load i64, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %.sroa.0.07, i64 -8
  %.val16.i = load ptr, ptr %i.f, align 8
  %.val3.i.i = load ptr, ptr %.val, align 8
  %i.g = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i.i, i64 %.val13.i, ptr %.val14.i) #47
  %.val.i.i = load ptr, ptr %.val, align 8
  %i.h = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i.i, i64 %.val15.i, ptr %.val16.i) #47
  %i.i = icmp ult i64 %i.g, %i.h
  br i1 %i.i, label %bb.e, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB34_.exit

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr %.sroa.0.07, align 8, !range !551, !noundef !5 ; 3 uses
  %i.k = load ptr, ptr %i.e, align 8, !noundef !5 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.l = icmp eq ptr %i.d, %0
  br i1 %i.l, label %._crit_edge22, label %.lr.ph21

bb.f:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i19, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  %i.m = icmp eq ptr %i.n, %0
  br i1 %i.m, label %._crit_edge22, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e, %bb.f
  %.sroa.0.0.i19 = phi ptr [ %i.n, %bb.f ], [ %i.d, %bb.e ] ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.0.i19, i64 -16 ; 4 uses
  %.val10.i = load i64, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %.sroa.0.0.i19, i64 -8
  %.val11.i = load ptr, ptr %i.o, align 8
  %.val3.i17.i = load ptr, ptr %.val, align 8
  %i.p = invoke fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i17.i, i64 %i.j, ptr %i.k) #47
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %.lr.ph21
  %.val.i18.i = load ptr, ptr %.val, align 8
  %i.q = invoke fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i18.i, i64 %.val10.i, ptr %.val11.i) #47
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc.i
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %bb.f, label %._crit_edge22

._crit_edge22:                                    ; preds = %bb.f, %bb.g, %bb.e
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.e ], [ %0, %bb.f ], [ %.sroa.0.0.i19, %bb.g ] ; 2 uses
  store i64 %i.j, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !1648
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  store ptr %i.k, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1648
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB34_.exit

bb.h:                                             ; preds = %.noexc.i, %.lr.ph21
  %i.s = landingpad { ptr, i32 }
          cleanup
  store i64 %i.j, ptr %.sroa.0.0.i19, align 8, !noalias !1653
  %.sroa.5.0..sroa.0.0.lcssa7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i19, i64 8
  store ptr %i.k, ptr %.sroa.5.0..sroa.0.0.lcssa7.sroa_idx.i, align 8, !noalias !1653
  resume { ptr, i32 } %i.s

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB34_.exit: ; preds = %bb.d, %._crit_edge22
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.t, %i.b
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3n_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %.not6 = icmp samesign eq i64 %2, %1
  br i1 %.not6, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB39_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB39_.exit
  %.sroa.0.07 = phi ptr [ %i.q, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB39_.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.07, i64 -8 ; 3 uses
  %.val9.i = load ptr, ptr %.sroa.0.07, align 8, !nonnull !5, !align !82, !noundef !5 ; 3 uses
  %.val10.i = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = load i64, ptr %.val9.i, align 8, !range !552, !noundef !5
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.f = load i64, ptr %.val10.i, align 8, !range !552, !noundef !5
  %switch.gep21 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.f
  %switch.load22 = load i8, ptr %switch.gep21, align 1
  %i.g = icmp ult i8 %switch.load, %switch.load22
  br i1 %i.g, label %.preheader.preheader, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB39_.exit

.preheader.preheader:                             ; preds = %.lr.ph
  %i.h = ptrtoint ptr %.val10.i to i64
  store i64 %i.h, ptr %.sroa.0.07, align 8
  %i.i = icmp eq ptr %i.d, %0
  br i1 %i.i, label %._crit_edge16, label %.lr.ph15.preheader

.lr.ph15.preheader:                               ; preds = %.preheader.preheader
  %i.j = load i64, ptr %.val9.i, align 8, !range !552, !noundef !5
  %switch.gep18 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.j
  %switch.load19 = load i8, ptr %switch.gep18, align 1
  br label %.lr.ph15

.preheader:                                       ; preds = %.lr.ph15
  %i.k = ptrtoint ptr %.val8.i to i64
  store i64 %i.k, ptr %.sroa.0.0.i14, align 8
  %i.l = icmp eq ptr %i.m, %0
  br i1 %i.l, label %._crit_edge16, label %.lr.ph15

.lr.ph15:                                         ; preds = %.lr.ph15.preheader, %.preheader
  %.sroa.0.0.i14 = phi ptr [ %i.m, %.preheader ], [ %i.d, %.lr.ph15.preheader ] ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i14, i64 -8 ; 3 uses
  %.val8.i = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = load i64, ptr %.val8.i, align 8, !range !552, !noundef !5
  %switch.gep24 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.n
  %switch.load25 = load i8, ptr %switch.gep24, align 1
  %i.o = icmp ult i8 %switch.load19, %switch.load25
  br i1 %i.o, label %.preheader, label %._crit_edge16

._crit_edge16:                                    ; preds = %.preheader, %.lr.ph15, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i14, %.lr.ph15 ]
  %i.p = ptrtoint ptr %.val9.i to i64
  store i64 %i.p, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !1658
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB39_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB39_.exit: ; preds = %.lr.ph, %._crit_edge16
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB3o_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca [16 x i8], align 8          ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB3a_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB3a_.exit
  %.sroa.0.05 = phi ptr [ %i.ao, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB3a_.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24 ; 4 uses
  %.val9.i = load ptr, ptr %.sroa.0.05, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.val10.i = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = ptrtoint ptr %.val9.i to i64
  %i.f = and i64 %i.e, 1
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr i8, ptr %.val9.i, i64 %i.g ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !5 ; 2 uses
  %i.l = ptrtoint ptr %.val10.i to i64
  %i.m = and i64 %i.l, 1
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr i8, ptr %.val10.i, i64 %i.n ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.r)
  %i.s = tail call i32 @memcmp(ptr nonnull %i.i, ptr nonnull %i.p, i64 %spec.store.select.i.i.i.i) ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp eq i32 %i.s, 0
  %i.v = sub i64 %i.k, %i.r
  %spec.select.i.i.i.i = select i1 %i.u, i64 %i.v, i64 %i.t
  %i.w = icmp slt i64 %spec.select.i.i.i.i, 0
  br i1 %i.w, label %bb.d, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB3a_.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.x = icmp eq ptr %i.d, %0
  br i1 %i.x, label %._crit_edge11, label %.lr.ph10.preheader

.lr.ph10.preheader:                               ; preds = %bb.d
  %i.y = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.z = load i64, ptr %i.j, align 8, !noundef !5 ; 2 uses
  br label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %i.aa = icmp eq ptr %i.ab, %0
  br i1 %i.aa, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %.lr.ph10.preheader, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.ab, %bb.e ], [ %i.d, %.lr.ph10.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -24 ; 4 uses
  %.val8.i = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ac = ptrtoint ptr %.val8.i to i64
  %i.ad = and i64 %i.ac, 1
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr i8, ptr %.val8.i, i64 %i.ae ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i11.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.ai)
  %i.aj = tail call i32 @memcmp(ptr nonnull %i.y, ptr nonnull %i.ag, i64 %spec.store.select.i.i.i11.i) ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp eq i32 %i.aj, 0
  %i.am = sub i64 %i.z, %i.ai
  %spec.select.i.i.i12.i = select i1 %i.al, i64 %i.am, i64 %i.ak
  %i.an = icmp slt i64 %spec.select.i.i.i12.i, 0
  br i1 %i.an, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ] ; 2 uses
  store ptr %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !1663
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !1663
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB3a_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB3a_.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB11_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1Q_11SyntaxTokenB2c_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB55_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i107 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i112 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fa, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ey, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB18_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1X_11SyntaxTokenB2j_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5d_.exit
  %.sroa.021.0 = phi i8 [ %i.cd, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB18_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1X_11SyntaxTokenB2j_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5d_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB18_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1X_11SyntaxTokenB2j_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5d_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph72, label %._crit_edge

.lr.ph72:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB17_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1W_11SyntaxTokenB2i_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5c_.exit.i.thread110, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB17_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1W_11SyntaxTokenB2i_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5c_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB17_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1W_11SyntaxTokenB2i_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5c_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBz_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1o_11SyntaxTokenB1J_EE7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = tail call { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q), !noalias !1668
  %i.s = extractvalue { i32, i32 } %i.r, 0
  %i.t = tail call { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o), !noalias !1674
  %i.u = extractvalue { i32, i32 } %i.t, 0
  %i.v = icmp ult i32 %i.s, %i.u                  ; 2 uses
  %.not79 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.v, label %.preheader, label %.preheader47

.preheader47:                                     ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB17_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1W_11SyntaxTokenB2i_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5c_.exit.i.thread, label %.lr.ph
end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2R_:bb.a
  %i.dl = getelementptr i8, ptr %.sroa.13.0.i, i64 -8
  %.val15.i.i = load ptr, ptr %i.dl, align 8, !alias.scope !3037, !noalias !3046
  %.val3.i.i.i = load ptr, ptr %.val, align 8, !noalias !3047
  %i.dm = invoke fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i.i.i, i64 %.val12.i.i, ptr %.val13.i.i) #47
          to label %.noexc.i unwind label %.loopexit.i, !noalias !3042

.noexc.i:                                         ; preds = %.preheader
  %.val.i.i.i = load ptr, ptr %.val, align 8, !noalias !3047
  %i.dn = invoke fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i.i.i, i64 %.val14.i.i, ptr %.val15.i.i) #47
          to label %.noexc19.i unwind label %.loopexit.i, !noalias !3042

.noexc19.i:                                       ; preds = %.noexc.i
  %i.do = icmp ult i64 %i.dm, %i.dn               ; 3 uses
  %..i18.i = select i1 %i.do, ptr %i.dh, ptr %i.di
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %..i18.i, i64 16, i1 false), !alias.scope !3042, !noalias !3048
  %i.dp = xor i1 %i.do, true
  %i.dq = zext i1 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dq ; 3 uses
  %i.ds = zext i1 %i.do to i64
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.ds ; 3 uses
  %i.du = icmp eq ptr %i.dr, %i.cj
  %i.dv = icmp eq ptr %i.dt, %2
  %or.cond.i.i = select i1 %i.du, i1 true, i1 %i.dv
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB3j_.exit.i, label %.preheader

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc25.i
  %.sroa.13.1.i = phi ptr [ %i.eg, %.noexc25.i ], [ %i.cj, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.ed, %.noexc25.i ], [ %2, %.critedge.i ] ; 5 uses
  %.sroa.0.02.i.i = phi ptr [ %i.ef, %.noexc25.i ], [ %i.de, %.critedge.i ] ; 4 uses
  %.sroa.0.0.val.i.i = load i64, ptr %.sroa.0.02.i.i, align 8, !range !551, !alias.scope !3037, !noalias !3049, !noundef !5
  %i.dw = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val6.i.i = load ptr, ptr %i.dw, align 8, !alias.scope !3037, !noalias !3049
  %.val7.i.i = load i64, ptr %.sroa.0.0.i34, align 8, !alias.scope !3040, !noalias !3052
  %i.dx = getelementptr i8, ptr %.sroa.0.0.i34, i64 8
  %.val8.i.i = load ptr, ptr %i.dx, align 8, !alias.scope !3040, !noalias !3052
  %.val3.i.i21.i = load ptr, ptr %.val, align 8, !noalias !3053
  %i.dy = invoke fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i.i21.i, i64 %.sroa.0.0.val.i.i, ptr %.sroa.0.0.val6.i.i) #47
          to label %.noexc24.i unwind label %.loopexit.split-lp.i, !noalias !3042

.noexc24.i:                                       ; preds = %.lr.ph.i.i
  %.val.i.i22.i = load ptr, ptr %.val, align 8, !noalias !3053
  %i.dz = invoke fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i.i22.i, i64 %.val7.i.i, ptr %.val8.i.i) #47
          to label %.noexc25.i unwind label %.loopexit.split-lp.i, !noalias !3042

.noexc25.i:                                       ; preds = %.noexc24.i
  %i.ea = icmp ult i64 %i.dy, %i.dz               ; 3 uses
  %i.eb = xor i1 %i.ea, true
  %.sroa.05.0.i.i = select i1 %i.ea, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i.i, i64 16, i1 false), !alias.scope !3042, !noalias !3054
  %i.ec = zext i1 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i34, i64 %i.ec ; 3 uses
  %i.ee = zext i1 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 16 ; 2 uses
  %i.eh = icmp ne ptr %i.ed, %i.dg
  %i.ei = icmp ne ptr %i.ef, %i.m
  %or.cond.i23.i = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB3j_.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB3j_.exit.i: ; preds = %.noexc25.i, %.noexc19.i
  %.sroa.13.4.i = phi ptr [ %i.dr, %.noexc19.i ], [ %i.eg, %.noexc25.i ]
  %.sroa.7.2.i = phi ptr [ %i.dt, %.noexc19.i ], [ %i.dg, %.noexc25.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc19.i ], [ %i.ed, %.noexc25.i ] ; 2 uses
  %i.ej = ptrtoint ptr %.sroa.7.2.i to i64
  %i.ek = ptrtoint ptr %.sroa.0.3.i to i64
  %i.el = sub nuw i64 %i.ej, %i.ek
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.el, i1 false), !alias.scope !3042, !noalias !3055
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2S_.exit

.loopexit.i:                                      ; preds = %.noexc.i, %.preheader
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.noexc24.i, %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.dg, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.em = ptrtoint ptr %.sroa.7.1.i to i64
  %i.en = ptrtoint ptr %.sroa.0.2.i to i64
  %i.eo = sub nuw i64 %i.em, %i.en
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.eo, i1 false), !alias.scope !3042, !noalias !3060
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2S_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB3j_.exit.i
  %i.ep = shl nuw nsw i64 %i.ch, 1
  %i.eq = or disjoint i64 %i.ep, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB32_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB32_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2S_.exit
  %.sroa.0.0.i = phi i64 [ %i.eq, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2S_.exit ], [ %i.cp, %bb.u ] ; 2 uses
  %i.er = icmp ugt i64 %i.by, 1
  br i1 %i.er, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.es = add i64 %.sroa.02.1.lcssa, 1
  %i.et = lshr i64 %.sroa.018.0, 1
  %i.eu = add nuw i64 %i.et, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.ev = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ev, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ew = or i64 %1, 1
  %i.ex = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ew, i1 true)
  %i.ey = trunc nuw nsw i64 %i.ex to i32
  %i.ez = shl nuw nsw i32 %i.ey, 1
  %i.fa = xor i32 %i.ez, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.fa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !3036
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2W_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i114 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i119 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.el, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ej, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB34_.exit
  %.sroa.021.0 = phi i8 [ %i.bp, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB34_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB34_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph80, label %._crit_edge

.lr.ph80:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3065)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread117, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i, %bb.h
  br i1 %4, label %bb.o, label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load ptr, ptr %i.q, align 8, !alias.scope !3065, !noalias !3068, !nonnull !5, !align !82, !noundef !5 ; 3 uses
  %.val11.i = load ptr, ptr %i.o, align 8, !alias.scope !3065, !noalias !3068, !nonnull !5, !noundef !5
  %i.r = load i64, ptr %.val10.i, align 8, !range !552, !noalias !3071, !noundef !5
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.r
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.s = load i64, ptr %.val11.i, align 8, !range !552, !noalias !3071, !noundef !5
  %switch.gep170 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.s
  %switch.load171 = load i8, ptr %switch.gep170, align 1
  %i.t = icmp ult i8 %switch.load, %switch.load171 ; 2 uses
  %.not87 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.t, label %.preheader, label %.preheader59

.preheader59:                                     ; preds = %switch.lookup
  br i1 %.not87, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %switch.lookup
  br i1 %.not87, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread117, label %.lr.ph75

.lr.ph:                                           ; preds = %.preheader59, %bb.k
  %.val9.i = phi ptr [ %.val8.i, %bb.k ], [ %.val10.i, %.preheader59 ]
  %.sroa.01.0.i.i72 = phi i64 [ %i.aa, %bb.k ], [ 2, %.preheader59 ] ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i72
  %i.v = add nsw i64 %.sroa.01.0.i.i72, -1
  %i.w = icmp ult i64 %i.v, %i.n
  tail call void @llvm.assume(i1 %i.w)
  %.val8.i = load ptr, ptr %i.u, align 8, !alias.scope !3065, !noalias !3068, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.x = load i64, ptr %.val8.i, align 8, !range !552, !noalias !3071, !noundef !5
  %switch.gep154 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.x
  %switch.load155 = load i8, ptr %switch.gep154, align 1
  %i.y = load i64, ptr %.val9.i, align 8, !range !552, !noalias !3071, !noundef !5
  %switch.gep174 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.y
  %switch.load175 = load i8, ptr %switch.gep174, align 1
  %i.z = icmp ult i8 %switch.load155, %switch.load175
  br i1 %i.z, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.aa = add nuw i64 %.sroa.01.0.i.i72, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i, label %.lr.ph

.lr.ph75:                                         ; preds = %.preheader, %bb.l
  %.val7.i = phi ptr [ %.val.i, %bb.l ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i74 = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i74
  %i.ac = add nsw i64 %.sroa.01.1.i.i74, -1
  %i.ad = icmp ult i64 %i.ac, %i.n
  tail call void @llvm.assume(i1 %i.ad)
  %.val.i = load ptr, ptr %i.ab, align 8, !alias.scope !3065, !noalias !3068, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.ae = load i64, ptr %.val.i, align 8, !range !552, !noalias !3071, !noundef !5
  %switch.gep158 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.ae
  %switch.load159 = load i8, ptr %switch.gep158, align 1
  %i.af = load i64, ptr %.val7.i, align 8, !range !552, !noalias !3071, !noundef !5
  %switch.gep178 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.af
  %switch.load179 = load i8, ptr %switch.gep178, align 1
  %i.ag = icmp ult i8 %switch.load159, %switch.load179
  br i1 %i.ag, label %bb.l, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i

bb.l:                                             ; preds = %.lr.ph75
  %i.ah = add nuw i64 %.sroa.01.1.i.i74, 1        ; 2 uses
  %exitcond96.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond96.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i, label %.lr.ph75

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i: ; preds = %bb.k, %.lr.ph, %bb.l, %.lr.ph75
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i74, %.lr.ph75 ], [ %i.n, %bb.l ], [ %.sroa.01.0.i.i72, %.lr.ph ], [ %i.n, %bb.k ] ; 6 uses
  %i.ai = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.m

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread117: ; preds = %.preheader
  br i1 %.not5.i119, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread: ; preds = %.preheader59
  br i1 %.not5.i114, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.m:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i
  br i1 %i.t, label %bb.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.n:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.aj = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB34_.exit

bb.o:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !3072
  %i.ak = shl nuw nsw i64 %..i35, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB34_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %middle.block, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread, %bb.j, %bb.p, %bb.m
  %.sroa.0.0.i.i5356 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.m ], [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread ], [ %.sroa.0.0.i.i115122126, %middle.block ], [ %.sroa.0.0.i.i115122126, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ]
  %i.am = shl nuw nsw i64 %.sroa.0.0.i.i5356, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB34_.exit

bb.p:                                             ; preds = %bb.m
  %i.ao = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3073), !noalias !3068
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3076), !noalias !3068
  %.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread117, %bb.p
  %i.ap = phi i64 [ %i.ao, %bb.p ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread117 ] ; 4 uses
  %.sroa.0.0.i.i115122126 = phi i64 [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread117 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i115122126 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ap, 4
  br i1 %min.iters.check, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.ap, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = xor i64 %index, -1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.at = getelementptr [8 x i8], ptr %i.aq, i64 %i.ar ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <2 x ptr>, ptr %i.as, align 8, !alias.scope !3078, !noalias !3081
  %wide.load147 = load <2 x ptr>, ptr %i.au, align 8, !alias.scope !3078, !noalias !3081
  %i.av = getelementptr i8, ptr %i.at, i64 -8
  %i.aw = getelementptr i8, ptr %i.at, i64 -24
  %wide.load148 = load <2 x i64>, ptr %i.av, align 8, !alias.scope !3082, !noalias !3083
  %wide.load149 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !3082, !noalias !3083
  %reverse = shufflevector <2 x i64> %wide.load148, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse150 = shufflevector <2 x i64> %wide.load149, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <2 x i64> %reverse, ptr %i.as, align 8, !alias.scope !3078, !noalias !3081
  store <2 x i64> %reverse150, ptr %i.ax, align 8, !alias.scope !3078, !noalias !3081
  %i.ay = getelementptr i8, ptr %i.at, i64 -8
  %i.az = getelementptr i8, ptr %i.at, i64 -24
  %reverse151 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse152 = shufflevector <2 x ptr> %wide.load147, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse151, ptr %i.ay, align 8, !alias.scope !3082, !noalias !3083
  store <2 x ptr> %reverse152, ptr %i.az, align 8, !alias.scope !3082, !noalias !3083
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !3084

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader: ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bg, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader ] ; 3 uses
  %i.bb = xor i64 %.sroa.0.016.i.i, -1
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr %i.aq, i64 %i.bb ; 2 uses
  %i.be = load ptr, ptr %i.bc, align 8, !alias.scope !3078, !noalias !3081, !nonnull !5, !align !82, !noundef !5
  %i.bf = load i64, ptr %i.bd, align 8, !alias.scope !3082, !noalias !3083
  store i64 %i.bf, ptr %i.bc, align 8, !alias.scope !3078, !noalias !3081
  store ptr %i.be, ptr %i.bd, align 8, !alias.scope !3082, !noalias !3083
  %i.bg = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bg, %i.ap
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, !llvm.loop !3085

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB34_.exit: ; preds = %bb.n, %bb.o, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i32 = phi i64 [ %i.an, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.al, %bb.o ], [ %i.aj, %bb.n ] ; 2 uses
  %i.bh = lshr i64 %.sroa.023.0, 1
  %i.bi = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bj = sub nsw i64 %factor, %i.bh
  %i.bk = add nuw nsw i64 %i.bi, %factor
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false)
  %i.bp = trunc nuw nsw i64 %i.bo to i8
  br label %bb.g

bb.q:                                             ; preds = %.lr.ph80, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit
  %.sroa.02.179 = phi i64 [ %.sroa.02.0, %.lr.ph80 ], [ %i.bq, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit ] ; 2 uses
  %.sroa.023.178 = phi i64 [ %.sroa.023.0, %.lr.ph80 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit ] ; 4 uses
  %i.bq = add i64 %.sroa.02.179, -1               ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bs, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit, %bb.q, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.178, %bb.q ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.179, %bb.q ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bu, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bq
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !5 ; 3 uses
  %i.bx = lshr i64 %i.bw, 1                       ; 8 uses
  %i.by = lshr i64 %.sroa.023.178, 1              ; 6 uses
  %i.bz = add nuw i64 %i.bx, %i.by                ; 4 uses
  %i.ca = sub i64 %.sroa.09.0, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ca ; 6 uses
  %i.cc = icmp samesign ugt i64 %i.bz, %3
  %i.cd = trunc i64 %.sroa.023.178 to i1
  %i.ce = or i64 %i.bw, %.sroa.023.178
  %i.cf = trunc i64 %i.ce to i1
  %or.cond3.i = or i1 %i.cc, %i.cf
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cg = trunc i64 %i.bw to i1
  br i1 %i.cg, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ch = shl nuw nsw i64 %i.bz, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cd, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ci = or i64 %i.bx, 1
  %i.cj = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_(ptr noalias nofree noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 1152921504606846976) %i.bx, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !3086
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bx
  %i.co = or i64 %i.by, 1
  %i.cp = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_(ptr noalias nofree noundef nonnull align 8 %i.cn, i64 noundef range(i64 0, 1152921504606846976) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !3086
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3090)
  %i.ct = icmp eq i64 %i.bx, 0
  %i.cu = icmp eq i64 %i.by, 0
  %or.cond.i = or i1 %i.cu, %i.ct
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2X_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.by, i64 range(i64 0, -9223372036854775808) %i.bx) ; 2 uses
  %i.cv = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cv, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2X_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bx ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bx, %i.by  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cw, ptr %i.cb
  %i.cx = shl nuw nsw i64 %..i.i, 3               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cx, i1 false), !alias.scope !3092
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 %i.cx ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cz = phi ptr [ %i.dm, %.preheader.i ], [ %i.cy, %.critedge.i ]
  %i.da = phi ptr [ %i.dk, %.preheader.i ], [ %i.cw, %.critedge.i ]
  %.sroa.0.0.i.i34 = phi ptr [ %i.dd, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8 ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %i.cz, i64 -8 ; 3 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -8 ; 2 uses
  %.val.i.i = load ptr, ptr %i.dc, align 8, !alias.scope !3090, !noalias !3093, !nonnull !5, !align !82, !noundef !5
  %.val12.i.i = load ptr, ptr %i.db, align 8, !alias.scope !3087, !noalias !3096, !nonnull !5, !noundef !5
  %i.de = load i64, ptr %.val.i.i, align 8, !range !552, !noalias !3097, !noundef !5
  %switch.gep162 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.de
  %switch.load163 = load i8, ptr %switch.gep162, align 1
  %i.df = load i64, ptr %.val12.i.i, align 8, !range !552, !noalias !3097, !noundef !5
  %switch.gep182 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.df
  %switch.load183 = load i8, ptr %switch.gep182, align 1
  %i.dg = icmp ult i8 %switch.load163, %switch.load183 ; 3 uses
  %.val189 = load i64, ptr %i.db, align 8
  %.val190 = load i64, ptr %i.dc, align 8
  %i.dh = select i1 %i.dg, i64 %.val189, i64 %.val190
  store i64 %i.dh, ptr %i.dd, align 8, !alias.scope !3087, !noalias !3096
  %i.di = xor i1 %i.dg, true
  %i.dj = zext i1 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.dj ; 3 uses
  %i.dl = zext i1 %i.dg to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dl ; 3 uses
  %i.dn = icmp eq ptr %i.dk, %i.cb
  %i.do = icmp eq ptr %i.dm, %2
  %or.cond.i.i = select i1 %i.dn, i1 true, i1 %i.do
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3o_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dp = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %i.cb, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.cw, %.critedge.i ] ; 3 uses
  %i.dq = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !alias.scope !3087, !noalias !3098, !nonnull !5, !align !82, !noundef !5
  %.val.i19.i = load ptr, ptr %i.dq, align 8, !alias.scope !3090, !noalias !3101, !nonnull !5, !noundef !5
  %i.dr = load i64, ptr %.sroa.0.0.val.i.i, align 8, !range !552, !noalias !3102, !noundef !5
  %switch.gep166 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.dr
  %switch.load167 = load i8, ptr %switch.gep166, align 1
  %i.ds = load i64, ptr %.val.i19.i, align 8, !range !552, !noalias !3102, !noundef !5
  %switch.gep186 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.ds
  %switch.load187 = load i8, ptr %switch.gep186, align 1
  %i.dt = icmp ult i8 %switch.load167, %switch.load187 ; 3 uses
  %i.du = xor i1 %i.dt, true
  %.sroa.0.02.i.i.val = load i64, ptr %.sroa.0.02.i.i, align 8
  %.val = load i64, ptr %i.dq, align 8
  %i.dv = select i1 %i.dt, i64 %.sroa.0.02.i.i.val, i64 %.val
  store i64 %i.dv, ptr %i.dp, align 8, !alias.scope !3087, !noalias !3098
  %i.dw = zext i1 %i.du to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dw ; 3 uses
  %i.dy = zext i1 %i.dt to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.eb = icmp ne ptr %i.dx, %i.cy
  %i.ec = icmp ne ptr %i.dz, %i.m
  %or.cond.i24.i = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond.i24.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3o_.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3o_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dk, %.preheader.i ], [ %i.ea, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dm, %.preheader.i ], [ %i.cy, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dx, %.lr.ph.i.i ] ; 2 uses
  %i.ed = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ee = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ef = sub nuw i64 %i.ed, %i.ee
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ef, i1 false), !alias.scope !3092, !noalias !3103
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2X_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2X_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3o_.exit.i
  %i.eg = shl nuw nsw i64 %i.bz, 1
  %i.eh = or disjoint i64 %i.eg, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit: ; preds = %bb.t, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2X_.exit
  %.sroa.0.0.i = phi i64 [ %i.eh, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2X_.exit ], [ %i.ch, %bb.t ] ; 2 uses
  %i.ei = icmp ugt i64 %i.bq, 1
  br i1 %i.ei, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.ej = add i64 %.sroa.02.1.lcssa, 1
  %i.ek = lshr i64 %.sroa.018.0, 1
  %i.el = add nuw i64 %i.ek, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.em = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.em, 0
  br i1 %.not30, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.en = or i64 %1, 1
  %i.eo = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.en, i1 true)
  %i.ep = trunc nuw nsw i64 %i.eo to i32
  %i.eq = shl nuw nsw i32 %i.ep, 1
  %i.er = xor i32 %i.eq, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.er, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !3086
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB2X_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gv, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gt, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB35_.exit
  %.sroa.021.0 = phi i8 [ %i.cz, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB35_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB35_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3108)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i.thread96, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.val10.i = load ptr, ptr %i.q, align 8, !alias.scope !3108, !noalias !3111, !nonnull !5, !noundef !5 ; 4 uses
  %.val11.i = load ptr, ptr %i.o, align 8, !alias.scope !3108, !noalias !3111, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = ptrtoint ptr %.val10.i to i64
  %i.s = and i64 %i.r, 1
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr i8, ptr %.val10.i, i64 %i.t ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ], !noalias !3114
  %i.v = load ptr, ptr %i.u, align 8, !noalias !3114, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !3114, !noundef !5 ; 2 uses
  %i.y = ptrtoint ptr %.val11.i to i64
  %i.z = and i64 %i.y, 1
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr i8, ptr %.val11.i, i64 %i.aa ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ], !noalias !3114
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !3114, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !3114, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i39 = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.ae)
  %i.af = tail call i32 @memcmp(ptr nonnull %i.v, ptr nonnull %i.ac, i64 %spec.store.select.i.i.i39), !noalias !3114 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp eq i32 %i.af, 0
  %i.ai = sub i64 %i.x, %i.ae
  %spec.select.i.i.i40 = select i1 %i.ah, i64 %i.ai, i64 %i.ag
  %i.aj = icmp slt i64 %spec.select.i.i.i40, 0    ; 2 uses
  %.not72 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.aj, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.k
  br i1 %.not72, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not72, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i.thread96, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.l
  %.val9.i = phi ptr [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader50 ] ; 2 uses
  %.sroa.01.0.i.i55 = phi i64 [ %i.be, %bb.l ], [ 2, %.preheader50 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i55
  %.val8.i = load ptr, ptr %i.ak, align 8, !alias.scope !3108, !noalias !3111, !nonnull !5, !noundef !5 ; 3 uses
  %i.al = ptrtoint ptr %.val8.i to i64
  %i.am = and i64 %i.al, 1
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr i8, ptr %.val8.i, i64 %i.an ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ], !noalias !3114
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !3114, !nonnull !5, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !3114, !noundef !5 ; 2 uses
  %i.as = ptrtoint ptr %.val9.i to i64
  %i.at = and i64 %i.as, 1
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr i8, ptr %.val9.i, i64 %i.au ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ], !noalias !3114
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !3114, !nonnull !5, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !3114, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i37 = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.ay)
  %i.az = tail call i32 @memcmp(ptr nonnull %i.ap, ptr nonnull %i.aw, i64 %spec.store.select.i.i.i37), !noalias !3114 ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp eq i32 %i.az, 0
  %i.bc = sub i64 %i.ar, %i.ay
  %spec.select.i.i.i38 = select i1 %i.bb, i64 %i.bc, i64 %i.ba
  %i.bd = icmp slt i64 %spec.select.i.i.i38, 0
  br i1 %i.bd, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB34_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.be = add nuw i64 %.sroa.01.0.i.i55, 1        ; 2 uses
end_hunk_5
begin_hunk_6_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB31_:bb.a
  %.sroa.43.2.lcssa.i65 = phi ptr [ %.sroa.43.1.lcssa.i61, %._crit_edge.i58 ], [ %i.hj, %.lr.ph38.i70 ]
  %i.he = icmp eq i64 %.sroa.0.0.i57, %.sroa.16.0142331
  br i1 %i.he, label %bb.aj, label %bb.ai

.lr.ph38.i70:                                     ; preds = %._crit_edge.i58, %.lr.ph38.i70
  %.sroa.43.236.i71 = phi ptr [ %i.hj, %.lr.ph38.i70 ], [ %.sroa.43.1.lcssa.i61, %._crit_edge.i58 ]
  %.sroa.9.235.i72 = phi ptr [ %i.hn, %.lr.ph38.i70 ], [ %.sroa.9.1.lcssa.i60, %._crit_edge.i58 ] ; 4 uses
  %.sroa.27.234.i73 = phi i64 [ %i.hm, %.lr.ph38.i70 ], [ %.sroa.27.1.lcssa.i59, %._crit_edge.i58 ] ; 2 uses
  %.val14.i74 = load i64, ptr %.sroa.9.235.i72, align 8, !alias.scope !5259, !noalias !5262
  %i.hf = getelementptr i8, ptr %.sroa.9.235.i72, i64 8
  %.val15.i75 = load ptr, ptr %i.hf, align 8, !alias.scope !5259, !noalias !5262
  %.val16.i76 = load i64, ptr %i.cj, align 8, !range !551, !alias.scope !5259, !noalias !5262, !noundef !5
  %.val17.i77 = load ptr, ptr %i.cl, align 8, !alias.scope !5259, !noalias !5262
  %.val.i50.i = load ptr, ptr %6, align 8, !noalias !5264, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %.val3.i.i51.i = load ptr, ptr %.val.i50.i, align 8, !noalias !5264
  %i.hg = call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i.i51.i, i64 %.val16.i76, ptr %.val17.i77) #47, !noalias !5264
  %.val.i.i52.i = load ptr, ptr %.val.i50.i, align 8, !noalias !5264
  %i.hh = call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i.i52.i, i64 %.val14.i74, ptr %.val15.i75) #47, !noalias !5264
  %i.hi = icmp uge i64 %i.hg, %i.hh               ; 2 uses
  %i.hj = getelementptr inbounds i8, ptr %.sroa.43.236.i71, i64 -16 ; 3 uses
  %.sroa.01.0.i53.i = select i1 %i.hi, ptr %2, ptr %i.hj
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i53.i, i64 %.sroa.27.234.i73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.235.i72, i64 16, i1 false), !alias.scope !5264, !noalias !5277
  %i.hl = zext i1 %i.hi to i64
  %i.hm = add i64 %.sroa.27.234.i73, %i.hl        ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.9.235.i72, i64 16 ; 3 uses
  %i.ho = icmp ult ptr %i.hn, %i.hc
  br i1 %i.ho, label %.lr.ph38.i70, label %._crit_edge39.i62

bb.ai:                                            ; preds = %._crit_edge39.i62
  %i.hp = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i65, i64 -16
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hq, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i64, i64 16, i1 false), !alias.scope !5264, !noalias !5280
  %i.hr = add i64 %.sroa.27.2.lcssa.i63, 1
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i64, i64 16
  br label %bb.ag

bb.aj:                                            ; preds = %._crit_edge39.i62
  %i.ht = shl nuw nsw i64 %.sroa.27.2.lcssa.i63, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph149, ptr nonnull align 8 %2, i64 %i.ht, i1 false), !alias.scope !5264
  %i.hu = sub i64 %.sroa.16.0142331, %.sroa.27.2.lcssa.i63 ; 6 uses
  %.not47.i66 = icmp eq i64 %.sroa.16.0142331, %.sroa.27.2.lcssa.i63
  br i1 %.not47.i66, label %.outer._crit_edge.thread, label %.lr.ph45.i67

.lr.ph45.i67:                                     ; preds = %bb.aj
  %i.hv = getelementptr [16 x i8], ptr %.sroa.0.0.ph149, i64 %.sroa.27.2.lcssa.i63 ; 3 uses
  %.neg432 = add i64 %.sroa.27.2.lcssa.i63, 1
  %xtraiter427 = and i64 %i.hu, 1
  %i.hw = icmp eq i64 %.sroa.16.0142331, %.neg432
  br i1 %i.hw, label %.epil.preheader420, label %.lr.ph45.i67.new

.lr.ph45.i67.new:                                 ; preds = %.lr.ph45.i67
  %unroll_iter430 = and i64 %i.hu, -2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph45.i67.new
  %.sroa.07.043.i68 = phi i64 [ 0, %.lr.ph45.i67.new ], [ %i.ia, %bb.ak ] ; 5 uses
  %niter431 = phi i64 [ 0, %.lr.ph45.i67.new ], [ %niter431.next.1, %bb.ak ]
  %i.hx = xor i64 %.sroa.07.043.i68, -1
  %i.hy = getelementptr [16 x i8], ptr %i.fn, i64 %i.hx
  %i.hz = getelementptr [16 x i8], ptr %i.hv, i64 %.sroa.07.043.i68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef nonnull align 8 dereferenceable(16) %i.hy, i64 16, i1 false), !alias.scope !5264
  %i.ia = add nuw i64 %.sroa.07.043.i68, 2        ; 2 uses
  %i.ib = xor i64 %.sroa.07.043.i68, -2
  %i.ic = getelementptr [16 x i8], ptr %i.fn, i64 %i.ib
  %i.id = getelementptr [16 x i8], ptr %i.hv, i64 %.sroa.07.043.i68
  %i.ie = getelementptr i8, ptr %i.id, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, ptr noundef nonnull align 8 dereferenceable(16) %i.ic, i64 16, i1 false), !alias.scope !5264
  %niter431.next.1 = add i64 %niter431, 2         ; 2 uses
  %niter431.ncmp.1 = icmp eq i64 %niter431.next.1, %unroll_iter430
  br i1 %niter431.ncmp.1, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0E0EB3v_.exit.unr-lcssa, label %bb.ak

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0E0EB3v_.exit.unr-lcssa: ; preds = %bb.ak
  %lcmp.mod428.not = icmp eq i64 %xtraiter427, 0
  br i1 %lcmp.mod428.not, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0E0EB3v_.exit, label %.epil.preheader420

.epil.preheader420:                               ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0E0EB3v_.exit.unr-lcssa, %.lr.ph45.i67
  %.sroa.07.043.i68.epil.init = phi i64 [ 0, %.lr.ph45.i67 ], [ %i.ia, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0E0EB3v_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod429 = trunc i64 %i.hu to i1
  call void @llvm.assume(i1 %lcmp.mod429)
  %i.if = xor i64 %.sroa.07.043.i68.epil.init, -1
  %i.ig = getelementptr [16 x i8], ptr %i.fn, i64 %i.if
  %i.ih = getelementptr [16 x i8], ptr %i.hv, i64 %.sroa.07.043.i68.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ih, ptr noundef nonnull align 8 dereferenceable(16) %i.ig, i64 16, i1 false), !alias.scope !5264
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0E0EB3v_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0E0EB3v_.exit: ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0E0EB3v_.exit.unr-lcssa, %.epil.preheader420
  %i.ii = icmp ugt i64 %.sroa.27.2.lcssa.i63, %.sroa.16.0142331
  br i1 %i.ii, label %bb.al, label %.outer, !prof !21

.outer._crit_edge.thread:                         ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB3o_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0E0EB3v_.exit
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph149, i64 %.sroa.27.2.lcssa.i63 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ik = icmp ult i64 %i.hu, 33
  br i1 %i.ik, label %.outer._crit_edge, label %.lr.ph

bb.al:                                            ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0E0EB3v_.exit
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i63, i64 noundef %.sroa.16.0142331, i64 noundef %.sroa.16.0142331, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #42
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph542 = phi ptr [ %i.ji, %.outer ], [ %0, %bb.a ] ; 23 uses
  %.sroa.16.0.ph541 = phi i64 [ %i.it, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph540 = phi i32 [ %i.da, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph539 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph542 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph539, null
  %i.d = icmp eq i32 %.sroa.025.0.ph540, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph535

bb.b:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit
  %i.e = icmp eq i32 %i.da, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph535

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit, %bb.a
  %.sroa.0.0.ph521 = phi ptr [ %.sroa.0.0.ph542, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit ], [ %0, %bb.a ], [ %i.ji, %.outer ] ; 11 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit ], [ %1, %bb.a ], [ %i.it, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5283)
  call void @llvm.experimental.noalias.scope.decl(metadata !5286)
  %i.f = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.f, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3t_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.g = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.h = icmp samesign ult i64 %3, %i.g
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i64 %.sroa.16.0.lcssa, 1            ; 12 uses
  %i.j = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15
  br i1 %i.j, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.k, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.16.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort8_stableRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3a_(ptr noundef nonnull align 8 %.sroa.0.0.ph521, ptr noundef nonnull align 8 %2, ptr noundef %i.l)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph521, i64 %i.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort8_stableRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3a_(ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3a_(ptr noundef nonnull align 8 %.sroa.0.0.ph521, ptr noundef nonnull align 8 %2)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph521, i64 %i.i
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3a_(ptr noundef %i.p, ptr noundef %i.q)
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.r = load i64, ptr %.sroa.0.0.ph521, align 8, !alias.scope !5283, !noalias !5286
  store i64 %i.r, ptr %2, align 8, !alias.scope !5286, !noalias !5283
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph521, i64 %i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i
  %i.u = load i64, ptr %i.s, align 8, !alias.scope !5283, !noalias !5286
  store i64 %i.u, ptr %i.t, align 8, !alias.scope !5286, !noalias !5283
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 4 uses
  %i.v = sub nsw i64 %.sroa.16.0.lcssa, %i.i      ; 2 uses
  %i.w = icmp samesign ult i64 %.sroa.0.0.i, %i.i
  br i1 %i.w, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB39_.exit.i, %bb.j
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph521, i64 %i.i
  %i.y = getelementptr [8 x i8], ptr %2, i64 %i.i ; 10 uses
  %i.z = icmp ult i64 %.sroa.0.0.i, %i.v
  br i1 %i.z, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB39_.exit.1.i
  %.sroa.05.010.1.i = phi i64 [ %i.at, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB39_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.sroa.05.010.1.i
  %.idx239 = shl nuw nsw i64 %.sroa.05.010.1.i, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx239 ; 3 uses
  %i.ac = load i64, ptr %i.aa, align 8, !alias.scope !5283, !noalias !5286 ; 3 uses
  store i64 %i.ac, ptr %i.ab, align 8, !alias.scope !5286, !noalias !5283
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -8 ; 4 uses
  %.val9.i.cast.1.i = inttoptr i64 %i.ac to ptr
  %.val10.i.1.i = load ptr, ptr %i.ad, align 8, !alias.scope !5286, !noalias !5283, !nonnull !5, !noundef !5 ; 2 uses
  %i.ae = load i64, ptr %.val9.i.cast.1.i, align 8, !range !552, !noalias !5288, !noundef !5 ; 2 uses
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.ae
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.af = load i64, ptr %.val10.i.1.i, align 8, !range !552, !noalias !5288, !noundef !5
  %switch.gep634 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.af
  %switch.load635 = load i8, ptr %switch.gep634, align 1
  %i.ag = icmp ult i8 %switch.load, %switch.load635
  br i1 %i.ag, label %.preheader.1.i.preheader, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB39_.exit.1.i

.preheader.1.i.preheader:                         ; preds = %.lr.ph.1.i
  %i.ah = ptrtoint ptr %.val10.i.1.i to i64
  store i64 %i.ah, ptr %i.ab, align 8, !alias.scope !5286, !noalias !5283
  %i.ai = icmp eq i64 %.sroa.05.010.1.i, 1        ; 3 uses
  switch i64 %i.ae, label %.preheader.1.i.preheader.unreachabledefault [
    i64 0, label %.preheader.1.i.us
    i64 1, label %.preheader.1.i.us208.preheader
    i64 2, label %.preheader.1.i.us219.preheader
  ]

.preheader.1.i.us219.preheader:                   ; preds = %.preheader.1.i.preheader
  br i1 %i.ai, label %.split205.us, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.1.i.us224

.preheader.1.i.us208.preheader:                   ; preds = %.preheader.1.i.preheader
  br i1 %i.ai, label %.split205.us, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.1.i.us213

.preheader.1.i.us:                                ; preds = %.preheader.1.i.preheader
  %spec.select238 = select i1 %i.ai, ptr %i.y, ptr %i.ad
  br label %.split205.us

.preheader.1.i.us208:                             ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.1.i.us213
  %i.aj = ptrtoint ptr %.val8.i.1.i.us212 to i64
  store i64 %i.aj, ptr %.sroa.0.0.i34.1.i.us211554, align 8, !alias.scope !5286, !noalias !5283
  %i.ak = icmp eq ptr %i.al, %i.y
  br i1 %i.ak, label %.split205.us, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.1.i.us213

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.1.i.us213: ; preds = %.preheader.1.i.us208.preheader, %.preheader.1.i.us208
  %.sroa.0.0.i34.1.i.us211554 = phi ptr [ %i.al, %.preheader.1.i.us208 ], [ %i.ad, %.preheader.1.i.us208.preheader ] ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.0.i34.1.i.us211554, i64 -8 ; 3 uses
  %.val8.i.1.i.us212 = load ptr, ptr %i.al, align 8, !alias.scope !5286, !noalias !5283, !nonnull !5, !noundef !5 ; 2 uses
  %i.am = load i64, ptr %.val8.i.1.i.us212, align 8, !range !552, !noalias !5288, !noundef !5
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %.split205.us, label %.preheader.1.i.us208

.preheader.1.i.us219:                             ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.1.i.us224
  %i.ao = ptrtoint ptr %.val8.i.1.i.us223 to i64
  store i64 %i.ao, ptr %.sroa.0.0.i34.1.i.us222551, align 8, !alias.scope !5286, !noalias !5283
  %i.ap = icmp eq ptr %i.aq, %i.y
  br i1 %i.ap, label %.split205.us, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.1.i.us224

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.1.i.us224: ; preds = %.preheader.1.i.us219.preheader, %.preheader.1.i.us219
  %.sroa.0.0.i34.1.i.us222551 = phi ptr [ %i.aq, %.preheader.1.i.us219 ], [ %i.ad, %.preheader.1.i.us219.preheader ] ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.0.i34.1.i.us222551, i64 -8 ; 3 uses
  %.val8.i.1.i.us223 = load ptr, ptr %i.aq, align 8, !alias.scope !5286, !noalias !5283, !nonnull !5, !noundef !5 ; 2 uses
  %i.ar = load i64, ptr %.val8.i.1.i.us223, align 8, !range !552, !noalias !5288, !noundef !5
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.preheader.1.i.us219, label %.split205.us

.split205.us:                                     ; preds = %.preheader.1.i.us219, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.1.i.us224, %.preheader.1.i.us208, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.1.i.us213, %.preheader.1.i.us219.preheader, %.preheader.1.i.us208.preheader, %.preheader.1.i.us
  %.us-phi206 = phi ptr [ %i.y, %.preheader.1.i.us219.preheader ], [ %spec.select238, %.preheader.1.i.us ], [ %.sroa.0.0.i34.1.i.us211554, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.1.i.us213 ], [ %i.y, %.preheader.1.i.us208.preheader ], [ %i.y, %.preheader.1.i.us208 ], [ %i.y, %.preheader.1.i.us219 ], [ %.sroa.0.0.i34.1.i.us222551, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.1.i.us224 ]
  store i64 %i.ac, ptr %.us-phi206, align 8, !alias.scope !5286, !noalias !5289
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB39_.exit.1.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB39_.exit.1.i: ; preds = %.split205.us, %.lr.ph.1.i
  %i.at = add i64 %.sroa.05.010.1.i, 1            ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.at, %i.v
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB39_.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5294)
  %i.au = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph521, i64 %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.au
  %i.ax = getelementptr i8, ptr %i.y, i64 -8
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.ay = getelementptr i8, ptr %i.bt, i64 8      ; 2 uses
  %i.az = getelementptr i8, ptr %i.bs, i64 8
  %i.ba = and i64 %.sroa.16.0.lcssa, 1
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.l, label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.020.i.i = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %.sroa.0.0.ph521, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.019.i.i = phi i64 [ %i.bc, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.018.i.i = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.017.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %i.y, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.016.i.i = phi ptr [ %i.bt, %.lr.ph.i.i ], [ %i.ax, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.015.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %i.aw, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.014.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %i.av, %.loopexit.1.i ] ; 2 uses
  %i.bc = add nuw nsw i64 %.sroa.04.019.i.i, 1    ; 2 uses
  %.sroa.011.0.val.i.i = load ptr, ptr %.sroa.011.017.i.i, align 8, !alias.scope !5297, !noalias !5283, !nonnull !5, !align !82, !noundef !5
  %.sroa.06.0.val.i.i = load ptr, ptr %.sroa.06.018.i.i, align 8, !alias.scope !5297, !noalias !5283, !nonnull !5, !noundef !5
  %i.bd = load i64, ptr %.sroa.011.0.val.i.i, align 8, !range !552, !noalias !5298, !noundef !5
  %switch.gep573 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.bd
  %switch.load574 = load i8, ptr %switch.gep573, align 1
  %i.be = load i64, ptr %.sroa.06.0.val.i.i, align 8, !range !552, !noalias !5298, !noundef !5
  %switch.gep638 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.be
  %switch.load639 = load i8, ptr %switch.gep638, align 1
  %i.bf = icmp ult i8 %switch.load574, %switch.load639 ; 3 uses
  %i.bg = xor i1 %i.bf, true
  %.sroa.011.017.i.i.val = load i64, ptr %.sroa.011.017.i.i, align 8
  %.sroa.06.018.i.i.val = load i64, ptr %.sroa.06.018.i.i, align 8
  %i.bh = select i1 %i.bf, i64 %.sroa.011.017.i.i.val, i64 %.sroa.06.018.i.i.val
  store i64 %i.bh, ptr %.sroa.0.020.i.i, align 8, !alias.scope !5283, !noalias !5299
  %i.bi = zext i1 %i.bf to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.017.i.i, i64 %i.bi ; 4 uses
  %i.bk = zext i1 %i.bg to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.018.i.i, i64 %i.bk ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i.i = load ptr, ptr %.sroa.017.015.i.i, align 8, !alias.scope !5297, !noalias !5283, !nonnull !5, !align !82, !noundef !5
  %.sroa.015.0.val.i.i = load ptr, ptr %.sroa.015.016.i.i, align 8, !alias.scope !5297, !noalias !5283, !nonnull !5, !noundef !5
  %i.bn = load i64, ptr %.sroa.017.0.val.i.i, align 8, !range !552, !noalias !5298, !noundef !5
  %switch.gep576 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.bn
  %switch.load577 = load i8, ptr %switch.gep576, align 1
  %i.bo = load i64, ptr %.sroa.015.0.val.i.i, align 8, !range !552, !noalias !5298, !noundef !5
  %switch.gep678 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.bo
  %switch.load679 = load i8, ptr %switch.gep678, align 1
  %i.bp = icmp ult i8 %switch.load577, %switch.load679 ; 3 uses
  %i.bq = xor i1 %i.bp, true
  %.sroa.015.016.i.i.val = load i64, ptr %.sroa.015.016.i.i, align 8
  %.sroa.017.015.i.i.val = load i64, ptr %.sroa.017.015.i.i, align 8
  %i.br = select i1 %i.bp, i64 %.sroa.015.016.i.i.val, i64 %.sroa.017.015.i.i.val
  store i64 %i.br, ptr %.sroa.019.014.i.i, align 8, !alias.scope !5283, !noalias !5303
  %.neg.i.i.i = sext i1 %i.bq to i64
  %i.bs = getelementptr [8 x i8], ptr %.sroa.017.015.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %i.bp to i64
  %i.bt = getelementptr [8 x i8], ptr %.sroa.015.016.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %.sroa.019.014.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.bc, %i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bv = icmp ult ptr %i.bl, %i.ay               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.bv, ptr %i.bl, ptr %i.bj
  %i.bw = load i64, ptr %.sroa.06.0..sroa.011.0.i.i, align 8, !alias.scope !5297, !noalias !5283
  store i64 %i.bw, ptr %i.bm, align 8, !alias.scope !5283, !noalias !5297
  %i.bx = zext i1 %i.bv to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bx
  %i.bz = xor i1 %i.bv, true
  %i.ca = zext i1 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.ca
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.bj, %._crit_edge.i.i ], [ %i.cb, %bb.k ]
  %.sroa.06.1.i.i = phi ptr [ %i.bl, %._crit_edge.i.i ], [ %i.by, %bb.k ]
  %i.cc = icmp ne ptr %.sroa.06.1.i.i, %i.ay
  %i.cd = icmp ne ptr %.sroa.011.1.i.i, %i.az
  %or.cond.i.i = select i1 %i.cc, i1 true, i1 %i.cd, !prof !1390
  br i1 %or.cond.i.i, label %bb.m, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3t_.exit, !prof !1390

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #42
          to label %.noexc.i unwind label %bb.n, !noalias !5288

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = shl nuw nsw i64 %.sroa.16.0.lcssa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph521, ptr nonnull align 8 %2, i64 %i.cf, i1 false), !alias.scope !5288, !noalias !5307
  resume { ptr, i32 } %i.ce

.lr.ph.i:                                         ; preds = %bb.j, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB39_.exit.i
  %.sroa.05.010.i = phi i64 [ %i.cz, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB39_.exit.i ], [ %.sroa.0.0.i, %bb.j ] ; 4 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph521, i64 %.sroa.05.010.i
  %.idx = shl nuw nsw i64 %.sroa.05.010.i, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %i.ci = load i64, ptr %i.cg, align 8, !alias.scope !5283, !noalias !5286 ; 3 uses
  store i64 %i.ci, ptr %i.ch, align 8, !alias.scope !5286, !noalias !5283
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -8 ; 4 uses
  %.val9.i.cast.i = inttoptr i64 %i.ci to ptr
  %.val10.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !5286, !noalias !5283, !nonnull !5, !noundef !5 ; 2 uses
  %i.ck = load i64, ptr %.val9.i.cast.i, align 8, !range !552, !noalias !5288, !noundef !5 ; 2 uses
  %switch.gep579 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.ck
  %switch.load580 = load i8, ptr %switch.gep579, align 1
  %i.cl = load i64, ptr %.val10.i.i, align 8, !range !552, !noalias !5288, !noundef !5
  %switch.gep642 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.cl
  %switch.load643 = load i8, ptr %switch.gep642, align 1
  %i.cm = icmp ult i8 %switch.load580, %switch.load643
  br i1 %i.cm, label %.preheader.i.preheader, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB39_.exit.i

.preheader.1.i.preheader.unreachabledefault:      ; preds = %.preheader.1.i.preheader
  unreachable

default.unreachable:                              ; preds = %.lr.ph53.i68, %.preheader.i.preheader
  unreachable

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  %i.cn = ptrtoint ptr %.val10.i.i to i64
  store i64 %i.cn, ptr %i.ch, align 8, !alias.scope !5286, !noalias !5283
  %i.co = icmp eq i64 %.sroa.05.010.i, 1          ; 3 uses
  switch i64 %i.ck, label %default.unreachable [
    i64 0, label %.preheader.i.us
    i64 1, label %.preheader.i.us176.preheader
    i64 2, label %.preheader.i.us187.preheader
  ]

.preheader.i.us187.preheader:                     ; preds = %.preheader.i.preheader
  br i1 %i.co, label %.split.us, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.i.us192

.preheader.i.us176.preheader:                     ; preds = %.preheader.i.preheader
  br i1 %i.co, label %.split.us, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.i.us181

.preheader.i.us:                                  ; preds = %.preheader.i.preheader
  %spec.select = select i1 %i.co, ptr %2, ptr %i.cj
  br label %.split.us

.preheader.i.us176:                               ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.i.us181
  %i.cp = ptrtoint ptr %.val8.i.i.us180 to i64
  store i64 %i.cp, ptr %.sroa.0.0.i34.i.us179548, align 8, !alias.scope !5286, !noalias !5283
  %i.cq = icmp eq ptr %i.cr, %2
  br i1 %i.cq, label %.split.us, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.i.us181

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.i.us181: ; preds = %.preheader.i.us176.preheader, %.preheader.i.us176
  %.sroa.0.0.i34.i.us179548 = phi ptr [ %i.cr, %.preheader.i.us176 ], [ %i.cj, %.preheader.i.us176.preheader ] ; 3 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.0.0.i34.i.us179548, i64 -8 ; 3 uses
  %.val8.i.i.us180 = load ptr, ptr %i.cr, align 8, !alias.scope !5286, !noalias !5283, !nonnull !5, !noundef !5 ; 2 uses
  %i.cs = load i64, ptr %.val8.i.i.us180, align 8, !range !552, !noalias !5288, !noundef !5
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %.split.us, label %.preheader.i.us176

.preheader.i.us187:                               ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.i.us192
  %i.cu = ptrtoint ptr %.val8.i.i.us191 to i64
  store i64 %i.cu, ptr %.sroa.0.0.i34.i.us190545, align 8, !alias.scope !5286, !noalias !5283
  %i.cv = icmp eq ptr %i.cw, %2
  br i1 %i.cv, label %.split.us, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.i.us192

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.i.us192: ; preds = %.preheader.i.us187.preheader, %.preheader.i.us187
  %.sroa.0.0.i34.i.us190545 = phi ptr [ %i.cw, %.preheader.i.us187 ], [ %i.cj, %.preheader.i.us187.preheader ] ; 3 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.i34.i.us190545, i64 -8 ; 3 uses
  %.val8.i.i.us191 = load ptr, ptr %i.cw, align 8, !alias.scope !5286, !noalias !5283, !nonnull !5, !noundef !5 ; 2 uses
  %i.cx = load i64, ptr %.val8.i.i.us191, align 8, !range !552, !noalias !5288, !noundef !5
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %.preheader.i.us187, label %.split.us

.split.us:                                        ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.i.us192, %.preheader.i.us187, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.i.us181, %.preheader.i.us176, %.preheader.i.us187.preheader, %.preheader.i.us176.preheader, %.preheader.i.us
  %.us-phi = phi ptr [ %spec.select, %.preheader.i.us ], [ %2, %.preheader.i.us187.preheader ], [ %2, %.preheader.i.us176.preheader ], [ %2, %.preheader.i.us176 ], [ %.sroa.0.0.i34.i.us179548, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.i.us181 ], [ %.sroa.0.0.i34.i.us190545, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0B7_.exit.i11.i.i.us192 ], [ %2, %.preheader.i.us187 ]
  store i64 %i.ci, ptr %.us-phi, align 8, !alias.scope !5286, !noalias !5289
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB39_.exit.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB39_.exit.i: ; preds = %.split.us, %.lr.ph.i
  %i.cz = add i64 %.sroa.05.010.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cz, %i.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0171.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph541, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2W_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph542, i64 noundef %.sroa.16.0171.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3t_.exit

.lr.ph535:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0170534 = phi i32 [ %i.da, %bb.b ], [ %.sroa.025.0.ph540, %.lr.ph ]
  %.sroa.16.0171533 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph541, %.lr.ph ] ; 19 uses
  %i.da = add i32 %.sroa.025.0170534, -1          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5312)
  %i.db = lshr i64 %.sroa.16.0171533, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.db, 5
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph542, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.db, 56
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph542, i64 %.idx2.i ; 3 uses
  %i.de = icmp samesign ult i64 %.sroa.16.0171533, 64
  br i1 %i.de, label %switch.lookup, label %bb.o

bb.o:                                             ; preds = %.lr.ph535
  %i.df = call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB35_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph542, ptr noundef readonly %i.dc, ptr noundef readonly %i.dd, i64 noundef %i.db)
  br label %bb.p

switch.lookup:                                    ; preds = %.lr.ph535
  %.val6.i = load ptr, ptr %.sroa.0.0.ph542, align 8, !alias.scope !5312, !nonnull !5, !align !82, !noundef !5
  %.val7.i = load ptr, ptr %i.dc, align 8, !alias.scope !5312, !nonnull !5, !noundef !5
  %i.dg = load i64, ptr %.val6.i, align 8, !range !552, !noalias !5312, !noundef !5 ; 2 uses
  %switch.gep582 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.dg
  %switch.load583 = load i8, ptr %switch.gep582, align 1
  %i.dh = load i64, ptr %.val7.i, align 8, !range !552, !noalias !5312, !noundef !5 ; 2 uses
  %switch.gep646 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.dh
  %switch.load647 = load i8, ptr %switch.gep646, align 1
  %i.di = icmp ult i8 %switch.load583, %switch.load647 ; 2 uses
  %.val5.i = load ptr, ptr %i.dd, align 8, !alias.scope !5312, !nonnull !5, !noundef !5
  %switch.gep586 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.dg
  %switch.load587 = load i8, ptr %switch.gep586, align 1
  %i.dj = load i64, ptr %.val5.i, align 8, !range !552, !noalias !5312, !noundef !5 ; 2 uses
  %switch.gep682 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.dj
  %switch.load683 = load i8, ptr %switch.gep682, align 1
  %i.dk = icmp ult i8 %switch.load587, %switch.load683
  %i.dl = xor i1 %i.di, %i.dk
  br i1 %i.dl, label %bb.p, label %switch.lookup589

switch.lookup589:                                 ; preds = %switch.lookup
  %switch.gep590 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.dh
  %switch.load591 = load i8, ptr %switch.gep590, align 1
  %switch.gep650 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.dj
  %switch.load651 = load i8, ptr %switch.gep650, align 1
  %i.dm = icmp ult i8 %switch.load591, %switch.load651
  %i.dn = xor i1 %i.di, %i.dm
  %..i.i = select i1 %i.dn, ptr %i.dd, ptr %i.dc
  br label %bb.p

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3t_.exit: ; preds = %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.p:                                             ; preds = %switch.lookup589, %switch.lookup, %bb.o
  %.sroa.0.0.i.sink.i = phi ptr [ %i.df, %bb.o ], [ %.sroa.0.0.ph542, %switch.lookup ], [ %..i.i, %switch.lookup589 ]
  %i.do = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.dp = sub nuw i64 %i.do, %i.c                 ; 3 uses
  %.sroa.0.0.i37 = lshr exact i64 %i.dp, 3        ; 3 uses
  %i.dq = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0171533
  call void @llvm.assume(i1 %i.dq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph542, i64 %i.dp
  %i.ds = load ptr, ptr %i.dr, align 8            ; 7 uses
  store ptr %i.ds, ptr %i.a, align 8
  br i1 %.not, label %bb.q, label %switch.lookup593

switch.lookup593:                                 ; preds = %bb.p
  %.sroa.028.0.val = load ptr, ptr %.sroa.028.0.ph539, align 8, !nonnull !5, !align !82, !noundef !5
  %i.dt = load i64, ptr %.sroa.028.0.val, align 8, !range !552, !noundef !5
  %switch.gep594 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.dt
  %switch.load595 = load i8, ptr %switch.gep594, align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  %i.du = load i64, ptr %i.ds, align 8, !range !552, !noundef !5
  %switch.gep654 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.du
  %switch.load655 = load i8, ptr %switch.gep654, align 1
  %i.dv = icmp ult i8 %switch.load595, %switch.load655
  br i1 %i.dv, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p, %switch.lookup593
  call void @llvm.experimental.noalias.scope.decl(metadata !5315)
  call void @llvm.experimental.noalias.scope.decl(metadata !5318)
  %.not96 = icmp samesign ult i64 %3, %.sroa.16.0171533
  br i1 %.not96, label %bb.s, label %bb.r, !prof !1390

bb.r:                                             ; preds = %bb.q
  %i.dw = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0171533 ; 3 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.r
  %.sroa.27.0.i = phi i64 [ 0, %bb.r ], [ %.sroa.27.2.lcssa.i, %bb.u ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph542, %bb.r ], [ %i.fy, %bb.u ] ; 3 uses
  %.sroa.43.0.i = phi ptr [ %i.dw, %bb.r ], [ %i.fv, %bb.u ] ; 2 uses
  %.sroa.0.0.i40 = phi i64 [ %.sroa.0.0.i37, %bb.r ], [ %.sroa.16.0171533, %bb.u ] ; 3 uses
  %i.dx = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i40, i64 3)
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph542, i64 %i.dx ; 2 uses
  %i.dz = icmp ult ptr %.sroa.9.0.i, %i.dy
  br i1 %i.dz, label %.lr.ph.i43.preheader, label %._crit_edge.i

.lr.ph.i43.preheader:                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  %i.ea = load i64, ptr %i.ds, align 8, !range !552, !noalias !5320, !noundef !5 ; 4 uses
  %switch.gep658 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.ea
  %switch.load659 = load i8, ptr %switch.gep658, align 1
  %switch.gep686 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.ea
  %switch.load687 = load i8, ptr %switch.gep686, align 1
  %switch.gep662 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.ea
  %switch.load663 = load i8, ptr %switch.gep662, align 1
  %switch.gep694 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.ea
  %switch.load695 = load i8, ptr %switch.gep694, align 1
  br label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.lr.ph.i43.preheader, %.lr.ph.i43
  %.sroa.43.146.i = phi ptr [ %i.fc, %.lr.ph.i43 ], [ %.sroa.43.0.i, %.lr.ph.i43.preheader ] ; 4 uses
  %.sroa.9.145.i = phi ptr [ %i.fg, %.lr.ph.i43 ], [ %.sroa.9.0.i, %.lr.ph.i43.preheader ] ; 5 uses
  %.sroa.27.144.i = phi i64 [ %i.ff, %.lr.ph.i43 ], [ %.sroa.27.0.i, %.lr.ph.i43.preheader ] ; 2 uses
  %.val21.i = load ptr, ptr %.sroa.9.145.i, align 8, !alias.scope !5315, !noalias !5318, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.eb = load i64, ptr %.val21.i, align 8, !range !552, !noalias !5320, !noundef !5
  %i.ec = ptrtoint ptr %.val21.i to i64
  %switch.gep598 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.eb
  %switch.load599 = load i8, ptr %switch.gep598, align 1
  %i.ed = icmp ult i8 %switch.load599, %switch.load659 ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %.sroa.43.146.i, i64 -8
  %.sroa.01.0.i.i = select i1 %i.ed, ptr %2, ptr %i.ee
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.144.i
  store i64 %i.ec, ptr %i.ef, align 8, !alias.scope !5318, !noalias !5321
  %i.eg = zext i1 %i.ed to i64
  %i.eh = add i64 %.sroa.27.144.i, %i.eg          ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.9.145.i, i64 8
  %.val19.i = load ptr, ptr %i.ei, align 8, !alias.scope !5315, !noalias !5318, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.ej = load i64, ptr %.val19.i, align 8, !range !552, !noalias !5320, !noundef !5
  %i.ek = ptrtoint ptr %.val19.i to i64
  %switch.gep602 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.ej
  %switch.load603 = load i8, ptr %switch.gep602, align 1
  %i.el = icmp ult i8 %switch.load603, %switch.load687 ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %.sroa.43.146.i, i64 -16
  %.sroa.01.0.i28.i = select i1 %i.el, ptr %2, ptr %i.em
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i28.i, i64 %i.eh
  store i64 %i.ek, ptr %i.en, align 8, !alias.scope !5318, !noalias !5324
  %i.eo = zext i1 %i.el to i64
  %i.ep = add i64 %i.eh, %i.eo                    ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.9.145.i, i64 16
  %.val17.i = load ptr, ptr %i.eq, align 8, !alias.scope !5315, !noalias !5318, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.er = load i64, ptr %.val17.i, align 8, !range !552, !noalias !5320, !noundef !5
  %i.es = ptrtoint ptr %.val17.i to i64
  %switch.gep606 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.er
  %switch.load607 = load i8, ptr %switch.gep606, align 1
  %i.et = icmp ult i8 %switch.load607, %switch.load663 ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %.sroa.43.146.i, i64 -24
  %.sroa.01.0.i34.i = select i1 %i.et, ptr %2, ptr %i.eu
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i34.i, i64 %i.ep
  store i64 %i.es, ptr %i.ev, align 8, !alias.scope !5318, !noalias !5327
  %i.ew = zext i1 %i.et to i64
  %i.ex = add i64 %i.ep, %i.ew                    ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.9.145.i, i64 24
  %.val15.i = load ptr, ptr %i.ey, align 8, !alias.scope !5315, !noalias !5318, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.ez = load i64, ptr %.val15.i, align 8, !range !552, !noalias !5320, !noundef !5
  %i.fa = ptrtoint ptr %.val15.i to i64
  %switch.gep610 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.ez
  %switch.load611 = load i8, ptr %switch.gep610, align 1
  %i.fb = icmp ult i8 %switch.load611, %switch.load695 ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %.sroa.43.146.i, i64 -32 ; 3 uses
  %.sroa.01.0.i40.i = select i1 %i.fb, ptr %2, ptr %i.fc
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i40.i, i64 %i.ex
  store i64 %i.fa, ptr %i.fd, align 8, !alias.scope !5318, !noalias !5330
  %i.fe = zext i1 %i.fb to i64
  %i.ff = add i64 %i.ex, %i.fe                    ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.9.145.i, i64 32 ; 3 uses
  %i.fh = icmp ult ptr %i.fg, %i.dy
  br i1 %i.fh, label %.lr.ph.i43, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i43, %bb.t
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.t ], [ %i.ff, %.lr.ph.i43 ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.t ], [ %i.fg, %.lr.ph.i43 ] ; 3 uses
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.t ], [ %i.fc, %.lr.ph.i43 ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph542, i64 %.sroa.0.0.i40 ; 2 uses
  %i.fj = icmp ult ptr %.sroa.9.1.lcssa.i, %i.fi
  br i1 %i.fj, label %.lr.ph53.i.preheader, label %._crit_edge54.i

.lr.ph53.i.preheader:                             ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  %i.fk = load i64, ptr %i.ds, align 8, !range !552, !noalias !5320, !noundef !5
  %switch.gep666 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.fk
  %switch.load667 = load i8, ptr %switch.gep666, align 1
  br label %.lr.ph53.i

._crit_edge54.i:                                  ; preds = %.lr.ph53.i, %._crit_edge.i
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.fs, %.lr.ph53.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.ft, %.lr.ph53.i ] ; 2 uses
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.fp, %.lr.ph53.i ]
  %i.fl = icmp eq i64 %.sroa.0.0.i40, %.sroa.16.0171533
  br i1 %i.fl, label %bb.v, label %bb.u

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.preheader, %.lr.ph53.i
  %.sroa.43.251.i = phi ptr [ %i.fp, %.lr.ph53.i ], [ %.sroa.43.1.lcssa.i, %.lr.ph53.i.preheader ]
  %.sroa.9.250.i = phi ptr [ %i.ft, %.lr.ph53.i ], [ %.sroa.9.1.lcssa.i, %.lr.ph53.i.preheader ] ; 2 uses
  %.sroa.27.249.i = phi i64 [ %i.fs, %.lr.ph53.i ], [ %.sroa.27.1.lcssa.i, %.lr.ph53.i.preheader ] ; 2 uses
  %.val.i = load ptr, ptr %.sroa.9.250.i, align 8, !alias.scope !5315, !noalias !5318, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.fm = load i64, ptr %.val.i, align 8, !range !552, !noalias !5320, !noundef !5
  %i.fn = ptrtoint ptr %.val.i to i64
  %switch.gep614 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.fm
  %switch.load615 = load i8, ptr %switch.gep614, align 1
  %i.fo = icmp ult i8 %switch.load615, %switch.load667 ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %.sroa.43.251.i, i64 -8 ; 3 uses
  %.sroa.01.0.i46.i = select i1 %i.fo, ptr %2, ptr %i.fp
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i46.i, i64 %.sroa.27.249.i
  store i64 %i.fn, ptr %i.fq, align 8, !alias.scope !5318, !noalias !5333
  %i.fr = zext i1 %i.fo to i64
  %i.fs = add i64 %.sroa.27.249.i, %i.fr          ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.9.250.i, i64 8 ; 3 uses
  %i.fu = icmp ult ptr %i.ft, %i.fi
  br i1 %i.fu, label %.lr.ph53.i, label %._crit_edge54.i

bb.u:                                             ; preds = %._crit_edge54.i
  %i.fv = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %.sroa.27.2.lcssa.i
  %i.fx = load i64, ptr %.sroa.9.2.lcssa.i, align 8, !alias.scope !5315, !noalias !5336
  store i64 %i.fx, ptr %i.fw, align 8, !alias.scope !5318, !noalias !5339
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.t

bb.v:                                             ; preds = %._crit_edge54.i
  %i.fz = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph542, ptr nonnull align 8 %2, i64 %i.fz, i1 false), !alias.scope !5320
  %i.ga = sub i64 %.sroa.16.0171533, %.sroa.27.2.lcssa.i ; 5 uses
  %.not62.i = icmp eq i64 %.sroa.16.0171533, %.sroa.27.2.lcssa.i
  br i1 %.not62.i, label %.loopexit, label %.lr.ph60.i

.lr.ph60.i:                                       ; preds = %bb.v
  %i.gb = getelementptr [8 x i8], ptr %.sroa.0.0.ph542, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check560 = icmp ult i64 %i.ga, 4
  br i1 %min.iters.check560, label %scalar.ph559.preheader, label %vector.ph561

vector.ph561:                                     ; preds = %.lr.ph60.i
  %n.vec562 = and i64 %i.ga, -4                   ; 3 uses
  br label %vector.body563

vector.body563:                                   ; preds = %vector.body563, %vector.ph561
  %index564 = phi i64 [ 0, %vector.ph561 ], [ %index.next569, %vector.body563 ] ; 3 uses
  %i.gc = xor i64 %index564, -1
  %i.gd = getelementptr [8 x i8], ptr %i.dw, i64 %i.gc ; 2 uses
  %i.ge = getelementptr [8 x i8], ptr %i.gb, i64 %index564 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.gd, i64 -8
  %i.gg = getelementptr i8, ptr %i.gd, i64 -24
  %wide.load565 = load <2 x i64>, ptr %i.gf, align 8, !alias.scope !5318, !noalias !5315
  %wide.load566 = load <2 x i64>, ptr %i.gg, align 8, !alias.scope !5318, !noalias !5315
  %reverse567 = shufflevector <2 x i64> %wide.load565, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse568 = shufflevector <2 x i64> %wide.load566, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gh = getelementptr i8, ptr %i.ge, i64 16
  store <2 x i64> %reverse567, ptr %i.ge, align 8, !alias.scope !5315, !noalias !5318
  store <2 x i64> %reverse568, ptr %i.gh, align 8, !alias.scope !5315, !noalias !5318
  %index.next569 = add nuw i64 %index564, 4       ; 2 uses
  %i.gi = icmp eq i64 %index.next569, %n.vec562
  br i1 %i.gi, label %middle.block570, label %vector.body563, !llvm.loop !5340

middle.block570:                                  ; preds = %vector.body563
  %cmp.n571 = icmp eq i64 %i.ga, %n.vec562
  br i1 %cmp.n571, label %.loopexit, label %scalar.ph559.preheader

scalar.ph559.preheader:                           ; preds = %.lr.ph60.i, %middle.block570
  %.sroa.07.058.i.ph = phi i64 [ 0, %.lr.ph60.i ], [ %n.vec562, %middle.block570 ]
  br label %scalar.ph559

scalar.ph559:                                     ; preds = %scalar.ph559.preheader, %scalar.ph559
  %.sroa.07.058.i = phi i64 [ %i.gj, %scalar.ph559 ], [ %.sroa.07.058.i.ph, %scalar.ph559.preheader ] ; 3 uses
  %i.gj = add nuw i64 %.sroa.07.058.i, 1          ; 2 uses
  %i.gk = xor i64 %.sroa.07.058.i, -1
  %i.gl = getelementptr [8 x i8], ptr %i.dw, i64 %i.gk
  %i.gm = getelementptr [8 x i8], ptr %i.gb, i64 %.sroa.07.058.i
  %i.gn = load i64, ptr %i.gl, align 8, !alias.scope !5318, !noalias !5315
  store i64 %i.gn, ptr %i.gm, align 8, !alias.scope !5315, !noalias !5318
  %exitcond.not.i41 = icmp eq i64 %i.gj, %i.ga
  br i1 %exitcond.not.i41, label %.loopexit, label %scalar.ph559, !llvm.loop !5341

.loopexit:                                        ; preds = %scalar.ph559, %middle.block570, %bb.v
  %i.go = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.go, label %.thread, label %bb.w

bb.w:                                             ; preds = %.loopexit
  %.not.i49 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0171533
  br i1 %.not.i49, label %bb.x, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit, !prof !21

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #42, !noalias !5342
  unreachable

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.w
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph542, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph542) ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_(ptr noalias nofree noundef nonnull align 8 %i.gp, i64 noundef %i.ga, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gq = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.gq, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %switch.lookup593, %.loopexit
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph542, i64 %i.dp ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5346)
  call void @llvm.experimental.noalias.scope.decl(metadata !5349)
  %.not97 = icmp samesign ult i64 %3, %.sroa.16.0171533
  br i1 %.not97, label %bb.z, label %bb.y, !prof !1390

bb.y:                                             ; preds = %.thread
  %i.gs = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0171533 ; 3 uses
  br label %bb.aa

bb.z:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %bb.ac, %bb.y
  %.sroa.27.0.i52 = phi i64 [ 0, %bb.y ], [ %i.iq, %bb.ac ] ; 2 uses
  %.sroa.9.0.i53 = phi ptr [ %.sroa.0.0.ph542, %bb.y ], [ %i.ir, %bb.ac ] ; 3 uses
  %.sroa.43.0.i54 = phi ptr [ %i.gs, %bb.y ], [ %i.in, %bb.ac ] ; 2 uses
  %.sroa.0.0.i55 = phi i64 [ %.sroa.0.0.i37, %bb.y ], [ %.sroa.16.0171533, %bb.ac ] ; 3 uses
  %i.gt = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i55, i64 3)
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph542, i64 %i.gt ; 2 uses
  %i.gv = icmp ult ptr %.sroa.9.0.i53, %i.gu
  br i1 %i.gv, label %.lr.ph.i76, label %._crit_edge.i56

.lr.ph.i76:                                       ; preds = %bb.aa
  %.val22.i77 = load ptr, ptr %i.gr, align 8, !alias.scope !5346, !noalias !5349, !nonnull !5, !align !82, !noundef !5
  %i.gw = load i64, ptr %.val22.i77, align 8, !range !552, !noalias !5351, !noundef !5 ; 4 uses
  %switch.gep618 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.gw
  %switch.load619 = load i8, ptr %switch.gep618, align 1
  %switch.gep622 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.gw
  %switch.load623 = load i8, ptr %switch.gep622, align 1
  %switch.gep626 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.gw
  %switch.load627 = load i8, ptr %switch.gep626, align 1
  %switch.gep630 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.gw
  %switch.load631 = load i8, ptr %switch.gep630, align 1
  br label %switch.lookup617

switch.lookup617:                                 ; preds = %switch.lookup617, %.lr.ph.i76
  %.sroa.43.146.i78 = phi ptr [ %.sroa.43.0.i54, %.lr.ph.i76 ], [ %i.hv, %switch.lookup617 ] ; 4 uses
  %.sroa.9.145.i79 = phi ptr [ %.sroa.9.0.i53, %.lr.ph.i76 ], [ %i.hz, %switch.lookup617 ] ; 5 uses
  %.sroa.27.144.i80 = phi i64 [ %.sroa.27.0.i52, %.lr.ph.i76 ], [ %i.hy, %switch.lookup617 ] ; 2 uses
  %.val21.i81 = load ptr, ptr %.sroa.9.145.i79, align 8, !alias.scope !5346, !noalias !5349, !nonnull !5, !noundef !5 ; 2 uses
  %7 = ptrtoint ptr %.val21.i81 to i64
  %8 = load i64, ptr %.val21.i81, align 8, !range !552, !noalias !5351, !noundef !5
  %switch.gep670 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %8
  %switch.load671 = load i8, ptr %switch.gep670, align 1
  %9 = icmp uge i8 %switch.load619, %switch.load671 ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %.sroa.43.146.i78, i64 -8
  %.sroa.01.0.i.i85 = select i1 %9, ptr %2, ptr %i.gx
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i85, i64 %.sroa.27.144.i80
  store i64 %7, ptr %i.gy, align 8, !alias.scope !5349, !noalias !5352
  %i.gz = zext i1 %9 to i64
  %i.ha = add i64 %.sroa.27.144.i80, %i.gz        ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.9.145.i79, i64 8
  %.val19.i86 = load ptr, ptr %i.hb, align 8, !alias.scope !5346, !noalias !5349, !nonnull !5, !noundef !5 ; 2 uses
  %i.hc = ptrtoint ptr %.val19.i86 to i64
  %i.hd = load i64, ptr %.val19.i86, align 8, !range !552, !noalias !5351, !noundef !5
  %switch.gep690 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.hd
  %switch.load691 = load i8, ptr %switch.gep690, align 1
  %i.he = icmp uge i8 %switch.load623, %switch.load691 ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %.sroa.43.146.i78, i64 -16
  %.sroa.01.0.i28.i87 = select i1 %i.he, ptr %2, ptr %i.hf
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i28.i87, i64 %i.ha
  store i64 %i.hc, ptr %i.hg, align 8, !alias.scope !5349, !noalias !5355
  %i.hh = zext i1 %i.he to i64
  %i.hi = add i64 %i.ha, %i.hh                    ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.9.145.i79, i64 16
  %.val17.i88 = load ptr, ptr %i.hj, align 8, !alias.scope !5346, !noalias !5349, !nonnull !5, !noundef !5 ; 2 uses
  %i.hk = ptrtoint ptr %.val17.i88 to i64
  %i.hl = load i64, ptr %.val17.i88, align 8, !range !552, !noalias !5351, !noundef !5
  %switch.gep674 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.hl
  %switch.load675 = load i8, ptr %switch.gep674, align 1
  %i.hm = icmp uge i8 %switch.load627, %switch.load675 ; 2 uses
  %i.hn = getelementptr inbounds i8, ptr %.sroa.43.146.i78, i64 -24
  %.sroa.01.0.i34.i89 = select i1 %i.hm, ptr %2, ptr %i.hn
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i34.i89, i64 %i.hi
  store i64 %i.hk, ptr %i.ho, align 8, !alias.scope !5349, !noalias !5358
  %i.hp = zext i1 %i.hm to i64
  %i.hq = add i64 %i.hi, %i.hp                    ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.9.145.i79, i64 24
  %.val15.i90 = load ptr, ptr %i.hr, align 8, !alias.scope !5346, !noalias !5349, !nonnull !5, !noundef !5 ; 2 uses
  %i.hs = ptrtoint ptr %.val15.i90 to i64
  %i.ht = load i64, ptr %.val15.i90, align 8, !range !552, !noalias !5351, !noundef !5
  %switch.gep698 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.ht
  %switch.load699 = load i8, ptr %switch.gep698, align 1
  %i.hu = icmp uge i8 %switch.load631, %switch.load699 ; 2 uses
  %i.hv = getelementptr inbounds i8, ptr %.sroa.43.146.i78, i64 -32 ; 3 uses
  %.sroa.01.0.i40.i91 = select i1 %i.hu, ptr %2, ptr %i.hv
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i40.i91, i64 %i.hq
  store i64 %i.hs, ptr %i.hw, align 8, !alias.scope !5349, !noalias !5361
  %i.hx = zext i1 %i.hu to i64
  %i.hy = add i64 %i.hq, %i.hx                    ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.9.145.i79, i64 32 ; 3 uses
  %i.ia = icmp ult ptr %i.hz, %i.gu
  br i1 %i.ia, label %switch.lookup617, label %._crit_edge.i56

._crit_edge.i56:                                  ; preds = %switch.lookup617, %bb.aa
  %.sroa.27.1.lcssa.i57 = phi i64 [ %.sroa.27.0.i52, %bb.aa ], [ %i.hy, %switch.lookup617 ] ; 2 uses
  %.sroa.9.1.lcssa.i58 = phi ptr [ %.sroa.9.0.i53, %bb.aa ], [ %i.hz, %switch.lookup617 ] ; 3 uses
  %.sroa.43.1.lcssa.i59 = phi ptr [ %.sroa.43.0.i54, %bb.aa ], [ %i.hv, %switch.lookup617 ] ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph542, i64 %.sroa.0.0.i55 ; 2 uses
  %i.ic = icmp ult ptr %.sroa.9.1.lcssa.i58, %i.ib
  br i1 %i.ic, label %.lr.ph53.i68.preheader, label %._crit_edge54.i60

.lr.ph53.i68.preheader:                           ; preds = %._crit_edge.i56
  %.val14.i73 = load ptr, ptr %i.gr, align 8, !alias.scope !5346, !noalias !5349, !nonnull !5, !align !82, !noundef !5
  %i.id = load i64, ptr %.val14.i73, align 8, !range !552, !noalias !5351, !noundef !5 ; 2 uses
  %switch.selectcmp236 = icmp eq i64 %i.id, 0
  %switch.selectcmp.not = icmp eq i64 %i.id, 1
  br label %.lr.ph53.i68

._crit_edge54.i60:                                ; preds = %bb.ab, %._crit_edge.i56
  %.sroa.27.2.lcssa.i61 = phi i64 [ %.sroa.27.1.lcssa.i57, %._crit_edge.i56 ], [ %i.ik, %bb.ab ] ; 9 uses
  %.sroa.9.2.lcssa.i62 = phi ptr [ %.sroa.9.1.lcssa.i58, %._crit_edge.i56 ], [ %i.il, %bb.ab ] ; 2 uses
  %.sroa.43.2.lcssa.i63 = phi ptr [ %.sroa.43.1.lcssa.i59, %._crit_edge.i56 ], [ %i.ih, %bb.ab ]
  %i.ie = icmp eq i64 %.sroa.0.0.i55, %.sroa.16.0171533
  br i1 %i.ie, label %bb.ad, label %bb.ac

.lr.ph53.i68:                                     ; preds = %.lr.ph53.i68.preheader, %bb.ab
  %.sroa.43.251.i69 = phi ptr [ %i.ih, %bb.ab ], [ %.sroa.43.1.lcssa.i59, %.lr.ph53.i68.preheader ]
  %.sroa.9.250.i70 = phi ptr [ %i.il, %bb.ab ], [ %.sroa.9.1.lcssa.i58, %.lr.ph53.i68.preheader ] ; 2 uses
  %.sroa.27.249.i71 = phi i64 [ %i.ik, %bb.ab ], [ %.sroa.27.1.lcssa.i57, %.lr.ph53.i68.preheader ] ; 2 uses
  %.val.i72 = load ptr, ptr %.sroa.9.250.i70, align 8, !alias.scope !5346, !noalias !5349, !nonnull !5, !noundef !5 ; 2 uses
  %i.if = ptrtoint ptr %.val.i72 to i64
  %i.ig = load i64, ptr %.val.i72, align 8, !range !552, !noalias !5351, !noundef !5
  %i.ih = getelementptr inbounds i8, ptr %.sroa.43.251.i69, i64 -8 ; 4 uses
  switch i64 %i.ig, label %default.unreachable [
    i64 0, label %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0E0B38_.exit45.i
    i64 1, label %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0E0B38_.exit45.i.thread
    i64 2, label %.split
  ]

.split:                                           ; preds = %.lr.ph53.i68
  br i1 %switch.selectcmp.not, label %bb.ab, label %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0E0B38_.exit45.i.thread

_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0E0B38_.exit45.i: ; preds = %.lr.ph53.i68
  br i1 %switch.selectcmp236, label %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0E0B38_.exit45.i.thread, label %bb.ab

_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0E0B38_.exit45.i.thread: ; preds = %.lr.ph53.i68, %.split, %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0E0B38_.exit45.i
  br label %bb.ab

bb.ab:                                            ; preds = %.split, %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0E0B38_.exit45.i, %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0E0B38_.exit45.i.thread
  %.sroa.0.0.i2.i.i43.i362 = phi i64 [ 1, %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0E0B38_.exit45.i.thread ], [ 0, %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0E0B38_.exit45.i ], [ 0, %.split ]
  %i.ii = phi ptr [ %2, %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0E0B38_.exit45.i.thread ], [ %i.ih, %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0E0B38_.exit45.i ], [ %i.ih, %.split ]
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %.sroa.27.249.i71
  store i64 %i.if, ptr %i.ij, align 8, !alias.scope !5349, !noalias !5364
  %i.ik = add i64 %.sroa.27.249.i71, %.sroa.0.0.i2.i.i43.i362 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.9.250.i70, i64 8 ; 3 uses
  %i.im = icmp ult ptr %i.il, %i.ib
  br i1 %i.im, label %.lr.ph53.i68, label %._crit_edge54.i60

bb.ac:                                            ; preds = %._crit_edge54.i60
  %i.in = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i63, i64 -8
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i61
  %i.ip = load i64, ptr %.sroa.9.2.lcssa.i62, align 8, !alias.scope !5346, !noalias !5367
  store i64 %i.ip, ptr %i.io, align 8, !alias.scope !5349, !noalias !5370
  %i.iq = add i64 %.sroa.27.2.lcssa.i61, 1
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i62, i64 8
  br label %bb.aa

bb.ad:                                            ; preds = %._crit_edge54.i60
  %i.is = shl nuw nsw i64 %.sroa.27.2.lcssa.i61, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph542, ptr nonnull align 8 %2, i64 %i.is, i1 false), !alias.scope !5351
  %i.it = sub i64 %.sroa.16.0171533, %.sroa.27.2.lcssa.i61 ; 7 uses
  %.not62.i64 = icmp eq i64 %.sroa.16.0171533, %.sroa.27.2.lcssa.i61
  br i1 %.not62.i64, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0E0EB3A_.exit, label %.lr.ph60.i65

.lr.ph60.i65:                                     ; preds = %bb.ad
  %i.iu = getelementptr [8 x i8], ptr %.sroa.0.0.ph542, i64 %.sroa.27.2.lcssa.i61 ; 2 uses
  %min.iters.check = icmp ult i64 %i.it, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph60.i65
  %n.vec = and i64 %i.it, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.iv = xor i64 %index, -1
  %i.iw = getelementptr [8 x i8], ptr %i.gs, i64 %i.iv ; 2 uses
  %i.ix = getelementptr [8 x i8], ptr %i.iu, i64 %index ; 2 uses
  %i.iy = getelementptr i8, ptr %i.iw, i64 -8
  %i.iz = getelementptr i8, ptr %i.iw, i64 -24
  %wide.load = load <2 x i64>, ptr %i.iy, align 8, !alias.scope !5349, !noalias !5346
  %wide.load557 = load <2 x i64>, ptr %i.iz, align 8, !alias.scope !5349, !noalias !5346
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse558 = shufflevector <2 x i64> %wide.load557, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ja = getelementptr i8, ptr %i.ix, i64 16
  store <2 x i64> %reverse, ptr %i.ix, align 8, !alias.scope !5346, !noalias !5349
  store <2 x i64> %reverse558, ptr %i.ja, align 8, !alias.scope !5346, !noalias !5349
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jb = icmp eq i64 %index.next, %n.vec
  br i1 %i.jb, label %middle.block, label %vector.body, !llvm.loop !5371

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0E0EB3A_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph60.i65, %middle.block
  %.sroa.07.058.i66.ph = phi i64 [ 0, %.lr.ph60.i65 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.058.i66 = phi i64 [ %i.jc, %scalar.ph ], [ %.sroa.07.058.i66.ph, %scalar.ph.preheader ] ; 3 uses
  %i.jc = add nuw i64 %.sroa.07.058.i66, 1        ; 2 uses
  %i.jd = xor i64 %.sroa.07.058.i66, -1
  %i.je = getelementptr [8 x i8], ptr %i.gs, i64 %i.jd
  %i.jf = getelementptr [8 x i8], ptr %i.iu, i64 %.sroa.07.058.i66
  %i.jg = load i64, ptr %i.je, align 8, !alias.scope !5349, !noalias !5346
  store i64 %i.jg, ptr %i.jf, align 8, !alias.scope !5346, !noalias !5349
  %exitcond.not.i67 = icmp eq i64 %i.jc, %i.it
  br i1 %exitcond.not.i67, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0E0EB3A_.exit, label %scalar.ph, !llvm.loop !5372

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0E0EB3A_.exit: ; preds = %scalar.ph, %middle.block, %bb.ad
  %i.jh = icmp ugt i64 %.sroa.27.2.lcssa.i61, %.sroa.16.0171533
  br i1 %i.jh, label %bb.ae, label %.outer, !prof !21

.outer:                                           ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0E0EB3A_.exit
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph542, i64 %.sroa.27.2.lcssa.i61 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.jj = icmp ult i64 %i.it, 33
  br i1 %i.jj, label %.outer._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0E0EB3A_.exit
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i61, i64 noundef %.sroa.16.0171533, i64 noundef %.sroa.16.0171533, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #42
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB37_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(24) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 8 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph108 = phi ptr [ %i.lj, %.outer ], [ %0, %bb.a ] ; 20 uses
  %.sroa.16.0.ph107 = phi i64 [ %i.ku, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph106 = phi i32 [ %i.fb, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph105 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph108 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph105, null
  %i.d = icmp eq i32 %.sroa.025.0.ph106, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph254

bb.b:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit
  %i.e = icmp eq i32 %i.fb, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph254

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit, %bb.a
  %.sroa.0.0.ph.lcssa99 = phi ptr [ %.sroa.0.0.ph108, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit ], [ %0, %bb.a ], [ %i.lj, %.outer ] ; 7 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionE12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit ], [ %1, %bb.a ], [ %i.ku, %.outer ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5373)
  call void @llvm.experimental.noalias.scope.decl(metadata !5376)
  %i.f = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.f, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB3u_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.g = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.h = icmp samesign ult i64 %3, %i.g
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i64 %.sroa.16.0.lcssa, 1            ; 6 uses
  %i.j = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph.lcssa99, i64 %i.i ; 3 uses
  %i.l = getelementptr [24 x i8], ptr %2, i64 %i.i ; 8 uses
  br i1 %i.j, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB3b_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa99, ptr noundef nonnull align 8 %2)
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB3b_(ptr noundef %i.k, ptr noundef %i.l)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.ph.lcssa99, i64 24, i1 false), !alias.scope !5378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !alias.scope !5378
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.m = sub nsw i64 %.sroa.16.0.lcssa, %i.i      ; 2 uses
  %i.n = icmp samesign ult i64 %.sroa.0.0.i, %i.i
  br i1 %i.n, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB3a_.exit.i, %bb.h
  %i.o = icmp ult i64 %.sroa.0.0.i, %i.m
  br i1 %i.o, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB3a_.exit.1.i
end_hunk_6
