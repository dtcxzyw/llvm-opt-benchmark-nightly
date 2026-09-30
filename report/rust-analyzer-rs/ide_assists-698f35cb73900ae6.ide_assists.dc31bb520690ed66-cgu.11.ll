Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.11?download=true
inline.NumInlined: 4635
inline.NumDeleted: 1658
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
@35 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @34, [24 x i8] zeroinitializer }>, align 8
@36 = private unnamed_addr constant [38 x i8] c"assertion failed: start.raw <= end.raw", align 1
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"a\00\00\00\00\00\00\000\00\00\00\09\00\00\00" }>, align 8
@_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL = external local_unnamed_addr global { { { i64 } } }
@38 = private unnamed_addr constant [35 x i8] c"cannot have result handler with try", align 1
@39 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsl_NtCsaMQbKjKCVRW_12tracing_core5fieldNtNtCshzWfHUSfYae_4core3fmt9ArgumentsNtB5_5Value6record }>, align 8
@40 = private unnamed_addr constant [35 x i8] c"continue with value is not possible", align 1
@41 = private unnamed_addr constant [33 x i8] c"try does not have defined expr_ty", align 1
@42 = private unnamed_addr constant [97 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rowan-0.15.19/src/cursor.rs\00", align 1
@43 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @42, [16 x i8] c"`\00\00\00\00\00\00\00\99\03\00\00!\00\00\00" }>, align 8
@44 = private unnamed_addr constant [50 x i8] c"extract_function_empty_selection_is_not_applicable", align 1
@45 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvMs6_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtBc_12FunctionBody17analyze_containers0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE9call_once6vtableBg_, ptr @_RNCNvMs6_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB7_12FunctionBody17analyze_containers0_0Bb_ }>, align 8
@46 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\008\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvMs6_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtBc_12FunctionBody21external_control_flow0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEEE9call_once6vtableBg_, ptr @_RNCNvMs6_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB7_12FunctionBody21external_control_flow0Bb_ }>, align 8
@47 = private unnamed_addr constant [40 x i8] c"external_control_flow_break_and_continue", align 1
@48 = private unnamed_addr constant [35 x i8] c"external_control_flow_return_and_bc", align 1
@49 = private unnamed_addr constant [32 x i8] c"external_control_flow_try_and_bc", align 1
@50 = private unnamed_addr constant [18 x i8] c"ControlFlow::Break", align 1
@51 = private unnamed_addr constant [5 x i8] c"value", align 1
@52 = private unnamed_addr constant [3 x i8] c"Err", align 1
@53 = private unnamed_addr constant [15 x i8] c"ControlFlow<()>", align 1
@54 = private unnamed_addr constant [26 x i8] c"tuple type with 0 elements", align 1
@55 = private unnamed_addr constant [25 x i8] c"tuple type with 1 element", align 1
@_RNvNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_function16extract_functions_010___CALLSITE = hidden global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_function16extract_functions_010___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt5LEVEL = external local_unnamed_addr global { { { i64 } } }
@56 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14apply_demorgan12tail_cb_impl0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEE9call_once6vtableBc_, ptr @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14apply_demorgan12tail_cb_impl0B7_ }>, align 8
@57 = private unnamed_addr constant [21 x i8] c"Apply De Morgan's law", align 1
@58 = private unnamed_addr constant [14 x i8] c"apply_demorgan", align 1
@59 = private unnamed_addr constant [41 x i8] c"$Apply De Morgan's law to `Iterator::\C0\01`\00", align 1
@60 = private unnamed_addr constant [23 x i8] c"apply_demorgan_iterator", align 1
@61 = private unnamed_addr constant [50 x i8] c"/unexpected expression type for variable usage: \C0\00", align 1
@62 = private unnamed_addr constant [44 x i8] c"extract_function_in_braces_is_not_applicable", align 1
@63 = private unnamed_addr constant [15 x i8] c"Extract into...", align 1
@64 = private unnamed_addr constant [16 x i8] c"extract_function", align 1
@65 = private unnamed_addr constant [21 x i8] c"Extract into function", align 1
@66 = private unnamed_addr constant [45 x i8] c"extract_function_in_comment_is_not_applicable", align 1
@67 = private unnamed_addr constant [30 x i8] c"RefExpr::expr() cannot be None", align 1
@68 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"3\00\00\00\00\00\00\005\08\00\00%\00\00\00" }>, align 8
@69 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"3\00\00\00\00\00\00\00?\08\00\00%\00\00\00" }>, align 8
@70 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_function18make_function_name0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8ScopeDefEE9call_once6vtableBc_, ptr @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_function18make_function_name0B7_ }>, align 8
@71 = private unnamed_addr constant [8 x i8] c"fun_name", align 1
@72 = private unnamed_addr constant [3 x i8] c"\C0\C0\00", align 1
@73 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_function22locals_defined_in_body0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEE9call_once6vtableBc_, ptr @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_function22locals_defined_in_body0B7_ }>, align 8
@74 = private unnamed_addr constant [30 x i8] c"Body segment should be an expr", align 1
@75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"3\00\00\00\00\00\00\00\16\07\00\00.\00\00\00" }>, align 8
@76 = private unnamed_addr constant [21 x i8] c"ControlFlow::Continue", align 1
@77 = private unnamed_addr constant [4 x i8] c"self", align 1
@78 = private unnamed_addr constant [40 x i8] c"extract_var_in_comment_is_not_applicable", align 1
@79 = private unnamed_addr constant [3 x i8] c"\00\01\02", align 1
@80 = private unnamed_addr constant [16 x i8] c"extract_variable", align 1
@81 = private unnamed_addr constant [21 x i8] c"Extract into variable", align 1
@82 = private unnamed_addr constant [16 x i8] c"extract_constant", align 1
@83 = private unnamed_addr constant [21 x i8] c"Extract into constant", align 1
@84 = private unnamed_addr constant [14 x i8] c"extract_static", align 1
@85 = private unnamed_addr constant [19 x i8] c"Extract into static", align 1
@86 = private unnamed_addr constant [6 x i8] c"\C0\02\0A\0A\C0\00", align 1
@87 = private unnamed_addr constant [29 x i8] c"not_applicable_non_bool_local", align 1
@88 = private unnamed_addr constant [29 x i8] c"not_applicable_non_bool_const", align 1
@89 = private unnamed_addr constant [30 x i8] c"not_applicable_non_bool_static", align 1
@90 = private unnamed_addr constant [29 x i8] c"not_applicable_non_bool_field", align 1
@91 = private unnamed_addr constant [6 x i8] c"derive", align 1
@92 = private unnamed_addr constant [9 x i8] c"PartialEq", align 1
@93 = private unnamed_addr constant [1 x i8] c" ", align 1
@94 = private unnamed_addr constant [2 x i8] c"Eq", align 1
@95 = private unnamed_addr constant [4 x i8] c"True", align 1
@96 = private unnamed_addr constant [5 x i8] c"False", align 1
@97 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECsiU5vK8fN4ZC_11ide_assists, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCshzWfHUSfYae_4core3anyNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB2_3Any7type_idCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa5zalsa13ZalsaDatabase6zalsasCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase5zalsaCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase9zalsa_mutCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase11zalsa_localCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa8databaseNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_13AsDynDatabase15as_dyn_databaseCsiU5vK8fN4ZC_11ide_assists, ptr @5, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_lru_evictionCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database15synthetic_writeCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_cancellationCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database18cancellation_tokenCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21report_untracked_readCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21ingredient_debug_nameCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database28unwind_if_revision_cancelledCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXsb_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database25zalsa_register_downcaster }>, align 8
@98 = private unnamed_addr constant [41 x i8] c"dont_overwrite_expression_inside_negation", align 1
@99 = private unnamed_addr constant [20 x i8] c"convert_bool_to_enum", align 1
@100 = private unnamed_addr constant [23 x i8] c"Convert boolean to enum", align 1
@101 = private unnamed_addr constant [25 x i8] c"dont_assign_incorrect_ref", align 1
@102 = private unnamed_addr constant [11 x i8] c"Bool::False", align 1
@103 = private unnamed_addr constant [20 x i8] c"remove_else_branches", align 1
@104 = private unnamed_addr constant [22 x i8] c"Remove `else` branches", align 1
@105 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports18used_once_in_scope0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEE9call_once6vtableBc_, ptr @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports18used_once_in_scope0B7_ }>, align 8
@106 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECsiU5vK8fN4ZC_11ide_assists, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCshzWfHUSfYae_4core3anyNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB2_3Any7type_idCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa5zalsa13ZalsaDatabase6zalsasCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase5zalsaCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase9zalsa_mutCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase11zalsa_localCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa8databaseNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_13AsDynDatabase15as_dyn_databaseCsiU5vK8fN4ZC_11ide_assists, ptr @5, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_lru_evictionCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database15synthetic_writeCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_cancellationCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database18cancellation_tokenCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21report_untracked_readCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21ingredient_debug_nameCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database28unwind_if_revision_cancelledCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXsb_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database25zalsa_register_downcaster, ptr @_RNvXs1_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr @6, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase9file_text, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase13set_file_text, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase29set_file_text_with_durability, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase11source_root, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase16file_source_root, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase36set_file_source_root_with_durability, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase31set_source_root_with_durability, ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase12resolve_pathCsiU5vK8fN4ZC_11ide_assists, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase10crates_map, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase18nonce_and_revision, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase11line_column, ptr @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase25zalsa_register_downcaster }>, align 8
@107 = private unnamed_addr constant [21 x i8] c"remove_unused_imports", align 1
@108 = private unnamed_addr constant [25 x i8] c"Remove all unused imports", align 1
@109 = private unnamed_addr constant [25 x i8] c"convert_to_guarded_return", align 1
@110 = private unnamed_addr constant [25 x i8] c"Convert to guarded return", align 1
@_RNvNvMs4_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB7_8FlowKind19make_result_handler10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvMs4_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB9_8FlowKind19make_result_handler10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvMs4_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB7_8FlowKind19make_result_handlers_10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvMs4_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB9_8FlowKind19make_result_handlers_10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvMs4_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB7_8FlowKind7expr_ty10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvMs4_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB9_8FlowKind7expr_ty10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvMsa_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB7_7FunType7make_ty10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvMsa_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB9_7FunType7make_ty10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvMsa_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB7_7FunType7make_tys_10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvMsa_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB9_7FunType7make_tys_10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@111 = private unnamed_addr constant [39 x i8] c"ide_assists::handlers::extract_function", align 1
@112 = private unnamed_addr constant [7 x i8] c"message", align 1
@113 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @112, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@114 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest, ptr @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata, ptr @_RNvYNtNtCsaMQbKjKCVRW_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsiU5vK8fN4ZC_11ide_assists }>, align 8
@115 = private unnamed_addr constant [51 x i8] c"crates/ide-assists/src/handlers/extract_function.rs", align 1
@116 = private unnamed_addr constant [61 x i8] c"event crates/ide-assists/src/handlers/extract_function.rs:120", align 1
@_RNvNvNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_function16extract_functions_010___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00x\00\00\00", ptr @116, [8 x i8] c"=\00\00\00\00\00\00\00", ptr @111, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @113, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_function16extract_functions_010___CALLSITE, ptr @114, ptr @111, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @115, [9 x i8] c"3\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@_RNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_function15path_element_of10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_function15path_element_of10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@117 = private unnamed_addr constant [61 x i8] c"event crates/ide-assists/src/handlers/extract_function.rs:580", align 1
@_RNvNvNvMs4_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB9_8FlowKind19make_result_handler10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00D\02\00\00", ptr @117, [8 x i8] c"=\00\00\00\00\00\00\00", ptr @111, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @113, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvMs4_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB7_8FlowKind19make_result_handler10___CALLSITE, ptr @114, ptr @111, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @115, [9 x i8] c"3\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@118 = private unnamed_addr constant [61 x i8] c"event crates/ide-assists/src/handlers/extract_function.rs:584", align 1
@_RNvNvNvMs4_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB9_8FlowKind19make_result_handlers_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00H\02\00\00", ptr @118, [8 x i8] c"=\00\00\00\00\00\00\00", ptr @111, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @113, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvMs4_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB7_8FlowKind19make_result_handlers_10___CALLSITE, ptr @114, ptr @111, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @115, [9 x i8] c"3\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@119 = private unnamed_addr constant [61 x i8] c"event crates/ide-assists/src/handlers/extract_function.rs:596", align 1
@_RNvNvNvMs4_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB9_8FlowKind7expr_ty10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00T\02\00\00", ptr @119, [8 x i8] c"=\00\00\00\00\00\00\00", ptr @111, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @113, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvMs4_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB7_8FlowKind7expr_ty10___CALLSITE, ptr @114, ptr @111, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @115, [9 x i8] c"3\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@120 = private unnamed_addr constant [62 x i8] c"event crates/ide-assists/src/handlers/extract_function.rs:1784", align 1
@_RNvNvNvMsa_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB9_7FunType7make_ty10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00\F8\06\00\00", ptr @120, [8 x i8] c">\00\00\00\00\00\00\00", ptr @111, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @113, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvMsa_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB7_7FunType7make_ty10___CALLSITE, ptr @114, ptr @111, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @115, [9 x i8] c"3\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@121 = private unnamed_addr constant [62 x i8] c"event crates/ide-assists/src/handlers/extract_function.rs:1788", align 1
@_RNvNvNvMsa_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB9_7FunType7make_tys_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00\FC\06\00\00", ptr @121, [8 x i8] c">\00\00\00\00\00\00\00", ptr @111, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @113, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvMsa_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB7_7FunType7make_tys_10___CALLSITE, ptr @114, ptr @111, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @115, [9 x i8] c"3\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@122 = private unnamed_addr constant [62 x i8] c"event crates/ide-assists/src/handlers/extract_function.rs:1247", align 1
@_RNvNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_function15path_element_of10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00\DF\04\00\00", ptr @122, [8 x i8] c">\00\00\00\00\00\00\00", ptr @111, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @113, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_function15path_element_of10___CALLSITE, ptr @114, ptr @111, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @115, [9 x i8] c"3\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@123 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -8407916533717187642 to ptr), ptr inttoptr (i64 8687281100977841205 to ptr) }>, align 8
@124 = private unnamed_addr constant [4 x i8] zeroinitializer, align 4
@125 = private unnamed_addr constant [38 x i8] c"crates/hir-ty/src/next_solver/fold.rs\00", align 1
@126 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @125, [16 x i8] c"%\00\00\00\00\00\00\00p\00\00\00\15\00\00\00" }>, align 8
@127 = private unnamed_addr constant [17 x i8] c"Semantics { ... }", align 1
@128 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@129 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3mem9alignment9AlignmentNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@130 = private unnamed_addr constant [6 x i8] c"Layout", align 1
@131 = private unnamed_addr constant [4 x i8] c"size", align 1
@132 = private unnamed_addr constant [5 x i8] c"align", align 1
@133 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@134 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@135 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char, ptr @_RNvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@136 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@137 = private unnamed_addr constant [76 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/alloc/src/string.rs\00", align 1
@138 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @137, [16 x i8] c"K\00\00\00\00\00\00\00\89\0B\00\00\0E\00\00\00" }>, align 8
@139 = private unnamed_addr constant [5 x i8] c"Error", align 1
@140 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/text-size-1.1.1/src/traits.rs\00", align 1
@141 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @140, [16 x i8] c"b\00\00\00\00\00\00\00\12\00\00\00\1F\00\00\00" }>, align 8
@142 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9ArrayExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@143 = private unnamed_addr constant [9 x i8] c"ArrayExpr", align 1
@144 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7AsmExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@145 = private unnamed_addr constant [7 x i8] c"AsmExpr", align 1
@146 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AwaitExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@147 = private unnamed_addr constant [9 x i8] c"AwaitExpr", align 1
@148 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10BecomeExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@149 = private unnamed_addr constant [10 x i8] c"BecomeExpr", align 1
@150 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@151 = private unnamed_addr constant [7 x i8] c"BinExpr", align 1
@152 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@153 = private unnamed_addr constant [9 x i8] c"BlockExpr", align 1
@154 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BreakExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@155 = private unnamed_addr constant [9 x i8] c"BreakExpr", align 1
@156 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@157 = private unnamed_addr constant [8 x i8] c"CallExpr", align 1
@158 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CastExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@159 = private unnamed_addr constant [8 x i8] c"CastExpr", align 1
@160 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@161 = private unnamed_addr constant [11 x i8] c"ClosureExpr", align 1
@162 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12ContinueExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@163 = private unnamed_addr constant [12 x i8] c"ContinueExpr", align 1
@164 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9FieldExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@165 = private unnamed_addr constant [9 x i8] c"FieldExpr", align 1
@166 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ForExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@167 = private unnamed_addr constant [7 x i8] c"ForExpr", align 1
@168 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14FormatArgsExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@169 = private unnamed_addr constant [14 x i8] c"FormatArgsExpr", align 1
@170 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@171 = private unnamed_addr constant [6 x i8] c"IfExpr", align 1
@172 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16IncludeBytesExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@173 = private unnamed_addr constant [16 x i8] c"IncludeBytesExpr", align 1
@174 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9IndexExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@175 = private unnamed_addr constant [9 x i8] c"IndexExpr", align 1
@176 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@177 = private unnamed_addr constant [7 x i8] c"LetExpr", align 1
@178 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LiteralNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@179 = private unnamed_addr constant [7 x i8] c"Literal", align 1
@180 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LoopExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@181 = private unnamed_addr constant [8 x i8] c"LoopExpr", align 1
@182 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@183 = private unnamed_addr constant [9 x i8] c"MacroExpr", align 1
@184 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MatchExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@185 = private unnamed_addr constant [9 x i8] c"MatchExpr", align 1
@186 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@187 = private unnamed_addr constant [14 x i8] c"MethodCallExpr", align 1
@188 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12OffsetOfExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@189 = private unnamed_addr constant [12 x i8] c"OffsetOfExpr", align 1
@190 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9ParenExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@191 = private unnamed_addr constant [9 x i8] c"ParenExpr", align 1
@192 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8PathExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@193 = private unnamed_addr constant [8 x i8] c"PathExpr", align 1
@194 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10PrefixExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@195 = private unnamed_addr constant [10 x i8] c"PrefixExpr", align 1
@196 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9RangeExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@197 = private unnamed_addr constant [9 x i8] c"RangeExpr", align 1
@198 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10RecordExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@199 = private unnamed_addr constant [10 x i8] c"RecordExpr", align 1
@200 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7RefExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@201 = private unnamed_addr constant [7 x i8] c"RefExpr", align 1
@202 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10ReturnExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@203 = private unnamed_addr constant [10 x i8] c"ReturnExpr", align 1
@204 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7TryExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@205 = private unnamed_addr constant [7 x i8] c"TryExpr", align 1
@206 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@207 = private unnamed_addr constant [9 x i8] c"TupleExpr", align 1
@208 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14UnderscoreExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@209 = private unnamed_addr constant [14 x i8] c"UnderscoreExpr", align 1
@210 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WhileExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@211 = private unnamed_addr constant [9 x i8] c"WhileExpr", align 1
@212 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8YeetExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@213 = private unnamed_addr constant [8 x i8] c"YeetExpr", align 1
@214 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprNtB6_5Debug3fmtCsiU5vK8fN4ZC_11ide_assists }>, align 8
@215 = private unnamed_addr constant [9 x i8] c"YieldExpr", align 1
@216 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsiU5vK8fN4ZC_11ide_assists, align 8
@217 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -654675508425364404 to ptr), ptr inttoptr (i64 7626636266285069727 to ptr) }>, align 8
@switch.table._RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable = private unnamed_addr constant [3 x ptr] [ptr @80, ptr @82, ptr @84], align 8
@switch.table._RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable.542 = private unnamed_addr constant [3 x i8] c"\10\10\0E", align 8
@switch.table._RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable.543 = private unnamed_addr constant [3 x i8] c"\15\15\13", align 8
@switch.table._RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable.544 = private unnamed_addr constant [3 x ptr] [ptr @81, ptr @83, ptr @85], align 8

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBN_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1C_11SyntaxTokenB1X_EEE6filterNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns_0EB3u_(i64 noundef range(i64 0, 3) %0, ptr %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.not = icmp eq i64 %0, 2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = invoke noundef i16 @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE4kindCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !noundef !4
  %i.g = add i32 %i.f, -1                         ; 2 uses
  store i32 %i.g, ptr %i.e, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i: ; preds = %bb.c
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i16 %i.c, 8
  br i1 %i.i, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noundef !4
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9, label %.sink.split

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9: ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9, %bb.e
  %.sroa.4.0.ph = phi ptr [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9 ], [ undef, %bb.e ], [ %1, %bb.d ]
  %.sroa.03.0.ph = phi i64 [ 2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9 ], [ 2, %bb.e ], [ %0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %.sroa.4.0 = phi ptr [ undef, %bb.a ], [ %.sroa.4.0.ph, %.sink.split ]
  %.sroa.03.0 = phi i64 [ 2, %bb.a ], [ %.sroa.03.0.ph, %.sink.split ]
  %i.n = insertvalue { i64, ptr } poison, i64 %.sroa.03.0, 0
  %i.o = insertvalue { i64, ptr } %i.n, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.o

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.c, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCscAsMj0W7j8b_3std6thread7builderNtB3_7Builder15spawn_uncheckedNCNCNvXs4_CsjJXvCMGntp8_6syntaxINtB1i_5ParseNtNtNtNtB1i_3ast9generated5nodes10SourceFileENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop00zECsiU5vK8fN4ZC_11ide_assists(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, i64 noundef range(i64 0, 3) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.d = load i64, ptr %1, align 8, !range !5, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i8, ptr %i.g, align 8, !range !6, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCscAsMj0W7j8b_3std6thread9lifecycle15spawn_uncheckedNCNCNvXs4_CsjJXvCMGntp8_6syntaxINtB16_5ParseNtNtNtNtB16_3ast9generated5nodes10SourceFileENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop00zECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.d, i64 %i.f, i1 noundef zeroext %i.i, ptr noundef null, i64 noundef %2, ptr noundef %3)
  %i.j = load <2 x ptr>, ptr %i.a, align 16
  %i.k = load ptr, ptr %i.a, align 16, !noundef !4
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.copyload, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store <2 x ptr> %i.j, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCscAsMj0W7j8b_3std6thread7builderNtB3_7Builder15spawn_uncheckedNCNCNvXs4_CsjJXvCMGntp8_6syntaxINtB1i_5ParseNtNtNtNtB1i_3ast9generated5nodes4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop00zECsiU5vK8fN4ZC_11ide_assists(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, i64 noundef range(i64 0, 3) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.d = load i64, ptr %1, align 8, !range !5, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i8, ptr %i.g, align 8, !range !6, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCscAsMj0W7j8b_3std6thread9lifecycle15spawn_uncheckedNCNCNvXs4_CsjJXvCMGntp8_6syntaxINtB16_5ParseNtNtNtNtB16_3ast9generated5nodes4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop00zECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.d, i64 %i.f, i1 noundef zeroext %i.i, ptr noundef null, i64 noundef %2, ptr noundef %3)
  %i.j = load <2 x ptr>, ptr %i.a, align 16
  %i.k = load ptr, ptr %i.a, align 16, !noundef !4
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.copyload, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store <2 x ptr> %i.j, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB6_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE18file_to_module_defNtCs4sl5YdnrCxp_3vfs6FileIdECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl19file_to_module_defs(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull align 8 %i.b, i32 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %i.d, 1
  store i64 %i.h, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !43, !noalias !44, !noundef !4
  %i.k = icmp ugt i64 %i.j, 1
  %i.l = load ptr, ptr %i.a, align 8, !alias.scope !43, !noalias !44, !nonnull !4
  %.sink11.i = select i1 %i.k, ptr %i.l, ptr %i.a
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i, i64 %i.d ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !range !7, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.p = load i32, ptr %i.o, align 4, !noundef !4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %i.p, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ %i.n, %bb.b ], [ 0, %bb.a ]
  invoke void @_RNvXsG_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterANtCsileJQcQObtj_7hir_def10ModuleIdLtj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterANtCsileJQcQObtj_7hir_def10ModuleIdLtj1_ENvYNtCs8Xq8PKFYOms_3hir6ModuleINtNtB4_7convert4FromB1J_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtCsileJQcQObtj_7hir_def10ModuleIdLtj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def10ModuleIdLtj1_EECsiU5vK8fN4ZC_11ide_assists.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def10ModuleIdLtj1_EECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.q

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterANtCsileJQcQObtj_7hir_def10ModuleIdLtj1_ENvYNtCs8Xq8PKFYOms_3hir6ModuleINtNtB4_7convert4FromB1J_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.c
  call void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtCsileJQcQObtj_7hir_def10ModuleIdLtj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
end_hunk_0
begin_hunk_1_@_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable:bb.a
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.lb, !noalias !2123

bb.lb:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i
  %i.adq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.val3.i609 = load ptr, ptr %i.adr, align 8, !alias.scope !2123, !nonnull !4, !noundef !4 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %.val3.i609, i64 48 ; 2 uses
  %i.adt = load i32, ptr %i.ads, align 4, !noalias !2123, !noundef !4
  %i.adu = add i32 %i.adt, -1                     ; 2 uses
  store i32 %i.adu, ptr %i.ads, align 4, !noalias !2123
  %i.adv = icmp eq i32 %i.adu, 0
  br i1 %i.adv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i, label %.body438

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i: ; preds = %bb.lb
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i609) #32
          to label %.body438 unwind label %bb.lc, !noalias !2123

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit572
  %i.adw = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.val1.i608 = load ptr, ptr %i.adw, align 8, !alias.scope !2123, !nonnull !4, !noundef !4 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %.val1.i608, i64 48 ; 2 uses
  %i.ady = load i32, ptr %i.adx, align 4, !noalias !2123, !noundef !4
  %i.adz = add i32 %i.ady, -1                     ; 2 uses
  store i32 %i.adz, ptr %i.adx, align 4, !noalias !2123
  %i.aea = icmp eq i32 %i.adz, 0
  br i1 %i.aea, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i608) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.dm

