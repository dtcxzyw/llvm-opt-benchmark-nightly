Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_diagnostics-c91ff1076cc5b64d.ide_diagnostics.928d5d43bb5779f5-cgu.03?download=true
inline.NumInlined: 1114
inline.NumDeleted: 661
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [94 x i8] c"internal error: entered unreachable code: mapping more input nodes than there are output nodes", align 1
@1 = private unnamed_addr constant [43 x i8] c"crates/syntax/src/syntax_editor/mapping.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"*\00\00\00\00\00\00\00\F5\00\00\00\15\00\00\00" }>, align 8
@3 = private unnamed_addr constant [1 x i8] c"\0A", align 1
@4 = private unnamed_addr constant [22 x i8] c"crates/hir/src/lib.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\15\00\00\00\00\00\00\003\1D\00\00/\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECscA5P7HRgTCP_15ide_diagnostics, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa8databaseNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_13AsDynDatabase15as_dyn_databaseCscA5P7HRgTCP_15ide_diagnostics }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECscA5P7HRgTCP_15ide_diagnostics, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECscA5P7HRgTCP_15ide_diagnostics, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCshzWfHUSfYae_4core3anyNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB2_3Any7type_idCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa5zalsa13ZalsaDatabase6zalsasCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase5zalsaCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase9zalsa_mutCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase11zalsa_localCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa8databaseNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_13AsDynDatabase15as_dyn_databaseCscA5P7HRgTCP_15ide_diagnostics, ptr @6, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_lru_evictionCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database15synthetic_writeCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_cancellationCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database18cancellation_tokenCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21report_untracked_readCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21ingredient_debug_nameCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database28unwind_if_revision_cancelledCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvXsb_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database25zalsa_register_downcaster, ptr @_RNvXs1_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr @7, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase9file_text, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase13set_file_text, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase29set_file_text_with_durability, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase11source_root, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase16file_source_root, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase36set_file_source_root_with_durability, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase31set_source_root_with_durability, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase12resolve_pathCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase10crates_map, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase18nonce_and_revision, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase11line_column, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase25zalsa_register_downcaster, ptr @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty2dbNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_11HirDatabase6as_dynCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase8mir_bodyCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase20mir_body_for_closureCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase22monomorphized_mir_bodyCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase34monomorphized_mir_body_for_closureCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase10const_evalCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase15anon_const_evalCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase17const_eval_staticCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase23const_eval_discriminantCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase18lookup_impl_methodCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase13layout_of_adtCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase12layout_of_tyCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase18target_data_layoutCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase26dyn_compatibility_of_traitCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase2tyCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase36type_for_type_alias_with_diagnosticsCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase8value_tyCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase14type_for_constCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase31type_for_const_with_diagnosticsCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase15type_for_staticCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase32type_for_static_with_diagnosticsCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase29impl_self_ty_with_diagnosticsCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase12impl_self_tyCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase34const_param_types_with_diagnosticsCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase17const_param_typesCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase14const_param_tyCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase27impl_trait_with_diagnosticsCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase10impl_traitCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase28field_types_with_diagnosticsCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase11field_typesCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase23callable_item_signatureCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase40callable_item_signature_with_diagnosticsCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase17trait_environmentCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase33generic_defaults_with_diagnosticsCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase16generic_defaultsCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase34type_alias_bounds_with_diagnosticsCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase17type_alias_boundsCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase22type_alias_self_boundsCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabase12variances_ofCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty2dbNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_11HirDatabase25zalsa_register_downcasterBx_ }>, align 8
@9 = private unnamed_addr constant [13 x i8] c"No self param", align 1
@10 = private unnamed_addr constant [38 x i8] c"crates/hir/src/term_search/tactics.rs\00", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"%\00\00\00\00\00\00\00\FE\01\00\00#\00\00\00" }>, align 8
@12 = private unnamed_addr constant [18 x i8] c"Type not in lookup", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"%\00\00\00\00\00\00\00\05\02\00\00:\00\00\00" }>, align 8
@_RNvNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [2 x i64] } }, i8, [7 x i8] }
@14 = private unnamed_addr constant [5 x i8] c"\01\0A\C0\C0\00", align 1
@15 = private unnamed_addr constant [106 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/itertools-0.15.0/src/permutations.rs\00", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"i\00\00\00\00\00\00\00V\00\00\00&\00\00\00" }>, align 8
@17 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char, ptr @_RNvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmtCscA5P7HRgTCP_15ide_diagnostics }>, align 8
@19 = private unnamed_addr constant [97 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/itertools-0.15.0/src/lib.rs\00", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"`\00\00\00\00\00\00\00\DD\0A\00\002\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCshzWfHUSfYae_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@22 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@23 = private unnamed_addr constant [5 x i8] c"E0054", align 1
@24 = private unnamed_addr constant [28 x i8] c"\0Dcannot cast `\C0\0B` as `bool`\00", align 1
@25 = private unnamed_addr constant [5 x i8] c"E0604", align 1
@26 = private unnamed_addr constant [40 x i8] c"%only `u8` can be cast as `char`, not \C0\00", align 1
@27 = private unnamed_addr constant [5 x i8] c"E0606", align 1
@28 = private unnamed_addr constant [61 x i8] c"\09casting `\C0\06` as `\C0(` is invalid: vtable kinds may not match\00", align 1
@29 = private unnamed_addr constant [5 x i8] c"E0607", align 1
@30 = private unnamed_addr constant [51 x i8] c"\1Acannot cast thin pointer `\C0\12` to fat pointer `\C0\01`\00", align 1
@31 = private unnamed_addr constant [33 x i8] c"\09casting `\C0\06` as `\C0\0C` is invalid\00", align 1
@32 = private unnamed_addr constant [40 x i8] c"\0Dcannot cast `\C0\14` to a fat pointer `\C0\01`\00", align 1
@33 = private unnamed_addr constant [82 x i8] c"\09casting `\C0\06` as `\C0=` is invalid: needs dereference or removal of unneeded borrow\00", align 1
@34 = private unnamed_addr constant [76 x i8] c"\09casting `\C0\06` as `\C07` is invalid: needs casting through a raw pointer first\00", align 1
@35 = private unnamed_addr constant [77 x i8] c"\09casting `\C0\06` as `\C08` is invalid: needs casting through a thin pointer first\00", align 1
@36 = private unnamed_addr constant [73 x i8] c"\09casting `\C0\06` as `\C04` is invalid: needs casting through an integer first\00", align 1
@37 = private unnamed_addr constant [5 x i8] c"E0605", align 1
@38 = private unnamed_addr constant [34 x i8] c"\15non-primitive cast: `\C0\06` as `\C0\01`\00", align 1
@39 = private unnamed_addr constant [5 x i8] c"E0804", align 1
@40 = private unnamed_addr constant [51 x i8] c"cannot add auto trait to dyn bound via pointer cast", align 1
@41 = private unnamed_addr constant [5 x i8] c"E0620", align 1
@42 = private unnamed_addr constant [28 x i8] c"\17cast to unsized type: `\C0\01`\00", align 1
@43 = private unnamed_addr constant [57 x i8] c"type annotations needed; type must be known at this point", align 1
@44 = private unnamed_addr constant [23 x i8] c"type annotations needed", align 1
@45 = private unnamed_addr constant [36 x i8] c"type annotations needed\0Afull type: `", align 1
@46 = private unnamed_addr constant [5 x i8] c"E0282", align 1
@47 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -8407916533717187642 to ptr), ptr inttoptr (i64 8687281100977841205 to ptr) }>, align 8
@48 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECscA5P7HRgTCP_15ide_diagnostics, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCshzWfHUSfYae_4core3anyNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB2_3Any7type_idCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa5zalsa13ZalsaDatabase6zalsasCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase5zalsaCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase9zalsa_mutCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase11zalsa_localCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa8databaseNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_13AsDynDatabase15as_dyn_databaseCscA5P7HRgTCP_15ide_diagnostics, ptr @6, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_lru_evictionCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database15synthetic_writeCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_cancellationCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database18cancellation_tokenCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21report_untracked_readCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21ingredient_debug_nameCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database28unwind_if_revision_cancelledCscA5P7HRgTCP_15ide_diagnostics, ptr @_RNvXsb_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database25zalsa_register_downcaster }>, align 8
@49 = private unnamed_addr constant [5 x i8] c"Error", align 1
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"`\00\00\00\00\00\00\00\DA\0A\00\004\00\00\00" }>, align 8
@51 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCscA5P7HRgTCP_15ide_diagnostics, align 8
@52 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@53 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @52, [24 x i8] zeroinitializer }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCsjJXvCMGntp8_6syntax13syntax_editor7mappingNtB5_20SyntaxMappingBuilder12map_childrenINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB9_11syntax_node12RustLanguageEEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB9_3ast11AstChildrenNtNtNtB49_9generated5nodes4AttrENCINvMNtNtB49_14syntax_factory12constructorsNtB59_13SyntaxFactory4use_INtNtB3r_6option6OptionB4v_EE0EECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 14 uses
  %.sroa.03.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !4, !noalias !7
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !4, !noalias !7, !nonnull !9, !noundef !9 ; 3 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !4, !noalias !7 ; 2 uses
  %i.d = icmp ult i64 %.sroa.55.0.copyload.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.sroa.44.0.copyload.i, i64 %.sroa.55.0.copyload.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10
  store ptr %.sroa.44.0.copyload.i, ptr %i.a, align 8, !noalias !14
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.44.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.e, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvNtCscFGNKo4Sl5v_9itertools11zip_longest11zip_longestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2p_3ast11AstChildrenNtNtNtB44_9generated5nodes4AttrENCINvMNtNtB44_14syntax_factory12constructorsNtB55_13SyntaxFactory4use_INtNtB3m_6option6OptionB4r_EE0EECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %.sroa.9.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.12.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.ae, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.j = load ptr, ptr %i.f, align 8, !alias.scope !21, !noalias !22, !noundef !9
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.k = load ptr, ptr %i.g, align 8, !alias.scope !27, !noalias !22, !nonnull !9, !noundef !9
  %i.l = load ptr, ptr %i.h, align 8, !alias.scope !27, !noalias !22, !nonnull !9, !noundef !9 ; 3 uses
  %i.m = icmp eq ptr %i.l, %i.k
  br i1 %i.m, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.h, align 8, !alias.scope !27, !noalias !22
  %i.o = load ptr, ptr %i.l, align 8, !noalias !28, !nonnull !9, !noundef !9
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.i.i = phi ptr [ null, %bb.b ], [ %i.o, %bb.d ], [ null, %bb.c ] ; 6 uses
  %i.p = load i64, ptr %i.c, align 8, !range !29, !alias.scope !30, !noalias !22, !noundef !9
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.e, label %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes4AttrENCINvMNtNtB1h_14syntax_factory12constructorsNtB2z_13SyntaxFactory4use_INtNtBb_6option6OptionB1V_EE0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i

