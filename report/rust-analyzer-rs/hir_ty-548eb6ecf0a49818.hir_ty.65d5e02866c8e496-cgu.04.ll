Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.04?download=true
inline.NumInlined: 5206
inline.NumDeleted: 1999
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 29
begin_hunk_0
@891 = private unnamed_addr constant [9 x i8] c"is_unsafe", align 1
@892 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs1X_NtCsgIpRO4v45SJ_7base_db5inputNtB6_5CrateNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@893 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs3_Cs3gTr8JIMkcl_7editionNtB5_7EditionNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@894 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsO_Cs33K2ylI4knu_10hir_expandNtB5_12MacroDefKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@895 = private unnamed_addr constant [10 x i8] c"MacroDefId", align 1
@896 = private unnamed_addr constant [5 x i8] c"krate", align 1
@897 = private unnamed_addr constant [7 x i8] c"edition", align 1
@898 = private unnamed_addr constant [11 x i8] c"local_inner", align 1
@899 = private unnamed_addr constant [21 x i8] c"allow_internal_unsafe", align 1
@900 = private unnamed_addr constant [5 x i8] c"Error", align 1
@901 = private unnamed_addr constant [10 x i8] c"FieldIndex", align 1
@902 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs8K4cjrcxBsw_6hir_ty3mir10FieldIndexNtB6_5Debug3fmtBA_ }>, align 8
@903 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir5LocalENtB6_5Debug3fmtB14_ }>, align 8
@904 = private unnamed_addr constant [13 x i8] c"ConstantIndex", align 1
@905 = private unnamed_addr constant [8 x i8] c"from_end", align 1
@906 = private unnamed_addr constant [4 x i8] c"from", align 1
@907 = private unnamed_addr constant [2 x i8] c"to", align 1
@908 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCsileJQcQObtj_7hir_def9VariantIdNtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@909 = private unnamed_addr constant [8 x i8] c"Downcast", align 1
@910 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@911 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsqiF3OZxLbD_3mbe16macro_call_style15MacroCallStylesNtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@912 = private unnamed_addr constant [11 x i8] c"Declarative", align 1
@913 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro21BuiltinFnLikeExpanderNtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@914 = private unnamed_addr constant [7 x i8] c"BuiltIn", align 1
@915 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtCs33K2ylI4knu_10hir_expand7builtin10attr_macro19BuiltinAttrExpanderNtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@916 = private unnamed_addr constant [11 x i8] c"BuiltInAttr", align 1
@917 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21BuiltinDeriveExpanderNtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@918 = private unnamed_addr constant [13 x i8] c"BuiltInDerive", align 1
@919 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro13EagerExpanderNtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@920 = private unnamed_addr constant [12 x i8] c"BuiltInEager", align 1
@921 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBB_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEENtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@922 = private unnamed_addr constant [20 x i8] c"UnimplementedBuiltIn", align 1
@923 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnEENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@924 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsy_NtCs33K2ylI4knu_10hir_expand10proc_macroNtB5_23CustomProcMacroExpanderNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@925 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs33K2ylI4knu_10hir_expand10proc_macro13ProcMacroKindNtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@926 = private unnamed_addr constant [9 x i8] c"ProcMacro", align 1
@927 = private unnamed_addr constant [4 x i8] c"None", align 1
@928 = private unnamed_addr constant [4 x i8] c"Some", align 1
@929 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefENtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@930 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefENtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@931 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand4name4NameENtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@932 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheNtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@933 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@934 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefEENtNtB7_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@935 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref10MutabilityNtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@936 = private unnamed_addr constant [7 x i8] c"RefType", align 1
@937 = private unnamed_addr constant [8 x i8] c"lifetime", align 1
@938 = private unnamed_addr constant [10 x i8] c"mutability", align 1
@939 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @576, [16 x i8] c"%\00\00\00\00\00\00\00e\00\00\00\0D\00\00\00" }>, align 8
@940 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded8RegistryECs8K4cjrcxBsw_6hir_ty, [16 x i8] c" \02\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvYNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber20on_register_dispatchCs8K4cjrcxBsw_6hir_ty, ptr @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber17register_callsite, ptr @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber7enabled, ptr @_RNvYNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber14max_level_hintCs8K4cjrcxBsw_6hir_ty, ptr @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber8new_span, ptr @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber6record, ptr @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber19record_follows_from, ptr @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber13event_enabled, ptr @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber5event, ptr @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber5enter, ptr @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber4exit, ptr @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber10clone_span, ptr @_RNvYNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber9drop_spanCs8K4cjrcxBsw_6hir_ty, ptr @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber9try_close, ptr @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber12current_span, ptr @_RNvYNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber12downcast_rawCs8K4cjrcxBsw_6hir_ty }>, align 8
@941 = private unnamed_addr constant [39 x i8] c"\0BSize::add: \C0\03 + \C0\13 doesn't fit in u64\00", align 1
@942 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"g\00\00\00\00\00\00\00\AB\03\00\00\0D\00\00\00" }>, align 8
@943 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @75, [16 x i8] c"\1D\00\00\00\00\00\00\00J\0D\00\00\05\00\00\00" }>, align 8
@944 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @75, [16 x i8] c"\1D\00\00\00\00\00\00\00N\0D\00\00\05\00\00\00" }>, align 8
@945 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3map8IndexMapjINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxShENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs8K4cjrcxBsw_6hir_ty, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs3gqD4ldeioo_8indexmap3mapINtB4_8IndexMapjINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxShENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@946 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval9VTableMapNtB6_5Debug3fmtBC_ }>, align 8
@947 = private unnamed_addr constant [16 x i8] c"ComplexMemoryMap", align 1
@948 = private unnamed_addr constant [6 x i8] c"memory", align 1
@949 = private unnamed_addr constant [6 x i8] c"vtable", align 1
@950 = private unnamed_addr constant [39 x i8] c"\0BSize::mul: \C0\03 * \C0\13 doesn't fit in u64\00", align 1
@951 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"g\00\00\00\00\00\00\00\C8\03\00\00\15\00\00\00" }>, align 8
@952 = private unnamed_addr constant [1 x i8] c"+", align 1
@953 = private unnamed_addr constant [1 x i8] c"-", align 1
@954 = private unnamed_addr constant [1 x i8] c"*", align 1
@955 = private unnamed_addr constant [1 x i8] c"/", align 1
@956 = private unnamed_addr constant [1 x i8] c"%", align 1
@957 = private unnamed_addr constant [1 x i8] c"^", align 1
@958 = private unnamed_addr constant [1 x i8] c"&", align 1
@959 = private unnamed_addr constant [1 x i8] c"|", align 1
@960 = private unnamed_addr constant [2 x i8] c"<<", align 1
@961 = private unnamed_addr constant [2 x i8] c">>", align 1
@962 = private unnamed_addr constant [2 x i8] c"==", align 1
@963 = private unnamed_addr constant [1 x i8] c"<", align 1
@964 = private unnamed_addr constant [2 x i8] c"<=", align 1
@965 = private unnamed_addr constant [2 x i8] c"!=", align 1
@966 = private unnamed_addr constant [2 x i8] c">=", align 1
@967 = private unnamed_addr constant [1 x i8] c">", align 1
@968 = private unnamed_addr constant [8 x i8] c"`offset`", align 1
@969 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataENtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@970 = private unnamed_addr constant [13 x i8] c"RustcFieldIdx", align 1
@971 = private unnamed_addr constant [4 x i8] c"Wild", align 1
@972 = private unnamed_addr constant [5 x i8] c"Never", align 1
@973 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8K4cjrcxBsw_6hir_ty, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs33K2ylI4knu_10hir_expand4nameNtB2_4NameNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@974 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtB8_6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check3PatENtB6_5Debug3fmtBY_ }>, align 8
@975 = private unnamed_addr constant [7 x i8] c"Binding", align 1
@976 = private unnamed_addr constant [4 x i8] c"name", align 1
@977 = private unnamed_addr constant [10 x i8] c"subpattern", align 1
@978 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs12_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgsNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@979 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs3T_CsileJQcQObtj_7hir_defNtB6_13EnumVariantIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@980 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check8FieldPatENtB6_5Debug3fmtB19_ }>, align 8
@981 = private unnamed_addr constant [7 x i8] c"Variant", align 1
@982 = private unnamed_addr constant [6 x i8] c"substs", align 1
@983 = private unnamed_addr constant [12 x i8] c"enum_variant", align 1
@984 = private unnamed_addr constant [11 x i8] c"subpatterns", align 1
@985 = private unnamed_addr constant [4 x i8] c"Leaf", align 1
@986 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check3PatNtB6_5Debug3fmtBC_ }>, align 8
@987 = private unnamed_addr constant [11 x i8] c"LiteralBool", align 1
@988 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check3PatENtB6_5Debug3fmtB19_ }>, align 8
@989 = private unnamed_addr constant [2 x i8] c"Or", align 1
@990 = private unnamed_addr constant [4 x i8] c"pats", align 1
@991 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @75, [16 x i8] c"\1D\00\00\00\00\00\00\00R\0D\00\00\05\00\00\00" }>, align 8
@992 = private unnamed_addr constant [75 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/alloc/src/boxed.rs\00", align 1
@993 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @992, [16 x i8] c"J\00\00\00\00\00\00\00`\08\00\00\12\00\00\00" }>, align 8
@994 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyjNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1C_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyjNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtB19_ }>, align 8
@995 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENtB6_5Debug3fmtB19_ }>, align 8
@996 = private unnamed_addr constant [9 x i8] c"VTableMap", align 1
@997 = private unnamed_addr constant [8 x i8] c"ty_to_id", align 1
@998 = private unnamed_addr constant [8 x i8] c"id_to_ty", align 1
@999 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCskVLyBV5N46_15ra_ap_rustc_abi6layout21LayoutCalculatorErroruENtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@1000 = private unnamed_addr constant [7 x i8] c"BadCalc", align 1
@1001 = private unnamed_addr constant [13 x i8] c"HasErrorConst", align 1
@1002 = private unnamed_addr constant [12 x i8] c"HasErrorType", align 1
@1003 = private unnamed_addr constant [14 x i8] c"HasPlaceholder", align 1
@1004 = private unnamed_addr constant [15 x i8] c"InvalidSimdType", align 1
@1005 = private unnamed_addr constant [14 x i8] c"NotImplemented", align 1
@1006 = private unnamed_addr constant [31 x i8] c"RecursiveTypeWithoutIndirection", align 1
@1007 = private unnamed_addr constant [24 x i8] c"TargetLayoutNotAvailable", align 1
@1008 = private unnamed_addr constant [16 x i8] c"UserReprTooSmall", align 1
@1009 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgEECs8K4cjrcxBsw_6hir_ty, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsn_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@1010 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingEECs8K4cjrcxBsw_6hir_ty, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsn_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@1011 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtCsileJQcQObtj_7hir_def10expr_store4path22GenericArgsParenthesesNtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@1012 = private unnamed_addr constant [11 x i8] c"GenericArgs", align 1
@1013 = private unnamed_addr constant [13 x i8] c"has_self_type", align 1
@1014 = private unnamed_addr constant [8 x i8] c"bindings", align 1
@1015 = private unnamed_addr constant [13 x i8] c"parenthesized", align 1
@1016 = private unnamed_addr constant [5 x i8] c"Stack", align 1
@1017 = private unnamed_addr constant [4 x i8] c"Heap", align 1
@1018 = private unnamed_addr constant [7 x i8] c"Invalid", align 1
@1019 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty3mir11OperandKindEBF_, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_11OperandKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@1020 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtB8_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty3mir7MirSpanENtB6_5Debug3fmtBW_ }>, align 8
@1021 = private unnamed_addr constant [7 x i8] c"Operand", align 1
@1022 = private unnamed_addr constant [2 x i8] c"()", align 1
@1023 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbq3eHDLgq0Z_8la_arena5ArenaNtNtCsileJQcQObtj_7hir_def3hir4ExprEECs8K4cjrcxBsw_6hir_ty, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsl_Csbq3eHDLgq0Z_8la_arenaINtB5_5ArenaNtNtCsileJQcQObtj_7hir_def3hir4ExprENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@1024 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbq3eHDLgq0Z_8la_arena5ArenaNtNtCsileJQcQObtj_7hir_def3hir3PatEECs8K4cjrcxBsw_6hir_ty, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsl_Csbq3eHDLgq0Z_8la_arenaINtB5_5ArenaNtNtCsileJQcQObtj_7hir_def3hir3PatENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@1025 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbq3eHDLgq0Z_8la_arena5ArenaNtNtCsileJQcQObtj_7hir_def3hir7BindingEECs8K4cjrcxBsw_6hir_ty, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsl_Csbq3eHDLgq0Z_8la_arenaINtB5_5ArenaNtNtCsileJQcQObtj_7hir_def3hir7BindingENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@1026 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbq3eHDLgq0Z_8la_arena5ArenaNtNtCsileJQcQObtj_7hir_def3hir5LabelEECs8K4cjrcxBsw_6hir_ty, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsl_Csbq3eHDLgq0Z_8la_arenaINtB5_5ArenaNtNtCsileJQcQObtj_7hir_def3hir5LabelENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@1027 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEIB1x_NtB22_4ExprENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs8K4cjrcxBsw_6hir_ty, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEIB14_NtB1z_4ExprENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@1028 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCsileJQcQObtj_7hir_def9BlockIdLtEECs8K4cjrcxBsw_6hir_ty, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsn_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtCsileJQcQObtj_7hir_def9BlockIdLtENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@1029 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackedNtNtB1A_10expr_store9HygieneIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs8K4cjrcxBsw_6hir_ty, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackedNtNtB17_10expr_store9HygieneIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@1030 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_ENtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@1031 = private unnamed_addr constant [5 x i8] c"exprs", align 1
@1032 = private unnamed_addr constant [6 x i8] c"labels", align 1
@1033 = private unnamed_addr constant [14 x i8] c"binding_owners", align 1
@1034 = private unnamed_addr constant [12 x i8] c"block_scopes", align 1
@1035 = private unnamed_addr constant [13 x i8] c"ident_hygiene", align 1
@1036 = private unnamed_addr constant [10 x i8] c"expr_roots", align 1
@1037 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @1031, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @990, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @1014, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @1032, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @1033, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @1034, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @1035, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @1036, [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
@1038 = private unnamed_addr constant [19 x i8] c"ExpressionOnlyStore", align 1
@1039 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\0C\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs1N_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@1040 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroENtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@1041 = private unnamed_addr constant [13 x i8] c"InFileWrapper", align 1
@1042 = private unnamed_addr constant [7 x i8] c"file_id", align 1
@1043 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnENtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@1044 = private unnamed_addr constant [17 x i8] c"TryFromSliceError", align 1
@1045 = private unnamed_addr constant [6 x i8] c"Layout", align 1
@1046 = private unnamed_addr constant [4 x i8] c"size", align 1
@1047 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs1L_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_8AbiAlignNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@1048 = private unnamed_addr constant [5 x i8] c"align", align 1
@1049 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00`\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @_RNvXs2Y_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_11BackendReprNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@1050 = private unnamed_addr constant [12 x i8] c"backend_repr", align 1
@1051 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi11FieldsShapeNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxEEB1p_, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2y_CskVLyBV5N46_15ra_ap_rustc_abiINtB6_11FieldsShapeNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtBX_ }>, align 8
@1052 = private unnamed_addr constant [6 x i8] c"fields", align 1
@1053 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\000\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheENtNtB7_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@1054 = private unnamed_addr constant [13 x i8] c"largest_niche", align 1
@1055 = private unnamed_addr constant [11 x i8] c"uninhabited", align 1
@1056 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi8VariantsNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1j_19RustcEnumVariantIdxEEB1l_, [16 x i8] c"\80\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @_RNvXs34_CskVLyBV5N46_15ra_ap_rustc_abiINtB6_8VariantsNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtBR_19RustcEnumVariantIdxENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtBT_ }>, align 8
@1057 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5AlignENtNtB7_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@1058 = private unnamed_addr constant [14 x i8] c"max_repr_align", align 1
@1059 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsf_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5AlignNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@1060 = private unnamed_addr constant [20 x i8] c"unadjusted_abi_align", align 1
@1061 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_Cs6Oiq5bxG0l0_18ra_ap_rustc_hashesNtB5_6Hash64NtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@1062 = private unnamed_addr constant [18 x i8] c"randomization_seed", align 1
@1063 = private unnamed_addr constant [4 x i8] c"Copy", align 1
@1064 = private unnamed_addr constant [4 x i8] c"Move", align 1
@1065 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts11StoredConstEBH_, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB5_11StoredConstNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@1066 = private unnamed_addr constant [8 x i8] c"Constant", align 1
@1067 = private unnamed_addr constant [5 x i8] c"konst", align 1
@1068 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation16StoredAllocationNtB6_5Debug3fmtBC_ }>, align 8
@1069 = private unnamed_addr constant [10 x i8] c"Allocation", align 1
@1070 = private unnamed_addr constant [10 x i8] c"allocation", align 1
@1071 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCsileJQcQObtj_7hir_def8StaticIdNtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@1072 = private unnamed_addr constant [6 x i8] c"Static", align 1
@1073 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXse_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8ir_printINtNtB7_9predicate8TraitRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtB1m_ }>, align 8
@1074 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5error9TypeErrorNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtB6_5Debug3fmtB1w_ }>, align 8
@1075 = private unnamed_addr constant [21 x i8] c"SignatureMismatchData", align 1
@1076 = private unnamed_addr constant [15 x i8] c"found_trait_ref", align 1
@1077 = private unnamed_addr constant [18 x i8] c"expected_trait_ref", align 1
@1078 = private unnamed_addr constant [4 x i8] c"terr", align 1
@1079 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @106, [16 x i8] c"_\00\00\00\00\00\00\00\8F\08\00\00\0D\00\00\00" }>, align 8
@1080 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @106, [16 x i8] c"_\00\00\00\00\00\00\00\8F\08\00\00\1A\00\00\00" }>, align 8
@1081 = private unnamed_addr constant [23 x i8] c"CustomProcMacroExpander", align 1
@1082 = private unnamed_addr constant [13 x i8] c"proc_macro_id", align 1
@1083 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtCshzWfHUSfYae_4core3fmt5floatdNtB7_5Debug3fmt }>, align 8
@1084 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtNtCshzWfHUSfYae_4core3fmt3numxNtB7_5Debug3fmt }>, align 8
@1085 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtReNtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@1086 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @_RNvXsS_NtNtCshzWfHUSfYae_4core3fmt3numnNtB7_5Debug3fmt }>, align 8
@1087 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @_RNvXsY_NtNtCshzWfHUSfYae_4core3fmt3numoNtB7_5Debug3fmt }>, align 8
@1088 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCsaMQbKjKCVRW_12tracing_core5fieldNtB2_8HexBytesNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@1089 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_12DisplayValueRDNtNtCshzWfHUSfYae_4core5error5ErrorEL_ENtNtB15_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty }>, align 8
@1090 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -654675508425364404 to ptr), ptr inttoptr (i64 7626636266285069727 to ptr) }>, align 8
@switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863 = private unnamed_addr constant [5 x i8] c"xp`@\00", align 8
@switch.table._RNvMNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval4shimNtB4_9Evaluator14exec_intrinsic = private unnamed_addr constant [3 x ptr] [ptr @391, ptr @392, ptr @393], align 8
@switch.table._RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator20compute_discriminant = private unnamed_addr constant [5 x i8] c"\01\02\04\08\10", align 8
@switch.table._RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator24allocate_valtree_in_heap = private unnamed_addr constant [4 x i8] c"\02\04\08\10", align 8
@switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCskVLyBV5N46_15ra_ap_rustc_abi5FloatNtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty = private unnamed_addr constant [4 x i8] c"\03\03\03\04", align 8
@switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCskVLyBV5N46_15ra_ap_rustc_abi5FloatNtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty.865 = private unnamed_addr constant [4 x ptr] [ptr @656, ptr @657, ptr @658, ptr @659], align 8
@switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerNtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty = private unnamed_addr constant [5 x i8] c"\02\03\03\03\04", align 8
@switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerNtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty.866 = private unnamed_addr constant [5 x ptr] [ptr @636, ptr @637, ptr @638, ptr @639, ptr @640], align 8
@switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs8K4cjrcxBsw_6hir_ty3mir5BinOpNtB6_5Debug3fmtBA_ = private unnamed_addr constant [17 x i8] c"\03\03\03\03\03\06\06\05\03\03\02\02\02\02\02\02\06", align 8
@switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs8K4cjrcxBsw_6hir_ty3mir5BinOpNtB6_5Debug3fmtBA_.867 = private unnamed_addr constant [17 x ptr] [ptr @691, ptr @692, ptr @693, ptr @694, ptr @695, ptr @696, ptr @697, ptr @698, ptr @699, ptr @700, ptr @701, ptr @702, ptr @703, ptr @704, ptr @705, ptr @706, ptr @707], align 8
@switch.table._RNvXs3_Cs3gTr8JIMkcl_7editionNtB5_7EditionNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt = private unnamed_addr constant [4 x ptr] [ptr @753, ptr @754, ptr @755, ptr @756], align 8
@switch.table._RNvXsd_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_5BinOpNtNtCshzWfHUSfYae_4core3fmt7Display3fmt = private unnamed_addr constant [17 x i8] c"\01\01\01\01\01\01\01\01\02\02\02\01\02\02\02\01\08", align 8
@switch.table._RNvXsd_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_5BinOpNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.869 = private unnamed_addr constant [17 x ptr] [ptr @952, ptr @953, ptr @954, ptr @955, ptr @956, ptr @957, ptr @958, ptr @959, ptr @960, ptr @961, ptr @962, ptr @963, ptr @964, ptr @965, ptr @966, ptr @967, ptr @968], align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvCs5FnKsoVGHAL_12tracing_tree6styledReECs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %1, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(17) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 10 uses
  br i1 %1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !6, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.g, label %bb.h, label %bb.i, !prof !7

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.k, ptr noundef nonnull align 1 dereferenceable(17) %2, i64 17, i1 false)
  store i64 -1, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %4, ptr %.sroa.5.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 -3, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !75
  store i64 0, ptr %i.c, align 8, !noalias !75
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !75
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !75
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.m, align 8, !noalias !75
  store ptr %i.c, ptr %i.b, align 8, !noalias !75
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @46, ptr %i.n, align 8, !noalias !75
  %i.o = invoke noundef zeroext i1 @_RNvXs4_NtCsjUslRMS7Tf2_12nu_ansi_term7displayINtB5_17AnsiGenericStringeENtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.d, !noalias !76

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #42
          to label %.body unwind label %bb.g, !noalias !76

bb.e:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.f, label %bb.m, !prof !7

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @877, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @879) #43
          to label %.noexc.i unwind label %bb.d, !noalias !76

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !76
  unreachable

bb.h:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.r) #45
  unreachable

bb.i:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = icmp ule i64 %4, %i.i
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.i
  store i64 %i.i, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %bb.j

bb.l:                                             ; preds = %bb.m, %bb.j
  ret void

.body:                                            ; preds = %bb.d
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjUslRMS7Tf2_12nu_ansi_term7display17AnsiGenericStringeEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(72) %i.e) #42
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !75
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjUslRMS7Tf2_12nu_ansi_term7display17AnsiGenericStringeEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(72) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.n:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.o:                                             ; preds = %.body
  resume { ptr, i32 } %i.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(address_is_null) %1, i64 %2, ptr %.0.val, ptr %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !89
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !89
  %i.b = load i64, ptr %i.a, align 8, !range !4, !noalias !89, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !6, !noalias !89, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.c, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8K4cjrcxBsw_6hir_ty.exit.i.i.i, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.f, align 8, !noalias !89
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #45, !noalias !89
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8K4cjrcxBsw_6hir_ty.exit.i.i.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.f, align 8, !noalias !89, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !89
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_RNvYNvYeNtNtCsbSS6DM8SDEO_5alloc6borrow7ToOwned8to_ownedINtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTReEE9call_onceCs8K4cjrcxBsw_6hir_ty.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8K4cjrcxBsw_6hir_ty.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !90
  br label %_RNvYNvYeNtNtCsbSS6DM8SDEO_5alloc6borrow7ToOwned8to_ownedINtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTReEE9call_onceCs8K4cjrcxBsw_6hir_ty.exit

_RNvYNvYeNtNtCsbSS6DM8SDEO_5alloc6borrow7ToOwned8to_ownedINtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTReEE9call_onceCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8K4cjrcxBsw_6hir_ty.exit.i.i.i, %bb.d
  store i64 %i.e, ptr %0, align 8, !alias.scope !91
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !91
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !91
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %.0.val, ptr noundef nonnull %.8.val)
  br label %bb.f

bb.f:                                             ; preds = %_RNvYNvYeNtNtCsbSS6DM8SDEO_5alloc6borrow7ToOwned8to_ownedINtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTReEE9call_onceCs8K4cjrcxBsw_6hir_ty.exit, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCskVLyBV5N46_15ra_ap_rustc_abi6layout6simpleINtB7_10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB19_19RustcEnumVariantIdxE11scalar_pairNtB7_16TargetDataLayoutEB1b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([352 x i8]) align 16 captures(none) dereferenceable(352) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(48) %2, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [48 x i8], align 16               ; 7 uses
  %.sroa.0.i.i.i83 = alloca [40 x i8], align 16   ; 7 uses
  %.sroa.8.i.i.i84 = alloca [7 x i8], align 1     ; 7 uses
  %i.f = alloca [64 x i8], align 16               ; 8 uses
  %.sroa.0161 = alloca [56 x i8], align 16        ; 4 uses
  %i.g = alloca [112 x i8], align 16              ; 11 uses
  %i.h = alloca [64 x i8], align 16               ; 7 uses
  %i.i = alloca [48 x i8], align 16               ; 7 uses
end_hunk_0
begin_hunk_1_@_RINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB6_16LayoutCalculatorRNtB8_16TargetDataLayoutE24layout_of_struct_or_enumNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1Y_19RustcEnumVariantIdxRRINtB8_10LayoutDataB1W_B2H_ENCNvNvXs0_NvNtB1Y_3adt1__NtB3L_34layout_of_adt_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s2_0INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB5Q_3map3MapINtNtB5Q_9enumerate9EnumerateINtNtNtB5U_5slice4iter4IterINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecB1W_B38_EEENCNvMNtB83_5sliceINtB93_10IndexSliceB2H_B7Y_E15iter_enumerated0ENCB3D_s3_0EEB20_:bb.a
  %.sroa.10860.sroa.8.0..sroa.10860.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 160
  store i64 %.sroa.0440.sroa.0.0.i, ptr %.sroa.10860.sroa.8.0..sroa.10860.0..sroa_idx.sroa_idx.i, align 16, !alias.scope !955, !noalias !956
  %.sroa.10860.sroa.9.0..sroa.10860.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 168
  store ptr null, ptr %.sroa.10860.sroa.9.0..sroa.10860.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !955, !noalias !956
  %.sroa.10860.sroa.10.0..sroa.10860.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  store ptr %i.vb, ptr %.sroa.10860.sroa.10.0..sroa.10860.0..sroa_idx.sroa_idx.i, align 16, !alias.scope !955, !noalias !956
  %.sroa.10860.sroa.11.0..sroa.10860.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 184
  store i64 %.sroa.0440.sroa.5.sroa.6.0.i, ptr %.sroa.10860.sroa.11.0..sroa.10860.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !955, !noalias !956
  %.sroa.10860.sroa.12.0..sroa.10860.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 192
  store i64 %.sroa.5441.0.i, ptr %.sroa.10860.sroa.12.0..sroa.10860.0..sroa_idx.sroa_idx.i, align 16, !alias.scope !955, !noalias !956
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ac, i64 224 ; 2 uses
  store ptr %i.cr, ptr %i.vm, align 16, !alias.scope !957, !noalias !952
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ac, i64 232 ; 2 uses
  store ptr %i.cq, ptr %i.vn, align 8, !alias.scope !957, !noalias !952
  call void @llvm.experimental.noalias.scope.decl(metadata !958)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !952
  call void @llvm.experimental.noalias.scope.decl(metadata !959)
  call void @llvm.experimental.noalias.scope.decl(metadata !960)
  call void @llvm.experimental.noalias.scope.decl(metadata !961)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !962
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set4IternEENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.sroa.10860.0..sroa_idx.i)
          to label %.noexc600.i unwind label %bb.ew, !noalias !949

.noexc600.i:                                      ; preds = %bb.fh
  %i.vo = load i128, ptr %i.z, align 16, !range !31, !noalias !962, !noundef !5
  %i.vp = trunc nuw i128 %i.vo to i1
  br i1 %i.vp, label %bb.fi, label %bb.fn

bb.fi:                                            ; preds = %.noexc600.i
  %i.vq = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.vr = load i128, ptr %i.vq, align 16, !noalias !962, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !962
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !962
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.vs = load i64, ptr %.sroa.8858.0..sroa_idx.i, align 16, !alias.scope !964, !noalias !952, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i.i599.i = icmp eq i64 %i.vs, 0
  br i1 %.not.i.i.i.i.i.i599.i, label %bb.fj, label %.split.i.i.i.i.i.i, !prof !23

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %i.vt = load i64, ptr %.sroa.6856.0..sroa_idx.i, align 16, !range !10, !alias.scope !967, !noalias !952, !noundef !5
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.vt, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.fm, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !968
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set4IternEENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.sroa.6856.0..sroa_idx.i)
          to label %.noexc601.i unwind label %bb.ew, !noalias !949

.noexc601.i:                                      ; preds = %bb.fk
  %i.vu = load i128, ptr %i.x, align 16, !range !31, !noalias !968, !noundef !5
  %i.vv = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.vw = load i128, ptr %i.vv, align 16, !noalias !968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !968
  %.not3.i.i.i.i.i.i.i.i.i = icmp eq i128 %i.vu, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %bb.fl, label %bb.fo

bb.fl:                                            ; preds = %.noexc601.i
  store i64 2, ptr %.sroa.6856.0..sroa_idx.i, align 16, !alias.scope !967, !noalias !952
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fj
  %i.vx = load i128, ptr %i.ac, align 16, !range !32, !alias.scope !969, !noalias !952, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i128 %i.vx, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set4IternEEINtNtBa_6option8IntoIternEEENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread6.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set4IternEEINtNtBa_6option8IntoIternEEENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.fi
  store i64 0, ptr %.sroa.8858.0..sroa_idx.i, align 16, !alias.scope !964, !noalias !952
  invoke fastcc void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set4IternEEINtNtBa_6option8IntoIternEENtNtNtB8_6traits8iterator8Iterator3nthCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull align 16 dereferenceable(240) %i.ac, i64 noundef %i.vs) #47
          to label %.noexc602.i unwind label %bb.ew, !noalias !949

.noexc602.i:                                      ; preds = %.split.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load i128, ptr %i.y, align 16, !range !31, !noalias !962
  %extract.t4.i.i.i.i.i.i = trunc nuw i128 %.pre.i.i.i.i.i.i to i1
  br i1 %extract.t4.i.i.i.i.i.i, label %.split.i._crit_edge.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set4IternEEINtNtBa_6option8IntoIternEEENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread6.i.i.i.i.i.i

.split.i._crit_edge.i.i.i.i.i:                    ; preds = %.noexc602.i
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.pre.i.i.i.i.i = load i128, ptr %.phi.trans.insert.i.i.i.i.i, align 16, !noalias !962
  br label %bb.fo

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set4IternEEINtNtBa_6option8IntoIternEEENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i.i: ; preds = %bb.fm
  %i.vy = load i128, ptr %.sroa.5855.0..sroa_idx.i, align 16, !alias.scope !970, !noalias !952
  store i128 0, ptr %i.ac, align 16, !alias.scope !970, !noalias !952
  %extract.t.i.i.i.i.i.i = trunc nuw i128 %i.vx to i1
  br i1 %extract.t.i.i.i.i.i.i, label %bb.fo, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set4IternEEINtNtBa_6option8IntoIternEEENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread6.i.i.i.i.i.i

bb.fn:                                            ; preds = %.noexc600.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !962
  br label %bb.gj

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set4IternEEINtNtBa_6option8IntoIternEEENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread6.i.i.i.i.i.i: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set4IternEEINtNtBa_6option8IntoIternEEENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i.i, %.noexc602.i, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !962
  br label %bb.gj

bb.fo:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set4IternEEINtNtBa_6option8IntoIternEEENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i.i, %.split.i._crit_edge.i.i.i.i.i, %.noexc601.i
  %i.vz = phi i128 [ %.pre.i.i.i.i.i, %.split.i._crit_edge.i.i.i.i.i ], [ %i.vy, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set4IternEEINtNtBa_6option8IntoIternEEENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i.i ], [ %i.vw, %.noexc601.i ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !962
  call void @llvm.experimental.noalias.scope.decl(metadata !971)
  call void @llvm.experimental.noalias.scope.decl(metadata !972)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !973
  store i128 %i.vr, ptr %i.w, align 16, !noalias !973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !973
  store i128 %i.vz, ptr %i.v, align 16, !noalias !973
  %i.wa = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !973
  %i.wb = icmp eq i64 %i.wa, 0
  br i1 %i.wb, label %bb.fp, label %bb.fs

bb.fp:                                            ; preds = %bb.fo
  %i.wc = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB9_16LayoutCalculatorpE14layout_of_enums1_010___CALLSITE, i64 16) monotonic, align 8, !noalias !973 ; 3 uses
  switch i8 %i.wc, label %bb.fq [
    i8 0, label %bb.fs
    i8 1, label %bb.fr
    i8 2, label %bb.fr
  ], !prof !12

bb.fq:                                            ; preds = %bb.fp
  %i.wd = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB9_16LayoutCalculatorpE14layout_of_enums1_010___CALLSITE) #46
          to label %.noexc603.i unwind label %bb.ew, !noalias !949 ; 2 uses

.noexc603.i:                                      ; preds = %bb.fq
  %i.we = icmp eq i8 %i.wd, 0
  br i1 %i.we, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fp, %.noexc603.i, %bb.fp
  %.sroa.06.0.i.i.i.i.i.i = phi i8 [ %i.wd, %.noexc603.i ], [ %i.wc, %bb.fp ], [ %i.wc, %bb.fp ]
  %i.wf = load ptr, ptr @_RNvNCNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB9_16LayoutCalculatorpE14layout_of_enums1_010___CALLSITE, align 8, !noalias !973, !nonnull !5, !align !11, !noundef !5
  %i.wg = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.wf, i8 noundef %.sroa.06.0.i.i.i.i.i.i)
          to label %.noexc604.i unwind label %bb.ew, !noalias !949

.noexc604.i:                                      ; preds = %bb.fr
  br i1 %i.wg, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %.noexc605.i, %.noexc604.i, %.noexc603.i, %bb.fp, %bb.fo
  %i.wh = phi i128 [ %i.vz, %.noexc603.i ], [ %i.vz, %bb.fp ], [ %i.vz, %bb.fo ], [ %.pre35.i.i.i.i.i.i, %.noexc605.i ], [ %i.vz, %.noexc604.i ] ; 2 uses
  %i.wi = phi i128 [ %i.vr, %.noexc603.i ], [ %i.vr, %bb.fp ], [ %i.vr, %bb.fo ], [ %.pre.i.i1.i.i.i.i, %.noexc605.i ], [ %i.vr, %.noexc604.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !973
  %i.wj = icmp sgt i128 %i.wi, %i.wh
  %.neg.i.i.i.i.i.i = sub i128 %i.wh, %i.wi       ; 2 uses
  br i1 %i.wj, label %bb.fu, label %bb.gd

bb.ft:                                            ; preds = %.noexc604.i
  %i.wk = load ptr, ptr @_RNvNCNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB9_16LayoutCalculatorpE14layout_of_enums1_010___CALLSITE, align 8, !noalias !973, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !973
  store ptr %i.w, ptr %i.t, align 8, !noalias !973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !973
  store ptr %i.v, ptr %i.s, align 8, !noalias !973
  store ptr %i.t, ptr %i.u, align 8, !noalias !973
  %i.wm = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @113, ptr %i.wm, align 8, !noalias !973
  %i.wn = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.s, ptr %i.wn, align 8, !noalias !973
  %i.wo = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @113, ptr %i.wo, align 8, !noalias !973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !973
  store i64 1, ptr %i.o, align 8, !noalias !973
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.u, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !973
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 2, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !973
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.wl, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !973
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.wk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
          to label %.noexc605.i unwind label %bb.ew, !noalias !949

.noexc605.i:                                      ; preds = %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !973
  %.pre.i.i1.i.i.i.i = load i128, ptr %i.w, align 16, !noalias !973
  %.pre35.i.i.i.i.i.i = load i128, ptr %i.v, align 16, !noalias !973
  br label %bb.fs

bb.fu:                                            ; preds = %bb.fs
  %i.wp = load ptr, ptr %i.vm, align 16, !alias.scope !974, !noalias !952, !nonnull !5, !noundef !5 ; 2 uses
  %i.wq = load i8, ptr %i.wp, align 1, !range !15, !noalias !975, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i.i64 = icmp eq i8 %i.wq, 2
  br i1 %.not.i.i.i.i.i.i64, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wp, i64 1
  %i.ws = load i8, ptr %i.wr, align 1, !range !13, !noalias !975, !noundef !5
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.sroa.09.0.i.i.i.i.i.i = phi i8 [ %i.ws, %bb.fv ], [ %i.wq, %bb.fu ]
  %i.wt = trunc nuw i8 %.sroa.09.0.i.i.i.i.i.i to i1
  %i.wu = load ptr, ptr %i.vn, align 8, !alias.scope !974, !noalias !952, !nonnull !5, !noundef !5
  %i.wv = load i8, ptr %i.wu, align 1, !range !33, !noalias !975, !noundef !5 ; 2 uses
  br i1 %i.wt, label %bb.fx, label %switch.lookup723

default.unreachable:                              ; preds = %bb.gt, %bb.fx
  unreachable

switch.lookup723:                                 ; preds = %bb.fw
  %i.ww = zext nneg i8 %i.wv to i64
  %switch.gep724 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.ww
  %switch.load725 = load i8, ptr %switch.gep724, align 1
  %i.wx = zext nneg i8 %switch.load725 to i128
  %i.wy = lshr i128 -1, %i.wx
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  switch i8 %i.wv, label %default.unreachable [
    i8 0, label %bb.fy
    i8 1, label %bb.fz
    i8 2, label %bb.ga
    i8 3, label %bb.gb
    i8 4, label %bb.gc
  ]

bb.fy:                                            ; preds = %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fx, %switch.lookup723
  %.pn.i.i.i.i.i.i = phi i128 [ %i.wy, %switch.lookup723 ], [ 170141183460469231731687303715884105727, %bb.gc ], [ 32767, %bb.fz ], [ 2147483647, %bb.ga ], [ 9223372036854775807, %bb.gb ], [ 127, %bb.fx ]
  %storemerge.i.i.i.i.i.i = add i128 %.pn.i.i.i.i.i.i, %.neg.i.i.i.i.i.i
  br label %bb.gd

bb.fz:                                            ; preds = %bb.fx
  br label %bb.fy

bb.ga:                                            ; preds = %bb.fx
  br label %bb.fy

bb.gb:                                            ; preds = %bb.fx
  br label %bb.fy

bb.gc:                                            ; preds = %bb.fx
  br label %bb.fy

bb.gd:                                            ; preds = %bb.fy, %bb.fs
  %storemerge32.i.i.i.i.i.i = phi i128 [ %storemerge.i.i.i.i.i.i, %bb.fy ], [ %.neg.i.i.i.i.i.i, %bb.fs ] ; 5 uses
  store i128 %storemerge32.i.i.i.i.i.i, ptr %i.r, align 16, !noalias !973
  %i.wz = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !973
  %i.xa = icmp eq i64 %i.wz, 0
  br i1 %i.xa, label %bb.ge, label %bb.gi

bb.ge:                                            ; preds = %bb.gd
  %i.xb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB9_16LayoutCalculatorpE14layout_of_enums1_0s_10___CALLSITE, i64 16) monotonic, align 8, !noalias !973 ; 3 uses
  switch i8 %i.xb, label %bb.gf [
    i8 0, label %bb.gi
    i8 1, label %bb.gg
    i8 2, label %bb.gg
  ], !prof !12

bb.gf:                                            ; preds = %bb.ge
  %i.xc = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB9_16LayoutCalculatorpE14layout_of_enums1_0s_10___CALLSITE) #46
          to label %.noexc606.i unwind label %bb.ew, !noalias !949 ; 2 uses

.noexc606.i:                                      ; preds = %bb.gf
  %i.xd = icmp eq i8 %i.xc, 0
  br i1 %i.xd, label %bb.gi, label %bb.gg

bb.gg:                                            ; preds = %bb.ge, %.noexc606.i, %bb.ge
  %.sroa.017.0.i.i.i.i.i.i = phi i8 [ %i.xc, %.noexc606.i ], [ %i.xb, %bb.ge ], [ %i.xb, %bb.ge ]
  %i.xe = load ptr, ptr @_RNvNCNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB9_16LayoutCalculatorpE14layout_of_enums1_0s_10___CALLSITE, align 8, !noalias !973, !nonnull !5, !align !11, !noundef !5
  %i.xf = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.xe, i8 noundef %.sroa.017.0.i.i.i.i.i.i)
          to label %.noexc607.i unwind label %bb.ew, !noalias !949

.noexc607.i:                                      ; preds = %bb.gg
  br i1 %i.xf, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %.noexc607.i
  %i.xg = load ptr, ptr @_RNvNCNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB9_16LayoutCalculatorpE14layout_of_enums1_0s_10___CALLSITE, align 8, !noalias !973, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !973
  store ptr %i.r, ptr %i.p, align 8, !noalias !973
  store ptr %i.p, ptr %i.q, align 8, !noalias !973
  %i.xi = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @114, ptr %i.xi, align 8, !noalias !973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !973
  store i64 1, ptr %i.n, align 8, !noalias !973
  %.sroa.019.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.q, ptr %.sroa.019.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !973
  %.sroa.019.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 1, ptr %.sroa.019.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !973
  %.sroa.420.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.xh, ptr %.sroa.420.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !973
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.xg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %.noexc608.i unwind label %bb.ew, !noalias !949

.noexc608.i:                                      ; preds = %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !973
  %.pre36.i.i.i.i.i.i = load i128, ptr %i.r, align 16, !noalias !973
  br label %bb.gi

bb.gi:                                            ; preds = %.noexc608.i, %.noexc607.i, %.noexc606.i, %bb.ge, %bb.gd
  %i.xj = phi i128 [ %storemerge32.i.i.i.i.i.i, %.noexc606.i ], [ %storemerge32.i.i.i.i.i.i, %bb.ge ], [ %storemerge32.i.i.i.i.i.i, %bb.gd ], [ %.pre36.i.i.i.i.i.i, %.noexc608.i ], [ %storemerge32.i.i.i.i.i.i, %.noexc607.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !973
  store i128 %i.xj, ptr %i.ab, align 16, !noalias !976
  %.sroa.4.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i128 %i.vr, ptr %.sroa.4.sroa.5.0..sroa_idx.i.i.i, align 16, !noalias !976
  %.sroa.4.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i128 %i.vz, ptr %.sroa.4.sroa.6.0..sroa_idx.i.i.i, align 16, !noalias !976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.aa, ptr noundef nonnull align 16 dereferenceable(240) %i.ac, i64 240, i1 false), !noalias !977
  %i.xk = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtB8_6copied6CopiedINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set4IternEEINtNtB8_4skip4SkipINtNtB8_5chain5ChainB1d_INtNtBc_6option8IntoIternEEEENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyTnnEoNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB4P_16LayoutCalculatorRNtB4R_16TargetDataLayoutE14layout_of_enumNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB6z_19RustcEnumVariantIdxRRINtB4R_10LayoutDataB6x_B7i_ENCNvNvXs0_NvNtB6z_3adt1__NtB8n_34layout_of_adt_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s2_0INtNtB8_10filter_map9FilterMapIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecB6x_B7J_EEENCNvMNtBbS_5sliceINtBcS_10IndexSliceB7i_BbN_E15iter_enumerated0ENCB8f_s3_0EEs1_0E0EB3N_4foldToB4B_ENCINvNvB3N_6max_by4foldBeh_INvB3L_7compareB4B_oEE0EB6B_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %i.xk, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(240) %i.aa, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(48) %i.ab)
          to label %.noexc609.i unwind label %bb.ew, !noalias !949

.noexc609.i:                                      ; preds = %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !952
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.47.0.copyload.i.i = load i128, ptr %.sroa.47.0..sroa_idx.i.i, align 16, !noalias !952
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.58.0.copyload.i.i = load i128, ptr %.sroa.58.0..sroa_idx.i.i, align 16, !noalias !952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !952
  %i.xl = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i128 %.sroa.47.0.copyload.i.i, ptr %i.xl, align 16, !alias.scope !953, !noalias !910
  %i.xm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store i128 %.sroa.58.0.copyload.i.i, ptr %i.xm, align 16, !alias.scope !953, !noalias !910
  br label %bb.gk

bb.gj:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set4IternEEINtNtBa_6option8IntoIternEEENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread6.i.i.i.i.i.i, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !952
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %.noexc609.i
  %storemerge.i.i = phi i128 [ 0, %bb.gj ], [ 1, %.noexc609.i ]
  store i128 %storemerge.i.i, ptr %i.cl, align 16, !alias.scope !953, !noalias !910
  %i.xn = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !910
  %i.xo = icmp eq i64 %i.xn, 0
  br i1 %i.xo, label %bb.gl, label %bb.gq

bb.gl:                                            ; preds = %bb.gk
  %i.xp = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB7_16LayoutCalculatorpE14layout_of_enums_10___CALLSITE, i64 16) monotonic, align 8, !noalias !910 ; 3 uses
  switch i8 %i.xp, label %bb.gm [
    i8 0, label %bb.gq
    i8 1, label %bb.gn
    i8 2, label %bb.gn
  ], !prof !12

bb.gm:                                            ; preds = %bb.gl
  %i.xq = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB7_16LayoutCalculatorpE14layout_of_enums_10___CALLSITE)
          to label %bb.go unwind label %bb.ew, !noalias !949 ; 2 uses

bb.gn:                                            ; preds = %bb.gl, %bb.go, %bb.gl
  %.sroa.019.0.i = phi i8 [ %i.xq, %bb.go ], [ %i.xp, %bb.gl ], [ %i.xp, %bb.gl ]
  %i.xr = load ptr, ptr @_RNvNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB7_16LayoutCalculatorpE14layout_of_enums_10___CALLSITE, align 8, !noalias !910, !nonnull !5, !align !11, !noundef !5
  %i.xs = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.xr, i8 noundef %.sroa.019.0.i)
          to label %bb.gp unwind label %bb.ew, !noalias !949

bb.go:                                            ; preds = %bb.gm
  %i.xt = icmp eq i8 %i.xq, 0
  br i1 %i.xt, label %bb.gq, label %bb.gn

bb.gp:                                            ; preds = %bb.gn
  br i1 %i.xs, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gs, %bb.gp, %bb.go, %bb.gl, %bb.gk
  %i.xu = load i128, ptr %i.cl, align 16, !range !31, !noalias !910, !noundef !5
  %i.xv = trunc nuw i128 %i.xu to i1              ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.xx = load i128, ptr %i.xw, align 16, !noalias !910
  %i.xy = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.xz = load i128, ptr %i.xy, align 16, !noalias !910
  %.sroa.0520.0.i = select i1 %i.xv, i128 %i.xx, i128 0 ; 2 uses
  %.sroa.0522.0.i = select i1 %i.xv, i128 %i.xz, i128 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !910
  invoke void @_RNvNtNtCs8K4cjrcxBsw_6hir_ty6layout3adt10repr_discr(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %8, i128 noundef %.sroa.0522.0.i, i128 noundef %.sroa.0520.0.i)
          to label %bb.gt unwind label %bb.ew, !noalias !949

bb.gr:                                            ; preds = %bb.gp
  %i.ya = load ptr, ptr @_RNvNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB7_16LayoutCalculatorpE14layout_of_enums_10___CALLSITE, align 8, !noalias !910, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !910
  store ptr %i.cl, ptr %i.cj, align 8, !noalias !910
  store ptr %i.cj, ptr %i.ck, align 8, !noalias !910
  %i.yc = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr @10, ptr %i.yc, align 8, !noalias !910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !910
  store i64 1, ptr %i.bk, align 8, !noalias !910
  %.sroa.021.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.ck, ptr %.sroa.021.sroa.4.0..sroa_idx.i, align 8, !noalias !910
  %.sroa.021.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 1, ptr %.sroa.021.sroa.5.0..sroa_idx.i, align 8, !noalias !910
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store ptr %i.yb, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !910
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ya, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bk)
          to label %bb.gs unwind label %bb.ew, !noalias !949

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !910
  br label %bb.gq

bb.gt:                                            ; preds = %bb.gq
  %i.yd = load i64, ptr %i.m, align 8, !range !34, !noalias !910, !noundef !5
end_hunk_1
begin_hunk_2_@_RINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB6_16LayoutCalculatorRNtB8_16TargetDataLayoutE24layout_of_struct_or_enumNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1Y_19RustcEnumVariantIdxRRINtB8_10LayoutDataB1W_B2H_ENCNvNvXs0_NvNtB1Y_3adt1__NtB3L_34layout_of_adt_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s2_0INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB5Q_3map3MapINtNtB5Q_9enumerate9EnumerateINtNtNtB5U_5slice4iter4IterINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecB1W_B38_EEENCNvMNtB83_5sliceINtB93_10IndexSliceB2H_B7Y_E15iter_enumerated0ENCB3D_s3_0EEB20_:bb.a
  br i1 %or.cond.i, label %bb.hs, label %bb.ht

bb.hr:                                            ; preds = %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9from_attrNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit626.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !910
  store ptr %i.ci, ptr %i.bx, align 8, !noalias !910
  %.sroa.4501.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr @_RNvXs1V_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7IntegerNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.4501.0..sroa_idx.i, align 8, !noalias !910
  %i.abk = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.by, ptr %i.abk, align 8, !noalias !910
  %.sroa.4505.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store ptr @_RNvXs1V_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7IntegerNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.4505.0..sroa_idx.i, align 8, !noalias !910
  br label %.invoke1583.i

bb.hs:                                            ; preds = %bb.hq
  %i.abl = load i8, ptr %i.ci, align 1, !range !33, !noalias !910 ; 2 uses
  br label %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.thread.i

bb.ht:                                            ; preds = %bb.hq
  %i.abm = load i8, ptr %i.cd, align 1, !noalias !910, !noundef !5 ; 6 uses
  %i.abn = and i8 %i.abm, 63
  %i.abo = zext nneg i8 %i.abn to i64
  %i.abp = shl nuw i64 1, %i.abo
  %.fr.i.i.i.i629.i = freeze i64 %i.abp           ; 5 uses
  %.sroa.01.0.i.i.i.i.i630.i = load i8, ptr %i.yq, align 1, !alias.scope !980, !noalias !981, !noundef !5
  %i.abq = icmp eq i8 %i.abm, %.sroa.01.0.i.i.i.i.i630.i
  %i.abr = icmp eq i64 %.fr.i.i.i.i629.i, 1
  %or.cond.i631.i = and i1 %i.abq, %i.abr
  br i1 %or.cond.i631.i, label %._RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.thread.thread_crit_edge.i, label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.i632.i

._RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.thread.thread_crit_edge.i: ; preds = %bb.ht
  %.pre.i = load i8, ptr %i.ci, align 1, !range !33, !noalias !910
  br label %switch.lookup731

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.i632.i: ; preds = %bb.ht
  %i.abs = getelementptr inbounds nuw i8, ptr %.val.i52, i64 84
  %.sroa.01.0.i.i.i.i.1.i633.i = load i8, ptr %i.abs, align 4, !alias.scope !980, !noalias !981, !noundef !5
  %i.abt = icmp eq i8 %i.abm, %.sroa.01.0.i.i.i.i.1.i633.i
  %i.abu = icmp eq i64 %.fr.i.i.i.i629.i, 2
  %or.cond33.i634.i = and i1 %i.abu, %i.abt
  br i1 %or.cond33.i634.i, label %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.threadthread-pre-split.i, label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1.i635.i

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1.i635.i: ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.i632.i
  %i.abv = getelementptr inbounds nuw i8, ptr %.val.i52, i64 85
  %.sroa.01.0.i.i.i.i.2.i636.i = load i8, ptr %i.abv, align 1, !alias.scope !980, !noalias !981, !noundef !5
  %i.abw = icmp eq i8 %i.abm, %.sroa.01.0.i.i.i.i.2.i636.i
  %i.abx = icmp eq i64 %.fr.i.i.i.i629.i, 4
  %or.cond34.i637.i = and i1 %i.abx, %i.abw
  br i1 %or.cond34.i637.i, label %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.threadthread-pre-split.i, label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.2.i638.i

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.2.i638.i: ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1.i635.i
  %i.aby = getelementptr inbounds nuw i8, ptr %.val.i52, i64 86
  %.sroa.01.0.i.i.i.i.3.i639.i = load i8, ptr %i.aby, align 2, !alias.scope !980, !noalias !981, !noundef !5
  %i.abz = icmp eq i8 %i.abm, %.sroa.01.0.i.i.i.i.3.i639.i
  %i.aca = icmp eq i64 %.fr.i.i.i.i629.i, 8
  %or.cond35.i640.i = and i1 %i.aca, %i.abz
  br i1 %or.cond35.i640.i, label %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.threadthread-pre-split.i, label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.3.i641.i

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.3.i641.i: ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.2.i638.i
  %i.acb = getelementptr inbounds nuw i8, ptr %.val.i52, i64 87
  %.sroa.01.0.i.i.i.i.4.i642.i = load i8, ptr %i.acb, align 1, !alias.scope !980, !noalias !981, !noundef !5
  %i.acc = icmp eq i8 %i.abm, %.sroa.01.0.i.i.i.i.4.i642.i
  %i.acd = icmp eq i64 %.fr.i.i.i.i629.i, 16
  %or.cond36.i643.i = and i1 %i.acd, %i.acc
  %i.ace = load i8, ptr %i.ci, align 1, !range !33, !noalias !910 ; 2 uses
  %spec.select.i55 = select i1 %or.cond36.i643.i, i8 4, i8 %i.ace
  br label %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.thread.i

_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.threadthread-pre-split.i: ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.2.i638.i, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1.i635.i, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.i632.i
  %.sroa.045.1.ph.i = phi i8 [ 1, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.i632.i ], [ 2, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1.i635.i ], [ 3, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.2.i638.i ]
  %.pre1413.pr.i = load i8, ptr %i.ci, align 1, !noalias !910
  br label %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.thread.i

_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.thread.i: ; preds = %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.threadthread-pre-split.i, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.3.i641.i, %bb.hs
  %.pre1413.i = phi i8 [ %.pre1413.pr.i, %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.threadthread-pre-split.i ], [ %i.ace, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.3.i641.i ], [ %i.abl, %bb.hs ] ; 2 uses
  %.sroa.045.1.i = phi i8 [ %.sroa.045.1.ph.i, %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.threadthread-pre-split.i ], [ %spec.select.i55, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.3.i641.i ], [ %i.abl, %bb.hs ] ; 3 uses
  %.not565.i = icmp ugt i8 %.sroa.045.1.i, %.sroa.0.0.i612.i
  br i1 %.not565.i, label %switch.lookup727, label %switch.lookup731

switch.lookup727:                                 ; preds = %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !910
  %i.acf = zext nneg i8 %.pre1413.i to i64
  %switch.gep728 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator20compute_discriminant, i64 %i.acf
  %switch.load729 = load i8, ptr %switch.gep728, align 1
  %switch.ext730 = zext i8 %switch.load729 to i64 ; 8 uses
  store i64 %switch.ext730, ptr %i.bw, align 8, !noalias !910
  %i.acg = sext i8 %.sroa.045.1.i to i64
  %i.ach = getelementptr i8, ptr @switch.table._RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator24allocate_valtree_in_heap, i64 %i.acg
  %switch.gep748 = getelementptr i8, ptr %i.ach, i64 -1
  %switch.load749 = load i8, ptr %switch.gep748, align 1
  %switch.ext750 = zext i8 %switch.load749 to i64 ; 4 uses
  %.idx1239.i = mul nuw nsw i64 %i.aax, 352
  %i.aci = getelementptr inbounds nuw i8, ptr %i.aaw, i64 %.idx1239.i
  %i.acj = icmp eq ptr %i.aak, null
  br i1 %i.acj, label %._crit_edge1232.i, label %.lr.ph1231.i

.lr.ph1231.i:                                     ; preds = %switch.lookup727, %bb.id
  %.sroa.0507.01230.i = phi ptr [ %i.ack, %bb.id ], [ %i.aaw, %switch.lookup727 ] ; 5 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %.sroa.0507.01230.i, i64 352 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %.sroa.0507.01230.i, i64 144
  %i.acm = load i64, ptr %i.acl, align 16, !range !18, !noalias !949, !noundef !5
  %i.acn = icmp sgt i64 %i.acm, -1
  br i1 %i.acn, label %bb.hu, label %.invoke1583.i, !prof !27

bb.hu:                                            ; preds = %.lr.ph1231.i
  %i.aco = getelementptr inbounds nuw i8, ptr %.sroa.0507.01230.i, i64 152
  %i.acp = load ptr, ptr %i.aco, align 8, !noalias !949, !nonnull !5, !noundef !5 ; 6 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %.sroa.0507.01230.i, i64 160
  %i.acr = load i64, ptr %i.acq, align 16, !noalias !949, !noundef !5 ; 2 uses
  %.idx1240.i = shl i64 %i.acr, 3                 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acp, i64 %.idx1240.i
  %i.act = icmp eq i64 %i.acr, 0
  br i1 %i.act, label %._crit_edge.i, label %.lr.ph1229.i.preheader

.lr.ph1229.i.preheader:                           ; preds = %bb.hu
  %i.acu = add i64 %.idx1240.i, -8                ; 2 uses
  %i.acv = and i64 %i.acu, 8
  %lcmp.mod887.not.not = icmp eq i64 %i.acv, 0
  br i1 %lcmp.mod887.not.not, label %.lr.ph1229.i.prol, label %.lr.ph1229.i.prol.loopexit

.lr.ph1229.i.prol:                                ; preds = %.lr.ph1229.i.preheader
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acp, i64 8 ; 2 uses
  %i.acx = load i64, ptr %i.acp, align 8, !noalias !949, !noundef !5 ; 2 uses
  %.not566.i.prol = icmp ugt i64 %i.acx, %switch.ext730
  br i1 %.not566.i.prol, label %.lr.ph1229.i.prol.loopexit, label %bb.hv

bb.hv:                                            ; preds = %.lr.ph1229.i.prol
  %i.acy = icmp eq i64 %i.acx, %switch.ext730
  br i1 %i.acy, label %bb.hw, label %.loopexit, !prof !23

bb.hw:                                            ; preds = %bb.hv
  store i64 %switch.ext750, ptr %i.acp, align 8, !noalias !949
  br label %.lr.ph1229.i.prol.loopexit

.lr.ph1229.i.prol.loopexit:                       ; preds = %.lr.ph1229.i.prol, %bb.hw, %.lr.ph1229.i.preheader
  %.sroa.052.01228.i.unr = phi ptr [ %i.acp, %.lr.ph1229.i.preheader ], [ %i.acw, %bb.hw ], [ %i.acw, %.lr.ph1229.i.prol ]
  %i.acz = icmp eq i64 %i.acu, 0
  br i1 %i.acz, label %._crit_edge.i, label %.lr.ph1229.i

bb.hx:                                            ; preds = %bb.jb, %bb.iw, %bb.is, %.loopexit
  unreachable

.lr.ph1229.i:                                     ; preds = %.lr.ph1229.i.prol.loopexit, %bb.ia
  %.sroa.052.01228.i = phi ptr [ %i.ade, %bb.ia ], [ %.sroa.052.01228.i.unr, %.lr.ph1229.i.prol.loopexit ] ; 5 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %.sroa.052.01228.i, i64 8 ; 3 uses
  %i.adb = load i64, ptr %.sroa.052.01228.i, align 8, !noalias !949, !noundef !5 ; 2 uses
  %.not566.i = icmp ugt i64 %i.adb, %switch.ext730
  br i1 %.not566.i, label %.lr.ph1229.i.1, label %bb.ib

._crit_edge.i:                                    ; preds = %.lr.ph1229.i.prol.loopexit, %bb.ia, %bb.hu
  %i.adc = getelementptr inbounds nuw i8, ptr %.sroa.0507.01230.i, i64 320 ; 2 uses
  %i.add = load i64, ptr %i.adc, align 16, !noalias !949, !noundef !5
  %.not567.i = icmp ugt i64 %i.add, %switch.ext730
  br i1 %.not567.i, label %bb.id, label %bb.ie

.lr.ph1229.i.1:                                   ; preds = %bb.ic, %.lr.ph1229.i
  %i.ade = getelementptr inbounds nuw i8, ptr %.sroa.052.01228.i, i64 16 ; 2 uses
  %i.adf = load i64, ptr %i.ada, align 8, !noalias !949, !noundef !5 ; 2 uses
  %.not566.i.1 = icmp ugt i64 %i.adf, %switch.ext730
  br i1 %.not566.i.1, label %bb.ia, label %bb.hy

bb.hy:                                            ; preds = %.lr.ph1229.i.1
  %i.adg = icmp eq i64 %i.adf, %switch.ext730
  br i1 %i.adg, label %bb.hz, label %.loopexit, !prof !23

bb.hz:                                            ; preds = %bb.hy
  store i64 %switch.ext750, ptr %i.ada, align 8, !noalias !949
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %.lr.ph1229.i.1
  %i.adh = icmp eq ptr %i.ade, %i.acs
  br i1 %i.adh, label %._crit_edge.i, label %.lr.ph1229.i

bb.ib:                                            ; preds = %.lr.ph1229.i
  %i.adi = icmp eq i64 %i.adb, %switch.ext730
  br i1 %i.adi, label %bb.ic, label %.loopexit, !prof !23

.loopexit:                                        ; preds = %bb.hv, %bb.ib, %bb.hy
  %.sroa.052.01228.i.lcssa = phi ptr [ %i.ada, %bb.hy ], [ %.sroa.052.01228.i, %bb.ib ], [ %i.acp, %bb.hv ]
  invoke void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeBM_ECs8K4cjrcxBsw_6hir_ty(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.052.01228.i.lcssa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bw, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #45
          to label %bb.hx unwind label %.thread965.loopexit.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !949

bb.ic:                                            ; preds = %bb.ib
  store i64 %switch.ext750, ptr %.sroa.052.01228.i, align 8, !noalias !949
  br label %.lr.ph1229.i.1

bb.id:                                            ; preds = %bb.ie, %._crit_edge.i
  %i.adj = icmp eq ptr %i.ack, %i.aci
  br i1 %i.adj, label %._crit_edge1232.i, label %.lr.ph1231.i

bb.ie:                                            ; preds = %._crit_edge.i
  store i64 %switch.ext750, ptr %i.adc, align 16, !noalias !949
  br label %bb.id

._crit_edge1232.i:                                ; preds = %bb.id, %switch.lookup727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !910
  br label %switch.lookup731

switch.lookup731:                                 ; preds = %._RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.thread.thread_crit_edge.i, %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.thread.i, %._crit_edge1232.i
  %.sroa.045.2.i = phi i8 [ %.sroa.045.1.i, %._crit_edge1232.i ], [ %.pre.i, %._RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.thread.thread_crit_edge.i ], [ %.pre1413.i, %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.thread.i ] ; 4 uses
  %i.adk = zext nneg i8 %.sroa.045.2.i to i64
  %switch.gep732 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.adk
  %switch.load733 = load i8, ptr %switch.gep732, align 1
  %i.adl = zext nneg i8 %switch.load733 to i128
  %i.adm = lshr i128 -1, %i.adl                   ; 2 uses
  %i.adn = zext i1 %.sroa.3.0.i.i to i8
  %i.ado = and i128 %i.adm, %.sroa.0522.0.i       ; 4 uses
  %i.adp = and i128 %i.adm, %.sroa.0520.0.i       ; 4 uses
  %.sroa.583.0.insert.shift.i = select i1 %.sroa.3.0.i.i, i64 65536, i64 0
  %.sroa.480.0.insert.ext.i = zext nneg i8 %.sroa.045.2.i to i64
  %.sroa.480.0.insert.shift.i = shl nuw nsw i64 %.sroa.480.0.insert.ext.i, 8
  %.sroa.480.0.insert.insert.i = or disjoint i64 %.sroa.480.0.insert.shift.i, %.sroa.583.0.insert.shift.i ; 3 uses
  %i.adq = load ptr, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !910, !nonnull !5, !noundef !5 ; 2 uses
  %i.adr = load i64, ptr %.sroa.539.0..sroa_idx.i, align 8, !noalias !910, !noundef !5 ; 2 uses
  %.idx698 = mul nuw nsw i64 %i.adr, 352
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adq, i64 %.idx698
  %i.adt = icmp eq i64 %i.adr, 0
  br i1 %i.adt, label %switch.lookup735, label %.lr.ph627

bb.if:                                            ; preds = %.lr.ph627
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adw, i64 352 ; 2 uses
  %i.adv = icmp eq ptr %i.adu, %i.ads
  br i1 %i.adv, label %switch.lookup735, label %.lr.ph627

.lr.ph627:                                        ; preds = %switch.lookup731, %bb.if
  %i.adw = phi ptr [ %i.adu, %bb.if ], [ %i.adq, %switch.lookup731 ] ; 2 uses
  %i.adx = getelementptr i8, ptr %i.adw, i64 340
  %.val.i654.i = load i8, ptr %i.adx, align 4, !range !13, !noalias !982, !noundef !5
  %i.ady = trunc nuw i8 %.val.i654.i to i1
  br i1 %i.ady, label %bb.if, label %switch.lookup735

switch.lookup735:                                 ; preds = %.lr.ph627, %bb.if, %switch.lookup731
  %.lcssa555 = phi i8 [ 1, %switch.lookup731 ], [ 1, %bb.if ], [ 0, %.lr.ph627 ] ; 2 uses
  %i.adz = zext nneg i8 %.sroa.045.2.i to i64
  %switch.gep736 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator20compute_discriminant, i64 %i.adz
  %switch.load737 = load i8, ptr %switch.gep736, align 1
  %switch.ext738 = zext i8 %switch.load737 to i64
  %i.aea = load i64, ptr %i.ce, align 8, !noalias !910, !noundef !5
  %i.aeb = icmp eq i64 %i.aea, %switch.ext738
  br i1 %i.aeb, label %.thread999.i, label %bb.ig

bb.ig:                                            ; preds = %switch.lookup735
  invoke void @_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3zipRINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index5slice10IndexSliceNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtNtBT_3vec8IndexVecNtB1K_13RustcFieldIdxRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataB2U_B1I_EEERIB2A_B1I_B3h_EEB1M_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.bv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cb)
          to label %bb.ih unwind label %.thread965.loopexit.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !949

bb.ih:                                            ; preds = %bb.ig
  %.sroa.0869.0.copyload.i = load ptr, ptr %i.bv, align 8, !noalias !910 ; 2 uses
  %.sroa.5871.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %.sroa.5871.0.copyload.i = load ptr, ptr %.sroa.5871.0..sroa_idx.i, align 8, !noalias !910 ; 2 uses
  %.sroa.6873.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %.sroa.6873.0.copyload.i = load i64, ptr %.sroa.6873.0..sroa_idx.i, align 8, !noalias !910 ; 2 uses
  %.sroa.8874.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %.sroa.8874.0.copyload.i = load i64, ptr %.sroa.8874.0..sroa_idx.i, align 8, !noalias !910 ; 4 uses
  %.sroa.7877.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.13878.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %.sroa.17879.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.aec = getelementptr inbounds nuw i8, ptr %.val.i52, i64 72 ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %.val.i52, i64 32 ; 4 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %.val.i52, i64 40 ; 4 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %.val.i52, i64 64 ; 2 uses
  %exitcond.not.i637668.not = icmp ult i64 %.sroa.6873.0.copyload.i, %.sroa.8874.0.copyload.i
  br i1 %exitcond.not.i637668.not, label %.lr.ph640.preheader, label %.thread970.i

.lr.ph640.preheader:                              ; preds = %bb.ih
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0869.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5871.0.copyload.i) ]
  br label %.lr.ph640

.lr.ph640:                                        ; preds = %.lr.ph640.preheader, %.outer.i
  %umax.i675 = phi i64 [ %umax.i, %.outer.i ], [ %.sroa.8874.0.copyload.i, %.lr.ph640.preheader ]
  %.sroa.12.sroa.0.0.ph.i674 = phi i48 [ %.sroa.12.sroa.0.1.i, %.outer.i ], [ undef, %.lr.ph640.preheader ] ; 8 uses
  %.sroa.089.0.ph.i673 = phi i1 [ %i.aht, %.outer.i ], [ true, %.lr.ph640.preheader ]
  %.sroa.0175.0.ph.i672 = phi i8 [ %.sroa.0175.1.i, %.outer.i ], [ -1, %.lr.ph640.preheader ] ; 6 uses
  %.sroa.11179.0.ph.i671 = phi i8 [ %.sroa.11179.1.i, %.outer.i ], [ undef, %.lr.ph640.preheader ] ; 11 uses
  %.sroa.13.0.ph.i670 = phi ptr [ %.sroa.13.1.i, %.outer.i ], [ undef, %.lr.ph640.preheader ] ; 9 uses
  %.sroa.6873.0.ph.i669 = phi i64 [ %i.aeg, %.outer.i ], [ %.sroa.6873.0.copyload.i, %.lr.ph640.preheader ]
  br label %bb.ij

bb.ii:                                            ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkTRRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB21_19RustcEnumVariantIdxERNtB1j_4SizeEQNCINvMs0_NtB1j_6layoutINtB3z_16LayoutCalculatorRNtB1j_16TargetDataLayoutE14layout_of_enumB1Z_B2K_B1e_NCNvNvXs0_NvNtB21_3adt1__NtB5d_34layout_of_adt_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s2_0INtNtNtBc_8adapters10filter_map9FilterMapINtNtB7i_3map3MapINtNtB7i_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecB1Z_B1e_EEENCNvMNtB97_5sliceINtBa7_10IndexSliceB2K_B92_E15iter_enumerated0ENCB55_s3_0EEs4_0E0B23_.exit.i667.i._crit_edge
  %exitcond.not.i = icmp eq i64 %i.aeg, %umax.i675
  br i1 %exitcond.not.i, label %.thread970.i, label %bb.ij

bb.ij:                                            ; preds = %.lr.ph640, %bb.ii
  %.sroa.089.0.i639 = phi i1 [ %.sroa.089.0.ph.i673, %.lr.ph640 ], [ false, %bb.ii ]
  %.sroa.6873.0.i638 = phi i64 [ %.sroa.6873.0.ph.i669, %.lr.ph640 ], [ %i.aeg, %bb.ii ] ; 3 uses
  %i.aeg = add i64 %.sroa.6873.0.i638, 1          ; 5 uses
  %i.aeh = getelementptr inbounds nuw [352 x i8], ptr %.sroa.5871.0.copyload.i, i64 %.sroa.6873.0.i638
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 144 ; 2 uses
  %i.aej = load i64, ptr %i.aei, align 16, !range !18, !noalias !949, !noundef !5
  %i.aek = icmp sgt i64 %i.aej, -1
  br i1 %i.aek, label %bb.jl, label %.invoke1583.i, !prof !23

.thread970.i:                                     ; preds = %.outer.i, %bb.ii, %bb.ih
  %.sroa.13.0.ph.i.lcssa = phi ptr [ %.sroa.13.0.ph.i670, %bb.ii ], [ undef, %bb.ih ], [ %.sroa.13.1.i, %.outer.i ] ; 2 uses
  %.sroa.11179.0.ph.i.lcssa = phi i8 [ %.sroa.11179.0.ph.i671, %bb.ii ], [ undef, %bb.ih ], [ %.sroa.11179.1.i, %.outer.i ] ; 3 uses
  %.sroa.0175.0.ph.i.lcssa = phi i8 [ %.sroa.0175.0.ph.i672, %bb.ii ], [ -1, %bb.ih ], [ %.sroa.0175.1.i, %.outer.i ] ; 4 uses
  %.sroa.12.sroa.0.0.ph.i.lcssa = phi i48 [ %.sroa.12.sroa.0.0.ph.i674, %bb.ii ], [ undef, %bb.ih ], [ %.sroa.12.sroa.0.1.i, %.outer.i ] ; 3 uses
  %.sroa.089.0.i.lcssa = phi i1 [ false, %bb.ii ], [ true, %bb.ih ], [ %i.aht, %.outer.i ]
  %.not569.i = icmp eq i8 %.sroa.0175.0.ph.i.lcssa, -1
  br i1 %.not569.i, label %.thread1008.i, label %bb.ik

bb.ik:                                            ; preds = %.thread970.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.ph.i.lcssa) ]
  br i1 %.sroa.089.0.i.lcssa, label %bb.io, label %bb.in

bb.il:                                            ; preds = %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !910
  %i.ael = icmp ne i32 %.sroa.0208.1.i, 3
  call void @llvm.assume(i1 %i.ael)
  %i.aem = icmp ugt i32 %.sroa.0208.1.i, 1
  br i1 %i.aem, label %bb.im, label %.thread999.i

bb.im:                                            ; preds = %bb.il
  %i.aen = icmp eq i32 %.sroa.0208.1.i, 2
  br i1 %i.aen, label %.thread999.i, label %.thread1008.i

bb.in:                                            ; preds = %bb.ik
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i8 %.sroa.0175.0.ph.i.lcssa, ptr %i.aeo, align 4, !noalias !910
  %.sroa.6200.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 5
  store i8 %.sroa.11179.0.ph.i.lcssa, ptr %.sroa.6200.0..sroa_idx.i, align 1, !noalias !910
  %.sroa.7205.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 6
  store i48 %.sroa.12.sroa.0.0.ph.i.lcssa, ptr %.sroa.7205.0..sroa_idx.i, align 2, !noalias !910
  br label %bb.ip

bb.io:                                            ; preds = %bb.ik
  %.sroa.5535.0.insert.ext.i = zext i48 %.sroa.12.sroa.0.0.ph.i.lcssa to i64
  %.sroa.5535.0.insert.shift.i = shl nuw i64 %.sroa.5535.0.insert.ext.i, 16
  %.sroa.4534.0.insert.ext.i = zext i8 %.sroa.11179.0.ph.i.lcssa to i64
  %.sroa.4534.0.insert.shift.i = shl nuw nsw i64 %.sroa.4534.0.insert.ext.i, 8
  %.sroa.4534.0.insert.insert.i = or disjoint i64 %.sroa.5535.0.insert.shift.i, %.sroa.4534.0.insert.shift.i
  %.sroa.0533.0.insert.ext.i = zext i8 %.sroa.0175.0.ph.i.lcssa to i64
  %.sroa.0533.0.insert.insert.i = or disjoint i64 %.sroa.4534.0.insert.insert.i, %.sroa.0533.0.insert.ext.i
  %i.aep = invoke noundef i64 @_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty(i64 %.sroa.0533.0.insert.insert.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.val.i52)
          to label %bb.iq unwind label %.thread965.loopexit.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !949 ; 4 uses

bb.ip:                                            ; preds = %bb.iu, %bb.in
  %storemerge.i61 = phi i32 [ 1, %bb.in ], [ 0, %bb.iu ]
  store i32 %storemerge.i61, ptr %i.bt, align 16, !noalias !910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !910
  store i32 0, ptr %i.bd, align 16, !noalias !910
  %.sroa.658.0..sroa_idx59.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i64 %.sroa.480.0.insert.insert.i, ptr %.sroa.658.0..sroa_idx59.i, align 4, !noalias !910
  %.sroa.768.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i128 %i.ado, ptr %.sroa.768.0..sroa_idx69.i, align 16, !noalias !910
  %.sroa.873.0..sroa_idx74.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i128 %i.adp, ptr %.sroa.873.0..sroa_idx74.i, align 16, !noalias !910
  invoke fastcc void @_RINvMNtNtCskVLyBV5N46_15ra_ap_rustc_abi6layout6simpleINtB7_10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB19_19RustcEnumVariantIdxE11scalar_pairRNtB7_16TargetDataLayoutEB1b_(ptr noalias nofree noundef align 16 captures(none) dereferenceable(352) %i.bs, ptr nonnull %.val.i52, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(48) %i.bd, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(48) %i.bt)
          to label %bb.iv unwind label %.thread965.loopexit.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !949

bb.iq:                                            ; preds = %bb.io
  %i.aeq = icmp ugt i64 %i.aep, 2305843009213693951
  br i1 %i.aeq, label %.invoke.i62, label %bb.ir, !prof !7

bb.ir:                                            ; preds = %bb.iq
  %i.aer = icmp samesign ult i64 %i.aep, 17
  br i1 %i.aer, label %bb.it, label %bb.is, !prof !23

bb.is:                                            ; preds = %bb.ir
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #45
          to label %bb.hx unwind label %.thread965.loopexit.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !949

bb.it:                                            ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !910
  invoke void @_RNvMso_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_13WrappingRange4full(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.be, i64 noundef %i.aep)
          to label %bb.iu unwind label %.thread965.loopexit.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !949

bb.iu:                                            ; preds = %bb.it
  %i.aes = load i128, ptr %i.be, align 16, !noalias !910, !noundef !5
  %i.aet = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.aeu = load i128, ptr %i.aet, align 16, !noalias !910, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !910
  %i.aev = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i8 %.sroa.0175.0.ph.i.lcssa, ptr %i.aev, align 4, !noalias !910
  %.sroa.6200.0..sroa_idx203.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 5
  store i8 %.sroa.11179.0.ph.i.lcssa, ptr %.sroa.6200.0..sroa_idx203.i, align 1, !noalias !910
  %.sroa.7205.0..sroa_idx207.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 6
  store i48 %.sroa.12.sroa.0.0.ph.i.lcssa, ptr %.sroa.7205.0..sroa_idx207.i, align 2, !noalias !910
  %i.aew = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i128 %i.aes, ptr %i.aew, align 16, !noalias !910
  %i.aex = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  store i128 %i.aeu, ptr %i.aex, align 16, !noalias !910
  br label %bb.ip

bb.iv:                                            ; preds = %bb.ip
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !910
  %i.aey = getelementptr inbounds nuw i8, ptr %i.bs, i64 144
  %i.aez = load i64, ptr %i.aey, align 16, !range !18, !noalias !910, !noundef !5
  %i.afa = icmp sgt i64 %i.aez, -1
  br i1 %i.afa, label %bb.iy, label %bb.iw, !prof !23

bb.iw:                                            ; preds = %bb.iv
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 107 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #45
          to label %bb.hx unwind label %bb.ix, !noalias !949

bb.ix:                                            ; preds = %.invoke1587.i, %bb.jb, %bb.iz, %bb.iw
  %i.afb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1m_19RustcEnumVariantIdxEEB1o_(ptr noalias nofree noundef align 16 dereferenceable(352) %i.bs) #42
          to label %.thread955.i unwind label %bb.jk, !noalias !949

end_hunk_2
begin_hunk_3_@_RINvMsu_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_11BackendRepr12scalar_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty:bb.a
  %.sroa.0.0.i.i25 = load i8, ptr %.sroa.0.0.in.i.i24, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2758
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit34

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit34: ; preds = %switch.lookup.i31, %switch.lookup14.i28, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout16pointer_align_in.exit.i23
  %.sroa.05.0.i26 = phi i8 [ %.sroa.07.0.i33, %switch.lookup.i31 ], [ %.sroa.06.0.i30, %switch.lookup14.i28 ], [ %.sroa.0.0.i.i25, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout16pointer_align_in.exit.i23 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2762)
  %.sroa.44.0.extract.shift.i35 = lshr i64 %.sroa.49.0.copyload, 8 ; 2 uses
  %trunc.i36 = trunc i64 %.sroa.49.0.copyload to i8
  switch i8 %trunc.i36, label %bb.o [
    i8 0, label %switch.lookup.i48
    i8 1, label %switch.lookup14.i45
    i8 2, label %bb.p
  ]

bb.o:                                             ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit34
  unreachable

switch.lookup.i48:                                ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit34
  %switch.idx.cast.i49 = and i64 %.sroa.44.0.extract.shift.i35, 255
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %switch.idx.cast.i49
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 83
  %.sroa.07.0.i50 = load i8, ptr %i.az, align 1, !alias.scope !2762, !noundef !5
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit51

switch.lookup14.i45:                              ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit34
  %switch.idx.cast15.i46 = and i64 %.sroa.44.0.extract.shift.i35, 255
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %switch.idx.cast15.i46
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  %.sroa.06.0.i47 = load i8, ptr %i.bb, align 1, !alias.scope !2762, !noundef !5
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit51

bb.p:                                             ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit34
  %.sroa.6.0.extract.shift.i37 = lshr i64 %.sroa.49.0.copyload, 32
  %.sroa.6.0.extract.trunc.i38 = trunc nuw i64 %.sroa.6.0.extract.shift.i37 to i32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2763)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2762
  store i32 %.sroa.6.0.extract.trunc.i38, ptr %i.b, align 4, !noalias !2764
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bd = load i32, ptr %i.bc, align 8, !alias.scope !2764, !noundef !5
  %i.be = icmp eq i32 %i.bd, %.sroa.6.0.extract.trunc.i38
  br i1 %i.be, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !2764, !nonnull !5, !noundef !5 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !2764, !noundef !5 ; 2 uses
  %.idx72 = shl nuw nsw i64 %i.bi, 5
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx72
  %i.bk = icmp eq i64 %i.bi, 0
  br i1 %i.bk, label %._crit_edge68, label %.lr.ph67

bb.r:                                             ; preds = %.lr.ph67
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.bj
  br i1 %i.bm, label %._crit_edge68, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.q, %bb.r
  %i.bn = phi ptr [ %i.bl, %bb.r ], [ %i.bg, %bb.q ] ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 8, !noalias !2765, !noundef !5
  %i.bp = icmp eq i32 %i.bo, %.sroa.6.0.extract.trunc.i38
  br i1 %i.bp, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout16pointer_align_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i39, label %bb.r

bb.s:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout16pointer_align_in.exit.i40

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout16pointer_align_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i39: ; preds = %.lr.ph67
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout16pointer_align_in.exit.i40

._crit_edge68:                                    ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2764
  store ptr %i.b, ptr %i.a, align 8, !noalias !2764
  %.sroa.45.0..sroa_idx.i.i44 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i44, align 8, !noalias !2764
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @403) #43, !noalias !2764
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout16pointer_align_in.exit.i40: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout16pointer_align_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i39, %bb.s
  %.sroa.0.0.in.i.i41 = phi ptr [ %i.bq, %bb.s ], [ %i.br, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout16pointer_align_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i39 ]
  %.sroa.0.0.i.i42 = load i8, ptr %.sroa.0.0.in.i.i41, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2762
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit51

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit51: ; preds = %switch.lookup.i48, %switch.lookup14.i45, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout16pointer_align_in.exit.i40
  %.sroa.05.0.i43 = phi i8 [ %.sroa.07.0.i50, %switch.lookup.i48 ], [ %.sroa.06.0.i47, %switch.lookup14.i45 ], [ %.sroa.0.0.i.i42, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout16pointer_align_in.exit.i40 ]
  %..i = tail call noundef i8 @llvm.umax.i8(i8 %.sroa.05.0.i43, i8 %.sroa.05.0.i26)
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout16pointer_align_in.exit.i, %switch.lookup14.i, %switch.lookup.i, %bb.a, %bb.a, %bb.a, %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit51
  %.sroa.4.0 = phi i8 [ undef, %bb.a ], [ %..i, %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit51 ], [ undef, %bb.a ], [ undef, %bb.a ], [ %.sroa.07.0.i, %switch.lookup.i ], [ %.sroa.06.0.i, %switch.lookup14.i ], [ %.sroa.0.0.i.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout16pointer_align_in.exit.i ]
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive5alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit51 ], [ false, %bb.a ], [ false, %bb.a ], [ true, %switch.lookup.i ], [ true, %switch.lookup14.i ], [ true, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout16pointer_align_in.exit.i ]
  %i.bs = insertvalue { i1, i8 } poison, i1 %.sroa.0.0, 0
  %i.bt = insertvalue { i1, i8 } %i.bs, i8 %.sroa.4.0, 1
  ret { i1, i8 } %i.bt
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i128 @_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8 ; 3 uses
  %i.d = load i128, ptr %0, align 16, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i128, ptr %i.e, align 16, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2773)
  %.sroa.44.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 8 ; 2 uses
  %trunc.i = trunc i64 %.sroa.0.0.copyload to i8
  switch i8 %trunc.i, label %bb.b [
    i8 0, label %switch.lookup
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.44.0.extract.trunc.i = trunc i64 %.sroa.44.0.extract.shift.i to i8
  %i.g = tail call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i), !noalias !2773
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit

bb.d:                                             ; preds = %bb.a
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2774)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2773
  store i32 %.sroa.6.0.extract.trunc.i, ptr %i.b, align 4, !noalias !2775
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load i32, ptr %i.h, align 8, !alias.scope !2775, !noundef !5
  %i.j = icmp eq i32 %i.i, %.sroa.6.0.extract.trunc.i
  br i1 %i.j, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2775, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !2775, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.n, 5
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.o
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %i.s = phi ptr [ %i.q, %bb.f ], [ %i.l, %bb.e ] ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !noalias !2776, !noundef !5
  %i.u = icmp eq i32 %i.t, %.sroa.6.0.extract.trunc.i
  br i1 %i.u, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i, label %bb.f

bb.g:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i: ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i

._crit_edge:                                      ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2775
  store ptr %i.b, ptr %i.a, align 8, !noalias !2775
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !2775
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !2775
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i, %bb.g
  %.sroa.0.0.in.i.i = phi ptr [ %i.v, %bb.g ], [ %i.w, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i ]
  %.sroa.0.0.i6.i = load i64, ptr %.sroa.0.0.in.i.i, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2773
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.c, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i
  %.sroa.05.0.i = phi i64 [ %.sroa.0.0.i6.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i ], [ %i.g, %bb.c ] ; 4 uses
  %i.x = icmp ugt i64 %.sroa.05.0.i, 2305843009213693951
  br i1 %i.x, label %bb.i, label %bb.h, !prof !29

bb.h:                                             ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit
  %.neg4 = mul nsw i64 %.sroa.05.0.i, -8
  %i.y = icmp samesign ult i64 %.sroa.05.0.i, 17
  br i1 %i.y, label %.thread, label %bb.j, !prof !30

bb.i:                                             ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit
  tail call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i) #45
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.z = and i64 %.sroa.44.0.extract.shift.i, 255
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.z
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %.thread

.thread:                                          ; preds = %switch.lookup, %bb.h
  %.neg5 = phi i64 [ %.neg4, %bb.h ], [ %switch.ext, %switch.lookup ]
  %i.aa = and i64 %.neg5, 120
  %i.ab = zext nneg i64 %i.aa to i128
  %i.ac = lshr i128 -1, %i.ab
  %.neg = xor i128 %i.f, -1
  %i.ad = add i128 %i.d, %.neg
  %i.ae = and i128 %i.ac, %i.ad
  ret i128 %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCsaMQbKjKCVRW_12tracing_core10dispatcher11get_defaultbNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB13_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0EB29_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %.split5, label %.split

bb.c:                                             ; preds = %bb.a
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i8, ptr %i.f, align 8, !range !15, !noundef !5
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %_RNvYNCNKNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.thread.i, label %_RNvYNCNKNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i, !prof !23

_RNvYNCNKNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.c
  %i.i = tail call noundef ptr @_RNvMNtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCsaMQbKjKCVRW_12tracing_core10dispatcher5StateE16get_or_init_slowCs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull align 8 %i.e) ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsaMQbKjKCVRW_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0E0bEB3r_.exit.thread, label %_RNvYNCNKNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.thread.i

_RNvYNCNKNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.thread.i: ; preds = %_RNvYNCNKNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i, %bb.c
  %.sroa.0.0.i.i2.i = phi ptr [ %i.i, %_RNvYNCNKNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i ], [ %i.e, %bb.c ] ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 32 ; 4 uses
  %i.l = load i8, ptr %i.k, align 1, !range !13, !noundef !5
  %i.m = trunc nuw i8 %i.l to i1
  store i8 0, ptr %i.k, align 1
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_RNvYNCNKNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.thread.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2791)
  %i.n = load ptr, ptr %0, align 8, !noalias !2791, !nonnull !5, !align !11, !noundef !5
  %i.o = load i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher4NONE, align 8, !range !4, !alias.scope !2791, !noundef !5
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !2791, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !2791, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  br i1 %i.p, label %bb.e, label %_RNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0B1b_.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !52, !invariant.load !5, !noalias !2791
  %i.u = add nsw i64 %i.t, -1
  %i.v = and i64 %i.u, -16
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  br label %_RNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0B1b_.exit.i.i

_RNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0B1b_.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i5.i = phi ptr [ %i.x, %bb.e ], [ %i.q, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !invariant.load !5, !noalias !2791, !nonnull !5
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull %.sroa.0.0.i.i5.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.n) #47, !noalias !2791, !inline_history !2779
  br label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsaMQbKjKCVRW_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0E0bEB3r_.exit

bb.f:                                             ; preds = %_RNvYNCNKNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.thread.i
  %i.ab = load i64, ptr %.sroa.0.0.i.i2.i, align 8, !noundef !5 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 9223372036854775807
  br i1 %i.ac, label %bb.i, label %bb.g, !prof !23

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCshzWfHUSfYae_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #43
          to label %.noexc.i.i unwind label %bb.h

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.i:                                             ; preds = %bb.f
  %i.ae = add nuw nsw i64 %i.ab, 1
  store i64 %i.ae, ptr %.sroa.0.0.i.i2.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2792)
  %i.ag = load i64, ptr %i.af, align 8, !range !10, !alias.scope !2792, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ag, 2
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !2792
  %i.ai = icmp eq i64 %i.ah, 2
  %_RNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ai, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !4, !alias.scope !2793
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aj = phi i64 [ %i.ag, %bb.i ], [ %.pre.i.i, %bb.j ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.af, %bb.i ], [ %_RNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.j ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2793)
  %i.ak = load ptr, ptr %0, align 8, !noalias !2793, !nonnull !5, !align !11, !noundef !5
  %i.al = trunc nuw i64 %i.aj to i1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !2793, !nonnull !5, !noundef !5 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !2793, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !52, !invariant.load !5, !noalias !2793
  %i.as = add nsw i64 %i.ar, -1
  %i.at = and i64 %i.as, -16
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.0.i9.i.i = phi ptr [ %i.av, %bb.l ], [ %i.an, %bb.k ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !invariant.load !5, !noalias !2793, !nonnull !5
  %i.ay = invoke noundef zeroext i1 %i.ax(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ak) #47
          to label %bb.o unwind label %bb.n, !inline_history !2784

bb.n:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load i64, ptr %.sroa.0.0.i.i2.i, align 8, !noundef !5
  %i.bb = add i64 %i.ba, -1
  store i64 %i.bb, ptr %.sroa.0.0.i.i2.i, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bc = load i64, ptr %.sroa.0.0.i.i2.i, align 8, !noundef !5
  %i.bd = add i64 %i.bc, -1
  store i64 %i.bd, ptr %.sroa.0.0.i.i2.i, align 8
  store i8 1, ptr %i.k, align 8
  br label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsaMQbKjKCVRW_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0E0bEB3r_.exit

bb.p:                                             ; preds = %bb.n, %bb.h
  %.pn.i.i = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.az, %bb.n ]
  store i8 1, ptr %i.k, align 8
  resume { ptr, i32 } %.pn.i.i

.split5:                                          ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2794)
  %i.be = load ptr, ptr %0, align 8, !noalias !2794, !nonnull !5, !align !11, !noundef !5
  %i.bf = load i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !4, !alias.scope !2794, !noundef !5
  %i.bg = trunc nuw i64 %i.bf to i1
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !alias.scope !2794, !nonnull !5, !noundef !5 ; 2 uses
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !alias.scope !2794, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  br i1 %i.bg, label %bb.q, label %_RNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0B1b_.exit

bb.q:                                             ; preds = %.split5
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !range !52, !invariant.load !5, !noalias !2794
  %i.bl = add nsw i64 %i.bk, -1
  %i.bm = and i64 %i.bl, -16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  br label %_RNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0B1b_.exit

_RNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0B1b_.exit: ; preds = %.split5, %bb.q
  %.sroa.0.0.i9 = phi ptr [ %i.bo, %bb.q ], [ %i.bh, %.split5 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !invariant.load !5, !noalias !2794, !nonnull !5
  %i.br = tail call noundef zeroext i1 %i.bq(ptr noundef nonnull %.sroa.0.0.i9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.be) #47, !noalias !2794, !inline_history !2784
  br label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsaMQbKjKCVRW_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0E0bEB3r_.exit

.split:                                           ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2795)
  %i.bs = load ptr, ptr %0, align 8, !noalias !2795, !nonnull !5, !align !11, !noundef !5
  %i.bt = load i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher4NONE, align 8, !range !4, !alias.scope !2795, !noundef !5
  %i.bu = trunc nuw i64 %i.bt to i1
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !2795, !nonnull !5, !noundef !5 ; 2 uses
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !2795, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  br i1 %i.bu, label %bb.r, label %_RNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0B1b_.exit11

bb.r:                                             ; preds = %.split
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !range !52, !invariant.load !5, !noalias !2795
  %i.bz = add nsw i64 %i.by, -1
  %i.ca = and i64 %i.bz, -16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  br label %_RNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0B1b_.exit11

_RNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0B1b_.exit11: ; preds = %.split, %bb.r
  %.sroa.0.0.i10 = phi ptr [ %i.cc, %bb.r ], [ %i.bv, %.split ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !invariant.load !5, !noalias !2795, !nonnull !5
  %i.cf = tail call noundef zeroext i1 %i.ce(ptr noundef nonnull %.sroa.0.0.i10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bs) #47, !noalias !2795, !inline_history !2784
  br label %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsaMQbKjKCVRW_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0E0bEB3r_.exit

_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsaMQbKjKCVRW_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0E0bEB3r_.exit: ; preds = %bb.o, %_RNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0B1b_.exit.i.i, %_RNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0B1b_.exit13, %_RNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0B1b_.exit, %_RNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0B1b_.exit11
  %.sroa.0.0 = phi i1 [ %i.br, %_RNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0B1b_.exit ], [ %i.cf, %_RNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0B1b_.exit11 ], [ %i.ct, %_RNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0B1b_.exit13 ], [ %i.ay, %bb.o ], [ %i.aa, %_RNCNvMNtNtCsd9Lm8bEdjjY_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive1__25predicates_Configuration_E7executes1_0B1b_.exit.i.i ]
  ret i1 %.sroa.0.0
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_:bb.a

.lr.ph10142:                                      ; preds = %bb.x, %bb.y
  %i.ey = phi ptr [ %i.ew, %bb.y ], [ %i.er, %bb.x ] ; 3 uses
  %i.ez = load i32, ptr %i.ey, align 8, !noalias !5330, !noundef !5
  %i.fa = icmp eq i32 %i.ez, %.sroa.6.0.extract.trunc.i.i285.i
  br i1 %i.fa, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i286.i, label %bb.y

bb.z:                                             ; preds = %bb.w
  %i.fb = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i287.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i286.i: ; preds = %.lr.ph10142
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i287.i

._crit_edge:                                      ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !5328
  store ptr %i.bv, ptr %i.bu, align 8, !noalias !5328
  %.sroa.45.0..sroa_idx.i.i.i295.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i295.i, align 8, !noalias !5328
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.bu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5328
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i287.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i286.i, %bb.z
  %.sroa.0.0.in.i.i.i288.i = phi ptr [ %i.fb, %bb.z ], [ %i.fc, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i286.i ]
  %.sroa.0.0.i6.i.i289.i = load i64, ptr %.sroa.0.0.in.i.i.i288.i, align 8, !noalias !5331, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !5326
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i290.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i290.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i287.i, %bb.v
  %.sroa.05.0.i.i291.i = phi i64 [ %.sroa.0.0.i6.i.i289.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i287.i ], [ %i.em, %bb.v ] ; 4 uses
  %i.fd = icmp ugt i64 %.sroa.05.0.i.i291.i, 2305843009213693951
  br i1 %i.fd, label %bb.ab, label %bb.aa, !prof !29

bb.aa:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i290.i
  %i.fe = icmp samesign ult i64 %.sroa.05.0.i.i291.i, 17
  br i1 %i.fe, label %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit297_crit_edge.i, label %bb.ac, !prof !30

._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit297_crit_edge.i: ; preds = %bb.aa
  %.neg4.i292.i = mul nuw nsw i64 %.sroa.05.0.i.i291.i, 120
  %.val2.pre.i57.pre.i = load ptr, ptr %i.ei, align 8, !noalias !5322
  %i.ff = and i64 %.neg4.i292.i, 120
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit297.i

bb.ab:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i290.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i291.i) #45, !noalias !5332
  unreachable

bb.ac:                                            ; preds = %bb.aa
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5332
  unreachable

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit297.i: ; preds = %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit297_crit_edge.i, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.val2.pre.i57.i = phi ptr [ %.val2.pre.i57.pre.i, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit297_crit_edge.i ], [ %.val.i55.i, %bb.q ], [ %.val.i55.i, %bb.t ], [ %.val.i55.i, %bb.s ], [ %.val.i55.i, %bb.r ], [ %.val.i55.i, %bb.u ]
  %.neg5.i293.i = phi i64 [ %i.ff, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit297_crit_edge.i ], [ 120, %bb.q ], [ 64, %bb.t ], [ 96, %bb.s ], [ 112, %bb.r ], [ 0, %bb.u ]
  %i.fg = zext nneg i64 %.neg5.i293.i to i128
  %i.fh = lshr i128 -1, %i.fg
  %.neg.i294.i = xor i128 %.sroa.467.0.copyload.i, -1
  %i.fi = add i128 %.sroa.066.0.copyload.i, %.neg.i294.i
  %i.fj = and i128 %i.fh, %i.fi
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i58.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i58.i: ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit297.i, %bb.n
  %.val2.i59.i = phi ptr [ %.val2.pre.i57.i, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit297.i ], [ %.val.i55.i, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i60.i = phi i128 [ %i.fj, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit297.i ], [ 0, %bb.n ]
  %i.fk = load ptr, ptr %i.dz, align 8, !alias.scope !5320, !noalias !5321, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5333)
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !5333, !noalias !5322, !nonnull !5, !noundef !5 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !range !13, !noalias !5334, !noundef !5
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i58.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fp = load i8, ptr %i.fo, align 1, !noalias !5334, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i59.i) ]
  %i.fq = load ptr, ptr %.val2.i59.i, align 8, !noalias !5334, !nonnull !5, !align !21, !noundef !5
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 338
  %i.fs = load i8, ptr %i.fr, align 2, !noalias !5334, !noundef !5
  %..i.i.i74.i = call noundef i8 @llvm.umin.i8(i8 %i.fp, i8 %i.fs)
  %i.ft = and i8 %..i.i.i74.i, 63
  %i.fu = zext nneg i8 %i.ft to i64
  %i.fv = shl nuw i64 1, %i.fu
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit75.i

bb.ae:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i58.i
  %i.fw = load ptr, ptr %.val2.i59.i, align 8, !noalias !5334, !nonnull !5, !align !21, !noundef !5 ; 6 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 338
  %i.fy = load i8, ptr %i.fx, align 2, !noalias !5334, !noundef !5
  %i.fz = and i8 %i.fy, 63                        ; 2 uses
  %i.ga = zext nneg i8 %i.fz to i64
  %i.gb = shl nuw i64 1, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 320
  %i.gd = load i64, ptr %i.gc, align 16, !noalias !5334, !noundef !5
  %.sroa.5.0..sroa_idx.i.i61.i = getelementptr inbounds nuw i8, ptr %i.fw, i64 136
  %.sroa.5.0.copyload.i.i62.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i61.i, align 8, !noalias !5334 ; 2 uses
  %.not.i3.i63.i = icmp eq i8 %.sroa.5.0.copyload.i.i62.i, -1
  br i1 %.not.i3.i63.i, label %bb.ap, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.6.0..sroa_idx.i.i64.i = getelementptr inbounds nuw i8, ptr %i.fw, i64 137
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fw, i64 96
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !alias.scope !5333, !noalias !5322, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  %.sroa.071.0.copyload.i = load i128, ptr %i.ge, align 16, !noalias !5334
  %.sroa.472.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fw, i64 112
  %.sroa.472.0.copyload.i = load i128, ptr %.sroa.472.0..sroa_idx.i, align 16, !noalias !5334
  %.sroa.574.41.copyload.i = load i56, ptr %.sroa.6.0..sroa_idx.i.i64.i, align 1, !noalias !5334 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5335)
  call void @llvm.experimental.noalias.scope.decl(metadata !5336), !noalias !5337
  switch i8 %.sroa.5.0.copyload.i.i62.i, label %bb.ag [
    i8 0, label %switch.lookup
    i8 1, label %bb.ah
    i8 2, label %bb.ai
  ]

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.af
  %.sroa.44.0.extract.trunc.i.i264.i = trunc i56 %.sroa.574.41.copyload.i to i8
  %i.gh = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i264.i), !noalias !5338
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i272.i

bb.ai:                                            ; preds = %bb.af
  %.sroa.574.41.insert.ext.i = zext i56 %.sroa.574.41.copyload.i to i64
  %.sroa.6.0.extract.shift.i.i266.i = lshr i64 %.sroa.574.41.insert.ext.i, 24
  %.sroa.6.0.extract.trunc.i.i267.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i266.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5339), !noalias !5337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !5338
  store i32 %.sroa.6.0.extract.trunc.i.i267.i, ptr %i.bx, align 4, !noalias !5340
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 72
  %i.gj = load i32, ptr %i.gi, align 8, !alias.scope !5341, !noalias !5334, !noundef !5
  %i.gk = icmp eq i32 %i.gj, %.sroa.6.0.extract.trunc.i.i267.i
  br i1 %i.gk, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !alias.scope !5341, !noalias !5334, !nonnull !5, !noundef !5 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !5341, !noalias !5334, !noundef !5 ; 2 uses
  %.idx10323 = shl nuw nsw i64 %i.go, 5
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.idx10323
  %i.gq = icmp eq i64 %i.go, 0
  br i1 %i.gq, label %._crit_edge10146, label %.lr.ph10145

bb.ak:                                            ; preds = %.lr.ph10145
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gt, i64 32 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.gp
  br i1 %i.gs, label %._crit_edge10146, label %.lr.ph10145

.lr.ph10145:                                      ; preds = %bb.aj, %bb.ak
  %i.gt = phi ptr [ %i.gr, %bb.ak ], [ %i.gm, %bb.aj ] ; 3 uses
  %i.gu = load i32, ptr %i.gt, align 8, !noalias !5342, !noundef !5
  %i.gv = icmp eq i32 %i.gu, %.sroa.6.0.extract.trunc.i.i267.i
  br i1 %i.gv, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i268.i, label %bb.ak

bb.al:                                            ; preds = %bb.ai
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i269.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i268.i: ; preds = %.lr.ph10145
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i269.i

._crit_edge10146:                                 ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !5340
  store ptr %i.bx, ptr %i.bw, align 8, !noalias !5340
  %.sroa.45.0..sroa_idx.i.i.i277.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i277.i, align 8, !noalias !5340
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5340
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i269.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i268.i, %bb.al
  %.sroa.0.0.in.i.i.i270.i = phi ptr [ %i.gw, %bb.al ], [ %i.gx, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i268.i ]
  %.sroa.0.0.i6.i.i271.i = load i64, ptr %.sroa.0.0.in.i.i.i270.i, align 8, !noalias !5343, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !5338
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i272.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i272.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i269.i, %bb.ah
  %.sroa.05.0.i.i273.i = phi i64 [ %.sroa.0.0.i6.i.i271.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i269.i ], [ %i.gh, %bb.ah ] ; 4 uses
  %i.gy = icmp ugt i64 %.sroa.05.0.i.i273.i, 2305843009213693951
  br i1 %i.gy, label %bb.an, label %bb.am, !prof !29

bb.am:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i272.i
  %.neg4.i274.i = mul nsw i64 %.sroa.05.0.i.i273.i, -8
  %i.gz = icmp samesign ult i64 %.sroa.05.0.i.i273.i, 17
  br i1 %i.gz, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit279.i, label %bb.ao, !prof !30

bb.an:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i272.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i273.i) #45, !noalias !5344
  unreachable

bb.ao:                                            ; preds = %bb.am
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5344
  unreachable

switch.lookup:                                    ; preds = %bb.af
  %.sroa.44.0.extract.trunc.i.i264.i.mask = and i56 %.sroa.574.41.copyload.i, 255
  %i.ha = zext nneg i56 %.sroa.44.0.extract.trunc.i.i264.i.mask to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.ha
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit279.i

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit279.i: ; preds = %switch.lookup, %bb.am
  %.neg5.i275.i = phi i64 [ %.neg4.i274.i, %bb.am ], [ %switch.ext, %switch.lookup ]
  %i.hb = and i64 %.neg5.i275.i, 120
  %i.hc = zext nneg i64 %i.hb to i128
  %i.hd = lshr i128 -1, %i.hc
  %.neg.i276.i = xor i128 %.sroa.472.0.copyload.i, -1
  %i.he = add i128 %.sroa.071.0.copyload.i, %.neg.i276.i
  %i.hf = and i128 %i.hd, %i.he
  br label %bb.ap

bb.ap:                                            ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit279.i, %bb.ae
  %.sroa.01.0.i.i67.i = phi i128 [ %i.hf, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit279.i ], [ 0, %bb.ae ]
  %..i14.i.i68.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.gd, i64 range(i64 1, -9223372036854775807) %i.gb)
  %i.hg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %..i14.i.i68.i, i1 true)
  %i.hh = trunc nuw nsw i64 %i.hg to i32          ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !alias.scope !5333, !noalias !5322, !nonnull !5, !align !21, !noundef !5
  %i.hk = load i128, ptr %i.hj, align 16, !noalias !5334, !noundef !5 ; 2 uses
  %.not10.i.i69.i = icmp eq i128 %i.hk, 0
  br i1 %.not10.i.i69.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !alias.scope !5333, !noalias !5322, !nonnull !5, !noundef !5
  %i.hn = load i8, ptr %i.hm, align 1, !range !13, !noalias !5334, !noundef !5
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %bb.as, label %bb.at

bb.ar:                                            ; preds = %bb.at, %bb.as, %bb.ap
  %.sroa.07.0.i.i71.i = phi i32 [ %spec.select.i.i73.i, %bb.as ], [ %i.hh, %bb.ap ], [ %..i15.i.i70.i, %bb.at ]
  %i.hp = zext nneg i32 %.sroa.07.0.i.i71.i to i64
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit75.i

bb.as:                                            ; preds = %bb.aq
  %i.hq = icmp eq i128 %.sroa.01.0.i.i67.i, %i.hk
  %i.hr = zext nneg i8 %i.fz to i32
  %spec.select.i.i73.i = select i1 %i.hq, i32 %i.hr, i32 %i.hh
  br label %bb.ar

bb.at:                                            ; preds = %bb.aq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.ht = load ptr, ptr %i.hs, align 8, !alias.scope !5333, !noalias !5322, !nonnull !5, !align !11, !noundef !5
  %i.hu = load i64, ptr %i.ht, align 8, !noalias !5334, !noundef !5
  %i.hv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.hu, i1 false)
  %i.hw = trunc nuw nsw i64 %i.hv to i32
  %..i15.i.i70.i = call noundef range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.hh, i32 range(i32 0, 129) %i.hw)
  br label %bb.ar

bb.au:                                            ; preds = %bb.m
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ef, i64 noundef %i.ee, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #43, !noalias !5322
  unreachable

_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit75.i: ; preds = %bb.ar, %bb.ad
  %.sroa.0.0.i4.i72.i = phi i64 [ %i.fv, %bb.ad ], [ %i.hp, %bb.ar ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5345)
  %i.hx = load i64, ptr %i.dx, align 8, !alias.scope !5345, !noalias !5321, !noundef !5 ; 2 uses
  %i.hy = icmp ugt i64 %i.hx, %i.ed
  br i1 %i.hy, label %bb.av, label %bb.cc

bb.av:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit75.i
  %i.hz = load ptr, ptr %.val38, align 8, !alias.scope !5345, !noalias !5321, !nonnull !5, !align !11, !noundef !5
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.ed ; 2 uses
  %.val.i.i = load ptr, ptr %i.ia, align 8, !noalias !5346, !nonnull !5, !align !11, !noundef !5 ; 7 uses
  %i.ib = load ptr, ptr %.val.i.i, align 8, !noalias !5346, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 96
  %.sroa.058.0.copyload.i = load i128, ptr %i.ic, align 16, !noalias !5346
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ib, i64 112
  %.sroa.459.0.copyload.i = load i128, ptr %.sroa.459.0..sroa_idx.i, align 16, !noalias !5346
  %.sroa.560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ib, i64 136
  %.sroa.560.0.copyload.i = load i64, ptr %.sroa.560.0..sroa_idx.i, align 8, !noalias !5346 ; 3 uses
  %.sroa.560.40.extract.trunc.i = trunc i64 %.sroa.560.0.copyload.i to i8 ; 2 uses
  %.not.i.i.i = icmp eq i8 %.sroa.560.40.extract.trunc.i, -1
  br i1 %.not.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.id = load ptr, ptr %i.dy, align 8, !alias.scope !5345, !noalias !5321, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5347)
  call void @llvm.experimental.noalias.scope.decl(metadata !5348), !noalias !5349
  %.sroa.44.0.extract.shift.i.i245.i = lshr i64 %.sroa.560.0.copyload.i, 8
  %.sroa.44.0.extract.trunc.i.i246.i = trunc i64 %.sroa.44.0.extract.shift.i.i245.i to i8 ; 2 uses
  switch i8 %.sroa.560.40.extract.trunc.i, label %bb.ax [
    i8 0, label %bb.ay
    i8 1, label %bb.bd
    i8 2, label %bb.be
  ]

bb.ax:                                            ; preds = %bb.aw
  unreachable

bb.ay:                                            ; preds = %bb.aw
  switch i8 %.sroa.44.0.extract.trunc.i.i246.i, label %default.unreachable25.i.i.i260.i [
    i8 0, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit261.i
    i8 1, label %bb.az
    i8 2, label %bb.ba
    i8 3, label %bb.bb
    i8 4, label %bb.bc
  ]

default.unreachable25.i.i.i260.i:                 ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.ay
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit261.i

bb.ba:                                            ; preds = %bb.ay
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit261.i

bb.bb:                                            ; preds = %bb.ay
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit261.i

bb.bc:                                            ; preds = %bb.ay
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit261.i

bb.bd:                                            ; preds = %bb.aw
  %i.ie = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i246.i), !noalias !5350
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i254.i

bb.be:                                            ; preds = %bb.aw
  %.sroa.6.0.extract.shift.i.i248.i = lshr i64 %.sroa.560.0.copyload.i, 32
  %.sroa.6.0.extract.trunc.i.i249.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i248.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5351), !noalias !5349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !5350
  store i32 %.sroa.6.0.extract.trunc.i.i249.i, ptr %i.bz, align 4, !noalias !5352
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 72
  %i.ig = load i32, ptr %i.if, align 8, !alias.scope !5353, !noalias !5346, !noundef !5
  %i.ih = icmp eq i32 %i.ig, %.sroa.6.0.extract.trunc.i.i249.i
  br i1 %i.ih, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.ij = load ptr, ptr %i.ii, align 8, !alias.scope !5353, !noalias !5346, !nonnull !5, !noundef !5 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.id, i64 40
  %i.il = load i64, ptr %i.ik, align 8, !alias.scope !5353, !noalias !5346, !noundef !5 ; 2 uses
  %.idx10324 = shl nuw nsw i64 %i.il, 5
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 %.idx10324
  %i.in = icmp eq i64 %i.il, 0
  br i1 %i.in, label %._crit_edge10150, label %.lr.ph10149

bb.bg:                                            ; preds = %.lr.ph10149
  %i.io = getelementptr inbounds nuw i8, ptr %i.iq, i64 32 ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.im
  br i1 %i.ip, label %._crit_edge10150, label %.lr.ph10149

.lr.ph10149:                                      ; preds = %bb.bf, %bb.bg
  %i.iq = phi ptr [ %i.io, %bb.bg ], [ %i.ij, %bb.bf ] ; 3 uses
  %i.ir = load i32, ptr %i.iq, align 8, !noalias !5354, !noundef !5
  %i.is = icmp eq i32 %i.ir, %.sroa.6.0.extract.trunc.i.i249.i
  br i1 %i.is, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i250.i, label %bb.bg

bb.bh:                                            ; preds = %bb.be
  %i.it = getelementptr inbounds nuw i8, ptr %i.id, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i251.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i250.i: ; preds = %.lr.ph10149
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i251.i

._crit_edge10150:                                 ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !5352
  store ptr %i.bz, ptr %i.by, align 8, !noalias !5352
  %.sroa.45.0..sroa_idx.i.i.i259.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i259.i, align 8, !noalias !5352
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5352
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i251.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i250.i, %bb.bh
  %.sroa.0.0.in.i.i.i252.i = phi ptr [ %i.it, %bb.bh ], [ %i.iu, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i250.i ]
  %.sroa.0.0.i6.i.i253.i = load i64, ptr %.sroa.0.0.in.i.i.i252.i, align 8, !noalias !5355, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !5350
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i254.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i254.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i251.i, %bb.bd
  %.sroa.05.0.i.i255.i = phi i64 [ %.sroa.0.0.i6.i.i253.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i251.i ], [ %i.ie, %bb.bd ] ; 4 uses
  %i.iv = icmp ugt i64 %.sroa.05.0.i.i255.i, 2305843009213693951
  br i1 %i.iv, label %bb.bj, label %bb.bi, !prof !29

bb.bi:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i254.i
  %i.iw = icmp samesign ult i64 %.sroa.05.0.i.i255.i, 17
  br i1 %i.iw, label %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit261_crit_edge.i, label %bb.bk, !prof !30

._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit261_crit_edge.i: ; preds = %bb.bi
  %.neg4.i256.i = mul nuw nsw i64 %.sroa.05.0.i.i255.i, 120
  %.val2.pre.i.pre.i = load ptr, ptr %i.ia, align 8, !noalias !5346
  %i.ix = and i64 %.neg4.i256.i, 120
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit261.i

bb.bj:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i254.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i255.i) #45, !noalias !5356
  unreachable

bb.bk:                                            ; preds = %bb.bi
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5356
  unreachable

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit261.i: ; preds = %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit261_crit_edge.i, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.val2.pre.i.i = phi ptr [ %.val2.pre.i.pre.i, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit261_crit_edge.i ], [ %.val.i.i, %bb.ay ], [ %.val.i.i, %bb.bb ], [ %.val.i.i, %bb.ba ], [ %.val.i.i, %bb.az ], [ %.val.i.i, %bb.bc ]
  %.neg5.i257.i = phi i64 [ %i.ix, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit261_crit_edge.i ], [ 120, %bb.ay ], [ 64, %bb.bb ], [ 96, %bb.ba ], [ 112, %bb.az ], [ 0, %bb.bc ]
  %i.iy = zext nneg i64 %.neg5.i257.i to i128
  %i.iz = lshr i128 -1, %i.iy
  %.neg.i258.i = xor i128 %.sroa.459.0.copyload.i, -1
  %i.ja = add i128 %.sroa.058.0.copyload.i, %.neg.i258.i
  %i.jb = and i128 %i.iz, %i.ja
  %i.jc = icmp ult i128 %.sroa.0.0.i.i60.i, %i.jb
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i.i: ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit261.i, %bb.av
  %.val2.i53.i = phi ptr [ %.val2.pre.i.i, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit261.i ], [ %.val.i.i, %bb.av ] ; 3 uses
  %.sroa.0.0.i.i54.i = phi i1 [ %i.jc, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit261.i ], [ false, %bb.av ]
  %i.jd = load ptr, ptr %i.dz, align 8, !alias.scope !5345, !noalias !5321, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5357)
  %i.je = load ptr, ptr %i.jd, align 8, !alias.scope !5357, !noalias !5346, !nonnull !5, !noundef !5 ; 2 uses
  %i.jf = load i8, ptr %i.je, align 1, !range !13, !noalias !5358, !noundef !5
  %i.jg = trunc nuw i8 %i.jf to i1
  br i1 %i.jg, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %i.ji = load i8, ptr %i.jh, align 1, !noalias !5358, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i53.i) ]
  %i.jj = load ptr, ptr %.val2.i53.i, align 8, !noalias !5358, !nonnull !5, !align !21, !noundef !5
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 338
  %i.jl = load i8, ptr %i.jk, align 2, !noalias !5358, !noundef !5
  %..i.i.i.i = call noundef i8 @llvm.umin.i8(i8 %i.ji, i8 %i.jl)
  %i.jm = and i8 %..i.i.i.i, 63
  %i.jn = zext nneg i8 %i.jm to i64
  %i.jo = shl nuw i64 1, %i.jn
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit.i

bb.bm:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i.i
  %i.jp = load ptr, ptr %.val2.i53.i, align 8, !noalias !5358, !nonnull !5, !align !21, !noundef !5 ; 6 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 338
  %i.jr = load i8, ptr %i.jq, align 2, !noalias !5358, !noundef !5
  %i.js = and i8 %i.jr, 63                        ; 2 uses
  %i.jt = zext nneg i8 %i.js to i64
  %i.ju = shl nuw i64 1, %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jp, i64 320
  %i.jw = load i64, ptr %i.jv, align 16, !noalias !5358, !noundef !5
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jp, i64 136
  %.sroa.5.0.copyload.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !5358 ; 2 uses
  %.not.i3.i.i = icmp eq i8 %.sroa.5.0.copyload.i.i.i, -1
  br i1 %.not.i3.i.i, label %bb.bx, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jp, i64 137
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jp, i64 96
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8, !alias.scope !5357, !noalias !5346, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  %.sroa.062.0.copyload.i = load i128, ptr %i.jx, align 16, !noalias !5358
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jp, i64 112
  %.sroa.463.0.copyload.i = load i128, ptr %.sroa.463.0..sroa_idx.i, align 16, !noalias !5358
  %.sroa.565.41.copyload.i = load i56, ptr %.sroa.6.0..sroa_idx.i.i.i, align 1, !noalias !5358 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5359)
  call void @llvm.experimental.noalias.scope.decl(metadata !5360), !noalias !5361
  switch i8 %.sroa.5.0.copyload.i.i.i, label %bb.bo [
    i8 0, label %switch.lookup10362
    i8 1, label %bb.bp
    i8 2, label %bb.bq
  ]

bb.bo:                                            ; preds = %bb.bn
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %.sroa.44.0.extract.trunc.i.i.i = trunc i56 %.sroa.565.41.copyload.i to i8
  %i.ka = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i.i), !noalias !5362
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i.i

bb.bq:                                            ; preds = %bb.bn
  %.sroa.565.41.insert.ext.i = zext i56 %.sroa.565.41.copyload.i to i64
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.565.41.insert.ext.i, 24
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5363), !noalias !5361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !5362
  store i32 %.sroa.6.0.extract.trunc.i.i.i, ptr %i.cb, align 4, !noalias !5364
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 72
  %i.kc = load i32, ptr %i.kb, align 8, !alias.scope !5365, !noalias !5358, !noundef !5
  %i.kd = icmp eq i32 %i.kc, %.sroa.6.0.extract.trunc.i.i.i
  br i1 %i.kd, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %i.kf = load ptr, ptr %i.ke, align 8, !alias.scope !5365, !noalias !5358, !nonnull !5, !noundef !5 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jz, i64 40
  %i.kh = load i64, ptr %i.kg, align 8, !alias.scope !5365, !noalias !5358, !noundef !5 ; 2 uses
  %.idx10325 = shl nuw nsw i64 %i.kh, 5
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 %.idx10325
  %i.kj = icmp eq i64 %i.kh, 0
  br i1 %i.kj, label %._crit_edge10154, label %.lr.ph10153

bb.bs:                                            ; preds = %.lr.ph10153
  %i.kk = getelementptr inbounds nuw i8, ptr %i.km, i64 32 ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.ki
  br i1 %i.kl, label %._crit_edge10154, label %.lr.ph10153

.lr.ph10153:                                      ; preds = %bb.br, %bb.bs
  %i.km = phi ptr [ %i.kk, %bb.bs ], [ %i.kf, %bb.br ] ; 3 uses
  %i.kn = load i32, ptr %i.km, align 8, !noalias !5366, !noundef !5
  %i.ko = icmp eq i32 %i.kn, %.sroa.6.0.extract.trunc.i.i.i
  br i1 %i.ko, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i, label %bb.bs

bb.bt:                                            ; preds = %bb.bq
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jz, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i: ; preds = %.lr.ph10153
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i.i

._crit_edge10154:                                 ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !5364
  store ptr %i.cb, ptr %i.ca, align 8, !noalias !5364
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i.i, align 8, !noalias !5364
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5364
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i, %bb.bt
  %.sroa.0.0.in.i.i.i.i = phi ptr [ %i.kp, %bb.bt ], [ %i.kq, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i ]
  %.sroa.0.0.i6.i.i.i = load i64, ptr %.sroa.0.0.in.i.i.i.i, align 8, !noalias !5367, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !5362
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i.i, %bb.bp
  %.sroa.05.0.i.i.i = phi i64 [ %.sroa.0.0.i6.i.i.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i.i ], [ %i.ka, %bb.bp ] ; 4 uses
  %i.kr = icmp ugt i64 %.sroa.05.0.i.i.i, 2305843009213693951
  br i1 %i.kr, label %bb.bv, label %bb.bu, !prof !29

bb.bu:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i.i
  %.neg4.i.i = mul nsw i64 %.sroa.05.0.i.i.i, -8
  %i.ks = icmp samesign ult i64 %.sroa.05.0.i.i.i, 17
  br i1 %i.ks, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i, label %bb.bw, !prof !30

bb.bv:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i.i) #45, !noalias !5368
  unreachable

bb.bw:                                            ; preds = %bb.bu
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5368
  unreachable

switch.lookup10362:                               ; preds = %bb.bn
  %.sroa.44.0.extract.trunc.i.i.i.mask = and i56 %.sroa.565.41.copyload.i, 255
  %i.kt = zext nneg i56 %.sroa.44.0.extract.trunc.i.i.i.mask to i64
  %switch.gep10363 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.kt
  %switch.load10364 = load i8, ptr %switch.gep10363, align 1
  %switch.ext10365 = zext i8 %switch.load10364 to i64
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %switch.lookup10362, %bb.bu
  %.neg5.i.i = phi i64 [ %.neg4.i.i, %bb.bu ], [ %switch.ext10365, %switch.lookup10362 ]
  %i.ku = and i64 %.neg5.i.i, 120
  %i.kv = zext nneg i64 %i.ku to i128
  %i.kw = lshr i128 -1, %i.kv
  %.neg.i.i = xor i128 %.sroa.463.0.copyload.i, -1
  %i.kx = add i128 %.sroa.062.0.copyload.i, %.neg.i.i
  %i.ky = and i128 %i.kw, %i.kx
  br label %bb.bx

bb.bx:                                            ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i, %bb.bm
  %.sroa.01.0.i.i.i = phi i128 [ %i.ky, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i ], [ 0, %bb.bm ]
  %..i14.i.i.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.jw, i64 range(i64 1, -9223372036854775807) %i.ju)
  %i.kz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %..i14.i.i.i, i1 true)
  %i.la = trunc nuw nsw i64 %i.kz to i32          ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8, !alias.scope !5357, !noalias !5346, !nonnull !5, !align !21, !noundef !5
  %i.ld = load i128, ptr %i.lc, align 16, !noalias !5358, !noundef !5 ; 2 uses
  %.not10.i.i.i = icmp eq i128 %i.ld, 0
  br i1 %.not10.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.le = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.lf = load ptr, ptr %i.le, align 8, !alias.scope !5357, !noalias !5346, !nonnull !5, !noundef !5
  %i.lg = load i8, ptr %i.lf, align 1, !range !13, !noalias !5358, !noundef !5
  %i.lh = trunc nuw i8 %i.lg to i1
  br i1 %i.lh, label %bb.ca, label %bb.cb

bb.bz:                                            ; preds = %bb.cb, %bb.ca, %bb.bx
  %.sroa.07.0.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.ca ], [ %i.la, %bb.bx ], [ %..i15.i.i.i, %bb.cb ]
  %i.li = zext nneg i32 %.sroa.07.0.i.i.i to i64
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit.i

bb.ca:                                            ; preds = %bb.by
  %i.lj = icmp eq i128 %.sroa.01.0.i.i.i, %i.ld
  %i.lk = zext nneg i8 %i.js to i32
  %spec.select.i.i.i = select i1 %i.lj, i32 %i.lk, i32 %i.la
  br label %bb.bz

bb.cb:                                            ; preds = %bb.by
  %i.ll = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.lm = load ptr, ptr %i.ll, align 8, !alias.scope !5357, !noalias !5346, !nonnull !5, !align !11, !noundef !5
  %i.ln = load i64, ptr %i.lm, align 8, !noalias !5358, !noundef !5
  %i.lo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ln, i1 false)
  %i.lp = trunc nuw nsw i64 %i.lo to i32
  %..i15.i.i.i = call noundef range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.la, i32 range(i32 0, 129) %i.lp)
  br label %bb.bz

bb.cc:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit75.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ed, i64 noundef %i.hx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #43, !noalias !5346
  unreachable

_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit.i: ; preds = %bb.bz, %bb.bl
  %.sroa.0.0.i4.i.i = phi i64 [ %i.jo, %bb.bl ], [ %i.li, %bb.bz ] ; 2 uses
  %i.lq = icmp eq i64 %.sroa.0.0.i4.i72.i, %.sroa.0.0.i4.i.i
  %i.lr = icmp ult i64 %.sroa.0.0.i4.i72.i, %.sroa.0.0.i4.i.i
  %.sroa.0.0.i.i.i41 = select i1 %i.lq, i1 %.sroa.0.0.i.i54.i, i1 %i.lr ; 2 uses
  %i.ls = getelementptr inbounds i8, ptr %.sroa.43.11279.i, i64 -4
  %.sroa.01.0.i.i = select i1 %.sroa.0.0.i.i.i41, ptr %2, ptr %i.ls
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.11280.i
  store i32 %.val26.i, ptr %i.lt, align 4, !alias.scope !5319, !noalias !5369
  %i.lu = zext i1 %.sroa.0.0.i.i.i41 to i64
  %i.lv = add i64 %.sroa.27.11280.i, %i.lu        ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.9.11281.i, i64 4
  %.val23.i = load i32, ptr %i.lw, align 4, !alias.scope !5318, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5370)
  %i.lx = load i64, ptr %i.dx, align 8, !alias.scope !5370, !noalias !5321, !noundef !5 ; 2 uses
  %i.ly = zext i32 %.val23.i to i64               ; 3 uses
  %i.lz = icmp ugt i64 %i.lx, %i.ly
  br i1 %i.lz, label %bb.cd, label %bb.dk

bb.cd:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit.i
  %i.ma = load ptr, ptr %.val38, align 8, !alias.scope !5370, !noalias !5321, !nonnull !5, !align !11, !noundef !5
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.ly ; 2 uses
  %.val.i97.i = load ptr, ptr %i.mb, align 8, !noalias !5371, !nonnull !5, !align !11, !noundef !5 ; 7 uses
  %i.mc = load ptr, ptr %.val.i97.i, align 8, !noalias !5371, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 96
  %.sroa.084.0.copyload.i = load i128, ptr %i.md, align 16, !noalias !5371
  %.sroa.485.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mc, i64 112
  %.sroa.485.0.copyload.i = load i128, ptr %.sroa.485.0..sroa_idx.i, align 16, !noalias !5371
  %.sroa.587.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mc, i64 136
  %.sroa.587.0.copyload.i = load i64, ptr %.sroa.587.0..sroa_idx.i, align 8, !noalias !5371 ; 3 uses
  %.sroa.587.40.extract.trunc.i = trunc i64 %.sroa.587.0.copyload.i to i8 ; 2 uses
  %.not.i.i98.i = icmp eq i8 %.sroa.587.40.extract.trunc.i, -1
  br i1 %.not.i.i98.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i100.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.me = load ptr, ptr %i.dy, align 8, !alias.scope !5370, !noalias !5321, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5372)
  call void @llvm.experimental.noalias.scope.decl(metadata !5373), !noalias !5374
  %.sroa.44.0.extract.shift.i.i353.i = lshr i64 %.sroa.587.0.copyload.i, 8
  %.sroa.44.0.extract.trunc.i.i354.i = trunc i64 %.sroa.44.0.extract.shift.i.i353.i to i8 ; 2 uses
  switch i8 %.sroa.587.40.extract.trunc.i, label %bb.cf [
    i8 0, label %bb.cg
    i8 1, label %bb.cl
    i8 2, label %bb.cm
  ]

bb.cf:                                            ; preds = %bb.ce
  unreachable

bb.cg:                                            ; preds = %bb.ce
  switch i8 %.sroa.44.0.extract.trunc.i.i354.i, label %default.unreachable25.i.i.i368.i [
    i8 0, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit369.i
    i8 1, label %bb.ch
    i8 2, label %bb.ci
    i8 3, label %bb.cj
    i8 4, label %bb.ck
  ]

default.unreachable25.i.i.i368.i:                 ; preds = %bb.cg
  unreachable

bb.ch:                                            ; preds = %bb.cg
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit369.i

bb.ci:                                            ; preds = %bb.cg
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit369.i

bb.cj:                                            ; preds = %bb.cg
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit369.i

bb.ck:                                            ; preds = %bb.cg
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit369.i

bb.cl:                                            ; preds = %bb.ce
  %i.mf = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i354.i), !noalias !5375
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i362.i

bb.cm:                                            ; preds = %bb.ce
  %.sroa.6.0.extract.shift.i.i356.i = lshr i64 %.sroa.587.0.copyload.i, 32
  %.sroa.6.0.extract.trunc.i.i357.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i356.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5376), !noalias !5374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !5375
  store i32 %.sroa.6.0.extract.trunc.i.i357.i, ptr %i.bn, align 4, !noalias !5377
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 72
  %i.mh = load i32, ptr %i.mg, align 8, !alias.scope !5378, !noalias !5371, !noundef !5
  %i.mi = icmp eq i32 %i.mh, %.sroa.6.0.extract.trunc.i.i357.i
  br i1 %i.mi, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mj = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.mk = load ptr, ptr %i.mj, align 8, !alias.scope !5378, !noalias !5371, !nonnull !5, !noundef !5 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.me, i64 40
  %i.mm = load i64, ptr %i.ml, align 8, !alias.scope !5378, !noalias !5371, !noundef !5 ; 2 uses
  %.idx10326 = shl nuw nsw i64 %i.mm, 5
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 %.idx10326
  %i.mo = icmp eq i64 %i.mm, 0
  br i1 %i.mo, label %._crit_edge10158, label %.lr.ph10157

bb.co:                                            ; preds = %.lr.ph10157
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mr, i64 32 ; 2 uses
  %i.mq = icmp eq ptr %i.mp, %i.mn
  br i1 %i.mq, label %._crit_edge10158, label %.lr.ph10157

.lr.ph10157:                                      ; preds = %bb.cn, %bb.co
  %i.mr = phi ptr [ %i.mp, %bb.co ], [ %i.mk, %bb.cn ] ; 3 uses
  %i.ms = load i32, ptr %i.mr, align 8, !noalias !5379, !noundef !5
  %i.mt = icmp eq i32 %i.ms, %.sroa.6.0.extract.trunc.i.i357.i
  br i1 %i.mt, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i358.i, label %bb.co

bb.cp:                                            ; preds = %bb.cm
  %i.mu = getelementptr inbounds nuw i8, ptr %i.me, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i359.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i358.i: ; preds = %.lr.ph10157
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i359.i

._crit_edge10158:                                 ; preds = %bb.cn, %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !5377
  store ptr %i.bn, ptr %i.bm, align 8, !noalias !5377
  %.sroa.45.0..sroa_idx.i.i.i367.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i367.i, align 8, !noalias !5377
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5377
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i359.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i358.i, %bb.cp
  %.sroa.0.0.in.i.i.i360.i = phi ptr [ %i.mu, %bb.cp ], [ %i.mv, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i358.i ]
  %.sroa.0.0.i6.i.i361.i = load i64, ptr %.sroa.0.0.in.i.i.i360.i, align 8, !noalias !5380, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !5375
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i362.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i362.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i359.i, %bb.cl
  %.sroa.05.0.i.i363.i = phi i64 [ %.sroa.0.0.i6.i.i361.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i359.i ], [ %i.mf, %bb.cl ] ; 4 uses
  %i.mw = icmp ugt i64 %.sroa.05.0.i.i363.i, 2305843009213693951
  br i1 %i.mw, label %bb.cr, label %bb.cq, !prof !29

bb.cq:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i362.i
  %i.mx = icmp samesign ult i64 %.sroa.05.0.i.i363.i, 17
  br i1 %i.mx, label %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit369_crit_edge.i, label %bb.cs, !prof !30

._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit369_crit_edge.i: ; preds = %bb.cq
  %.neg4.i364.i = mul nuw nsw i64 %.sroa.05.0.i.i363.i, 120
  %.val2.pre.i99.pre.i = load ptr, ptr %i.mb, align 8, !noalias !5371
  %i.my = and i64 %.neg4.i364.i, 120
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit369.i

bb.cr:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i362.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i363.i) #45, !noalias !5381
  unreachable

bb.cs:                                            ; preds = %bb.cq
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5381
  unreachable

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit369.i: ; preds = %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit369_crit_edge.i, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg
  %.val2.pre.i99.i = phi ptr [ %.val2.pre.i99.pre.i, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit369_crit_edge.i ], [ %.val.i97.i, %bb.cg ], [ %.val.i97.i, %bb.cj ], [ %.val.i97.i, %bb.ci ], [ %.val.i97.i, %bb.ch ], [ %.val.i97.i, %bb.ck ]
  %.neg5.i365.i = phi i64 [ %i.my, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit369_crit_edge.i ], [ 120, %bb.cg ], [ 64, %bb.cj ], [ 96, %bb.ci ], [ 112, %bb.ch ], [ 0, %bb.ck ]
  %i.mz = zext nneg i64 %.neg5.i365.i to i128
  %i.na = lshr i128 -1, %i.mz
  %.neg.i366.i = xor i128 %.sroa.485.0.copyload.i, -1
  %i.nb = add i128 %.sroa.084.0.copyload.i, %.neg.i366.i
  %i.nc = and i128 %i.na, %i.nb
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i100.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i100.i: ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit369.i, %bb.cd
  %.val2.i101.i = phi ptr [ %.val2.pre.i99.i, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit369.i ], [ %.val.i97.i, %bb.cd ] ; 3 uses
  %.sroa.0.0.i.i102.i = phi i128 [ %i.nc, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit369.i ], [ 0, %bb.cd ]
  %i.nd = load ptr, ptr %i.dz, align 8, !alias.scope !5370, !noalias !5321, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5382)
  %i.ne = load ptr, ptr %i.nd, align 8, !alias.scope !5382, !noalias !5371, !nonnull !5, !noundef !5 ; 2 uses
  %i.nf = load i8, ptr %i.ne, align 1, !range !13, !noalias !5383, !noundef !5
  %i.ng = trunc nuw i8 %i.nf to i1
  br i1 %i.ng, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i100.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 1
  %i.ni = load i8, ptr %i.nh, align 1, !noalias !5383, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i101.i) ]
  %i.nj = load ptr, ptr %.val2.i101.i, align 8, !noalias !5383, !nonnull !5, !align !21, !noundef !5
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 338
  %i.nl = load i8, ptr %i.nk, align 2, !noalias !5383, !noundef !5
  %..i.i.i116.i = call noundef i8 @llvm.umin.i8(i8 %i.ni, i8 %i.nl)
  %i.nm = and i8 %..i.i.i116.i, 63
  %i.nn = zext nneg i8 %i.nm to i64
  %i.no = shl nuw i64 1, %i.nn
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit117.i

bb.cu:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i100.i
  %i.np = load ptr, ptr %.val2.i101.i, align 8, !noalias !5383, !nonnull !5, !align !21, !noundef !5 ; 6 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 338
  %i.nr = load i8, ptr %i.nq, align 2, !noalias !5383, !noundef !5
  %i.ns = and i8 %i.nr, 63                        ; 2 uses
  %i.nt = zext nneg i8 %i.ns to i64
  %i.nu = shl nuw i64 1, %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %i.np, i64 320
  %i.nw = load i64, ptr %i.nv, align 16, !noalias !5383, !noundef !5
  %.sroa.5.0..sroa_idx.i.i103.i = getelementptr inbounds nuw i8, ptr %i.np, i64 136
  %.sroa.5.0.copyload.i.i104.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i103.i, align 8, !noalias !5383 ; 2 uses
  %.not.i3.i105.i = icmp eq i8 %.sroa.5.0.copyload.i.i104.i, -1
  br i1 %.not.i3.i105.i, label %bb.df, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.sroa.6.0..sroa_idx.i.i106.i = getelementptr inbounds nuw i8, ptr %i.np, i64 137
  %i.nx = getelementptr inbounds nuw i8, ptr %i.np, i64 96
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8, !alias.scope !5382, !noalias !5371, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  %.sroa.089.0.copyload.i = load i128, ptr %i.nx, align 16, !noalias !5383
  %.sroa.490.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.np, i64 112
  %.sroa.490.0.copyload.i = load i128, ptr %.sroa.490.0..sroa_idx.i, align 16, !noalias !5383
  %.sroa.592.41.copyload.i = load i56, ptr %.sroa.6.0..sroa_idx.i.i106.i, align 1, !noalias !5383 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5384)
  call void @llvm.experimental.noalias.scope.decl(metadata !5385), !noalias !5386
  switch i8 %.sroa.5.0.copyload.i.i104.i, label %bb.cw [
    i8 0, label %switch.lookup10365
    i8 1, label %bb.cx
    i8 2, label %bb.cy
  ]

bb.cw:                                            ; preds = %bb.cv
  unreachable

bb.cx:                                            ; preds = %bb.cv
  %.sroa.44.0.extract.trunc.i.i336.i = trunc i56 %.sroa.592.41.copyload.i to i8
  %i.oa = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i336.i), !noalias !5387
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i344.i

bb.cy:                                            ; preds = %bb.cv
  %.sroa.592.41.insert.ext.i = zext i56 %.sroa.592.41.copyload.i to i64
  %.sroa.6.0.extract.shift.i.i338.i = lshr i64 %.sroa.592.41.insert.ext.i, 24
  %.sroa.6.0.extract.trunc.i.i339.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i338.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5388), !noalias !5386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !5387
  store i32 %.sroa.6.0.extract.trunc.i.i339.i, ptr %i.bp, align 4, !noalias !5389
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 72
  %i.oc = load i32, ptr %i.ob, align 8, !alias.scope !5390, !noalias !5383, !noundef !5
  %i.od = icmp eq i32 %i.oc, %.sroa.6.0.extract.trunc.i.i339.i
  br i1 %i.od, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nz, i64 32
  %i.of = load ptr, ptr %i.oe, align 8, !alias.scope !5390, !noalias !5383, !nonnull !5, !noundef !5 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.nz, i64 40
  %i.oh = load i64, ptr %i.og, align 8, !alias.scope !5390, !noalias !5383, !noundef !5 ; 2 uses
  %.idx10327 = shl nuw nsw i64 %i.oh, 5
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 %.idx10327
  %i.oj = icmp eq i64 %i.oh, 0
  br i1 %i.oj, label %._crit_edge10162, label %.lr.ph10161

bb.da:                                            ; preds = %.lr.ph10161
  %i.ok = getelementptr inbounds nuw i8, ptr %i.om, i64 32 ; 2 uses
  %i.ol = icmp eq ptr %i.ok, %i.oi
  br i1 %i.ol, label %._crit_edge10162, label %.lr.ph10161

.lr.ph10161:                                      ; preds = %bb.cz, %bb.da
  %i.om = phi ptr [ %i.ok, %bb.da ], [ %i.of, %bb.cz ] ; 3 uses
  %i.on = load i32, ptr %i.om, align 8, !noalias !5391, !noundef !5
  %i.oo = icmp eq i32 %i.on, %.sroa.6.0.extract.trunc.i.i339.i
  br i1 %i.oo, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i340.i, label %bb.da

bb.db:                                            ; preds = %bb.cy
  %i.op = getelementptr inbounds nuw i8, ptr %i.nz, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i341.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i340.i: ; preds = %.lr.ph10161
  %i.oq = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i341.i

._crit_edge10162:                                 ; preds = %bb.cz, %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !5389
  store ptr %i.bp, ptr %i.bo, align 8, !noalias !5389
  %.sroa.45.0..sroa_idx.i.i.i349.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i349.i, align 8, !noalias !5389
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5389
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i341.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i340.i, %bb.db
  %.sroa.0.0.in.i.i.i342.i = phi ptr [ %i.op, %bb.db ], [ %i.oq, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i340.i ]
  %.sroa.0.0.i6.i.i343.i = load i64, ptr %.sroa.0.0.in.i.i.i342.i, align 8, !noalias !5392, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !5387
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i344.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i344.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i341.i, %bb.cx
  %.sroa.05.0.i.i345.i = phi i64 [ %.sroa.0.0.i6.i.i343.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i341.i ], [ %i.oa, %bb.cx ] ; 4 uses
  %i.or = icmp ugt i64 %.sroa.05.0.i.i345.i, 2305843009213693951
  br i1 %i.or, label %bb.dd, label %bb.dc, !prof !29

bb.dc:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i344.i
  %.neg4.i346.i = mul nsw i64 %.sroa.05.0.i.i345.i, -8
  %i.os = icmp samesign ult i64 %.sroa.05.0.i.i345.i, 17
  br i1 %i.os, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit351.i, label %bb.de, !prof !30

bb.dd:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i344.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i345.i) #45, !noalias !5393
  unreachable

bb.de:                                            ; preds = %bb.dc
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5393
  unreachable

switch.lookup10365:                               ; preds = %bb.cv
  %.sroa.44.0.extract.trunc.i.i336.i.mask = and i56 %.sroa.592.41.copyload.i, 255
  %i.ot = zext nneg i56 %.sroa.44.0.extract.trunc.i.i336.i.mask to i64
  %switch.gep10367 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.ot
  %switch.load10368 = load i8, ptr %switch.gep10367, align 1
  %switch.ext10369 = zext i8 %switch.load10368 to i64
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit351.i

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit351.i: ; preds = %switch.lookup10365, %bb.dc
  %.neg5.i347.i = phi i64 [ %.neg4.i346.i, %bb.dc ], [ %switch.ext10369, %switch.lookup10365 ]
  %i.ou = and i64 %.neg5.i347.i, 120
  %i.ov = zext nneg i64 %i.ou to i128
  %i.ow = lshr i128 -1, %i.ov
  %.neg.i348.i = xor i128 %.sroa.490.0.copyload.i, -1
  %i.ox = add i128 %.sroa.089.0.copyload.i, %.neg.i348.i
  %i.oy = and i128 %i.ow, %i.ox
  br label %bb.df

bb.df:                                            ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit351.i, %bb.cu
  %.sroa.01.0.i.i109.i = phi i128 [ %i.oy, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit351.i ], [ 0, %bb.cu ]
  %..i14.i.i110.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.nw, i64 range(i64 1, -9223372036854775807) %i.nu)
  %i.oz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %..i14.i.i110.i, i1 true)
  %i.pa = trunc nuw nsw i64 %i.oz to i32          ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.pc = load ptr, ptr %i.pb, align 8, !alias.scope !5382, !noalias !5371, !nonnull !5, !align !21, !noundef !5
  %i.pd = load i128, ptr %i.pc, align 16, !noalias !5383, !noundef !5 ; 2 uses
  %.not10.i.i111.i = icmp eq i128 %i.pd, 0
  br i1 %.not10.i.i111.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.pe = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  %i.pf = load ptr, ptr %i.pe, align 8, !alias.scope !5382, !noalias !5371, !nonnull !5, !noundef !5
  %i.pg = load i8, ptr %i.pf, align 1, !range !13, !noalias !5383, !noundef !5
  %i.ph = trunc nuw i8 %i.pg to i1
  br i1 %i.ph, label %bb.di, label %bb.dj

bb.dh:                                            ; preds = %bb.dj, %bb.di, %bb.df
  %.sroa.07.0.i.i113.i = phi i32 [ %spec.select.i.i115.i, %bb.di ], [ %i.pa, %bb.df ], [ %..i15.i.i112.i, %bb.dj ]
  %i.pi = zext nneg i32 %.sroa.07.0.i.i113.i to i64
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit117.i

bb.di:                                            ; preds = %bb.dg
  %i.pj = icmp eq i128 %.sroa.01.0.i.i109.i, %i.pd
  %i.pk = zext nneg i8 %i.ns to i32
  %spec.select.i.i115.i = select i1 %i.pj, i32 %i.pk, i32 %i.pa
  br label %bb.dh

bb.dj:                                            ; preds = %bb.dg
  %i.pl = getelementptr inbounds nuw i8, ptr %i.nd, i64 32
  %i.pm = load ptr, ptr %i.pl, align 8, !alias.scope !5382, !noalias !5371, !nonnull !5, !align !11, !noundef !5
  %i.pn = load i64, ptr %i.pm, align 8, !noalias !5383, !noundef !5
  %i.po = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.pn, i1 false)
  %i.pp = trunc nuw nsw i64 %i.po to i32
  %..i15.i.i112.i = call noundef range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.pa, i32 range(i32 0, 129) %i.pp)
  br label %bb.dh

bb.dk:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ly, i64 noundef %i.lx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #43, !noalias !5371
  unreachable

_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit117.i: ; preds = %bb.dh, %bb.ct
  %.sroa.0.0.i4.i114.i = phi i64 [ %i.no, %bb.ct ], [ %i.pi, %bb.dh ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5394)
  %i.pq = load i64, ptr %i.dx, align 8, !alias.scope !5394, !noalias !5321, !noundef !5 ; 2 uses
  %i.pr = icmp ugt i64 %i.pq, %i.ed
  br i1 %i.pr, label %bb.dl, label %bb.es

bb.dl:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit117.i
  %i.ps = load ptr, ptr %.val38, align 8, !alias.scope !5394, !noalias !5321, !nonnull !5, !align !11, !noundef !5
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %i.ed ; 2 uses
  %.val.i76.i = load ptr, ptr %i.pt, align 8, !noalias !5395, !nonnull !5, !align !11, !noundef !5 ; 7 uses
  %i.pu = load ptr, ptr %.val.i76.i, align 8, !noalias !5395, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 96
  %.sroa.075.0.copyload.i = load i128, ptr %i.pv, align 16, !noalias !5395
  %.sroa.476.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pu, i64 112
  %.sroa.476.0.copyload.i = load i128, ptr %.sroa.476.0..sroa_idx.i, align 16, !noalias !5395
  %.sroa.578.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pu, i64 136
  %.sroa.578.0.copyload.i = load i64, ptr %.sroa.578.0..sroa_idx.i, align 8, !noalias !5395 ; 3 uses
  %.sroa.578.40.extract.trunc.i = trunc i64 %.sroa.578.0.copyload.i to i8 ; 2 uses
  %.not.i.i77.i = icmp eq i8 %.sroa.578.40.extract.trunc.i, -1
  br i1 %.not.i.i77.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i79.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.pw = load ptr, ptr %i.dy, align 8, !alias.scope !5394, !noalias !5321, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5396)
  call void @llvm.experimental.noalias.scope.decl(metadata !5397), !noalias !5398
  %.sroa.44.0.extract.shift.i.i317.i = lshr i64 %.sroa.578.0.copyload.i, 8
  %.sroa.44.0.extract.trunc.i.i318.i = trunc i64 %.sroa.44.0.extract.shift.i.i317.i to i8 ; 2 uses
  switch i8 %.sroa.578.40.extract.trunc.i, label %bb.dn [
    i8 0, label %bb.do
    i8 1, label %bb.dt
    i8 2, label %bb.du
  ]

bb.dn:                                            ; preds = %bb.dm
  unreachable

bb.do:                                            ; preds = %bb.dm
  switch i8 %.sroa.44.0.extract.trunc.i.i318.i, label %default.unreachable25.i.i.i332.i [
    i8 0, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit333.i
    i8 1, label %bb.dp
    i8 2, label %bb.dq
    i8 3, label %bb.dr
    i8 4, label %bb.ds
  ]

default.unreachable25.i.i.i332.i:                 ; preds = %bb.do
  unreachable

bb.dp:                                            ; preds = %bb.do
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit333.i

bb.dq:                                            ; preds = %bb.do
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit333.i

bb.dr:                                            ; preds = %bb.do
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit333.i

bb.ds:                                            ; preds = %bb.do
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit333.i

bb.dt:                                            ; preds = %bb.dm
  %i.px = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i318.i), !noalias !5399
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i326.i

bb.du:                                            ; preds = %bb.dm
  %.sroa.6.0.extract.shift.i.i320.i = lshr i64 %.sroa.578.0.copyload.i, 32
  %.sroa.6.0.extract.trunc.i.i321.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i320.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5400), !noalias !5398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !5399
  store i32 %.sroa.6.0.extract.trunc.i.i321.i, ptr %i.br, align 4, !noalias !5401
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 72
  %i.pz = load i32, ptr %i.py, align 8, !alias.scope !5402, !noalias !5395, !noundef !5
  %i.qa = icmp eq i32 %i.pz, %.sroa.6.0.extract.trunc.i.i321.i
  br i1 %i.qa, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pw, i64 32
  %i.qc = load ptr, ptr %i.qb, align 8, !alias.scope !5402, !noalias !5395, !nonnull !5, !noundef !5 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pw, i64 40
  %i.qe = load i64, ptr %i.qd, align 8, !alias.scope !5402, !noalias !5395, !noundef !5 ; 2 uses
  %.idx10328 = shl nuw nsw i64 %i.qe, 5
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qc, i64 %.idx10328
  %i.qg = icmp eq i64 %i.qe, 0
  br i1 %i.qg, label %._crit_edge10166, label %.lr.ph10165

bb.dw:                                            ; preds = %.lr.ph10165
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qj, i64 32 ; 2 uses
  %i.qi = icmp eq ptr %i.qh, %i.qf
  br i1 %i.qi, label %._crit_edge10166, label %.lr.ph10165

.lr.ph10165:                                      ; preds = %bb.dv, %bb.dw
  %i.qj = phi ptr [ %i.qh, %bb.dw ], [ %i.qc, %bb.dv ] ; 3 uses
  %i.qk = load i32, ptr %i.qj, align 8, !noalias !5403, !noundef !5
  %i.ql = icmp eq i32 %i.qk, %.sroa.6.0.extract.trunc.i.i321.i
  br i1 %i.ql, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i322.i, label %bb.dw

bb.dx:                                            ; preds = %bb.du
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pw, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i323.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i322.i: ; preds = %.lr.ph10165
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i323.i

._crit_edge10166:                                 ; preds = %bb.dv, %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !5401
  store ptr %i.br, ptr %i.bq, align 8, !noalias !5401
  %.sroa.45.0..sroa_idx.i.i.i331.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i331.i, align 8, !noalias !5401
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5401
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i323.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i322.i, %bb.dx
  %.sroa.0.0.in.i.i.i324.i = phi ptr [ %i.qm, %bb.dx ], [ %i.qn, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i322.i ]
  %.sroa.0.0.i6.i.i325.i = load i64, ptr %.sroa.0.0.in.i.i.i324.i, align 8, !noalias !5404, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !5399
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i326.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i326.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i323.i, %bb.dt
  %.sroa.05.0.i.i327.i = phi i64 [ %.sroa.0.0.i6.i.i325.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i323.i ], [ %i.px, %bb.dt ] ; 4 uses
  %i.qo = icmp ugt i64 %.sroa.05.0.i.i327.i, 2305843009213693951
  br i1 %i.qo, label %bb.dz, label %bb.dy, !prof !29

bb.dy:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i326.i
  %i.qp = icmp samesign ult i64 %.sroa.05.0.i.i327.i, 17
  br i1 %i.qp, label %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit333_crit_edge.i, label %bb.ea, !prof !30

._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit333_crit_edge.i: ; preds = %bb.dy
  %.neg4.i328.i = mul nuw nsw i64 %.sroa.05.0.i.i327.i, 120
  %.val2.pre.i78.pre.i = load ptr, ptr %i.pt, align 8, !noalias !5395
  %i.qq = and i64 %.neg4.i328.i, 120
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit333.i

bb.dz:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i326.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i327.i) #45, !noalias !5405
  unreachable

bb.ea:                                            ; preds = %bb.dy
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5405
  unreachable

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit333.i: ; preds = %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit333_crit_edge.i, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do
  %.val2.pre.i78.i = phi ptr [ %.val2.pre.i78.pre.i, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit333_crit_edge.i ], [ %.val.i76.i, %bb.do ], [ %.val.i76.i, %bb.dr ], [ %.val.i76.i, %bb.dq ], [ %.val.i76.i, %bb.dp ], [ %.val.i76.i, %bb.ds ]
  %.neg5.i329.i = phi i64 [ %i.qq, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit333_crit_edge.i ], [ 120, %bb.do ], [ 64, %bb.dr ], [ 96, %bb.dq ], [ 112, %bb.dp ], [ 0, %bb.ds ]
  %i.qr = zext nneg i64 %.neg5.i329.i to i128
  %i.qs = lshr i128 -1, %i.qr
  %.neg.i330.i = xor i128 %.sroa.476.0.copyload.i, -1
  %i.qt = add i128 %.sroa.075.0.copyload.i, %.neg.i330.i
  %i.qu = and i128 %i.qs, %i.qt
  %i.qv = icmp ult i128 %.sroa.0.0.i.i102.i, %i.qu
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i79.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i79.i: ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit333.i, %bb.dl
  %.val2.i80.i = phi ptr [ %.val2.pre.i78.i, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit333.i ], [ %.val.i76.i, %bb.dl ] ; 3 uses
  %.sroa.0.0.i.i81.i = phi i1 [ %i.qv, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit333.i ], [ false, %bb.dl ]
  %i.qw = load ptr, ptr %i.dz, align 8, !alias.scope !5394, !noalias !5321, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5406)
  %i.qx = load ptr, ptr %i.qw, align 8, !alias.scope !5406, !noalias !5395, !nonnull !5, !noundef !5 ; 2 uses
  %i.qy = load i8, ptr %i.qx, align 1, !range !13, !noalias !5407, !noundef !5
  %i.qz = trunc nuw i8 %i.qy to i1
  br i1 %i.qz, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i79.i
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qx, i64 1
  %i.rb = load i8, ptr %i.ra, align 1, !noalias !5407, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i80.i) ]
  %i.rc = load ptr, ptr %.val2.i80.i, align 8, !noalias !5407, !nonnull !5, !align !21, !noundef !5
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 338
  %i.re = load i8, ptr %i.rd, align 2, !noalias !5407, !noundef !5
  %..i.i.i95.i = call noundef i8 @llvm.umin.i8(i8 %i.rb, i8 %i.re)
  %i.rf = and i8 %..i.i.i95.i, 63
  %i.rg = zext nneg i8 %i.rf to i64
  %i.rh = shl nuw i64 1, %i.rg
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit96.i

bb.ec:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i79.i
  %i.ri = load ptr, ptr %.val2.i80.i, align 8, !noalias !5407, !nonnull !5, !align !21, !noundef !5 ; 6 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 338
  %i.rk = load i8, ptr %i.rj, align 2, !noalias !5407, !noundef !5
  %i.rl = and i8 %i.rk, 63                        ; 2 uses
  %i.rm = zext nneg i8 %i.rl to i64
  %i.rn = shl nuw i64 1, %i.rm
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ri, i64 320
  %i.rp = load i64, ptr %i.ro, align 16, !noalias !5407, !noundef !5
  %.sroa.5.0..sroa_idx.i.i82.i = getelementptr inbounds nuw i8, ptr %i.ri, i64 136
  %.sroa.5.0.copyload.i.i83.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i82.i, align 8, !noalias !5407 ; 2 uses
  %.not.i3.i84.i = icmp eq i8 %.sroa.5.0.copyload.i.i83.i, -1
  br i1 %.not.i3.i84.i, label %bb.en, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %.sroa.6.0..sroa_idx.i.i85.i = getelementptr inbounds nuw i8, ptr %i.ri, i64 137
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ri, i64 96
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.rs = load ptr, ptr %i.rr, align 8, !alias.scope !5406, !noalias !5395, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  %.sroa.080.0.copyload.i = load i128, ptr %i.rq, align 16, !noalias !5407
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ri, i64 112
  %.sroa.481.0.copyload.i = load i128, ptr %.sroa.481.0..sroa_idx.i, align 16, !noalias !5407
  %.sroa.583.41.copyload.i = load i56, ptr %.sroa.6.0..sroa_idx.i.i85.i, align 1, !noalias !5407 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5408)
  call void @llvm.experimental.noalias.scope.decl(metadata !5409), !noalias !5410
  switch i8 %.sroa.5.0.copyload.i.i83.i, label %bb.ee [
    i8 0, label %switch.lookup10368
    i8 1, label %bb.ef
    i8 2, label %bb.eg
  ]

bb.ee:                                            ; preds = %bb.ed
  unreachable

bb.ef:                                            ; preds = %bb.ed
  %.sroa.44.0.extract.trunc.i.i300.i = trunc i56 %.sroa.583.41.copyload.i to i8
  %i.rt = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i300.i), !noalias !5411
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i308.i

bb.eg:                                            ; preds = %bb.ed
  %.sroa.583.41.insert.ext.i = zext i56 %.sroa.583.41.copyload.i to i64
  %.sroa.6.0.extract.shift.i.i302.i = lshr i64 %.sroa.583.41.insert.ext.i, 24
  %.sroa.6.0.extract.trunc.i.i303.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i302.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5412), !noalias !5410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !5411
  store i32 %.sroa.6.0.extract.trunc.i.i303.i, ptr %i.bt, align 4, !noalias !5413
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 72
  %i.rv = load i32, ptr %i.ru, align 8, !alias.scope !5414, !noalias !5407, !noundef !5
  %i.rw = icmp eq i32 %i.rv, %.sroa.6.0.extract.trunc.i.i303.i
  br i1 %i.rw, label %bb.ej, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rs, i64 32
  %i.ry = load ptr, ptr %i.rx, align 8, !alias.scope !5414, !noalias !5407, !nonnull !5, !noundef !5 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rs, i64 40
  %i.sa = load i64, ptr %i.rz, align 8, !alias.scope !5414, !noalias !5407, !noundef !5 ; 2 uses
  %.idx10329 = shl nuw nsw i64 %i.sa, 5
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 %.idx10329
  %i.sc = icmp eq i64 %i.sa, 0
  br i1 %i.sc, label %._crit_edge10170, label %.lr.ph10169

bb.ei:                                            ; preds = %.lr.ph10169
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sf, i64 32 ; 2 uses
  %i.se = icmp eq ptr %i.sd, %i.sb
  br i1 %i.se, label %._crit_edge10170, label %.lr.ph10169

.lr.ph10169:                                      ; preds = %bb.eh, %bb.ei
  %i.sf = phi ptr [ %i.sd, %bb.ei ], [ %i.ry, %bb.eh ] ; 3 uses
  %i.sg = load i32, ptr %i.sf, align 8, !noalias !5415, !noundef !5
  %i.sh = icmp eq i32 %i.sg, %.sroa.6.0.extract.trunc.i.i303.i
  br i1 %i.sh, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i304.i, label %bb.ei

bb.ej:                                            ; preds = %bb.eg
  %i.si = getelementptr inbounds nuw i8, ptr %i.rs, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i305.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i304.i: ; preds = %.lr.ph10169
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i305.i

._crit_edge10170:                                 ; preds = %bb.eh, %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !5413
  store ptr %i.bt, ptr %i.bs, align 8, !noalias !5413
  %.sroa.45.0..sroa_idx.i.i.i313.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i313.i, align 8, !noalias !5413
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5413
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i305.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i304.i, %bb.ej
  %.sroa.0.0.in.i.i.i306.i = phi ptr [ %i.si, %bb.ej ], [ %i.sj, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i304.i ]
  %.sroa.0.0.i6.i.i307.i = load i64, ptr %.sroa.0.0.in.i.i.i306.i, align 8, !noalias !5416, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !5411
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i308.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i308.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i305.i, %bb.ef
  %.sroa.05.0.i.i309.i = phi i64 [ %.sroa.0.0.i6.i.i307.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i305.i ], [ %i.rt, %bb.ef ] ; 4 uses
  %i.sk = icmp ugt i64 %.sroa.05.0.i.i309.i, 2305843009213693951
  br i1 %i.sk, label %bb.el, label %bb.ek, !prof !29

bb.ek:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i308.i
  %.neg4.i310.i = mul nsw i64 %.sroa.05.0.i.i309.i, -8
  %i.sl = icmp samesign ult i64 %.sroa.05.0.i.i309.i, 17
  br i1 %i.sl, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit315.i, label %bb.em, !prof !30

bb.el:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i308.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i309.i) #45, !noalias !5417
  unreachable

bb.em:                                            ; preds = %bb.ek
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5417
  unreachable

switch.lookup10368:                               ; preds = %bb.ed
  %.sroa.44.0.extract.trunc.i.i300.i.mask = and i56 %.sroa.583.41.copyload.i, 255
  %i.sm = zext nneg i56 %.sroa.44.0.extract.trunc.i.i300.i.mask to i64
  %switch.gep10371 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.sm
  %switch.load10372 = load i8, ptr %switch.gep10371, align 1
  %switch.ext10373 = zext i8 %switch.load10372 to i64
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit315.i

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit315.i: ; preds = %switch.lookup10368, %bb.ek
  %.neg5.i311.i = phi i64 [ %.neg4.i310.i, %bb.ek ], [ %switch.ext10373, %switch.lookup10368 ]
  %i.sn = and i64 %.neg5.i311.i, 120
  %i.so = zext nneg i64 %i.sn to i128
  %i.sp = lshr i128 -1, %i.so
  %.neg.i312.i = xor i128 %.sroa.481.0.copyload.i, -1
  %i.sq = add i128 %.sroa.080.0.copyload.i, %.neg.i312.i
  %i.sr = and i128 %i.sp, %i.sq
  br label %bb.en

bb.en:                                            ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit315.i, %bb.ec
  %.sroa.01.0.i.i88.i = phi i128 [ %i.sr, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit315.i ], [ 0, %bb.ec ]
  %..i14.i.i89.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.rp, i64 range(i64 1, -9223372036854775807) %i.rn)
  %i.ss = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %..i14.i.i89.i, i1 true)
  %i.st = trunc nuw nsw i64 %i.ss to i32          ; 3 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.sv = load ptr, ptr %i.su, align 8, !alias.scope !5406, !noalias !5395, !nonnull !5, !align !21, !noundef !5
  %i.sw = load i128, ptr %i.sv, align 16, !noalias !5407, !noundef !5 ; 2 uses
  %.not10.i.i90.i = icmp eq i128 %i.sw, 0
  br i1 %.not10.i.i90.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.sx = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  %i.sy = load ptr, ptr %i.sx, align 8, !alias.scope !5406, !noalias !5395, !nonnull !5, !noundef !5
  %i.sz = load i8, ptr %i.sy, align 1, !range !13, !noalias !5407, !noundef !5
  %i.ta = trunc nuw i8 %i.sz to i1
  br i1 %i.ta, label %bb.eq, label %bb.er

bb.ep:                                            ; preds = %bb.er, %bb.eq, %bb.en
  %.sroa.07.0.i.i92.i = phi i32 [ %spec.select.i.i94.i, %bb.eq ], [ %i.st, %bb.en ], [ %..i15.i.i91.i, %bb.er ]
  %i.tb = zext nneg i32 %.sroa.07.0.i.i92.i to i64
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit96.i

bb.eq:                                            ; preds = %bb.eo
  %i.tc = icmp eq i128 %.sroa.01.0.i.i88.i, %i.sw
  %i.td = zext nneg i8 %i.rl to i32
  %spec.select.i.i94.i = select i1 %i.tc, i32 %i.td, i32 %i.st
  br label %bb.ep

bb.er:                                            ; preds = %bb.eo
  %i.te = getelementptr inbounds nuw i8, ptr %i.qw, i64 32
  %i.tf = load ptr, ptr %i.te, align 8, !alias.scope !5406, !noalias !5395, !nonnull !5, !align !11, !noundef !5
  %i.tg = load i64, ptr %i.tf, align 8, !noalias !5407, !noundef !5
  %i.th = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.tg, i1 false)
  %i.ti = trunc nuw nsw i64 %i.th to i32
  %..i15.i.i91.i = call noundef range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.st, i32 range(i32 0, 129) %i.ti)
  br label %bb.ep

bb.es:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit117.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ed, i64 noundef %i.pq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #43, !noalias !5395
  unreachable

_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit96.i: ; preds = %bb.ep, %bb.eb
  %.sroa.0.0.i4.i93.i = phi i64 [ %i.rh, %bb.eb ], [ %i.tb, %bb.ep ] ; 2 uses
  %i.tj = icmp eq i64 %.sroa.0.0.i4.i114.i, %.sroa.0.0.i4.i93.i
  %i.tk = icmp ult i64 %.sroa.0.0.i4.i114.i, %.sroa.0.0.i4.i93.i
  %.sroa.0.0.i.i32.i = select i1 %i.tj, i1 %.sroa.0.0.i.i81.i, i1 %i.tk ; 2 uses
  %i.tl = getelementptr inbounds i8, ptr %.sroa.43.11279.i, i64 -8
  %.sroa.01.0.i33.i = select i1 %.sroa.0.0.i.i32.i, ptr %2, ptr %i.tl
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i33.i, i64 %i.lv
  store i32 %.val23.i, ptr %i.tm, align 4, !alias.scope !5319, !noalias !5418
  %i.tn = zext i1 %.sroa.0.0.i.i32.i to i64
  %i.to = add i64 %i.lv, %i.tn                    ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.9.11281.i, i64 8
  %.val20.i = load i32, ptr %i.tp, align 4, !alias.scope !5318, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5419)
  %i.tq = load i64, ptr %i.dx, align 8, !alias.scope !5419, !noalias !5321, !noundef !5 ; 2 uses
  %i.tr = zext i32 %.val20.i to i64               ; 3 uses
  %i.ts = icmp ugt i64 %i.tq, %i.tr
  br i1 %i.ts, label %bb.et, label %bb.ga

bb.et:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit96.i
  %i.tt = load ptr, ptr %.val38, align 8, !alias.scope !5419, !noalias !5321, !nonnull !5, !align !11, !noundef !5
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.tr ; 2 uses
  %.val.i139.i = load ptr, ptr %i.tu, align 8, !noalias !5420, !nonnull !5, !align !11, !noundef !5 ; 7 uses
  %i.tv = load ptr, ptr %.val.i139.i, align 8, !noalias !5420, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 96
  %.sroa.0102.0.copyload.i = load i128, ptr %i.tw, align 16, !noalias !5420
  %.sroa.4103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tv, i64 112
  %.sroa.4103.0.copyload.i = load i128, ptr %.sroa.4103.0..sroa_idx.i, align 16, !noalias !5420
  %.sroa.5105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tv, i64 136
  %.sroa.5105.0.copyload.i = load i64, ptr %.sroa.5105.0..sroa_idx.i, align 8, !noalias !5420 ; 3 uses
  %.sroa.5105.40.extract.trunc.i = trunc i64 %.sroa.5105.0.copyload.i to i8 ; 2 uses
  %.not.i.i140.i = icmp eq i8 %.sroa.5105.40.extract.trunc.i, -1
  br i1 %.not.i.i140.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i142.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.tx = load ptr, ptr %i.dy, align 8, !alias.scope !5419, !noalias !5321, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5421)
  call void @llvm.experimental.noalias.scope.decl(metadata !5422), !noalias !5423
  %.sroa.44.0.extract.shift.i.i425.i = lshr i64 %.sroa.5105.0.copyload.i, 8
  %.sroa.44.0.extract.trunc.i.i426.i = trunc i64 %.sroa.44.0.extract.shift.i.i425.i to i8 ; 2 uses
  switch i8 %.sroa.5105.40.extract.trunc.i, label %bb.ev [
    i8 0, label %bb.ew
    i8 1, label %bb.fb
    i8 2, label %bb.fc
  ]

bb.ev:                                            ; preds = %bb.eu
  unreachable

bb.ew:                                            ; preds = %bb.eu
  switch i8 %.sroa.44.0.extract.trunc.i.i426.i, label %default.unreachable25.i.i.i440.i [
    i8 0, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit441.i
    i8 1, label %bb.ex
    i8 2, label %bb.ey
    i8 3, label %bb.ez
    i8 4, label %bb.fa
  ]

default.unreachable25.i.i.i440.i:                 ; preds = %bb.ew
  unreachable

bb.ex:                                            ; preds = %bb.ew
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit441.i

bb.ey:                                            ; preds = %bb.ew
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit441.i

bb.ez:                                            ; preds = %bb.ew
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit441.i

bb.fa:                                            ; preds = %bb.ew
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit441.i

bb.fb:                                            ; preds = %bb.eu
  %i.ty = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i426.i), !noalias !5424
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i434.i

bb.fc:                                            ; preds = %bb.eu
  %.sroa.6.0.extract.shift.i.i428.i = lshr i64 %.sroa.5105.0.copyload.i, 32
  %.sroa.6.0.extract.trunc.i.i429.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i428.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5425), !noalias !5423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !5424
  store i32 %.sroa.6.0.extract.trunc.i.i429.i, ptr %i.bf, align 4, !noalias !5426
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 72
  %i.ua = load i32, ptr %i.tz, align 8, !alias.scope !5427, !noalias !5420, !noundef !5
  %i.ub = icmp eq i32 %i.ua, %.sroa.6.0.extract.trunc.i.i429.i
  br i1 %i.ub, label %bb.ff, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tx, i64 32
  %i.ud = load ptr, ptr %i.uc, align 8, !alias.scope !5427, !noalias !5420, !nonnull !5, !noundef !5 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tx, i64 40
  %i.uf = load i64, ptr %i.ue, align 8, !alias.scope !5427, !noalias !5420, !noundef !5 ; 2 uses
  %.idx10330 = shl nuw nsw i64 %i.uf, 5
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 %.idx10330
  %i.uh = icmp eq i64 %i.uf, 0
  br i1 %i.uh, label %._crit_edge10174, label %.lr.ph10173

bb.fe:                                            ; preds = %.lr.ph10173
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uk, i64 32 ; 2 uses
  %i.uj = icmp eq ptr %i.ui, %i.ug
  br i1 %i.uj, label %._crit_edge10174, label %.lr.ph10173

.lr.ph10173:                                      ; preds = %bb.fd, %bb.fe
  %i.uk = phi ptr [ %i.ui, %bb.fe ], [ %i.ud, %bb.fd ] ; 3 uses
  %i.ul = load i32, ptr %i.uk, align 8, !noalias !5428, !noundef !5
  %i.um = icmp eq i32 %i.ul, %.sroa.6.0.extract.trunc.i.i429.i
  br i1 %i.um, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i430.i, label %bb.fe

bb.ff:                                            ; preds = %bb.fc
  %i.un = getelementptr inbounds nuw i8, ptr %i.tx, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i431.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i430.i: ; preds = %.lr.ph10173
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i431.i

._crit_edge10174:                                 ; preds = %bb.fd, %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !5426
  store ptr %i.bf, ptr %i.be, align 8, !noalias !5426
  %.sroa.45.0..sroa_idx.i.i.i439.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i439.i, align 8, !noalias !5426
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.be, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5426
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i431.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i430.i, %bb.ff
  %.sroa.0.0.in.i.i.i432.i = phi ptr [ %i.un, %bb.ff ], [ %i.uo, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i430.i ]
  %.sroa.0.0.i6.i.i433.i = load i64, ptr %.sroa.0.0.in.i.i.i432.i, align 8, !noalias !5429, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !5424
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i434.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i434.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i431.i, %bb.fb
  %.sroa.05.0.i.i435.i = phi i64 [ %.sroa.0.0.i6.i.i433.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i431.i ], [ %i.ty, %bb.fb ] ; 4 uses
  %i.up = icmp ugt i64 %.sroa.05.0.i.i435.i, 2305843009213693951
  br i1 %i.up, label %bb.fh, label %bb.fg, !prof !29

bb.fg:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i434.i
  %i.uq = icmp samesign ult i64 %.sroa.05.0.i.i435.i, 17
  br i1 %i.uq, label %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit441_crit_edge.i, label %bb.fi, !prof !30

._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit441_crit_edge.i: ; preds = %bb.fg
  %.neg4.i436.i = mul nuw nsw i64 %.sroa.05.0.i.i435.i, 120
  %.val2.pre.i141.pre.i = load ptr, ptr %i.tu, align 8, !noalias !5420
  %i.ur = and i64 %.neg4.i436.i, 120
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit441.i

bb.fh:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i434.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i435.i) #45, !noalias !5430
  unreachable

bb.fi:                                            ; preds = %bb.fg
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5430
  unreachable

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit441.i: ; preds = %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit441_crit_edge.i, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew
  %.val2.pre.i141.i = phi ptr [ %.val2.pre.i141.pre.i, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit441_crit_edge.i ], [ %.val.i139.i, %bb.ew ], [ %.val.i139.i, %bb.ez ], [ %.val.i139.i, %bb.ey ], [ %.val.i139.i, %bb.ex ], [ %.val.i139.i, %bb.fa ]
  %.neg5.i437.i = phi i64 [ %i.ur, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit441_crit_edge.i ], [ 120, %bb.ew ], [ 64, %bb.ez ], [ 96, %bb.ey ], [ 112, %bb.ex ], [ 0, %bb.fa ]
  %i.us = zext nneg i64 %.neg5.i437.i to i128
  %i.ut = lshr i128 -1, %i.us
  %.neg.i438.i = xor i128 %.sroa.4103.0.copyload.i, -1
  %i.uu = add i128 %.sroa.0102.0.copyload.i, %.neg.i438.i
  %i.uv = and i128 %i.ut, %i.uu
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i142.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i142.i: ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit441.i, %bb.et
  %.val2.i143.i = phi ptr [ %.val2.pre.i141.i, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit441.i ], [ %.val.i139.i, %bb.et ] ; 3 uses
  %.sroa.0.0.i.i144.i = phi i128 [ %i.uv, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit441.i ], [ 0, %bb.et ]
  %i.uw = load ptr, ptr %i.dz, align 8, !alias.scope !5419, !noalias !5321, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5431)
  %i.ux = load ptr, ptr %i.uw, align 8, !alias.scope !5431, !noalias !5420, !nonnull !5, !noundef !5 ; 2 uses
  %i.uy = load i8, ptr %i.ux, align 1, !range !13, !noalias !5432, !noundef !5
  %i.uz = trunc nuw i8 %i.uy to i1
  br i1 %i.uz, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i142.i
  %i.va = getelementptr inbounds nuw i8, ptr %i.ux, i64 1
  %i.vb = load i8, ptr %i.va, align 1, !noalias !5432, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i143.i) ]
  %i.vc = load ptr, ptr %.val2.i143.i, align 8, !noalias !5432, !nonnull !5, !align !21, !noundef !5
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 338
  %i.ve = load i8, ptr %i.vd, align 2, !noalias !5432, !noundef !5
  %..i.i.i158.i = call noundef i8 @llvm.umin.i8(i8 %i.vb, i8 %i.ve)
  %i.vf = and i8 %..i.i.i158.i, 63
  %i.vg = zext nneg i8 %i.vf to i64
  %i.vh = shl nuw i64 1, %i.vg
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit159.i

bb.fk:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i142.i
  %i.vi = load ptr, ptr %.val2.i143.i, align 8, !noalias !5432, !nonnull !5, !align !21, !noundef !5 ; 6 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 338
  %i.vk = load i8, ptr %i.vj, align 2, !noalias !5432, !noundef !5
  %i.vl = and i8 %i.vk, 63                        ; 2 uses
  %i.vm = zext nneg i8 %i.vl to i64
  %i.vn = shl nuw i64 1, %i.vm
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vi, i64 320
  %i.vp = load i64, ptr %i.vo, align 16, !noalias !5432, !noundef !5
  %.sroa.5.0..sroa_idx.i.i145.i = getelementptr inbounds nuw i8, ptr %i.vi, i64 136
  %.sroa.5.0.copyload.i.i146.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i145.i, align 8, !noalias !5432 ; 2 uses
  %.not.i3.i147.i = icmp eq i8 %.sroa.5.0.copyload.i.i146.i, -1
  br i1 %.not.i3.i147.i, label %bb.fv, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %.sroa.6.0..sroa_idx.i.i148.i = getelementptr inbounds nuw i8, ptr %i.vi, i64 137
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vi, i64 96
  %i.vr = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.vs = load ptr, ptr %i.vr, align 8, !alias.scope !5431, !noalias !5420, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  %.sroa.0107.0.copyload.i = load i128, ptr %i.vq, align 16, !noalias !5432
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vi, i64 112
  %.sroa.4108.0.copyload.i = load i128, ptr %.sroa.4108.0..sroa_idx.i, align 16, !noalias !5432
  %.sroa.5110.41.copyload.i = load i56, ptr %.sroa.6.0..sroa_idx.i.i148.i, align 1, !noalias !5432 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5433)
  call void @llvm.experimental.noalias.scope.decl(metadata !5434), !noalias !5435
  switch i8 %.sroa.5.0.copyload.i.i146.i, label %bb.fm [
    i8 0, label %switch.lookup10371
    i8 1, label %bb.fn
    i8 2, label %bb.fo
  ]

bb.fm:                                            ; preds = %bb.fl
  unreachable

bb.fn:                                            ; preds = %bb.fl
  %.sroa.44.0.extract.trunc.i.i408.i = trunc i56 %.sroa.5110.41.copyload.i to i8
  %i.vt = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i408.i), !noalias !5436
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i416.i

bb.fo:                                            ; preds = %bb.fl
  %.sroa.5110.41.insert.ext.i = zext i56 %.sroa.5110.41.copyload.i to i64
  %.sroa.6.0.extract.shift.i.i410.i = lshr i64 %.sroa.5110.41.insert.ext.i, 24
  %.sroa.6.0.extract.trunc.i.i411.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i410.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5437), !noalias !5435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !5436
  store i32 %.sroa.6.0.extract.trunc.i.i411.i, ptr %i.bh, align 4, !noalias !5438
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 72
  %i.vv = load i32, ptr %i.vu, align 8, !alias.scope !5439, !noalias !5432, !noundef !5
  %i.vw = icmp eq i32 %i.vv, %.sroa.6.0.extract.trunc.i.i411.i
  br i1 %i.vw, label %bb.fr, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vs, i64 32
  %i.vy = load ptr, ptr %i.vx, align 8, !alias.scope !5439, !noalias !5432, !nonnull !5, !noundef !5 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vs, i64 40
  %i.wa = load i64, ptr %i.vz, align 8, !alias.scope !5439, !noalias !5432, !noundef !5 ; 2 uses
  %.idx10331 = shl nuw nsw i64 %i.wa, 5
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vy, i64 %.idx10331
  %i.wc = icmp eq i64 %i.wa, 0
  br i1 %i.wc, label %._crit_edge10178, label %.lr.ph10177

bb.fq:                                            ; preds = %.lr.ph10177
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wf, i64 32 ; 2 uses
  %i.we = icmp eq ptr %i.wd, %i.wb
  br i1 %i.we, label %._crit_edge10178, label %.lr.ph10177

.lr.ph10177:                                      ; preds = %bb.fp, %bb.fq
  %i.wf = phi ptr [ %i.wd, %bb.fq ], [ %i.vy, %bb.fp ] ; 3 uses
  %i.wg = load i32, ptr %i.wf, align 8, !noalias !5440, !noundef !5
  %i.wh = icmp eq i32 %i.wg, %.sroa.6.0.extract.trunc.i.i411.i
  br i1 %i.wh, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i412.i, label %bb.fq

bb.fr:                                            ; preds = %bb.fo
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vs, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i413.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i412.i: ; preds = %.lr.ph10177
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i413.i

._crit_edge10178:                                 ; preds = %bb.fp, %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !5438
  store ptr %i.bh, ptr %i.bg, align 8, !noalias !5438
  %.sroa.45.0..sroa_idx.i.i.i421.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i421.i, align 8, !noalias !5438
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5438
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i413.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i412.i, %bb.fr
  %.sroa.0.0.in.i.i.i414.i = phi ptr [ %i.wi, %bb.fr ], [ %i.wj, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i412.i ]
  %.sroa.0.0.i6.i.i415.i = load i64, ptr %.sroa.0.0.in.i.i.i414.i, align 8, !noalias !5441, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !5436
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i416.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i416.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i413.i, %bb.fn
  %.sroa.05.0.i.i417.i = phi i64 [ %.sroa.0.0.i6.i.i415.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i413.i ], [ %i.vt, %bb.fn ] ; 4 uses
  %i.wk = icmp ugt i64 %.sroa.05.0.i.i417.i, 2305843009213693951
  br i1 %i.wk, label %bb.ft, label %bb.fs, !prof !29

bb.fs:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i416.i
  %.neg4.i418.i = mul nsw i64 %.sroa.05.0.i.i417.i, -8
  %i.wl = icmp samesign ult i64 %.sroa.05.0.i.i417.i, 17
  br i1 %i.wl, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit423.i, label %bb.fu, !prof !30

bb.ft:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i416.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i417.i) #45, !noalias !5442
  unreachable

bb.fu:                                            ; preds = %bb.fs
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5442
  unreachable

switch.lookup10371:                               ; preds = %bb.fl
  %.sroa.44.0.extract.trunc.i.i408.i.mask = and i56 %.sroa.5110.41.copyload.i, 255
  %i.wm = zext nneg i56 %.sroa.44.0.extract.trunc.i.i408.i.mask to i64
  %switch.gep10375 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.wm
  %switch.load10376 = load i8, ptr %switch.gep10375, align 1
  %switch.ext10377 = zext i8 %switch.load10376 to i64
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit423.i

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit423.i: ; preds = %switch.lookup10371, %bb.fs
  %.neg5.i419.i = phi i64 [ %.neg4.i418.i, %bb.fs ], [ %switch.ext10377, %switch.lookup10371 ]
  %i.wn = and i64 %.neg5.i419.i, 120
  %i.wo = zext nneg i64 %i.wn to i128
  %i.wp = lshr i128 -1, %i.wo
  %.neg.i420.i = xor i128 %.sroa.4108.0.copyload.i, -1
  %i.wq = add i128 %.sroa.0107.0.copyload.i, %.neg.i420.i
  %i.wr = and i128 %i.wp, %i.wq
  br label %bb.fv

bb.fv:                                            ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit423.i, %bb.fk
  %.sroa.01.0.i.i151.i = phi i128 [ %i.wr, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit423.i ], [ 0, %bb.fk ]
  %..i14.i.i152.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.vp, i64 range(i64 1, -9223372036854775807) %i.vn)
  %i.ws = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %..i14.i.i152.i, i1 true)
  %i.wt = trunc nuw nsw i64 %i.ws to i32          ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.uw, i64 16
  %i.wv = load ptr, ptr %i.wu, align 8, !alias.scope !5431, !noalias !5420, !nonnull !5, !align !21, !noundef !5
  %i.ww = load i128, ptr %i.wv, align 16, !noalias !5432, !noundef !5 ; 2 uses
  %.not10.i.i153.i = icmp eq i128 %i.ww, 0
  br i1 %.not10.i.i153.i, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.wx = getelementptr inbounds nuw i8, ptr %i.uw, i64 24
  %i.wy = load ptr, ptr %i.wx, align 8, !alias.scope !5431, !noalias !5420, !nonnull !5, !noundef !5
  %i.wz = load i8, ptr %i.wy, align 1, !range !13, !noalias !5432, !noundef !5
  %i.xa = trunc nuw i8 %i.wz to i1
  br i1 %i.xa, label %bb.fy, label %bb.fz

bb.fx:                                            ; preds = %bb.fz, %bb.fy, %bb.fv
  %.sroa.07.0.i.i155.i = phi i32 [ %spec.select.i.i157.i, %bb.fy ], [ %i.wt, %bb.fv ], [ %..i15.i.i154.i, %bb.fz ]
  %i.xb = zext nneg i32 %.sroa.07.0.i.i155.i to i64
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit159.i

bb.fy:                                            ; preds = %bb.fw
  %i.xc = icmp eq i128 %.sroa.01.0.i.i151.i, %i.ww
  %i.xd = zext nneg i8 %i.vl to i32
  %spec.select.i.i157.i = select i1 %i.xc, i32 %i.xd, i32 %i.wt
  br label %bb.fx

bb.fz:                                            ; preds = %bb.fw
  %i.xe = getelementptr inbounds nuw i8, ptr %i.uw, i64 32
  %i.xf = load ptr, ptr %i.xe, align 8, !alias.scope !5431, !noalias !5420, !nonnull !5, !align !11, !noundef !5
  %i.xg = load i64, ptr %i.xf, align 8, !noalias !5432, !noundef !5
  %i.xh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.xg, i1 false)
  %i.xi = trunc nuw nsw i64 %i.xh to i32
  %..i15.i.i154.i = call noundef range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.wt, i32 range(i32 0, 129) %i.xi)
  br label %bb.fx

bb.ga:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit96.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.tr, i64 noundef %i.tq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #43, !noalias !5420
  unreachable

_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit159.i: ; preds = %bb.fx, %bb.fj
  %.sroa.0.0.i4.i156.i = phi i64 [ %i.vh, %bb.fj ], [ %i.xb, %bb.fx ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5443)
  %i.xj = load i64, ptr %i.dx, align 8, !alias.scope !5443, !noalias !5321, !noundef !5 ; 2 uses
  %i.xk = icmp ugt i64 %i.xj, %i.ed
  br i1 %i.xk, label %bb.gb, label %bb.hi

bb.gb:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit159.i
  %i.xl = load ptr, ptr %.val38, align 8, !alias.scope !5443, !noalias !5321, !nonnull !5, !align !11, !noundef !5
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.xl, i64 %i.ed ; 2 uses
  %.val.i118.i = load ptr, ptr %i.xm, align 8, !noalias !5444, !nonnull !5, !align !11, !noundef !5 ; 7 uses
  %i.xn = load ptr, ptr %.val.i118.i, align 8, !noalias !5444, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 96
  %.sroa.093.0.copyload.i = load i128, ptr %i.xo, align 16, !noalias !5444
  %.sroa.494.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xn, i64 112
  %.sroa.494.0.copyload.i = load i128, ptr %.sroa.494.0..sroa_idx.i, align 16, !noalias !5444
  %.sroa.596.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xn, i64 136
  %.sroa.596.0.copyload.i = load i64, ptr %.sroa.596.0..sroa_idx.i, align 8, !noalias !5444 ; 3 uses
  %.sroa.596.40.extract.trunc.i = trunc i64 %.sroa.596.0.copyload.i to i8 ; 2 uses
  %.not.i.i119.i = icmp eq i8 %.sroa.596.40.extract.trunc.i, -1
  br i1 %.not.i.i119.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i121.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.xp = load ptr, ptr %i.dy, align 8, !alias.scope !5443, !noalias !5321, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5445)
  call void @llvm.experimental.noalias.scope.decl(metadata !5446), !noalias !5447
  %.sroa.44.0.extract.shift.i.i389.i = lshr i64 %.sroa.596.0.copyload.i, 8
  %.sroa.44.0.extract.trunc.i.i390.i = trunc i64 %.sroa.44.0.extract.shift.i.i389.i to i8 ; 2 uses
  switch i8 %.sroa.596.40.extract.trunc.i, label %bb.gd [
    i8 0, label %bb.ge
    i8 1, label %bb.gj
    i8 2, label %bb.gk
  ]

bb.gd:                                            ; preds = %bb.gc
  unreachable

bb.ge:                                            ; preds = %bb.gc
  switch i8 %.sroa.44.0.extract.trunc.i.i390.i, label %default.unreachable25.i.i.i404.i [
    i8 0, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit405.i
    i8 1, label %bb.gf
    i8 2, label %bb.gg
    i8 3, label %bb.gh
    i8 4, label %bb.gi
  ]

default.unreachable25.i.i.i404.i:                 ; preds = %bb.ge
  unreachable

bb.gf:                                            ; preds = %bb.ge
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit405.i

bb.gg:                                            ; preds = %bb.ge
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit405.i

bb.gh:                                            ; preds = %bb.ge
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit405.i

bb.gi:                                            ; preds = %bb.ge
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit405.i

bb.gj:                                            ; preds = %bb.gc
  %i.xq = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i390.i), !noalias !5448
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i398.i

bb.gk:                                            ; preds = %bb.gc
  %.sroa.6.0.extract.shift.i.i392.i = lshr i64 %.sroa.596.0.copyload.i, 32
  %.sroa.6.0.extract.trunc.i.i393.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i392.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5449), !noalias !5447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !5448
  store i32 %.sroa.6.0.extract.trunc.i.i393.i, ptr %i.bj, align 4, !noalias !5450
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xp, i64 72
  %i.xs = load i32, ptr %i.xr, align 8, !alias.scope !5451, !noalias !5444, !noundef !5
  %i.xt = icmp eq i32 %i.xs, %.sroa.6.0.extract.trunc.i.i393.i
  br i1 %i.xt, label %bb.gn, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xp, i64 32
  %i.xv = load ptr, ptr %i.xu, align 8, !alias.scope !5451, !noalias !5444, !nonnull !5, !noundef !5 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xp, i64 40
  %i.xx = load i64, ptr %i.xw, align 8, !alias.scope !5451, !noalias !5444, !noundef !5 ; 2 uses
  %.idx10332 = shl nuw nsw i64 %i.xx, 5
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xv, i64 %.idx10332
  %i.xz = icmp eq i64 %i.xx, 0
  br i1 %i.xz, label %._crit_edge10182, label %.lr.ph10181

bb.gm:                                            ; preds = %.lr.ph10181
  %i.ya = getelementptr inbounds nuw i8, ptr %i.yc, i64 32 ; 2 uses
  %i.yb = icmp eq ptr %i.ya, %i.xy
  br i1 %i.yb, label %._crit_edge10182, label %.lr.ph10181

.lr.ph10181:                                      ; preds = %bb.gl, %bb.gm
  %i.yc = phi ptr [ %i.ya, %bb.gm ], [ %i.xv, %bb.gl ] ; 3 uses
  %i.yd = load i32, ptr %i.yc, align 8, !noalias !5452, !noundef !5
  %i.ye = icmp eq i32 %i.yd, %.sroa.6.0.extract.trunc.i.i393.i
  br i1 %i.ye, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i394.i, label %bb.gm

bb.gn:                                            ; preds = %bb.gk
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xp, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i395.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i394.i: ; preds = %.lr.ph10181
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i395.i

._crit_edge10182:                                 ; preds = %bb.gl, %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !5450
  store ptr %i.bj, ptr %i.bi, align 8, !noalias !5450
  %.sroa.45.0..sroa_idx.i.i.i403.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i403.i, align 8, !noalias !5450
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5450
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i395.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i394.i, %bb.gn
  %.sroa.0.0.in.i.i.i396.i = phi ptr [ %i.yf, %bb.gn ], [ %i.yg, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i394.i ]
  %.sroa.0.0.i6.i.i397.i = load i64, ptr %.sroa.0.0.in.i.i.i396.i, align 8, !noalias !5453, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !5448
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i398.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i398.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i395.i, %bb.gj
  %.sroa.05.0.i.i399.i = phi i64 [ %.sroa.0.0.i6.i.i397.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i395.i ], [ %i.xq, %bb.gj ] ; 4 uses
  %i.yh = icmp ugt i64 %.sroa.05.0.i.i399.i, 2305843009213693951
  br i1 %i.yh, label %bb.gp, label %bb.go, !prof !29

bb.go:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i398.i
  %i.yi = icmp samesign ult i64 %.sroa.05.0.i.i399.i, 17
  br i1 %i.yi, label %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit405_crit_edge.i, label %bb.gq, !prof !30

._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit405_crit_edge.i: ; preds = %bb.go
  %.neg4.i400.i = mul nuw nsw i64 %.sroa.05.0.i.i399.i, 120
  %.val2.pre.i120.pre.i = load ptr, ptr %i.xm, align 8, !noalias !5444
  %i.yj = and i64 %.neg4.i400.i, 120
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit405.i

bb.gp:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i398.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i399.i) #45, !noalias !5454
  unreachable

bb.gq:                                            ; preds = %bb.go
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5454
  unreachable

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit405.i: ; preds = %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit405_crit_edge.i, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge
  %.val2.pre.i120.i = phi ptr [ %.val2.pre.i120.pre.i, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit405_crit_edge.i ], [ %.val.i118.i, %bb.ge ], [ %.val.i118.i, %bb.gh ], [ %.val.i118.i, %bb.gg ], [ %.val.i118.i, %bb.gf ], [ %.val.i118.i, %bb.gi ]
  %.neg5.i401.i = phi i64 [ %i.yj, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit405_crit_edge.i ], [ 120, %bb.ge ], [ 64, %bb.gh ], [ 96, %bb.gg ], [ 112, %bb.gf ], [ 0, %bb.gi ]
  %i.yk = zext nneg i64 %.neg5.i401.i to i128
  %i.yl = lshr i128 -1, %i.yk
  %.neg.i402.i = xor i128 %.sroa.494.0.copyload.i, -1
  %i.ym = add i128 %.sroa.093.0.copyload.i, %.neg.i402.i
  %i.yn = and i128 %i.yl, %i.ym
  %i.yo = icmp ult i128 %.sroa.0.0.i.i144.i, %i.yn
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i121.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i121.i: ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit405.i, %bb.gb
  %.val2.i122.i = phi ptr [ %.val2.pre.i120.i, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit405.i ], [ %.val.i118.i, %bb.gb ] ; 3 uses
  %.sroa.0.0.i.i123.i = phi i1 [ %i.yo, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit405.i ], [ false, %bb.gb ]
  %i.yp = load ptr, ptr %i.dz, align 8, !alias.scope !5443, !noalias !5321, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5455)
  %i.yq = load ptr, ptr %i.yp, align 8, !alias.scope !5455, !noalias !5444, !nonnull !5, !noundef !5 ; 2 uses
  %i.yr = load i8, ptr %i.yq, align 1, !range !13, !noalias !5456, !noundef !5
  %i.ys = trunc nuw i8 %i.yr to i1
  br i1 %i.ys, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i121.i
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yq, i64 1
  %i.yu = load i8, ptr %i.yt, align 1, !noalias !5456, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i122.i) ]
  %i.yv = load ptr, ptr %.val2.i122.i, align 8, !noalias !5456, !nonnull !5, !align !21, !noundef !5
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 338
  %i.yx = load i8, ptr %i.yw, align 2, !noalias !5456, !noundef !5
  %..i.i.i137.i = call noundef i8 @llvm.umin.i8(i8 %i.yu, i8 %i.yx)
  %i.yy = and i8 %..i.i.i137.i, 63
  %i.yz = zext nneg i8 %i.yy to i64
  %i.za = shl nuw i64 1, %i.yz
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit138.i

bb.gs:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i121.i
  %i.zb = load ptr, ptr %.val2.i122.i, align 8, !noalias !5456, !nonnull !5, !align !21, !noundef !5 ; 6 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 338
  %i.zd = load i8, ptr %i.zc, align 2, !noalias !5456, !noundef !5
  %i.ze = and i8 %i.zd, 63                        ; 2 uses
  %i.zf = zext nneg i8 %i.ze to i64
  %i.zg = shl nuw i64 1, %i.zf
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zb, i64 320
  %i.zi = load i64, ptr %i.zh, align 16, !noalias !5456, !noundef !5
  %.sroa.5.0..sroa_idx.i.i124.i = getelementptr inbounds nuw i8, ptr %i.zb, i64 136
  %.sroa.5.0.copyload.i.i125.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i124.i, align 8, !noalias !5456 ; 2 uses
  %.not.i3.i126.i = icmp eq i8 %.sroa.5.0.copyload.i.i125.i, -1
  br i1 %.not.i3.i126.i, label %bb.hd, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %.sroa.6.0..sroa_idx.i.i127.i = getelementptr inbounds nuw i8, ptr %i.zb, i64 137
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zb, i64 96
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.zl = load ptr, ptr %i.zk, align 8, !alias.scope !5455, !noalias !5444, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  %.sroa.098.0.copyload.i = load i128, ptr %i.zj, align 16, !noalias !5456
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.zb, i64 112
  %.sroa.499.0.copyload.i = load i128, ptr %.sroa.499.0..sroa_idx.i, align 16, !noalias !5456
  %.sroa.5101.41.copyload.i = load i56, ptr %.sroa.6.0..sroa_idx.i.i127.i, align 1, !noalias !5456 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5457)
  call void @llvm.experimental.noalias.scope.decl(metadata !5458), !noalias !5459
  switch i8 %.sroa.5.0.copyload.i.i125.i, label %bb.gu [
    i8 0, label %switch.lookup10374
    i8 1, label %bb.gv
    i8 2, label %bb.gw
  ]

bb.gu:                                            ; preds = %bb.gt
  unreachable

bb.gv:                                            ; preds = %bb.gt
  %.sroa.44.0.extract.trunc.i.i372.i = trunc i56 %.sroa.5101.41.copyload.i to i8
  %i.zm = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i372.i), !noalias !5460
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i380.i

bb.gw:                                            ; preds = %bb.gt
  %.sroa.5101.41.insert.ext.i = zext i56 %.sroa.5101.41.copyload.i to i64
  %.sroa.6.0.extract.shift.i.i374.i = lshr i64 %.sroa.5101.41.insert.ext.i, 24
  %.sroa.6.0.extract.trunc.i.i375.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i374.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5461), !noalias !5459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !5460
  store i32 %.sroa.6.0.extract.trunc.i.i375.i, ptr %i.bl, align 4, !noalias !5462
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zl, i64 72
  %i.zo = load i32, ptr %i.zn, align 8, !alias.scope !5463, !noalias !5456, !noundef !5
  %i.zp = icmp eq i32 %i.zo, %.sroa.6.0.extract.trunc.i.i375.i
  br i1 %i.zp, label %bb.gz, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zl, i64 32
  %i.zr = load ptr, ptr %i.zq, align 8, !alias.scope !5463, !noalias !5456, !nonnull !5, !noundef !5 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zl, i64 40
  %i.zt = load i64, ptr %i.zs, align 8, !alias.scope !5463, !noalias !5456, !noundef !5 ; 2 uses
  %.idx10333 = shl nuw nsw i64 %i.zt, 5
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zr, i64 %.idx10333
  %i.zv = icmp eq i64 %i.zt, 0
  br i1 %i.zv, label %._crit_edge10186, label %.lr.ph10185

bb.gy:                                            ; preds = %.lr.ph10185
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zy, i64 32 ; 2 uses
  %i.zx = icmp eq ptr %i.zw, %i.zu
  br i1 %i.zx, label %._crit_edge10186, label %.lr.ph10185

.lr.ph10185:                                      ; preds = %bb.gx, %bb.gy
  %i.zy = phi ptr [ %i.zw, %bb.gy ], [ %i.zr, %bb.gx ] ; 3 uses
  %i.zz = load i32, ptr %i.zy, align 8, !noalias !5464, !noundef !5
  %i.aaa = icmp eq i32 %i.zz, %.sroa.6.0.extract.trunc.i.i375.i
  br i1 %i.aaa, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i376.i, label %bb.gy

bb.gz:                                            ; preds = %bb.gw
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zl, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i377.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i376.i: ; preds = %.lr.ph10185
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zy, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i377.i

._crit_edge10186:                                 ; preds = %bb.gx, %bb.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !5462
  store ptr %i.bl, ptr %i.bk, align 8, !noalias !5462
  %.sroa.45.0..sroa_idx.i.i.i385.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i385.i, align 8, !noalias !5462
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.bk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5462
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i377.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i376.i, %bb.gz
  %.sroa.0.0.in.i.i.i378.i = phi ptr [ %i.aab, %bb.gz ], [ %i.aac, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i376.i ]
  %.sroa.0.0.i6.i.i379.i = load i64, ptr %.sroa.0.0.in.i.i.i378.i, align 8, !noalias !5465, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !5460
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i380.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i380.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i377.i, %bb.gv
  %.sroa.05.0.i.i381.i = phi i64 [ %.sroa.0.0.i6.i.i379.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i377.i ], [ %i.zm, %bb.gv ] ; 4 uses
  %i.aad = icmp ugt i64 %.sroa.05.0.i.i381.i, 2305843009213693951
  br i1 %i.aad, label %bb.hb, label %bb.ha, !prof !29

bb.ha:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i380.i
  %.neg4.i382.i = mul nsw i64 %.sroa.05.0.i.i381.i, -8
  %i.aae = icmp samesign ult i64 %.sroa.05.0.i.i381.i, 17
  br i1 %i.aae, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit387.i, label %bb.hc, !prof !30

bb.hb:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i380.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i381.i) #45, !noalias !5466
  unreachable

bb.hc:                                            ; preds = %bb.ha
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5466
  unreachable

switch.lookup10374:                               ; preds = %bb.gt
  %.sroa.44.0.extract.trunc.i.i372.i.mask = and i56 %.sroa.5101.41.copyload.i, 255
  %i.aaf = zext nneg i56 %.sroa.44.0.extract.trunc.i.i372.i.mask to i64
  %switch.gep10379 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.aaf
  %switch.load10380 = load i8, ptr %switch.gep10379, align 1
  %switch.ext10381 = zext i8 %switch.load10380 to i64
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit387.i

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit387.i: ; preds = %switch.lookup10374, %bb.ha
  %.neg5.i383.i = phi i64 [ %.neg4.i382.i, %bb.ha ], [ %switch.ext10381, %switch.lookup10374 ]
  %i.aag = and i64 %.neg5.i383.i, 120
  %i.aah = zext nneg i64 %i.aag to i128
  %i.aai = lshr i128 -1, %i.aah
  %.neg.i384.i = xor i128 %.sroa.499.0.copyload.i, -1
  %i.aaj = add i128 %.sroa.098.0.copyload.i, %.neg.i384.i
  %i.aak = and i128 %i.aai, %i.aaj
  br label %bb.hd

bb.hd:                                            ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit387.i, %bb.gs
  %.sroa.01.0.i.i130.i = phi i128 [ %i.aak, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit387.i ], [ 0, %bb.gs ]
  %..i14.i.i131.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.zi, i64 range(i64 1, -9223372036854775807) %i.zg)
  %i.aal = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %..i14.i.i131.i, i1 true)
  %i.aam = trunc nuw nsw i64 %i.aal to i32        ; 3 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  %i.aao = load ptr, ptr %i.aan, align 8, !alias.scope !5455, !noalias !5444, !nonnull !5, !align !21, !noundef !5
  %i.aap = load i128, ptr %i.aao, align 16, !noalias !5456, !noundef !5 ; 2 uses
  %.not10.i.i132.i = icmp eq i128 %i.aap, 0
  br i1 %.not10.i.i132.i, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.yp, i64 24
  %i.aar = load ptr, ptr %i.aaq, align 8, !alias.scope !5455, !noalias !5444, !nonnull !5, !noundef !5
  %i.aas = load i8, ptr %i.aar, align 1, !range !13, !noalias !5456, !noundef !5
  %i.aat = trunc nuw i8 %i.aas to i1
  br i1 %i.aat, label %bb.hg, label %bb.hh

bb.hf:                                            ; preds = %bb.hh, %bb.hg, %bb.hd
  %.sroa.07.0.i.i134.i = phi i32 [ %spec.select.i.i136.i, %bb.hg ], [ %i.aam, %bb.hd ], [ %..i15.i.i133.i, %bb.hh ]
  %i.aau = zext nneg i32 %.sroa.07.0.i.i134.i to i64
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit138.i

bb.hg:                                            ; preds = %bb.he
  %i.aav = icmp eq i128 %.sroa.01.0.i.i130.i, %i.aap
  %i.aaw = zext nneg i8 %i.ze to i32
  %spec.select.i.i136.i = select i1 %i.aav, i32 %i.aaw, i32 %i.aam
  br label %bb.hf

bb.hh:                                            ; preds = %bb.he
  %i.aax = getelementptr inbounds nuw i8, ptr %i.yp, i64 32
  %i.aay = load ptr, ptr %i.aax, align 8, !alias.scope !5455, !noalias !5444, !nonnull !5, !align !11, !noundef !5
  %i.aaz = load i64, ptr %i.aay, align 8, !noalias !5456, !noundef !5
  %i.aba = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aaz, i1 false)
  %i.abb = trunc nuw nsw i64 %i.aba to i32
  %..i15.i.i133.i = call noundef range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.aam, i32 range(i32 0, 129) %i.abb)
  br label %bb.hf

bb.hi:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit159.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ed, i64 noundef %i.xj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #43, !noalias !5444
  unreachable

_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit138.i: ; preds = %bb.hf, %bb.gr
  %.sroa.0.0.i4.i135.i = phi i64 [ %i.za, %bb.gr ], [ %i.aau, %bb.hf ] ; 2 uses
  %i.abc = icmp eq i64 %.sroa.0.0.i4.i156.i, %.sroa.0.0.i4.i135.i
  %i.abd = icmp ult i64 %.sroa.0.0.i4.i156.i, %.sroa.0.0.i4.i135.i
  %.sroa.0.0.i.i38.i = select i1 %i.abc, i1 %.sroa.0.0.i.i123.i, i1 %i.abd ; 2 uses
  %i.abe = getelementptr inbounds i8, ptr %.sroa.43.11279.i, i64 -12
  %.sroa.01.0.i39.i = select i1 %.sroa.0.0.i.i38.i, ptr %2, ptr %i.abe
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i39.i, i64 %i.to
  store i32 %.val20.i, ptr %i.abf, align 4, !alias.scope !5319, !noalias !5467
  %i.abg = zext i1 %.sroa.0.0.i.i38.i to i64
  %i.abh = add i64 %i.to, %i.abg                  ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %.sroa.9.11281.i, i64 12
  %.val17.i = load i32, ptr %i.abi, align 4, !alias.scope !5318, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5468)
  %i.abj = load i64, ptr %i.dx, align 8, !alias.scope !5468, !noalias !5321, !noundef !5 ; 2 uses
  %i.abk = zext i32 %.val17.i to i64              ; 3 uses
  %i.abl = icmp ugt i64 %i.abj, %i.abk
  br i1 %i.abl, label %bb.hj, label %bb.iq

bb.hj:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit138.i
  %i.abm = load ptr, ptr %.val38, align 8, !alias.scope !5468, !noalias !5321, !nonnull !5, !align !11, !noundef !5
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %i.abm, i64 %i.abk ; 2 uses
  %.val.i181.i = load ptr, ptr %i.abn, align 8, !noalias !5469, !nonnull !5, !align !11, !noundef !5 ; 7 uses
  %i.abo = load ptr, ptr %.val.i181.i, align 8, !noalias !5469, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 96
  %.sroa.0120.0.copyload.i = load i128, ptr %i.abp, align 16, !noalias !5469
  %.sroa.4121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abo, i64 112
  %.sroa.4121.0.copyload.i = load i128, ptr %.sroa.4121.0..sroa_idx.i, align 16, !noalias !5469
  %.sroa.5123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abo, i64 136
  %.sroa.5123.0.copyload.i = load i64, ptr %.sroa.5123.0..sroa_idx.i, align 8, !noalias !5469 ; 3 uses
  %.sroa.5123.40.extract.trunc.i = trunc i64 %.sroa.5123.0.copyload.i to i8 ; 2 uses
  %.not.i.i182.i = icmp eq i8 %.sroa.5123.40.extract.trunc.i, -1
  br i1 %.not.i.i182.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i184.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.abq = load ptr, ptr %i.dy, align 8, !alias.scope !5468, !noalias !5321, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5470)
  call void @llvm.experimental.noalias.scope.decl(metadata !5471), !noalias !5472
  %.sroa.44.0.extract.shift.i.i497.i = lshr i64 %.sroa.5123.0.copyload.i, 8
  %.sroa.44.0.extract.trunc.i.i498.i = trunc i64 %.sroa.44.0.extract.shift.i.i497.i to i8 ; 2 uses
  switch i8 %.sroa.5123.40.extract.trunc.i, label %bb.hl [
    i8 0, label %bb.hm
    i8 1, label %bb.hr
    i8 2, label %bb.hs
  ]

bb.hl:                                            ; preds = %bb.hk
  unreachable

bb.hm:                                            ; preds = %bb.hk
  switch i8 %.sroa.44.0.extract.trunc.i.i498.i, label %default.unreachable25.i.i.i512.i [
    i8 0, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit513.i
    i8 1, label %bb.hn
    i8 2, label %bb.ho
    i8 3, label %bb.hp
    i8 4, label %bb.hq
  ]

default.unreachable25.i.i.i512.i:                 ; preds = %bb.hm
  unreachable

bb.hn:                                            ; preds = %bb.hm
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit513.i

bb.ho:                                            ; preds = %bb.hm
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit513.i

bb.hp:                                            ; preds = %bb.hm
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit513.i

bb.hq:                                            ; preds = %bb.hm
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit513.i

bb.hr:                                            ; preds = %bb.hk
  %i.abr = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i498.i), !noalias !5473
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i506.i

bb.hs:                                            ; preds = %bb.hk
  %.sroa.6.0.extract.shift.i.i500.i = lshr i64 %.sroa.5123.0.copyload.i, 32
  %.sroa.6.0.extract.trunc.i.i501.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i500.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5474), !noalias !5472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !5473
  store i32 %.sroa.6.0.extract.trunc.i.i501.i, ptr %i.ax, align 4, !noalias !5475
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abq, i64 72
  %i.abt = load i32, ptr %i.abs, align 8, !alias.scope !5476, !noalias !5469, !noundef !5
  %i.abu = icmp eq i32 %i.abt, %.sroa.6.0.extract.trunc.i.i501.i
  br i1 %i.abu, label %bb.hv, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abq, i64 32
  %i.abw = load ptr, ptr %i.abv, align 8, !alias.scope !5476, !noalias !5469, !nonnull !5, !noundef !5 ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abq, i64 40
  %i.aby = load i64, ptr %i.abx, align 8, !alias.scope !5476, !noalias !5469, !noundef !5 ; 2 uses
  %.idx10334 = shl nuw nsw i64 %i.aby, 5
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abw, i64 %.idx10334
  %i.aca = icmp eq i64 %i.aby, 0
  br i1 %i.aca, label %._crit_edge10190, label %.lr.ph10189

bb.hu:                                            ; preds = %.lr.ph10189
  %i.acb = getelementptr inbounds nuw i8, ptr %i.acd, i64 32 ; 2 uses
  %i.acc = icmp eq ptr %i.acb, %i.abz
  br i1 %i.acc, label %._crit_edge10190, label %.lr.ph10189

.lr.ph10189:                                      ; preds = %bb.ht, %bb.hu
  %i.acd = phi ptr [ %i.acb, %bb.hu ], [ %i.abw, %bb.ht ] ; 3 uses
  %i.ace = load i32, ptr %i.acd, align 8, !noalias !5477, !noundef !5
  %i.acf = icmp eq i32 %i.ace, %.sroa.6.0.extract.trunc.i.i501.i
  br i1 %i.acf, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i502.i, label %bb.hu

bb.hv:                                            ; preds = %bb.hs
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abq, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i503.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i502.i: ; preds = %.lr.ph10189
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i503.i

._crit_edge10190:                                 ; preds = %bb.ht, %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !5475
  store ptr %i.ax, ptr %i.aw, align 8, !noalias !5475
  %.sroa.45.0..sroa_idx.i.i.i511.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i511.i, align 8, !noalias !5475
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5475
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i503.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i502.i, %bb.hv
  %.sroa.0.0.in.i.i.i504.i = phi ptr [ %i.acg, %bb.hv ], [ %i.ach, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i502.i ]
  %.sroa.0.0.i6.i.i505.i = load i64, ptr %.sroa.0.0.in.i.i.i504.i, align 8, !noalias !5478, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !5473
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i506.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i506.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i503.i, %bb.hr
  %.sroa.05.0.i.i507.i = phi i64 [ %.sroa.0.0.i6.i.i505.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i503.i ], [ %i.abr, %bb.hr ] ; 4 uses
  %i.aci = icmp ugt i64 %.sroa.05.0.i.i507.i, 2305843009213693951
  br i1 %i.aci, label %bb.hx, label %bb.hw, !prof !29

bb.hw:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i506.i
  %i.acj = icmp samesign ult i64 %.sroa.05.0.i.i507.i, 17
  br i1 %i.acj, label %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit513_crit_edge.i, label %bb.hy, !prof !30

._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit513_crit_edge.i: ; preds = %bb.hw
  %.neg4.i508.i = mul nuw nsw i64 %.sroa.05.0.i.i507.i, 120
  %.val2.pre.i183.pre.i = load ptr, ptr %i.abn, align 8, !noalias !5469
  %i.ack = and i64 %.neg4.i508.i, 120
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit513.i

bb.hx:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i506.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i507.i) #45, !noalias !5479
  unreachable

bb.hy:                                            ; preds = %bb.hw
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5479
  unreachable

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit513.i: ; preds = %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit513_crit_edge.i, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm
  %.val2.pre.i183.i = phi ptr [ %.val2.pre.i183.pre.i, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit513_crit_edge.i ], [ %.val.i181.i, %bb.hm ], [ %.val.i181.i, %bb.hp ], [ %.val.i181.i, %bb.ho ], [ %.val.i181.i, %bb.hn ], [ %.val.i181.i, %bb.hq ]
  %.neg5.i509.i = phi i64 [ %i.ack, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit513_crit_edge.i ], [ 120, %bb.hm ], [ 64, %bb.hp ], [ 96, %bb.ho ], [ 112, %bb.hn ], [ 0, %bb.hq ]
  %i.acl = zext nneg i64 %.neg5.i509.i to i128
  %i.acm = lshr i128 -1, %i.acl
  %.neg.i510.i = xor i128 %.sroa.4121.0.copyload.i, -1
  %i.acn = add i128 %.sroa.0120.0.copyload.i, %.neg.i510.i
  %i.aco = and i128 %i.acm, %i.acn
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i184.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i184.i: ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit513.i, %bb.hj
  %.val2.i185.i = phi ptr [ %.val2.pre.i183.i, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit513.i ], [ %.val.i181.i, %bb.hj ] ; 3 uses
  %.sroa.0.0.i.i186.i = phi i128 [ %i.aco, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit513.i ], [ 0, %bb.hj ]
  %i.acp = load ptr, ptr %i.dz, align 8, !alias.scope !5468, !noalias !5321, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5480)
  %i.acq = load ptr, ptr %i.acp, align 8, !alias.scope !5480, !noalias !5469, !nonnull !5, !noundef !5 ; 2 uses
  %i.acr = load i8, ptr %i.acq, align 1, !range !13, !noalias !5481, !noundef !5
  %i.acs = trunc nuw i8 %i.acr to i1
  br i1 %i.acs, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i184.i
  %i.act = getelementptr inbounds nuw i8, ptr %i.acq, i64 1
  %i.acu = load i8, ptr %i.act, align 1, !noalias !5481, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i185.i) ]
  %i.acv = load ptr, ptr %.val2.i185.i, align 8, !noalias !5481, !nonnull !5, !align !21, !noundef !5
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 338
  %i.acx = load i8, ptr %i.acw, align 2, !noalias !5481, !noundef !5
  %..i.i.i200.i = call noundef i8 @llvm.umin.i8(i8 %i.acu, i8 %i.acx)
  %i.acy = and i8 %..i.i.i200.i, 63
  %i.acz = zext nneg i8 %i.acy to i64
  %i.ada = shl nuw i64 1, %i.acz
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit201.i

bb.ia:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i184.i
  %i.adb = load ptr, ptr %.val2.i185.i, align 8, !noalias !5481, !nonnull !5, !align !21, !noundef !5 ; 6 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 338
  %i.add = load i8, ptr %i.adc, align 2, !noalias !5481, !noundef !5
  %i.ade = and i8 %i.add, 63                      ; 2 uses
  %i.adf = zext nneg i8 %i.ade to i64
  %i.adg = shl nuw i64 1, %i.adf
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adb, i64 320
  %i.adi = load i64, ptr %i.adh, align 16, !noalias !5481, !noundef !5
  %.sroa.5.0..sroa_idx.i.i187.i = getelementptr inbounds nuw i8, ptr %i.adb, i64 136
  %.sroa.5.0.copyload.i.i188.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i187.i, align 8, !noalias !5481 ; 2 uses
  %.not.i3.i189.i = icmp eq i8 %.sroa.5.0.copyload.i.i188.i, -1
  br i1 %.not.i3.i189.i, label %bb.il, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %.sroa.6.0..sroa_idx.i.i190.i = getelementptr inbounds nuw i8, ptr %i.adb, i64 137
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adb, i64 96
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  %i.adl = load ptr, ptr %i.adk, align 8, !alias.scope !5480, !noalias !5469, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  %.sroa.0125.0.copyload.i = load i128, ptr %i.adj, align 16, !noalias !5481
  %.sroa.4126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.adb, i64 112
  %.sroa.4126.0.copyload.i = load i128, ptr %.sroa.4126.0..sroa_idx.i, align 16, !noalias !5481
  %.sroa.5128.41.copyload.i = load i56, ptr %.sroa.6.0..sroa_idx.i.i190.i, align 1, !noalias !5481 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5482)
  call void @llvm.experimental.noalias.scope.decl(metadata !5483), !noalias !5484
  switch i8 %.sroa.5.0.copyload.i.i188.i, label %bb.ic [
    i8 0, label %switch.lookup10377
    i8 1, label %bb.id
    i8 2, label %bb.ie
  ]

bb.ic:                                            ; preds = %bb.ib
  unreachable

bb.id:                                            ; preds = %bb.ib
  %.sroa.44.0.extract.trunc.i.i480.i = trunc i56 %.sroa.5128.41.copyload.i to i8
  %i.adm = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i480.i), !noalias !5485
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i488.i

bb.ie:                                            ; preds = %bb.ib
  %.sroa.5128.41.insert.ext.i = zext i56 %.sroa.5128.41.copyload.i to i64
  %.sroa.6.0.extract.shift.i.i482.i = lshr i64 %.sroa.5128.41.insert.ext.i, 24
  %.sroa.6.0.extract.trunc.i.i483.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i482.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5486), !noalias !5484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !5485
  store i32 %.sroa.6.0.extract.trunc.i.i483.i, ptr %i.az, align 4, !noalias !5487
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adl, i64 72
  %i.ado = load i32, ptr %i.adn, align 8, !alias.scope !5488, !noalias !5481, !noundef !5
  %i.adp = icmp eq i32 %i.ado, %.sroa.6.0.extract.trunc.i.i483.i
  br i1 %i.adp, label %bb.ih, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adl, i64 32
  %i.adr = load ptr, ptr %i.adq, align 8, !alias.scope !5488, !noalias !5481, !nonnull !5, !noundef !5 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adl, i64 40
  %i.adt = load i64, ptr %i.ads, align 8, !alias.scope !5488, !noalias !5481, !noundef !5 ; 2 uses
  %.idx10335 = shl nuw nsw i64 %i.adt, 5
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adr, i64 %.idx10335
  %i.adv = icmp eq i64 %i.adt, 0
  br i1 %i.adv, label %._crit_edge10194, label %.lr.ph10193

bb.ig:                                            ; preds = %.lr.ph10193
  %i.adw = getelementptr inbounds nuw i8, ptr %i.ady, i64 32 ; 2 uses
  %i.adx = icmp eq ptr %i.adw, %i.adu
  br i1 %i.adx, label %._crit_edge10194, label %.lr.ph10193

.lr.ph10193:                                      ; preds = %bb.if, %bb.ig
  %i.ady = phi ptr [ %i.adw, %bb.ig ], [ %i.adr, %bb.if ] ; 3 uses
  %i.adz = load i32, ptr %i.ady, align 8, !noalias !5489, !noundef !5
  %i.aea = icmp eq i32 %i.adz, %.sroa.6.0.extract.trunc.i.i483.i
  br i1 %i.aea, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i484.i, label %bb.ig

bb.ih:                                            ; preds = %bb.ie
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adl, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i485.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i484.i: ; preds = %.lr.ph10193
  %i.aec = getelementptr inbounds nuw i8, ptr %i.ady, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i485.i

._crit_edge10194:                                 ; preds = %bb.if, %bb.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !5487
  store ptr %i.az, ptr %i.ay, align 8, !noalias !5487
  %.sroa.45.0..sroa_idx.i.i.i493.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i493.i, align 8, !noalias !5487
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5487
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i485.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i484.i, %bb.ih
  %.sroa.0.0.in.i.i.i486.i = phi ptr [ %i.aeb, %bb.ih ], [ %i.aec, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i484.i ]
  %.sroa.0.0.i6.i.i487.i = load i64, ptr %.sroa.0.0.in.i.i.i486.i, align 8, !noalias !5490, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !5485
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i488.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i488.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i485.i, %bb.id
  %.sroa.05.0.i.i489.i = phi i64 [ %.sroa.0.0.i6.i.i487.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i485.i ], [ %i.adm, %bb.id ] ; 4 uses
  %i.aed = icmp ugt i64 %.sroa.05.0.i.i489.i, 2305843009213693951
  br i1 %i.aed, label %bb.ij, label %bb.ii, !prof !29

bb.ii:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i488.i
  %.neg4.i490.i = mul nsw i64 %.sroa.05.0.i.i489.i, -8
  %i.aee = icmp samesign ult i64 %.sroa.05.0.i.i489.i, 17
  br i1 %i.aee, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit495.i, label %bb.ik, !prof !30

bb.ij:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i488.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i489.i) #45, !noalias !5491
  unreachable

bb.ik:                                            ; preds = %bb.ii
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5491
  unreachable

switch.lookup10377:                               ; preds = %bb.ib
  %.sroa.44.0.extract.trunc.i.i480.i.mask = and i56 %.sroa.5128.41.copyload.i, 255
  %i.aef = zext nneg i56 %.sroa.44.0.extract.trunc.i.i480.i.mask to i64
  %switch.gep10383 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.aef
  %switch.load10384 = load i8, ptr %switch.gep10383, align 1
  %switch.ext10385 = zext i8 %switch.load10384 to i64
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit495.i

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit495.i: ; preds = %switch.lookup10377, %bb.ii
  %.neg5.i491.i = phi i64 [ %.neg4.i490.i, %bb.ii ], [ %switch.ext10385, %switch.lookup10377 ]
  %i.aeg = and i64 %.neg5.i491.i, 120
  %i.aeh = zext nneg i64 %i.aeg to i128
  %i.aei = lshr i128 -1, %i.aeh
  %.neg.i492.i = xor i128 %.sroa.4126.0.copyload.i, -1
  %i.aej = add i128 %.sroa.0125.0.copyload.i, %.neg.i492.i
  %i.aek = and i128 %i.aei, %i.aej
  br label %bb.il

bb.il:                                            ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit495.i, %bb.ia
  %.sroa.01.0.i.i193.i = phi i128 [ %i.aek, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit495.i ], [ 0, %bb.ia ]
  %..i14.i.i194.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.adi, i64 range(i64 1, -9223372036854775807) %i.adg)
  %i.ael = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %..i14.i.i194.i, i1 true)
  %i.aem = trunc nuw nsw i64 %i.ael to i32        ; 3 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.acp, i64 16
  %i.aeo = load ptr, ptr %i.aen, align 8, !alias.scope !5480, !noalias !5469, !nonnull !5, !align !21, !noundef !5
  %i.aep = load i128, ptr %i.aeo, align 16, !noalias !5481, !noundef !5 ; 2 uses
  %.not10.i.i195.i = icmp eq i128 %i.aep, 0
  br i1 %.not10.i.i195.i, label %bb.in, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.acp, i64 24
  %i.aer = load ptr, ptr %i.aeq, align 8, !alias.scope !5480, !noalias !5469, !nonnull !5, !noundef !5
  %i.aes = load i8, ptr %i.aer, align 1, !range !13, !noalias !5481, !noundef !5
  %i.aet = trunc nuw i8 %i.aes to i1
  br i1 %i.aet, label %bb.io, label %bb.ip

bb.in:                                            ; preds = %bb.ip, %bb.io, %bb.il
  %.sroa.07.0.i.i197.i = phi i32 [ %spec.select.i.i199.i, %bb.io ], [ %i.aem, %bb.il ], [ %..i15.i.i196.i, %bb.ip ]
  %i.aeu = zext nneg i32 %.sroa.07.0.i.i197.i to i64
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit201.i

bb.io:                                            ; preds = %bb.im
  %i.aev = icmp eq i128 %.sroa.01.0.i.i193.i, %i.aep
  %i.aew = zext nneg i8 %i.ade to i32
  %spec.select.i.i199.i = select i1 %i.aev, i32 %i.aew, i32 %i.aem
  br label %bb.in

bb.ip:                                            ; preds = %bb.im
  %i.aex = getelementptr inbounds nuw i8, ptr %i.acp, i64 32
  %i.aey = load ptr, ptr %i.aex, align 8, !alias.scope !5480, !noalias !5469, !nonnull !5, !align !11, !noundef !5
  %i.aez = load i64, ptr %i.aey, align 8, !noalias !5481, !noundef !5
  %i.afa = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aez, i1 false)
  %i.afb = trunc nuw nsw i64 %i.afa to i32
  %..i15.i.i196.i = call noundef range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.aem, i32 range(i32 0, 129) %i.afb)
  br label %bb.in

bb.iq:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit138.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.abk, i64 noundef %i.abj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #43, !noalias !5469
  unreachable

_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit201.i: ; preds = %bb.in, %bb.hz
  %.sroa.0.0.i4.i198.i = phi i64 [ %i.ada, %bb.hz ], [ %i.aeu, %bb.in ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5492)
  %i.afc = load i64, ptr %i.dx, align 8, !alias.scope !5492, !noalias !5321, !noundef !5 ; 2 uses
  %i.afd = icmp ugt i64 %i.afc, %i.ed
  br i1 %i.afd, label %bb.ir, label %bb.jy

bb.ir:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit201.i
  %i.afe = load ptr, ptr %.val38, align 8, !alias.scope !5492, !noalias !5321, !nonnull !5, !align !11, !noundef !5
  %i.aff = getelementptr inbounds nuw [8 x i8], ptr %i.afe, i64 %i.ed ; 2 uses
  %.val.i160.i = load ptr, ptr %i.aff, align 8, !noalias !5493, !nonnull !5, !align !11, !noundef !5 ; 7 uses
  %i.afg = load ptr, ptr %.val.i160.i, align 8, !noalias !5493, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 96
  %.sroa.0111.0.copyload.i = load i128, ptr %i.afh, align 16, !noalias !5493
  %.sroa.4112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.afg, i64 112
  %.sroa.4112.0.copyload.i = load i128, ptr %.sroa.4112.0..sroa_idx.i, align 16, !noalias !5493
  %.sroa.5114.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.afg, i64 136
  %.sroa.5114.0.copyload.i = load i64, ptr %.sroa.5114.0..sroa_idx.i, align 8, !noalias !5493 ; 3 uses
  %.sroa.5114.40.extract.trunc.i = trunc i64 %.sroa.5114.0.copyload.i to i8 ; 2 uses
  %.not.i.i161.i = icmp eq i8 %.sroa.5114.40.extract.trunc.i, -1
  br i1 %.not.i.i161.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i163.i, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.afi = load ptr, ptr %i.dy, align 8, !alias.scope !5492, !noalias !5321, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5494)
  call void @llvm.experimental.noalias.scope.decl(metadata !5495), !noalias !5496
  %.sroa.44.0.extract.shift.i.i461.i = lshr i64 %.sroa.5114.0.copyload.i, 8
  %.sroa.44.0.extract.trunc.i.i462.i = trunc i64 %.sroa.44.0.extract.shift.i.i461.i to i8 ; 2 uses
  switch i8 %.sroa.5114.40.extract.trunc.i, label %bb.it [
    i8 0, label %bb.iu
    i8 1, label %bb.iz
    i8 2, label %bb.ja
  ]

bb.it:                                            ; preds = %bb.is
  unreachable

bb.iu:                                            ; preds = %bb.is
  switch i8 %.sroa.44.0.extract.trunc.i.i462.i, label %default.unreachable25.i.i.i476.i [
    i8 0, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit477.i
    i8 1, label %bb.iv
    i8 2, label %bb.iw
    i8 3, label %bb.ix
    i8 4, label %bb.iy
  ]

default.unreachable25.i.i.i476.i:                 ; preds = %bb.iu
  unreachable

bb.iv:                                            ; preds = %bb.iu
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit477.i

bb.iw:                                            ; preds = %bb.iu
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit477.i

bb.ix:                                            ; preds = %bb.iu
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit477.i

bb.iy:                                            ; preds = %bb.iu
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit477.i

bb.iz:                                            ; preds = %bb.is
  %i.afj = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i462.i), !noalias !5497
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i470.i

bb.ja:                                            ; preds = %bb.is
  %.sroa.6.0.extract.shift.i.i464.i = lshr i64 %.sroa.5114.0.copyload.i, 32
  %.sroa.6.0.extract.trunc.i.i465.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i464.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5498), !noalias !5496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !5497
  store i32 %.sroa.6.0.extract.trunc.i.i465.i, ptr %i.bb, align 4, !noalias !5499
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afi, i64 72
  %i.afl = load i32, ptr %i.afk, align 8, !alias.scope !5500, !noalias !5493, !noundef !5
  %i.afm = icmp eq i32 %i.afl, %.sroa.6.0.extract.trunc.i.i465.i
  br i1 %i.afm, label %bb.jd, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afi, i64 32
  %i.afo = load ptr, ptr %i.afn, align 8, !alias.scope !5500, !noalias !5493, !nonnull !5, !noundef !5 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afi, i64 40
  %i.afq = load i64, ptr %i.afp, align 8, !alias.scope !5500, !noalias !5493, !noundef !5 ; 2 uses
  %.idx10336 = shl nuw nsw i64 %i.afq, 5
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afo, i64 %.idx10336
  %i.afs = icmp eq i64 %i.afq, 0
  br i1 %i.afs, label %._crit_edge10198, label %.lr.ph10197

bb.jc:                                            ; preds = %.lr.ph10197
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afv, i64 32 ; 2 uses
  %i.afu = icmp eq ptr %i.aft, %i.afr
  br i1 %i.afu, label %._crit_edge10198, label %.lr.ph10197

.lr.ph10197:                                      ; preds = %bb.jb, %bb.jc
  %i.afv = phi ptr [ %i.aft, %bb.jc ], [ %i.afo, %bb.jb ] ; 3 uses
  %i.afw = load i32, ptr %i.afv, align 8, !noalias !5501, !noundef !5
  %i.afx = icmp eq i32 %i.afw, %.sroa.6.0.extract.trunc.i.i465.i
  br i1 %i.afx, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i466.i, label %bb.jc

bb.jd:                                            ; preds = %bb.ja
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afi, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i467.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i466.i: ; preds = %.lr.ph10197
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i467.i

._crit_edge10198:                                 ; preds = %bb.jb, %bb.jc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !5499
  store ptr %i.bb, ptr %i.ba, align 8, !noalias !5499
  %.sroa.45.0..sroa_idx.i.i.i475.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i475.i, align 8, !noalias !5499
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5499
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i467.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i466.i, %bb.jd
  %.sroa.0.0.in.i.i.i468.i = phi ptr [ %i.afy, %bb.jd ], [ %i.afz, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i466.i ]
  %.sroa.0.0.i6.i.i469.i = load i64, ptr %.sroa.0.0.in.i.i.i468.i, align 8, !noalias !5502, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !5497
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i470.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i470.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i467.i, %bb.iz
  %.sroa.05.0.i.i471.i = phi i64 [ %.sroa.0.0.i6.i.i469.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i467.i ], [ %i.afj, %bb.iz ] ; 4 uses
  %i.aga = icmp ugt i64 %.sroa.05.0.i.i471.i, 2305843009213693951
  br i1 %i.aga, label %bb.jf, label %bb.je, !prof !29

bb.je:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i470.i
  %i.agb = icmp samesign ult i64 %.sroa.05.0.i.i471.i, 17
  br i1 %i.agb, label %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit477_crit_edge.i, label %bb.jg, !prof !30

._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit477_crit_edge.i: ; preds = %bb.je
  %.neg4.i472.i = mul nuw nsw i64 %.sroa.05.0.i.i471.i, 120
  %.val2.pre.i162.pre.i = load ptr, ptr %i.aff, align 8, !noalias !5493
  %i.agc = and i64 %.neg4.i472.i, 120
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit477.i

bb.jf:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i470.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i471.i) #45, !noalias !5503
  unreachable

bb.jg:                                            ; preds = %bb.je
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5503
  unreachable

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit477.i: ; preds = %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit477_crit_edge.i, %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.iu
  %.val2.pre.i162.i = phi ptr [ %.val2.pre.i162.pre.i, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit477_crit_edge.i ], [ %.val.i160.i, %bb.iu ], [ %.val.i160.i, %bb.ix ], [ %.val.i160.i, %bb.iw ], [ %.val.i160.i, %bb.iv ], [ %.val.i160.i, %bb.iy ]
  %.neg5.i473.i = phi i64 [ %i.agc, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit477_crit_edge.i ], [ 120, %bb.iu ], [ 64, %bb.ix ], [ 96, %bb.iw ], [ 112, %bb.iv ], [ 0, %bb.iy ]
  %i.agd = zext nneg i64 %.neg5.i473.i to i128
  %i.age = lshr i128 -1, %i.agd
  %.neg.i474.i = xor i128 %.sroa.4112.0.copyload.i, -1
  %i.agf = add i128 %.sroa.0111.0.copyload.i, %.neg.i474.i
  %i.agg = and i128 %i.age, %i.agf
  %i.agh = icmp ult i128 %.sroa.0.0.i.i186.i, %i.agg
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i163.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i163.i: ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit477.i, %bb.ir
  %.val2.i164.i = phi ptr [ %.val2.pre.i162.i, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit477.i ], [ %.val.i160.i, %bb.ir ] ; 3 uses
  %.sroa.0.0.i.i165.i = phi i1 [ %i.agh, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit477.i ], [ false, %bb.ir ]
  %i.agi = load ptr, ptr %i.dz, align 8, !alias.scope !5492, !noalias !5321, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5504)
  %i.agj = load ptr, ptr %i.agi, align 8, !alias.scope !5504, !noalias !5493, !nonnull !5, !noundef !5 ; 2 uses
  %i.agk = load i8, ptr %i.agj, align 1, !range !13, !noalias !5505, !noundef !5
  %i.agl = trunc nuw i8 %i.agk to i1
  br i1 %i.agl, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i163.i
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agj, i64 1
  %i.agn = load i8, ptr %i.agm, align 1, !noalias !5505, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i164.i) ]
  %i.ago = load ptr, ptr %.val2.i164.i, align 8, !noalias !5505, !nonnull !5, !align !21, !noundef !5
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 338
  %i.agq = load i8, ptr %i.agp, align 2, !noalias !5505, !noundef !5
  %..i.i.i179.i = call noundef i8 @llvm.umin.i8(i8 %i.agn, i8 %i.agq)
  %i.agr = and i8 %..i.i.i179.i, 63
  %i.ags = zext nneg i8 %i.agr to i64
  %i.agt = shl nuw i64 1, %i.ags
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit180.i

bb.ji:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i163.i
  %i.agu = load ptr, ptr %.val2.i164.i, align 8, !noalias !5505, !nonnull !5, !align !21, !noundef !5 ; 6 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 338
  %i.agw = load i8, ptr %i.agv, align 2, !noalias !5505, !noundef !5
  %i.agx = and i8 %i.agw, 63                      ; 2 uses
  %i.agy = zext nneg i8 %i.agx to i64
  %i.agz = shl nuw i64 1, %i.agy
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agu, i64 320
  %i.ahb = load i64, ptr %i.aha, align 16, !noalias !5505, !noundef !5
  %.sroa.5.0..sroa_idx.i.i166.i = getelementptr inbounds nuw i8, ptr %i.agu, i64 136
  %.sroa.5.0.copyload.i.i167.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i166.i, align 8, !noalias !5505 ; 2 uses
  %.not.i3.i168.i = icmp eq i8 %.sroa.5.0.copyload.i.i167.i, -1
  br i1 %.not.i3.i168.i, label %bb.jt, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %.sroa.6.0..sroa_idx.i.i169.i = getelementptr inbounds nuw i8, ptr %i.agu, i64 137
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agu, i64 96
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agi, i64 8
  %i.ahe = load ptr, ptr %i.ahd, align 8, !alias.scope !5504, !noalias !5493, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  %.sroa.0116.0.copyload.i = load i128, ptr %i.ahc, align 16, !noalias !5505
  %.sroa.4117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agu, i64 112
  %.sroa.4117.0.copyload.i = load i128, ptr %.sroa.4117.0..sroa_idx.i, align 16, !noalias !5505
  %.sroa.5119.41.copyload.i = load i56, ptr %.sroa.6.0..sroa_idx.i.i169.i, align 1, !noalias !5505 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5506)
  call void @llvm.experimental.noalias.scope.decl(metadata !5507), !noalias !5508
  switch i8 %.sroa.5.0.copyload.i.i167.i, label %bb.jk [
    i8 0, label %switch.lookup10380
    i8 1, label %bb.jl
    i8 2, label %bb.jm
  ]

bb.jk:                                            ; preds = %bb.jj
  unreachable

bb.jl:                                            ; preds = %bb.jj
  %.sroa.44.0.extract.trunc.i.i444.i = trunc i56 %.sroa.5119.41.copyload.i to i8
  %i.ahf = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i444.i), !noalias !5509
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i452.i

bb.jm:                                            ; preds = %bb.jj
  %.sroa.5119.41.insert.ext.i = zext i56 %.sroa.5119.41.copyload.i to i64
  %.sroa.6.0.extract.shift.i.i446.i = lshr i64 %.sroa.5119.41.insert.ext.i, 24
  %.sroa.6.0.extract.trunc.i.i447.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i446.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5510), !noalias !5508
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !5509
  store i32 %.sroa.6.0.extract.trunc.i.i447.i, ptr %i.bd, align 4, !noalias !5511
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahe, i64 72
  %i.ahh = load i32, ptr %i.ahg, align 8, !alias.scope !5512, !noalias !5505, !noundef !5
  %i.ahi = icmp eq i32 %i.ahh, %.sroa.6.0.extract.trunc.i.i447.i
  br i1 %i.ahi, label %bb.jp, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahe, i64 32
  %i.ahk = load ptr, ptr %i.ahj, align 8, !alias.scope !5512, !noalias !5505, !nonnull !5, !noundef !5 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahe, i64 40
  %i.ahm = load i64, ptr %i.ahl, align 8, !alias.scope !5512, !noalias !5505, !noundef !5 ; 2 uses
  %.idx10337 = shl nuw nsw i64 %i.ahm, 5
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %.idx10337
  %i.aho = icmp eq i64 %i.ahm, 0
  br i1 %i.aho, label %._crit_edge10202, label %.lr.ph10201

bb.jo:                                            ; preds = %.lr.ph10201
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahr, i64 32 ; 2 uses
  %i.ahq = icmp eq ptr %i.ahp, %i.ahn
  br i1 %i.ahq, label %._crit_edge10202, label %.lr.ph10201

.lr.ph10201:                                      ; preds = %bb.jn, %bb.jo
  %i.ahr = phi ptr [ %i.ahp, %bb.jo ], [ %i.ahk, %bb.jn ] ; 3 uses
  %i.ahs = load i32, ptr %i.ahr, align 8, !noalias !5513, !noundef !5
  %i.aht = icmp eq i32 %i.ahs, %.sroa.6.0.extract.trunc.i.i447.i
  br i1 %i.aht, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i448.i, label %bb.jo

bb.jp:                                            ; preds = %bb.jm
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahe, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i449.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i448.i: ; preds = %.lr.ph10201
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i449.i

._crit_edge10202:                                 ; preds = %bb.jn, %bb.jo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !5511
  store ptr %i.bd, ptr %i.bc, align 8, !noalias !5511
  %.sroa.45.0..sroa_idx.i.i.i457.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i457.i, align 8, !noalias !5511
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5511
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i449.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i448.i, %bb.jp
  %.sroa.0.0.in.i.i.i450.i = phi ptr [ %i.ahu, %bb.jp ], [ %i.ahv, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i448.i ]
  %.sroa.0.0.i6.i.i451.i = load i64, ptr %.sroa.0.0.in.i.i.i450.i, align 8, !noalias !5514, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !5509
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i452.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i452.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i449.i, %bb.jl
  %.sroa.05.0.i.i453.i = phi i64 [ %.sroa.0.0.i6.i.i451.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i449.i ], [ %i.ahf, %bb.jl ] ; 4 uses
  %i.ahw = icmp ugt i64 %.sroa.05.0.i.i453.i, 2305843009213693951
  br i1 %i.ahw, label %bb.jr, label %bb.jq, !prof !29

bb.jq:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i452.i
  %.neg4.i454.i = mul nsw i64 %.sroa.05.0.i.i453.i, -8
  %i.ahx = icmp samesign ult i64 %.sroa.05.0.i.i453.i, 17
  br i1 %i.ahx, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit459.i, label %bb.js, !prof !30

bb.jr:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i452.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i453.i) #45, !noalias !5515
  unreachable

bb.js:                                            ; preds = %bb.jq
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5515
  unreachable

switch.lookup10380:                               ; preds = %bb.jj
  %.sroa.44.0.extract.trunc.i.i444.i.mask = and i56 %.sroa.5119.41.copyload.i, 255
  %i.ahy = zext nneg i56 %.sroa.44.0.extract.trunc.i.i444.i.mask to i64
  %switch.gep10387 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.ahy
  %switch.load10388 = load i8, ptr %switch.gep10387, align 1
  %switch.ext10389 = zext i8 %switch.load10388 to i64
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit459.i

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit459.i: ; preds = %switch.lookup10380, %bb.jq
  %.neg5.i455.i = phi i64 [ %.neg4.i454.i, %bb.jq ], [ %switch.ext10389, %switch.lookup10380 ]
  %i.ahz = and i64 %.neg5.i455.i, 120
  %i.aia = zext nneg i64 %i.ahz to i128
  %i.aib = lshr i128 -1, %i.aia
  %.neg.i456.i = xor i128 %.sroa.4117.0.copyload.i, -1
  %i.aic = add i128 %.sroa.0116.0.copyload.i, %.neg.i456.i
  %i.aid = and i128 %i.aib, %i.aic
  br label %bb.jt

bb.jt:                                            ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit459.i, %bb.ji
  %.sroa.01.0.i.i172.i = phi i128 [ %i.aid, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit459.i ], [ 0, %bb.ji ]
  %..i14.i.i173.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.ahb, i64 range(i64 1, -9223372036854775807) %i.agz)
  %i.aie = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %..i14.i.i173.i, i1 true)
  %i.aif = trunc nuw nsw i64 %i.aie to i32        ; 3 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.agi, i64 16
  %i.aih = load ptr, ptr %i.aig, align 8, !alias.scope !5504, !noalias !5493, !nonnull !5, !align !21, !noundef !5
  %i.aii = load i128, ptr %i.aih, align 16, !noalias !5505, !noundef !5 ; 2 uses
  %.not10.i.i174.i = icmp eq i128 %i.aii, 0
  br i1 %.not10.i.i174.i, label %bb.jv, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.aij = getelementptr inbounds nuw i8, ptr %i.agi, i64 24
  %i.aik = load ptr, ptr %i.aij, align 8, !alias.scope !5504, !noalias !5493, !nonnull !5, !noundef !5
  %i.ail = load i8, ptr %i.aik, align 1, !range !13, !noalias !5505, !noundef !5
  %i.aim = trunc nuw i8 %i.ail to i1
  br i1 %i.aim, label %bb.jw, label %bb.jx

bb.jv:                                            ; preds = %bb.jx, %bb.jw, %bb.jt
  %.sroa.07.0.i.i176.i = phi i32 [ %spec.select.i.i178.i, %bb.jw ], [ %i.aif, %bb.jt ], [ %..i15.i.i175.i, %bb.jx ]
  %i.ain = zext nneg i32 %.sroa.07.0.i.i176.i to i64
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit180.i

bb.jw:                                            ; preds = %bb.ju
  %i.aio = icmp eq i128 %.sroa.01.0.i.i172.i, %i.aii
  %i.aip = zext nneg i8 %i.agx to i32
  %spec.select.i.i178.i = select i1 %i.aio, i32 %i.aip, i32 %i.aif
  br label %bb.jv

bb.jx:                                            ; preds = %bb.ju
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.agi, i64 32
  %i.air = load ptr, ptr %i.aiq, align 8, !alias.scope !5504, !noalias !5493, !nonnull !5, !align !11, !noundef !5
  %i.ais = load i64, ptr %i.air, align 8, !noalias !5505, !noundef !5
  %i.ait = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ais, i1 false)
  %i.aiu = trunc nuw nsw i64 %i.ait to i32
  %..i15.i.i175.i = call noundef range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.aif, i32 range(i32 0, 129) %i.aiu)
  br label %bb.jv

bb.jy:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit201.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ed, i64 noundef %i.afc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #43, !noalias !5493
  unreachable

_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit180.i: ; preds = %bb.jv, %bb.jh
  %.sroa.0.0.i4.i177.i = phi i64 [ %i.agt, %bb.jh ], [ %i.ain, %bb.jv ] ; 2 uses
  %i.aiv = icmp eq i64 %.sroa.0.0.i4.i198.i, %.sroa.0.0.i4.i177.i
  %i.aiw = icmp ult i64 %.sroa.0.0.i4.i198.i, %.sroa.0.0.i4.i177.i
  %.sroa.0.0.i.i44.i = select i1 %i.aiv, i1 %.sroa.0.0.i.i165.i, i1 %i.aiw ; 2 uses
  %i.aix = getelementptr inbounds i8, ptr %.sroa.43.11279.i, i64 -16 ; 3 uses
  %.sroa.01.0.i45.i = select i1 %.sroa.0.0.i.i44.i, ptr %2, ptr %i.aix
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i45.i, i64 %i.abh
  store i32 %.val17.i, ptr %i.aiy, align 4, !alias.scope !5319, !noalias !5516
  %i.aiz = zext i1 %.sroa.0.0.i.i44.i to i64
  %i.aja = add i64 %i.abh, %i.aiz                 ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %.sroa.9.11281.i, i64 16 ; 3 uses
  %i.ajc = icmp ult ptr %i.ajb, %i.eb
  br i1 %i.ajc, label %bb.m, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit180.i, %bb.l
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.l ], [ %i.aix, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit180.i ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.l ], [ %i.aja, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit180.i ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.l ], [ %i.ajb, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit180.i ] ; 3 uses
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph2655, i64 %.sroa.0.0.i40 ; 2 uses
  %i.aje = icmp ult ptr %.sroa.9.1.lcssa.i, %i.ajd
  br i1 %i.aje, label %.lr.ph1288.i, label %._crit_edge1289.i

.lr.ph1288.i:                                     ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val38) ]
  %.val15.i = load i32, ptr %i.dr, align 4, !alias.scope !5318
  %i.ajf = zext i32 %.val15.i to i64              ; 3 uses
  br label %bb.jz

._crit_edge1289.i:                                ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit222.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.aqv, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit222.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.aqy, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit222.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.aqz, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit222.i ] ; 2 uses
  %i.ajg = icmp eq i64 %.sroa.0.0.i40, %.sroa.16.0264810220
  br i1 %i.ajg, label %bb.mr, label %bb.mq

bb.jz:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit222.i, %.lr.ph1288.i
  %.sroa.9.21286.i = phi ptr [ %.sroa.9.1.lcssa.i, %.lr.ph1288.i ], [ %i.aqz, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit222.i ] ; 2 uses
  %.sroa.27.21285.i = phi i64 [ %.sroa.27.1.lcssa.i, %.lr.ph1288.i ], [ %i.aqy, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit222.i ] ; 2 uses
  %.sroa.43.21284.i = phi ptr [ %.sroa.43.1.lcssa.i, %.lr.ph1288.i ], [ %i.aqv, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit222.i ]
  %.val14.i = load i32, ptr %.sroa.9.21286.i, align 4, !alias.scope !5318, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5517)
  %i.ajh = load i64, ptr %i.dx, align 8, !alias.scope !5517, !noalias !5321, !noundef !5 ; 2 uses
  %i.aji = zext i32 %.val14.i to i64              ; 3 uses
  %i.ajj = icmp ugt i64 %i.ajh, %i.aji
  br i1 %i.ajj, label %bb.ka, label %bb.lh

bb.ka:                                            ; preds = %bb.jz
  %i.ajk = load ptr, ptr %.val38, align 8, !alias.scope !5517, !noalias !5321, !nonnull !5, !align !11, !noundef !5
  %i.ajl = getelementptr inbounds nuw [8 x i8], ptr %i.ajk, i64 %i.aji ; 2 uses
  %.val.i223.i = load ptr, ptr %i.ajl, align 8, !noalias !5518, !nonnull !5, !align !11, !noundef !5 ; 7 uses
  %i.ajm = load ptr, ptr %.val.i223.i, align 8, !noalias !5518, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 96
  %.sroa.0138.0.copyload.i = load i128, ptr %i.ajn, align 16, !noalias !5518
  %.sroa.4139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ajm, i64 112
  %.sroa.4139.0.copyload.i = load i128, ptr %.sroa.4139.0..sroa_idx.i, align 16, !noalias !5518
  %.sroa.5141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ajm, i64 136
  %.sroa.5141.0.copyload.i = load i64, ptr %.sroa.5141.0..sroa_idx.i, align 8, !noalias !5518 ; 3 uses
  %.sroa.5141.40.extract.trunc.i = trunc i64 %.sroa.5141.0.copyload.i to i8 ; 2 uses
  %.not.i.i224.i = icmp eq i8 %.sroa.5141.40.extract.trunc.i, -1
  br i1 %.not.i.i224.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i226.i, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.ajo = load ptr, ptr %i.dy, align 8, !alias.scope !5517, !noalias !5321, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5519)
  call void @llvm.experimental.noalias.scope.decl(metadata !5520), !noalias !5521
  %.sroa.44.0.extract.shift.i.i569.i = lshr i64 %.sroa.5141.0.copyload.i, 8
  %.sroa.44.0.extract.trunc.i.i570.i = trunc i64 %.sroa.44.0.extract.shift.i.i569.i to i8 ; 2 uses
  switch i8 %.sroa.5141.40.extract.trunc.i, label %bb.kc [
    i8 0, label %bb.kd
    i8 1, label %bb.ki
    i8 2, label %bb.kj
  ]

bb.kc:                                            ; preds = %bb.kb
  unreachable

bb.kd:                                            ; preds = %bb.kb
  switch i8 %.sroa.44.0.extract.trunc.i.i570.i, label %default.unreachable25.i.i.i584.i [
    i8 0, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit585.i
    i8 1, label %bb.ke
    i8 2, label %bb.kf
    i8 3, label %bb.kg
    i8 4, label %bb.kh
  ]

default.unreachable25.i.i.i584.i:                 ; preds = %bb.kd
  unreachable

bb.ke:                                            ; preds = %bb.kd
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit585.i

bb.kf:                                            ; preds = %bb.kd
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit585.i

bb.kg:                                            ; preds = %bb.kd
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit585.i

bb.kh:                                            ; preds = %bb.kd
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit585.i

bb.ki:                                            ; preds = %bb.kb
  %i.ajp = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i570.i), !noalias !5522
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i578.i

bb.kj:                                            ; preds = %bb.kb
  %.sroa.6.0.extract.shift.i.i572.i = lshr i64 %.sroa.5141.0.copyload.i, 32
  %.sroa.6.0.extract.trunc.i.i573.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i572.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5523), !noalias !5521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !5522
  store i32 %.sroa.6.0.extract.trunc.i.i573.i, ptr %i.ap, align 4, !noalias !5524
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajo, i64 72
  %i.ajr = load i32, ptr %i.ajq, align 8, !alias.scope !5525, !noalias !5518, !noundef !5
  %i.ajs = icmp eq i32 %i.ajr, %.sroa.6.0.extract.trunc.i.i573.i
  br i1 %i.ajs, label %bb.km, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajo, i64 32
  %i.aju = load ptr, ptr %i.ajt, align 8, !alias.scope !5525, !noalias !5518, !nonnull !5, !noundef !5 ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajo, i64 40
  %i.ajw = load i64, ptr %i.ajv, align 8, !alias.scope !5525, !noalias !5518, !noundef !5 ; 2 uses
  %.idx10338 = shl nuw nsw i64 %i.ajw, 5
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.aju, i64 %.idx10338
  %i.ajy = icmp eq i64 %i.ajw, 0
  br i1 %i.ajy, label %._crit_edge10206, label %.lr.ph10205

bb.kl:                                            ; preds = %.lr.ph10205
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.akb, i64 32 ; 2 uses
  %i.aka = icmp eq ptr %i.ajz, %i.ajx
  br i1 %i.aka, label %._crit_edge10206, label %.lr.ph10205

.lr.ph10205:                                      ; preds = %bb.kk, %bb.kl
  %i.akb = phi ptr [ %i.ajz, %bb.kl ], [ %i.aju, %bb.kk ] ; 3 uses
  %i.akc = load i32, ptr %i.akb, align 8, !noalias !5526, !noundef !5
  %i.akd = icmp eq i32 %i.akc, %.sroa.6.0.extract.trunc.i.i573.i
  br i1 %i.akd, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i574.i, label %bb.kl

bb.km:                                            ; preds = %bb.kj
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajo, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i575.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i574.i: ; preds = %.lr.ph10205
  %i.akf = getelementptr inbounds nuw i8, ptr %i.akb, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i575.i

._crit_edge10206:                                 ; preds = %bb.kk, %bb.kl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !5524
  store ptr %i.ap, ptr %i.ao, align 8, !noalias !5524
  %.sroa.45.0..sroa_idx.i.i.i583.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i583.i, align 8, !noalias !5524
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.ao, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5524
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i575.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i574.i, %bb.km
  %.sroa.0.0.in.i.i.i576.i = phi ptr [ %i.ake, %bb.km ], [ %i.akf, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i574.i ]
  %.sroa.0.0.i6.i.i577.i = load i64, ptr %.sroa.0.0.in.i.i.i576.i, align 8, !noalias !5527, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !5522
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i578.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i578.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i575.i, %bb.ki
  %.sroa.05.0.i.i579.i = phi i64 [ %.sroa.0.0.i6.i.i577.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i575.i ], [ %i.ajp, %bb.ki ] ; 4 uses
  %i.akg = icmp ugt i64 %.sroa.05.0.i.i579.i, 2305843009213693951
  br i1 %i.akg, label %bb.ko, label %bb.kn, !prof !29

bb.kn:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i578.i
  %i.akh = icmp samesign ult i64 %.sroa.05.0.i.i579.i, 17
  br i1 %i.akh, label %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit585_crit_edge.i, label %bb.kp, !prof !30

._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit585_crit_edge.i: ; preds = %bb.kn
  %.neg4.i580.i = mul nuw nsw i64 %.sroa.05.0.i.i579.i, 120
  %.val2.pre.i225.pre.i = load ptr, ptr %i.ajl, align 8, !noalias !5518
  %i.aki = and i64 %.neg4.i580.i, 120
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit585.i

bb.ko:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i578.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i579.i) #45, !noalias !5528
  unreachable

bb.kp:                                            ; preds = %bb.kn
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5528
  unreachable

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit585.i: ; preds = %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit585_crit_edge.i, %bb.kh, %bb.kg, %bb.kf, %bb.ke, %bb.kd
  %.val2.pre.i225.i = phi ptr [ %.val2.pre.i225.pre.i, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit585_crit_edge.i ], [ %.val.i223.i, %bb.kd ], [ %.val.i223.i, %bb.kg ], [ %.val.i223.i, %bb.kf ], [ %.val.i223.i, %bb.ke ], [ %.val.i223.i, %bb.kh ]
  %.neg5.i581.i = phi i64 [ %i.aki, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit585_crit_edge.i ], [ 120, %bb.kd ], [ 64, %bb.kg ], [ 96, %bb.kf ], [ 112, %bb.ke ], [ 0, %bb.kh ]
  %i.akj = zext nneg i64 %.neg5.i581.i to i128
  %i.akk = lshr i128 -1, %i.akj
  %.neg.i582.i = xor i128 %.sroa.4139.0.copyload.i, -1
  %i.akl = add i128 %.sroa.0138.0.copyload.i, %.neg.i582.i
  %i.akm = and i128 %i.akk, %i.akl
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i226.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i226.i: ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit585.i, %bb.ka
  %.val2.i227.i = phi ptr [ %.val2.pre.i225.i, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit585.i ], [ %.val.i223.i, %bb.ka ] ; 3 uses
  %.sroa.0.0.i.i228.i = phi i128 [ %i.akm, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit585.i ], [ 0, %bb.ka ]
  %i.akn = load ptr, ptr %i.dz, align 8, !alias.scope !5517, !noalias !5321, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5529)
  %i.ako = load ptr, ptr %i.akn, align 8, !alias.scope !5529, !noalias !5518, !nonnull !5, !noundef !5 ; 2 uses
  %i.akp = load i8, ptr %i.ako, align 1, !range !13, !noalias !5530, !noundef !5
  %i.akq = trunc nuw i8 %i.akp to i1
  br i1 %i.akq, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i226.i
  %i.akr = getelementptr inbounds nuw i8, ptr %i.ako, i64 1
  %i.aks = load i8, ptr %i.akr, align 1, !noalias !5530, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i227.i) ]
  %i.akt = load ptr, ptr %.val2.i227.i, align 8, !noalias !5530, !nonnull !5, !align !21, !noundef !5
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 338
  %i.akv = load i8, ptr %i.aku, align 2, !noalias !5530, !noundef !5
  %..i.i.i242.i = call noundef i8 @llvm.umin.i8(i8 %i.aks, i8 %i.akv)
  %i.akw = and i8 %..i.i.i242.i, 63
  %i.akx = zext nneg i8 %i.akw to i64
  %i.aky = shl nuw i64 1, %i.akx
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit243.i

bb.kr:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i226.i
  %i.akz = load ptr, ptr %.val2.i227.i, align 8, !noalias !5530, !nonnull !5, !align !21, !noundef !5 ; 6 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 338
  %i.alb = load i8, ptr %i.ala, align 2, !noalias !5530, !noundef !5
  %i.alc = and i8 %i.alb, 63                      ; 2 uses
  %i.ald = zext nneg i8 %i.alc to i64
  %i.ale = shl nuw i64 1, %i.ald
  %i.alf = getelementptr inbounds nuw i8, ptr %i.akz, i64 320
  %i.alg = load i64, ptr %i.alf, align 16, !noalias !5530, !noundef !5
  %.sroa.5.0..sroa_idx.i.i229.i = getelementptr inbounds nuw i8, ptr %i.akz, i64 136
  %.sroa.5.0.copyload.i.i230.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i229.i, align 8, !noalias !5530 ; 2 uses
  %.not.i3.i231.i = icmp eq i8 %.sroa.5.0.copyload.i.i230.i, -1
  br i1 %.not.i3.i231.i, label %bb.lc, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %.sroa.6.0..sroa_idx.i.i232.i = getelementptr inbounds nuw i8, ptr %i.akz, i64 137
  %i.alh = getelementptr inbounds nuw i8, ptr %i.akz, i64 96
  %i.ali = getelementptr inbounds nuw i8, ptr %i.akn, i64 8
  %i.alj = load ptr, ptr %i.ali, align 8, !alias.scope !5529, !noalias !5518, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  %.sroa.0143.0.copyload.i = load i128, ptr %i.alh, align 16, !noalias !5530
  %.sroa.4144.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akz, i64 112
  %.sroa.4144.0.copyload.i = load i128, ptr %.sroa.4144.0..sroa_idx.i, align 16, !noalias !5530
  %.sroa.5146.41.copyload.i = load i56, ptr %.sroa.6.0..sroa_idx.i.i232.i, align 1, !noalias !5530 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5531)
  call void @llvm.experimental.noalias.scope.decl(metadata !5532), !noalias !5533
  switch i8 %.sroa.5.0.copyload.i.i230.i, label %bb.kt [
    i8 0, label %switch.lookup10383
    i8 1, label %bb.ku
    i8 2, label %bb.kv
  ]

bb.kt:                                            ; preds = %bb.ks
  unreachable

bb.ku:                                            ; preds = %bb.ks
  %.sroa.44.0.extract.trunc.i.i552.i = trunc i56 %.sroa.5146.41.copyload.i to i8
  %i.alk = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i552.i), !noalias !5534
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i560.i

bb.kv:                                            ; preds = %bb.ks
  %.sroa.5146.41.insert.ext.i = zext i56 %.sroa.5146.41.copyload.i to i64
  %.sroa.6.0.extract.shift.i.i554.i = lshr i64 %.sroa.5146.41.insert.ext.i, 24
  %.sroa.6.0.extract.trunc.i.i555.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i554.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5535), !noalias !5533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !5534
  store i32 %.sroa.6.0.extract.trunc.i.i555.i, ptr %i.ar, align 4, !noalias !5536
  %i.all = getelementptr inbounds nuw i8, ptr %i.alj, i64 72
  %i.alm = load i32, ptr %i.all, align 8, !alias.scope !5537, !noalias !5530, !noundef !5
  %i.aln = icmp eq i32 %i.alm, %.sroa.6.0.extract.trunc.i.i555.i
  br i1 %i.aln, label %bb.ky, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.alo = getelementptr inbounds nuw i8, ptr %i.alj, i64 32
  %i.alp = load ptr, ptr %i.alo, align 8, !alias.scope !5537, !noalias !5530, !nonnull !5, !noundef !5 ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alj, i64 40
  %i.alr = load i64, ptr %i.alq, align 8, !alias.scope !5537, !noalias !5530, !noundef !5 ; 2 uses
  %.idx10339 = shl nuw nsw i64 %i.alr, 5
  %i.als = getelementptr inbounds nuw i8, ptr %i.alp, i64 %.idx10339
  %i.alt = icmp eq i64 %i.alr, 0
  br i1 %i.alt, label %._crit_edge10210, label %.lr.ph10209

bb.kx:                                            ; preds = %.lr.ph10209
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alw, i64 32 ; 2 uses
  %i.alv = icmp eq ptr %i.alu, %i.als
  br i1 %i.alv, label %._crit_edge10210, label %.lr.ph10209

.lr.ph10209:                                      ; preds = %bb.kw, %bb.kx
  %i.alw = phi ptr [ %i.alu, %bb.kx ], [ %i.alp, %bb.kw ] ; 3 uses
  %i.alx = load i32, ptr %i.alw, align 8, !noalias !5538, !noundef !5
  %i.aly = icmp eq i32 %i.alx, %.sroa.6.0.extract.trunc.i.i555.i
  br i1 %i.aly, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i556.i, label %bb.kx

bb.ky:                                            ; preds = %bb.kv
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alj, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i557.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i556.i: ; preds = %.lr.ph10209
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alw, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i557.i

._crit_edge10210:                                 ; preds = %bb.kw, %bb.kx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !5536
  store ptr %i.ar, ptr %i.aq, align 8, !noalias !5536
  %.sroa.45.0..sroa_idx.i.i.i565.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i565.i, align 8, !noalias !5536
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5536
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i557.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i556.i, %bb.ky
  %.sroa.0.0.in.i.i.i558.i = phi ptr [ %i.alz, %bb.ky ], [ %i.ama, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i556.i ]
  %.sroa.0.0.i6.i.i559.i = load i64, ptr %.sroa.0.0.in.i.i.i558.i, align 8, !noalias !5539, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !5534
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i560.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i560.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i557.i, %bb.ku
  %.sroa.05.0.i.i561.i = phi i64 [ %.sroa.0.0.i6.i.i559.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i557.i ], [ %i.alk, %bb.ku ] ; 4 uses
  %i.amb = icmp ugt i64 %.sroa.05.0.i.i561.i, 2305843009213693951
  br i1 %i.amb, label %bb.la, label %bb.kz, !prof !29

bb.kz:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i560.i
  %.neg4.i562.i = mul nsw i64 %.sroa.05.0.i.i561.i, -8
  %i.amc = icmp samesign ult i64 %.sroa.05.0.i.i561.i, 17
  br i1 %i.amc, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit567.i, label %bb.lb, !prof !30

bb.la:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i560.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i561.i) #45, !noalias !5540
  unreachable

bb.lb:                                            ; preds = %bb.kz
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5540
  unreachable

switch.lookup10383:                               ; preds = %bb.ks
  %.sroa.44.0.extract.trunc.i.i552.i.mask = and i56 %.sroa.5146.41.copyload.i, 255
  %i.amd = zext nneg i56 %.sroa.44.0.extract.trunc.i.i552.i.mask to i64
  %switch.gep10391 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.amd
  %switch.load10392 = load i8, ptr %switch.gep10391, align 1
  %switch.ext10393 = zext i8 %switch.load10392 to i64
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit567.i

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit567.i: ; preds = %switch.lookup10383, %bb.kz
  %.neg5.i563.i = phi i64 [ %.neg4.i562.i, %bb.kz ], [ %switch.ext10393, %switch.lookup10383 ]
  %i.ame = and i64 %.neg5.i563.i, 120
  %i.amf = zext nneg i64 %i.ame to i128
  %i.amg = lshr i128 -1, %i.amf
  %.neg.i564.i = xor i128 %.sroa.4144.0.copyload.i, -1
  %i.amh = add i128 %.sroa.0143.0.copyload.i, %.neg.i564.i
  %i.ami = and i128 %i.amg, %i.amh
  br label %bb.lc

bb.lc:                                            ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit567.i, %bb.kr
  %.sroa.01.0.i.i235.i = phi i128 [ %i.ami, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit567.i ], [ 0, %bb.kr ]
  %..i14.i.i236.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.alg, i64 range(i64 1, -9223372036854775807) %i.ale)
  %i.amj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %..i14.i.i236.i, i1 true)
  %i.amk = trunc nuw nsw i64 %i.amj to i32        ; 3 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.akn, i64 16
  %i.amm = load ptr, ptr %i.aml, align 8, !alias.scope !5529, !noalias !5518, !nonnull !5, !align !21, !noundef !5
  %i.amn = load i128, ptr %i.amm, align 16, !noalias !5530, !noundef !5 ; 2 uses
  %.not10.i.i237.i = icmp eq i128 %i.amn, 0
  br i1 %.not10.i.i237.i, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.amo = getelementptr inbounds nuw i8, ptr %i.akn, i64 24
  %i.amp = load ptr, ptr %i.amo, align 8, !alias.scope !5529, !noalias !5518, !nonnull !5, !noundef !5
  %i.amq = load i8, ptr %i.amp, align 1, !range !13, !noalias !5530, !noundef !5
  %i.amr = trunc nuw i8 %i.amq to i1
  br i1 %i.amr, label %bb.lf, label %bb.lg

bb.le:                                            ; preds = %bb.lg, %bb.lf, %bb.lc
  %.sroa.07.0.i.i239.i = phi i32 [ %spec.select.i.i241.i, %bb.lf ], [ %i.amk, %bb.lc ], [ %..i15.i.i238.i, %bb.lg ]
  %i.ams = zext nneg i32 %.sroa.07.0.i.i239.i to i64
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit243.i

bb.lf:                                            ; preds = %bb.ld
  %i.amt = icmp eq i128 %.sroa.01.0.i.i235.i, %i.amn
  %i.amu = zext nneg i8 %i.alc to i32
  %spec.select.i.i241.i = select i1 %i.amt, i32 %i.amu, i32 %i.amk
  br label %bb.le

bb.lg:                                            ; preds = %bb.ld
  %i.amv = getelementptr inbounds nuw i8, ptr %i.akn, i64 32
  %i.amw = load ptr, ptr %i.amv, align 8, !alias.scope !5529, !noalias !5518, !nonnull !5, !align !11, !noundef !5
  %i.amx = load i64, ptr %i.amw, align 8, !noalias !5530, !noundef !5
  %i.amy = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.amx, i1 false)
  %i.amz = trunc nuw nsw i64 %i.amy to i32
  %..i15.i.i238.i = call noundef range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.amk, i32 range(i32 0, 129) %i.amz)
  br label %bb.le

bb.lh:                                            ; preds = %bb.jz
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.aji, i64 noundef %i.ajh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #43, !noalias !5518
  unreachable

_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit243.i: ; preds = %bb.le, %bb.kq
  %.sroa.0.0.i4.i240.i = phi i64 [ %i.aky, %bb.kq ], [ %i.ams, %bb.le ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5541)
  %i.ana = load i64, ptr %i.dx, align 8, !alias.scope !5541, !noalias !5321, !noundef !5 ; 2 uses
  %i.anb = icmp ugt i64 %i.ana, %i.ajf
  br i1 %i.anb, label %bb.li, label %bb.mp

bb.li:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit243.i
  %i.anc = load ptr, ptr %.val38, align 8, !alias.scope !5541, !noalias !5321, !nonnull !5, !align !11, !noundef !5
  %i.and = getelementptr inbounds nuw [8 x i8], ptr %i.anc, i64 %i.ajf ; 2 uses
  %.val.i202.i = load ptr, ptr %i.and, align 8, !noalias !5542, !nonnull !5, !align !11, !noundef !5 ; 7 uses
  %i.ane = load ptr, ptr %.val.i202.i, align 8, !noalias !5542, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 96
  %.sroa.0129.0.copyload.i = load i128, ptr %i.anf, align 16, !noalias !5542
  %.sroa.4130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ane, i64 112
  %.sroa.4130.0.copyload.i = load i128, ptr %.sroa.4130.0..sroa_idx.i, align 16, !noalias !5542
  %.sroa.5132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ane, i64 136
  %.sroa.5132.0.copyload.i = load i64, ptr %.sroa.5132.0..sroa_idx.i, align 8, !noalias !5542 ; 3 uses
  %.sroa.5132.40.extract.trunc.i = trunc i64 %.sroa.5132.0.copyload.i to i8 ; 2 uses
  %.not.i.i203.i = icmp eq i8 %.sroa.5132.40.extract.trunc.i, -1
  br i1 %.not.i.i203.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i205.i, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.ang = load ptr, ptr %i.dy, align 8, !alias.scope !5541, !noalias !5321, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5543)
  call void @llvm.experimental.noalias.scope.decl(metadata !5544), !noalias !5545
  %.sroa.44.0.extract.shift.i.i533.i = lshr i64 %.sroa.5132.0.copyload.i, 8
  %.sroa.44.0.extract.trunc.i.i534.i = trunc i64 %.sroa.44.0.extract.shift.i.i533.i to i8 ; 2 uses
  switch i8 %.sroa.5132.40.extract.trunc.i, label %bb.lk [
    i8 0, label %bb.ll
    i8 1, label %bb.lq
    i8 2, label %bb.lr
  ]

bb.lk:                                            ; preds = %bb.lj
  unreachable

bb.ll:                                            ; preds = %bb.lj
  switch i8 %.sroa.44.0.extract.trunc.i.i534.i, label %default.unreachable25.i.i.i548.i [
    i8 0, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit549.i
    i8 1, label %bb.lm
    i8 2, label %bb.ln
    i8 3, label %bb.lo
    i8 4, label %bb.lp
  ]

default.unreachable25.i.i.i548.i:                 ; preds = %bb.ll
  unreachable

bb.lm:                                            ; preds = %bb.ll
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit549.i

bb.ln:                                            ; preds = %bb.ll
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit549.i

bb.lo:                                            ; preds = %bb.ll
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit549.i

bb.lp:                                            ; preds = %bb.ll
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit549.i

bb.lq:                                            ; preds = %bb.lj
  %i.anh = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i534.i), !noalias !5546
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i542.i

bb.lr:                                            ; preds = %bb.lj
  %.sroa.6.0.extract.shift.i.i536.i = lshr i64 %.sroa.5132.0.copyload.i, 32
  %.sroa.6.0.extract.trunc.i.i537.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i536.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5547), !noalias !5545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5546
  store i32 %.sroa.6.0.extract.trunc.i.i537.i, ptr %i.at, align 4, !noalias !5548
  %i.ani = getelementptr inbounds nuw i8, ptr %i.ang, i64 72
  %i.anj = load i32, ptr %i.ani, align 8, !alias.scope !5549, !noalias !5542, !noundef !5
  %i.ank = icmp eq i32 %i.anj, %.sroa.6.0.extract.trunc.i.i537.i
  br i1 %i.ank, label %bb.lu, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ang, i64 32
  %i.anm = load ptr, ptr %i.anl, align 8, !alias.scope !5549, !noalias !5542, !nonnull !5, !noundef !5 ; 2 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %i.ang, i64 40
  %i.ano = load i64, ptr %i.ann, align 8, !alias.scope !5549, !noalias !5542, !noundef !5 ; 2 uses
  %.idx10340 = shl nuw nsw i64 %i.ano, 5
  %i.anp = getelementptr inbounds nuw i8, ptr %i.anm, i64 %.idx10340
  %i.anq = icmp eq i64 %i.ano, 0
  br i1 %i.anq, label %._crit_edge10214, label %.lr.ph10213

bb.lt:                                            ; preds = %.lr.ph10213
  %i.anr = getelementptr inbounds nuw i8, ptr %i.ant, i64 32 ; 2 uses
  %i.ans = icmp eq ptr %i.anr, %i.anp
  br i1 %i.ans, label %._crit_edge10214, label %.lr.ph10213

.lr.ph10213:                                      ; preds = %bb.ls, %bb.lt
  %i.ant = phi ptr [ %i.anr, %bb.lt ], [ %i.anm, %bb.ls ] ; 3 uses
  %i.anu = load i32, ptr %i.ant, align 8, !noalias !5550, !noundef !5
  %i.anv = icmp eq i32 %i.anu, %.sroa.6.0.extract.trunc.i.i537.i
  br i1 %i.anv, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i538.i, label %bb.lt

bb.lu:                                            ; preds = %bb.lr
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ang, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i539.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i538.i: ; preds = %.lr.ph10213
  %i.anx = getelementptr inbounds nuw i8, ptr %i.ant, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i539.i

._crit_edge10214:                                 ; preds = %bb.ls, %bb.lt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !5548
  store ptr %i.at, ptr %i.as, align 8, !noalias !5548
  %.sroa.45.0..sroa_idx.i.i.i547.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i547.i, align 8, !noalias !5548
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.as, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5548
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i539.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i538.i, %bb.lu
  %.sroa.0.0.in.i.i.i540.i = phi ptr [ %i.anw, %bb.lu ], [ %i.anx, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i538.i ]
  %.sroa.0.0.i6.i.i541.i = load i64, ptr %.sroa.0.0.in.i.i.i540.i, align 8, !noalias !5551, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5546
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i542.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i542.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i539.i, %bb.lq
  %.sroa.05.0.i.i543.i = phi i64 [ %.sroa.0.0.i6.i.i541.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i539.i ], [ %i.anh, %bb.lq ] ; 4 uses
  %i.any = icmp ugt i64 %.sroa.05.0.i.i543.i, 2305843009213693951
  br i1 %i.any, label %bb.lw, label %bb.lv, !prof !29

bb.lv:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i542.i
  %i.anz = icmp samesign ult i64 %.sroa.05.0.i.i543.i, 17
  br i1 %i.anz, label %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit549_crit_edge.i, label %bb.lx, !prof !30

._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit549_crit_edge.i: ; preds = %bb.lv
  %.neg4.i544.i = mul nuw nsw i64 %.sroa.05.0.i.i543.i, 120
  %.val2.pre.i204.pre.i = load ptr, ptr %i.and, align 8, !noalias !5542
  %i.aoa = and i64 %.neg4.i544.i, 120
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit549.i

bb.lw:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i542.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i543.i) #45, !noalias !5552
  unreachable

bb.lx:                                            ; preds = %bb.lv
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5552
  unreachable

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit549.i: ; preds = %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit549_crit_edge.i, %bb.lp, %bb.lo, %bb.ln, %bb.lm, %bb.ll
  %.val2.pre.i204.i = phi ptr [ %.val2.pre.i204.pre.i, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit549_crit_edge.i ], [ %.val.i202.i, %bb.ll ], [ %.val.i202.i, %bb.lo ], [ %.val.i202.i, %bb.ln ], [ %.val.i202.i, %bb.lm ], [ %.val.i202.i, %bb.lp ]
  %.neg5.i545.i = phi i64 [ %i.aoa, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit549_crit_edge.i ], [ 120, %bb.ll ], [ 64, %bb.lo ], [ 96, %bb.ln ], [ 112, %bb.lm ], [ 0, %bb.lp ]
  %i.aob = zext nneg i64 %.neg5.i545.i to i128
  %i.aoc = lshr i128 -1, %i.aob
  %.neg.i546.i = xor i128 %.sroa.4130.0.copyload.i, -1
  %i.aod = add i128 %.sroa.0129.0.copyload.i, %.neg.i546.i
  %i.aoe = and i128 %i.aoc, %i.aod
  %i.aof = icmp ult i128 %.sroa.0.0.i.i228.i, %i.aoe
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i205.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i205.i: ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit549.i, %bb.li
  %.val2.i206.i = phi ptr [ %.val2.pre.i204.i, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit549.i ], [ %.val.i202.i, %bb.li ] ; 3 uses
  %.sroa.0.0.i.i207.i = phi i1 [ %i.aof, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit549.i ], [ false, %bb.li ]
  %i.aog = load ptr, ptr %i.dz, align 8, !alias.scope !5541, !noalias !5321, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5553)
  %i.aoh = load ptr, ptr %i.aog, align 8, !alias.scope !5553, !noalias !5542, !nonnull !5, !noundef !5 ; 2 uses
  %i.aoi = load i8, ptr %i.aoh, align 1, !range !13, !noalias !5554, !noundef !5
  %i.aoj = trunc nuw i8 %i.aoi to i1
  br i1 %i.aoj, label %bb.ly, label %bb.lz

bb.ly:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i205.i
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoh, i64 1
  %i.aol = load i8, ptr %i.aok, align 1, !noalias !5554, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i206.i) ]
  %i.aom = load ptr, ptr %.val2.i206.i, align 8, !noalias !5554, !nonnull !5, !align !21, !noundef !5
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 338
  %i.aoo = load i8, ptr %i.aon, align 2, !noalias !5554, !noundef !5
  %..i.i.i221.i = call noundef i8 @llvm.umin.i8(i8 %i.aol, i8 %i.aoo)
  %i.aop = and i8 %..i.i.i221.i, 63
  %i.aoq = zext nneg i8 %i.aop to i64
  %i.aor = shl nuw i64 1, %i.aoq
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit222.i

bb.lz:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i205.i
  %i.aos = load ptr, ptr %.val2.i206.i, align 8, !noalias !5554, !nonnull !5, !align !21, !noundef !5 ; 6 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 338
  %i.aou = load i8, ptr %i.aot, align 2, !noalias !5554, !noundef !5
  %i.aov = and i8 %i.aou, 63                      ; 2 uses
  %i.aow = zext nneg i8 %i.aov to i64
  %i.aox = shl nuw i64 1, %i.aow
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aos, i64 320
  %i.aoz = load i64, ptr %i.aoy, align 16, !noalias !5554, !noundef !5
  %.sroa.5.0..sroa_idx.i.i208.i = getelementptr inbounds nuw i8, ptr %i.aos, i64 136
  %.sroa.5.0.copyload.i.i209.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i208.i, align 8, !noalias !5554 ; 2 uses
  %.not.i3.i210.i = icmp eq i8 %.sroa.5.0.copyload.i.i209.i, -1
  br i1 %.not.i3.i210.i, label %bb.mk, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %.sroa.6.0..sroa_idx.i.i211.i = getelementptr inbounds nuw i8, ptr %i.aos, i64 137
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aos, i64 96
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aog, i64 8
  %i.apc = load ptr, ptr %i.apb, align 8, !alias.scope !5553, !noalias !5542, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  %.sroa.0134.0.copyload.i = load i128, ptr %i.apa, align 16, !noalias !5554
  %.sroa.4135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aos, i64 112
  %.sroa.4135.0.copyload.i = load i128, ptr %.sroa.4135.0..sroa_idx.i, align 16, !noalias !5554
  %.sroa.5137.41.copyload.i = load i56, ptr %.sroa.6.0..sroa_idx.i.i211.i, align 1, !noalias !5554 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5555)
  call void @llvm.experimental.noalias.scope.decl(metadata !5556), !noalias !5557
  switch i8 %.sroa.5.0.copyload.i.i209.i, label %bb.mb [
    i8 0, label %switch.lookup10386
    i8 1, label %bb.mc
    i8 2, label %bb.md
  ]

bb.mb:                                            ; preds = %bb.ma
  unreachable

bb.mc:                                            ; preds = %bb.ma
  %.sroa.44.0.extract.trunc.i.i516.i = trunc i56 %.sroa.5137.41.copyload.i to i8
  %i.apd = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i516.i), !noalias !5558
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i524.i

bb.md:                                            ; preds = %bb.ma
  %.sroa.5137.41.insert.ext.i = zext i56 %.sroa.5137.41.copyload.i to i64
  %.sroa.6.0.extract.shift.i.i518.i = lshr i64 %.sroa.5137.41.insert.ext.i, 24
  %.sroa.6.0.extract.trunc.i.i519.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i518.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5559), !noalias !5557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !5558
  store i32 %.sroa.6.0.extract.trunc.i.i519.i, ptr %i.av, align 4, !noalias !5560
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apc, i64 72
  %i.apf = load i32, ptr %i.ape, align 8, !alias.scope !5561, !noalias !5554, !noundef !5
  %i.apg = icmp eq i32 %i.apf, %.sroa.6.0.extract.trunc.i.i519.i
  br i1 %i.apg, label %bb.mg, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apc, i64 32
  %i.api = load ptr, ptr %i.aph, align 8, !alias.scope !5561, !noalias !5554, !nonnull !5, !noundef !5 ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %i.apc, i64 40
  %i.apk = load i64, ptr %i.apj, align 8, !alias.scope !5561, !noalias !5554, !noundef !5 ; 2 uses
  %.idx10341 = shl nuw nsw i64 %i.apk, 5
  %i.apl = getelementptr inbounds nuw i8, ptr %i.api, i64 %.idx10341
  %i.apm = icmp eq i64 %i.apk, 0
  br i1 %i.apm, label %._crit_edge10218, label %.lr.ph10217

bb.mf:                                            ; preds = %.lr.ph10217
  %i.apn = getelementptr inbounds nuw i8, ptr %i.app, i64 32 ; 2 uses
  %i.apo = icmp eq ptr %i.apn, %i.apl
  br i1 %i.apo, label %._crit_edge10218, label %.lr.ph10217

.lr.ph10217:                                      ; preds = %bb.me, %bb.mf
  %i.app = phi ptr [ %i.apn, %bb.mf ], [ %i.api, %bb.me ] ; 3 uses
  %i.apq = load i32, ptr %i.app, align 8, !noalias !5562, !noundef !5
  %i.apr = icmp eq i32 %i.apq, %.sroa.6.0.extract.trunc.i.i519.i
  br i1 %i.apr, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i520.i, label %bb.mf

bb.mg:                                            ; preds = %bb.md
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apc, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i521.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i520.i: ; preds = %.lr.ph10217
  %i.apt = getelementptr inbounds nuw i8, ptr %i.app, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i521.i

._crit_edge10218:                                 ; preds = %bb.me, %bb.mf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5560
  store ptr %i.av, ptr %i.au, align 8, !noalias !5560
  %.sroa.45.0..sroa_idx.i.i.i529.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i529.i, align 8, !noalias !5560
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5560
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i521.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i520.i, %bb.mg
  %.sroa.0.0.in.i.i.i522.i = phi ptr [ %i.aps, %bb.mg ], [ %i.apt, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i520.i ]
  %.sroa.0.0.i6.i.i523.i = load i64, ptr %.sroa.0.0.in.i.i.i522.i, align 8, !noalias !5563, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !5558
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i524.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i524.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i521.i, %bb.mc
  %.sroa.05.0.i.i525.i = phi i64 [ %.sroa.0.0.i6.i.i523.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i521.i ], [ %i.apd, %bb.mc ] ; 4 uses
  %i.apu = icmp ugt i64 %.sroa.05.0.i.i525.i, 2305843009213693951
  br i1 %i.apu, label %bb.mi, label %bb.mh, !prof !29

bb.mh:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i524.i
  %.neg4.i526.i = mul nsw i64 %.sroa.05.0.i.i525.i, -8
  %i.apv = icmp samesign ult i64 %.sroa.05.0.i.i525.i, 17
  br i1 %i.apv, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit531.i, label %bb.mj, !prof !30

bb.mi:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i524.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i525.i) #45, !noalias !5564
  unreachable

bb.mj:                                            ; preds = %bb.mh
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5564
  unreachable

switch.lookup10386:                               ; preds = %bb.ma
  %.sroa.44.0.extract.trunc.i.i516.i.mask = and i56 %.sroa.5137.41.copyload.i, 255
  %i.apw = zext nneg i56 %.sroa.44.0.extract.trunc.i.i516.i.mask to i64
  %switch.gep10395 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.apw
  %switch.load10396 = load i8, ptr %switch.gep10395, align 1
  %switch.ext10397 = zext i8 %switch.load10396 to i64
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit531.i

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit531.i: ; preds = %switch.lookup10386, %bb.mh
  %.neg5.i527.i = phi i64 [ %.neg4.i526.i, %bb.mh ], [ %switch.ext10397, %switch.lookup10386 ]
  %i.apx = and i64 %.neg5.i527.i, 120
  %i.apy = zext nneg i64 %i.apx to i128
  %i.apz = lshr i128 -1, %i.apy
  %.neg.i528.i = xor i128 %.sroa.4135.0.copyload.i, -1
  %i.aqa = add i128 %.sroa.0134.0.copyload.i, %.neg.i528.i
  %i.aqb = and i128 %i.apz, %i.aqa
  br label %bb.mk

bb.mk:                                            ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit531.i, %bb.lz
  %.sroa.01.0.i.i214.i = phi i128 [ %i.aqb, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit531.i ], [ 0, %bb.lz ]
  %..i14.i.i215.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.aoz, i64 range(i64 1, -9223372036854775807) %i.aox)
  %i.aqc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %..i14.i.i215.i, i1 true)
  %i.aqd = trunc nuw nsw i64 %i.aqc to i32        ; 3 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aog, i64 16
  %i.aqf = load ptr, ptr %i.aqe, align 8, !alias.scope !5553, !noalias !5542, !nonnull !5, !align !21, !noundef !5
  %i.aqg = load i128, ptr %i.aqf, align 16, !noalias !5554, !noundef !5 ; 2 uses
  %.not10.i.i216.i = icmp eq i128 %i.aqg, 0
  br i1 %.not10.i.i216.i, label %bb.mm, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aog, i64 24
  %i.aqi = load ptr, ptr %i.aqh, align 8, !alias.scope !5553, !noalias !5542, !nonnull !5, !noundef !5
  %i.aqj = load i8, ptr %i.aqi, align 1, !range !13, !noalias !5554, !noundef !5
  %i.aqk = trunc nuw i8 %i.aqj to i1
  br i1 %i.aqk, label %bb.mn, label %bb.mo

bb.mm:                                            ; preds = %bb.mo, %bb.mn, %bb.mk
  %.sroa.07.0.i.i218.i = phi i32 [ %spec.select.i.i220.i, %bb.mn ], [ %i.aqd, %bb.mk ], [ %..i15.i.i217.i, %bb.mo ]
  %i.aql = zext nneg i32 %.sroa.07.0.i.i218.i to i64
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit222.i

bb.mn:                                            ; preds = %bb.ml
  %i.aqm = icmp eq i128 %.sroa.01.0.i.i214.i, %i.aqg
  %i.aqn = zext nneg i8 %i.aov to i32
  %spec.select.i.i220.i = select i1 %i.aqm, i32 %i.aqn, i32 %i.aqd
  br label %bb.mm

bb.mo:                                            ; preds = %bb.ml
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aog, i64 32
  %i.aqp = load ptr, ptr %i.aqo, align 8, !alias.scope !5553, !noalias !5542, !nonnull !5, !align !11, !noundef !5
  %i.aqq = load i64, ptr %i.aqp, align 8, !noalias !5554, !noundef !5
  %i.aqr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aqq, i1 false)
  %i.aqs = trunc nuw nsw i64 %i.aqr to i32
  %..i15.i.i217.i = call noundef range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.aqd, i32 range(i32 0, 129) %i.aqs)
  br label %bb.mm

bb.mp:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit243.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ajf, i64 noundef %i.ana, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #43, !noalias !5542
  unreachable

_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit222.i: ; preds = %bb.mm, %bb.ly
  %.sroa.0.0.i4.i219.i = phi i64 [ %i.aor, %bb.ly ], [ %i.aql, %bb.mm ] ; 2 uses
  %i.aqt = icmp eq i64 %.sroa.0.0.i4.i240.i, %.sroa.0.0.i4.i219.i
  %i.aqu = icmp ult i64 %.sroa.0.0.i4.i240.i, %.sroa.0.0.i4.i219.i
  %.sroa.0.0.i.i50.i = select i1 %i.aqt, i1 %.sroa.0.0.i.i207.i, i1 %i.aqu ; 2 uses
  %i.aqv = getelementptr inbounds i8, ptr %.sroa.43.21284.i, i64 -4 ; 3 uses
  %.sroa.01.0.i51.i = select i1 %.sroa.0.0.i.i50.i, ptr %2, ptr %i.aqv
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i51.i, i64 %.sroa.27.21285.i
  store i32 %.val14.i, ptr %i.aqw, align 4, !alias.scope !5319, !noalias !5565
  %i.aqx = zext i1 %.sroa.0.0.i.i50.i to i64
  %i.aqy = add i64 %.sroa.27.21285.i, %i.aqx      ; 2 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %.sroa.9.21286.i, i64 4 ; 3 uses
  %i.ara = icmp ult ptr %i.aqz, %i.ajd
  br i1 %i.ara, label %bb.jz, label %._crit_edge1289.i

bb.mq:                                            ; preds = %._crit_edge1289.i
  %i.arb = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -4 ; 2 uses
  %i.arc = getelementptr inbounds nuw [4 x i8], ptr %i.arb, i64 %.sroa.27.2.lcssa.i
  %i.ard = load i32, ptr %.sroa.9.2.lcssa.i, align 4, !alias.scope !5318, !noalias !5566
  store i32 %i.ard, ptr %i.arc, align 4, !alias.scope !5319, !noalias !5566
  %i.are = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 4
  br label %bb.l

bb.mr:                                            ; preds = %._crit_edge1289.i
  %i.arf = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph2655, ptr nonnull align 4 %2, i64 %i.arf, i1 false), !alias.scope !5321
  %i.arg = sub i64 %.sroa.16.0264810220, %.sroa.27.2.lcssa.i ; 5 uses
  %.not1297.i = icmp eq i64 %.sroa.16.0264810220, %.sroa.27.2.lcssa.i
  br i1 %.not1297.i, label %.loopexit, label %.lr.ph1295.i

.lr.ph1295.i:                                     ; preds = %bb.mr
  %i.arh = getelementptr [4 x i8], ptr %.sroa.0.0.ph2655, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check10310 = icmp ult i64 %i.arg, 8
  br i1 %min.iters.check10310, label %scalar.ph10309.preheader, label %vector.ph10311

vector.ph10311:                                   ; preds = %.lr.ph1295.i
  %n.vec10312 = and i64 %i.arg, -8                ; 3 uses
  br label %vector.body10313

vector.body10313:                                 ; preds = %vector.body10313, %vector.ph10311
  %index10314 = phi i64 [ 0, %vector.ph10311 ], [ %index.next10319, %vector.body10313 ] ; 3 uses
  %i.ari = xor i64 %index10314, -1
  %i.arj = getelementptr [4 x i8], ptr %i.dw, i64 %i.ari ; 2 uses
  %i.ark = getelementptr [4 x i8], ptr %i.arh, i64 %index10314 ; 2 uses
  %i.arl = getelementptr i8, ptr %i.arj, i64 -12
  %i.arm = getelementptr i8, ptr %i.arj, i64 -28
  %wide.load10315 = load <4 x i32>, ptr %i.arl, align 4, !alias.scope !5319
  %wide.load10316 = load <4 x i32>, ptr %i.arm, align 4, !alias.scope !5319
  %reverse10317 = shufflevector <4 x i32> %wide.load10315, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse10318 = shufflevector <4 x i32> %wide.load10316, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.arn = getelementptr i8, ptr %i.ark, i64 16
  store <4 x i32> %reverse10317, ptr %i.ark, align 4, !alias.scope !5318
  store <4 x i32> %reverse10318, ptr %i.arn, align 4, !alias.scope !5318
  %index.next10319 = add nuw i64 %index10314, 8   ; 2 uses
  %i.aro = icmp eq i64 %index.next10319, %n.vec10312
  br i1 %i.aro, label %middle.block10320, label %vector.body10313, !llvm.loop !5043

middle.block10320:                                ; preds = %vector.body10313
  %cmp.n10321 = icmp eq i64 %i.arg, %n.vec10312
  br i1 %cmp.n10321, label %.loopexit, label %scalar.ph10309.preheader

scalar.ph10309.preheader:                         ; preds = %.lr.ph1295.i, %middle.block10320
  %.sroa.07.01293.i.ph = phi i64 [ 0, %.lr.ph1295.i ], [ %n.vec10312, %middle.block10320 ]
  br label %scalar.ph10309

scalar.ph10309:                                   ; preds = %scalar.ph10309.preheader, %scalar.ph10309
  %.sroa.07.01293.i = phi i64 [ %i.arp, %scalar.ph10309 ], [ %.sroa.07.01293.i.ph, %scalar.ph10309.preheader ] ; 3 uses
  %i.arp = add nuw i64 %.sroa.07.01293.i, 1       ; 2 uses
  %i.arq = xor i64 %.sroa.07.01293.i, -1
  %i.arr = getelementptr [4 x i8], ptr %i.dw, i64 %i.arq
  %i.ars = getelementptr [4 x i8], ptr %i.arh, i64 %.sroa.07.01293.i
  %i.art = load i32, ptr %i.arr, align 4, !alias.scope !5319
  store i32 %i.art, ptr %i.ars, align 4, !alias.scope !5318
  %exitcond.not.i = icmp eq i64 %i.arp, %i.arg
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph10309, !llvm.loop !5044

.loopexit:                                        ; preds = %scalar.ph10309, %middle.block10320, %bb.mr
  %i.aru = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.aru, label %.thread, label %bb.ms

bb.ms:                                            ; preds = %.loopexit
  %.not.i42 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0264810220
  br i1 %.not.i42, label %bb.mt, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx12split_at_mutBy_.exit, !prof !7

bb.mt:                                            ; preds = %bb.ms
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @156, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #43, !noalias !5567
  unreachable

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdx12split_at_mutBy_.exit: ; preds = %bb.ms
  %i.arv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph2655, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph2655) ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_(ptr noalias nofree noundef nonnull align 4 %i.arv, i64 noundef %i.arg, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.cx, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %i.ck, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  %i.arw = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.arw, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.h, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !5568)
  call void @llvm.experimental.noalias.scope.decl(metadata !5569)
  %.not215 = icmp samesign ult i64 %3, %.sroa.16.0264810220
  br i1 %.not215, label %bb.mv, label %bb.mu, !prof !25

bb.mu:                                            ; preds = %.thread
  %i.arx = getelementptr [4 x i8], ptr %2, i64 %.sroa.16.0264810220 ; 3 uses
  br label %bb.mw

bb.mv:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.mw:                                            ; preds = %bb.aaa, %bb.mu
  %.sroa.43.0.i45 = phi ptr [ %i.arx, %bb.mu ], [ %i.cft, %bb.aaa ] ; 2 uses
  %.sroa.27.0.i46 = phi i64 [ 0, %bb.mu ], [ %i.cfw, %bb.aaa ] ; 2 uses
  %.sroa.9.0.i47 = phi ptr [ %.sroa.0.0.ph2655, %bb.mu ], [ %i.cfx, %bb.aaa ] ; 3 uses
  %.sroa.0.0.i48 = phi i64 [ %.sroa.0.0.i, %bb.mu ], [ %.sroa.16.0264810220, %bb.aaa ] ; 3 uses
  %i.ary = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i48, i64 3)
  %i.arz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph2655, i64 %i.ary ; 2 uses
  %i.asa = icmp ult ptr %.sroa.9.0.i47, %i.arz
  br i1 %i.asa, label %.lr.ph.i81, label %._crit_edge.i49

.lr.ph.i81:                                       ; preds = %bb.mw
  %.val27.i82 = load i32, ptr %i.dr, align 4, !alias.scope !5568, !noundef !5
  %i.asb = zext i32 %.val27.i82 to i64            ; 12 uses
  br label %bb.mx

bb.mx:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit183.i, %.lr.ph.i81
  %.sroa.9.11248.i = phi ptr [ %.sroa.9.0.i47, %.lr.ph.i81 ], [ %i.bxp, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit183.i ] ; 5 uses
  %.sroa.27.11247.i = phi i64 [ %.sroa.27.0.i46, %.lr.ph.i81 ], [ %i.bxo, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit183.i ] ; 2 uses
  %.sroa.43.11246.i = phi ptr [ %.sroa.43.0.i45, %.lr.ph.i81 ], [ %i.bxl, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit183.i ] ; 4 uses
  %.val26.i83 = load i32, ptr %.sroa.9.11248.i, align 4, !alias.scope !5568 ; 2 uses
  %.val.i.i84 = load ptr, ptr %6, align 8, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5571)
  %i.asc = getelementptr inbounds nuw i8, ptr %.val.i.i84, i64 8 ; 2 uses
  %i.asd = load i64, ptr %i.asc, align 8, !alias.scope !5571, !noalias !5570, !noundef !5 ; 2 uses
  %i.ase = icmp ugt i64 %i.asd, %i.asb
  br i1 %i.ase, label %bb.my, label %bb.of

bb.my:                                            ; preds = %bb.mx
  %i.asf = load ptr, ptr %.val.i.i84, align 8, !alias.scope !5571, !noalias !5570, !nonnull !5, !align !11, !noundef !5
  %i.asg = getelementptr inbounds nuw [8 x i8], ptr %i.asf, i64 %i.asb ; 2 uses
  %.val.i58.i = load ptr, ptr %i.asg, align 8, !noalias !5572, !nonnull !5, !align !11, !noundef !5 ; 7 uses
  %i.ash = load ptr, ptr %.val.i58.i, align 8, !noalias !5572, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ash, i64 96
  %.sroa.066.0.copyload.i85 = load i128, ptr %i.asi, align 16, !noalias !5572
  %.sroa.467.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.ash, i64 112
  %.sroa.467.0.copyload.i87 = load i128, ptr %.sroa.467.0..sroa_idx.i86, align 16, !noalias !5572
  %.sroa.569.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %i.ash, i64 136
  %.sroa.569.0.copyload.i89 = load i64, ptr %.sroa.569.0..sroa_idx.i88, align 8, !noalias !5572 ; 3 uses
  %.sroa.569.40.extract.trunc.i90 = trunc i64 %.sroa.569.0.copyload.i89 to i8 ; 2 uses
  %.not.i.i59.i = icmp eq i8 %.sroa.569.40.extract.trunc.i90, -1
end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_:bb.a
.lr.ph10228:                                      ; preds = %bb.ni, %bb.nj
  %i.asx = phi ptr [ %i.asv, %bb.nj ], [ %i.asq, %bb.ni ] ; 3 uses
  %i.asy = load i32, ptr %i.asx, align 8, !noalias !5580, !noundef !5
  %i.asz = icmp eq i32 %i.asy, %.sroa.6.0.extract.trunc.i.i288.i
  br i1 %i.asz, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i289.i, label %bb.nj

bb.nk:                                            ; preds = %bb.nh
  %i.ata = getelementptr inbounds nuw i8, ptr %i.ask, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i290.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i289.i: ; preds = %.lr.ph10228
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asx, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i290.i

._crit_edge10229:                                 ; preds = %bb.ni, %bb.nj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !5578
  store ptr %i.ah, ptr %i.ag, align 8, !noalias !5578
  %.sroa.45.0..sroa_idx.i.i.i298.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i298.i, align 8, !noalias !5578
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5578
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i290.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i289.i, %bb.nk
  %.sroa.0.0.in.i.i.i291.i = phi ptr [ %i.ata, %bb.nk ], [ %i.atb, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i289.i ]
  %.sroa.0.0.i6.i.i292.i = load i64, ptr %.sroa.0.0.in.i.i.i291.i, align 8, !noalias !5581, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !5576
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i293.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i293.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i290.i, %bb.ng
  %.sroa.05.0.i.i294.i = phi i64 [ %.sroa.0.0.i6.i.i292.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i290.i ], [ %i.asl, %bb.ng ] ; 4 uses
  %i.atc = icmp ugt i64 %.sroa.05.0.i.i294.i, 2305843009213693951
  br i1 %i.atc, label %bb.nm, label %bb.nl, !prof !29

bb.nl:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i293.i
  %i.atd = icmp samesign ult i64 %.sroa.05.0.i.i294.i, 17
  br i1 %i.atd, label %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit300_crit_edge.i, label %bb.nn, !prof !30

._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit300_crit_edge.i: ; preds = %bb.nl
  %.neg4.i295.i = mul nuw nsw i64 %.sroa.05.0.i.i294.i, 120
  %.val2.pre.i60.pre.i = load ptr, ptr %i.asg, align 8, !noalias !5572
  %i.ate = and i64 %.neg4.i295.i, 120
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit300.i

bb.nm:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i293.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i294.i) #45, !noalias !5582
  unreachable

bb.nn:                                            ; preds = %bb.nl
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5582
  unreachable

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit300.i: ; preds = %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit300_crit_edge.i, %bb.nf, %bb.ne, %bb.nd, %bb.nc, %bb.nb
  %.val2.pre.i60.i = phi ptr [ %.val2.pre.i60.pre.i, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit300_crit_edge.i ], [ %.val.i58.i, %bb.nb ], [ %.val.i58.i, %bb.ne ], [ %.val.i58.i, %bb.nd ], [ %.val.i58.i, %bb.nc ], [ %.val.i58.i, %bb.nf ]
  %.neg5.i296.i = phi i64 [ %i.ate, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit300_crit_edge.i ], [ 120, %bb.nb ], [ 64, %bb.ne ], [ 96, %bb.nd ], [ 112, %bb.nc ], [ 0, %bb.nf ]
  %i.atf = zext nneg i64 %.neg5.i296.i to i128
  %i.atg = lshr i128 -1, %i.atf
  %.neg.i297.i = xor i128 %.sroa.467.0.copyload.i87, -1
  %i.ath = add i128 %.sroa.066.0.copyload.i85, %.neg.i297.i
  %i.ati = and i128 %i.atg, %i.ath
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i61.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i61.i: ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit300.i, %bb.my
  %.val2.i62.i = phi ptr [ %.val2.pre.i60.i, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit300.i ], [ %.val.i58.i, %bb.my ] ; 3 uses
  %.sroa.0.0.i.i63.i = phi i128 [ %i.ati, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit300.i ], [ 0, %bb.my ]
  %i.atj = getelementptr inbounds nuw i8, ptr %.val.i.i84, i64 24 ; 2 uses
  %i.atk = load ptr, ptr %i.atj, align 8, !alias.scope !5571, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5583)
  %i.atl = load ptr, ptr %i.atk, align 8, !alias.scope !5583, !noalias !5572, !nonnull !5, !noundef !5 ; 2 uses
  %i.atm = load i8, ptr %i.atl, align 1, !range !13, !noalias !5584, !noundef !5
  %i.atn = trunc nuw i8 %i.atm to i1
  br i1 %i.atn, label %bb.no, label %bb.np

bb.no:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i61.i
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atl, i64 1
  %i.atp = load i8, ptr %i.ato, align 1, !noalias !5584, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i62.i) ]
  %i.atq = load ptr, ptr %.val2.i62.i, align 8, !noalias !5584, !nonnull !5, !align !21, !noundef !5
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 338
  %i.ats = load i8, ptr %i.atr, align 2, !noalias !5584, !noundef !5
  %..i.i.i77.i = call noundef i8 @llvm.umin.i8(i8 %i.atp, i8 %i.ats)
  %i.att = and i8 %..i.i.i77.i, 63
  %i.atu = zext nneg i8 %i.att to i64
  %i.atv = shl nuw i64 1, %i.atu
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit78.i

bb.np:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i61.i
  %i.atw = load ptr, ptr %.val2.i62.i, align 8, !noalias !5584, !nonnull !5, !align !21, !noundef !5 ; 6 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 338
  %i.aty = load i8, ptr %i.atx, align 2, !noalias !5584, !noundef !5
  %i.atz = and i8 %i.aty, 63                      ; 2 uses
  %i.aua = zext nneg i8 %i.atz to i64
  %i.aub = shl nuw i64 1, %i.aua
  %i.auc = getelementptr inbounds nuw i8, ptr %i.atw, i64 320
  %i.aud = load i64, ptr %i.auc, align 16, !noalias !5584, !noundef !5
  %.sroa.5.0..sroa_idx.i.i64.i = getelementptr inbounds nuw i8, ptr %i.atw, i64 136
  %.sroa.5.0.copyload.i.i65.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i64.i, align 8, !noalias !5584 ; 2 uses
  %.not.i3.i66.i = icmp eq i8 %.sroa.5.0.copyload.i.i65.i, -1
  br i1 %.not.i3.i66.i, label %bb.oa, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %.sroa.6.0..sroa_idx.i.i67.i = getelementptr inbounds nuw i8, ptr %i.atw, i64 137
  %i.aue = getelementptr inbounds nuw i8, ptr %i.atw, i64 96
  %i.auf = getelementptr inbounds nuw i8, ptr %i.atk, i64 8
  %i.aug = load ptr, ptr %i.auf, align 8, !alias.scope !5583, !noalias !5572, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  %.sroa.071.0.copyload.i91 = load i128, ptr %i.aue, align 16, !noalias !5584
  %.sroa.472.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.atw, i64 112
  %.sroa.472.0.copyload.i93 = load i128, ptr %.sroa.472.0..sroa_idx.i92, align 16, !noalias !5584
  %.sroa.574.41.copyload.i94 = load i56, ptr %.sroa.6.0..sroa_idx.i.i67.i, align 1, !noalias !5584 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5585)
  call void @llvm.experimental.noalias.scope.decl(metadata !5586), !noalias !5587
  switch i8 %.sroa.5.0.copyload.i.i65.i, label %bb.nr [
    i8 0, label %switch.lookup10389
    i8 1, label %bb.ns
    i8 2, label %bb.nt
  ]

bb.nr:                                            ; preds = %bb.nq
  unreachable

bb.ns:                                            ; preds = %bb.nq
  %.sroa.44.0.extract.trunc.i.i267.i = trunc i56 %.sroa.574.41.copyload.i94 to i8
  %i.auh = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i267.i), !noalias !5588
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i275.i

bb.nt:                                            ; preds = %bb.nq
  %.sroa.574.41.insert.ext.i95 = zext i56 %.sroa.574.41.copyload.i94 to i64
  %.sroa.6.0.extract.shift.i.i269.i = lshr i64 %.sroa.574.41.insert.ext.i95, 24
  %.sroa.6.0.extract.trunc.i.i270.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i269.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5589), !noalias !5587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !5588
  store i32 %.sroa.6.0.extract.trunc.i.i270.i, ptr %i.aj, align 4, !noalias !5590
  %i.aui = getelementptr inbounds nuw i8, ptr %i.aug, i64 72
  %i.auj = load i32, ptr %i.aui, align 8, !alias.scope !5591, !noalias !5584, !noundef !5
  %i.auk = icmp eq i32 %i.auj, %.sroa.6.0.extract.trunc.i.i270.i
  br i1 %i.auk, label %bb.nw, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.aul = getelementptr inbounds nuw i8, ptr %i.aug, i64 32
  %i.aum = load ptr, ptr %i.aul, align 8, !alias.scope !5591, !noalias !5584, !nonnull !5, !noundef !5 ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aug, i64 40
  %i.auo = load i64, ptr %i.aun, align 8, !alias.scope !5591, !noalias !5584, !noundef !5 ; 2 uses
  %.idx10343 = shl nuw nsw i64 %i.auo, 5
  %i.aup = getelementptr inbounds nuw i8, ptr %i.aum, i64 %.idx10343
  %i.auq = icmp eq i64 %i.auo, 0
  br i1 %i.auq, label %._crit_edge10233, label %.lr.ph10232

bb.nv:                                            ; preds = %.lr.ph10232
  %i.aur = getelementptr inbounds nuw i8, ptr %i.aut, i64 32 ; 2 uses
  %i.aus = icmp eq ptr %i.aur, %i.aup
  br i1 %i.aus, label %._crit_edge10233, label %.lr.ph10232

.lr.ph10232:                                      ; preds = %bb.nu, %bb.nv
  %i.aut = phi ptr [ %i.aur, %bb.nv ], [ %i.aum, %bb.nu ] ; 3 uses
  %i.auu = load i32, ptr %i.aut, align 8, !noalias !5592, !noundef !5
  %i.auv = icmp eq i32 %i.auu, %.sroa.6.0.extract.trunc.i.i270.i
  br i1 %i.auv, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i271.i, label %bb.nv

bb.nw:                                            ; preds = %bb.nt
  %i.auw = getelementptr inbounds nuw i8, ptr %i.aug, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i272.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i271.i: ; preds = %.lr.ph10232
  %i.aux = getelementptr inbounds nuw i8, ptr %i.aut, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i272.i

._crit_edge10233:                                 ; preds = %bb.nu, %bb.nv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !5590
  store ptr %i.aj, ptr %i.ai, align 8, !noalias !5590
  %.sroa.45.0..sroa_idx.i.i.i280.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i280.i, align 8, !noalias !5590
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5590
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i272.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i271.i, %bb.nw
  %.sroa.0.0.in.i.i.i273.i = phi ptr [ %i.auw, %bb.nw ], [ %i.aux, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i271.i ]
  %.sroa.0.0.i6.i.i274.i = load i64, ptr %.sroa.0.0.in.i.i.i273.i, align 8, !noalias !5593, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !5588
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i275.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i275.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i272.i, %bb.ns
  %.sroa.05.0.i.i276.i = phi i64 [ %.sroa.0.0.i6.i.i274.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i272.i ], [ %i.auh, %bb.ns ] ; 4 uses
  %i.auy = icmp ugt i64 %.sroa.05.0.i.i276.i, 2305843009213693951
  br i1 %i.auy, label %bb.ny, label %bb.nx, !prof !29

bb.nx:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i275.i
  %.neg4.i277.i = mul nsw i64 %.sroa.05.0.i.i276.i, -8
  %i.auz = icmp samesign ult i64 %.sroa.05.0.i.i276.i, 17
  br i1 %i.auz, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit282.i, label %bb.nz, !prof !30

bb.ny:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i275.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i276.i) #45, !noalias !5594
  unreachable

bb.nz:                                            ; preds = %bb.nx
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5594
  unreachable

switch.lookup10389:                               ; preds = %bb.nq
  %.sroa.44.0.extract.trunc.i.i267.i.mask = and i56 %.sroa.574.41.copyload.i94, 255
  %i.ava = zext nneg i56 %.sroa.44.0.extract.trunc.i.i267.i.mask to i64
  %switch.gep10399 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.ava
  %switch.load10400 = load i8, ptr %switch.gep10399, align 1
  %switch.ext10401 = zext i8 %switch.load10400 to i64
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit282.i

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit282.i: ; preds = %switch.lookup10389, %bb.nx
  %.neg5.i278.i = phi i64 [ %.neg4.i277.i, %bb.nx ], [ %switch.ext10401, %switch.lookup10389 ]
  %i.avb = and i64 %.neg5.i278.i, 120
  %i.avc = zext nneg i64 %i.avb to i128
  %i.avd = lshr i128 -1, %i.avc
  %.neg.i279.i = xor i128 %.sroa.472.0.copyload.i93, -1
  %i.ave = add i128 %.sroa.071.0.copyload.i91, %.neg.i279.i
  %i.avf = and i128 %i.avd, %i.ave
  br label %bb.oa

bb.oa:                                            ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit282.i, %bb.np
  %.sroa.01.0.i.i70.i = phi i128 [ %i.avf, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit282.i ], [ 0, %bb.np ]
  %..i14.i.i71.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.aud, i64 range(i64 1, -9223372036854775807) %i.aub)
  %i.avg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %..i14.i.i71.i, i1 true)
  %i.avh = trunc nuw nsw i64 %i.avg to i32        ; 3 uses
  %i.avi = getelementptr inbounds nuw i8, ptr %i.atk, i64 16
  %i.avj = load ptr, ptr %i.avi, align 8, !alias.scope !5583, !noalias !5572, !nonnull !5, !align !21, !noundef !5
  %i.avk = load i128, ptr %i.avj, align 16, !noalias !5584, !noundef !5 ; 2 uses
  %.not10.i.i72.i = icmp eq i128 %i.avk, 0
  br i1 %.not10.i.i72.i, label %bb.oc, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.avl = getelementptr inbounds nuw i8, ptr %i.atk, i64 24
  %i.avm = load ptr, ptr %i.avl, align 8, !alias.scope !5583, !noalias !5572, !nonnull !5, !noundef !5
  %i.avn = load i8, ptr %i.avm, align 1, !range !13, !noalias !5584, !noundef !5
  %i.avo = trunc nuw i8 %i.avn to i1
  br i1 %i.avo, label %bb.od, label %bb.oe

bb.oc:                                            ; preds = %bb.oe, %bb.od, %bb.oa
  %.sroa.07.0.i.i74.i = phi i32 [ %spec.select.i.i76.i, %bb.od ], [ %i.avh, %bb.oa ], [ %..i15.i.i73.i, %bb.oe ]
  %i.avp = zext nneg i32 %.sroa.07.0.i.i74.i to i64
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit78.i

bb.od:                                            ; preds = %bb.ob
  %i.avq = icmp eq i128 %.sroa.01.0.i.i70.i, %i.avk
  %i.avr = zext nneg i8 %i.atz to i32
  %spec.select.i.i76.i = select i1 %i.avq, i32 %i.avr, i32 %i.avh
  br label %bb.oc

bb.oe:                                            ; preds = %bb.ob
  %i.avs = getelementptr inbounds nuw i8, ptr %i.atk, i64 32
  %i.avt = load ptr, ptr %i.avs, align 8, !alias.scope !5583, !noalias !5572, !nonnull !5, !align !11, !noundef !5
  %i.avu = load i64, ptr %i.avt, align 8, !noalias !5584, !noundef !5
  %i.avv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.avu, i1 false)
  %i.avw = trunc nuw nsw i64 %i.avv to i32
  %..i15.i.i73.i = call noundef range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.avh, i32 range(i32 0, 129) %i.avw)
  br label %bb.oc

bb.of:                                            ; preds = %bb.mx
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.asb, i64 noundef %i.asd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #43, !noalias !5572
  unreachable

_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit78.i: ; preds = %bb.oc, %bb.no
  %.sroa.0.0.i4.i75.i = phi i64 [ %i.atv, %bb.no ], [ %i.avp, %bb.oc ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5595)
  %i.avx = load i64, ptr %i.asc, align 8, !alias.scope !5595, !noalias !5570, !noundef !5 ; 2 uses
  %i.avy = zext i32 %.val26.i83 to i64            ; 3 uses
  %i.avz = icmp ugt i64 %i.avx, %i.avy
  br i1 %i.avz, label %bb.og, label %bb.pn

bb.og:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit78.i
  %i.awa = load ptr, ptr %.val.i.i84, align 8, !alias.scope !5595, !noalias !5570, !nonnull !5, !align !11, !noundef !5
  %i.awb = getelementptr inbounds nuw [8 x i8], ptr %i.awa, i64 %i.avy ; 2 uses
  %.val.i57.i = load ptr, ptr %i.awb, align 8, !noalias !5596, !nonnull !5, !align !11, !noundef !5 ; 7 uses
  %i.awc = load ptr, ptr %.val.i57.i, align 8, !noalias !5596, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awc, i64 96
  %.sroa.058.0.copyload.i96 = load i128, ptr %i.awd, align 16, !noalias !5596
  %.sroa.459.0..sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %i.awc, i64 112
  %.sroa.459.0.copyload.i98 = load i128, ptr %.sroa.459.0..sroa_idx.i97, align 16, !noalias !5596
  %.sroa.560.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %i.awc, i64 136
  %.sroa.560.0.copyload.i100 = load i64, ptr %.sroa.560.0..sroa_idx.i99, align 8, !noalias !5596 ; 3 uses
  %.sroa.560.40.extract.trunc.i101 = trunc i64 %.sroa.560.0.copyload.i100 to i8 ; 2 uses
  %.not.i.i.i102 = icmp eq i8 %.sroa.560.40.extract.trunc.i101, -1
  br i1 %.not.i.i.i102, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i.i105, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.awe = getelementptr inbounds nuw i8, ptr %.val.i.i84, i64 16
  %i.awf = load ptr, ptr %i.awe, align 8, !alias.scope !5595, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5597)
  call void @llvm.experimental.noalias.scope.decl(metadata !5598), !noalias !5599
  %.sroa.44.0.extract.shift.i.i248.i = lshr i64 %.sroa.560.0.copyload.i100, 8
  %.sroa.44.0.extract.trunc.i.i249.i = trunc i64 %.sroa.44.0.extract.shift.i.i248.i to i8 ; 2 uses
  switch i8 %.sroa.560.40.extract.trunc.i101, label %bb.oi [
    i8 0, label %bb.oj
    i8 1, label %bb.oo
    i8 2, label %bb.op
  ]

bb.oi:                                            ; preds = %bb.oh
  unreachable

bb.oj:                                            ; preds = %bb.oh
  switch i8 %.sroa.44.0.extract.trunc.i.i249.i, label %default.unreachable25.i.i.i263.i [
    i8 0, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit264.i
    i8 1, label %bb.ok
    i8 2, label %bb.ol
    i8 3, label %bb.om
    i8 4, label %bb.on
  ]

default.unreachable25.i.i.i263.i:                 ; preds = %bb.oj
  unreachable

bb.ok:                                            ; preds = %bb.oj
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit264.i

bb.ol:                                            ; preds = %bb.oj
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit264.i

bb.om:                                            ; preds = %bb.oj
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit264.i

bb.on:                                            ; preds = %bb.oj
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit264.i

bb.oo:                                            ; preds = %bb.oh
  %i.awg = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i249.i), !noalias !5600
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i257.i

bb.op:                                            ; preds = %bb.oh
  %.sroa.6.0.extract.shift.i.i251.i = lshr i64 %.sroa.560.0.copyload.i100, 32
  %.sroa.6.0.extract.trunc.i.i252.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i251.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5601), !noalias !5599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !5600
  store i32 %.sroa.6.0.extract.trunc.i.i252.i, ptr %i.al, align 4, !noalias !5602
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awf, i64 72
  %i.awi = load i32, ptr %i.awh, align 8, !alias.scope !5603, !noalias !5596, !noundef !5
  %i.awj = icmp eq i32 %i.awi, %.sroa.6.0.extract.trunc.i.i252.i
  br i1 %i.awj, label %bb.os, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awf, i64 32
  %i.awl = load ptr, ptr %i.awk, align 8, !alias.scope !5603, !noalias !5596, !nonnull !5, !noundef !5 ; 2 uses
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awf, i64 40
  %i.awn = load i64, ptr %i.awm, align 8, !alias.scope !5603, !noalias !5596, !noundef !5 ; 2 uses
  %.idx10344 = shl nuw nsw i64 %i.awn, 5
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awl, i64 %.idx10344
  %i.awp = icmp eq i64 %i.awn, 0
  br i1 %i.awp, label %._crit_edge10237, label %.lr.ph10236

bb.or:                                            ; preds = %.lr.ph10236
  %i.awq = getelementptr inbounds nuw i8, ptr %i.aws, i64 32 ; 2 uses
  %i.awr = icmp eq ptr %i.awq, %i.awo
  br i1 %i.awr, label %._crit_edge10237, label %.lr.ph10236

.lr.ph10236:                                      ; preds = %bb.oq, %bb.or
  %i.aws = phi ptr [ %i.awq, %bb.or ], [ %i.awl, %bb.oq ] ; 3 uses
  %i.awt = load i32, ptr %i.aws, align 8, !noalias !5604, !noundef !5
  %i.awu = icmp eq i32 %i.awt, %.sroa.6.0.extract.trunc.i.i252.i
  br i1 %i.awu, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i253.i, label %bb.or

bb.os:                                            ; preds = %bb.op
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awf, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i254.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i253.i: ; preds = %.lr.ph10236
  %i.aww = getelementptr inbounds nuw i8, ptr %i.aws, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i254.i

._crit_edge10237:                                 ; preds = %bb.oq, %bb.or
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !5602
  store ptr %i.al, ptr %i.ak, align 8, !noalias !5602
  %.sroa.45.0..sroa_idx.i.i.i262.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i262.i, align 8, !noalias !5602
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5602
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i254.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i253.i, %bb.os
  %.sroa.0.0.in.i.i.i255.i = phi ptr [ %i.awv, %bb.os ], [ %i.aww, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i253.i ]
  %.sroa.0.0.i6.i.i256.i = load i64, ptr %.sroa.0.0.in.i.i.i255.i, align 8, !noalias !5605, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !5600
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i257.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i257.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i254.i, %bb.oo
  %.sroa.05.0.i.i258.i = phi i64 [ %.sroa.0.0.i6.i.i256.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i254.i ], [ %i.awg, %bb.oo ] ; 4 uses
  %i.awx = icmp ugt i64 %.sroa.05.0.i.i258.i, 2305843009213693951
  br i1 %i.awx, label %bb.ou, label %bb.ot, !prof !29

bb.ot:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i257.i
  %i.awy = icmp samesign ult i64 %.sroa.05.0.i.i258.i, 17
  br i1 %i.awy, label %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit264_crit_edge.i, label %bb.ov, !prof !30

._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit264_crit_edge.i: ; preds = %bb.ot
  %.neg4.i259.i = mul nuw nsw i64 %.sroa.05.0.i.i258.i, 120
  %.val2.pre.i.pre.i103 = load ptr, ptr %i.awb, align 8, !noalias !5596
  %i.awz = and i64 %.neg4.i259.i, 120
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit264.i

bb.ou:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i257.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i258.i) #45, !noalias !5606
  unreachable

bb.ov:                                            ; preds = %bb.ot
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5606
  unreachable

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit264.i: ; preds = %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit264_crit_edge.i, %bb.on, %bb.om, %bb.ol, %bb.ok, %bb.oj
  %.val2.pre.i.i104 = phi ptr [ %.val2.pre.i.pre.i103, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit264_crit_edge.i ], [ %.val.i57.i, %bb.oj ], [ %.val.i57.i, %bb.om ], [ %.val.i57.i, %bb.ol ], [ %.val.i57.i, %bb.ok ], [ %.val.i57.i, %bb.on ]
  %.neg5.i260.i = phi i64 [ %i.awz, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit264_crit_edge.i ], [ 120, %bb.oj ], [ 64, %bb.om ], [ 96, %bb.ol ], [ 112, %bb.ok ], [ 0, %bb.on ]
  %i.axa = zext nneg i64 %.neg5.i260.i to i128
  %i.axb = lshr i128 -1, %i.axa
  %.neg.i261.i = xor i128 %.sroa.459.0.copyload.i98, -1
  %i.axc = add i128 %.sroa.058.0.copyload.i96, %.neg.i261.i
  %i.axd = and i128 %i.axb, %i.axc
  %i.axe = icmp uge i128 %.sroa.0.0.i.i63.i, %i.axd
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i.i105

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i.i105: ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit264.i, %bb.og
  %.val2.i.i106 = phi ptr [ %.val2.pre.i.i104, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit264.i ], [ %.val.i57.i, %bb.og ] ; 3 uses
  %.sroa.0.0.i.i.i107 = phi i1 [ %i.axe, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit264.i ], [ true, %bb.og ]
  %i.axf = load ptr, ptr %i.atj, align 8, !alias.scope !5595, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5607)
  %i.axg = load ptr, ptr %i.axf, align 8, !alias.scope !5607, !noalias !5596, !nonnull !5, !noundef !5 ; 2 uses
  %i.axh = load i8, ptr %i.axg, align 1, !range !13, !noalias !5608, !noundef !5
  %i.axi = trunc nuw i8 %i.axh to i1
  br i1 %i.axi, label %bb.ow, label %bb.ox

bb.ow:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i.i105
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axg, i64 1
  %i.axk = load i8, ptr %i.axj, align 1, !noalias !5608, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i106) ]
  %i.axl = load ptr, ptr %.val2.i.i106, align 8, !noalias !5608, !nonnull !5, !align !21, !noundef !5
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 338
  %i.axn = load i8, ptr %i.axm, align 2, !noalias !5608, !noundef !5
  %..i.i.i.i210 = call noundef i8 @llvm.umin.i8(i8 %i.axk, i8 %i.axn)
  %i.axo = and i8 %..i.i.i.i210, 63
  %i.axp = zext nneg i8 %i.axo to i64
  %i.axq = shl nuw i64 1, %i.axp
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit.i135

bb.ox:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i.i105
  %i.axr = load ptr, ptr %.val2.i.i106, align 8, !noalias !5608, !nonnull !5, !align !21, !noundef !5 ; 6 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 338
  %i.axt = load i8, ptr %i.axs, align 2, !noalias !5608, !noundef !5
  %i.axu = and i8 %i.axt, 63                      ; 2 uses
  %i.axv = zext nneg i8 %i.axu to i64
  %i.axw = shl nuw i64 1, %i.axv
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axr, i64 320
  %i.axy = load i64, ptr %i.axx, align 16, !noalias !5608, !noundef !5
  %.sroa.5.0..sroa_idx.i.i.i108 = getelementptr inbounds nuw i8, ptr %i.axr, i64 136
  %.sroa.5.0.copyload.i.i.i109 = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i108, align 8, !noalias !5608 ; 2 uses
  %.not.i3.i.i110 = icmp eq i8 %.sroa.5.0.copyload.i.i.i109, -1
  br i1 %.not.i3.i.i110, label %bb.pi, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %.sroa.6.0..sroa_idx.i.i.i111 = getelementptr inbounds nuw i8, ptr %i.axr, i64 137
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axr, i64 96
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axf, i64 8
  %i.ayb = load ptr, ptr %i.aya, align 8, !alias.scope !5607, !noalias !5596, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  %.sroa.062.0.copyload.i112 = load i128, ptr %i.axz, align 16, !noalias !5608
  %.sroa.463.0..sroa_idx.i113 = getelementptr inbounds nuw i8, ptr %i.axr, i64 112
  %.sroa.463.0.copyload.i114 = load i128, ptr %.sroa.463.0..sroa_idx.i113, align 16, !noalias !5608
  %.sroa.565.41.copyload.i115 = load i56, ptr %.sroa.6.0..sroa_idx.i.i.i111, align 1, !noalias !5608 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5609)
  call void @llvm.experimental.noalias.scope.decl(metadata !5610), !noalias !5611
  switch i8 %.sroa.5.0.copyload.i.i.i109, label %bb.oz [
    i8 0, label %switch.lookup10392
    i8 1, label %bb.pa
    i8 2, label %bb.pb
  ]

bb.oz:                                            ; preds = %bb.oy
  unreachable

bb.pa:                                            ; preds = %bb.oy
  %.sroa.44.0.extract.trunc.i.i.i116 = trunc i56 %.sroa.565.41.copyload.i115 to i8
  %i.ayc = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i.i116), !noalias !5612
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i.i124

bb.pb:                                            ; preds = %bb.oy
  %.sroa.565.41.insert.ext.i117 = zext i56 %.sroa.565.41.copyload.i115 to i64
  %.sroa.6.0.extract.shift.i.i.i118 = lshr i64 %.sroa.565.41.insert.ext.i117, 24
  %.sroa.6.0.extract.trunc.i.i.i119 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i118 to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5613), !noalias !5611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !5612
  store i32 %.sroa.6.0.extract.trunc.i.i.i119, ptr %i.an, align 4, !noalias !5614
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ayb, i64 72
  %i.aye = load i32, ptr %i.ayd, align 8, !alias.scope !5615, !noalias !5608, !noundef !5
  %i.ayf = icmp eq i32 %i.aye, %.sroa.6.0.extract.trunc.i.i.i119
  br i1 %i.ayf, label %bb.pe, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayb, i64 32
  %i.ayh = load ptr, ptr %i.ayg, align 8, !alias.scope !5615, !noalias !5608, !nonnull !5, !noundef !5 ; 2 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayb, i64 40
  %i.ayj = load i64, ptr %i.ayi, align 8, !alias.scope !5615, !noalias !5608, !noundef !5 ; 2 uses
  %.idx10345 = shl nuw nsw i64 %i.ayj, 5
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayh, i64 %.idx10345
  %i.ayl = icmp eq i64 %i.ayj, 0
  br i1 %i.ayl, label %._crit_edge10241, label %.lr.ph10240

bb.pd:                                            ; preds = %.lr.ph10240
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayo, i64 32 ; 2 uses
  %i.ayn = icmp eq ptr %i.aym, %i.ayk
  br i1 %i.ayn, label %._crit_edge10241, label %.lr.ph10240

.lr.ph10240:                                      ; preds = %bb.pc, %bb.pd
  %i.ayo = phi ptr [ %i.aym, %bb.pd ], [ %i.ayh, %bb.pc ] ; 3 uses
  %i.ayp = load i32, ptr %i.ayo, align 8, !noalias !5616, !noundef !5
  %i.ayq = icmp eq i32 %i.ayp, %.sroa.6.0.extract.trunc.i.i.i119
  br i1 %i.ayq, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i120, label %bb.pd

bb.pe:                                            ; preds = %bb.pb
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayb, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i.i121

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i120: ; preds = %.lr.ph10240
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayo, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i.i121

._crit_edge10241:                                 ; preds = %bb.pc, %bb.pd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !5614
  store ptr %i.an, ptr %i.am, align 8, !noalias !5614
  %.sroa.45.0..sroa_idx.i.i.i.i208 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i.i208, align 8, !noalias !5614
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5614
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i.i121: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i120, %bb.pe
  %.sroa.0.0.in.i.i.i.i122 = phi ptr [ %i.ayr, %bb.pe ], [ %i.ays, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i120 ]
  %.sroa.0.0.i6.i.i.i123 = load i64, ptr %.sroa.0.0.in.i.i.i.i122, align 8, !noalias !5617, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !5612
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i.i124

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i.i124: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i.i121, %bb.pa
  %.sroa.05.0.i.i.i125 = phi i64 [ %.sroa.0.0.i6.i.i.i123, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i.i121 ], [ %i.ayc, %bb.pa ] ; 4 uses
  %i.ayt = icmp ugt i64 %.sroa.05.0.i.i.i125, 2305843009213693951
  br i1 %i.ayt, label %bb.pg, label %bb.pf, !prof !29

bb.pf:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i.i124
  %.neg4.i.i126 = mul nsw i64 %.sroa.05.0.i.i.i125, -8
  %i.ayu = icmp samesign ult i64 %.sroa.05.0.i.i.i125, 17
  br i1 %i.ayu, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i127, label %bb.ph, !prof !30

bb.pg:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i.i124
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i.i125) #45, !noalias !5618
  unreachable

bb.ph:                                            ; preds = %bb.pf
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5618
  unreachable

switch.lookup10392:                               ; preds = %bb.oy
  %.sroa.44.0.extract.trunc.i.i.i116.mask = and i56 %.sroa.565.41.copyload.i115, 255
  %i.ayv = zext nneg i56 %.sroa.44.0.extract.trunc.i.i.i116.mask to i64
  %switch.gep10403 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.ayv
  %switch.load10404 = load i8, ptr %switch.gep10403, align 1
  %switch.ext10405 = zext i8 %switch.load10404 to i64
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i127

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i127: ; preds = %switch.lookup10392, %bb.pf
  %.neg5.i.i128 = phi i64 [ %.neg4.i.i126, %bb.pf ], [ %switch.ext10405, %switch.lookup10392 ]
  %i.ayw = and i64 %.neg5.i.i128, 120
  %i.ayx = zext nneg i64 %i.ayw to i128
  %i.ayy = lshr i128 -1, %i.ayx
  %.neg.i.i129 = xor i128 %.sroa.463.0.copyload.i114, -1
  %i.ayz = add i128 %.sroa.062.0.copyload.i112, %.neg.i.i129
  %i.aza = and i128 %i.ayy, %i.ayz
  br label %bb.pi

bb.pi:                                            ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i127, %bb.ox
  %.sroa.01.0.i.i.i130 = phi i128 [ %i.aza, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i127 ], [ 0, %bb.ox ]
  %..i14.i.i.i131 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.axy, i64 range(i64 1, -9223372036854775807) %i.axw)
  %i.azb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %..i14.i.i.i131, i1 true)
  %i.azc = trunc nuw nsw i64 %i.azb to i32        ; 3 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %i.axf, i64 16
  %i.aze = load ptr, ptr %i.azd, align 8, !alias.scope !5607, !noalias !5596, !nonnull !5, !align !21, !noundef !5
  %i.azf = load i128, ptr %i.aze, align 16, !noalias !5608, !noundef !5 ; 2 uses
  %.not10.i.i.i132 = icmp eq i128 %i.azf, 0
  br i1 %.not10.i.i.i132, label %bb.pk, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.azg = getelementptr inbounds nuw i8, ptr %i.axf, i64 24
  %i.azh = load ptr, ptr %i.azg, align 8, !alias.scope !5607, !noalias !5596, !nonnull !5, !noundef !5
  %i.azi = load i8, ptr %i.azh, align 1, !range !13, !noalias !5608, !noundef !5
  %i.azj = trunc nuw i8 %i.azi to i1
  br i1 %i.azj, label %bb.pl, label %bb.pm

bb.pk:                                            ; preds = %bb.pm, %bb.pl, %bb.pi
  %.sroa.07.0.i.i.i134 = phi i32 [ %spec.select.i.i.i207, %bb.pl ], [ %i.azc, %bb.pi ], [ %..i15.i.i.i133, %bb.pm ]
  %i.azk = zext nneg i32 %.sroa.07.0.i.i.i134 to i64
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit.i135

bb.pl:                                            ; preds = %bb.pj
  %i.azl = icmp eq i128 %.sroa.01.0.i.i.i130, %i.azf
  %i.azm = zext nneg i8 %i.axu to i32
  %spec.select.i.i.i207 = select i1 %i.azl, i32 %i.azm, i32 %i.azc
  br label %bb.pk

bb.pm:                                            ; preds = %bb.pj
  %i.azn = getelementptr inbounds nuw i8, ptr %i.axf, i64 32
  %i.azo = load ptr, ptr %i.azn, align 8, !alias.scope !5607, !noalias !5596, !nonnull !5, !align !11, !noundef !5
  %i.azp = load i64, ptr %i.azo, align 8, !noalias !5608, !noundef !5
  %i.azq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.azp, i1 false)
  %i.azr = trunc nuw nsw i64 %i.azq to i32
  %..i15.i.i.i133 = call noundef range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.azc, i32 range(i32 0, 129) %i.azr)
  br label %bb.pk

bb.pn:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit78.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.avy, i64 noundef %i.avx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #43, !noalias !5596
  unreachable

_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit.i135: ; preds = %bb.pk, %bb.ow
  %.sroa.0.0.i4.i.i136 = phi i64 [ %i.axq, %bb.ow ], [ %i.azk, %bb.pk ] ; 2 uses
  %i.azs = icmp eq i64 %.sroa.0.0.i4.i75.i, %.sroa.0.0.i4.i.i136
  %i.azt = icmp uge i64 %.sroa.0.0.i4.i75.i, %.sroa.0.0.i4.i.i136
  %.sroa.0.0.i.i.i.i = select i1 %i.azs, i1 %.sroa.0.0.i.i.i107, i1 %i.azt ; 2 uses
  %i.azu = getelementptr inbounds i8, ptr %.sroa.43.11246.i, i64 -4
  %.sroa.01.0.i.i137 = select i1 %.sroa.0.0.i.i.i.i, ptr %2, ptr %i.azu
  %i.azv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i.i137, i64 %.sroa.27.11247.i
  store i32 %.val26.i83, ptr %i.azv, align 4, !alias.scope !5569, !noalias !5619
  %i.azw = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.azx = add i64 %.sroa.27.11247.i, %i.azw      ; 2 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %.sroa.9.11248.i, i64 4
  %.val23.i138 = load i32, ptr %i.azy, align 4, !alias.scope !5568 ; 2 uses
  %.val.i28.i = load ptr, ptr %6, align 8, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5620)
  %i.azz = getelementptr inbounds nuw i8, ptr %.val.i28.i, i64 8 ; 2 uses
  %i.baa = load i64, ptr %i.azz, align 8, !alias.scope !5620, !noalias !5570, !noundef !5 ; 2 uses
  %i.bab = icmp ugt i64 %i.baa, %i.asb
  br i1 %i.bab, label %bb.po, label %bb.qv

bb.po:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit.i135
  %i.bac = load ptr, ptr %.val.i28.i, align 8, !alias.scope !5620, !noalias !5570, !nonnull !5, !align !11, !noundef !5
  %i.bad = getelementptr inbounds nuw [8 x i8], ptr %i.bac, i64 %i.asb ; 2 uses
  %.val.i100.i = load ptr, ptr %i.bad, align 8, !noalias !5621, !nonnull !5, !align !11, !noundef !5 ; 7 uses
  %i.bae = load ptr, ptr %.val.i100.i, align 8, !noalias !5621, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bae, i64 96
  %.sroa.084.0.copyload.i139 = load i128, ptr %i.baf, align 16, !noalias !5621
  %.sroa.485.0..sroa_idx.i140 = getelementptr inbounds nuw i8, ptr %i.bae, i64 112
  %.sroa.485.0.copyload.i141 = load i128, ptr %.sroa.485.0..sroa_idx.i140, align 16, !noalias !5621
  %.sroa.587.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.bae, i64 136
  %.sroa.587.0.copyload.i143 = load i64, ptr %.sroa.587.0..sroa_idx.i142, align 8, !noalias !5621 ; 3 uses
  %.sroa.587.40.extract.trunc.i144 = trunc i64 %.sroa.587.0.copyload.i143 to i8 ; 2 uses
  %.not.i.i101.i = icmp eq i8 %.sroa.587.40.extract.trunc.i144, -1
  br i1 %.not.i.i101.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i103.i, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.bag = getelementptr inbounds nuw i8, ptr %.val.i28.i, i64 16
  %i.bah = load ptr, ptr %i.bag, align 8, !alias.scope !5620, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5622)
  call void @llvm.experimental.noalias.scope.decl(metadata !5623), !noalias !5624
  %.sroa.44.0.extract.shift.i.i356.i = lshr i64 %.sroa.587.0.copyload.i143, 8
  %.sroa.44.0.extract.trunc.i.i357.i = trunc i64 %.sroa.44.0.extract.shift.i.i356.i to i8 ; 2 uses
  switch i8 %.sroa.587.40.extract.trunc.i144, label %bb.pq [
    i8 0, label %bb.pr
    i8 1, label %bb.pw
    i8 2, label %bb.px
  ]

bb.pq:                                            ; preds = %bb.pp
  unreachable

bb.pr:                                            ; preds = %bb.pp
  switch i8 %.sroa.44.0.extract.trunc.i.i357.i, label %default.unreachable25.i.i.i371.i [
    i8 0, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit372.i
    i8 1, label %bb.ps
    i8 2, label %bb.pt
    i8 3, label %bb.pu
    i8 4, label %bb.pv
  ]

default.unreachable25.i.i.i371.i:                 ; preds = %bb.pr
  unreachable

bb.ps:                                            ; preds = %bb.pr
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit372.i

bb.pt:                                            ; preds = %bb.pr
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit372.i

bb.pu:                                            ; preds = %bb.pr
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit372.i

bb.pv:                                            ; preds = %bb.pr
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit372.i

bb.pw:                                            ; preds = %bb.pp
  %i.bai = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i357.i), !noalias !5625
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i365.i

bb.px:                                            ; preds = %bb.pp
  %.sroa.6.0.extract.shift.i.i359.i = lshr i64 %.sroa.587.0.copyload.i143, 32
  %.sroa.6.0.extract.trunc.i.i360.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i359.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5626), !noalias !5624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !5625
  store i32 %.sroa.6.0.extract.trunc.i.i360.i, ptr %i.z, align 4, !noalias !5627
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bah, i64 72
  %i.bak = load i32, ptr %i.baj, align 8, !alias.scope !5628, !noalias !5621, !noundef !5
  %i.bal = icmp eq i32 %i.bak, %.sroa.6.0.extract.trunc.i.i360.i
  br i1 %i.bal, label %bb.qa, label %bb.py

bb.py:                                            ; preds = %bb.px
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bah, i64 32
  %i.ban = load ptr, ptr %i.bam, align 8, !alias.scope !5628, !noalias !5621, !nonnull !5, !noundef !5 ; 2 uses
  %i.bao = getelementptr inbounds nuw i8, ptr %i.bah, i64 40
  %i.bap = load i64, ptr %i.bao, align 8, !alias.scope !5628, !noalias !5621, !noundef !5 ; 2 uses
  %.idx10346 = shl nuw nsw i64 %i.bap, 5
  %i.baq = getelementptr inbounds nuw i8, ptr %i.ban, i64 %.idx10346
  %i.bar = icmp eq i64 %i.bap, 0
  br i1 %i.bar, label %._crit_edge10245, label %.lr.ph10244

bb.pz:                                            ; preds = %.lr.ph10244
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bau, i64 32 ; 2 uses
  %i.bat = icmp eq ptr %i.bas, %i.baq
  br i1 %i.bat, label %._crit_edge10245, label %.lr.ph10244

.lr.ph10244:                                      ; preds = %bb.py, %bb.pz
  %i.bau = phi ptr [ %i.bas, %bb.pz ], [ %i.ban, %bb.py ] ; 3 uses
  %i.bav = load i32, ptr %i.bau, align 8, !noalias !5629, !noundef !5
  %i.baw = icmp eq i32 %i.bav, %.sroa.6.0.extract.trunc.i.i360.i
  br i1 %i.baw, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i361.i, label %bb.pz

bb.qa:                                            ; preds = %bb.px
  %i.bax = getelementptr inbounds nuw i8, ptr %i.bah, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i362.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i361.i: ; preds = %.lr.ph10244
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bau, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i362.i

._crit_edge10245:                                 ; preds = %bb.py, %bb.pz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !5627
  store ptr %i.z, ptr %i.y, align 8, !noalias !5627
  %.sroa.45.0..sroa_idx.i.i.i370.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i370.i, align 8, !noalias !5627
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5627
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i362.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i361.i, %bb.qa
  %.sroa.0.0.in.i.i.i363.i = phi ptr [ %i.bax, %bb.qa ], [ %i.bay, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i361.i ]
  %.sroa.0.0.i6.i.i364.i = load i64, ptr %.sroa.0.0.in.i.i.i363.i, align 8, !noalias !5630, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !5625
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i365.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i365.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i362.i, %bb.pw
  %.sroa.05.0.i.i366.i = phi i64 [ %.sroa.0.0.i6.i.i364.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i362.i ], [ %i.bai, %bb.pw ] ; 4 uses
  %i.baz = icmp ugt i64 %.sroa.05.0.i.i366.i, 2305843009213693951
  br i1 %i.baz, label %bb.qc, label %bb.qb, !prof !29

bb.qb:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i365.i
  %i.bba = icmp samesign ult i64 %.sroa.05.0.i.i366.i, 17
  br i1 %i.bba, label %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit372_crit_edge.i, label %bb.qd, !prof !30

._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit372_crit_edge.i: ; preds = %bb.qb
  %.neg4.i367.i = mul nuw nsw i64 %.sroa.05.0.i.i366.i, 120
  %.val2.pre.i102.pre.i = load ptr, ptr %i.bad, align 8, !noalias !5621
  %i.bbb = and i64 %.neg4.i367.i, 120
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit372.i

bb.qc:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i365.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i366.i) #45, !noalias !5631
  unreachable

bb.qd:                                            ; preds = %bb.qb
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5631
  unreachable

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit372.i: ; preds = %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit372_crit_edge.i, %bb.pv, %bb.pu, %bb.pt, %bb.ps, %bb.pr
  %.val2.pre.i102.i = phi ptr [ %.val2.pre.i102.pre.i, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit372_crit_edge.i ], [ %.val.i100.i, %bb.pr ], [ %.val.i100.i, %bb.pu ], [ %.val.i100.i, %bb.pt ], [ %.val.i100.i, %bb.ps ], [ %.val.i100.i, %bb.pv ]
  %.neg5.i368.i = phi i64 [ %i.bbb, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit372_crit_edge.i ], [ 120, %bb.pr ], [ 64, %bb.pu ], [ 96, %bb.pt ], [ 112, %bb.ps ], [ 0, %bb.pv ]
  %i.bbc = zext nneg i64 %.neg5.i368.i to i128
  %i.bbd = lshr i128 -1, %i.bbc
  %.neg.i369.i = xor i128 %.sroa.485.0.copyload.i141, -1
  %i.bbe = add i128 %.sroa.084.0.copyload.i139, %.neg.i369.i
  %i.bbf = and i128 %i.bbd, %i.bbe
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i103.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i103.i: ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit372.i, %bb.po
  %.val2.i104.i = phi ptr [ %.val2.pre.i102.i, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit372.i ], [ %.val.i100.i, %bb.po ] ; 3 uses
  %.sroa.0.0.i.i105.i = phi i128 [ %i.bbf, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit372.i ], [ 0, %bb.po ]
  %i.bbg = getelementptr inbounds nuw i8, ptr %.val.i28.i, i64 24 ; 2 uses
  %i.bbh = load ptr, ptr %i.bbg, align 8, !alias.scope !5620, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5632)
  %i.bbi = load ptr, ptr %i.bbh, align 8, !alias.scope !5632, !noalias !5621, !nonnull !5, !noundef !5 ; 2 uses
  %i.bbj = load i8, ptr %i.bbi, align 1, !range !13, !noalias !5633, !noundef !5
  %i.bbk = trunc nuw i8 %i.bbj to i1
  br i1 %i.bbk, label %bb.qe, label %bb.qf

bb.qe:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i103.i
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbi, i64 1
  %i.bbm = load i8, ptr %i.bbl, align 1, !noalias !5633, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i104.i) ]
  %i.bbn = load ptr, ptr %.val2.i104.i, align 8, !noalias !5633, !nonnull !5, !align !21, !noundef !5
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbn, i64 338
  %i.bbp = load i8, ptr %i.bbo, align 2, !noalias !5633, !noundef !5
  %..i.i.i119.i = call noundef i8 @llvm.umin.i8(i8 %i.bbm, i8 %i.bbp)
  %i.bbq = and i8 %..i.i.i119.i, 63
  %i.bbr = zext nneg i8 %i.bbq to i64
  %i.bbs = shl nuw i64 1, %i.bbr
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit120.i

bb.qf:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i103.i
  %i.bbt = load ptr, ptr %.val2.i104.i, align 8, !noalias !5633, !nonnull !5, !align !21, !noundef !5 ; 6 uses
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbt, i64 338
  %i.bbv = load i8, ptr %i.bbu, align 2, !noalias !5633, !noundef !5
  %i.bbw = and i8 %i.bbv, 63                      ; 2 uses
  %i.bbx = zext nneg i8 %i.bbw to i64
  %i.bby = shl nuw i64 1, %i.bbx
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bbt, i64 320
  %i.bca = load i64, ptr %i.bbz, align 16, !noalias !5633, !noundef !5
  %.sroa.5.0..sroa_idx.i.i106.i = getelementptr inbounds nuw i8, ptr %i.bbt, i64 136
  %.sroa.5.0.copyload.i.i107.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i106.i, align 8, !noalias !5633 ; 2 uses
  %.not.i3.i108.i = icmp eq i8 %.sroa.5.0.copyload.i.i107.i, -1
  br i1 %.not.i3.i108.i, label %bb.qq, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %.sroa.6.0..sroa_idx.i.i109.i = getelementptr inbounds nuw i8, ptr %i.bbt, i64 137
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bbt, i64 96
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bbh, i64 8
  %i.bcd = load ptr, ptr %i.bcc, align 8, !alias.scope !5632, !noalias !5621, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  %.sroa.089.0.copyload.i145 = load i128, ptr %i.bcb, align 16, !noalias !5633
  %.sroa.490.0..sroa_idx.i146 = getelementptr inbounds nuw i8, ptr %i.bbt, i64 112
  %.sroa.490.0.copyload.i147 = load i128, ptr %.sroa.490.0..sroa_idx.i146, align 16, !noalias !5633
  %.sroa.592.41.copyload.i148 = load i56, ptr %.sroa.6.0..sroa_idx.i.i109.i, align 1, !noalias !5633 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5634)
  call void @llvm.experimental.noalias.scope.decl(metadata !5635), !noalias !5636
  switch i8 %.sroa.5.0.copyload.i.i107.i, label %bb.qh [
    i8 0, label %switch.lookup10395
    i8 1, label %bb.qi
    i8 2, label %bb.qj
  ]

bb.qh:                                            ; preds = %bb.qg
  unreachable

bb.qi:                                            ; preds = %bb.qg
  %.sroa.44.0.extract.trunc.i.i339.i = trunc i56 %.sroa.592.41.copyload.i148 to i8
  %i.bce = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i339.i), !noalias !5637
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i347.i

bb.qj:                                            ; preds = %bb.qg
  %.sroa.592.41.insert.ext.i149 = zext i56 %.sroa.592.41.copyload.i148 to i64
  %.sroa.6.0.extract.shift.i.i341.i = lshr i64 %.sroa.592.41.insert.ext.i149, 24
  %.sroa.6.0.extract.trunc.i.i342.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i341.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5638), !noalias !5636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !5637
  store i32 %.sroa.6.0.extract.trunc.i.i342.i, ptr %i.ab, align 4, !noalias !5639
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bcd, i64 72
  %i.bcg = load i32, ptr %i.bcf, align 8, !alias.scope !5640, !noalias !5633, !noundef !5
  %i.bch = icmp eq i32 %i.bcg, %.sroa.6.0.extract.trunc.i.i342.i
  br i1 %i.bch, label %bb.qm, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bcd, i64 32
  %i.bcj = load ptr, ptr %i.bci, align 8, !alias.scope !5640, !noalias !5633, !nonnull !5, !noundef !5 ; 2 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bcd, i64 40
  %i.bcl = load i64, ptr %i.bck, align 8, !alias.scope !5640, !noalias !5633, !noundef !5 ; 2 uses
  %.idx10347 = shl nuw nsw i64 %i.bcl, 5
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bcj, i64 %.idx10347
  %i.bcn = icmp eq i64 %i.bcl, 0
  br i1 %i.bcn, label %._crit_edge10249, label %.lr.ph10248

bb.ql:                                            ; preds = %.lr.ph10248
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcq, i64 32 ; 2 uses
  %i.bcp = icmp eq ptr %i.bco, %i.bcm
  br i1 %i.bcp, label %._crit_edge10249, label %.lr.ph10248

.lr.ph10248:                                      ; preds = %bb.qk, %bb.ql
  %i.bcq = phi ptr [ %i.bco, %bb.ql ], [ %i.bcj, %bb.qk ] ; 3 uses
  %i.bcr = load i32, ptr %i.bcq, align 8, !noalias !5641, !noundef !5
  %i.bcs = icmp eq i32 %i.bcr, %.sroa.6.0.extract.trunc.i.i342.i
  br i1 %i.bcs, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i343.i, label %bb.ql

bb.qm:                                            ; preds = %bb.qj
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcd, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i344.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i343.i: ; preds = %.lr.ph10248
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bcq, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i344.i

._crit_edge10249:                                 ; preds = %bb.qk, %bb.ql
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !5639
  store ptr %i.ab, ptr %i.aa, align 8, !noalias !5639
  %.sroa.45.0..sroa_idx.i.i.i352.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i352.i, align 8, !noalias !5639
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5639
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i344.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i343.i, %bb.qm
  %.sroa.0.0.in.i.i.i345.i = phi ptr [ %i.bct, %bb.qm ], [ %i.bcu, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i343.i ]
  %.sroa.0.0.i6.i.i346.i = load i64, ptr %.sroa.0.0.in.i.i.i345.i, align 8, !noalias !5642, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !5637
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i347.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i347.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i344.i, %bb.qi
  %.sroa.05.0.i.i348.i = phi i64 [ %.sroa.0.0.i6.i.i346.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i344.i ], [ %i.bce, %bb.qi ] ; 4 uses
  %i.bcv = icmp ugt i64 %.sroa.05.0.i.i348.i, 2305843009213693951
  br i1 %i.bcv, label %bb.qo, label %bb.qn, !prof !29

bb.qn:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i347.i
  %.neg4.i349.i = mul nsw i64 %.sroa.05.0.i.i348.i, -8
  %i.bcw = icmp samesign ult i64 %.sroa.05.0.i.i348.i, 17
  br i1 %i.bcw, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit354.i, label %bb.qp, !prof !30

bb.qo:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i347.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i348.i) #45, !noalias !5643
  unreachable

bb.qp:                                            ; preds = %bb.qn
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5643
  unreachable

switch.lookup10395:                               ; preds = %bb.qg
  %.sroa.44.0.extract.trunc.i.i339.i.mask = and i56 %.sroa.592.41.copyload.i148, 255
  %i.bcx = zext nneg i56 %.sroa.44.0.extract.trunc.i.i339.i.mask to i64
  %switch.gep10407 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.bcx
  %switch.load10408 = load i8, ptr %switch.gep10407, align 1
  %switch.ext10409 = zext i8 %switch.load10408 to i64
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit354.i

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit354.i: ; preds = %switch.lookup10395, %bb.qn
  %.neg5.i350.i = phi i64 [ %.neg4.i349.i, %bb.qn ], [ %switch.ext10409, %switch.lookup10395 ]
  %i.bcy = and i64 %.neg5.i350.i, 120
  %i.bcz = zext nneg i64 %i.bcy to i128
  %i.bda = lshr i128 -1, %i.bcz
  %.neg.i351.i = xor i128 %.sroa.490.0.copyload.i147, -1
  %i.bdb = add i128 %.sroa.089.0.copyload.i145, %.neg.i351.i
  %i.bdc = and i128 %i.bda, %i.bdb
  br label %bb.qq

bb.qq:                                            ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit354.i, %bb.qf
  %.sroa.01.0.i.i112.i = phi i128 [ %i.bdc, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit354.i ], [ 0, %bb.qf ]
  %..i14.i.i113.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.bca, i64 range(i64 1, -9223372036854775807) %i.bby)
  %i.bdd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %..i14.i.i113.i, i1 true)
  %i.bde = trunc nuw nsw i64 %i.bdd to i32        ; 3 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bbh, i64 16
  %i.bdg = load ptr, ptr %i.bdf, align 8, !alias.scope !5632, !noalias !5621, !nonnull !5, !align !21, !noundef !5
  %i.bdh = load i128, ptr %i.bdg, align 16, !noalias !5633, !noundef !5 ; 2 uses
  %.not10.i.i114.i = icmp eq i128 %i.bdh, 0
  br i1 %.not10.i.i114.i, label %bb.qs, label %bb.qr

bb.qr:                                            ; preds = %bb.qq
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bbh, i64 24
  %i.bdj = load ptr, ptr %i.bdi, align 8, !alias.scope !5632, !noalias !5621, !nonnull !5, !noundef !5
  %i.bdk = load i8, ptr %i.bdj, align 1, !range !13, !noalias !5633, !noundef !5
  %i.bdl = trunc nuw i8 %i.bdk to i1
  br i1 %i.bdl, label %bb.qt, label %bb.qu

bb.qs:                                            ; preds = %bb.qu, %bb.qt, %bb.qq
  %.sroa.07.0.i.i116.i = phi i32 [ %spec.select.i.i118.i, %bb.qt ], [ %i.bde, %bb.qq ], [ %..i15.i.i115.i, %bb.qu ]
  %i.bdm = zext nneg i32 %.sroa.07.0.i.i116.i to i64
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit120.i

bb.qt:                                            ; preds = %bb.qr
  %i.bdn = icmp eq i128 %.sroa.01.0.i.i112.i, %i.bdh
  %i.bdo = zext nneg i8 %i.bbw to i32
  %spec.select.i.i118.i = select i1 %i.bdn, i32 %i.bdo, i32 %i.bde
  br label %bb.qs

bb.qu:                                            ; preds = %bb.qr
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bbh, i64 32
  %i.bdq = load ptr, ptr %i.bdp, align 8, !alias.scope !5632, !noalias !5621, !nonnull !5, !align !11, !noundef !5
  %i.bdr = load i64, ptr %i.bdq, align 8, !noalias !5633, !noundef !5
  %i.bds = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bdr, i1 false)
  %i.bdt = trunc nuw nsw i64 %i.bds to i32
  %..i15.i.i115.i = call noundef range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.bde, i32 range(i32 0, 129) %i.bdt)
  br label %bb.qs

bb.qv:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit.i135
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.asb, i64 noundef %i.baa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #43, !noalias !5621
  unreachable

_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit120.i: ; preds = %bb.qs, %bb.qe
  %.sroa.0.0.i4.i117.i = phi i64 [ %i.bbs, %bb.qe ], [ %i.bdm, %bb.qs ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5644)
  %i.bdu = load i64, ptr %i.azz, align 8, !alias.scope !5644, !noalias !5570, !noundef !5 ; 2 uses
  %i.bdv = zext i32 %.val23.i138 to i64           ; 3 uses
  %i.bdw = icmp ugt i64 %i.bdu, %i.bdv
  br i1 %i.bdw, label %bb.qw, label %bb.sd

bb.qw:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit120.i
  %i.bdx = load ptr, ptr %.val.i28.i, align 8, !alias.scope !5644, !noalias !5570, !nonnull !5, !align !11, !noundef !5
  %i.bdy = getelementptr inbounds nuw [8 x i8], ptr %i.bdx, i64 %i.bdv ; 2 uses
  %.val.i79.i = load ptr, ptr %i.bdy, align 8, !noalias !5645, !nonnull !5, !align !11, !noundef !5 ; 7 uses
  %i.bdz = load ptr, ptr %.val.i79.i, align 8, !noalias !5645, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdz, i64 96
  %.sroa.075.0.copyload.i150 = load i128, ptr %i.bea, align 16, !noalias !5645
  %.sroa.476.0..sroa_idx.i151 = getelementptr inbounds nuw i8, ptr %i.bdz, i64 112
  %.sroa.476.0.copyload.i152 = load i128, ptr %.sroa.476.0..sroa_idx.i151, align 16, !noalias !5645
  %.sroa.578.0..sroa_idx.i153 = getelementptr inbounds nuw i8, ptr %i.bdz, i64 136
  %.sroa.578.0.copyload.i154 = load i64, ptr %.sroa.578.0..sroa_idx.i153, align 8, !noalias !5645 ; 3 uses
  %.sroa.578.40.extract.trunc.i155 = trunc i64 %.sroa.578.0.copyload.i154 to i8 ; 2 uses
  %.not.i.i80.i = icmp eq i8 %.sroa.578.40.extract.trunc.i155, -1
  br i1 %.not.i.i80.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i82.i, label %bb.qx

bb.qx:                                            ; preds = %bb.qw
  %i.beb = getelementptr inbounds nuw i8, ptr %.val.i28.i, i64 16
  %i.bec = load ptr, ptr %i.beb, align 8, !alias.scope !5644, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5646)
  call void @llvm.experimental.noalias.scope.decl(metadata !5647), !noalias !5648
  %.sroa.44.0.extract.shift.i.i320.i = lshr i64 %.sroa.578.0.copyload.i154, 8
  %.sroa.44.0.extract.trunc.i.i321.i = trunc i64 %.sroa.44.0.extract.shift.i.i320.i to i8 ; 2 uses
  switch i8 %.sroa.578.40.extract.trunc.i155, label %bb.qy [
    i8 0, label %bb.qz
    i8 1, label %bb.re
    i8 2, label %bb.rf
  ]

bb.qy:                                            ; preds = %bb.qx
  unreachable

bb.qz:                                            ; preds = %bb.qx
  switch i8 %.sroa.44.0.extract.trunc.i.i321.i, label %default.unreachable25.i.i.i335.i [
    i8 0, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit336.i
    i8 1, label %bb.ra
    i8 2, label %bb.rb
    i8 3, label %bb.rc
    i8 4, label %bb.rd
  ]

default.unreachable25.i.i.i335.i:                 ; preds = %bb.qz
  unreachable

bb.ra:                                            ; preds = %bb.qz
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit336.i

bb.rb:                                            ; preds = %bb.qz
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit336.i

bb.rc:                                            ; preds = %bb.qz
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit336.i

bb.rd:                                            ; preds = %bb.qz
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit336.i

bb.re:                                            ; preds = %bb.qx
  %i.bed = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i321.i), !noalias !5649
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i329.i

bb.rf:                                            ; preds = %bb.qx
  %.sroa.6.0.extract.shift.i.i323.i = lshr i64 %.sroa.578.0.copyload.i154, 32
  %.sroa.6.0.extract.trunc.i.i324.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i323.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5650), !noalias !5648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !5649
  store i32 %.sroa.6.0.extract.trunc.i.i324.i, ptr %i.ad, align 4, !noalias !5651
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bec, i64 72
  %i.bef = load i32, ptr %i.bee, align 8, !alias.scope !5652, !noalias !5645, !noundef !5
  %i.beg = icmp eq i32 %i.bef, %.sroa.6.0.extract.trunc.i.i324.i
  br i1 %i.beg, label %bb.ri, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bec, i64 32
  %i.bei = load ptr, ptr %i.beh, align 8, !alias.scope !5652, !noalias !5645, !nonnull !5, !noundef !5 ; 2 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bec, i64 40
  %i.bek = load i64, ptr %i.bej, align 8, !alias.scope !5652, !noalias !5645, !noundef !5 ; 2 uses
  %.idx10348 = shl nuw nsw i64 %i.bek, 5
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bei, i64 %.idx10348
  %i.bem = icmp eq i64 %i.bek, 0
  br i1 %i.bem, label %._crit_edge10253, label %.lr.ph10252

bb.rh:                                            ; preds = %.lr.ph10252
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bep, i64 32 ; 2 uses
  %i.beo = icmp eq ptr %i.ben, %i.bel
  br i1 %i.beo, label %._crit_edge10253, label %.lr.ph10252

.lr.ph10252:                                      ; preds = %bb.rg, %bb.rh
  %i.bep = phi ptr [ %i.ben, %bb.rh ], [ %i.bei, %bb.rg ] ; 3 uses
  %i.beq = load i32, ptr %i.bep, align 8, !noalias !5653, !noundef !5
  %i.ber = icmp eq i32 %i.beq, %.sroa.6.0.extract.trunc.i.i324.i
  br i1 %i.ber, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i325.i, label %bb.rh

bb.ri:                                            ; preds = %bb.rf
  %i.bes = getelementptr inbounds nuw i8, ptr %i.bec, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i326.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i325.i: ; preds = %.lr.ph10252
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bep, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i326.i

._crit_edge10253:                                 ; preds = %bb.rg, %bb.rh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !5651
  store ptr %i.ad, ptr %i.ac, align 8, !noalias !5651
  %.sroa.45.0..sroa_idx.i.i.i334.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i334.i, align 8, !noalias !5651
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5651
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i326.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i325.i, %bb.ri
  %.sroa.0.0.in.i.i.i327.i = phi ptr [ %i.bes, %bb.ri ], [ %i.bet, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i325.i ]
  %.sroa.0.0.i6.i.i328.i = load i64, ptr %.sroa.0.0.in.i.i.i327.i, align 8, !noalias !5654, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !5649
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i329.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i329.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i326.i, %bb.re
  %.sroa.05.0.i.i330.i = phi i64 [ %.sroa.0.0.i6.i.i328.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i326.i ], [ %i.bed, %bb.re ] ; 4 uses
  %i.beu = icmp ugt i64 %.sroa.05.0.i.i330.i, 2305843009213693951
  br i1 %i.beu, label %bb.rk, label %bb.rj, !prof !29

bb.rj:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i329.i
  %i.bev = icmp samesign ult i64 %.sroa.05.0.i.i330.i, 17
  br i1 %i.bev, label %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit336_crit_edge.i, label %bb.rl, !prof !30

._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit336_crit_edge.i: ; preds = %bb.rj
  %.neg4.i331.i = mul nuw nsw i64 %.sroa.05.0.i.i330.i, 120
  %.val2.pre.i81.pre.i = load ptr, ptr %i.bdy, align 8, !noalias !5645
  %i.bew = and i64 %.neg4.i331.i, 120
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit336.i

bb.rk:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i329.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i330.i) #45, !noalias !5655
  unreachable

bb.rl:                                            ; preds = %bb.rj
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5655
  unreachable

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit336.i: ; preds = %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit336_crit_edge.i, %bb.rd, %bb.rc, %bb.rb, %bb.ra, %bb.qz
  %.val2.pre.i81.i = phi ptr [ %.val2.pre.i81.pre.i, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit336_crit_edge.i ], [ %.val.i79.i, %bb.qz ], [ %.val.i79.i, %bb.rc ], [ %.val.i79.i, %bb.rb ], [ %.val.i79.i, %bb.ra ], [ %.val.i79.i, %bb.rd ]
  %.neg5.i332.i = phi i64 [ %i.bew, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit336_crit_edge.i ], [ 120, %bb.qz ], [ 64, %bb.rc ], [ 96, %bb.rb ], [ 112, %bb.ra ], [ 0, %bb.rd ]
  %i.bex = zext nneg i64 %.neg5.i332.i to i128
  %i.bey = lshr i128 -1, %i.bex
  %.neg.i333.i = xor i128 %.sroa.476.0.copyload.i152, -1
  %i.bez = add i128 %.sroa.075.0.copyload.i150, %.neg.i333.i
  %i.bfa = and i128 %i.bey, %i.bez
  %i.bfb = icmp uge i128 %.sroa.0.0.i.i105.i, %i.bfa
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i82.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i82.i: ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit336.i, %bb.qw
  %.val2.i83.i = phi ptr [ %.val2.pre.i81.i, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit336.i ], [ %.val.i79.i, %bb.qw ] ; 3 uses
  %.sroa.0.0.i.i84.i = phi i1 [ %i.bfb, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit336.i ], [ true, %bb.qw ]
  %i.bfc = load ptr, ptr %i.bbg, align 8, !alias.scope !5644, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5656)
  %i.bfd = load ptr, ptr %i.bfc, align 8, !alias.scope !5656, !noalias !5645, !nonnull !5, !noundef !5 ; 2 uses
  %i.bfe = load i8, ptr %i.bfd, align 1, !range !13, !noalias !5657, !noundef !5
  %i.bff = trunc nuw i8 %i.bfe to i1
  br i1 %i.bff, label %bb.rm, label %bb.rn

bb.rm:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i82.i
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bfd, i64 1
  %i.bfh = load i8, ptr %i.bfg, align 1, !noalias !5657, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i83.i) ]
  %i.bfi = load ptr, ptr %.val2.i83.i, align 8, !noalias !5657, !nonnull !5, !align !21, !noundef !5
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bfi, i64 338
  %i.bfk = load i8, ptr %i.bfj, align 2, !noalias !5657, !noundef !5
  %..i.i.i98.i = call noundef i8 @llvm.umin.i8(i8 %i.bfh, i8 %i.bfk)
  %i.bfl = and i8 %..i.i.i98.i, 63
  %i.bfm = zext nneg i8 %i.bfl to i64
  %i.bfn = shl nuw i64 1, %i.bfm
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit99.i

bb.rn:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i82.i
  %i.bfo = load ptr, ptr %.val2.i83.i, align 8, !noalias !5657, !nonnull !5, !align !21, !noundef !5 ; 6 uses
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfo, i64 338
  %i.bfq = load i8, ptr %i.bfp, align 2, !noalias !5657, !noundef !5
  %i.bfr = and i8 %i.bfq, 63                      ; 2 uses
  %i.bfs = zext nneg i8 %i.bfr to i64
  %i.bft = shl nuw i64 1, %i.bfs
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bfo, i64 320
  %i.bfv = load i64, ptr %i.bfu, align 16, !noalias !5657, !noundef !5
  %.sroa.5.0..sroa_idx.i.i85.i = getelementptr inbounds nuw i8, ptr %i.bfo, i64 136
  %.sroa.5.0.copyload.i.i86.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i85.i, align 8, !noalias !5657 ; 2 uses
  %.not.i3.i87.i = icmp eq i8 %.sroa.5.0.copyload.i.i86.i, -1
  br i1 %.not.i3.i87.i, label %bb.ry, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  %.sroa.6.0..sroa_idx.i.i88.i = getelementptr inbounds nuw i8, ptr %i.bfo, i64 137
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfo, i64 96
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfc, i64 8
  %i.bfy = load ptr, ptr %i.bfx, align 8, !alias.scope !5656, !noalias !5645, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  %.sroa.080.0.copyload.i156 = load i128, ptr %i.bfw, align 16, !noalias !5657
  %.sroa.481.0..sroa_idx.i157 = getelementptr inbounds nuw i8, ptr %i.bfo, i64 112
  %.sroa.481.0.copyload.i158 = load i128, ptr %.sroa.481.0..sroa_idx.i157, align 16, !noalias !5657
  %.sroa.583.41.copyload.i159 = load i56, ptr %.sroa.6.0..sroa_idx.i.i88.i, align 1, !noalias !5657 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5658)
  call void @llvm.experimental.noalias.scope.decl(metadata !5659), !noalias !5660
  switch i8 %.sroa.5.0.copyload.i.i86.i, label %bb.rp [
    i8 0, label %switch.lookup10398
    i8 1, label %bb.rq
    i8 2, label %bb.rr
  ]

bb.rp:                                            ; preds = %bb.ro
  unreachable

bb.rq:                                            ; preds = %bb.ro
  %.sroa.44.0.extract.trunc.i.i303.i = trunc i56 %.sroa.583.41.copyload.i159 to i8
  %i.bfz = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i303.i), !noalias !5661
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i311.i

bb.rr:                                            ; preds = %bb.ro
  %.sroa.583.41.insert.ext.i160 = zext i56 %.sroa.583.41.copyload.i159 to i64
  %.sroa.6.0.extract.shift.i.i305.i = lshr i64 %.sroa.583.41.insert.ext.i160, 24
  %.sroa.6.0.extract.trunc.i.i306.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i305.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5662), !noalias !5660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !5661
  store i32 %.sroa.6.0.extract.trunc.i.i306.i, ptr %i.af, align 4, !noalias !5663
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfy, i64 72
  %i.bgb = load i32, ptr %i.bga, align 8, !alias.scope !5664, !noalias !5657, !noundef !5
  %i.bgc = icmp eq i32 %i.bgb, %.sroa.6.0.extract.trunc.i.i306.i
  br i1 %i.bgc, label %bb.ru, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bfy, i64 32
  %i.bge = load ptr, ptr %i.bgd, align 8, !alias.scope !5664, !noalias !5657, !nonnull !5, !noundef !5 ; 2 uses
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bfy, i64 40
  %i.bgg = load i64, ptr %i.bgf, align 8, !alias.scope !5664, !noalias !5657, !noundef !5 ; 2 uses
  %.idx10349 = shl nuw nsw i64 %i.bgg, 5
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bge, i64 %.idx10349
  %i.bgi = icmp eq i64 %i.bgg, 0
  br i1 %i.bgi, label %._crit_edge10257, label %.lr.ph10256

bb.rt:                                            ; preds = %.lr.ph10256
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgl, i64 32 ; 2 uses
  %i.bgk = icmp eq ptr %i.bgj, %i.bgh
  br i1 %i.bgk, label %._crit_edge10257, label %.lr.ph10256

.lr.ph10256:                                      ; preds = %bb.rs, %bb.rt
  %i.bgl = phi ptr [ %i.bgj, %bb.rt ], [ %i.bge, %bb.rs ] ; 3 uses
  %i.bgm = load i32, ptr %i.bgl, align 8, !noalias !5665, !noundef !5
  %i.bgn = icmp eq i32 %i.bgm, %.sroa.6.0.extract.trunc.i.i306.i
  br i1 %i.bgn, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i307.i, label %bb.rt

bb.ru:                                            ; preds = %bb.rr
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bfy, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i308.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i307.i: ; preds = %.lr.ph10256
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgl, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i308.i

._crit_edge10257:                                 ; preds = %bb.rs, %bb.rt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !5663
  store ptr %i.af, ptr %i.ae, align 8, !noalias !5663
  %.sroa.45.0..sroa_idx.i.i.i316.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i316.i, align 8, !noalias !5663
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5663
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i308.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i307.i, %bb.ru
  %.sroa.0.0.in.i.i.i309.i = phi ptr [ %i.bgo, %bb.ru ], [ %i.bgp, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i307.i ]
  %.sroa.0.0.i6.i.i310.i = load i64, ptr %.sroa.0.0.in.i.i.i309.i, align 8, !noalias !5666, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !5661
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i311.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i311.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i308.i, %bb.rq
  %.sroa.05.0.i.i312.i = phi i64 [ %.sroa.0.0.i6.i.i310.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i308.i ], [ %i.bfz, %bb.rq ] ; 4 uses
  %i.bgq = icmp ugt i64 %.sroa.05.0.i.i312.i, 2305843009213693951
  br i1 %i.bgq, label %bb.rw, label %bb.rv, !prof !29

bb.rv:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i311.i
  %.neg4.i313.i = mul nsw i64 %.sroa.05.0.i.i312.i, -8
  %i.bgr = icmp samesign ult i64 %.sroa.05.0.i.i312.i, 17
  br i1 %i.bgr, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit318.i, label %bb.rx, !prof !30

bb.rw:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i311.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i312.i) #45, !noalias !5667
  unreachable

bb.rx:                                            ; preds = %bb.rv
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5667
  unreachable

switch.lookup10398:                               ; preds = %bb.ro
  %.sroa.44.0.extract.trunc.i.i303.i.mask = and i56 %.sroa.583.41.copyload.i159, 255
  %i.bgs = zext nneg i56 %.sroa.44.0.extract.trunc.i.i303.i.mask to i64
  %switch.gep10411 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.bgs
  %switch.load10412 = load i8, ptr %switch.gep10411, align 1
  %switch.ext10413 = zext i8 %switch.load10412 to i64
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit318.i

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit318.i: ; preds = %switch.lookup10398, %bb.rv
  %.neg5.i314.i = phi i64 [ %.neg4.i313.i, %bb.rv ], [ %switch.ext10413, %switch.lookup10398 ]
  %i.bgt = and i64 %.neg5.i314.i, 120
  %i.bgu = zext nneg i64 %i.bgt to i128
  %i.bgv = lshr i128 -1, %i.bgu
  %.neg.i315.i = xor i128 %.sroa.481.0.copyload.i158, -1
  %i.bgw = add i128 %.sroa.080.0.copyload.i156, %.neg.i315.i
  %i.bgx = and i128 %i.bgv, %i.bgw
  br label %bb.ry

bb.ry:                                            ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit318.i, %bb.rn
  %.sroa.01.0.i.i91.i = phi i128 [ %i.bgx, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit318.i ], [ 0, %bb.rn ]
  %..i14.i.i92.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.bfv, i64 range(i64 1, -9223372036854775807) %i.bft)
  %i.bgy = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %..i14.i.i92.i, i1 true)
  %i.bgz = trunc nuw nsw i64 %i.bgy to i32        ; 3 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bfc, i64 16
  %i.bhb = load ptr, ptr %i.bha, align 8, !alias.scope !5656, !noalias !5645, !nonnull !5, !align !21, !noundef !5
  %i.bhc = load i128, ptr %i.bhb, align 16, !noalias !5657, !noundef !5 ; 2 uses
  %.not10.i.i93.i = icmp eq i128 %i.bhc, 0
  br i1 %.not10.i.i93.i, label %bb.sa, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bfc, i64 24
  %i.bhe = load ptr, ptr %i.bhd, align 8, !alias.scope !5656, !noalias !5645, !nonnull !5, !noundef !5
  %i.bhf = load i8, ptr %i.bhe, align 1, !range !13, !noalias !5657, !noundef !5
  %i.bhg = trunc nuw i8 %i.bhf to i1
  br i1 %i.bhg, label %bb.sb, label %bb.sc

bb.sa:                                            ; preds = %bb.sc, %bb.sb, %bb.ry
  %.sroa.07.0.i.i95.i = phi i32 [ %spec.select.i.i97.i, %bb.sb ], [ %i.bgz, %bb.ry ], [ %..i15.i.i94.i, %bb.sc ]
  %i.bhh = zext nneg i32 %.sroa.07.0.i.i95.i to i64
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit99.i

bb.sb:                                            ; preds = %bb.rz
  %i.bhi = icmp eq i128 %.sroa.01.0.i.i91.i, %i.bhc
  %i.bhj = zext nneg i8 %i.bfr to i32
  %spec.select.i.i97.i = select i1 %i.bhi, i32 %i.bhj, i32 %i.bgz
  br label %bb.sa

bb.sc:                                            ; preds = %bb.rz
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bfc, i64 32
  %i.bhl = load ptr, ptr %i.bhk, align 8, !alias.scope !5656, !noalias !5645, !nonnull !5, !align !11, !noundef !5
  %i.bhm = load i64, ptr %i.bhl, align 8, !noalias !5657, !noundef !5
  %i.bhn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bhm, i1 false)
  %i.bho = trunc nuw nsw i64 %i.bhn to i32
  %..i15.i.i94.i = call noundef range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.bgz, i32 range(i32 0, 129) %i.bho)
  br label %bb.sa

bb.sd:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit120.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.bdv, i64 noundef %i.bdu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #43, !noalias !5645
  unreachable

_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit99.i: ; preds = %bb.sa, %bb.rm
  %.sroa.0.0.i4.i96.i = phi i64 [ %i.bfn, %bb.rm ], [ %i.bhh, %bb.sa ] ; 2 uses
  %i.bhp = icmp eq i64 %.sroa.0.0.i4.i117.i, %.sroa.0.0.i4.i96.i
  %i.bhq = icmp uge i64 %.sroa.0.0.i4.i117.i, %.sroa.0.0.i4.i96.i
  %.sroa.0.0.i.i.i33.i = select i1 %i.bhp, i1 %.sroa.0.0.i.i84.i, i1 %i.bhq ; 2 uses
  %i.bhr = getelementptr inbounds i8, ptr %.sroa.43.11246.i, i64 -8
  %.sroa.01.0.i34.i = select i1 %.sroa.0.0.i.i.i33.i, ptr %2, ptr %i.bhr
  %i.bhs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i34.i, i64 %i.azx
  store i32 %.val23.i138, ptr %i.bhs, align 4, !alias.scope !5569, !noalias !5668
  %i.bht = zext i1 %.sroa.0.0.i.i.i33.i to i64
  %i.bhu = add i64 %i.azx, %i.bht                 ; 2 uses
  %i.bhv = getelementptr inbounds nuw i8, ptr %.sroa.9.11248.i, i64 8
  %.val20.i161 = load i32, ptr %i.bhv, align 4, !alias.scope !5568 ; 2 uses
  %.val.i35.i = load ptr, ptr %6, align 8, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5669)
  %i.bhw = getelementptr inbounds nuw i8, ptr %.val.i35.i, i64 8 ; 2 uses
  %i.bhx = load i64, ptr %i.bhw, align 8, !alias.scope !5669, !noalias !5570, !noundef !5 ; 2 uses
  %i.bhy = icmp ugt i64 %i.bhx, %i.asb
  br i1 %i.bhy, label %bb.se, label %bb.tl

bb.se:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit99.i
  %i.bhz = load ptr, ptr %.val.i35.i, align 8, !alias.scope !5669, !noalias !5570, !nonnull !5, !align !11, !noundef !5
  %i.bia = getelementptr inbounds nuw [8 x i8], ptr %i.bhz, i64 %i.asb ; 2 uses
  %.val.i142.i = load ptr, ptr %i.bia, align 8, !noalias !5670, !nonnull !5, !align !11, !noundef !5 ; 7 uses
  %i.bib = load ptr, ptr %.val.i142.i, align 8, !noalias !5670, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bib, i64 96
  %.sroa.0102.0.copyload.i162 = load i128, ptr %i.bic, align 16, !noalias !5670
  %.sroa.4103.0..sroa_idx.i163 = getelementptr inbounds nuw i8, ptr %i.bib, i64 112
  %.sroa.4103.0.copyload.i164 = load i128, ptr %.sroa.4103.0..sroa_idx.i163, align 16, !noalias !5670
  %.sroa.5105.0..sroa_idx.i165 = getelementptr inbounds nuw i8, ptr %i.bib, i64 136
  %.sroa.5105.0.copyload.i166 = load i64, ptr %.sroa.5105.0..sroa_idx.i165, align 8, !noalias !5670 ; 3 uses
  %.sroa.5105.40.extract.trunc.i167 = trunc i64 %.sroa.5105.0.copyload.i166 to i8 ; 2 uses
  %.not.i.i143.i = icmp eq i8 %.sroa.5105.40.extract.trunc.i167, -1
  br i1 %.not.i.i143.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i145.i, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.bid = getelementptr inbounds nuw i8, ptr %.val.i35.i, i64 16
  %i.bie = load ptr, ptr %i.bid, align 8, !alias.scope !5669, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5671)
  call void @llvm.experimental.noalias.scope.decl(metadata !5672), !noalias !5673
  %.sroa.44.0.extract.shift.i.i428.i = lshr i64 %.sroa.5105.0.copyload.i166, 8
  %.sroa.44.0.extract.trunc.i.i429.i = trunc i64 %.sroa.44.0.extract.shift.i.i428.i to i8 ; 2 uses
  switch i8 %.sroa.5105.40.extract.trunc.i167, label %bb.sg [
    i8 0, label %bb.sh
    i8 1, label %bb.sm
    i8 2, label %bb.sn
  ]

bb.sg:                                            ; preds = %bb.sf
  unreachable

bb.sh:                                            ; preds = %bb.sf
  switch i8 %.sroa.44.0.extract.trunc.i.i429.i, label %default.unreachable25.i.i.i443.i [
    i8 0, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit444.i
    i8 1, label %bb.si
    i8 2, label %bb.sj
    i8 3, label %bb.sk
    i8 4, label %bb.sl
  ]

default.unreachable25.i.i.i443.i:                 ; preds = %bb.sh
  unreachable

bb.si:                                            ; preds = %bb.sh
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit444.i

bb.sj:                                            ; preds = %bb.sh
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit444.i

bb.sk:                                            ; preds = %bb.sh
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit444.i

bb.sl:                                            ; preds = %bb.sh
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit444.i

bb.sm:                                            ; preds = %bb.sf
  %i.bif = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i429.i), !noalias !5674
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i437.i

bb.sn:                                            ; preds = %bb.sf
  %.sroa.6.0.extract.shift.i.i431.i = lshr i64 %.sroa.5105.0.copyload.i166, 32
  %.sroa.6.0.extract.trunc.i.i432.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i431.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5675), !noalias !5673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5674
  store i32 %.sroa.6.0.extract.trunc.i.i432.i, ptr %i.r, align 4, !noalias !5676
  %i.big = getelementptr inbounds nuw i8, ptr %i.bie, i64 72
  %i.bih = load i32, ptr %i.big, align 8, !alias.scope !5677, !noalias !5670, !noundef !5
  %i.bii = icmp eq i32 %i.bih, %.sroa.6.0.extract.trunc.i.i432.i
  br i1 %i.bii, label %bb.sq, label %bb.so

bb.so:                                            ; preds = %bb.sn
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bie, i64 32
  %i.bik = load ptr, ptr %i.bij, align 8, !alias.scope !5677, !noalias !5670, !nonnull !5, !noundef !5 ; 2 uses
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bie, i64 40
  %i.bim = load i64, ptr %i.bil, align 8, !alias.scope !5677, !noalias !5670, !noundef !5 ; 2 uses
  %.idx10350 = shl nuw nsw i64 %i.bim, 5
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bik, i64 %.idx10350
  %i.bio = icmp eq i64 %i.bim, 0
  br i1 %i.bio, label %._crit_edge10261, label %.lr.ph10260

bb.sp:                                            ; preds = %.lr.ph10260
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bir, i64 32 ; 2 uses
  %i.biq = icmp eq ptr %i.bip, %i.bin
  br i1 %i.biq, label %._crit_edge10261, label %.lr.ph10260

.lr.ph10260:                                      ; preds = %bb.so, %bb.sp
  %i.bir = phi ptr [ %i.bip, %bb.sp ], [ %i.bik, %bb.so ] ; 3 uses
  %i.bis = load i32, ptr %i.bir, align 8, !noalias !5678, !noundef !5
  %i.bit = icmp eq i32 %i.bis, %.sroa.6.0.extract.trunc.i.i432.i
  br i1 %i.bit, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i433.i, label %bb.sp

bb.sq:                                            ; preds = %bb.sn
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bie, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i434.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i433.i: ; preds = %.lr.ph10260
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bir, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i434.i

._crit_edge10261:                                 ; preds = %bb.so, %bb.sp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5676
  store ptr %i.r, ptr %i.q, align 8, !noalias !5676
  %.sroa.45.0..sroa_idx.i.i.i442.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i442.i, align 8, !noalias !5676
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5676
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i434.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i433.i, %bb.sq
  %.sroa.0.0.in.i.i.i435.i = phi ptr [ %i.biu, %bb.sq ], [ %i.biv, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i433.i ]
  %.sroa.0.0.i6.i.i436.i = load i64, ptr %.sroa.0.0.in.i.i.i435.i, align 8, !noalias !5679, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5674
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i437.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i437.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i434.i, %bb.sm
  %.sroa.05.0.i.i438.i = phi i64 [ %.sroa.0.0.i6.i.i436.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i434.i ], [ %i.bif, %bb.sm ] ; 4 uses
  %i.biw = icmp ugt i64 %.sroa.05.0.i.i438.i, 2305843009213693951
  br i1 %i.biw, label %bb.ss, label %bb.sr, !prof !29

bb.sr:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i437.i
  %i.bix = icmp samesign ult i64 %.sroa.05.0.i.i438.i, 17
  br i1 %i.bix, label %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit444_crit_edge.i, label %bb.st, !prof !30

._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit444_crit_edge.i: ; preds = %bb.sr
  %.neg4.i439.i = mul nuw nsw i64 %.sroa.05.0.i.i438.i, 120
  %.val2.pre.i144.pre.i = load ptr, ptr %i.bia, align 8, !noalias !5670
  %i.biy = and i64 %.neg4.i439.i, 120
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit444.i

bb.ss:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i437.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i438.i) #45, !noalias !5680
  unreachable

bb.st:                                            ; preds = %bb.sr
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5680
  unreachable

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit444.i: ; preds = %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit444_crit_edge.i, %bb.sl, %bb.sk, %bb.sj, %bb.si, %bb.sh
  %.val2.pre.i144.i = phi ptr [ %.val2.pre.i144.pre.i, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit444_crit_edge.i ], [ %.val.i142.i, %bb.sh ], [ %.val.i142.i, %bb.sk ], [ %.val.i142.i, %bb.sj ], [ %.val.i142.i, %bb.si ], [ %.val.i142.i, %bb.sl ]
  %.neg5.i440.i = phi i64 [ %i.biy, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit444_crit_edge.i ], [ 120, %bb.sh ], [ 64, %bb.sk ], [ 96, %bb.sj ], [ 112, %bb.si ], [ 0, %bb.sl ]
  %i.biz = zext nneg i64 %.neg5.i440.i to i128
  %i.bja = lshr i128 -1, %i.biz
  %.neg.i441.i = xor i128 %.sroa.4103.0.copyload.i164, -1
  %i.bjb = add i128 %.sroa.0102.0.copyload.i162, %.neg.i441.i
  %i.bjc = and i128 %i.bja, %i.bjb
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i145.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i145.i: ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit444.i, %bb.se
  %.val2.i146.i = phi ptr [ %.val2.pre.i144.i, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit444.i ], [ %.val.i142.i, %bb.se ] ; 3 uses
  %.sroa.0.0.i.i147.i = phi i128 [ %i.bjc, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit444.i ], [ 0, %bb.se ]
  %i.bjd = getelementptr inbounds nuw i8, ptr %.val.i35.i, i64 24 ; 2 uses
  %i.bje = load ptr, ptr %i.bjd, align 8, !alias.scope !5669, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5681)
  %i.bjf = load ptr, ptr %i.bje, align 8, !alias.scope !5681, !noalias !5670, !nonnull !5, !noundef !5 ; 2 uses
  %i.bjg = load i8, ptr %i.bjf, align 1, !range !13, !noalias !5682, !noundef !5
  %i.bjh = trunc nuw i8 %i.bjg to i1
  br i1 %i.bjh, label %bb.su, label %bb.sv

bb.su:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i145.i
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjf, i64 1
  %i.bjj = load i8, ptr %i.bji, align 1, !noalias !5682, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i146.i) ]
  %i.bjk = load ptr, ptr %.val2.i146.i, align 8, !noalias !5682, !nonnull !5, !align !21, !noundef !5
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjk, i64 338
  %i.bjm = load i8, ptr %i.bjl, align 2, !noalias !5682, !noundef !5
  %..i.i.i161.i = call noundef i8 @llvm.umin.i8(i8 %i.bjj, i8 %i.bjm)
  %i.bjn = and i8 %..i.i.i161.i, 63
  %i.bjo = zext nneg i8 %i.bjn to i64
  %i.bjp = shl nuw i64 1, %i.bjo
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit162.i

bb.sv:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i145.i
  %i.bjq = load ptr, ptr %.val2.i146.i, align 8, !noalias !5682, !nonnull !5, !align !21, !noundef !5 ; 6 uses
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjq, i64 338
  %i.bjs = load i8, ptr %i.bjr, align 2, !noalias !5682, !noundef !5
  %i.bjt = and i8 %i.bjs, 63                      ; 2 uses
  %i.bju = zext nneg i8 %i.bjt to i64
  %i.bjv = shl nuw i64 1, %i.bju
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjq, i64 320
  %i.bjx = load i64, ptr %i.bjw, align 16, !noalias !5682, !noundef !5
  %.sroa.5.0..sroa_idx.i.i148.i = getelementptr inbounds nuw i8, ptr %i.bjq, i64 136
  %.sroa.5.0.copyload.i.i149.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i148.i, align 8, !noalias !5682 ; 2 uses
  %.not.i3.i150.i = icmp eq i8 %.sroa.5.0.copyload.i.i149.i, -1
  br i1 %.not.i3.i150.i, label %bb.tg, label %bb.sw

bb.sw:                                            ; preds = %bb.sv
  %.sroa.6.0..sroa_idx.i.i151.i = getelementptr inbounds nuw i8, ptr %i.bjq, i64 137
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bjq, i64 96
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bje, i64 8
  %i.bka = load ptr, ptr %i.bjz, align 8, !alias.scope !5681, !noalias !5670, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  %.sroa.0107.0.copyload.i168 = load i128, ptr %i.bjy, align 16, !noalias !5682
  %.sroa.4108.0..sroa_idx.i169 = getelementptr inbounds nuw i8, ptr %i.bjq, i64 112
  %.sroa.4108.0.copyload.i170 = load i128, ptr %.sroa.4108.0..sroa_idx.i169, align 16, !noalias !5682
  %.sroa.5110.41.copyload.i171 = load i56, ptr %.sroa.6.0..sroa_idx.i.i151.i, align 1, !noalias !5682 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5683)
  call void @llvm.experimental.noalias.scope.decl(metadata !5684), !noalias !5685
  switch i8 %.sroa.5.0.copyload.i.i149.i, label %bb.sx [
    i8 0, label %switch.lookup10401
    i8 1, label %bb.sy
    i8 2, label %bb.sz
  ]

bb.sx:                                            ; preds = %bb.sw
  unreachable

bb.sy:                                            ; preds = %bb.sw
  %.sroa.44.0.extract.trunc.i.i411.i = trunc i56 %.sroa.5110.41.copyload.i171 to i8
  %i.bkb = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i411.i), !noalias !5686
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i419.i

bb.sz:                                            ; preds = %bb.sw
  %.sroa.5110.41.insert.ext.i172 = zext i56 %.sroa.5110.41.copyload.i171 to i64
  %.sroa.6.0.extract.shift.i.i413.i = lshr i64 %.sroa.5110.41.insert.ext.i172, 24
  %.sroa.6.0.extract.trunc.i.i414.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i413.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5687), !noalias !5685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5686
  store i32 %.sroa.6.0.extract.trunc.i.i414.i, ptr %i.t, align 4, !noalias !5688
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bka, i64 72
  %i.bkd = load i32, ptr %i.bkc, align 8, !alias.scope !5689, !noalias !5682, !noundef !5
  %i.bke = icmp eq i32 %i.bkd, %.sroa.6.0.extract.trunc.i.i414.i
  br i1 %i.bke, label %bb.tc, label %bb.ta

bb.ta:                                            ; preds = %bb.sz
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bka, i64 32
  %i.bkg = load ptr, ptr %i.bkf, align 8, !alias.scope !5689, !noalias !5682, !nonnull !5, !noundef !5 ; 2 uses
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bka, i64 40
  %i.bki = load i64, ptr %i.bkh, align 8, !alias.scope !5689, !noalias !5682, !noundef !5 ; 2 uses
  %.idx10351 = shl nuw nsw i64 %i.bki, 5
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bkg, i64 %.idx10351
  %i.bkk = icmp eq i64 %i.bki, 0
  br i1 %i.bkk, label %._crit_edge10265, label %.lr.ph10264

bb.tb:                                            ; preds = %.lr.ph10264
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bkn, i64 32 ; 2 uses
  %i.bkm = icmp eq ptr %i.bkl, %i.bkj
  br i1 %i.bkm, label %._crit_edge10265, label %.lr.ph10264

.lr.ph10264:                                      ; preds = %bb.ta, %bb.tb
  %i.bkn = phi ptr [ %i.bkl, %bb.tb ], [ %i.bkg, %bb.ta ] ; 3 uses
  %i.bko = load i32, ptr %i.bkn, align 8, !noalias !5690, !noundef !5
  %i.bkp = icmp eq i32 %i.bko, %.sroa.6.0.extract.trunc.i.i414.i
  br i1 %i.bkp, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i415.i, label %bb.tb

bb.tc:                                            ; preds = %bb.sz
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bka, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i416.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i415.i: ; preds = %.lr.ph10264
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bkn, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i416.i

._crit_edge10265:                                 ; preds = %bb.ta, %bb.tb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5688
  store ptr %i.t, ptr %i.s, align 8, !noalias !5688
  %.sroa.45.0..sroa_idx.i.i.i424.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i424.i, align 8, !noalias !5688
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5688
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i416.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i415.i, %bb.tc
  %.sroa.0.0.in.i.i.i417.i = phi ptr [ %i.bkq, %bb.tc ], [ %i.bkr, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i415.i ]
  %.sroa.0.0.i6.i.i418.i = load i64, ptr %.sroa.0.0.in.i.i.i417.i, align 8, !noalias !5691, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5686
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i419.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i419.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i416.i, %bb.sy
  %.sroa.05.0.i.i420.i = phi i64 [ %.sroa.0.0.i6.i.i418.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i416.i ], [ %i.bkb, %bb.sy ] ; 4 uses
  %i.bks = icmp ugt i64 %.sroa.05.0.i.i420.i, 2305843009213693951
  br i1 %i.bks, label %bb.te, label %bb.td, !prof !29

bb.td:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i419.i
  %.neg4.i421.i = mul nsw i64 %.sroa.05.0.i.i420.i, -8
  %i.bkt = icmp samesign ult i64 %.sroa.05.0.i.i420.i, 17
  br i1 %i.bkt, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit426.i, label %bb.tf, !prof !30

bb.te:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i419.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i420.i) #45, !noalias !5692
  unreachable

bb.tf:                                            ; preds = %bb.td
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5692
  unreachable

switch.lookup10401:                               ; preds = %bb.sw
  %.sroa.44.0.extract.trunc.i.i411.i.mask = and i56 %.sroa.5110.41.copyload.i171, 255
  %i.bku = zext nneg i56 %.sroa.44.0.extract.trunc.i.i411.i.mask to i64
  %switch.gep10415 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.bku
  %switch.load10416 = load i8, ptr %switch.gep10415, align 1
  %switch.ext10417 = zext i8 %switch.load10416 to i64
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit426.i

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit426.i: ; preds = %switch.lookup10401, %bb.td
  %.neg5.i422.i = phi i64 [ %.neg4.i421.i, %bb.td ], [ %switch.ext10417, %switch.lookup10401 ]
  %i.bkv = and i64 %.neg5.i422.i, 120
  %i.bkw = zext nneg i64 %i.bkv to i128
  %i.bkx = lshr i128 -1, %i.bkw
  %.neg.i423.i = xor i128 %.sroa.4108.0.copyload.i170, -1
  %i.bky = add i128 %.sroa.0107.0.copyload.i168, %.neg.i423.i
  %i.bkz = and i128 %i.bkx, %i.bky
  br label %bb.tg

bb.tg:                                            ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit426.i, %bb.sv
  %.sroa.01.0.i.i154.i = phi i128 [ %i.bkz, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit426.i ], [ 0, %bb.sv ]
  %..i14.i.i155.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.bjx, i64 range(i64 1, -9223372036854775807) %i.bjv)
  %i.bla = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %..i14.i.i155.i, i1 true)
  %i.blb = trunc nuw nsw i64 %i.bla to i32        ; 3 uses
  %i.blc = getelementptr inbounds nuw i8, ptr %i.bje, i64 16
  %i.bld = load ptr, ptr %i.blc, align 8, !alias.scope !5681, !noalias !5670, !nonnull !5, !align !21, !noundef !5
  %i.ble = load i128, ptr %i.bld, align 16, !noalias !5682, !noundef !5 ; 2 uses
  %.not10.i.i156.i = icmp eq i128 %i.ble, 0
  br i1 %.not10.i.i156.i, label %bb.ti, label %bb.th

bb.th:                                            ; preds = %bb.tg
  %i.blf = getelementptr inbounds nuw i8, ptr %i.bje, i64 24
  %i.blg = load ptr, ptr %i.blf, align 8, !alias.scope !5681, !noalias !5670, !nonnull !5, !noundef !5
  %i.blh = load i8, ptr %i.blg, align 1, !range !13, !noalias !5682, !noundef !5
  %i.bli = trunc nuw i8 %i.blh to i1
  br i1 %i.bli, label %bb.tj, label %bb.tk

bb.ti:                                            ; preds = %bb.tk, %bb.tj, %bb.tg
  %.sroa.07.0.i.i158.i = phi i32 [ %spec.select.i.i160.i, %bb.tj ], [ %i.blb, %bb.tg ], [ %..i15.i.i157.i, %bb.tk ]
  %i.blj = zext nneg i32 %.sroa.07.0.i.i158.i to i64
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit162.i

bb.tj:                                            ; preds = %bb.th
  %i.blk = icmp eq i128 %.sroa.01.0.i.i154.i, %i.ble
  %i.bll = zext nneg i8 %i.bjt to i32
  %spec.select.i.i160.i = select i1 %i.blk, i32 %i.bll, i32 %i.blb
  br label %bb.ti

bb.tk:                                            ; preds = %bb.th
  %i.blm = getelementptr inbounds nuw i8, ptr %i.bje, i64 32
  %i.bln = load ptr, ptr %i.blm, align 8, !alias.scope !5681, !noalias !5670, !nonnull !5, !align !11, !noundef !5
  %i.blo = load i64, ptr %i.bln, align 8, !noalias !5682, !noundef !5
  %i.blp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.blo, i1 false)
  %i.blq = trunc nuw nsw i64 %i.blp to i32
  %..i15.i.i157.i = call noundef range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.blb, i32 range(i32 0, 129) %i.blq)
  br label %bb.ti

bb.tl:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit99.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.asb, i64 noundef %i.bhx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #43, !noalias !5670
  unreachable

_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit162.i: ; preds = %bb.ti, %bb.su
  %.sroa.0.0.i4.i159.i = phi i64 [ %i.bjp, %bb.su ], [ %i.blj, %bb.ti ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5693)
  %i.blr = load i64, ptr %i.bhw, align 8, !alias.scope !5693, !noalias !5570, !noundef !5 ; 2 uses
  %i.bls = zext i32 %.val20.i161 to i64           ; 3 uses
  %i.blt = icmp ugt i64 %i.blr, %i.bls
  br i1 %i.blt, label %bb.tm, label %bb.ut

bb.tm:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit162.i
  %i.blu = load ptr, ptr %.val.i35.i, align 8, !alias.scope !5693, !noalias !5570, !nonnull !5, !align !11, !noundef !5
  %i.blv = getelementptr inbounds nuw [8 x i8], ptr %i.blu, i64 %i.bls ; 2 uses
  %.val.i121.i = load ptr, ptr %i.blv, align 8, !noalias !5694, !nonnull !5, !align !11, !noundef !5 ; 7 uses
  %i.blw = load ptr, ptr %.val.i121.i, align 8, !noalias !5694, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.blx = getelementptr inbounds nuw i8, ptr %i.blw, i64 96
  %.sroa.093.0.copyload.i173 = load i128, ptr %i.blx, align 16, !noalias !5694
  %.sroa.494.0..sroa_idx.i174 = getelementptr inbounds nuw i8, ptr %i.blw, i64 112
  %.sroa.494.0.copyload.i175 = load i128, ptr %.sroa.494.0..sroa_idx.i174, align 16, !noalias !5694
  %.sroa.596.0..sroa_idx.i176 = getelementptr inbounds nuw i8, ptr %i.blw, i64 136
  %.sroa.596.0.copyload.i177 = load i64, ptr %.sroa.596.0..sroa_idx.i176, align 8, !noalias !5694 ; 3 uses
  %.sroa.596.40.extract.trunc.i178 = trunc i64 %.sroa.596.0.copyload.i177 to i8 ; 2 uses
  %.not.i.i122.i = icmp eq i8 %.sroa.596.40.extract.trunc.i178, -1
  br i1 %.not.i.i122.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i124.i, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  %i.bly = getelementptr inbounds nuw i8, ptr %.val.i35.i, i64 16
  %i.blz = load ptr, ptr %i.bly, align 8, !alias.scope !5693, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5695)
  call void @llvm.experimental.noalias.scope.decl(metadata !5696), !noalias !5697
  %.sroa.44.0.extract.shift.i.i392.i = lshr i64 %.sroa.596.0.copyload.i177, 8
  %.sroa.44.0.extract.trunc.i.i393.i = trunc i64 %.sroa.44.0.extract.shift.i.i392.i to i8 ; 2 uses
  switch i8 %.sroa.596.40.extract.trunc.i178, label %bb.to [
    i8 0, label %bb.tp
    i8 1, label %bb.tu
    i8 2, label %bb.tv
  ]

bb.to:                                            ; preds = %bb.tn
  unreachable

bb.tp:                                            ; preds = %bb.tn
  switch i8 %.sroa.44.0.extract.trunc.i.i393.i, label %default.unreachable25.i.i.i407.i [
    i8 0, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit408.i
    i8 1, label %bb.tq
    i8 2, label %bb.tr
    i8 3, label %bb.ts
    i8 4, label %bb.tt
  ]

default.unreachable25.i.i.i407.i:                 ; preds = %bb.tp
  unreachable

bb.tq:                                            ; preds = %bb.tp
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit408.i

bb.tr:                                            ; preds = %bb.tp
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit408.i

bb.ts:                                            ; preds = %bb.tp
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit408.i

bb.tt:                                            ; preds = %bb.tp
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit408.i

bb.tu:                                            ; preds = %bb.tn
  %i.bma = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i393.i), !noalias !5698
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i401.i

bb.tv:                                            ; preds = %bb.tn
  %.sroa.6.0.extract.shift.i.i395.i = lshr i64 %.sroa.596.0.copyload.i177, 32
  %.sroa.6.0.extract.trunc.i.i396.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i395.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5699), !noalias !5697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !5698
  store i32 %.sroa.6.0.extract.trunc.i.i396.i, ptr %i.v, align 4, !noalias !5700
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.blz, i64 72
  %i.bmc = load i32, ptr %i.bmb, align 8, !alias.scope !5701, !noalias !5694, !noundef !5
  %i.bmd = icmp eq i32 %i.bmc, %.sroa.6.0.extract.trunc.i.i396.i
  br i1 %i.bmd, label %bb.ty, label %bb.tw

bb.tw:                                            ; preds = %bb.tv
  %i.bme = getelementptr inbounds nuw i8, ptr %i.blz, i64 32
  %i.bmf = load ptr, ptr %i.bme, align 8, !alias.scope !5701, !noalias !5694, !nonnull !5, !noundef !5 ; 2 uses
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.blz, i64 40
  %i.bmh = load i64, ptr %i.bmg, align 8, !alias.scope !5701, !noalias !5694, !noundef !5 ; 2 uses
  %.idx10352 = shl nuw nsw i64 %i.bmh, 5
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bmf, i64 %.idx10352
  %i.bmj = icmp eq i64 %i.bmh, 0
  br i1 %i.bmj, label %._crit_edge10269, label %.lr.ph10268

bb.tx:                                            ; preds = %.lr.ph10268
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmm, i64 32 ; 2 uses
  %i.bml = icmp eq ptr %i.bmk, %i.bmi
  br i1 %i.bml, label %._crit_edge10269, label %.lr.ph10268

.lr.ph10268:                                      ; preds = %bb.tw, %bb.tx
  %i.bmm = phi ptr [ %i.bmk, %bb.tx ], [ %i.bmf, %bb.tw ] ; 3 uses
  %i.bmn = load i32, ptr %i.bmm, align 8, !noalias !5702, !noundef !5
  %i.bmo = icmp eq i32 %i.bmn, %.sroa.6.0.extract.trunc.i.i396.i
  br i1 %i.bmo, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i397.i, label %bb.tx

bb.ty:                                            ; preds = %bb.tv
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.blz, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i398.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i397.i: ; preds = %.lr.ph10268
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bmm, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i398.i

._crit_edge10269:                                 ; preds = %bb.tw, %bb.tx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !5700
  store ptr %i.v, ptr %i.u, align 8, !noalias !5700
  %.sroa.45.0..sroa_idx.i.i.i406.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i406.i, align 8, !noalias !5700
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5700
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i398.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i397.i, %bb.ty
  %.sroa.0.0.in.i.i.i399.i = phi ptr [ %i.bmp, %bb.ty ], [ %i.bmq, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i397.i ]
  %.sroa.0.0.i6.i.i400.i = load i64, ptr %.sroa.0.0.in.i.i.i399.i, align 8, !noalias !5703, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5698
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i401.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i401.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i398.i, %bb.tu
  %.sroa.05.0.i.i402.i = phi i64 [ %.sroa.0.0.i6.i.i400.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i398.i ], [ %i.bma, %bb.tu ] ; 4 uses
  %i.bmr = icmp ugt i64 %.sroa.05.0.i.i402.i, 2305843009213693951
  br i1 %i.bmr, label %bb.ua, label %bb.tz, !prof !29

bb.tz:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i401.i
  %i.bms = icmp samesign ult i64 %.sroa.05.0.i.i402.i, 17
  br i1 %i.bms, label %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit408_crit_edge.i, label %bb.ub, !prof !30

._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit408_crit_edge.i: ; preds = %bb.tz
  %.neg4.i403.i = mul nuw nsw i64 %.sroa.05.0.i.i402.i, 120
  %.val2.pre.i123.pre.i = load ptr, ptr %i.blv, align 8, !noalias !5694
  %i.bmt = and i64 %.neg4.i403.i, 120
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit408.i

bb.ua:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i401.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i402.i) #45, !noalias !5704
  unreachable

bb.ub:                                            ; preds = %bb.tz
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5704
  unreachable

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit408.i: ; preds = %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit408_crit_edge.i, %bb.tt, %bb.ts, %bb.tr, %bb.tq, %bb.tp
  %.val2.pre.i123.i = phi ptr [ %.val2.pre.i123.pre.i, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit408_crit_edge.i ], [ %.val.i121.i, %bb.tp ], [ %.val.i121.i, %bb.ts ], [ %.val.i121.i, %bb.tr ], [ %.val.i121.i, %bb.tq ], [ %.val.i121.i, %bb.tt ]
  %.neg5.i404.i = phi i64 [ %i.bmt, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit408_crit_edge.i ], [ 120, %bb.tp ], [ 64, %bb.ts ], [ 96, %bb.tr ], [ 112, %bb.tq ], [ 0, %bb.tt ]
  %i.bmu = zext nneg i64 %.neg5.i404.i to i128
  %i.bmv = lshr i128 -1, %i.bmu
  %.neg.i405.i = xor i128 %.sroa.494.0.copyload.i175, -1
  %i.bmw = add i128 %.sroa.093.0.copyload.i173, %.neg.i405.i
  %i.bmx = and i128 %i.bmv, %i.bmw
  %i.bmy = icmp uge i128 %.sroa.0.0.i.i147.i, %i.bmx
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i124.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i124.i: ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit408.i, %bb.tm
  %.val2.i125.i = phi ptr [ %.val2.pre.i123.i, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit408.i ], [ %.val.i121.i, %bb.tm ] ; 3 uses
  %.sroa.0.0.i.i126.i = phi i1 [ %i.bmy, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit408.i ], [ true, %bb.tm ]
  %i.bmz = load ptr, ptr %i.bjd, align 8, !alias.scope !5693, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5705)
  %i.bna = load ptr, ptr %i.bmz, align 8, !alias.scope !5705, !noalias !5694, !nonnull !5, !noundef !5 ; 2 uses
  %i.bnb = load i8, ptr %i.bna, align 1, !range !13, !noalias !5706, !noundef !5
  %i.bnc = trunc nuw i8 %i.bnb to i1
  br i1 %i.bnc, label %bb.uc, label %bb.ud

bb.uc:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i124.i
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bna, i64 1
  %i.bne = load i8, ptr %i.bnd, align 1, !noalias !5706, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i125.i) ]
  %i.bnf = load ptr, ptr %.val2.i125.i, align 8, !noalias !5706, !nonnull !5, !align !21, !noundef !5
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnf, i64 338
  %i.bnh = load i8, ptr %i.bng, align 2, !noalias !5706, !noundef !5
  %..i.i.i140.i = call noundef i8 @llvm.umin.i8(i8 %i.bne, i8 %i.bnh)
  %i.bni = and i8 %..i.i.i140.i, 63
  %i.bnj = zext nneg i8 %i.bni to i64
  %i.bnk = shl nuw i64 1, %i.bnj
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit141.i

bb.ud:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i124.i
  %i.bnl = load ptr, ptr %.val2.i125.i, align 8, !noalias !5706, !nonnull !5, !align !21, !noundef !5 ; 6 uses
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bnl, i64 338
  %i.bnn = load i8, ptr %i.bnm, align 2, !noalias !5706, !noundef !5
  %i.bno = and i8 %i.bnn, 63                      ; 2 uses
  %i.bnp = zext nneg i8 %i.bno to i64
  %i.bnq = shl nuw i64 1, %i.bnp
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bnl, i64 320
  %i.bns = load i64, ptr %i.bnr, align 16, !noalias !5706, !noundef !5
  %.sroa.5.0..sroa_idx.i.i127.i = getelementptr inbounds nuw i8, ptr %i.bnl, i64 136
  %.sroa.5.0.copyload.i.i128.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i127.i, align 8, !noalias !5706 ; 2 uses
  %.not.i3.i129.i = icmp eq i8 %.sroa.5.0.copyload.i.i128.i, -1
  br i1 %.not.i3.i129.i, label %bb.uo, label %bb.ue

bb.ue:                                            ; preds = %bb.ud
  %.sroa.6.0..sroa_idx.i.i130.i = getelementptr inbounds nuw i8, ptr %i.bnl, i64 137
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bnl, i64 96
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bmz, i64 8
  %i.bnv = load ptr, ptr %i.bnu, align 8, !alias.scope !5705, !noalias !5694, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  %.sroa.098.0.copyload.i179 = load i128, ptr %i.bnt, align 16, !noalias !5706
  %.sroa.499.0..sroa_idx.i180 = getelementptr inbounds nuw i8, ptr %i.bnl, i64 112
  %.sroa.499.0.copyload.i181 = load i128, ptr %.sroa.499.0..sroa_idx.i180, align 16, !noalias !5706
  %.sroa.5101.41.copyload.i182 = load i56, ptr %.sroa.6.0..sroa_idx.i.i130.i, align 1, !noalias !5706 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5707)
  call void @llvm.experimental.noalias.scope.decl(metadata !5708), !noalias !5709
  switch i8 %.sroa.5.0.copyload.i.i128.i, label %bb.uf [
    i8 0, label %switch.lookup10404
    i8 1, label %bb.ug
    i8 2, label %bb.uh
  ]

bb.uf:                                            ; preds = %bb.ue
  unreachable

bb.ug:                                            ; preds = %bb.ue
  %.sroa.44.0.extract.trunc.i.i375.i = trunc i56 %.sroa.5101.41.copyload.i182 to i8
  %i.bnw = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i375.i), !noalias !5710
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i383.i

bb.uh:                                            ; preds = %bb.ue
  %.sroa.5101.41.insert.ext.i183 = zext i56 %.sroa.5101.41.copyload.i182 to i64
  %.sroa.6.0.extract.shift.i.i377.i = lshr i64 %.sroa.5101.41.insert.ext.i183, 24
  %.sroa.6.0.extract.trunc.i.i378.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i377.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5711), !noalias !5709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !5710
  store i32 %.sroa.6.0.extract.trunc.i.i378.i, ptr %i.x, align 4, !noalias !5712
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnv, i64 72
  %i.bny = load i32, ptr %i.bnx, align 8, !alias.scope !5713, !noalias !5706, !noundef !5
  %i.bnz = icmp eq i32 %i.bny, %.sroa.6.0.extract.trunc.i.i378.i
  br i1 %i.bnz, label %bb.uk, label %bb.ui

bb.ui:                                            ; preds = %bb.uh
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnv, i64 32
  %i.bob = load ptr, ptr %i.boa, align 8, !alias.scope !5713, !noalias !5706, !nonnull !5, !noundef !5 ; 2 uses
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bnv, i64 40
  %i.bod = load i64, ptr %i.boc, align 8, !alias.scope !5713, !noalias !5706, !noundef !5 ; 2 uses
  %.idx10353 = shl nuw nsw i64 %i.bod, 5
  %i.boe = getelementptr inbounds nuw i8, ptr %i.bob, i64 %.idx10353
  %i.bof = icmp eq i64 %i.bod, 0
  br i1 %i.bof, label %._crit_edge10273, label %.lr.ph10272

bb.uj:                                            ; preds = %.lr.ph10272
  %i.bog = getelementptr inbounds nuw i8, ptr %i.boi, i64 32 ; 2 uses
  %i.boh = icmp eq ptr %i.bog, %i.boe
  br i1 %i.boh, label %._crit_edge10273, label %.lr.ph10272

.lr.ph10272:                                      ; preds = %bb.ui, %bb.uj
  %i.boi = phi ptr [ %i.bog, %bb.uj ], [ %i.bob, %bb.ui ] ; 3 uses
  %i.boj = load i32, ptr %i.boi, align 8, !noalias !5714, !noundef !5
  %i.bok = icmp eq i32 %i.boj, %.sroa.6.0.extract.trunc.i.i378.i
  br i1 %i.bok, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i379.i, label %bb.uj

bb.uk:                                            ; preds = %bb.uh
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bnv, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i380.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i379.i: ; preds = %.lr.ph10272
  %i.bom = getelementptr inbounds nuw i8, ptr %i.boi, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i380.i

._crit_edge10273:                                 ; preds = %bb.ui, %bb.uj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !5712
  store ptr %i.x, ptr %i.w, align 8, !noalias !5712
  %.sroa.45.0..sroa_idx.i.i.i388.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i388.i, align 8, !noalias !5712
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5712
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i380.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i379.i, %bb.uk
  %.sroa.0.0.in.i.i.i381.i = phi ptr [ %i.bol, %bb.uk ], [ %i.bom, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i379.i ]
  %.sroa.0.0.i6.i.i382.i = load i64, ptr %.sroa.0.0.in.i.i.i381.i, align 8, !noalias !5715, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !5710
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i383.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i383.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i380.i, %bb.ug
  %.sroa.05.0.i.i384.i = phi i64 [ %.sroa.0.0.i6.i.i382.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i380.i ], [ %i.bnw, %bb.ug ] ; 4 uses
  %i.bon = icmp ugt i64 %.sroa.05.0.i.i384.i, 2305843009213693951
  br i1 %i.bon, label %bb.um, label %bb.ul, !prof !29

bb.ul:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i383.i
  %.neg4.i385.i = mul nsw i64 %.sroa.05.0.i.i384.i, -8
  %i.boo = icmp samesign ult i64 %.sroa.05.0.i.i384.i, 17
  br i1 %i.boo, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit390.i, label %bb.un, !prof !30

bb.um:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i383.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i384.i) #45, !noalias !5716
  unreachable

bb.un:                                            ; preds = %bb.ul
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5716
  unreachable

switch.lookup10404:                               ; preds = %bb.ue
  %.sroa.44.0.extract.trunc.i.i375.i.mask = and i56 %.sroa.5101.41.copyload.i182, 255
  %i.bop = zext nneg i56 %.sroa.44.0.extract.trunc.i.i375.i.mask to i64
  %switch.gep10419 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.bop
  %switch.load10420 = load i8, ptr %switch.gep10419, align 1
  %switch.ext10421 = zext i8 %switch.load10420 to i64
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit390.i

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit390.i: ; preds = %switch.lookup10404, %bb.ul
  %.neg5.i386.i = phi i64 [ %.neg4.i385.i, %bb.ul ], [ %switch.ext10421, %switch.lookup10404 ]
  %i.boq = and i64 %.neg5.i386.i, 120
  %i.bor = zext nneg i64 %i.boq to i128
  %i.bos = lshr i128 -1, %i.bor
  %.neg.i387.i = xor i128 %.sroa.499.0.copyload.i181, -1
  %i.bot = add i128 %.sroa.098.0.copyload.i179, %.neg.i387.i
  %i.bou = and i128 %i.bos, %i.bot
  br label %bb.uo

bb.uo:                                            ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit390.i, %bb.ud
  %.sroa.01.0.i.i133.i = phi i128 [ %i.bou, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit390.i ], [ 0, %bb.ud ]
  %..i14.i.i134.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.bns, i64 range(i64 1, -9223372036854775807) %i.bnq)
  %i.bov = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %..i14.i.i134.i, i1 true)
  %i.bow = trunc nuw nsw i64 %i.bov to i32        ; 3 uses
  %i.box = getelementptr inbounds nuw i8, ptr %i.bmz, i64 16
  %i.boy = load ptr, ptr %i.box, align 8, !alias.scope !5705, !noalias !5694, !nonnull !5, !align !21, !noundef !5
  %i.boz = load i128, ptr %i.boy, align 16, !noalias !5706, !noundef !5 ; 2 uses
  %.not10.i.i135.i = icmp eq i128 %i.boz, 0
  br i1 %.not10.i.i135.i, label %bb.uq, label %bb.up

bb.up:                                            ; preds = %bb.uo
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.bmz, i64 24
  %i.bpb = load ptr, ptr %i.bpa, align 8, !alias.scope !5705, !noalias !5694, !nonnull !5, !noundef !5
  %i.bpc = load i8, ptr %i.bpb, align 1, !range !13, !noalias !5706, !noundef !5
  %i.bpd = trunc nuw i8 %i.bpc to i1
  br i1 %i.bpd, label %bb.ur, label %bb.us

bb.uq:                                            ; preds = %bb.us, %bb.ur, %bb.uo
  %.sroa.07.0.i.i137.i = phi i32 [ %spec.select.i.i139.i, %bb.ur ], [ %i.bow, %bb.uo ], [ %..i15.i.i136.i, %bb.us ]
  %i.bpe = zext nneg i32 %.sroa.07.0.i.i137.i to i64
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit141.i

bb.ur:                                            ; preds = %bb.up
  %i.bpf = icmp eq i128 %.sroa.01.0.i.i133.i, %i.boz
  %i.bpg = zext nneg i8 %i.bno to i32
  %spec.select.i.i139.i = select i1 %i.bpf, i32 %i.bpg, i32 %i.bow
  br label %bb.uq

bb.us:                                            ; preds = %bb.up
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bmz, i64 32
  %i.bpi = load ptr, ptr %i.bph, align 8, !alias.scope !5705, !noalias !5694, !nonnull !5, !align !11, !noundef !5
  %i.bpj = load i64, ptr %i.bpi, align 8, !noalias !5706, !noundef !5
  %i.bpk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bpj, i1 false)
  %i.bpl = trunc nuw nsw i64 %i.bpk to i32
  %..i15.i.i136.i = call noundef range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.bow, i32 range(i32 0, 129) %i.bpl)
  br label %bb.uq

bb.ut:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit162.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.bls, i64 noundef %i.blr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #43, !noalias !5694
  unreachable

_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit141.i: ; preds = %bb.uq, %bb.uc
  %.sroa.0.0.i4.i138.i = phi i64 [ %i.bnk, %bb.uc ], [ %i.bpe, %bb.uq ] ; 2 uses
  %i.bpm = icmp eq i64 %.sroa.0.0.i4.i159.i, %.sroa.0.0.i4.i138.i
  %i.bpn = icmp uge i64 %.sroa.0.0.i4.i159.i, %.sroa.0.0.i4.i138.i
  %.sroa.0.0.i.i.i40.i = select i1 %i.bpm, i1 %.sroa.0.0.i.i126.i, i1 %i.bpn ; 2 uses
  %i.bpo = getelementptr inbounds i8, ptr %.sroa.43.11246.i, i64 -12
  %.sroa.01.0.i41.i = select i1 %.sroa.0.0.i.i.i40.i, ptr %2, ptr %i.bpo
  %i.bpp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i41.i, i64 %i.bhu
  store i32 %.val20.i161, ptr %i.bpp, align 4, !alias.scope !5569, !noalias !5717
  %i.bpq = zext i1 %.sroa.0.0.i.i.i40.i to i64
  %i.bpr = add i64 %i.bhu, %i.bpq                 ; 2 uses
  %i.bps = getelementptr inbounds nuw i8, ptr %.sroa.9.11248.i, i64 12
  %.val17.i184 = load i32, ptr %i.bps, align 4, !alias.scope !5568 ; 2 uses
  %.val.i42.i = load ptr, ptr %6, align 8, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5718)
  %i.bpt = getelementptr inbounds nuw i8, ptr %.val.i42.i, i64 8 ; 2 uses
  %i.bpu = load i64, ptr %i.bpt, align 8, !alias.scope !5718, !noalias !5570, !noundef !5 ; 2 uses
  %i.bpv = icmp ugt i64 %i.bpu, %i.asb
  br i1 %i.bpv, label %bb.uu, label %bb.wb

bb.uu:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit141.i
  %i.bpw = load ptr, ptr %.val.i42.i, align 8, !alias.scope !5718, !noalias !5570, !nonnull !5, !align !11, !noundef !5
  %i.bpx = getelementptr inbounds nuw [8 x i8], ptr %i.bpw, i64 %i.asb ; 2 uses
  %.val.i184.i = load ptr, ptr %i.bpx, align 8, !noalias !5719, !nonnull !5, !align !11, !noundef !5 ; 7 uses
  %i.bpy = load ptr, ptr %.val.i184.i, align 8, !noalias !5719, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bpy, i64 96
  %.sroa.0120.0.copyload.i185 = load i128, ptr %i.bpz, align 16, !noalias !5719
  %.sroa.4121.0..sroa_idx.i186 = getelementptr inbounds nuw i8, ptr %i.bpy, i64 112
  %.sroa.4121.0.copyload.i187 = load i128, ptr %.sroa.4121.0..sroa_idx.i186, align 16, !noalias !5719
  %.sroa.5123.0..sroa_idx.i188 = getelementptr inbounds nuw i8, ptr %i.bpy, i64 136
  %.sroa.5123.0.copyload.i189 = load i64, ptr %.sroa.5123.0..sroa_idx.i188, align 8, !noalias !5719 ; 3 uses
  %.sroa.5123.40.extract.trunc.i190 = trunc i64 %.sroa.5123.0.copyload.i189 to i8 ; 2 uses
  %.not.i.i185.i = icmp eq i8 %.sroa.5123.40.extract.trunc.i190, -1
  br i1 %.not.i.i185.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i187.i, label %bb.uv

bb.uv:                                            ; preds = %bb.uu
  %i.bqa = getelementptr inbounds nuw i8, ptr %.val.i42.i, i64 16
  %i.bqb = load ptr, ptr %i.bqa, align 8, !alias.scope !5718, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5720)
  call void @llvm.experimental.noalias.scope.decl(metadata !5721), !noalias !5722
  %.sroa.44.0.extract.shift.i.i500.i = lshr i64 %.sroa.5123.0.copyload.i189, 8
  %.sroa.44.0.extract.trunc.i.i501.i = trunc i64 %.sroa.44.0.extract.shift.i.i500.i to i8 ; 2 uses
  switch i8 %.sroa.5123.40.extract.trunc.i190, label %bb.uw [
    i8 0, label %bb.ux
    i8 1, label %bb.vc
    i8 2, label %bb.vd
  ]

bb.uw:                                            ; preds = %bb.uv
  unreachable

bb.ux:                                            ; preds = %bb.uv
  switch i8 %.sroa.44.0.extract.trunc.i.i501.i, label %default.unreachable25.i.i.i515.i [
    i8 0, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit516.i
    i8 1, label %bb.uy
    i8 2, label %bb.uz
    i8 3, label %bb.va
    i8 4, label %bb.vb
  ]

default.unreachable25.i.i.i515.i:                 ; preds = %bb.ux
  unreachable

bb.uy:                                            ; preds = %bb.ux
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit516.i

bb.uz:                                            ; preds = %bb.ux
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit516.i

bb.va:                                            ; preds = %bb.ux
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit516.i

bb.vb:                                            ; preds = %bb.ux
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit516.i

bb.vc:                                            ; preds = %bb.uv
  %i.bqc = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i501.i), !noalias !5723
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i509.i

bb.vd:                                            ; preds = %bb.uv
  %.sroa.6.0.extract.shift.i.i503.i = lshr i64 %.sroa.5123.0.copyload.i189, 32
  %.sroa.6.0.extract.trunc.i.i504.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i503.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5724), !noalias !5722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5723
  store i32 %.sroa.6.0.extract.trunc.i.i504.i, ptr %i.j, align 4, !noalias !5725
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.bqb, i64 72
  %i.bqe = load i32, ptr %i.bqd, align 8, !alias.scope !5726, !noalias !5719, !noundef !5
  %i.bqf = icmp eq i32 %i.bqe, %.sroa.6.0.extract.trunc.i.i504.i
  br i1 %i.bqf, label %bb.vg, label %bb.ve

bb.ve:                                            ; preds = %bb.vd
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bqb, i64 32
  %i.bqh = load ptr, ptr %i.bqg, align 8, !alias.scope !5726, !noalias !5719, !nonnull !5, !noundef !5 ; 2 uses
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bqb, i64 40
  %i.bqj = load i64, ptr %i.bqi, align 8, !alias.scope !5726, !noalias !5719, !noundef !5 ; 2 uses
  %.idx10354 = shl nuw nsw i64 %i.bqj, 5
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqh, i64 %.idx10354
  %i.bql = icmp eq i64 %i.bqj, 0
  br i1 %i.bql, label %._crit_edge10277, label %.lr.ph10276

bb.vf:                                            ; preds = %.lr.ph10276
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqo, i64 32 ; 2 uses
  %i.bqn = icmp eq ptr %i.bqm, %i.bqk
  br i1 %i.bqn, label %._crit_edge10277, label %.lr.ph10276

.lr.ph10276:                                      ; preds = %bb.ve, %bb.vf
  %i.bqo = phi ptr [ %i.bqm, %bb.vf ], [ %i.bqh, %bb.ve ] ; 3 uses
  %i.bqp = load i32, ptr %i.bqo, align 8, !noalias !5727, !noundef !5
  %i.bqq = icmp eq i32 %i.bqp, %.sroa.6.0.extract.trunc.i.i504.i
  br i1 %i.bqq, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i505.i, label %bb.vf

bb.vg:                                            ; preds = %bb.vd
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bqb, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i506.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i505.i: ; preds = %.lr.ph10276
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bqo, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i506.i

._crit_edge10277:                                 ; preds = %bb.ve, %bb.vf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5725
  store ptr %i.j, ptr %i.i, align 8, !noalias !5725
  %.sroa.45.0..sroa_idx.i.i.i514.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i514.i, align 8, !noalias !5725
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5725
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i506.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i505.i, %bb.vg
  %.sroa.0.0.in.i.i.i507.i = phi ptr [ %i.bqr, %bb.vg ], [ %i.bqs, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i505.i ]
  %.sroa.0.0.i6.i.i508.i = load i64, ptr %.sroa.0.0.in.i.i.i507.i, align 8, !noalias !5728, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5723
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i509.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i509.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i506.i, %bb.vc
  %.sroa.05.0.i.i510.i = phi i64 [ %.sroa.0.0.i6.i.i508.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i506.i ], [ %i.bqc, %bb.vc ] ; 4 uses
  %i.bqt = icmp ugt i64 %.sroa.05.0.i.i510.i, 2305843009213693951
  br i1 %i.bqt, label %bb.vi, label %bb.vh, !prof !29

bb.vh:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i509.i
  %i.bqu = icmp samesign ult i64 %.sroa.05.0.i.i510.i, 17
  br i1 %i.bqu, label %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit516_crit_edge.i, label %bb.vj, !prof !30

._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit516_crit_edge.i: ; preds = %bb.vh
  %.neg4.i511.i = mul nuw nsw i64 %.sroa.05.0.i.i510.i, 120
  %.val2.pre.i186.pre.i = load ptr, ptr %i.bpx, align 8, !noalias !5719
  %i.bqv = and i64 %.neg4.i511.i, 120
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit516.i

bb.vi:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i509.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i510.i) #45, !noalias !5729
  unreachable

bb.vj:                                            ; preds = %bb.vh
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5729
  unreachable

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit516.i: ; preds = %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit516_crit_edge.i, %bb.vb, %bb.va, %bb.uz, %bb.uy, %bb.ux
  %.val2.pre.i186.i = phi ptr [ %.val2.pre.i186.pre.i, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit516_crit_edge.i ], [ %.val.i184.i, %bb.ux ], [ %.val.i184.i, %bb.va ], [ %.val.i184.i, %bb.uz ], [ %.val.i184.i, %bb.uy ], [ %.val.i184.i, %bb.vb ]
  %.neg5.i512.i = phi i64 [ %i.bqv, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit516_crit_edge.i ], [ 120, %bb.ux ], [ 64, %bb.va ], [ 96, %bb.uz ], [ 112, %bb.uy ], [ 0, %bb.vb ]
  %i.bqw = zext nneg i64 %.neg5.i512.i to i128
  %i.bqx = lshr i128 -1, %i.bqw
  %.neg.i513.i = xor i128 %.sroa.4121.0.copyload.i187, -1
  %i.bqy = add i128 %.sroa.0120.0.copyload.i185, %.neg.i513.i
  %i.bqz = and i128 %i.bqx, %i.bqy
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i187.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i187.i: ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit516.i, %bb.uu
  %.val2.i188.i = phi ptr [ %.val2.pre.i186.i, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit516.i ], [ %.val.i184.i, %bb.uu ] ; 3 uses
  %.sroa.0.0.i.i189.i = phi i128 [ %i.bqz, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit516.i ], [ 0, %bb.uu ]
  %i.bra = getelementptr inbounds nuw i8, ptr %.val.i42.i, i64 24 ; 2 uses
  %i.brb = load ptr, ptr %i.bra, align 8, !alias.scope !5718, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5730)
  %i.brc = load ptr, ptr %i.brb, align 8, !alias.scope !5730, !noalias !5719, !nonnull !5, !noundef !5 ; 2 uses
  %i.brd = load i8, ptr %i.brc, align 1, !range !13, !noalias !5731, !noundef !5
  %i.bre = trunc nuw i8 %i.brd to i1
  br i1 %i.bre, label %bb.vk, label %bb.vl

bb.vk:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i187.i
  %i.brf = getelementptr inbounds nuw i8, ptr %i.brc, i64 1
  %i.brg = load i8, ptr %i.brf, align 1, !noalias !5731, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i188.i) ]
  %i.brh = load ptr, ptr %.val2.i188.i, align 8, !noalias !5731, !nonnull !5, !align !21, !noundef !5
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brh, i64 338
  %i.brj = load i8, ptr %i.bri, align 2, !noalias !5731, !noundef !5
  %..i.i.i203.i = call noundef i8 @llvm.umin.i8(i8 %i.brg, i8 %i.brj)
  %i.brk = and i8 %..i.i.i203.i, 63
  %i.brl = zext nneg i8 %i.brk to i64
  %i.brm = shl nuw i64 1, %i.brl
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit204.i

bb.vl:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i187.i
  %i.brn = load ptr, ptr %.val2.i188.i, align 8, !noalias !5731, !nonnull !5, !align !21, !noundef !5 ; 6 uses
  %i.bro = getelementptr inbounds nuw i8, ptr %i.brn, i64 338
  %i.brp = load i8, ptr %i.bro, align 2, !noalias !5731, !noundef !5
  %i.brq = and i8 %i.brp, 63                      ; 2 uses
  %i.brr = zext nneg i8 %i.brq to i64
  %i.brs = shl nuw i64 1, %i.brr
  %i.brt = getelementptr inbounds nuw i8, ptr %i.brn, i64 320
  %i.bru = load i64, ptr %i.brt, align 16, !noalias !5731, !noundef !5
  %.sroa.5.0..sroa_idx.i.i190.i = getelementptr inbounds nuw i8, ptr %i.brn, i64 136
  %.sroa.5.0.copyload.i.i191.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i190.i, align 8, !noalias !5731 ; 2 uses
  %.not.i3.i192.i = icmp eq i8 %.sroa.5.0.copyload.i.i191.i, -1
  br i1 %.not.i3.i192.i, label %bb.vw, label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  %.sroa.6.0..sroa_idx.i.i193.i = getelementptr inbounds nuw i8, ptr %i.brn, i64 137
  %i.brv = getelementptr inbounds nuw i8, ptr %i.brn, i64 96
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brb, i64 8
  %i.brx = load ptr, ptr %i.brw, align 8, !alias.scope !5730, !noalias !5719, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  %.sroa.0125.0.copyload.i191 = load i128, ptr %i.brv, align 16, !noalias !5731
  %.sroa.4126.0..sroa_idx.i192 = getelementptr inbounds nuw i8, ptr %i.brn, i64 112
  %.sroa.4126.0.copyload.i193 = load i128, ptr %.sroa.4126.0..sroa_idx.i192, align 16, !noalias !5731
  %.sroa.5128.41.copyload.i194 = load i56, ptr %.sroa.6.0..sroa_idx.i.i193.i, align 1, !noalias !5731 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5732)
  call void @llvm.experimental.noalias.scope.decl(metadata !5733), !noalias !5734
  switch i8 %.sroa.5.0.copyload.i.i191.i, label %bb.vn [
    i8 0, label %switch.lookup10407
    i8 1, label %bb.vo
    i8 2, label %bb.vp
  ]

bb.vn:                                            ; preds = %bb.vm
  unreachable

bb.vo:                                            ; preds = %bb.vm
  %.sroa.44.0.extract.trunc.i.i483.i = trunc i56 %.sroa.5128.41.copyload.i194 to i8
  %i.bry = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i483.i), !noalias !5735
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i491.i

bb.vp:                                            ; preds = %bb.vm
  %.sroa.5128.41.insert.ext.i195 = zext i56 %.sroa.5128.41.copyload.i194 to i64
  %.sroa.6.0.extract.shift.i.i485.i = lshr i64 %.sroa.5128.41.insert.ext.i195, 24
  %.sroa.6.0.extract.trunc.i.i486.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i485.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5736), !noalias !5734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5735
  store i32 %.sroa.6.0.extract.trunc.i.i486.i, ptr %i.l, align 4, !noalias !5737
  %i.brz = getelementptr inbounds nuw i8, ptr %i.brx, i64 72
  %i.bsa = load i32, ptr %i.brz, align 8, !alias.scope !5738, !noalias !5731, !noundef !5
  %i.bsb = icmp eq i32 %i.bsa, %.sroa.6.0.extract.trunc.i.i486.i
  br i1 %i.bsb, label %bb.vs, label %bb.vq

bb.vq:                                            ; preds = %bb.vp
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.brx, i64 32
  %i.bsd = load ptr, ptr %i.bsc, align 8, !alias.scope !5738, !noalias !5731, !nonnull !5, !noundef !5 ; 2 uses
  %i.bse = getelementptr inbounds nuw i8, ptr %i.brx, i64 40
  %i.bsf = load i64, ptr %i.bse, align 8, !alias.scope !5738, !noalias !5731, !noundef !5 ; 2 uses
  %.idx10355 = shl nuw nsw i64 %i.bsf, 5
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bsd, i64 %.idx10355
  %i.bsh = icmp eq i64 %i.bsf, 0
  br i1 %i.bsh, label %._crit_edge10281, label %.lr.ph10280

bb.vr:                                            ; preds = %.lr.ph10280
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bsk, i64 32 ; 2 uses
  %i.bsj = icmp eq ptr %i.bsi, %i.bsg
  br i1 %i.bsj, label %._crit_edge10281, label %.lr.ph10280

.lr.ph10280:                                      ; preds = %bb.vq, %bb.vr
  %i.bsk = phi ptr [ %i.bsi, %bb.vr ], [ %i.bsd, %bb.vq ] ; 3 uses
  %i.bsl = load i32, ptr %i.bsk, align 8, !noalias !5739, !noundef !5
  %i.bsm = icmp eq i32 %i.bsl, %.sroa.6.0.extract.trunc.i.i486.i
  br i1 %i.bsm, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i487.i, label %bb.vr

bb.vs:                                            ; preds = %bb.vp
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.brx, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i488.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i487.i: ; preds = %.lr.ph10280
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bsk, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i488.i

._crit_edge10281:                                 ; preds = %bb.vq, %bb.vr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5737
  store ptr %i.l, ptr %i.k, align 8, !noalias !5737
  %.sroa.45.0..sroa_idx.i.i.i496.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i496.i, align 8, !noalias !5737
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5737
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i488.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i487.i, %bb.vs
  %.sroa.0.0.in.i.i.i489.i = phi ptr [ %i.bsn, %bb.vs ], [ %i.bso, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i487.i ]
  %.sroa.0.0.i6.i.i490.i = load i64, ptr %.sroa.0.0.in.i.i.i489.i, align 8, !noalias !5740, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5735
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i491.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i491.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i488.i, %bb.vo
  %.sroa.05.0.i.i492.i = phi i64 [ %.sroa.0.0.i6.i.i490.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i488.i ], [ %i.bry, %bb.vo ] ; 4 uses
  %i.bsp = icmp ugt i64 %.sroa.05.0.i.i492.i, 2305843009213693951
  br i1 %i.bsp, label %bb.vu, label %bb.vt, !prof !29

bb.vt:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i491.i
  %.neg4.i493.i = mul nsw i64 %.sroa.05.0.i.i492.i, -8
  %i.bsq = icmp samesign ult i64 %.sroa.05.0.i.i492.i, 17
  br i1 %i.bsq, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit498.i, label %bb.vv, !prof !30

bb.vu:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i491.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i492.i) #45, !noalias !5741
  unreachable

bb.vv:                                            ; preds = %bb.vt
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5741
  unreachable

switch.lookup10407:                               ; preds = %bb.vm
  %.sroa.44.0.extract.trunc.i.i483.i.mask = and i56 %.sroa.5128.41.copyload.i194, 255
  %i.bsr = zext nneg i56 %.sroa.44.0.extract.trunc.i.i483.i.mask to i64
  %switch.gep10423 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.bsr
  %switch.load10424 = load i8, ptr %switch.gep10423, align 1
  %switch.ext10425 = zext i8 %switch.load10424 to i64
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit498.i

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit498.i: ; preds = %switch.lookup10407, %bb.vt
  %.neg5.i494.i = phi i64 [ %.neg4.i493.i, %bb.vt ], [ %switch.ext10425, %switch.lookup10407 ]
  %i.bss = and i64 %.neg5.i494.i, 120
  %i.bst = zext nneg i64 %i.bss to i128
  %i.bsu = lshr i128 -1, %i.bst
  %.neg.i495.i = xor i128 %.sroa.4126.0.copyload.i193, -1
  %i.bsv = add i128 %.sroa.0125.0.copyload.i191, %.neg.i495.i
  %i.bsw = and i128 %i.bsu, %i.bsv
  br label %bb.vw

bb.vw:                                            ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit498.i, %bb.vl
  %.sroa.01.0.i.i196.i = phi i128 [ %i.bsw, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit498.i ], [ 0, %bb.vl ]
  %..i14.i.i197.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.bru, i64 range(i64 1, -9223372036854775807) %i.brs)
  %i.bsx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %..i14.i.i197.i, i1 true)
  %i.bsy = trunc nuw nsw i64 %i.bsx to i32        ; 3 uses
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.brb, i64 16
  %i.bta = load ptr, ptr %i.bsz, align 8, !alias.scope !5730, !noalias !5719, !nonnull !5, !align !21, !noundef !5
  %i.btb = load i128, ptr %i.bta, align 16, !noalias !5731, !noundef !5 ; 2 uses
  %.not10.i.i198.i = icmp eq i128 %i.btb, 0
  br i1 %.not10.i.i198.i, label %bb.vy, label %bb.vx

bb.vx:                                            ; preds = %bb.vw
  %i.btc = getelementptr inbounds nuw i8, ptr %i.brb, i64 24
  %i.btd = load ptr, ptr %i.btc, align 8, !alias.scope !5730, !noalias !5719, !nonnull !5, !noundef !5
  %i.bte = load i8, ptr %i.btd, align 1, !range !13, !noalias !5731, !noundef !5
  %i.btf = trunc nuw i8 %i.bte to i1
  br i1 %i.btf, label %bb.vz, label %bb.wa

bb.vy:                                            ; preds = %bb.wa, %bb.vz, %bb.vw
  %.sroa.07.0.i.i200.i = phi i32 [ %spec.select.i.i202.i, %bb.vz ], [ %i.bsy, %bb.vw ], [ %..i15.i.i199.i, %bb.wa ]
  %i.btg = zext nneg i32 %.sroa.07.0.i.i200.i to i64
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit204.i

bb.vz:                                            ; preds = %bb.vx
  %i.bth = icmp eq i128 %.sroa.01.0.i.i196.i, %i.btb
  %i.bti = zext nneg i8 %i.brq to i32
  %spec.select.i.i202.i = select i1 %i.bth, i32 %i.bti, i32 %i.bsy
  br label %bb.vy

bb.wa:                                            ; preds = %bb.vx
  %i.btj = getelementptr inbounds nuw i8, ptr %i.brb, i64 32
  %i.btk = load ptr, ptr %i.btj, align 8, !alias.scope !5730, !noalias !5719, !nonnull !5, !align !11, !noundef !5
  %i.btl = load i64, ptr %i.btk, align 8, !noalias !5731, !noundef !5
  %i.btm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.btl, i1 false)
  %i.btn = trunc nuw nsw i64 %i.btm to i32
  %..i15.i.i199.i = call noundef range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.bsy, i32 range(i32 0, 129) %i.btn)
  br label %bb.vy

bb.wb:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit141.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.asb, i64 noundef %i.bpu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #43, !noalias !5719
  unreachable

_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit204.i: ; preds = %bb.vy, %bb.vk
  %.sroa.0.0.i4.i201.i = phi i64 [ %i.brm, %bb.vk ], [ %i.btg, %bb.vy ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5742)
  %i.bto = load i64, ptr %i.bpt, align 8, !alias.scope !5742, !noalias !5570, !noundef !5 ; 2 uses
  %i.btp = zext i32 %.val17.i184 to i64           ; 3 uses
  %i.btq = icmp ugt i64 %i.bto, %i.btp
  br i1 %i.btq, label %bb.wc, label %bb.xj

bb.wc:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit204.i
  %i.btr = load ptr, ptr %.val.i42.i, align 8, !alias.scope !5742, !noalias !5570, !nonnull !5, !align !11, !noundef !5
  %i.bts = getelementptr inbounds nuw [8 x i8], ptr %i.btr, i64 %i.btp ; 2 uses
  %.val.i163.i = load ptr, ptr %i.bts, align 8, !noalias !5743, !nonnull !5, !align !11, !noundef !5 ; 7 uses
  %i.btt = load ptr, ptr %.val.i163.i, align 8, !noalias !5743, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.btu = getelementptr inbounds nuw i8, ptr %i.btt, i64 96
  %.sroa.0111.0.copyload.i196 = load i128, ptr %i.btu, align 16, !noalias !5743
  %.sroa.4112.0..sroa_idx.i197 = getelementptr inbounds nuw i8, ptr %i.btt, i64 112
  %.sroa.4112.0.copyload.i198 = load i128, ptr %.sroa.4112.0..sroa_idx.i197, align 16, !noalias !5743
  %.sroa.5114.0..sroa_idx.i199 = getelementptr inbounds nuw i8, ptr %i.btt, i64 136
  %.sroa.5114.0.copyload.i200 = load i64, ptr %.sroa.5114.0..sroa_idx.i199, align 8, !noalias !5743 ; 3 uses
  %.sroa.5114.40.extract.trunc.i201 = trunc i64 %.sroa.5114.0.copyload.i200 to i8 ; 2 uses
  %.not.i.i164.i = icmp eq i8 %.sroa.5114.40.extract.trunc.i201, -1
  br i1 %.not.i.i164.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i166.i, label %bb.wd

bb.wd:                                            ; preds = %bb.wc
  %i.btv = getelementptr inbounds nuw i8, ptr %.val.i42.i, i64 16
  %i.btw = load ptr, ptr %i.btv, align 8, !alias.scope !5742, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5744)
  call void @llvm.experimental.noalias.scope.decl(metadata !5745), !noalias !5746
  %.sroa.44.0.extract.shift.i.i464.i = lshr i64 %.sroa.5114.0.copyload.i200, 8
  %.sroa.44.0.extract.trunc.i.i465.i = trunc i64 %.sroa.44.0.extract.shift.i.i464.i to i8 ; 2 uses
  switch i8 %.sroa.5114.40.extract.trunc.i201, label %bb.we [
    i8 0, label %bb.wf
    i8 1, label %bb.wk
    i8 2, label %bb.wl
  ]

bb.we:                                            ; preds = %bb.wd
  unreachable

bb.wf:                                            ; preds = %bb.wd
  switch i8 %.sroa.44.0.extract.trunc.i.i465.i, label %default.unreachable25.i.i.i479.i [
    i8 0, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit480.i
    i8 1, label %bb.wg
    i8 2, label %bb.wh
    i8 3, label %bb.wi
    i8 4, label %bb.wj
  ]

default.unreachable25.i.i.i479.i:                 ; preds = %bb.wf
  unreachable

bb.wg:                                            ; preds = %bb.wf
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit480.i

bb.wh:                                            ; preds = %bb.wf
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit480.i

bb.wi:                                            ; preds = %bb.wf
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit480.i

bb.wj:                                            ; preds = %bb.wf
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit480.i

bb.wk:                                            ; preds = %bb.wd
  %i.btx = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i465.i), !noalias !5747
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i473.i

bb.wl:                                            ; preds = %bb.wd
  %.sroa.6.0.extract.shift.i.i467.i = lshr i64 %.sroa.5114.0.copyload.i200, 32
  %.sroa.6.0.extract.trunc.i.i468.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i467.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5748), !noalias !5746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5747
  store i32 %.sroa.6.0.extract.trunc.i.i468.i, ptr %i.n, align 4, !noalias !5749
  %i.bty = getelementptr inbounds nuw i8, ptr %i.btw, i64 72
  %i.btz = load i32, ptr %i.bty, align 8, !alias.scope !5750, !noalias !5743, !noundef !5
  %i.bua = icmp eq i32 %i.btz, %.sroa.6.0.extract.trunc.i.i468.i
  br i1 %i.bua, label %bb.wo, label %bb.wm

bb.wm:                                            ; preds = %bb.wl
  %i.bub = getelementptr inbounds nuw i8, ptr %i.btw, i64 32
  %i.buc = load ptr, ptr %i.bub, align 8, !alias.scope !5750, !noalias !5743, !nonnull !5, !noundef !5 ; 2 uses
  %i.bud = getelementptr inbounds nuw i8, ptr %i.btw, i64 40
  %i.bue = load i64, ptr %i.bud, align 8, !alias.scope !5750, !noalias !5743, !noundef !5 ; 2 uses
  %.idx10356 = shl nuw nsw i64 %i.bue, 5
  %i.buf = getelementptr inbounds nuw i8, ptr %i.buc, i64 %.idx10356
  %i.bug = icmp eq i64 %i.bue, 0
  br i1 %i.bug, label %._crit_edge10285, label %.lr.ph10284

bb.wn:                                            ; preds = %.lr.ph10284
  %i.buh = getelementptr inbounds nuw i8, ptr %i.buj, i64 32 ; 2 uses
  %i.bui = icmp eq ptr %i.buh, %i.buf
  br i1 %i.bui, label %._crit_edge10285, label %.lr.ph10284

.lr.ph10284:                                      ; preds = %bb.wm, %bb.wn
  %i.buj = phi ptr [ %i.buh, %bb.wn ], [ %i.buc, %bb.wm ] ; 3 uses
  %i.buk = load i32, ptr %i.buj, align 8, !noalias !5751, !noundef !5
  %i.bul = icmp eq i32 %i.buk, %.sroa.6.0.extract.trunc.i.i468.i
  br i1 %i.bul, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i469.i, label %bb.wn

bb.wo:                                            ; preds = %bb.wl
  %i.bum = getelementptr inbounds nuw i8, ptr %i.btw, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i470.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i469.i: ; preds = %.lr.ph10284
  %i.bun = getelementptr inbounds nuw i8, ptr %i.buj, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i470.i

._crit_edge10285:                                 ; preds = %bb.wm, %bb.wn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5749
  store ptr %i.n, ptr %i.m, align 8, !noalias !5749
  %.sroa.45.0..sroa_idx.i.i.i478.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i478.i, align 8, !noalias !5749
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5749
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i470.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i469.i, %bb.wo
  %.sroa.0.0.in.i.i.i471.i = phi ptr [ %i.bum, %bb.wo ], [ %i.bun, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i469.i ]
  %.sroa.0.0.i6.i.i472.i = load i64, ptr %.sroa.0.0.in.i.i.i471.i, align 8, !noalias !5752, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5747
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i473.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i473.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i470.i, %bb.wk
  %.sroa.05.0.i.i474.i = phi i64 [ %.sroa.0.0.i6.i.i472.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i470.i ], [ %i.btx, %bb.wk ] ; 4 uses
  %i.buo = icmp ugt i64 %.sroa.05.0.i.i474.i, 2305843009213693951
  br i1 %i.buo, label %bb.wq, label %bb.wp, !prof !29

bb.wp:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i473.i
  %i.bup = icmp samesign ult i64 %.sroa.05.0.i.i474.i, 17
  br i1 %i.bup, label %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit480_crit_edge.i, label %bb.wr, !prof !30

._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit480_crit_edge.i: ; preds = %bb.wp
  %.neg4.i475.i = mul nuw nsw i64 %.sroa.05.0.i.i474.i, 120
  %.val2.pre.i165.pre.i = load ptr, ptr %i.bts, align 8, !noalias !5743
  %i.buq = and i64 %.neg4.i475.i, 120
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit480.i

bb.wq:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i473.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i474.i) #45, !noalias !5753
  unreachable

bb.wr:                                            ; preds = %bb.wp
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5753
  unreachable

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit480.i: ; preds = %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit480_crit_edge.i, %bb.wj, %bb.wi, %bb.wh, %bb.wg, %bb.wf
  %.val2.pre.i165.i = phi ptr [ %.val2.pre.i165.pre.i, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit480_crit_edge.i ], [ %.val.i163.i, %bb.wf ], [ %.val.i163.i, %bb.wi ], [ %.val.i163.i, %bb.wh ], [ %.val.i163.i, %bb.wg ], [ %.val.i163.i, %bb.wj ]
  %.neg5.i476.i = phi i64 [ %i.buq, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit480_crit_edge.i ], [ 120, %bb.wf ], [ 64, %bb.wi ], [ 96, %bb.wh ], [ 112, %bb.wg ], [ 0, %bb.wj ]
  %i.bur = zext nneg i64 %.neg5.i476.i to i128
  %i.bus = lshr i128 -1, %i.bur
  %.neg.i477.i = xor i128 %.sroa.4112.0.copyload.i198, -1
  %i.but = add i128 %.sroa.0111.0.copyload.i196, %.neg.i477.i
  %i.buu = and i128 %i.bus, %i.but
  %i.buv = icmp uge i128 %.sroa.0.0.i.i189.i, %i.buu
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i166.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i166.i: ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit480.i, %bb.wc
  %.val2.i167.i = phi ptr [ %.val2.pre.i165.i, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit480.i ], [ %.val.i163.i, %bb.wc ] ; 3 uses
  %.sroa.0.0.i.i168.i = phi i1 [ %i.buv, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit480.i ], [ true, %bb.wc ]
  %i.buw = load ptr, ptr %i.bra, align 8, !alias.scope !5742, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5754)
  %i.bux = load ptr, ptr %i.buw, align 8, !alias.scope !5754, !noalias !5743, !nonnull !5, !noundef !5 ; 2 uses
  %i.buy = load i8, ptr %i.bux, align 1, !range !13, !noalias !5755, !noundef !5
  %i.buz = trunc nuw i8 %i.buy to i1
  br i1 %i.buz, label %bb.ws, label %bb.wt

bb.ws:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i166.i
  %i.bva = getelementptr inbounds nuw i8, ptr %i.bux, i64 1
  %i.bvb = load i8, ptr %i.bva, align 1, !noalias !5755, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i167.i) ]
  %i.bvc = load ptr, ptr %.val2.i167.i, align 8, !noalias !5755, !nonnull !5, !align !21, !noundef !5
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.bvc, i64 338
  %i.bve = load i8, ptr %i.bvd, align 2, !noalias !5755, !noundef !5
  %..i.i.i182.i = call noundef i8 @llvm.umin.i8(i8 %i.bvb, i8 %i.bve)
  %i.bvf = and i8 %..i.i.i182.i, 63
  %i.bvg = zext nneg i8 %i.bvf to i64
  %i.bvh = shl nuw i64 1, %i.bvg
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit183.i

bb.wt:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i166.i
  %i.bvi = load ptr, ptr %.val2.i167.i, align 8, !noalias !5755, !nonnull !5, !align !21, !noundef !5 ; 6 uses
  %i.bvj = getelementptr inbounds nuw i8, ptr %i.bvi, i64 338
  %i.bvk = load i8, ptr %i.bvj, align 2, !noalias !5755, !noundef !5
  %i.bvl = and i8 %i.bvk, 63                      ; 2 uses
  %i.bvm = zext nneg i8 %i.bvl to i64
  %i.bvn = shl nuw i64 1, %i.bvm
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bvi, i64 320
  %i.bvp = load i64, ptr %i.bvo, align 16, !noalias !5755, !noundef !5
  %.sroa.5.0..sroa_idx.i.i169.i = getelementptr inbounds nuw i8, ptr %i.bvi, i64 136
  %.sroa.5.0.copyload.i.i170.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i169.i, align 8, !noalias !5755 ; 2 uses
  %.not.i3.i171.i = icmp eq i8 %.sroa.5.0.copyload.i.i170.i, -1
  br i1 %.not.i3.i171.i, label %bb.xe, label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  %.sroa.6.0..sroa_idx.i.i172.i = getelementptr inbounds nuw i8, ptr %i.bvi, i64 137
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvi, i64 96
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.buw, i64 8
  %i.bvs = load ptr, ptr %i.bvr, align 8, !alias.scope !5754, !noalias !5743, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  %.sroa.0116.0.copyload.i202 = load i128, ptr %i.bvq, align 16, !noalias !5755
  %.sroa.4117.0..sroa_idx.i203 = getelementptr inbounds nuw i8, ptr %i.bvi, i64 112
  %.sroa.4117.0.copyload.i204 = load i128, ptr %.sroa.4117.0..sroa_idx.i203, align 16, !noalias !5755
  %.sroa.5119.41.copyload.i205 = load i56, ptr %.sroa.6.0..sroa_idx.i.i172.i, align 1, !noalias !5755 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5756)
  call void @llvm.experimental.noalias.scope.decl(metadata !5757), !noalias !5758
  switch i8 %.sroa.5.0.copyload.i.i170.i, label %bb.wv [
    i8 0, label %switch.lookup10410
    i8 1, label %bb.ww
    i8 2, label %bb.wx
  ]

bb.wv:                                            ; preds = %bb.wu
  unreachable

bb.ww:                                            ; preds = %bb.wu
  %.sroa.44.0.extract.trunc.i.i447.i = trunc i56 %.sroa.5119.41.copyload.i205 to i8
  %i.bvt = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i447.i), !noalias !5759
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i455.i

bb.wx:                                            ; preds = %bb.wu
  %.sroa.5119.41.insert.ext.i206 = zext i56 %.sroa.5119.41.copyload.i205 to i64
  %.sroa.6.0.extract.shift.i.i449.i = lshr i64 %.sroa.5119.41.insert.ext.i206, 24
  %.sroa.6.0.extract.trunc.i.i450.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i449.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5760), !noalias !5758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5759
  store i32 %.sroa.6.0.extract.trunc.i.i450.i, ptr %i.p, align 4, !noalias !5761
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bvs, i64 72
  %i.bvv = load i32, ptr %i.bvu, align 8, !alias.scope !5762, !noalias !5755, !noundef !5
  %i.bvw = icmp eq i32 %i.bvv, %.sroa.6.0.extract.trunc.i.i450.i
  br i1 %i.bvw, label %bb.xa, label %bb.wy

bb.wy:                                            ; preds = %bb.wx
  %i.bvx = getelementptr inbounds nuw i8, ptr %i.bvs, i64 32
  %i.bvy = load ptr, ptr %i.bvx, align 8, !alias.scope !5762, !noalias !5755, !nonnull !5, !noundef !5 ; 2 uses
  %i.bvz = getelementptr inbounds nuw i8, ptr %i.bvs, i64 40
  %i.bwa = load i64, ptr %i.bvz, align 8, !alias.scope !5762, !noalias !5755, !noundef !5 ; 2 uses
  %.idx10357 = shl nuw nsw i64 %i.bwa, 5
  %i.bwb = getelementptr inbounds nuw i8, ptr %i.bvy, i64 %.idx10357
  %i.bwc = icmp eq i64 %i.bwa, 0
  br i1 %i.bwc, label %._crit_edge10289, label %.lr.ph10288

bb.wz:                                            ; preds = %.lr.ph10288
  %i.bwd = getelementptr inbounds nuw i8, ptr %i.bwf, i64 32 ; 2 uses
  %i.bwe = icmp eq ptr %i.bwd, %i.bwb
  br i1 %i.bwe, label %._crit_edge10289, label %.lr.ph10288

.lr.ph10288:                                      ; preds = %bb.wy, %bb.wz
  %i.bwf = phi ptr [ %i.bwd, %bb.wz ], [ %i.bvy, %bb.wy ] ; 3 uses
  %i.bwg = load i32, ptr %i.bwf, align 8, !noalias !5763, !noundef !5
  %i.bwh = icmp eq i32 %i.bwg, %.sroa.6.0.extract.trunc.i.i450.i
  br i1 %i.bwh, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i451.i, label %bb.wz

bb.xa:                                            ; preds = %bb.wx
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bvs, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i452.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i451.i: ; preds = %.lr.ph10288
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bwf, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i452.i

._crit_edge10289:                                 ; preds = %bb.wy, %bb.wz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5761
  store ptr %i.p, ptr %i.o, align 8, !noalias !5761
  %.sroa.45.0..sroa_idx.i.i.i460.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i460.i, align 8, !noalias !5761
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5761
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i452.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i451.i, %bb.xa
  %.sroa.0.0.in.i.i.i453.i = phi ptr [ %i.bwi, %bb.xa ], [ %i.bwj, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i451.i ]
  %.sroa.0.0.i6.i.i454.i = load i64, ptr %.sroa.0.0.in.i.i.i453.i, align 8, !noalias !5764, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5759
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i455.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i455.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i452.i, %bb.ww
  %.sroa.05.0.i.i456.i = phi i64 [ %.sroa.0.0.i6.i.i454.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i452.i ], [ %i.bvt, %bb.ww ] ; 4 uses
  %i.bwk = icmp ugt i64 %.sroa.05.0.i.i456.i, 2305843009213693951
  br i1 %i.bwk, label %bb.xc, label %bb.xb, !prof !29

bb.xb:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i455.i
  %.neg4.i457.i = mul nsw i64 %.sroa.05.0.i.i456.i, -8
  %i.bwl = icmp samesign ult i64 %.sroa.05.0.i.i456.i, 17
  br i1 %i.bwl, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit462.i, label %bb.xd, !prof !30

bb.xc:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i455.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i456.i) #45, !noalias !5765
  unreachable

bb.xd:                                            ; preds = %bb.xb
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5765
  unreachable

switch.lookup10410:                               ; preds = %bb.wu
  %.sroa.44.0.extract.trunc.i.i447.i.mask = and i56 %.sroa.5119.41.copyload.i205, 255
  %i.bwm = zext nneg i56 %.sroa.44.0.extract.trunc.i.i447.i.mask to i64
  %switch.gep10427 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.bwm
  %switch.load10428 = load i8, ptr %switch.gep10427, align 1
  %switch.ext10429 = zext i8 %switch.load10428 to i64
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit462.i

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit462.i: ; preds = %switch.lookup10410, %bb.xb
  %.neg5.i458.i = phi i64 [ %.neg4.i457.i, %bb.xb ], [ %switch.ext10429, %switch.lookup10410 ]
  %i.bwn = and i64 %.neg5.i458.i, 120
  %i.bwo = zext nneg i64 %i.bwn to i128
  %i.bwp = lshr i128 -1, %i.bwo
  %.neg.i459.i = xor i128 %.sroa.4117.0.copyload.i204, -1
  %i.bwq = add i128 %.sroa.0116.0.copyload.i202, %.neg.i459.i
  %i.bwr = and i128 %i.bwp, %i.bwq
  br label %bb.xe

bb.xe:                                            ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit462.i, %bb.wt
  %.sroa.01.0.i.i175.i = phi i128 [ %i.bwr, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit462.i ], [ 0, %bb.wt ]
  %..i14.i.i176.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.bvp, i64 range(i64 1, -9223372036854775807) %i.bvn)
  %i.bws = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %..i14.i.i176.i, i1 true)
  %i.bwt = trunc nuw nsw i64 %i.bws to i32        ; 3 uses
  %i.bwu = getelementptr inbounds nuw i8, ptr %i.buw, i64 16
  %i.bwv = load ptr, ptr %i.bwu, align 8, !alias.scope !5754, !noalias !5743, !nonnull !5, !align !21, !noundef !5
  %i.bww = load i128, ptr %i.bwv, align 16, !noalias !5755, !noundef !5 ; 2 uses
  %.not10.i.i177.i = icmp eq i128 %i.bww, 0
  br i1 %.not10.i.i177.i, label %bb.xg, label %bb.xf

bb.xf:                                            ; preds = %bb.xe
  %i.bwx = getelementptr inbounds nuw i8, ptr %i.buw, i64 24
  %i.bwy = load ptr, ptr %i.bwx, align 8, !alias.scope !5754, !noalias !5743, !nonnull !5, !noundef !5
  %i.bwz = load i8, ptr %i.bwy, align 1, !range !13, !noalias !5755, !noundef !5
  %i.bxa = trunc nuw i8 %i.bwz to i1
  br i1 %i.bxa, label %bb.xh, label %bb.xi

bb.xg:                                            ; preds = %bb.xi, %bb.xh, %bb.xe
  %.sroa.07.0.i.i179.i = phi i32 [ %spec.select.i.i181.i, %bb.xh ], [ %i.bwt, %bb.xe ], [ %..i15.i.i178.i, %bb.xi ]
  %i.bxb = zext nneg i32 %.sroa.07.0.i.i179.i to i64
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit183.i

bb.xh:                                            ; preds = %bb.xf
  %i.bxc = icmp eq i128 %.sroa.01.0.i.i175.i, %i.bww
  %i.bxd = zext nneg i8 %i.bvl to i32
  %spec.select.i.i181.i = select i1 %i.bxc, i32 %i.bxd, i32 %i.bwt
  br label %bb.xg

bb.xi:                                            ; preds = %bb.xf
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.buw, i64 32
  %i.bxf = load ptr, ptr %i.bxe, align 8, !alias.scope !5754, !noalias !5743, !nonnull !5, !align !11, !noundef !5
  %i.bxg = load i64, ptr %i.bxf, align 8, !noalias !5755, !noundef !5
  %i.bxh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bxg, i1 false)
  %i.bxi = trunc nuw nsw i64 %i.bxh to i32
  %..i15.i.i178.i = call noundef range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.bwt, i32 range(i32 0, 129) %i.bxi)
  br label %bb.xg

bb.xj:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit204.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.btp, i64 noundef %i.bto, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #43, !noalias !5743
  unreachable

_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit183.i: ; preds = %bb.xg, %bb.ws
  %.sroa.0.0.i4.i180.i = phi i64 [ %i.bvh, %bb.ws ], [ %i.bxb, %bb.xg ] ; 2 uses
  %i.bxj = icmp eq i64 %.sroa.0.0.i4.i201.i, %.sroa.0.0.i4.i180.i
  %i.bxk = icmp uge i64 %.sroa.0.0.i4.i201.i, %.sroa.0.0.i4.i180.i
  %.sroa.0.0.i.i.i47.i = select i1 %i.bxj, i1 %.sroa.0.0.i.i168.i, i1 %i.bxk ; 2 uses
  %i.bxl = getelementptr inbounds i8, ptr %.sroa.43.11246.i, i64 -16 ; 3 uses
  %.sroa.01.0.i48.i = select i1 %.sroa.0.0.i.i.i47.i, ptr %2, ptr %i.bxl
  %i.bxm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i48.i, i64 %i.bpr
  store i32 %.val17.i184, ptr %i.bxm, align 4, !alias.scope !5569, !noalias !5766
  %i.bxn = zext i1 %.sroa.0.0.i.i.i47.i to i64
  %i.bxo = add i64 %i.bpr, %i.bxn                 ; 2 uses
  %i.bxp = getelementptr inbounds nuw i8, ptr %.sroa.9.11248.i, i64 16 ; 3 uses
  %i.bxq = icmp ult ptr %i.bxp, %i.arz
  br i1 %i.bxq, label %bb.mx, label %._crit_edge.i49

._crit_edge.i49:                                  ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit183.i, %bb.mw
  %.sroa.43.1.lcssa.i50 = phi ptr [ %.sroa.43.0.i45, %bb.mw ], [ %i.bxl, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit183.i ] ; 2 uses
  %.sroa.27.1.lcssa.i51 = phi i64 [ %.sroa.27.0.i46, %bb.mw ], [ %i.bxo, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit183.i ] ; 2 uses
  %.sroa.9.1.lcssa.i52 = phi ptr [ %.sroa.9.0.i47, %bb.mw ], [ %i.bxp, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit183.i ] ; 3 uses
  %i.bxr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph2655, i64 %.sroa.0.0.i48 ; 2 uses
  %i.bxs = icmp ult ptr %.sroa.9.1.lcssa.i52, %i.bxr
  br i1 %i.bxs, label %.lr.ph1255.i.preheader, label %._crit_edge1256.i

.lr.ph1255.i.preheader:                           ; preds = %._crit_edge.i49
  %.val15.i58 = load i32, ptr %i.dr, align 4, !alias.scope !5568, !noundef !5
  %i.bxt = zext i32 %.val15.i58 to i64            ; 3 uses
  br label %.lr.ph1255.i

._crit_edge1256.i:                                ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit225.i, %._crit_edge.i49
  %.sroa.43.2.lcssa.i53 = phi ptr [ %.sroa.43.1.lcssa.i50, %._crit_edge.i49 ], [ %i.cfn, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit225.i ]
  %.sroa.27.2.lcssa.i54 = phi i64 [ %.sroa.27.1.lcssa.i51, %._crit_edge.i49 ], [ %i.cfq, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit225.i ] ; 9 uses
  %.sroa.9.2.lcssa.i55 = phi ptr [ %.sroa.9.1.lcssa.i52, %._crit_edge.i49 ], [ %i.cfr, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit225.i ] ; 2 uses
  %i.bxu = icmp eq i64 %.sroa.0.0.i48, %.sroa.16.0264810220
  br i1 %i.bxu, label %bb.aab, label %bb.aaa

.lr.ph1255.i:                                     ; preds = %.lr.ph1255.i.preheader, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit225.i
  %.sroa.9.21253.i = phi ptr [ %i.cfr, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit225.i ], [ %.sroa.9.1.lcssa.i52, %.lr.ph1255.i.preheader ] ; 2 uses
  %.sroa.27.21252.i = phi i64 [ %i.cfq, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit225.i ], [ %.sroa.27.1.lcssa.i51, %.lr.ph1255.i.preheader ] ; 2 uses
  %.sroa.43.21251.i = phi ptr [ %i.cfn, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit225.i ], [ %.sroa.43.1.lcssa.i50, %.lr.ph1255.i.preheader ]
  %.val14.i57 = load i32, ptr %.sroa.9.21253.i, align 4, !alias.scope !5568 ; 2 uses
  %.val.i49.i = load ptr, ptr %6, align 8, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5767)
  %i.bxv = getelementptr inbounds nuw i8, ptr %.val.i49.i, i64 8 ; 2 uses
  %i.bxw = load i64, ptr %i.bxv, align 8, !alias.scope !5767, !noalias !5570, !noundef !5 ; 2 uses
  %i.bxx = icmp ugt i64 %i.bxw, %i.bxt
  br i1 %i.bxx, label %bb.xk, label %bb.yr

bb.xk:                                            ; preds = %.lr.ph1255.i
  %i.bxy = load ptr, ptr %.val.i49.i, align 8, !alias.scope !5767, !noalias !5570, !nonnull !5, !align !11, !noundef !5
  %i.bxz = getelementptr inbounds nuw [8 x i8], ptr %i.bxy, i64 %i.bxt ; 2 uses
  %.val.i226.i = load ptr, ptr %i.bxz, align 8, !noalias !5768, !nonnull !5, !align !11, !noundef !5 ; 7 uses
  %i.bya = load ptr, ptr %.val.i226.i, align 8, !noalias !5768, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.byb = getelementptr inbounds nuw i8, ptr %i.bya, i64 96
  %.sroa.0138.0.copyload.i59 = load i128, ptr %i.byb, align 16, !noalias !5768
  %.sroa.4139.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.bya, i64 112
  %.sroa.4139.0.copyload.i61 = load i128, ptr %.sroa.4139.0..sroa_idx.i60, align 16, !noalias !5768
  %.sroa.5141.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %i.bya, i64 136
  %.sroa.5141.0.copyload.i63 = load i64, ptr %.sroa.5141.0..sroa_idx.i62, align 8, !noalias !5768 ; 3 uses
  %.sroa.5141.40.extract.trunc.i64 = trunc i64 %.sroa.5141.0.copyload.i63 to i8 ; 2 uses
  %.not.i.i227.i = icmp eq i8 %.sroa.5141.40.extract.trunc.i64, -1
  br i1 %.not.i.i227.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i229.i, label %bb.xl

bb.xl:                                            ; preds = %bb.xk
  %i.byc = getelementptr inbounds nuw i8, ptr %.val.i49.i, i64 16
  %i.byd = load ptr, ptr %i.byc, align 8, !alias.scope !5767, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5769)
  call void @llvm.experimental.noalias.scope.decl(metadata !5770), !noalias !5771
  %.sroa.44.0.extract.shift.i.i572.i = lshr i64 %.sroa.5141.0.copyload.i63, 8
  %.sroa.44.0.extract.trunc.i.i573.i = trunc i64 %.sroa.44.0.extract.shift.i.i572.i to i8 ; 2 uses
  switch i8 %.sroa.5141.40.extract.trunc.i64, label %bb.xm [
    i8 0, label %bb.xn
    i8 1, label %bb.xs
    i8 2, label %bb.xt
  ]

bb.xm:                                            ; preds = %bb.xl
  unreachable

bb.xn:                                            ; preds = %bb.xl
  switch i8 %.sroa.44.0.extract.trunc.i.i573.i, label %default.unreachable25.i.i.i587.i [
    i8 0, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit588.i
    i8 1, label %bb.xo
    i8 2, label %bb.xp
    i8 3, label %bb.xq
    i8 4, label %bb.xr
  ]

default.unreachable25.i.i.i587.i:                 ; preds = %bb.xn
  unreachable

bb.xo:                                            ; preds = %bb.xn
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit588.i

bb.xp:                                            ; preds = %bb.xn
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit588.i

bb.xq:                                            ; preds = %bb.xn
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit588.i

bb.xr:                                            ; preds = %bb.xn
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit588.i

bb.xs:                                            ; preds = %bb.xl
  %i.bye = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i573.i), !noalias !5772
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i581.i

bb.xt:                                            ; preds = %bb.xl
  %.sroa.6.0.extract.shift.i.i575.i = lshr i64 %.sroa.5141.0.copyload.i63, 32
  %.sroa.6.0.extract.trunc.i.i576.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i575.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5773), !noalias !5771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5772
  store i32 %.sroa.6.0.extract.trunc.i.i576.i, ptr %i.b, align 4, !noalias !5774
  %i.byf = getelementptr inbounds nuw i8, ptr %i.byd, i64 72
  %i.byg = load i32, ptr %i.byf, align 8, !alias.scope !5775, !noalias !5768, !noundef !5
  %i.byh = icmp eq i32 %i.byg, %.sroa.6.0.extract.trunc.i.i576.i
  br i1 %i.byh, label %bb.xw, label %bb.xu

bb.xu:                                            ; preds = %bb.xt
  %i.byi = getelementptr inbounds nuw i8, ptr %i.byd, i64 32
  %i.byj = load ptr, ptr %i.byi, align 8, !alias.scope !5775, !noalias !5768, !nonnull !5, !noundef !5 ; 2 uses
  %i.byk = getelementptr inbounds nuw i8, ptr %i.byd, i64 40
  %i.byl = load i64, ptr %i.byk, align 8, !alias.scope !5775, !noalias !5768, !noundef !5 ; 2 uses
  %.idx10358 = shl nuw nsw i64 %i.byl, 5
  %i.bym = getelementptr inbounds nuw i8, ptr %i.byj, i64 %.idx10358
  %i.byn = icmp eq i64 %i.byl, 0
  br i1 %i.byn, label %._crit_edge10293, label %.lr.ph10292

bb.xv:                                            ; preds = %.lr.ph10292
  %i.byo = getelementptr inbounds nuw i8, ptr %i.byq, i64 32 ; 2 uses
  %i.byp = icmp eq ptr %i.byo, %i.bym
  br i1 %i.byp, label %._crit_edge10293, label %.lr.ph10292

.lr.ph10292:                                      ; preds = %bb.xu, %bb.xv
  %i.byq = phi ptr [ %i.byo, %bb.xv ], [ %i.byj, %bb.xu ] ; 3 uses
  %i.byr = load i32, ptr %i.byq, align 8, !noalias !5776, !noundef !5
  %i.bys = icmp eq i32 %i.byr, %.sroa.6.0.extract.trunc.i.i576.i
  br i1 %i.bys, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i577.i, label %bb.xv

bb.xw:                                            ; preds = %bb.xt
  %i.byt = getelementptr inbounds nuw i8, ptr %i.byd, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i578.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i577.i: ; preds = %.lr.ph10292
  %i.byu = getelementptr inbounds nuw i8, ptr %i.byq, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i578.i

._crit_edge10293:                                 ; preds = %bb.xu, %bb.xv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5774
  store ptr %i.b, ptr %i.a, align 8, !noalias !5774
  %.sroa.45.0..sroa_idx.i.i.i586.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i586.i, align 8, !noalias !5774
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5774
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i578.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i577.i, %bb.xw
  %.sroa.0.0.in.i.i.i579.i = phi ptr [ %i.byt, %bb.xw ], [ %i.byu, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i577.i ]
  %.sroa.0.0.i6.i.i580.i = load i64, ptr %.sroa.0.0.in.i.i.i579.i, align 8, !noalias !5777, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5772
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i581.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i581.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i578.i, %bb.xs
  %.sroa.05.0.i.i582.i = phi i64 [ %.sroa.0.0.i6.i.i580.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i578.i ], [ %i.bye, %bb.xs ] ; 4 uses
  %i.byv = icmp ugt i64 %.sroa.05.0.i.i582.i, 2305843009213693951
  br i1 %i.byv, label %bb.xy, label %bb.xx, !prof !29

bb.xx:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i581.i
  %i.byw = icmp samesign ult i64 %.sroa.05.0.i.i582.i, 17
  br i1 %i.byw, label %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit588_crit_edge.i, label %bb.xz, !prof !30

._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit588_crit_edge.i: ; preds = %bb.xx
  %.neg4.i583.i = mul nuw nsw i64 %.sroa.05.0.i.i582.i, 120
  %.val2.pre.i228.pre.i = load ptr, ptr %i.bxz, align 8, !noalias !5768
  %i.byx = and i64 %.neg4.i583.i, 120
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit588.i

bb.xy:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i581.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i582.i) #45, !noalias !5778
  unreachable

bb.xz:                                            ; preds = %bb.xx
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5778
  unreachable

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit588.i: ; preds = %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit588_crit_edge.i, %bb.xr, %bb.xq, %bb.xp, %bb.xo, %bb.xn
  %.val2.pre.i228.i = phi ptr [ %.val2.pre.i228.pre.i, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit588_crit_edge.i ], [ %.val.i226.i, %bb.xn ], [ %.val.i226.i, %bb.xq ], [ %.val.i226.i, %bb.xp ], [ %.val.i226.i, %bb.xo ], [ %.val.i226.i, %bb.xr ]
  %.neg5.i584.i = phi i64 [ %i.byx, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit588_crit_edge.i ], [ 120, %bb.xn ], [ 64, %bb.xq ], [ 96, %bb.xp ], [ 112, %bb.xo ], [ 0, %bb.xr ]
  %i.byy = zext nneg i64 %.neg5.i584.i to i128
  %i.byz = lshr i128 -1, %i.byy
  %.neg.i585.i = xor i128 %.sroa.4139.0.copyload.i61, -1
  %i.bza = add i128 %.sroa.0138.0.copyload.i59, %.neg.i585.i
  %i.bzb = and i128 %i.byz, %i.bza
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i229.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i229.i: ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit588.i, %bb.xk
  %.val2.i230.i = phi ptr [ %.val2.pre.i228.i, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit588.i ], [ %.val.i226.i, %bb.xk ] ; 3 uses
  %.sroa.0.0.i.i231.i = phi i128 [ %i.bzb, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit588.i ], [ 0, %bb.xk ]
  %i.bzc = getelementptr inbounds nuw i8, ptr %.val.i49.i, i64 24 ; 2 uses
  %i.bzd = load ptr, ptr %i.bzc, align 8, !alias.scope !5767, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5779)
  %i.bze = load ptr, ptr %i.bzd, align 8, !alias.scope !5779, !noalias !5768, !nonnull !5, !noundef !5 ; 2 uses
  %i.bzf = load i8, ptr %i.bze, align 1, !range !13, !noalias !5780, !noundef !5
  %i.bzg = trunc nuw i8 %i.bzf to i1
  br i1 %i.bzg, label %bb.ya, label %bb.yb

bb.ya:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i229.i
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.bze, i64 1
  %i.bzi = load i8, ptr %i.bzh, align 1, !noalias !5780, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i230.i) ]
  %i.bzj = load ptr, ptr %.val2.i230.i, align 8, !noalias !5780, !nonnull !5, !align !21, !noundef !5
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.bzj, i64 338
  %i.bzl = load i8, ptr %i.bzk, align 2, !noalias !5780, !noundef !5
  %..i.i.i245.i = call noundef i8 @llvm.umin.i8(i8 %i.bzi, i8 %i.bzl)
  %i.bzm = and i8 %..i.i.i245.i, 63
  %i.bzn = zext nneg i8 %i.bzm to i64
  %i.bzo = shl nuw i64 1, %i.bzn
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit246.i

bb.yb:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i229.i
  %i.bzp = load ptr, ptr %.val2.i230.i, align 8, !noalias !5780, !nonnull !5, !align !21, !noundef !5 ; 6 uses
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.bzp, i64 338
  %i.bzr = load i8, ptr %i.bzq, align 2, !noalias !5780, !noundef !5
  %i.bzs = and i8 %i.bzr, 63                      ; 2 uses
  %i.bzt = zext nneg i8 %i.bzs to i64
  %i.bzu = shl nuw i64 1, %i.bzt
  %i.bzv = getelementptr inbounds nuw i8, ptr %i.bzp, i64 320
  %i.bzw = load i64, ptr %i.bzv, align 16, !noalias !5780, !noundef !5
  %.sroa.5.0..sroa_idx.i.i232.i = getelementptr inbounds nuw i8, ptr %i.bzp, i64 136
  %.sroa.5.0.copyload.i.i233.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i232.i, align 8, !noalias !5780 ; 2 uses
  %.not.i3.i234.i = icmp eq i8 %.sroa.5.0.copyload.i.i233.i, -1
  br i1 %.not.i3.i234.i, label %bb.ym, label %bb.yc

bb.yc:                                            ; preds = %bb.yb
  %.sroa.6.0..sroa_idx.i.i235.i = getelementptr inbounds nuw i8, ptr %i.bzp, i64 137
  %i.bzx = getelementptr inbounds nuw i8, ptr %i.bzp, i64 96
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.bzd, i64 8
  %i.bzz = load ptr, ptr %i.bzy, align 8, !alias.scope !5779, !noalias !5768, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  %.sroa.0143.0.copyload.i65 = load i128, ptr %i.bzx, align 16, !noalias !5780
  %.sroa.4144.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %i.bzp, i64 112
  %.sroa.4144.0.copyload.i67 = load i128, ptr %.sroa.4144.0..sroa_idx.i66, align 16, !noalias !5780
  %.sroa.5146.41.copyload.i68 = load i56, ptr %.sroa.6.0..sroa_idx.i.i235.i, align 1, !noalias !5780 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5781)
  call void @llvm.experimental.noalias.scope.decl(metadata !5782), !noalias !5783
  switch i8 %.sroa.5.0.copyload.i.i233.i, label %bb.yd [
    i8 0, label %switch.lookup10413
    i8 1, label %bb.ye
    i8 2, label %bb.yf
  ]

bb.yd:                                            ; preds = %bb.yc
  unreachable

bb.ye:                                            ; preds = %bb.yc
  %.sroa.44.0.extract.trunc.i.i555.i = trunc i56 %.sroa.5146.41.copyload.i68 to i8
  %i.caa = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i555.i), !noalias !5784
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i563.i

bb.yf:                                            ; preds = %bb.yc
  %.sroa.5146.41.insert.ext.i69 = zext i56 %.sroa.5146.41.copyload.i68 to i64
  %.sroa.6.0.extract.shift.i.i557.i = lshr i64 %.sroa.5146.41.insert.ext.i69, 24
  %.sroa.6.0.extract.trunc.i.i558.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i557.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5785), !noalias !5783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5784
  store i32 %.sroa.6.0.extract.trunc.i.i558.i, ptr %i.d, align 4, !noalias !5786
  %i.cab = getelementptr inbounds nuw i8, ptr %i.bzz, i64 72
  %i.cac = load i32, ptr %i.cab, align 8, !alias.scope !5787, !noalias !5780, !noundef !5
  %i.cad = icmp eq i32 %i.cac, %.sroa.6.0.extract.trunc.i.i558.i
  br i1 %i.cad, label %bb.yi, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.cae = getelementptr inbounds nuw i8, ptr %i.bzz, i64 32
  %i.caf = load ptr, ptr %i.cae, align 8, !alias.scope !5787, !noalias !5780, !nonnull !5, !noundef !5 ; 2 uses
  %i.cag = getelementptr inbounds nuw i8, ptr %i.bzz, i64 40
  %i.cah = load i64, ptr %i.cag, align 8, !alias.scope !5787, !noalias !5780, !noundef !5 ; 2 uses
  %.idx10359 = shl nuw nsw i64 %i.cah, 5
  %i.cai = getelementptr inbounds nuw i8, ptr %i.caf, i64 %.idx10359
  %i.caj = icmp eq i64 %i.cah, 0
  br i1 %i.caj, label %._crit_edge10297, label %.lr.ph10296

bb.yh:                                            ; preds = %.lr.ph10296
  %i.cak = getelementptr inbounds nuw i8, ptr %i.cam, i64 32 ; 2 uses
  %i.cal = icmp eq ptr %i.cak, %i.cai
  br i1 %i.cal, label %._crit_edge10297, label %.lr.ph10296

.lr.ph10296:                                      ; preds = %bb.yg, %bb.yh
  %i.cam = phi ptr [ %i.cak, %bb.yh ], [ %i.caf, %bb.yg ] ; 3 uses
  %i.can = load i32, ptr %i.cam, align 8, !noalias !5788, !noundef !5
  %i.cao = icmp eq i32 %i.can, %.sroa.6.0.extract.trunc.i.i558.i
  br i1 %i.cao, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i559.i, label %bb.yh

bb.yi:                                            ; preds = %bb.yf
  %i.cap = getelementptr inbounds nuw i8, ptr %i.bzz, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i560.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i559.i: ; preds = %.lr.ph10296
  %i.caq = getelementptr inbounds nuw i8, ptr %i.cam, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i560.i

._crit_edge10297:                                 ; preds = %bb.yg, %bb.yh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5786
  store ptr %i.d, ptr %i.c, align 8, !noalias !5786
  %.sroa.45.0..sroa_idx.i.i.i568.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i568.i, align 8, !noalias !5786
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5786
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i560.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i559.i, %bb.yi
  %.sroa.0.0.in.i.i.i561.i = phi ptr [ %i.cap, %bb.yi ], [ %i.caq, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i559.i ]
  %.sroa.0.0.i6.i.i562.i = load i64, ptr %.sroa.0.0.in.i.i.i561.i, align 8, !noalias !5789, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5784
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i563.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i563.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i560.i, %bb.ye
  %.sroa.05.0.i.i564.i = phi i64 [ %.sroa.0.0.i6.i.i562.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i560.i ], [ %i.caa, %bb.ye ] ; 4 uses
  %i.car = icmp ugt i64 %.sroa.05.0.i.i564.i, 2305843009213693951
  br i1 %i.car, label %bb.yk, label %bb.yj, !prof !29

bb.yj:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i563.i
  %.neg4.i565.i = mul nsw i64 %.sroa.05.0.i.i564.i, -8
  %i.cas = icmp samesign ult i64 %.sroa.05.0.i.i564.i, 17
  br i1 %i.cas, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit570.i, label %bb.yl, !prof !30

bb.yk:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i563.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i564.i) #45, !noalias !5790
  unreachable

bb.yl:                                            ; preds = %bb.yj
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5790
  unreachable

switch.lookup10413:                               ; preds = %bb.yc
  %.sroa.44.0.extract.trunc.i.i555.i.mask = and i56 %.sroa.5146.41.copyload.i68, 255
  %i.cat = zext nneg i56 %.sroa.44.0.extract.trunc.i.i555.i.mask to i64
  %switch.gep10431 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.cat
  %switch.load10432 = load i8, ptr %switch.gep10431, align 1
  %switch.ext10433 = zext i8 %switch.load10432 to i64
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit570.i

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit570.i: ; preds = %switch.lookup10413, %bb.yj
  %.neg5.i566.i = phi i64 [ %.neg4.i565.i, %bb.yj ], [ %switch.ext10433, %switch.lookup10413 ]
  %i.cau = and i64 %.neg5.i566.i, 120
  %i.cav = zext nneg i64 %i.cau to i128
  %i.caw = lshr i128 -1, %i.cav
  %.neg.i567.i = xor i128 %.sroa.4144.0.copyload.i67, -1
  %i.cax = add i128 %.sroa.0143.0.copyload.i65, %.neg.i567.i
  %i.cay = and i128 %i.caw, %i.cax
  br label %bb.ym

bb.ym:                                            ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit570.i, %bb.yb
  %.sroa.01.0.i.i238.i = phi i128 [ %i.cay, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit570.i ], [ 0, %bb.yb ]
  %..i14.i.i239.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.bzw, i64 range(i64 1, -9223372036854775807) %i.bzu)
  %i.caz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %..i14.i.i239.i, i1 true)
  %i.cba = trunc nuw nsw i64 %i.caz to i32        ; 3 uses
  %i.cbb = getelementptr inbounds nuw i8, ptr %i.bzd, i64 16
  %i.cbc = load ptr, ptr %i.cbb, align 8, !alias.scope !5779, !noalias !5768, !nonnull !5, !align !21, !noundef !5
  %i.cbd = load i128, ptr %i.cbc, align 16, !noalias !5780, !noundef !5 ; 2 uses
  %.not10.i.i240.i = icmp eq i128 %i.cbd, 0
  br i1 %.not10.i.i240.i, label %bb.yo, label %bb.yn

bb.yn:                                            ; preds = %bb.ym
  %i.cbe = getelementptr inbounds nuw i8, ptr %i.bzd, i64 24
  %i.cbf = load ptr, ptr %i.cbe, align 8, !alias.scope !5779, !noalias !5768, !nonnull !5, !noundef !5
  %i.cbg = load i8, ptr %i.cbf, align 1, !range !13, !noalias !5780, !noundef !5
  %i.cbh = trunc nuw i8 %i.cbg to i1
  br i1 %i.cbh, label %bb.yp, label %bb.yq

bb.yo:                                            ; preds = %bb.yq, %bb.yp, %bb.ym
  %.sroa.07.0.i.i242.i = phi i32 [ %spec.select.i.i244.i, %bb.yp ], [ %i.cba, %bb.ym ], [ %..i15.i.i241.i, %bb.yq ]
  %i.cbi = zext nneg i32 %.sroa.07.0.i.i242.i to i64
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit246.i

bb.yp:                                            ; preds = %bb.yn
  %i.cbj = icmp eq i128 %.sroa.01.0.i.i238.i, %i.cbd
  %i.cbk = zext nneg i8 %i.bzs to i32
  %spec.select.i.i244.i = select i1 %i.cbj, i32 %i.cbk, i32 %i.cba
  br label %bb.yo

bb.yq:                                            ; preds = %bb.yn
  %i.cbl = getelementptr inbounds nuw i8, ptr %i.bzd, i64 32
  %i.cbm = load ptr, ptr %i.cbl, align 8, !alias.scope !5779, !noalias !5768, !nonnull !5, !align !11, !noundef !5
  %i.cbn = load i64, ptr %i.cbm, align 8, !noalias !5780, !noundef !5
  %i.cbo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cbn, i1 false)
  %i.cbp = trunc nuw nsw i64 %i.cbo to i32
  %..i15.i.i241.i = call noundef range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.cba, i32 range(i32 0, 129) %i.cbp)
  br label %bb.yo

bb.yr:                                            ; preds = %.lr.ph1255.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.bxt, i64 noundef %i.bxw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #43, !noalias !5768
  unreachable

_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit246.i: ; preds = %bb.yo, %bb.ya
  %.sroa.0.0.i4.i243.i = phi i64 [ %i.bzo, %bb.ya ], [ %i.cbi, %bb.yo ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5791)
  %i.cbq = load i64, ptr %i.bxv, align 8, !alias.scope !5791, !noalias !5570, !noundef !5 ; 2 uses
  %i.cbr = zext i32 %.val14.i57 to i64            ; 3 uses
  %i.cbs = icmp ugt i64 %i.cbq, %i.cbr
  br i1 %i.cbs, label %bb.ys, label %bb.zz

bb.ys:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit246.i
  %i.cbt = load ptr, ptr %.val.i49.i, align 8, !alias.scope !5791, !noalias !5570, !nonnull !5, !align !11, !noundef !5
  %i.cbu = getelementptr inbounds nuw [8 x i8], ptr %i.cbt, i64 %i.cbr ; 2 uses
  %.val.i205.i = load ptr, ptr %i.cbu, align 8, !noalias !5792, !nonnull !5, !align !11, !noundef !5 ; 7 uses
  %i.cbv = load ptr, ptr %.val.i205.i, align 8, !noalias !5792, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.cbv, i64 96
  %.sroa.0129.0.copyload.i70 = load i128, ptr %i.cbw, align 16, !noalias !5792
  %.sroa.4130.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.cbv, i64 112
  %.sroa.4130.0.copyload.i72 = load i128, ptr %.sroa.4130.0..sroa_idx.i71, align 16, !noalias !5792
  %.sroa.5132.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.cbv, i64 136
  %.sroa.5132.0.copyload.i74 = load i64, ptr %.sroa.5132.0..sroa_idx.i73, align 8, !noalias !5792 ; 3 uses
  %.sroa.5132.40.extract.trunc.i75 = trunc i64 %.sroa.5132.0.copyload.i74 to i8 ; 2 uses
  %.not.i.i206.i = icmp eq i8 %.sroa.5132.40.extract.trunc.i75, -1
  br i1 %.not.i.i206.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i208.i, label %bb.yt

bb.yt:                                            ; preds = %bb.ys
  %i.cbx = getelementptr inbounds nuw i8, ptr %.val.i49.i, i64 16
  %i.cby = load ptr, ptr %i.cbx, align 8, !alias.scope !5791, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5793)
  call void @llvm.experimental.noalias.scope.decl(metadata !5794), !noalias !5795
  %.sroa.44.0.extract.shift.i.i536.i = lshr i64 %.sroa.5132.0.copyload.i74, 8
  %.sroa.44.0.extract.trunc.i.i537.i = trunc i64 %.sroa.44.0.extract.shift.i.i536.i to i8 ; 2 uses
  switch i8 %.sroa.5132.40.extract.trunc.i75, label %bb.yu [
    i8 0, label %bb.yv
    i8 1, label %bb.za
    i8 2, label %bb.zb
  ]

bb.yu:                                            ; preds = %bb.yt
  unreachable

bb.yv:                                            ; preds = %bb.yt
  switch i8 %.sroa.44.0.extract.trunc.i.i537.i, label %default.unreachable25.i.i.i551.i [
    i8 0, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit552.i
    i8 1, label %bb.yw
    i8 2, label %bb.yx
    i8 3, label %bb.yy
    i8 4, label %bb.yz
  ]

default.unreachable25.i.i.i551.i:                 ; preds = %bb.yv
  unreachable

bb.yw:                                            ; preds = %bb.yv
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit552.i

bb.yx:                                            ; preds = %bb.yv
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit552.i

bb.yy:                                            ; preds = %bb.yv
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit552.i

bb.yz:                                            ; preds = %bb.yv
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit552.i

bb.za:                                            ; preds = %bb.yt
  %i.cbz = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i537.i), !noalias !5796
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i545.i

bb.zb:                                            ; preds = %bb.yt
  %.sroa.6.0.extract.shift.i.i539.i = lshr i64 %.sroa.5132.0.copyload.i74, 32
  %.sroa.6.0.extract.trunc.i.i540.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i539.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5797), !noalias !5795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5796
  store i32 %.sroa.6.0.extract.trunc.i.i540.i, ptr %i.f, align 4, !noalias !5798
  %i.cca = getelementptr inbounds nuw i8, ptr %i.cby, i64 72
  %i.ccb = load i32, ptr %i.cca, align 8, !alias.scope !5799, !noalias !5792, !noundef !5
  %i.ccc = icmp eq i32 %i.ccb, %.sroa.6.0.extract.trunc.i.i540.i
  br i1 %i.ccc, label %bb.ze, label %bb.zc

bb.zc:                                            ; preds = %bb.zb
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.cby, i64 32
  %i.cce = load ptr, ptr %i.ccd, align 8, !alias.scope !5799, !noalias !5792, !nonnull !5, !noundef !5 ; 2 uses
  %i.ccf = getelementptr inbounds nuw i8, ptr %i.cby, i64 40
  %i.ccg = load i64, ptr %i.ccf, align 8, !alias.scope !5799, !noalias !5792, !noundef !5 ; 2 uses
  %.idx10360 = shl nuw nsw i64 %i.ccg, 5
  %i.cch = getelementptr inbounds nuw i8, ptr %i.cce, i64 %.idx10360
  %i.cci = icmp eq i64 %i.ccg, 0
  br i1 %i.cci, label %._crit_edge10301, label %.lr.ph10300

bb.zd:                                            ; preds = %.lr.ph10300
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.ccl, i64 32 ; 2 uses
  %i.cck = icmp eq ptr %i.ccj, %i.cch
  br i1 %i.cck, label %._crit_edge10301, label %.lr.ph10300

.lr.ph10300:                                      ; preds = %bb.zc, %bb.zd
  %i.ccl = phi ptr [ %i.ccj, %bb.zd ], [ %i.cce, %bb.zc ] ; 3 uses
  %i.ccm = load i32, ptr %i.ccl, align 8, !noalias !5800, !noundef !5
  %i.ccn = icmp eq i32 %i.ccm, %.sroa.6.0.extract.trunc.i.i540.i
  br i1 %i.ccn, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i541.i, label %bb.zd

bb.ze:                                            ; preds = %bb.zb
  %i.cco = getelementptr inbounds nuw i8, ptr %i.cby, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i542.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i541.i: ; preds = %.lr.ph10300
  %i.ccp = getelementptr inbounds nuw i8, ptr %i.ccl, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i542.i

._crit_edge10301:                                 ; preds = %bb.zc, %bb.zd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5798
  store ptr %i.f, ptr %i.e, align 8, !noalias !5798
  %.sroa.45.0..sroa_idx.i.i.i550.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i550.i, align 8, !noalias !5798
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5798
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i542.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i541.i, %bb.ze
  %.sroa.0.0.in.i.i.i543.i = phi ptr [ %i.cco, %bb.ze ], [ %i.ccp, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i541.i ]
  %.sroa.0.0.i6.i.i544.i = load i64, ptr %.sroa.0.0.in.i.i.i543.i, align 8, !noalias !5801, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5796
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i545.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i545.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i542.i, %bb.za
  %.sroa.05.0.i.i546.i = phi i64 [ %.sroa.0.0.i6.i.i544.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i542.i ], [ %i.cbz, %bb.za ] ; 4 uses
  %i.ccq = icmp ugt i64 %.sroa.05.0.i.i546.i, 2305843009213693951
  br i1 %i.ccq, label %bb.zg, label %bb.zf, !prof !29

bb.zf:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i545.i
  %i.ccr = icmp samesign ult i64 %.sroa.05.0.i.i546.i, 17
  br i1 %i.ccr, label %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit552_crit_edge.i, label %bb.zh, !prof !30

._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit552_crit_edge.i: ; preds = %bb.zf
  %.neg4.i547.i = mul nuw nsw i64 %.sroa.05.0.i.i546.i, 120
  %.val2.pre.i207.pre.i = load ptr, ptr %i.cbu, align 8, !noalias !5792
  %i.ccs = and i64 %.neg4.i547.i, 120
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit552.i

bb.zg:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i545.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i546.i) #45, !noalias !5802
  unreachable

bb.zh:                                            ; preds = %bb.zf
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5802
  unreachable

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit552.i: ; preds = %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit552_crit_edge.i, %bb.yz, %bb.yy, %bb.yx, %bb.yw, %bb.yv
  %.val2.pre.i207.i = phi ptr [ %.val2.pre.i207.pre.i, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit552_crit_edge.i ], [ %.val.i205.i, %bb.yv ], [ %.val.i205.i, %bb.yy ], [ %.val.i205.i, %bb.yx ], [ %.val.i205.i, %bb.yw ], [ %.val.i205.i, %bb.yz ]
  %.neg5.i548.i = phi i64 [ %i.ccs, %._RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit552_crit_edge.i ], [ 120, %bb.yv ], [ 64, %bb.yy ], [ 96, %bb.yx ], [ 112, %bb.yw ], [ 0, %bb.yz ]
  %i.cct = zext nneg i64 %.neg5.i548.i to i128
  %i.ccu = lshr i128 -1, %i.cct
  %.neg.i549.i = xor i128 %.sroa.4130.0.copyload.i72, -1
  %i.ccv = add i128 %.sroa.0129.0.copyload.i70, %.neg.i549.i
  %i.ccw = and i128 %i.ccu, %i.ccv
  %i.ccx = icmp uge i128 %.sroa.0.0.i.i231.i, %i.ccw
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i208.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i208.i: ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit552.i, %bb.ys
  %.val2.i209.i = phi ptr [ %.val2.pre.i207.i, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit552.i ], [ %.val.i205.i, %bb.ys ] ; 3 uses
  %.sroa.0.0.i.i210.i = phi i1 [ %i.ccx, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit552.i ], [ true, %bb.ys ]
  %i.ccy = load ptr, ptr %i.bzc, align 8, !alias.scope !5791, !noalias !5570, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5803)
  %i.ccz = load ptr, ptr %i.ccy, align 8, !alias.scope !5803, !noalias !5792, !nonnull !5, !noundef !5 ; 2 uses
  %i.cda = load i8, ptr %i.ccz, align 1, !range !13, !noalias !5804, !noundef !5
  %i.cdb = trunc nuw i8 %i.cda to i1
  br i1 %i.cdb, label %bb.zi, label %bb.zj

bb.zi:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i208.i
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.ccz, i64 1
  %i.cdd = load i8, ptr %i.cdc, align 1, !noalias !5804, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i209.i) ]
  %i.cde = load ptr, ptr %.val2.i209.i, align 8, !noalias !5804, !nonnull !5, !align !21, !noundef !5
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.cde, i64 338
  %i.cdg = load i8, ptr %i.cdf, align 2, !noalias !5804, !noundef !5
  %..i.i.i224.i = call noundef i8 @llvm.umin.i8(i8 %i.cdd, i8 %i.cdg)
  %i.cdh = and i8 %..i.i.i224.i, 63
  %i.cdi = zext nneg i8 %i.cdh to i64
  %i.cdj = shl nuw i64 1, %i.cdi
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit225.i

bb.zj:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2Z_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2X_B3I_EEs4_00EB31_.exit.i208.i
  %i.cdk = load ptr, ptr %.val2.i209.i, align 8, !noalias !5804, !nonnull !5, !align !21, !noundef !5 ; 6 uses
  %i.cdl = getelementptr inbounds nuw i8, ptr %i.cdk, i64 338
  %i.cdm = load i8, ptr %i.cdl, align 2, !noalias !5804, !noundef !5
  %i.cdn = and i8 %i.cdm, 63                      ; 2 uses
  %i.cdo = zext nneg i8 %i.cdn to i64
  %i.cdp = shl nuw i64 1, %i.cdo
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.cdk, i64 320
  %i.cdr = load i64, ptr %i.cdq, align 16, !noalias !5804, !noundef !5
  %.sroa.5.0..sroa_idx.i.i211.i = getelementptr inbounds nuw i8, ptr %i.cdk, i64 136
  %.sroa.5.0.copyload.i.i212.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i211.i, align 8, !noalias !5804 ; 2 uses
  %.not.i3.i213.i = icmp eq i8 %.sroa.5.0.copyload.i.i212.i, -1
  br i1 %.not.i3.i213.i, label %bb.zu, label %bb.zk

bb.zk:                                            ; preds = %bb.zj
  %.sroa.6.0..sroa_idx.i.i214.i = getelementptr inbounds nuw i8, ptr %i.cdk, i64 137
  %i.cds = getelementptr inbounds nuw i8, ptr %i.cdk, i64 96
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.ccy, i64 8
  %i.cdu = load ptr, ptr %i.cdt, align 8, !alias.scope !5803, !noalias !5792, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  %.sroa.0134.0.copyload.i76 = load i128, ptr %i.cds, align 16, !noalias !5804
  %.sroa.4135.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.cdk, i64 112
  %.sroa.4135.0.copyload.i78 = load i128, ptr %.sroa.4135.0..sroa_idx.i77, align 16, !noalias !5804
  %.sroa.5137.41.copyload.i79 = load i56, ptr %.sroa.6.0..sroa_idx.i.i214.i, align 1, !noalias !5804 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5805)
  call void @llvm.experimental.noalias.scope.decl(metadata !5806), !noalias !5807
  switch i8 %.sroa.5.0.copyload.i.i212.i, label %bb.zl [
    i8 0, label %switch.lookup10416
    i8 1, label %bb.zm
    i8 2, label %bb.zn
  ]

bb.zl:                                            ; preds = %bb.zk
  unreachable

bb.zm:                                            ; preds = %bb.zk
  %.sroa.44.0.extract.trunc.i.i519.i = trunc i56 %.sroa.5137.41.copyload.i79 to i8
  %i.cdv = call noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i.i519.i), !noalias !5808
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i527.i

bb.zn:                                            ; preds = %bb.zk
  %.sroa.5137.41.insert.ext.i80 = zext i56 %.sroa.5137.41.copyload.i79 to i64
  %.sroa.6.0.extract.shift.i.i521.i = lshr i64 %.sroa.5137.41.insert.ext.i80, 24
  %.sroa.6.0.extract.trunc.i.i522.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i521.i to i32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5809), !noalias !5807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5808
  store i32 %.sroa.6.0.extract.trunc.i.i522.i, ptr %i.h, align 4, !noalias !5810
  %i.cdw = getelementptr inbounds nuw i8, ptr %i.cdu, i64 72
  %i.cdx = load i32, ptr %i.cdw, align 8, !alias.scope !5811, !noalias !5804, !noundef !5
  %i.cdy = icmp eq i32 %i.cdx, %.sroa.6.0.extract.trunc.i.i522.i
  br i1 %i.cdy, label %bb.zq, label %bb.zo

bb.zo:                                            ; preds = %bb.zn
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.cdu, i64 32
  %i.cea = load ptr, ptr %i.cdz, align 8, !alias.scope !5811, !noalias !5804, !nonnull !5, !noundef !5 ; 2 uses
  %i.ceb = getelementptr inbounds nuw i8, ptr %i.cdu, i64 40
  %i.cec = load i64, ptr %i.ceb, align 8, !alias.scope !5811, !noalias !5804, !noundef !5 ; 2 uses
  %.idx10361 = shl nuw nsw i64 %i.cec, 5
  %i.ced = getelementptr inbounds nuw i8, ptr %i.cea, i64 %.idx10361
  %i.cee = icmp eq i64 %i.cec, 0
  br i1 %i.cee, label %._crit_edge10305, label %.lr.ph10304

bb.zp:                                            ; preds = %.lr.ph10304
  %i.cef = getelementptr inbounds nuw i8, ptr %i.ceh, i64 32 ; 2 uses
  %i.ceg = icmp eq ptr %i.cef, %i.ced
  br i1 %i.ceg, label %._crit_edge10305, label %.lr.ph10304

.lr.ph10304:                                      ; preds = %bb.zo, %bb.zp
  %i.ceh = phi ptr [ %i.cef, %bb.zp ], [ %i.cea, %bb.zo ] ; 3 uses
  %i.cei = load i32, ptr %i.ceh, align 8, !noalias !5812, !noundef !5
  %i.cej = icmp eq i32 %i.cei, %.sroa.6.0.extract.trunc.i.i522.i
  br i1 %i.cej, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i523.i, label %bb.zp

bb.zq:                                            ; preds = %bb.zn
  %i.cek = getelementptr inbounds nuw i8, ptr %i.cdu, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i524.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i523.i: ; preds = %.lr.ph10304
  %i.cel = getelementptr inbounds nuw i8, ptr %i.ceh, i64 8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i524.i

._crit_edge10305:                                 ; preds = %bb.zo, %bb.zp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5810
  store ptr %i.h, ptr %i.g, align 8, !noalias !5810
  %.sroa.45.0..sroa_idx.i.i.i532.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i532.i, align 8, !noalias !5810
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @401, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #43, !noalias !5810
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i524.i: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i523.i, %bb.zq
  %.sroa.0.0.in.i.i.i525.i = phi ptr [ %i.cek, %bb.zq ], [ %i.cel, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i.i523.i ]
  %.sroa.0.0.i6.i.i526.i = load i64, ptr %.sroa.0.0.in.i.i.i525.i, align 8, !noalias !5813, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5808
  br label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i527.i

_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i527.i: ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i524.i, %bb.zm
  %.sroa.05.0.i.i528.i = phi i64 [ %.sroa.0.0.i6.i.i526.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i.i524.i ], [ %i.cdv, %bb.zm ] ; 4 uses
  %i.cem = icmp ugt i64 %.sroa.05.0.i.i528.i, 2305843009213693951
  br i1 %i.cem, label %bb.zs, label %bb.zr, !prof !29

bb.zr:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i527.i
  %.neg4.i529.i = mul nsw i64 %.sroa.05.0.i.i528.i, -8
  %i.cen = icmp samesign ult i64 %.sroa.05.0.i.i528.i, 17
  br i1 %i.cen, label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit534.i, label %bb.zt, !prof !30

bb.zs:                                            ; preds = %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.i527.i
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.05.0.i.i528.i) #45, !noalias !5814
  unreachable

bb.zt:                                            ; preds = %bb.zr
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !5814
  unreachable

switch.lookup10416:                               ; preds = %bb.zk
  %.sroa.44.0.extract.trunc.i.i519.i.mask = and i56 %.sroa.5137.41.copyload.i79, 255
  %i.ceo = zext nneg i56 %.sroa.44.0.extract.trunc.i.i519.i.mask to i64
  %switch.gep10435 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2T_16LayoutCalculatorRNtB2V_16TargetDataLayoutE17univariant_biasedB15_NtB17_19RustcEnumVariantIdxRRINtB2V_10LayoutDataB15_B4I_EEs4_0E0EB19_.863, i64 %i.ceo
  %switch.load10436 = load i8, ptr %switch.gep10435, align 1
  %switch.ext10437 = zext i8 %switch.load10436 to i64
  br label %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit534.i

_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit534.i: ; preds = %switch.lookup10416, %bb.zr
  %.neg5.i530.i = phi i64 [ %.neg4.i529.i, %bb.zr ], [ %switch.ext10437, %switch.lookup10416 ]
  %i.cep = and i64 %.neg5.i530.i, 120
  %i.ceq = zext nneg i64 %i.cep to i128
  %i.cer = lshr i128 -1, %i.ceq
  %.neg.i531.i = xor i128 %.sroa.4135.0.copyload.i78, -1
  %i.ces = add i128 %.sroa.0134.0.copyload.i76, %.neg.i531.i
  %i.cet = and i128 %i.cer, %i.ces
  br label %bb.zu

bb.zu:                                            ; preds = %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit534.i, %bb.zj
  %.sroa.01.0.i.i217.i = phi i128 [ %i.cet, %_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit534.i ], [ 0, %bb.zj ]
  %..i14.i.i218.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.cdr, i64 range(i64 1, -9223372036854775807) %i.cdp)
  %i.ceu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %..i14.i.i218.i, i1 true)
  %i.cev = trunc nuw nsw i64 %i.ceu to i32        ; 3 uses
  %i.cew = getelementptr inbounds nuw i8, ptr %i.ccy, i64 16
  %i.cex = load ptr, ptr %i.cew, align 8, !alias.scope !5803, !noalias !5792, !nonnull !5, !align !21, !noundef !5
  %i.cey = load i128, ptr %i.cex, align 16, !noalias !5804, !noundef !5 ; 2 uses
  %.not10.i.i219.i = icmp eq i128 %i.cey, 0
  br i1 %.not10.i.i219.i, label %bb.zw, label %bb.zv

bb.zv:                                            ; preds = %bb.zu
  %i.cez = getelementptr inbounds nuw i8, ptr %i.ccy, i64 24
  %i.cfa = load ptr, ptr %i.cez, align 8, !alias.scope !5803, !noalias !5792, !nonnull !5, !noundef !5
  %i.cfb = load i8, ptr %i.cfa, align 1, !range !13, !noalias !5804, !noundef !5
  %i.cfc = trunc nuw i8 %i.cfb to i1
  br i1 %i.cfc, label %bb.zx, label %bb.zy

bb.zw:                                            ; preds = %bb.zy, %bb.zx, %bb.zu
  %.sroa.07.0.i.i221.i = phi i32 [ %spec.select.i.i223.i, %bb.zx ], [ %i.cev, %bb.zu ], [ %..i15.i.i220.i, %bb.zy ]
  %i.cfd = zext nneg i32 %.sroa.07.0.i.i221.i to i64
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit225.i

bb.zx:                                            ; preds = %bb.zv
  %i.cfe = icmp eq i128 %.sroa.01.0.i.i217.i, %i.cey
  %i.cff = zext nneg i8 %i.cdn to i32
  %spec.select.i.i223.i = select i1 %i.cfe, i32 %i.cff, i32 %i.cev
  br label %bb.zw

bb.zy:                                            ; preds = %bb.zv
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.ccy, i64 32
  %i.cfh = load ptr, ptr %i.cfg, align 8, !alias.scope !5803, !noalias !5792, !nonnull !5, !align !11, !noundef !5
  %i.cfi = load i64, ptr %i.cfh, align 8, !noalias !5804, !noundef !5
  %i.cfj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cfi, i1 false)
  %i.cfk = trunc nuw nsw i64 %i.cfj to i32
  %..i15.i.i220.i = call noundef range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.cev, i32 range(i32 0, 129) %i.cfk)
  br label %bb.zw

bb.zz:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit246.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.cbr, i64 noundef %i.cbq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #43, !noalias !5792
  unreachable

_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_.exit225.i: ; preds = %bb.zw, %bb.zi
  %.sroa.0.0.i4.i222.i = phi i64 [ %i.cdj, %bb.zi ], [ %i.cfd, %bb.zw ] ; 2 uses
  %i.cfl = icmp eq i64 %.sroa.0.0.i4.i243.i, %.sroa.0.0.i4.i222.i
  %i.cfm = icmp uge i64 %.sroa.0.0.i4.i243.i, %.sroa.0.0.i4.i222.i
  %.sroa.0.0.i.i.i54.i = select i1 %i.cfl, i1 %.sroa.0.0.i.i210.i, i1 %i.cfm ; 2 uses
  %i.cfn = getelementptr inbounds i8, ptr %.sroa.43.21251.i, i64 -4 ; 3 uses
  %.sroa.01.0.i55.i = select i1 %.sroa.0.0.i.i.i54.i, ptr %2, ptr %i.cfn
  %i.cfo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i55.i, i64 %.sroa.27.21252.i
  store i32 %.val14.i57, ptr %i.cfo, align 4, !alias.scope !5569, !noalias !5815
  %i.cfp = zext i1 %.sroa.0.0.i.i.i54.i to i64
  %i.cfq = add i64 %.sroa.27.21252.i, %i.cfp      ; 2 uses
  %i.cfr = getelementptr inbounds nuw i8, ptr %.sroa.9.21253.i, i64 4 ; 3 uses
  %i.cfs = icmp ult ptr %i.cfr, %i.bxr
  br i1 %i.cfs, label %.lr.ph1255.i, label %._crit_edge1256.i

bb.aaa:                                           ; preds = %._crit_edge1256.i
  %i.cft = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i53, i64 -4
  %i.cfu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i54
  %i.cfv = load i32, ptr %.sroa.9.2.lcssa.i55, align 4, !alias.scope !5568, !noalias !5816
  store i32 %i.cfv, ptr %i.cfu, align 4, !alias.scope !5569, !noalias !5816
  %i.cfw = add i64 %.sroa.27.2.lcssa.i54, 1
  %i.cfx = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i55, i64 4
  br label %bb.mw

bb.aab:                                           ; preds = %._crit_edge1256.i
  %i.cfy = shl nuw nsw i64 %.sroa.27.2.lcssa.i54, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph2655, ptr nonnull align 4 %2, i64 %i.cfy, i1 false), !alias.scope !5570
  %i.cfz = sub i64 %.sroa.16.0264810220, %.sroa.27.2.lcssa.i54 ; 7 uses
  %.not1264.i = icmp eq i64 %.sroa.16.0264810220, %.sroa.27.2.lcssa.i54
  %i.cga = getelementptr [4 x i8], ptr %.sroa.0.0.ph2655, i64 %.sroa.27.2.lcssa.i54 ; 3 uses
  br i1 %.not1264.i, label %.outer.thread, label %.lr.ph1262.i

.lr.ph1262.i:                                     ; preds = %bb.aab
  %min.iters.check = icmp ult i64 %i.cfz, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1262.i
  %n.vec = and i64 %i.cfz, -8                     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cgb = xor i64 %index, -1
  %i.cgc = getelementptr [4 x i8], ptr %i.arx, i64 %i.cgb ; 2 uses
  %i.cgd = getelementptr [4 x i8], ptr %i.cga, i64 %index ; 2 uses
  %i.cge = getelementptr i8, ptr %i.cgc, i64 -12
  %i.cgf = getelementptr i8, ptr %i.cgc, i64 -28
  %wide.load = load <4 x i32>, ptr %i.cge, align 4, !alias.scope !5569
  %wide.load10307 = load <4 x i32>, ptr %i.cgf, align 4, !alias.scope !5569
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse10308 = shufflevector <4 x i32> %wide.load10307, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.cgg = getelementptr i8, ptr %i.cgd, i64 16
  store <4 x i32> %reverse, ptr %i.cgd, align 4, !alias.scope !5568
  store <4 x i32> %reverse10308, ptr %i.cgg, align 4, !alias.scope !5568
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cgh = icmp eq i64 %index.next, %n.vec
  br i1 %i.cgh, label %middle.block, label %vector.body, !llvm.loop !5313

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cfz, %n.vec
  br i1 %cmp.n, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB3n_16LayoutCalculatorRNtB3p_16TargetDataLayoutE17univariant_biasedB1d_NtB1f_19RustcEnumVariantIdxRRINtB3p_10LayoutDataB1d_B5c_EEs4_0E0E0EB1h_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph1262.i, %middle.block
  %.sroa.07.01260.i.ph = phi i64 [ 0, %.lr.ph1262.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.01260.i = phi i64 [ %i.cgi, %scalar.ph ], [ %.sroa.07.01260.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cgi = add nuw i64 %.sroa.07.01260.i, 1       ; 2 uses
  %i.cgj = xor i64 %.sroa.07.01260.i, -1
  %i.cgk = getelementptr [4 x i8], ptr %i.arx, i64 %i.cgj
  %i.cgl = getelementptr [4 x i8], ptr %i.cga, i64 %.sroa.07.01260.i
  %i.cgm = load i32, ptr %i.cgk, align 4, !alias.scope !5569
  store i32 %i.cgm, ptr %i.cgl, align 4, !alias.scope !5568
  %exitcond.not.i56 = icmp eq i64 %i.cgi, %i.cfz
  br i1 %exitcond.not.i56, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB3n_16LayoutCalculatorRNtB3p_16TargetDataLayoutE17univariant_biasedB1d_NtB1f_19RustcEnumVariantIdxRRINtB3p_10LayoutDataB1d_B5c_EEs4_0E0E0EB1h_.exit, label %scalar.ph, !llvm.loop !5314

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB3n_16LayoutCalculatorRNtB3p_16TargetDataLayoutE17univariant_biasedB1d_NtB1f_19RustcEnumVariantIdxRRINtB3p_10LayoutDataB1d_B5c_EEs4_0E0E0EB1h_.exit: ; preds = %scalar.ph, %middle.block
  %i.cgn = icmp ugt i64 %.sroa.27.2.lcssa.i54, %.sroa.16.0264810220
  br i1 %i.cgn, label %bb.aac, label %.outer, !prof !7

.outer.thread:                                    ; preds = %bb.aab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB3n_16LayoutCalculatorRNtB3p_16TargetDataLayoutE17univariant_biasedB1d_NtB1f_19RustcEnumVariantIdxRRINtB3p_10LayoutDataB1d_B5c_EEs4_0E0E0EB1h_.exit
  %i.cgo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph2655, i64 %.sroa.27.2.lcssa.i54 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  %i.cgp = icmp ult i64 %i.cfz, 33
  br i1 %i.cgp, label %.outer._crit_edge, label %.lr.ph

bb.aac:                                           ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB3n_16LayoutCalculatorRNtB3p_16TargetDataLayoutE17univariant_biasedB1d_NtB1f_19RustcEnumVariantIdxRRINtB3p_10LayoutDataB1d_B5c_EEs4_0E0E0EB1h_.exit
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i54, i64 noundef %.sroa.16.0264810220, i64 noundef %.sroa.16.0264810220, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #43
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtB19_5PatIdNCNvMNtB1b_10usefulnessINtB4J_19BranchPatUsefulnessB2f_E12is_redundant0E0EB2n_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph120 = phi ptr [ %i.gj, %.outer ], [ %0, %bb.a ] ; 23 uses
  %.sroa.16.0.ph119 = phi i64 [ %i.fu, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph118 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph117 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph120 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph117, null
  %i.d = icmp eq i32 %.sroa.025.0.ph118, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph266

bb.b:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxE12split_at_mutB1M_.exit
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph266

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCshzWfHUSfYae_4core5sliceSRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxE12split_at_mutB1M_.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa110 = phi ptr [ %i.fv, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph120, %_RNvMNtCshzWfHUSfYae_4core5sliceSRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxE12split_at_mutB1M_.exit ], [ %i.gj, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxE12split_at_mutB1M_.exit ], [ %i.fu, %.outer ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_11sort_by_keyNtB1w_5PatIdNCNvMNtB1y_10usefulnessINtB56_19BranchPatUsefulnessB2C_E12is_redundant0E0EB2K_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa110, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.d

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0113.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph119, %.lr.ph ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyNtB10_5PatIdNCNvMNtB12_10usefulnessINtB4z_19BranchPatUsefulnessB26_E12is_redundant0E0EB2e_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph120, i64 noundef %.sroa.16.0113.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.d

.lr.ph266:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0112265 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph118, %.lr.ph ]
  %.sroa.16.0113264 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph119, %.lr.ph ] ; 19 uses
  %i.f = add i32 %.sroa.025.0112265, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5857)
  %i.g = lshr i64 %.sroa.16.0113264, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 5
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %.idx2.i ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.16.0113264, 64
  br i1 %i.j, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3RINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyNtB13_5PatIdNCNvMNtB15_10usefulnessINtB4C_19BranchPatUsefulnessB29_E12is_redundant0E0EB2h_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph266
  %i.k = call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyNtB18_5PatIdNCNvMNtB1a_10usefulnessINtB4I_19BranchPatUsefulnessB2e_E12is_redundant0E0EB2m_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph120, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i64 noundef %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.e

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3RINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyNtB13_5PatIdNCNvMNtB15_10usefulnessINtB4C_19BranchPatUsefulnessB29_E12is_redundant0E0EB2h_.exit.i: ; preds = %.lr.ph266
  %.val6.i = load ptr, ptr %.sroa.0.0.ph120, align 8, !alias.scope !5857, !nonnull !5, !align !21, !noundef !5
  %.val7.i = load ptr, ptr %i.h, align 8, !alias.scope !5857, !nonnull !5, !align !21, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %.val6.i, i64 120
  %i.m = load i32, ptr %i.l, align 8, !noalias !5858, !noundef !5 ; 2 uses
end_hunk_5