bb.lc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i
  %i.aeb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !2123
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit684

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit684: ; preds = %.invoke, %bb.eb, %bb.dy, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit55.i, %.noexc436, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit682, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtBG_10filter_map9FilterMapNtNtCs9GitHPCrz2Q_5rowan6cursor8PreorderNCNvMs4_B29_NtB29_10SyntaxNode11descendants0ENvYINtNtB2b_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2X_E4fromENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variables1_0EEB5r_.exit459, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.aec = getelementptr inbounds nuw i8, ptr %i.kq, i64 48 ; 2 uses
  %i.aed = load i32, ptr %i.aec, align 8, !noundef !4
  %i.aee = add i32 %i.aed, -1                     ; 2 uses
  store i32 %i.aee, ptr %i.aec, align 8
  %i.aef = icmp eq i32 %i.aee, 0
  br i1 %i.aef, label %bb.ld, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit614

bb.ld:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit684
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.kq) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit614 unwind label %bb.cu

bb.le:                                            ; preds = %bb.kx
  %i.aeg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ai) #34
          to label %.body615 unwind label %bb.y

bb.lf:                                            ; preds = %bb.kx
  %i.aeh = extractvalue { i32, i32 } %i.adg, 0
  %i.aei = extractvalue { i32, i32 } %i.adg, 1
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ai)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.aej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ai)
          to label %.body615 unwind label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.aek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.lf
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ai)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists.exit unwind label %.loopexit.split-lp852

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.ael = invoke { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aw)
          to label %bb.li unwind label %.loopexit.split-lp852 ; 2 uses