bb.e:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i
  %i.r = invoke noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4AttrENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc.i unwind label %bb.o, !noalias !22 ; 7 uses

.noexc.i:                                         ; preds = %bb.e
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBW_9generated5nodes4AttrENCINvMNtNtBW_14syntax_factory12constructorsNtB2d_13SyntaxFactory4use_INtNtBe_6option6OptionB1A_EE0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load i32, ptr %i.s, align 4, !noalias !22, !noundef !9
  switch i32 %i.t, label %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes4AttrENCINvMNtNtB1h_14syntax_factory12constructorsNtB2z_13SyntaxFactory4use_INtNtBb_6option6OptionB1V_EE0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i [
    i32 -1, label %bb.g
    i32 0, label %bb.j
  ], !prof !35

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #25
          to label %.noexc.i.i.i.i.i.i unwind label %bb.h, !noalias !22

.noexc.i.i.i.i.i.i:                               ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !noalias !22, !noundef !9
  %i.x = add i32 %i.w, -1                         ; 2 uses
  store i32 %i.x, ptr %i.v, align 4, !noalias !22
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %.body.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.r) #26
          to label %.body.i unwind label %bb.k, !noalias !22

bb.j:                                             ; preds = %bb.f
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.r) #26
          to label %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes4AttrENCINvMNtNtB1h_14syntax_factory12constructorsNtB2z_13SyntaxFactory4use_INtNtBb_6option6OptionB1V_EE0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i unwind label %bb.o, !noalias !22

bb.k:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27, !noalias !22
  unreachable

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBW_9generated5nodes4AttrENCINvMNtNtBW_14syntax_factory12constructorsNtB2d_13SyntaxFactory4use_INtNtBe_6option6OptionB1A_EE0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i: ; preds = %.noexc.i
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !29, !alias.scope !30, !noalias !22, !noundef !9
  %.val4.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !30, !noalias !22 ; 3 uses
  %i.aa = icmp eq i64 %.val.i.i.i, 0
  %i.ab = icmp eq ptr %.val4.i.i.i, null
  %or.cond.i.i.i.i = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1y_9generated5nodes4AttrENCINvMNtNtB1y_14syntax_factory12constructorsNtB2Q_13SyntaxFactory4use_IBC_B2c_EE0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBW_9generated5nodes4AttrENCINvMNtNtBW_14syntax_factory12constructorsNtB2d_13SyntaxFactory4use_INtNtBe_6option6OptionB1A_EE0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 48 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !noalias !22, !noundef !9
  %i.ae = add i32 %i.ad, -1                       ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 4, !noalias !22
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1y_9generated5nodes4AttrENCINvMNtNtB1y_14syntax_factory12constructorsNtB2Q_13SyntaxFactory4use_IBC_B2c_EE0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4.i.i.i) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1y_9generated5nodes4AttrENCINvMNtNtB1y_14syntax_factory12constructorsNtB2Q_13SyntaxFactory4use_IBC_B2c_EE0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i unwind label %bb.n, !noalias !22

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1y_9generated5nodes4AttrENCINvMNtNtB1y_14syntax_factory12constructorsNtB2Q_13SyntaxFactory4use_IBC_B2c_EE0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i: ; preds = %bb.m, %bb.l, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBW_9generated5nodes4AttrENCINvMNtNtBW_14syntax_factory12constructorsNtB2d_13SyntaxFactory4use_INtNtBe_6option6OptionB1A_EE0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i
  store i64 0, ptr %i.c, align 8, !alias.scope !30, !noalias !22
  br label %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes4AttrENCINvMNtNtB1h_14syntax_factory12constructorsNtB2z_13SyntaxFactory4use_INtNtBb_6option6OptionB1V_EE0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i

bb.n:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.c, align 8, !alias.scope !30, !noalias !22
  br label %.body.i

