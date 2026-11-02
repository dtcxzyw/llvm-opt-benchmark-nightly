Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_server-0e0535aff1c63326.ty_server.3b8259ff8edbf41-cgu.04?download=true
inline.NumInlined: 2094
inline.NumDeleted: 964
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0
@_RNvNvNCNvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtB8_4Pool3new0s0_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00V\00\00\00", ptr @123, [8 x i8] c"<\00\00\00\00\00\00\00", ptr @121, [8 x i8] c")\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtB6_4Pool3new0s0_10___CALLSITE, ptr @118, ptr @121, [8 x i8] c")\00\00\00\00\00\00\00", ptr @122, [9 x i8] c"3\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@124 = private unnamed_addr constant [60 x i8] c"event crates/ty_server/src/server/schedule/thread/pool.rs:90", align 1
@_RNvNvNCNvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtB8_4Pool3new0s1_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00Z\00\00\00", ptr @124, [8 x i8] c"<\00\00\00\00\00\00\00", ptr @121, [8 x i8] c")\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtB6_4Pool3new0s1_10___CALLSITE, ptr @118, ptr @121, [8 x i8] c")\00\00\00\00\00\00\00", ptr @122, [9 x i8] c"3\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@125 = private unnamed_addr constant [60 x i8] c"event crates/ty_server/src/server/schedule/thread/pool.rs:82", align 1
@_RNvNvNCNvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtB8_4Pool3new0s_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00R\00\00\00", ptr @125, [8 x i8] c"<\00\00\00\00\00\00\00", ptr @121, [8 x i8] c")\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtB6_4Pool3new0s_10___CALLSITE, ptr @118, ptr @121, [8 x i8] c")\00\00\00\00\00\00\00", ptr @122, [9 x i8] c"3\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@126 = private unnamed_addr constant [40 x i8] c"event crates/ty_server/src/server.rs:210", align 1
@_RNvNvNCNvMs_NtCsjNt1Wzngcv_9ty_server6serverNtBa_22ServerPanicHookHandler3new010___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00\D2\00\00\00", ptr @126, [8 x i8] c"(\00\00\00\00\00\00\00", ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvMs_NtCsjNt1Wzngcv_9ty_server6serverNtB8_22ServerPanicHookHandler3new010___CALLSITE, ptr @118, ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @119, [9 x i8] c"\1E\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@127 = private unnamed_addr constant [36 x i8] c"event crates/ty_server/src/lib.rs:68", align 1
@128 = private unnamed_addr constant [9 x i8] c"ty_server", align 1
@129 = private unnamed_addr constant [27 x i8] c"crates/ty_server/src/lib.rs", align 1
@_RNvNvNvCsjNt1Wzngcv_9ty_server10run_server10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\03\00\00\00\00\00\00\00\01\00\00\00D\00\00\00", ptr @127, [8 x i8] c"$\00\00\00\00\00\00\00", ptr @128, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvCsjNt1Wzngcv_9ty_server10run_server10___CALLSITE, ptr @118, ptr @128, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @129, [9 x i8] c"\1B\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@130 = private unnamed_addr constant [36 x i8] c"event crates/ty_server/src/lib.rs:70", align 1
@_RNvNvNvCsjNt1Wzngcv_9ty_server10run_servers_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00F\00\00\00", ptr @130, [8 x i8] c"$\00\00\00\00\00\00\00", ptr @128, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvCsjNt1Wzngcv_9ty_server10run_servers_10___CALLSITE, ptr @118, ptr @128, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @129, [9 x i8] c"\1B\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@131 = private unnamed_addr constant [39 x i8] c"event crates/ty_server/src/server.rs:69", align 1
@_RNvNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB6_6Server3new10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00E\00\00\00", ptr @131, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3new10___CALLSITE, ptr @118, ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @119, [9 x i8] c"\1E\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@132 = private unnamed_addr constant [39 x i8] c"event crates/ty_server/src/server.rs:73", align 1
@_RNvNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB6_6Server3news0_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00I\00\00\00", ptr @132, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news0_10___CALLSITE, ptr @118, ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @119, [9 x i8] c"\1E\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@133 = private unnamed_addr constant [39 x i8] c"event crates/ty_server/src/server.rs:77", align 1
@_RNvNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB6_6Server3news1_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00M\00\00\00", ptr @133, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news1_10___CALLSITE, ptr @118, ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @119, [9 x i8] c"\1E\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@134 = private unnamed_addr constant [39 x i8] c"event crates/ty_server/src/server.rs:84", align 1
@_RNvNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB6_6Server3news2_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00T\00\00\00", ptr @134, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news2_10___CALLSITE, ptr @118, ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @119, [9 x i8] c"\1E\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@135 = private unnamed_addr constant [39 x i8] c"event crates/ty_server/src/server.rs:72", align 1
@_RNvNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB6_6Server3news_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00H\00\00\00", ptr @135, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news_10___CALLSITE, ptr @118, ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @119, [9 x i8] c"\1E\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@136 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -5791696640979232450 to ptr), ptr inttoptr (i64 -7626812429229352891 to ptr) }>, align 8
@137 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1847982735506221469 to ptr), ptr inttoptr (i64 7929053574417115764 to ptr) }>, align 8
@138 = private unnamed_addr constant [28 x i8] c"WORKSPACE_DIAGNOSTIC_REFRESH", align 1
@139 = private unnamed_addr constant [18 x i8] c"INLAY_HINT_REFRESH", align 1
@140 = private unnamed_addr constant [16 x i8] c"PULL_DIAGNOSTICS", align 1
@141 = private unnamed_addr constant [28 x i8] c"TYPE_DEFINITION_LINK_SUPPORT", align 1
@142 = private unnamed_addr constant [23 x i8] c"DEFINITION_LINK_SUPPORT", align 1
@143 = private unnamed_addr constant [24 x i8] c"DECLARATION_LINK_SUPPORT", align 1
@144 = private unnamed_addr constant [24 x i8] c"PREFER_MARKDOWN_IN_HOVER", align 1
@145 = private unnamed_addr constant [25 x i8] c"MULTILINE_SEMANTIC_TOKENS", align 1
@146 = private unnamed_addr constant [30 x i8] c"SIGNATURE_LABEL_OFFSET_SUPPORT", align 1
@147 = private unnamed_addr constant [34 x i8] c"SIGNATURE_ACTIVE_PARAMETER_SUPPORT", align 1
@148 = private unnamed_addr constant [36 x i8] c"HIERARCHICAL_DOCUMENT_SYMBOL_SUPPORT", align 1
@149 = private unnamed_addr constant [18 x i8] c"WORK_DONE_PROGRESS", align 1
@150 = private unnamed_addr constant [20 x i8] c"FILE_WATCHER_SUPPORT", align 1
@151 = private unnamed_addr constant [29 x i8] c"RELATIVE_FILE_WATCHER_SUPPORT", align 1
@152 = private unnamed_addr constant [31 x i8] c"DIAGNOSTIC_DYNAMIC_REGISTRATION", align 1
@153 = private unnamed_addr constant [23 x i8] c"WORKSPACE_CONFIGURATION", align 1
@154 = private unnamed_addr constant [37 x i8] c"COMPLETION_ITEM_LABEL_DETAILS_SUPPORT", align 1
@155 = private unnamed_addr constant [30 x i8] c"DIAGNOSTIC_RELATED_INFORMATION", align 1
@156 = private unnamed_addr constant [29 x i8] c"PREFER_MARKDOWN_IN_COMPLETION", align 1
@157 = private unnamed_addr constant [31 x i8] c"COMPLETION_ITEM_SNIPPET_SUPPORT", align 1
@158 = private unnamed_addr constant [22 x i8] c"FULL_DIAGNOSTIC_OUTPUT", align 1
@159 = private unnamed_addr constant [27 x i8] c"IMPLEMENTATION_LINK_SUPPORT", align 1
@160 = private unnamed_addr constant [30 x i8] c"TRIGGER_SIGNATURE_HELP_COMMAND", align 1
@161 = private unnamed_addr constant <{ ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8] }> <{ ptr @138, [12 x i8] c"\1C\00\00\00\00\00\00\00\01\00\00\00", [4 x i8] undef, ptr @139, [12 x i8] c"\12\00\00\00\00\00\00\00\02\00\00\00", [4 x i8] undef, ptr @140, [12 x i8] c"\10\00\00\00\00\00\00\00\04\00\00\00", [4 x i8] undef, ptr @141, [12 x i8] c"\1C\00\00\00\00\00\00\00\08\00\00\00", [4 x i8] undef, ptr @142, [12 x i8] c"\17\00\00\00\00\00\00\00\10\00\00\00", [4 x i8] undef, ptr @143, [12 x i8] c"\18\00\00\00\00\00\00\00 \00\00\00", [4 x i8] undef, ptr @144, [12 x i8] c"\18\00\00\00\00\00\00\00@\00\00\00", [4 x i8] undef, ptr @145, [12 x i8] c"\19\00\00\00\00\00\00\00\80\00\00\00", [4 x i8] undef, ptr @146, [12 x i8] c"\1E\00\00\00\00\00\00\00\00\01\00\00", [4 x i8] undef, ptr @147, [12 x i8] c"\22\00\00\00\00\00\00\00\00\02\00\00", [4 x i8] undef, ptr @148, [12 x i8] c"$\00\00\00\00\00\00\00\00\04\00\00", [4 x i8] undef, ptr @149, [12 x i8] c"\12\00\00\00\00\00\00\00\00\08\00\00", [4 x i8] undef, ptr @150, [12 x i8] c"\14\00\00\00\00\00\00\00\00\10\00\00", [4 x i8] undef, ptr @151, [12 x i8] c"\1D\00\00\00\00\00\00\00\00 \00\00", [4 x i8] undef, ptr @152, [12 x i8] c"\1F\00\00\00\00\00\00\00\00@\00\00", [4 x i8] undef, ptr @153, [12 x i8] c"\17\00\00\00\00\00\00\00\00\80\00\00", [4 x i8] undef, ptr @154, [12 x i8] c"%\00\00\00\00\00\00\00\00\00\01\00", [4 x i8] undef, ptr @155, [12 x i8] c"\1E\00\00\00\00\00\00\00\00\00\02\00", [4 x i8] undef, ptr @156, [12 x i8] c"\1D\00\00\00\00\00\00\00\00\00\04\00", [4 x i8] undef, ptr @157, [12 x i8] c"\1F\00\00\00\00\00\00\00\00\00\08\00", [4 x i8] undef, ptr @158, [12 x i8] c"\16\00\00\00\00\00\00\00\00\00\10\00", [4 x i8] undef, ptr @159, [12 x i8] c"\1B\00\00\00\00\00\00\00\00\00 \00", [4 x i8] undef, ptr @160, [12 x i8] c"\1E\00\00\00\00\00\00\00\00\00@\00", [4 x i8] undef }>, align 8
@162 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtReNtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server }>, align 8
@163 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseECsjNt1Wzngcv_9ty_server, [16 x i8] c"\80\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs4NRVxsYgnAr_4core3anyNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtB2_3Any7type_idCsjNt1Wzngcv_9ty_server, ptr @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa5zalsa13ZalsaDatabase6zalsasCsjNt1Wzngcv_9ty_server, ptr @_RNvXs7_NtCs45bxiIjzMqg_5salsa7storageNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtB7_5zalsa13ZalsaDatabase5zalsaCsjNt1Wzngcv_9ty_server, ptr @_RNvXs7_NtCs45bxiIjzMqg_5salsa7storageNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtB7_5zalsa13ZalsaDatabase9zalsa_mutCsjNt1Wzngcv_9ty_server, ptr @_RNvXs7_NtCs45bxiIjzMqg_5salsa7storageNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtB7_5zalsa13ZalsaDatabase11zalsa_localCsjNt1Wzngcv_9ty_server, ptr @_RNvXs0_NtCs45bxiIjzMqg_5salsa8databaseNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtB5_13AsDynDatabase15as_dyn_databaseCsjNt1Wzngcv_9ty_server, ptr @17, ptr @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database20trigger_lru_evictionCsjNt1Wzngcv_9ty_server, ptr @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database15synthetic_writeCsjNt1Wzngcv_9ty_server, ptr @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database20trigger_cancellationCsjNt1Wzngcv_9ty_server, ptr @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database18cancellation_tokenCsjNt1Wzngcv_9ty_server, ptr @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database21report_untracked_readCsjNt1Wzngcv_9ty_server, ptr @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database21ingredient_debug_nameCsjNt1Wzngcv_9ty_server, ptr @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database28unwind_if_revision_cancelledCsjNt1Wzngcv_9ty_server, ptr @_RNvXsg_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database25zalsa_register_downcaster }>, align 8
@164 = private unnamed_addr constant [22 x i8] c"\11Invalid command `\C0\01`\00", align 1
@165 = private unnamed_addr constant [62 x i8] c"fatal runtime error: thread result panicked on drop, aborting\0A", align 1
@166 = private unnamed_addr constant [38 x i8] c"Index to contain an URI for every cell", align 1
@167 = private unnamed_addr constant [39 x i8] c"crates/ty_server/src/document/range.rs\00", align 1
@168 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @167, [16 x i8] c"&\00\00\00\00\00\00\00<\01\00\00\12\00\00\00" }>, align 8
@169 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os13OsSystemInnerENtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server }>, align 8
@170 = private unnamed_addr constant [8 x i8] c"OsSystem", align 1
@171 = private unnamed_addr constant [5 x i8] c"inner", align 1
@172 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtCs2AWtUsOyxgP_3std2fsRNtB5_4FileNtNtB7_2io5Write5write, ptr @_RNvXs8_NtCs2AWtUsOyxgP_3std2fsRNtB5_4FileNtNtB7_2io5Write14write_vectored, ptr @_RNvXs8_NtCs2AWtUsOyxgP_3std2fsRNtB5_4FileNtNtB7_2io5Write17is_write_vectored, ptr @_RNvXs8_NtCs2AWtUsOyxgP_3std2fsRNtB5_4FileNtNtB7_2io5Write5flush, ptr @_RNvYRNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtB7_2io5Write9write_allCsjNt1Wzngcv_9ty_server, ptr @_RNvYRNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtB7_2io5Write18write_all_vectoredCsjNt1Wzngcv_9ty_server, ptr @_RNvYRNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtB7_2io5Write9write_fmtCsjNt1Wzngcv_9ty_server }>, align 8
@173 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXso_NtNtCs2AWtUsOyxgP_3std2io5stdioNtB5_6StderrNtB7_5Write5write, ptr @_RNvXso_NtNtCs2AWtUsOyxgP_3std2io5stdioNtB5_6StderrNtB7_5Write14write_vectored, ptr @_RNvXso_NtNtCs2AWtUsOyxgP_3std2io5stdioNtB5_6StderrNtB7_5Write17is_write_vectored, ptr @_RNvXso_NtNtCs2AWtUsOyxgP_3std2io5stdioNtB5_6StderrNtB7_5Write5flush, ptr @_RNvXso_NtNtCs2AWtUsOyxgP_3std2io5stdioNtB5_6StderrNtB7_5Write9write_all, ptr @_RNvXso_NtNtCs2AWtUsOyxgP_3std2io5stdioNtB5_6StderrNtB7_5Write18write_all_vectored, ptr @_RNvXso_NtNtCs2AWtUsOyxgP_3std2io5stdioNtB5_6StderrNtB7_5Write9write_fmt }>, align 8
@174 = private unnamed_addr constant [4 x i8] c"None", align 1
@175 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsjNt1Wzngcv_9ty_server7logging8LogLevelNtB6_5Debug3fmtBA_ }>, align 8
@176 = private unnamed_addr constant [4 x i8] c"Some", align 1
@177 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server }>, align 8
@178 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10ClientInfoNtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server }>, align 8
@179 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemECsjNt1Wzngcv_9ty_server, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs4NRVxsYgnAr_4core3anyNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB2_3Any7type_idCsjNt1Wzngcv_9ty_server }>, align 8
@180 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemECsjNt1Wzngcv_9ty_server, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB5_8OsSystemNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System13path_metadata, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System17canonicalize_path, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System12is_same_file, ptr @_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_6System11source_typeCsjNt1Wzngcv_9ty_server, ptr @_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_6System24virtual_path_source_typeCsjNt1Wzngcv_9ty_server, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System5which, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System11run_command, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System14read_to_string, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System16read_to_notebook, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System27read_virtual_path_to_string, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System29read_virtual_path_to_notebook, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System11path_exists, ptr @_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_6System12is_directoryCsjNt1Wzngcv_9ty_server, ptr @_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_6System7is_fileCsjNt1Wzngcv_9ty_server, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System17current_directory, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System21user_config_directory, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System9cache_dir, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System14read_directory, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System14walk_directory, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System7env_var, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System11as_writable, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System6as_any, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System10as_any_mut, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System9dyn_clone, ptr @_RNvXs0_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB5_8OsSystemNtB7_14WritableSystem15create_new_file, ptr @_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_14WritableSystem10write_fileCsjNt1Wzngcv_9ty_server, ptr @_RNvXs0_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB5_8OsSystemNtB7_14WritableSystem16write_file_bytes, ptr @_RNvXs0_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB5_8OsSystemNtB7_14WritableSystem20create_directory_all, ptr @_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_14WritableSystem12get_or_cacheCsjNt1Wzngcv_9ty_server, ptr @_RNvXs0_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB5_8OsSystemNtB7_14WritableSystem9dyn_clone }>, align 8
@181 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCsjNt1Wzngcv_9ty_server7logging8LogLevelENtNtB7_3fmt5Debug3fmtBO_ }>, align 8
@182 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEECsjNt1Wzngcv_9ty_server, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufENtNtB7_3fmt5Debug3fmtCsjNt1Wzngcv_9ty_server }>, align 8
@183 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsjNt1Wzngcv_9ty_server7session7options13ClientOptionsNtB6_5Debug3fmtBC_ }>, align 8
@184 = private unnamed_addr constant [21 x i8] c"InitializationOptions", align 1
@185 = private unnamed_addr constant [9 x i8] c"log_level", align 1
@186 = private unnamed_addr constant [8 x i8] c"log_file", align 1
@187 = private unnamed_addr constant [7 x i8] c"options", align 1
@188 = private unnamed_addr constant [4 x i8] zeroinitializer, align 4
@189 = private unnamed_addr constant [6 x i8] c"\C1 \00\80`\00", align 1
@190 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsjNt1Wzngcv_9ty_server, align 8
@191 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@192 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @191, [24 x i8] zeroinitializer }>, align 8
@193 = private unnamed_addr constant [76 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/std/src/io/stdio.rs\00", align 1
@194 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @193, [16 x i8] c"K\00\00\00\00\00\00\00?\04\00\00\14\00\00\00" }>, align 8
@195 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1883480804971965807 to ptr), ptr inttoptr (i64 -6170572597727246856 to ptr) }>, align 8
@switch.table._RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskEUeM34gmJU_6ty_ide15semantic_tokens17SemanticTokenTypeENCNvNtCsjNt1Wzngcv_9ty_server12capabilities19server_capabilitiess_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3t_8for_each4callNtNtCscdodAO9FK5_5alloc6string6StringNCINvMsj_NtB4A_3vecINtB5g_3VecB4w_E14extend_trustedBN_E0E0EB2t_ = private unnamed_addr constant [15 x i8] c"\09\05\09\0D\0C\08\08\08\06\07\06\06\09\0F\0D", align 8
@switch.table._RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskEUeM34gmJU_6ty_ide15semantic_tokens17SemanticTokenTypeENCNvNtCsjNt1Wzngcv_9ty_server12capabilities19server_capabilitiess_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3t_8for_each4callNtNtCscdodAO9FK5_5alloc6string6StringNCINvMsj_NtB4A_3vecINtB5g_3VecB4w_E14extend_trustedBN_E0E0EB2t_.293 = private unnamed_addr constant [15 x ptr] [ptr @35, ptr @36, ptr @37, ptr @38, ptr @39, ptr @40, ptr @41, ptr @42, ptr @43, ptr @44, ptr @45, ptr @46, ptr @47, ptr @48, ptr @49], align 8
@switch.table._RNvMNtCsjNt1Wzngcv_9ty_server6serverNtB2_6Server3new = private unnamed_addr constant [3 x i64] [i64 -9223372036854775807, i64 -9223372036854775806, i64 -9223372036854775808], align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtB3_4Pool5spawnNCNvMB7_NtB7_9Scheduler8dispatch0EBb_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, i1 noundef zeroext %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = zext i1 %1 to i8                         ; 2 uses
  store i8 %i.f, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !45
  %i.g = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 8, 897) 56, i64 noundef 8) #35, !noalias !45 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNCINvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtBJ_4Pool5spawnNCNvMBN_NtBN_9Scheduler8dispatch0E0E3newBR_.exit, !prof !3

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #42
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtBH_4Pool5spawnNCNvMBL_NtBL_9Scheduler8dispatch0E0EBP_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d) #43
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNCINvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtBJ_4Pool5spawnNCNvMBN_NtBN_9Scheduler8dispatch0E0E3newBR_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %i.f, ptr %i.k, align 8
  store ptr %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @0, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs2_NtCsfCaL8mGBm0d_17crossbeam_channel7channelINtB5_6SenderNtNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4pool3JobE4sendB19_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load i8, ptr %i.m, align 8, !range !4, !alias.scope !46, !noundef !5
  %.not.i = icmp eq i8 %i.n, 2
  br i1 %.not.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCsfCaL8mGBm0d_17crossbeam_channel3err9SendErrorNtNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4pool3JobEE6unwrapB1I_.exit, label %bb.e, !prof !6