bb.li:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists.exit
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.aen = invoke { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aem)
          to label %bb.lj unwind label %.loopexit.split-lp852 ; 2 uses

bb.lj:                                            ; preds = %bb.li
  %i.aeo = extractvalue { i32, i32 } %i.ael, 1
  %i.aep = extractvalue { i32, i32 } %i.ael, 0
  %i.aeq = extractvalue { i32, i32 } %i.aen, 0
  %i.aer = extractvalue { i32, i32 } %i.aen, 1
  %..i.i618 = call noundef i32 @llvm.umin.i32(i32 %i.aeq, i32 %i.aep) ; 2 uses
  %..i2.i619 = call noundef i32 @llvm.umax.i32(i32 %i.aer, i32 %i.aeo) ; 2 uses
  %.not.i620 = icmp ugt i32 %..i.i618, %..i2.i619
  br i1 %.not.i620, label %bb.lk, label %bb.ll, !prof !16

bb.lk:                                            ; preds = %bb.lj
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #36
          to label %.noexc621 unwind label %.loopexit.split-lp852

.noexc621:                                        ; preds = %bb.lk
  unreachable

bb.ll:                                            ; preds = %bb.lj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %cond = icmp eq i64 %i.abk, 29
  br i1 %cond, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.aes = load i8, ptr %i.aj, align 1, !range !6
  %i.aet = trunc nuw i8 %i.aes to i1
  %or.cond5 = select i1 %.not, i1 true, i1 %i.aet
  br i1 %or.cond5, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split, label %bb.lr