bb.o:                                             ; preds = %bb.j, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.n, %bb.i, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ah, %bb.o ], [ %i.ag, %bb.n ], [ %i.u, %bb.i ], [ %i.u, %bb.h ] ; 3 uses
  %i.ai = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %i.ai, label %.body, label %bb.p

bb.p:                                             ; preds = %.body.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 48 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !noalias !22, !noundef !9
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.aj, align 4, !noalias !22
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.q, label %.body

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i.i) #26
          to label %.body unwind label %bb.t, !noalias !22

_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes4AttrENCINvMNtNtB1h_14syntax_factory12constructorsNtB2z_13SyntaxFactory4use_INtNtBb_6option6OptionB1V_EE0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1y_9generated5nodes4AttrENCINvMNtNtB1y_14syntax_factory12constructorsNtB2Q_13SyntaxFactory4use_IBC_B2c_EE0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i, %bb.j, %bb.f, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i
  %.sroa.0.0.i.i.i = phi ptr [ null, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i ], [ null, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1y_9generated5nodes4AttrENCINvMNtNtB1y_14syntax_factory12constructorsNtB2Q_13SyntaxFactory4use_IBC_B2c_EE0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i ], [ %i.r, %bb.f ], [ %i.r, %bb.j ] ; 4 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i.i, null
  %.not16.i = icmp eq ptr %.sroa.0.0.i.i.i, null  ; 2 uses
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes4AttrENCINvMNtNtB1h_14syntax_factory12constructorsNtB2z_13SyntaxFactory4use_INtNtBb_6option6OptionB1V_EE0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br i1 %.not16.i, label %bb.ad, label %bb.ac

bb.s:                                             ; preds = %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes4AttrENCINvMNtNtB1h_14syntax_factory12constructorsNtB2z_13SyntaxFactory4use_INtNtBb_6option6OptionB1V_EE0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i
  br i1 %.not16.i, label %_RNvXNtCscFGNKo4Sl5v_9itertools11zip_longestINtB2_10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2u_3ast11AstChildrenNtNtNtB49_9generated5nodes4AttrENCINvMNtNtB49_14syntax_factory12constructorsNtB5a_13SyntaxFactory4use_INtNtB3r_6option6OptionB4w_EE0EENtNtNtB3p_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit, label %bb.ai

bb.t:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27, !noalias !22
  unreachable

.body:                                            ; preds = %.thread43, %bb.q, %bb.p, %.body.i, %bb.u, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.ag ], [ %i.bf, %.thread43 ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.q ], [ %eh.lpad-body.i, %bb.p ], [ %i.ao, %bb.u ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11zip_longest10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtB4_4iter8adapters3map3MapINtNtB30_3ast11AstChildrenNtNtNtB4p_9generated5nodes4AttrENCINvMNtNtB4p_14syntax_factory12constructorsNtB5q_13SyntaxFactory4use_INtNtB4_6option6OptionB4M_EE0EEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #28
          to label %.body4 unwind label %bb.ah

bb.u:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i12
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvXNtCscFGNKo4Sl5v_9itertools11zip_longestINtB2_10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2u_3ast11AstChildrenNtNtNtB49_9generated5nodes4AttrENCINvMNtNtB49_14syntax_factory12constructorsNtB5a_13SyntaxFactory4use_INtNtB3r_6option6OptionB4w_EE0EENtNtNtB3p_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.s, %.noexc18
  %i.ap = load ptr, ptr %i.f, align 8, !alias.scope !36, !noundef !9
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEECscA5P7HRgTCP_15ide_diagnostics.exit.i, label %bb.v

bb.v:                                             ; preds = %_RNvXNtCscFGNKo4Sl5v_9itertools11zip_longestINtB2_10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2u_3ast11AstChildrenNtNtNtB49_9generated5nodes4AttrENCINvMNtNtB49_14syntax_factory12constructorsNtB5a_13SyntaxFactory4use_INtNtB3r_6option6OptionB4w_EE0EENtNtNtB3p_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEECscA5P7HRgTCP_15ide_diagnostics.exit.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val2.i = load i64, ptr %i.c, align 8, !range !29, !alias.scope !43, !noundef !9
  %.val3.i = load ptr, ptr %i.i, align 8, !alias.scope !43 ; 3 uses
  %i.as = icmp eq i64 %.val2.i, 0
  %i.at = icmp eq ptr %.val3.i, null
  %or.cond.i.i.i = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond.i.i.i, label %.body4, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.au = getelementptr inbounds nuw i8, ptr %.val3.i, i64 48 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !noundef !9
  %i.aw = add i32 %i.av, -1                       ; 2 uses
  store i32 %i.aw, ptr %i.au, align 4
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.y, label %.body4

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i) #26
          to label %.body4 unwind label %bb.ab

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEECscA5P7HRgTCP_15ide_diagnostics.exit.i: ; preds = %bb.v, %_RNvXNtCscFGNKo4Sl5v_9itertools11zip_longestINtB2_10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2u_3ast11AstChildrenNtNtNtB49_9generated5nodes4AttrENCINvMNtNtB49_14syntax_factory12constructorsNtB5a_13SyntaxFactory4use_INtNtB3r_6option6OptionB4w_EE0EENtNtNtB3p_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit
  %.val.i = load i64, ptr %i.c, align 8, !range !29, !alias.scope !43, !noundef !9
  %.val1.i = load ptr, ptr %i.i, align 8, !alias.scope !43 ; 3 uses
  %i.ay = icmp eq i64 %.val.i, 0
  %i.az = icmp eq ptr %.val1.i, null
  %or.cond.i.i5.i = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond.i.i5.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11zip_longest10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtB4_4iter8adapters3map3MapINtNtB30_3ast11AstChildrenNtNtNtB4p_9generated5nodes4AttrENCINvMNtNtB4p_14syntax_factory12constructorsNtB5q_13SyntaxFactory4use_INtNtB4_6option6OptionB4M_EE0EEECscA5P7HRgTCP_15ide_diagnostics.exit, label %bb.z

bb.z:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEECscA5P7HRgTCP_15ide_diagnostics.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.val1.i, i64 48 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !noundef !9
  %i.bc = add i32 %i.bb, -1                       ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 4
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.aa, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11zip_longest10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtB4_4iter8adapters3map3MapINtNtB30_3ast11AstChildrenNtNtNtB4p_9generated5nodes4AttrENCINvMNtNtB4p_14syntax_factory12constructorsNtB5q_13SyntaxFactory4use_INtNtB4_6option6OptionB4M_EE0EEECscA5P7HRgTCP_15ide_diagnostics.exit

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i) #26
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11zip_longest10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtB4_4iter8adapters3map3MapINtNtB30_3ast11AstChildrenNtNtNtB4p_9generated5nodes4AttrENCINvMNtNtB4p_14syntax_factory12constructorsNtB5q_13SyntaxFactory4use_INtNtB4_6option6OptionB4M_EE0EEECscA5P7HRgTCP_15ide_diagnostics.exit

bb.ab:                                            ; preds = %bb.y
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ac:                                            ; preds = %bb.r
  invoke void @_RNvMs_NtNtCsjJXvCMGntp8_6syntax13syntax_editor7mappingNtB4_20SyntaxMappingBuilder8map_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.0.0.i.i, ptr noundef nonnull %.sroa.0.0.i.i.i)
          to label %bb.ae unwind label %.thread43