bb.e:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNCINvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtBJ_4Pool5spawnNCNvMBN_NtBN_9Scheduler8dispatch0E0E3newBR_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #42
          to label %bb.g unwind label %bb.f, !noalias !46

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsfCaL8mGBm0d_17crossbeam_channel3err9SendErrorNtNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4pool3JobEEB1B_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #43
          to label %common.resume unwind label %bb.h, !noalias !46

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !46
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCsfCaL8mGBm0d_17crossbeam_channel3err9SendErrorNtNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4pool3JobEE6unwrapB1I_.exit: ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNCINvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtBJ_4Pool5spawnNCNvMBN_NtBN_9Scheduler8dispatch0E0E3newBR_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCscdodAO9FK5_5alloc6string6Stringj1_ECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit.i:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit unwind label %bb.a

bb.a:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit.i
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

.body.i:                                          ; preds = %bb.a
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors16NotebookSelectorj1_ECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 8 uses
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !59, !noundef !5
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(216) %1)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures20NotebookCellLanguageEEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24) %2) #43
          to label %common.resume.i.i unwind label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.d = load i64, ptr %2, align 8, !range !8, !alias.scope !60, !noundef !5
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors16NotebookSelectorECsjNt1Wzngcv_9ty_server.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures20NotebookCellLanguageENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures34NotebookDocumentFilterWithNotebookECsjNt1Wzngcv_9ty_server.exit.sink.split.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures20NotebookCellLanguageENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