bb.ln:                                            ; preds = %bb.ll
  %i.aeu = invoke fastcc noundef ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token(ptr %.val309748835, i16 noundef 80)
          to label %bb.lo unwind label %.loopexit.split-lp852 ; 4 uses

bb.lo:                                            ; preds = %bb.ln
  %i.aev = icmp ne ptr %i.aeu, null
  %i.aew = zext i1 %i.aev to i8
  store i8 %i.aew, ptr %i.ag, align 1
  %i.aex = icmp eq ptr %i.aeu, null
  br i1 %i.aex, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aeu, i64 48 ; 2 uses
  %i.aez = load i32, ptr %i.aey, align 4, !noundef !4
  %i.afa = add i32 %i.aez, -1                     ; 2 uses
  store i32 %i.afa, ptr %i.aey, align 4
  %i.afb = icmp eq i32 %i.afa, 0
  br i1 %i.afb, label %bb.lq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit

bb.lq:                                            ; preds = %bb.lp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aeu) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit unwind label %.loopexit.split-lp852

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split: ; preds = %bb.lr, %bb.ls, %bb.lt, %bb.lm
  %.sink1290 = phi i8 [ 0, %bb.lm ], [ 0, %bb.lr ], [ %.sroa.497.0.copyload, %bb.lt ], [ 0, %bb.ls ]
  store i8 %.sink1290, ptr %i.ag, align 1
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split, %bb.lq, %bb.lo, %bb.lp
  %i.afc = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.afe = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aff = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.99.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.afg = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.afh = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.afi = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.afj = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.afk = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.afl = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.afn = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.afo = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.afp = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.afq = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.afr = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.afs = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.aft = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.afu = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.afv = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.afw = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.afx = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  br label %bb.lu