.thread43:                                        ; preds = %bb.ac
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %bb.r
  store i64 1, ptr %i.b, align 8
  store ptr %.sroa.0.0.i.i, ptr %.sroa.9.0..sroa_idx32, align 8
  store ptr null, ptr %.sroa.12.0..sroa_idx33, align 8
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 189 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #25
          to label %bb.af unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

bb.af:                                            ; preds = %bb.ad
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools14either_or_both12EitherOrBothINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #28
          to label %.body unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

.noexc18:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i12, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXNtCscFGNKo4Sl5v_9itertools11zip_longestINtB2_10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2u_3ast11AstChildrenNtNtNtB49_9generated5nodes4AttrENCINvMNtNtB49_14syntax_factory12constructorsNtB5a_13SyntaxFactory4use_INtNtB3r_6option6OptionB4w_EE0EENtNtNtB3p_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit

bb.ai:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 48 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !noalias !44, !noundef !9
  %i.bk = add i32 %i.bj, -1                       ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 4, !noalias !44
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i12, label %.noexc18

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i12: ; preds = %bb.ai
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i.i.i) #26
          to label %.noexc18 unwind label %bb.u

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11zip_longest10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtB4_4iter8adapters3map3MapINtNtB30_3ast11AstChildrenNtNtNtB4p_9generated5nodes4AttrENCINvMNtNtB4p_14syntax_factory12constructorsNtB5q_13SyntaxFactory4use_INtNtB4_6option6OptionB4M_EE0EEECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.aa, %bb.z, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEECscA5P7HRgTCP_15ide_diagnostics.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.body4:                                           ; preds = %.body, %bb.y, %bb.x, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ar, %bb.w ], [ %i.ar, %bb.y ], [ %i.ar, %bb.x ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCsjJXvCMGntp8_6syntax13syntax_editor7mappingNtB5_20SyntaxMappingBuilder12map_childrenINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB9_11syntax_node12RustLanguageEEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB9_3ast11AstChildrenNtNtNtB49_9generated5nodes4ExprENCINvMNtNtB49_14syntax_factory12constructorsNtB59_13SyntaxFactory8arg_listAB4v_j1_E0EECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 14 uses
  %.sroa.03.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !47, !noalias !50
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !47, !noalias !50, !nonnull !9, !noundef !9 ; 3 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !47, !noalias !50 ; 2 uses
  %i.d = icmp ult i64 %.sroa.55.0.copyload.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.sroa.44.0.copyload.i, i64 %.sroa.55.0.copyload.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52
  store ptr %.sroa.44.0.copyload.i, ptr %i.a, align 8, !noalias !56
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.44.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !56
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !56
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.e, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvNtCscFGNKo4Sl5v_9itertools11zip_longest11zip_longestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2p_3ast11AstChildrenNtNtNtB44_9generated5nodes4ExprENCINvMNtNtB44_14syntax_factory12constructorsNtB55_13SyntaxFactory8arg_listAB4r_j1_E0EECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %.sroa.9.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.12.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.ac, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.j = load ptr, ptr %i.f, align 8, !alias.scope !63, !noalias !64, !noundef !9
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.k = load ptr, ptr %i.g, align 8, !alias.scope !69, !noalias !64, !nonnull !9, !noundef !9
  %i.l = load ptr, ptr %i.h, align 8, !alias.scope !69, !noalias !64, !nonnull !9, !noundef !9 ; 3 uses
  %i.m = icmp eq ptr %i.l, %i.k
  br i1 %i.m, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.h, align 8, !alias.scope !69, !noalias !64
  %i.o = load ptr, ptr %i.l, align 8, !noalias !70, !nonnull !9, !noundef !9
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.i.i = phi ptr [ null, %bb.b ], [ %i.o, %bb.d ], [ null, %bb.c ] ; 6 uses
  %i.p = load i64, ptr %i.c, align 8, !range !29, !alias.scope !71, !noalias !64, !noundef !9
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.e, label %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes4ExprENCINvMNtNtB1h_14syntax_factory12constructorsNtB2z_13SyntaxFactory8arg_listAB1V_j1_E0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i

bb.e:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i
  %i.r = invoke { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4ExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc.i unwind label %bb.m, !noalias !64 ; 2 uses

.noexc.i:                                         ; preds = %bb.e
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %.not.i.i.i.i.i = icmp eq i64 %i.s, -1
  br i1 %.not.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBW_9generated5nodes4ExprENCINvMNtNtBW_14syntax_factory12constructorsNtB2d_13SyntaxFactory8arg_listAB1A_j1_E0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc.i
  %i.t = extractvalue { i64, ptr } %i.r, 1        ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load i32, ptr %i.u, align 4, !noalias !64, !noundef !9
  switch i32 %i.v, label %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes4ExprENCINvMNtNtB1h_14syntax_factory12constructorsNtB2z_13SyntaxFactory8arg_listAB1V_j1_E0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i [
    i32 -1, label %bb.h
    i32 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i6.i.i.i.i.i.i
  ], !prof !35

bb.g:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !noalias !64, !noundef !9
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.x, align 4, !noalias !64
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i.i.i.i, label %.body.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i.i.i.i: ; preds = %bb.g
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.t) #26
          to label %.body.i unwind label %bb.i, !noalias !64

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #25
          to label %.noexc5.i.i.i.i.i.i unwind label %bb.g, !noalias !64

.noexc5.i.i.i.i.i.i:                              ; preds = %bb.h
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i6.i.i.i.i.i.i: ; preds = %bb.f
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.t) #26
          to label %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes4ExprENCINvMNtNtB1h_14syntax_factory12constructorsNtB2z_13SyntaxFactory8arg_listAB1V_j1_E0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i unwind label %bb.m, !noalias !64

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27, !noalias !64
  unreachable

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBW_9generated5nodes4ExprENCINvMNtNtBW_14syntax_factory12constructorsNtB2d_13SyntaxFactory8arg_listAB1A_j1_E0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i: ; preds = %.noexc.i
  %.val4.i.i.i = load i64, ptr %i.c, align 8, !range !29, !alias.scope !71, !noalias !64, !noundef !9
  %.val5.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !71, !noalias !64 ; 3 uses
  %i.ac = icmp eq i64 %.val4.i.i.i, 0
  %i.ad = icmp eq ptr %.val5.i.i.i, null
  %or.cond.i.i.i.i = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1y_9generated5nodes4ExprENCINvMNtNtB1y_14syntax_factory12constructorsNtB2Q_13SyntaxFactory8arg_listAB2c_j1_E0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBW_9generated5nodes4ExprENCINvMNtNtBW_14syntax_factory12constructorsNtB2d_13SyntaxFactory8arg_listAB1A_j1_E0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 48 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !noalias !64, !noundef !9
  %i.ag = add i32 %i.af, -1                       ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 4, !noalias !64
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1y_9generated5nodes4ExprENCINvMNtNtB1y_14syntax_factory12constructorsNtB2Q_13SyntaxFactory8arg_listAB2c_j1_E0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val5.i.i.i) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1y_9generated5nodes4ExprENCINvMNtNtB1y_14syntax_factory12constructorsNtB2Q_13SyntaxFactory8arg_listAB2c_j1_E0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i unwind label %bb.l, !noalias !64

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1y_9generated5nodes4ExprENCINvMNtNtB1y_14syntax_factory12constructorsNtB2Q_13SyntaxFactory8arg_listAB2c_j1_E0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i: ; preds = %bb.k, %bb.j, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBW_9generated5nodes4ExprENCINvMNtNtBW_14syntax_factory12constructorsNtB2d_13SyntaxFactory8arg_listAB1A_j1_E0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i
  store i64 0, ptr %i.c, align 8, !alias.scope !71, !noalias !64
  br label %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes4ExprENCINvMNtNtB1h_14syntax_factory12constructorsNtB2z_13SyntaxFactory8arg_listAB1V_j1_E0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.c, align 8, !alias.scope !71, !noalias !64
  br label %.body.i