common.resume.i.i:                                ; preds = %bb.l, %bb.k, %bb.f, %bb.c
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.f, %bb.f ], [ %i.l, %bb.l ], [ %i.k, %bb.k ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.h:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.i = load i64, ptr %1, align 8, !range !9, !alias.scope !61, !noundef !5
  %i.j = icmp eq i64 %i.i, -2
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(216) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures20NotebookCellLanguageEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24) %2) #43
          to label %common.resume.i.i unwind label %bb.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.i.i.i: ; preds = %bb.j, %bb.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures20NotebookCellLanguageENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures34NotebookDocumentFilterWithNotebookECsjNt1Wzngcv_9ty_server.exit.sink.split.i.i unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures20NotebookCellLanguageENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures34NotebookDocumentFilterWithNotebookECsjNt1Wzngcv_9ty_server.exit.sink.split.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.i.i.i, %bb.e
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures20NotebookCellLanguageENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors16NotebookSelectorECsjNt1Wzngcv_9ty_server.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors16NotebookSelectorECsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures34NotebookDocumentFilterWithNotebookECsjNt1Wzngcv_9ty_server.exit.sink.split.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultIB1n_uNtCsiXichZnxgbf_6anyhow5ErrorEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !66, !noundef !5
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uNtCsiXichZnxgbf_6anyhow5ErrorEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsjNt1Wzngcv_9ty_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !68, !noundef !5 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !68, !noundef !5 ; 6 uses
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uNtCsiXichZnxgbf_6anyhow5ErrorEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsjNt1Wzngcv_9ty_server.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvXs4_NtCsiXichZnxgbf_6anyhow5errorNtB7_5ErrorNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uNtCsiXichZnxgbf_6anyhow5ErrorEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsjNt1Wzngcv_9ty_server.exit