bb.lr:                                            ; preds = %bb.lm
  %i.afy = load i32, ptr %i.aak, align 8, !range !32, !noundef !4
  %.not180 = icmp eq i32 %i.afy, -1
  br i1 %.not180, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.afz = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.095.0.copyload = load i32, ptr %i.afz, align 8 ; 2 uses
  %i.aga = icmp ne i32 %.sroa.095.0.copyload, 27
  call void @llvm.assume(i1 %i.aga)
  %i.agb = icmp eq i32 %.sroa.095.0.copyload, 14
  br i1 %i.agb, label %bb.lt, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split

bb.lt:                                            ; preds = %bb.ls
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afz, i64 24
  %.sroa.497.0.copyload = load i8, ptr %.sroa.497.0..sroa_idx, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split

bb.lu:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit, %.backedge
  %.sroa.075.0.idx1003 = phi i64 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit ], [ %.sroa.075.0.add, %.backedge ] ; 7 uses
  %.sroa.075.0.ptr1004 = getelementptr inbounds nuw i8, ptr @79, i64 %.sroa.075.0.idx1003 ; 2 uses
  %.sroa.075.0.add = add nuw nsw i64 %.sroa.075.0.idx1003, 1 ; 2 uses
  %.sroa.075.0.ptr.val = load i8, ptr %.sroa.075.0.ptr1004, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !2124)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.an, ptr %i.e, align 8, !noalias !2125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2125
  %.val8.i = load ptr, ptr %i.an, align 8, !alias.scope !2124, !noalias !2126, !nonnull !4, !noundef !4 ; 3 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %.val8.i, i64 48 ; 4 uses
  %i.agd = load i32, ptr %i.agc, align 4, !noalias !2126, !noundef !4 ; 2 uses
  %i.age = icmp eq i32 %i.agd, -1
  br i1 %i.age, label %bb.lv, label %bb.lw, !prof !16

bb.lv:                                            ; preds = %bb.lu
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #37
          to label %.noexc630 unwind label %.loopexit.split-lp852

.noexc630:                                        ; preds = %bb.lv
  unreachable

bb.lw:                                            ; preds = %bb.lu
  %i.agf = add nuw i32 %i.agd, 1
  store i32 %i.agf, ptr %i.agc, align 4, !noalias !2126
  store ptr %.val8.i, ptr %i.d, align 8, !noalias !2125
  store i8 0, ptr %i.afc, align 8, !noalias !2125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2127
  store ptr %i.afd, ptr %i.b, align 8, !noalias !2127
  store ptr %i.e, ptr %i.afe, align 8, !noalias !2127
  store ptr %i.afc, ptr %i.aff, align 8, !noalias !2127
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1F_B1D_6parentENvYINtNtB1H_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtBc_7convert4FromB1D_E4fromENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvXs0_NtB8_10take_whileINtB5o_9TakeWhileppEB4v_8try_fold5checkB2J_uINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable6AnchorENCNvMs_B74_B72_4from0NCINvNvB4v_8find_map5checkB2J_B72_NCB8a_s_0E0E0IB6o_B6n_EEB78_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %.noexc.i625 unwind label %bb.lx, !noalias !2126

.noexc.i625:                                      ; preds = %bb.lw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2127
  %i.agg = load i64, ptr %i.c, align 8, !range !2128, !noalias !2127, !noundef !4 ; 3 uses
  %.not.i.i626 = icmp eq i64 %i.agg, -2
  br i1 %.not.i.i626, label %.thread.i, label %bb.ma

.thread.i:                                        ; preds = %.noexc.i625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2127
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable6AnchorEEB1m_.exit.i

bb.lx:                                            ; preds = %bb.lw
  %i.agh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val12.i = load ptr, ptr %i.d, align 8, !noalias !2125, !noundef !4 ; 3 uses
  %i.agi = icmp eq ptr %.val12.i, null
  br i1 %i.agi, label %.body615, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.agj = getelementptr inbounds nuw i8, ptr %.val12.i, i64 48 ; 2 uses
  %i.agk = load i32, ptr %i.agj, align 4, !noalias !2126, !noundef !4
  %i.agl = add i32 %i.agk, -1                     ; 2 uses
  store i32 %i.agl, ptr %i.agj, align 4, !noalias !2126
  %i.agm = icmp eq i32 %i.agl, 0
  br i1 %i.agm, label %bb.lz, label %.body615

bb.lz:                                            ; preds = %bb.ly
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val12.i) #32
          to label %.body615 unwind label %bb.ns, !noalias !2126

bb.ma:                                            ; preds = %.noexc.i625
  %.sroa.99.0.copyload11.i = load ptr, ptr %.sroa.99.0..sroa_idx10.i, align 8, !noalias !2129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2127
  %.not.i627 = icmp eq i64 %i.agg, -1
  %spec.select56.i = select i1 %.not.i627, ptr undef, ptr %.sroa.99.0.copyload11.i
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable6AnchorEEB1m_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable6AnchorEEB1m_.exit.i: ; preds = %bb.ma, %.thread.i
  %.sroa.0.032.i = phi i64 [ %i.agg, %bb.ma ], [ -1, %.thread.i ] ; 5 uses
  %.sroa.9.030.i = phi ptr [ %spec.select56.i, %bb.ma ], [ undef, %.thread.i ] ; 7 uses
  %.val11.i = load ptr, ptr %i.d, align 8, !noalias !2125, !noundef !4 ; 3 uses
  %i.agn = icmp eq ptr %.val11.i, null
  br i1 %i.agn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2l_B2j_6parentENvYINtNtB2n_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2j_E4fromENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variableNtB5i_6Anchor4from0EEB5m_.exit23.i, label %bb.mb

bb.mb:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable6AnchorEEB1m_.exit.i
  %i.ago = getelementptr inbounds nuw i8, ptr %.val11.i, i64 48 ; 2 uses
  %i.agp = load i32, ptr %i.ago, align 4, !noalias !2126, !noundef !4
  %i.agq = add i32 %i.agp, -1                     ; 2 uses
  store i32 %i.agq, ptr %i.ago, align 4, !noalias !2126
  %i.agr = icmp eq i32 %i.agq, 0
  br i1 %i.agr, label %bb.mc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2l_B2j_6parentENvYINtNtB2n_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2j_E4fromENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variableNtB5i_6Anchor4from0EEB5m_.exit23.i

bb.mc:                                            ; preds = %bb.mb
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val11.i) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2l_B2j_6parentENvYINtNtB2n_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2j_E4fromENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variableNtB5i_6Anchor4from0EEB5m_.exit23.i unwind label %.loopexit, !noalias !2126

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %.loopexit, %bb.nn, %bb.nm, %.body.i, %bb.mo, %bb.mn
  %.pn.i628 = phi { ptr, i32 } [ %i.ahg, %bb.mn ], [ %eh.lpad-body.i, %bb.nn ], [ %eh.lpad-body.i, %bb.nm ], [ %eh.lpad-body.i, %.body.i ], [ %i.ahg, %bb.mo ], [ %lpad.loopexit, %.loopexit ] ; 3 uses
  %i.ags = icmp eq i64 %.sroa.0.032.i, -1
  br i1 %i.ags, label %.body615, label %bb.md

bb.md:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.030.i) ]
  %i.agt = getelementptr inbounds nuw i8, ptr %.sroa.9.030.i, i64 48 ; 2 uses
  %i.agu = load i32, ptr %i.agt, align 4, !noalias !2126, !noundef !4
  %i.agv = add i32 %i.agu, -1                     ; 2 uses
  store i32 %i.agv, ptr %i.agt, align 4, !noalias !2126
  %i.agw = icmp eq i32 %i.agv, 0
  br i1 %i.agw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i25.i, label %.body615

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i25.i: ; preds = %bb.md
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.9.030.i) #32
          to label %.body615 unwind label %bb.ns, !noalias !2126