bb.m:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i6.i.i.i.i.i.i, %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %bb.l, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i.i.i.i, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %i.ai, %bb.l ], [ %i.w, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i.i.i.i ], [ %i.w, %bb.g ] ; 3 uses
  %i.ak = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %i.ak, label %.body, label %bb.n

bb.n:                                             ; preds = %.body.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 48 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !noalias !64, !noundef !9
  %i.an = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.an, ptr %i.al, align 4, !noalias !64
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.o, label %.body

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i.i) #26
          to label %.body unwind label %bb.r, !noalias !64

_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes4ExprENCINvMNtNtB1h_14syntax_factory12constructorsNtB2z_13SyntaxFactory8arg_listAB1V_j1_E0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1y_9generated5nodes4ExprENCINvMNtNtB1y_14syntax_factory12constructorsNtB2Q_13SyntaxFactory8arg_listAB2c_j1_E0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i6.i.i.i.i.i.i, %bb.f, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i
  %.sroa.0.0.i.i.i = phi ptr [ null, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i ], [ null, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1y_9generated5nodes4ExprENCINvMNtNtB1y_14syntax_factory12constructorsNtB2Q_13SyntaxFactory8arg_listAB2c_j1_E0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i ], [ %i.t, %bb.f ], [ %i.t, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i6.i.i.i.i.i.i ] ; 4 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i.i, null
  %.not16.i = icmp eq ptr %.sroa.0.0.i.i.i, null  ; 2 uses
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes4ExprENCINvMNtNtB1h_14syntax_factory12constructorsNtB2z_13SyntaxFactory8arg_listAB1V_j1_E0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br i1 %.not16.i, label %bb.ab, label %bb.aa

bb.q:                                             ; preds = %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes4ExprENCINvMNtNtB1h_14syntax_factory12constructorsNtB2z_13SyntaxFactory8arg_listAB1V_j1_E0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i
  br i1 %.not16.i, label %_RNvXNtCscFGNKo4Sl5v_9itertools11zip_longestINtB2_10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2u_3ast11AstChildrenNtNtNtB49_9generated5nodes4ExprENCINvMNtNtB49_14syntax_factory12constructorsNtB5a_13SyntaxFactory8arg_listAB4w_j1_E0EENtNtNtB3p_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit, label %bb.ag

bb.r:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27, !noalias !64
  unreachable

.body:                                            ; preds = %.thread43, %bb.o, %bb.n, %.body.i, %bb.s, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.ae ], [ %i.bh, %.thread43 ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.o ], [ %eh.lpad-body.i, %bb.n ], [ %i.aq, %bb.s ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11zip_longest10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtB4_4iter8adapters3map3MapINtNtB30_3ast11AstChildrenNtNtNtB4p_9generated5nodes4ExprENCINvMNtNtB4p_14syntax_factory12constructorsNtB5q_13SyntaxFactory8arg_listAB4M_j1_E0EEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #28
          to label %.body4 unwind label %bb.af

bb.s:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i12
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvXNtCscFGNKo4Sl5v_9itertools11zip_longestINtB2_10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2u_3ast11AstChildrenNtNtNtB49_9generated5nodes4ExprENCINvMNtNtB49_14syntax_factory12constructorsNtB5a_13SyntaxFactory8arg_listAB4w_j1_E0EENtNtNtB3p_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.q, %.noexc18
  %i.ar = load ptr, ptr %i.f, align 8, !alias.scope !76, !noundef !9
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEECscA5P7HRgTCP_15ide_diagnostics.exit.i, label %bb.t

bb.t:                                             ; preds = %_RNvXNtCscFGNKo4Sl5v_9itertools11zip_longestINtB2_10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2u_3ast11AstChildrenNtNtNtB49_9generated5nodes4ExprENCINvMNtNtB49_14syntax_factory12constructorsNtB5a_13SyntaxFactory8arg_listAB4w_j1_E0EENtNtNtB3p_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEECscA5P7HRgTCP_15ide_diagnostics.exit.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val2.i = load i64, ptr %i.c, align 8, !range !29, !alias.scope !83, !noundef !9
  %.val3.i = load ptr, ptr %i.i, align 8, !alias.scope !83 ; 3 uses
  %i.au = icmp eq i64 %.val2.i, 0
  %i.av = icmp eq ptr %.val3.i, null
  %or.cond.i.i.i = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond.i.i.i, label %.body4, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = getelementptr inbounds nuw i8, ptr %.val3.i, i64 48 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !noundef !9
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.w, label %.body4

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i) #26
          to label %.body4 unwind label %bb.z

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEECscA5P7HRgTCP_15ide_diagnostics.exit.i: ; preds = %bb.t, %_RNvXNtCscFGNKo4Sl5v_9itertools11zip_longestINtB2_10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2u_3ast11AstChildrenNtNtNtB49_9generated5nodes4ExprENCINvMNtNtB49_14syntax_factory12constructorsNtB5a_13SyntaxFactory8arg_listAB4w_j1_E0EENtNtNtB3p_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit
  %.val.i = load i64, ptr %i.c, align 8, !range !29, !alias.scope !83, !noundef !9
  %.val1.i = load ptr, ptr %i.i, align 8, !alias.scope !83 ; 3 uses
  %i.ba = icmp eq i64 %.val.i, 0
  %i.bb = icmp eq ptr %.val1.i, null
  %or.cond.i.i5.i = select i1 %i.ba, i1 true, i1 %i.bb
  br i1 %or.cond.i.i5.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11zip_longest10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtB4_4iter8adapters3map3MapINtNtB30_3ast11AstChildrenNtNtNtB4p_9generated5nodes4ExprENCINvMNtNtB4p_14syntax_factory12constructorsNtB5q_13SyntaxFactory8arg_listAB4M_j1_E0EEECscA5P7HRgTCP_15ide_diagnostics.exit, label %bb.x

bb.x:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEECscA5P7HRgTCP_15ide_diagnostics.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1.i, i64 48 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !noundef !9
  %i.be = add i32 %i.bd, -1                       ; 2 uses
  store i32 %i.be, ptr %i.bc, align 4
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.y, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11zip_longest10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtB4_4iter8adapters3map3MapINtNtB30_3ast11AstChildrenNtNtNtB4p_9generated5nodes4ExprENCINvMNtNtB4p_14syntax_factory12constructorsNtB5q_13SyntaxFactory8arg_listAB4M_j1_E0EEECscA5P7HRgTCP_15ide_diagnostics.exit

bb.y:                                             ; preds = %bb.x
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i) #26
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11zip_longest10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtB4_4iter8adapters3map3MapINtNtB30_3ast11AstChildrenNtNtNtB4p_9generated5nodes4ExprENCINvMNtNtB4p_14syntax_factory12constructorsNtB5q_13SyntaxFactory8arg_listAB4M_j1_E0EEECscA5P7HRgTCP_15ide_diagnostics.exit