bb.e:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.g, align 8, !invariant.load !5, !noalias !68 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.i(ptr noundef nonnull %i.d)
          to label %bb.g unwind label %bb.i, !noalias !68

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !10, !invariant.load !5, !noalias !68 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uNtCsiXichZnxgbf_6anyhow5ErrorEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsjNt1Wzngcv_9ty_server.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !11, !invariant.load !5, !noalias !68
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #35, !noalias !68
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uNtCsiXichZnxgbf_6anyhow5ErrorEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsjNt1Wzngcv_9ty_server.exit

bb.i:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !10, !invariant.load !5, !noalias !68 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server.exit4.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !11, !invariant.load !5, !noalias !68
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef range(i64 1, 0) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #35, !noalias !68
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server.exit4.i.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server.exit4.i.i.i: ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %i.o

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uNtCsiXichZnxgbf_6anyhow5ErrorEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.g, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECsjNt1Wzngcv_9ty_server(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !71, !noundef !5
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsjNt1Wzngcv_9ty_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !71, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !71 ; 6 uses
  %i.e = icmp eq ptr %.val.i, null
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsjNt1Wzngcv_9ty_server.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.f = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !71 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.f(ptr noundef nonnull %.val.i)
          to label %bb.e unwind label %bb.g, !noalias !71

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !10, !invariant.load !5, !noalias !71 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsjNt1Wzngcv_9ty_server.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !11, !invariant.load !5, !noalias !71
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #35, !noalias !71
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsjNt1Wzngcv_9ty_server.exit

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !10, !invariant.load !5, !noalias !71 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server.exit4.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !11, !invariant.load !5, !noalias !71
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #35, !noalias !71
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server.exit4.i.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server.exit4.i.i.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.a, %bb.b, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtCsl4BgoAJVhPh_3url3UrlEEECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsl4BgoAJVhPh_3url3UrlEECsjNt1Wzngcv_9ty_server.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsl4BgoAJVhPh_3url3UrlENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsl4BgoAJVhPh_3url3UrlEECsjNt1Wzngcv_9ty_server.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsl4BgoAJVhPh_3url3UrlENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtCsl4BgoAJVhPh_3url3UrlEECsjNt1Wzngcv_9ty_server.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtCsl4BgoAJVhPh_3url3UrlEECsjNt1Wzngcv_9ty_server.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsl4BgoAJVhPh_3url3UrlEECsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsl4BgoAJVhPh_3url3UrlENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjNt1Wzngcv_9ty_server.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjNt1Wzngcv_9ty_server.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsjNt1Wzngcv_9ty_server.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsjNt1Wzngcv_9ty_server.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

end_hunk_0