.loopexit:                                        ; preds = %bb.mc, %bb.nq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit.i.thread: ; preds = %bb.mi
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body615

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2l_B2j_6parentENvYINtNtB2n_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2j_E4fromENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variableNtB5i_6Anchor4from0EEB5m_.exit23.i: ; preds = %bb.mc, %bb.mb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable6AnchorEEB1m_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2125
  switch i8 %.sroa.075.0.ptr.val, label %default.unreachable.i [
    i8 1, label %bb.me
    i8 2, label %bb.mf
    i8 0, label %bb.mg
  ]

default.unreachable.i:                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2l_B2j_6parentENvYINtNtB2n_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2j_E4fromENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variableNtB5i_6Anchor4from0EEB5m_.exit23.i
  unreachable

bb.me:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2l_B2j_6parentENvYINtNtB2n_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2j_E4fromENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variableNtB5i_6Anchor4from0EEB5m_.exit23.i
  %.not3.i = icmp eq i64 %.sroa.0.032.i, -1
  br i1 %.not3.i, label %bb.mh, label %bb.mg

bb.mf:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2l_B2j_6parentENvYINtNtB2n_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2j_E4fromENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variableNtB5i_6Anchor4from0EEB5m_.exit23.i
  %.not2.i = icmp eq i64 %.sroa.0.032.i, -1
  br i1 %.not2.i, label %bb.mh, label %bb.mg

bb.mg:                                            ; preds = %bb.mf, %bb.me, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2l_B2j_6parentENvYINtNtB2n_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2j_E4fromENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variableNtB5i_6Anchor4from0EEB5m_.exit23.i
  %i.agx = ptrtoint ptr %.sroa.9.030.i to i64
  br label %bb.nu

bb.mh:                                            ; preds = %bb.mf, %bb.me
  %i.agy = load i32, ptr %i.agc, align 4, !noalias !2126, !noundef !4 ; 2 uses
  %i.agz = icmp eq i32 %i.agy, -1
  br i1 %i.agz, label %bb.mi, label %bb.mj, !prof !16

bb.mi:                                            ; preds = %bb.mh
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #37
          to label %.noexc27.i unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit.i.thread, !noalias !2126

.noexc27.i:                                       ; preds = %bb.mi
  unreachable

bb.mj:                                            ; preds = %bb.mh
  %i.aha = add nuw i32 %i.agy, 1
  store i32 %i.aha, ptr %i.agc, align 4, !noalias !2126
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeINtNtB13_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable6AnchorENvYB1G_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1G_B3C_NCNvMs_B3E_B3C_4froms0_0E0E0B3I_.exit.thread.i.i, %bb.mj
  %.val.i.i.i5254.i.i = phi ptr [ %.val.i.i.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeINtNtB13_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable6AnchorENvYB1G_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1G_B3C_NCNvMs_B3E_B3C_4froms0_0E0E0B3I_.exit.thread.i.i ], [ %.val8.i, %bb.mj ] ; 9 uses
  %i.ahb = getelementptr i8, ptr %.val.i.i.i5254.i.i, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.ahb, align 8, !noalias !2130, !noundef !4 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.mq, label %bb.mk

bb.mk:                                            ; preds = %.lr.ph.i.i
  %i.ahc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 48 ; 2 uses
  %i.ahd = load i32, ptr %i.ahc, align 4, !noalias !2130, !noundef !4 ; 2 uses
  %i.ahe = icmp eq i32 %i.ahd, -1
  br i1 %i.ahe, label %bb.mm, label %bb.ml, !prof !16

bb.ml:                                            ; preds = %bb.mk
  %i.ahf = add nuw i32 %i.ahd, 1
  store i32 %i.ahf, ptr %i.ahc, align 4, !noalias !2130
  br label %bb.mq

bb.mm:                                            ; preds = %bb.mk
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #37
          to label %.noexc.i.i.i unwind label %bb.mn, !noalias !2130

.noexc.i.i.i:                                     ; preds = %bb.mm
  unreachable

bb.mn:                                            ; preds = %bb.mm
  %i.ahg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %.val.i.i.i5254.i.i, i64 48 ; 2 uses
  %i.ahi = load i32, ptr %i.ahh, align 4, !noalias !2130, !noundef !4
  %i.ahj = add i32 %i.ahi, -1                     ; 2 uses
  store i32 %i.ahj, ptr %i.ahh, align 4, !noalias !2130
  %i.ahk = icmp eq i32 %i.ahj, 0
  br i1 %i.ahk, label %bb.mo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit.i

bb.mo:                                            ; preds = %bb.mn
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i5254.i.i) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.mp, !noalias !2130

bb.mp:                                            ; preds = %bb.mo
  %i.ahl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !2130
  unreachable

bb.mq:                                            ; preds = %bb.ml, %.lr.ph.i.i
  %i.ahm = getelementptr inbounds nuw i8, ptr %.val.i.i.i5254.i.i, i64 48 ; 8 uses
end_hunk_1
begin_hunk_2_@_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable:bb.a
  %i.ajw = add i32 %i.ajv, -1                     ; 2 uses
  store i32 %i.ajw, ptr %i.aju, align 4
  %i.ajx = icmp eq i32 %i.ajw, 0
  br i1 %i.ajx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i634, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit636

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i634: ; preds = %bb.nt
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val232) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit636 unwind label %bb.ke

bb.nu:                                            ; preds = %bb.nr, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit33.i, %bb.mg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i37.i
  %.sroa.8.1 = phi i64 [ %.sroa.8.0778, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit33.i ], [ %i.agx, %bb.mg ], [ %.sroa.8.0778, %bb.nr ], [ %.sroa.8.0778, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i37.i ] ; 2 uses
  %.sroa.0765.1 = phi i64 [ %.sroa.0765.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit33.i ], [ %.sroa.0.032.i, %bb.mg ], [ %.sroa.0765.0, %bb.nr ], [ %.sroa.0765.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i37.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not183 = icmp eq i64 %.sroa.0765.1, -1
  br i1 %.not183, label %.backedge, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 %.sroa.0765.1, ptr %i.af, align 8
  store i64 %.sroa.8.1, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.ajy = icmp eq i64 %.sroa.075.0.idx1003, 0
  br i1 %i.ajy, label %bb.nx, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.ajz = inttoptr i64 %.sroa.8.1 to ptr
  %i.aka = load i32, ptr %i.aak, align 8, !range !32, !noundef !4
  %.not184 = icmp eq i32 %i.aka, -1
  br i1 %.not184, label %bb.nz, label %bb.ny

bb.nx:                                            ; preds = %bb.nv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ok unwind label %.loopexit856

bb.ny:                                            ; preds = %bb.nw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5106.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.aak, i64 12, i1 false)
  %i.akb = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4 ; 3 uses
  store ptr %i.akb, ptr %i.ad, align 8
  %i.akc = load i8, ptr %i.ag, align 1, !range !6, !noundef !4
  %i.akd = trunc nuw i8 %i.akc to i1
  br i1 %i.akd, label %bb.oj, label %bb.oa

bb.nz:                                            ; preds = %bb.nw, %bb.oj
  %.val329 = phi ptr [ %.val329.pre, %bb.oj ], [ %i.ajz, %bb.nw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.ake = getelementptr inbounds nuw i8, ptr %.val329, i64 48 ; 2 uses
  %i.akf = load i32, ptr %i.ake, align 4, !noundef !4
  %i.akg = add i32 %i.akf, -1                     ; 2 uses
  store i32 %i.akg, ptr %i.ake, align 4
  %i.akh = icmp eq i32 %i.akg, 0
  br i1 %i.akh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.invoke, label %.backedge.sink.split

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.invoke: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit, %bb.nz
  %i.aki = phi ptr [ %.val329, %bb.nz ], [ %.val325, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit ]
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aki) #32
          to label %.backedge.sink.split unwind label %.loopexit851