bb.z:                                             ; preds = %bb.w
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.aa:                                            ; preds = %bb.p
  invoke void @_RNvMs_NtNtCsjJXvCMGntp8_6syntax13syntax_editor7mappingNtB4_20SyntaxMappingBuilder8map_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.0.0.i.i, ptr noundef nonnull %.sroa.0.0.i.i.i)
          to label %bb.ac unwind label %.thread43

.thread43:                                        ; preds = %bb.aa
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ab:                                            ; preds = %bb.p
  store i64 1, ptr %i.b, align 8
  store ptr %.sroa.0.0.i.i, ptr %.sroa.9.0..sroa_idx32, align 8
  store ptr null, ptr %.sroa.12.0..sroa_idx33, align 8
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 189 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #25
          to label %bb.ad unwind label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

bb.ad:                                            ; preds = %bb.ab
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools14either_or_both12EitherOrBothINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #28
          to label %.body unwind label %bb.af

bb.af:                                            ; preds = %bb.ae, %.body
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

.noexc18:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i12, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXNtCscFGNKo4Sl5v_9itertools11zip_longestINtB2_10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2u_3ast11AstChildrenNtNtNtB49_9generated5nodes4ExprENCINvMNtNtB49_14syntax_factory12constructorsNtB5a_13SyntaxFactory8arg_listAB4w_j1_E0EENtNtNtB3p_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit

bb.ag:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 48 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !noalias !84, !noundef !9
  %i.bm = add i32 %i.bl, -1                       ; 2 uses
  store i32 %i.bm, ptr %i.bk, align 4, !noalias !84
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i12, label %.noexc18

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i12: ; preds = %bb.ag
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i.i.i) #26
          to label %.noexc18 unwind label %bb.s

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11zip_longest10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtB4_4iter8adapters3map3MapINtNtB30_3ast11AstChildrenNtNtNtB4p_9generated5nodes4ExprENCINvMNtNtB4p_14syntax_factory12constructorsNtB5q_13SyntaxFactory8arg_listAB4M_j1_E0EEECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.y, %bb.x, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEECscA5P7HRgTCP_15ide_diagnostics.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.body4:                                           ; preds = %.body, %bb.w, %bb.v, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.at, %bb.u ], [ %i.at, %bb.w ], [ %i.at, %bb.v ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCsjJXvCMGntp8_6syntax13syntax_editor7mappingNtB5_20SyntaxMappingBuilder12map_childrenINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB9_11syntax_node12RustLanguageEEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB9_3ast11AstChildrenNtNtNtB49_9generated5nodes4StmtENCINvMNtNtB49_14syntax_factory12constructorsNtB59_13SyntaxFactory10block_exprB46_E0EECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 14 uses
  %.sroa.03.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !87, !noalias !90
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !87, !noalias !90, !nonnull !9, !noundef !9 ; 3 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !87, !noalias !90 ; 2 uses
  %i.f = icmp ult i64 %.sroa.55.0.copyload.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.sroa.44.0.copyload.i, i64 %.sroa.55.0.copyload.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !92
  store ptr %.sroa.44.0.copyload.i, ptr %i.c, align 8, !noalias !96
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.44.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !96
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !96
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RINvNtCscFGNKo4Sl5v_9itertools11zip_longest11zip_longestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2p_3ast11AstChildrenNtNtNtB44_9generated5nodes4StmtENCINvMNtNtB44_14syntax_factory12constructorsNtB55_13SyntaxFactory10block_exprB41_E0EECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !92
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.9.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.12.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.af, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.m = load ptr, ptr %i.h, align 8, !alias.scope !103, !noalias !104, !noundef !9
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.n = load ptr, ptr %i.i, align 8, !alias.scope !109, !noalias !104, !nonnull !9, !noundef !9
  %i.o = load ptr, ptr %i.j, align 8, !alias.scope !109, !noalias !104, !nonnull !9, !noundef !9 ; 3 uses
  %i.p = icmp eq ptr %i.o, %i.n
  br i1 %i.p, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !109, !noalias !104
  %i.r = load ptr, ptr %i.o, align 8, !noalias !110, !nonnull !9, !noundef !9
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.i.i = phi ptr [ null, %bb.b ], [ %i.r, %bb.d ], [ null, %bb.c ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.s = load i64, ptr %i.e, align 8, !range !29, !alias.scope !117, !noalias !104, !noundef !9
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.e, label %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes4StmtENCINvMNtNtB1h_14syntax_factory12constructorsNtB2z_13SyntaxFactory10block_exprB1e_E0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i

bb.e:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !118
  invoke void @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4StmtENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.noexc.i unwind label %bb.p, !noalias !104

.noexc.i:                                         ; preds = %bb.e
  %i.u = load i64, ptr %i.b, align 8, !range !123, !noalias !118, !noundef !9
  %.not.i.i.i.i.i = icmp eq i64 %i.u, -1
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !118
  %i.v = invoke noundef nonnull align 8 ptr @_RNvXNtNtCsjJXvCMGntp8_6syntax3ast9generatedNtNtB2_5nodes4StmtNtB4_7AstNode6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.h unwind label %.loopexit, !noalias !104

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !124, !noalias !118, !nonnull !9, !noundef !9 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !noalias !104, !noundef !9
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.w, align 4, !noalias !104
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i.i.i.i, label %.body.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i.i.i.i: ; preds = %bb.g
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4.i.i.i.i.i.i) #26
          to label %.body.i unwind label %bb.k, !noalias !104

bb.h:                                             ; preds = %bb.f
  %.val.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !noalias !104, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !104, !noundef !9 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %bb.i, label %bb.j, !prof !127

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #25
          to label %.noexc5.i.i.i.i.i.i unwind label %.loopexit.split-lp, !noalias !104

.noexc5.i.i.i.i.i.i:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ad = add nuw i32 %i.ab, 1
  store i32 %i.ad, ptr %i.aa, align 4, !noalias !104
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !124, !noalias !118, !nonnull !9, !noundef !9 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !noalias !104, !noundef !9
  %i.ag = add i32 %i.af, -1                       ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 4, !noalias !104
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i6.i.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBW_9generated5nodes4StmtENCINvMNtNtBW_14syntax_factory12constructorsNtB2d_13SyntaxFactory10block_exprBT_E0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i6.i.i.i.i.i.i: ; preds = %bb.j
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val2.i.i.i.i.i.i) #26
          to label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBW_9generated5nodes4StmtENCINvMNtNtBW_14syntax_factory12constructorsNtB2d_13SyntaxFactory10block_exprBT_E0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i unwind label %bb.p, !noalias !104

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i.i.i.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27, !noalias !104
  unreachable

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBW_9generated5nodes4StmtENCINvMNtNtBW_14syntax_factory12constructorsNtB2d_13SyntaxFactory10block_exprBT_E0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i6.i.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !118
  br label %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes4StmtENCINvMNtNtB1h_14syntax_factory12constructorsNtB2z_13SyntaxFactory10block_exprB1e_E0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i