bb.oa:                                            ; preds = %bb.ny
  %i.akj = invoke noundef zeroext i1 @_RNvNtCsiU5vK8fN4ZC_11ide_assists5utils13is_body_const(ptr noundef nonnull align 8 %i.zj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ak)
          to label %bb.ob unwind label %.loopexit856

.body646:                                         ; preds = %.loopexit856, %.loopexit.split-lp857, %bb.ot, %.body643
  %.pn185.pn = phi { ptr, i32 } [ %.pn185, %.body643 ], [ %i.all, %bb.ot ], [ %lpad.loopexit858, %.loopexit856 ], [ %lpad.loopexit.split-lp859, %.loopexit.split-lp857 ] ; 2 uses
  %.val327 = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %.val327, i64 48 ; 2 uses
  %i.akl = load i32, ptr %i.akk, align 4, !noundef !4
  %i.akm = add i32 %i.akl, -1                     ; 2 uses
  store i32 %i.akm, ptr %i.akk, align 4
  %i.akn = icmp eq i32 %i.akm, 0
  br i1 %i.akn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i640, label %.body615

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i640: ; preds = %.body646
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val327) #32
          to label %.body615 unwind label %bb.y

.loopexit856:                                     ; preds = %bb.nx, %bb.oa, %bb.oe, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i
  %lpad.loopexit858 = landingpad { ptr, i32 }
          cleanup
  br label %.body646

.loopexit.split-lp857:                            ; preds = %bb.ol
  %lpad.loopexit.split-lp859 = landingpad { ptr, i32 }
          cleanup
  br label %.body646

bb.ob:                                            ; preds = %bb.oa
  br i1 %i.akj, label %bb.oc, label %bb.oj

bb.oc:                                            ; preds = %bb.ob
  %.sroa.0108.0.copyload = load i32, ptr %i.akb, align 8 ; 2 uses
  %i.ako = icmp ne i32 %.sroa.0108.0.copyload, 27
  call void @llvm.assume(i1 %i.ako)
  switch i32 %.sroa.0108.0.copyload, label %bb.oe [
    i32 30, label %bb.oj
    i32 14, label %bb.od
  ]

bb.od:                                            ; preds = %bb.oc
  %.sroa.5112.0..sroa.0105.0.copyload.sroa_idx = getelementptr inbounds nuw i8, ptr %i.akb, i64 24
  %.sroa.5112.0.copyload = load i8, ptr %.sroa.5112.0..sroa.0105.0.copyload.sroa_idx, align 8
  %i.akp = trunc nuw i8 %.sroa.5112.0.copyload to i1
  br i1 %i.akp, label %bb.oj, label %bb.oe

bb.oe:                                            ; preds = %bb.oc, %bb.od
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.akq = load ptr, ptr %i.zj, align 8, !nonnull !4, !align !10, !noundef !4
  invoke void @_RNvYNtCs8Xq8PKFYOms_3hir4TypeNtNtCs8K4cjrcxBsw_6hir_ty7display10HirDisplay19display_source_codeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad, ptr noundef nonnull %i.akq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @7, i32 noundef %i.aeh, i32 noundef %i.aei, i1 noundef zeroext false)
          to label %bb.of unwind label %.loopexit856

bb.of:                                            ; preds = %bb.oe
  %i.akr = load i64, ptr %i.ac, align 8, !range !8, !noundef !4
  %i.aks = icmp eq i64 %i.akr, -1
  br i1 %i.aks, label %bb.og, label %bb.oh

bb.og:                                            ; preds = %bb.of
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.oj

bb.oh:                                            ; preds = %bb.of
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.oi

bb.oi:                                            ; preds = %bb.om, %bb.oh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef 15, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.on unwind label %.loopexit861

bb.oj:                                            ; preds = %bb.oc, %bb.ob, %bb.ny, %bb.od, %bb.og
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.val329.pre = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.nz

.backedge.sink.split:                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.invoke, %bb.nz, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %bb.nu
  %i.akt = icmp eq i64 %.sroa.075.0.add, 3
  br i1 %i.akt, label %bb.nt, label %bb.lu

bb.ok:                                            ; preds = %bb.nx
  %i.aku = load i64, ptr %i.v, align 8, !range !5, !noundef !4
  %i.akv = trunc nuw i64 %i.aku to i1
  %i.akw = load i64, ptr %i.afg, align 8, !range !29, !noundef !4 ; 2 uses
  br i1 %i.akv, label %bb.ol, label %bb.om, !prof !16

bb.ol:                                            ; preds = %bb.ok
  %i.akx = load i64, ptr %i.afh, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.akw, i64 %i.akx) #37
          to label %bb.ov unwind label %.loopexit.split-lp857

bb.om:                                            ; preds = %bb.ok
  %i.aky = load ptr, ptr %i.afh, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 %i.akw, ptr %i.ae, align 8
  store ptr %i.aky, ptr %.sroa.4100.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5101.0..sroa_idx, align 8
  br label %bb.oi

.body643:                                         ; preds = %.loopexit861, %.loopexit.split-lp862, %bb.or, %bb.op
  %.pn185 = phi { ptr, i32 } [ %i.ali, %bb.op ], [ %i.alj, %bb.or ], [ %lpad.loopexit863, %.loopexit861 ], [ %lpad.loopexit.split-lp864, %.loopexit.split-lp862 ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae) #34
          to label %.body646 unwind label %bb.y

.loopexit861:                                     ; preds = %bb.oi, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i
  %lpad.loopexit863 = landingpad { ptr, i32 }
          cleanup
  br label %.body643

.loopexit.split-lp862:                            ; preds = %bb.oo
  %lpad.loopexit.split-lp864 = landingpad { ptr, i32 }
          cleanup
  br label %.body643

bb.on:                                            ; preds = %bb.oi
  %i.akz = load i64, ptr %i.u, align 8, !range !5, !noundef !4
  %i.ala = trunc nuw i64 %i.akz to i1
  %i.alb = load i64, ptr %i.afi, align 8, !range !29, !noundef !4 ; 3 uses
  br i1 %i.ala, label %bb.oo, label %switch.lookup, !prof !16

bb.oo:                                            ; preds = %bb.on
  %i.alc = load i64, ptr %i.afj, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.alb, i64 %i.alc) #37
          to label %bb.ov unwind label %.loopexit.split-lp862

switch.lookup:                                    ; preds = %bb.on
  %i.ald = load ptr, ptr %i.afj, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ale = icmp samesign ugt i64 %i.alb, 14
  call void @llvm.assume(i1 %i.ale)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ald, ptr noundef nonnull align 1 dereferenceable(15) @63, i64 15, i1 false)
  store i64 %i.alb, ptr %i.ab, align 8
  store ptr %i.ald, ptr %.sroa.4118.0..sroa_idx, align 8
  store i64 15, ptr %.sroa.5119.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable, i64 %.sroa.075.0.idx1003
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.gep1414 = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable.542, i64 %.sroa.075.0.idx1003
  %switch.load1415 = load i8, ptr %switch.gep1414, align 1
  %i.alf = zext i8 %switch.load1415 to i64
  %switch.gep1416 = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable.543, i64 %.sroa.075.0.idx1003
  %switch.load1417 = load i8, ptr %switch.gep1416, align 1
  %i.alg = zext i8 %switch.load1417 to i64
  %switch.gep1419 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable.544, i64 %.sroa.075.0.idx1003
  %switch.load1420 = load ptr, ptr %switch.gep1419, align 8
  store ptr %switch.load, ptr %i.afk, align 8
  store i64 %i.alf, ptr %i.afl, align 8
  store i8 3, ptr %i.afm, align 8
  store i64 0, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %.sroa.075.0.ptr1004, ptr %i.z, align 8
  store ptr %1, ptr %i.afn, align 8
  store ptr %i.av, ptr %i.afo, align 8
  store ptr %i.aw, ptr %i.afp, align 8
  store ptr %i.an, ptr %i.afq, align 8
  store ptr %i.au, ptr %i.afr, align 8
  store ptr %i.ak, ptr %i.afs, align 8
  store ptr %i.am, ptr %i.aft, align 8
  store ptr %i.aj, ptr %i.afu, align 8
  store ptr %i.ag, ptr %i.afv, align 8
  store ptr %i.ae, ptr %i.afw, align 8
  store ptr %i.af, ptr %i.afx, align 8
  %i.alh = invoke noundef zeroext i1 @_RINvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB5_7Assists9add_groupReNCNvNtNtB7_8handlers16extract_variable16extract_variables4_0EB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load1420, i64 noundef %i.alg, i32 noundef %..i.i618, i32 noundef %..i2.i619, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.z)
          to label %bb.oq unwind label %bb.op     ; 0 uses