bb.l:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !118
  %.val4.i.i.i = load i64, ptr %i.e, align 8, !range !29, !alias.scope !117, !noalias !104, !noundef !9
  %.val5.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !117, !noalias !104 ; 3 uses
  %i.aj = icmp eq i64 %.val4.i.i.i, 0
  %i.ak = icmp eq ptr %.val5.i.i.i, null
  %or.cond.i.i.i.i = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1y_9generated5nodes4StmtENCINvMNtNtB1y_14syntax_factory12constructorsNtB2Q_13SyntaxFactory10block_exprB1v_E0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 48 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !noalias !104, !noundef !9
  %i.an = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.an, ptr %i.al, align 4, !noalias !104
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.n, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1y_9generated5nodes4StmtENCINvMNtNtB1y_14syntax_factory12constructorsNtB2Q_13SyntaxFactory10block_exprB1v_E0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val5.i.i.i) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1y_9generated5nodes4StmtENCINvMNtNtB1y_14syntax_factory12constructorsNtB2Q_13SyntaxFactory10block_exprB1v_E0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i unwind label %bb.o, !noalias !104

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1y_9generated5nodes4StmtENCINvMNtNtB1y_14syntax_factory12constructorsNtB2Q_13SyntaxFactory10block_exprB1v_E0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.l
  store i64 0, ptr %i.e, align 8, !alias.scope !117, !noalias !104
  br label %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes4StmtENCINvMNtNtB1h_14syntax_factory12constructorsNtB2z_13SyntaxFactory10block_exprB1e_E0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i

bb.o:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.e, align 8, !alias.scope !117, !noalias !104
  br label %.body.i

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i6.i.i.i.i.i.i, %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.p, %bb.o, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i.i.i.i, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aq, %bb.p ], [ %i.ap, %bb.o ], [ %lpad.phi, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i.i.i.i ], [ %lpad.phi, %bb.g ] ; 3 uses
  %i.ar = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %i.ar, label %.body, label %bb.q

bb.q:                                             ; preds = %.body.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 48 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !noalias !104, !noundef !9
  %i.au = add i32 %i.at, -1                       ; 2 uses
  store i32 %i.au, ptr %i.as, align 4, !noalias !104
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.r, label %.body

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i.i) #26
          to label %.body unwind label %bb.u, !noalias !104

_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes4StmtENCINvMNtNtB1h_14syntax_factory12constructorsNtB2z_13SyntaxFactory10block_exprB1e_E0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1y_9generated5nodes4StmtENCINvMNtNtB1y_14syntax_factory12constructorsNtB2Q_13SyntaxFactory10block_exprB1v_E0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBW_9generated5nodes4StmtENCINvMNtNtBW_14syntax_factory12constructorsNtB2d_13SyntaxFactory10block_exprBT_E0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i
  %.sroa.0.0.i.i.i = phi ptr [ null, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i ], [ null, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1y_9generated5nodes4StmtENCINvMNtNtB1y_14syntax_factory12constructorsNtB2Q_13SyntaxFactory10block_exprB1v_E0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i ], [ %.val.i.i.i.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBW_9generated5nodes4StmtENCINvMNtNtBW_14syntax_factory12constructorsNtB2d_13SyntaxFactory10block_exprBT_E0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i ] ; 4 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i.i, null
  %.not16.i = icmp eq ptr %.sroa.0.0.i.i.i, null  ; 2 uses
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes4StmtENCINvMNtNtB1h_14syntax_factory12constructorsNtB2z_13SyntaxFactory10block_exprB1e_E0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br i1 %.not16.i, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes4StmtENCINvMNtNtB1h_14syntax_factory12constructorsNtB2z_13SyntaxFactory10block_exprB1e_E0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i
  br i1 %.not16.i, label %_RNvXNtCscFGNKo4Sl5v_9itertools11zip_longestINtB2_10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2u_3ast11AstChildrenNtNtNtB49_9generated5nodes4StmtENCINvMNtNtB49_14syntax_factory12constructorsNtB5a_13SyntaxFactory10block_exprB46_E0EENtNtNtB3p_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit, label %bb.aj

bb.u:                                             ; preds = %bb.r
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27, !noalias !104
  unreachable

.body:                                            ; preds = %.thread43, %bb.r, %bb.q, %.body.i, %bb.v, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.ah ], [ %i.bo, %.thread43 ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.r ], [ %eh.lpad-body.i, %bb.q ], [ %i.ax, %bb.v ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11zip_longest10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtB4_4iter8adapters3map3MapINtNtB30_3ast11AstChildrenNtNtNtB4p_9generated5nodes4StmtENCINvMNtNtB4p_14syntax_factory12constructorsNtB5q_13SyntaxFactory10block_exprB4m_E0EEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #28
          to label %.body4 unwind label %bb.ai

bb.v:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i12
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvXNtCscFGNKo4Sl5v_9itertools11zip_longestINtB2_10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2u_3ast11AstChildrenNtNtNtB49_9generated5nodes4StmtENCINvMNtNtB49_14syntax_factory12constructorsNtB5a_13SyntaxFactory10block_exprB46_E0EENtNtNtB3p_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.t, %.noexc18
  %i.ay = load ptr, ptr %i.h, align 8, !alias.scope !128, !noundef !9
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEECscA5P7HRgTCP_15ide_diagnostics.exit.i, label %bb.w

bb.w:                                             ; preds = %_RNvXNtCscFGNKo4Sl5v_9itertools11zip_longestINtB2_10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2u_3ast11AstChildrenNtNtNtB49_9generated5nodes4StmtENCINvMNtNtB49_14syntax_factory12constructorsNtB5a_13SyntaxFactory10block_exprB46_E0EENtNtNtB3p_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEECscA5P7HRgTCP_15ide_diagnostics.exit.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val2.i = load i64, ptr %i.e, align 8, !range !29, !alias.scope !135, !noundef !9
  %.val3.i = load ptr, ptr %i.k, align 8, !alias.scope !135 ; 3 uses
  %i.bb = icmp eq i64 %.val2.i, 0
  %i.bc = icmp eq ptr %.val3.i, null
  %or.cond.i.i.i = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %or.cond.i.i.i, label %.body4, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bd = getelementptr inbounds nuw i8, ptr %.val3.i, i64 48 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !noundef !9
  %i.bf = add i32 %i.be, -1                       ; 2 uses
  store i32 %i.bf, ptr %i.bd, align 4
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.z, label %.body4

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i) #26
          to label %.body4 unwind label %bb.ac

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEECscA5P7HRgTCP_15ide_diagnostics.exit.i: ; preds = %bb.w, %_RNvXNtCscFGNKo4Sl5v_9itertools11zip_longestINtB2_10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2u_3ast11AstChildrenNtNtNtB49_9generated5nodes4StmtENCINvMNtNtB49_14syntax_factory12constructorsNtB5a_13SyntaxFactory10block_exprB46_E0EENtNtNtB3p_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit
  %.val.i = load i64, ptr %i.e, align 8, !range !29, !alias.scope !135, !noundef !9
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !135 ; 3 uses
  %i.bh = icmp eq i64 %.val.i, 0
  %i.bi = icmp eq ptr %.val1.i, null
  %or.cond.i.i5.i = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond.i.i5.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11zip_longest10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtB4_4iter8adapters3map3MapINtNtB30_3ast11AstChildrenNtNtNtB4p_9generated5nodes4StmtENCINvMNtNtB4p_14syntax_factory12constructorsNtB5q_13SyntaxFactory10block_exprB4m_E0EEECscA5P7HRgTCP_15ide_diagnostics.exit, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEECscA5P7HRgTCP_15ide_diagnostics.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1.i, i64 48 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !noundef !9
  %i.bl = add i32 %i.bk, -1                       ; 2 uses
  store i32 %i.bl, ptr %i.bj, align 4
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.ab, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11zip_longest10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtB4_4iter8adapters3map3MapINtNtB30_3ast11AstChildrenNtNtNtB4p_9generated5nodes4StmtENCINvMNtNtB4p_14syntax_factory12constructorsNtB5q_13SyntaxFactory10block_exprB4m_E0EEECscA5P7HRgTCP_15ide_diagnostics.exit

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i) #26
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11zip_longest10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtB4_4iter8adapters3map3MapINtNtB30_3ast11AstChildrenNtNtNtB4p_9generated5nodes4StmtENCINvMNtNtB4p_14syntax_factory12constructorsNtB5q_13SyntaxFactory10block_exprB4m_E0EEECscA5P7HRgTCP_15ide_diagnostics.exit

bb.ac:                                            ; preds = %bb.z
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ad:                                            ; preds = %bb.s
  invoke void @_RNvMs_NtNtCsjJXvCMGntp8_6syntax13syntax_editor7mappingNtB4_20SyntaxMappingBuilder8map_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.0.0.i.i, ptr noundef nonnull %.sroa.0.0.i.i.i)
          to label %bb.af unwind label %.thread43

.thread43:                                        ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %bb.s
  store i64 1, ptr %i.d, align 8
  store ptr %.sroa.0.0.i.i, ptr %.sroa.9.0..sroa_idx32, align 8
  store ptr null, ptr %.sroa.12.0..sroa_idx33, align 8
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 189 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #25
          to label %bb.ag unwind label %bb.ah

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.b

bb.ag:                                            ; preds = %bb.ae
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools14either_or_both12EitherOrBothINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #28
          to label %.body unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.body
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

.noexc18:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i12, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvXNtCscFGNKo4Sl5v_9itertools11zip_longestINtB2_10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2u_3ast11AstChildrenNtNtNtB49_9generated5nodes4StmtENCINvMNtNtB49_14syntax_factory12constructorsNtB5a_13SyntaxFactory10block_exprB46_E0EENtNtNtB3p_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit

bb.aj:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 48 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !noalias !136, !noundef !9
  %i.bt = add i32 %i.bs, -1                       ; 2 uses
  store i32 %i.bt, ptr %i.br, align 4, !noalias !136
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i12, label %.noexc18

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i12: ; preds = %bb.aj
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i.i.i) #26
          to label %.noexc18 unwind label %bb.v

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11zip_longest10ZipLongestINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtNtNtB4_4iter8adapters3map3MapINtNtB30_3ast11AstChildrenNtNtNtB4p_9generated5nodes4StmtENCINvMNtNtB4p_14syntax_factory12constructorsNtB5q_13SyntaxFactory10block_exprB4m_E0EEECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.ab, %bb.aa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEECscA5P7HRgTCP_15ide_diagnostics.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.body4:                                           ; preds = %.body, %bb.z, %bb.y, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ba, %bb.x ], [ %i.ba, %bb.z ], [ %i.ba, %bb.y ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs8Xq8PKFYOms_3hir4TypeNtNtCsbSS6DM8SDEO_5alloc6string6StringEEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !139, !noundef !9
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %bb.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtCs8Xq8PKFYOms_3hir4TypeNtNtCsbSS6DM8SDEO_5alloc6string6StringEECscA5P7HRgTCP_15ide_diagnostics.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtCs8Xq8PKFYOms_3hir4TypeNtNtCsbSS6DM8SDEO_5alloc6string6StringEECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtCs8Xq8PKFYOms_3hir4TypeNtNtCsbSS6DM8SDEO_5alloc6string6StringEECscA5P7HRgTCP_15ide_diagnostics.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB12_7flatten7FlatMapINtBE_8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB2f_11AstChildrenNtB2b_4StmtENCNvMs3_NtB2f_8node_extNtB2b_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EEEB4B_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !139, !noundef !9 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_7flatten7FlatMapINtNtB4_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB21_11AstChildrenNtB1X_4StmtENCNvMs3_NtB21_8node_extNtB1X_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EEB4n_.exit, label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_7flatten7FlatMapINtNtB4_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB21_11AstChildrenNtB1X_4StmtENCNvMs3_NtB21_8node_extNtB1X_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EEB4n_.exit: ; preds = %bb.n, %bb.m, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit14.i.i.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !149 ; 3 uses
  %i.d = icmp eq i64 %i.a, 0
  %i.e = icmp eq ptr %.val10.i.i.i, null
  %or.cond.i.i.i.i.i = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_3map3MapINtNtB4_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListENCNvMs3_NtB1V_8node_extNtB1R_9BlockExpr10statements0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noalias !149, !noundef !9
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4, !noalias !149
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_3map3MapINtNtB4_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListENCNvMs3_NtB1V_8node_extNtB1R_9BlockExpr10statements0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val10.i.i.i) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_3map3MapINtNtB4_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListENCNvMs3_NtB1V_8node_extNtB1R_9BlockExpr10statements0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i unwind label %bb.e, !noalias !149

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val7.i.i.i = load i64, ptr %i.k, align 8, !range !29, !alias.scope !149, !noundef !9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val8.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !149 ; 3 uses
  %i.m = icmp eq i64 %.val7.i.i.i, 0
  %i.n = icmp eq ptr %.val8.i.i.i, null
  %or.cond.i.i.i.i = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.val8.i.i.i, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !noalias !149, !noundef !9
  %i.q = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.q, ptr %i.o, align 4, !noalias !149
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val8.i.i.i) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i unwind label %bb.o, !noalias !149

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_3map3MapINtNtB4_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListENCNvMs3_NtB1V_8node_extNtB1R_9BlockExpr10statements0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5.i.i.i = load i64, ptr %i.s, align 8, !range !29, !alias.scope !149, !noundef !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !149 ; 3 uses
  %i.u = icmp eq i64 %.val5.i.i.i, 0
  %i.v = icmp eq ptr %.val6.i.i.i, null
  %or.cond.i12.i.i.i = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond.i12.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit14.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_3map3MapINtNtB4_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListENCNvMs3_NtB1V_8node_extNtB1R_9BlockExpr10statements0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 48 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !noalias !149, !noundef !9
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.w, align 4, !noalias !149
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit14.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val6.i.i.i) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit14.i.i.i unwind label %bb.l, !noalias !149

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i: ; preds = %bb.l, %bb.g, %bb.f, %bb.e
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.l ], [ %i.j, %bb.g ], [ %i.j, %bb.e ], [ %i.j, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i.i.i = load i64, ptr %i.aa, align 8, !range !29, !alias.scope !149, !noundef !9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val4.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !149 ; 3 uses
  %i.ac = icmp eq i64 %.val3.i.i.i, 0
  %i.ad = icmp eq ptr %.val4.i.i.i, null
  %or.cond.i15.i.i.i = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond.i15.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit17.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 48 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !noalias !149, !noundef !9
  %i.ag = add i32 %i.af, -1                       ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 4, !noalias !149
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit17.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4.i.i.i) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit17.i.i.i unwind label %bb.o, !noalias !149

bb.l:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit14.i.i.i: ; preds = %bb.i, %bb.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_3map3MapINtNtB4_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListENCNvMs3_NtB1V_8node_extNtB1R_9BlockExpr10statements0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load i64, ptr %i.aj, align 8, !range !29, !alias.scope !149, !noundef !9
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !149 ; 3 uses
  %i.al = icmp eq i64 %.val.i.i.i, 0
  %i.am = icmp eq ptr %.val2.i.i.i, null
  %or.cond.i18.i.i.i = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond.i18.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_7flatten7FlatMapINtNtB4_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB21_11AstChildrenNtB1X_4StmtENCNvMs3_NtB21_8node_extNtB1X_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EEB4n_.exit, label %bb.m

end_hunk_0