bb.op:                                            ; preds = %switch.lookup
  %i.ali = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db7assists10GroupLabelECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #34
          to label %.body643 unwind label %bb.y

bb.oq:                                            ; preds = %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.alj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body643 unwind label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.alk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.oq
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db7assists10GroupLabelECsiU5vK8fN4ZC_11ide_assists.exit unwind label %.loopexit861

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db7assists10GroupLabelECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.ot

bb.ot:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db7assists10GroupLabelECsiU5vK8fN4ZC_11ide_assists.exit
  %i.all = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body646 unwind label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.alm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db7assists10GroupLabelECsiU5vK8fN4ZC_11ide_assists.exit
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit unwind label %.loopexit856

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.val325 = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %.val325, i64 48 ; 2 uses
  %i.alo = load i32, ptr %i.aln, align 4, !noundef !4
  %i.alp = add i32 %i.alo, -1                     ; 2 uses
  store i32 %i.alp, ptr %i.aln, align 4
  %i.alq = icmp eq i32 %i.alp, 0
  br i1 %i.alq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.invoke, label %.backedge.sink.split

bb.ov:                                            ; preds = %bb.oo, %bb.ol
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit636: ; preds = %bb.nt, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br i1 %.not176843, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit656, label %bb.ow

bb.ow:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit636
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val309748835) ]
  %i.alr = getelementptr inbounds nuw i8, ptr %.val309748835, i64 48 ; 2 uses
  %i.als = load i32, ptr %i.alr, align 4, !noundef !4
  %i.alt = add i32 %i.als, -1                     ; 2 uses
  store i32 %i.alt, ptr %i.alr, align 4
  %i.alu = icmp eq i32 %i.alt, 0
  br i1 %i.alu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i654, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit656

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i654: ; preds = %bb.ow
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val309748835) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit656 unwind label %bb.jj

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit656: ; preds = %bb.ow, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit636, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %.val217 = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %.val217, i64 48 ; 2 uses
  %i.alw = load i32, ptr %i.alv, align 4, !noundef !4
  %i.alx = add i32 %i.alw, -1                     ; 2 uses
  store i32 %i.alx, ptr %i.alv, align 4
  %i.aly = icmp eq i32 %i.alx, 0
  br i1 %i.aly, label %bb.ox, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit658

bb.ox:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit656
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val217) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit658 unwind label %bb.jg

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit658: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit656, %bb.ox
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %.val230 = load ptr, ptr %i.rq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %.val230, i64 48 ; 2 uses
  %i.ama = load i32, ptr %i.alz, align 4, !noundef !4
  %i.amb = add i32 %i.ama, -1                     ; 2 uses
  store i32 %i.amb, ptr %i.alz, align 4
  %i.amc = icmp eq i32 %i.amb, 0
  br i1 %i.amc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i659, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit661

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i659: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit658
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val230) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit661 unwind label %bb.la

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit661: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit658, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !2133)
  %.val5.i662 = load ptr, ptr %i.rs, align 8, !alias.scope !2133, !nonnull !4, !noundef !4 ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %.val5.i662, i64 48 ; 2 uses
  %i.ame = load i32, ptr %i.amd, align 4, !noalias !2133, !noundef !4
  %i.amf = add i32 %i.ame, -1                     ; 2 uses
  store i32 %i.amf, ptr %i.amd, align 4, !noalias !2133
  %i.amg = icmp eq i32 %i.amf, 0
  br i1 %i.amg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i666, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i663

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i666: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit661
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val5.i662) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i663 unwind label %bb.oy, !noalias !2133

bb.oy:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i666
  %i.amh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.val3.i667 = load ptr, ptr %i.ami, align 8, !alias.scope !2133, !nonnull !4, !noundef !4 ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %.val3.i667, i64 48 ; 2 uses
  %i.amk = load i32, ptr %i.amj, align 4, !noalias !2133, !noundef !4
  %i.aml = add i32 %i.amk, -1                     ; 2 uses
  store i32 %i.aml, ptr %i.amj, align 4, !noalias !2133
  %i.amm = icmp eq i32 %i.aml, 0
  br i1 %i.amm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i669, label %.body438

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i669: ; preds = %bb.oy
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i667) #32
          to label %.body438 unwind label %bb.oz, !noalias !2133

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i663: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i666, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit661
  %i.amn = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.val1.i664 = load ptr, ptr %i.amn, align 8, !alias.scope !2133, !nonnull !4, !noundef !4 ; 2 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %.val1.i664, i64 48 ; 2 uses
  %i.amp = load i32, ptr %i.amo, align 4, !noalias !2133, !noundef !4
  %i.amq = add i32 %i.amp, -1                     ; 2 uses
  store i32 %i.amq, ptr %i.amo, align 4, !noalias !2133
  %i.amr = icmp eq i32 %i.amq, 0
  br i1 %i.amr, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9.i665, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit673

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9.i665: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i663
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i664) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit673 unwind label %bb.dm

bb.oz:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i669
  %i.ams = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !2133
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit673: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i663, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9.i665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.amt = getelementptr inbounds nuw i8, ptr %i.kq, i64 48 ; 2 uses
  %i.amu = load i32, ptr %i.amt, align 8, !noundef !4
  %i.amv = add i32 %i.amu, -1                     ; 2 uses
  store i32 %i.amv, ptr %i.amt, align 8
  %i.amw = icmp eq i32 %i.amv, 0
  br i1 %i.amw, label %bb.pa, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit675

bb.pa:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit673
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.kq) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit675 unwind label %bb.cu

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit675: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit673, %bb.pa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %.val215 = load ptr, ptr %i.be, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %.val215, i64 48 ; 2 uses
  %i.amy = load i32, ptr %i.amx, align 4, !noundef !4
  %i.amz = add i32 %i.amy, -1                     ; 2 uses
  store i32 %i.amz, ptr %i.amx, align 4
  %i.ana = icmp eq i32 %i.amz, 0
  br i1 %i.ana, label %bb.pb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit402

bb.pb:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit675
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val215) #32
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit402

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit402: ; preds = %bb.pb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit675, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit368, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit340, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8KMergeByINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB1x_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2H_B2F_6parentENvYINtNtB2J_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2F_E4fromENCNvNtB4e_4algo19ancestors_at_offsets_0EECsiU5vK8fN4ZC_11ide_assists.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit400, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i401, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit614, %bb.dk
  %.sroa.0.11 = phi i1 [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit368 ], [ false, %bb.dk ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit614 ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i401 ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit400 ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8KMergeByINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB1x_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2H_B2F_6parentENvYINtNtB2J_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2F_E4fromENCNvNtB4e_4algo19ancestors_at_offsets_0EECsiU5vK8fN4ZC_11ide_assists.exit ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit340 ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit675 ], [ true, %bb.pb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  ret i1 %.sroa.0.11

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit513: ; preds = %bb.hq, %bb.hr
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ue, i64 48 ; 2 uses
  %i.anc = load i32, ptr %i.anb, align 8, !noundef !4
  %i.and = add i32 %i.anc, -1                     ; 2 uses
  store i32 %i.and, ptr %i.anb, align 8
end_hunk_2
