Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_query_executor-4674f759d6ee6b99.influxdb3_query_executor.2f371c9a5b18ce51-cgu.13?download=true
inline.NumInlined: 3754
inline.NumDeleted: 1026
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
@401 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsaNmiEuYuYZf_9sqlparser3ast13InsertAliasesNtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@402 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsaNmiEuYuYZf_9sqlparser3ast16SqliteOnConflictNtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@403 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsaNmiEuYuYZf_9sqlparser3ast19MysqlInsertPriorityNtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@404 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentNtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@405 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsaNmiEuYuYZf_9sqlparser3ast8OnInsertNtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@406 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast10ObjectNameEECs43kcu4yvms7_24influxdb3_query_executor, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsq_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast10ObjectNameENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@407 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast9FromTableECs43kcu4yvms7_24influxdb3_query_executor, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsbg_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_9FromTableNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@408 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query14TableWithJoinsEEECs43kcu4yvms7_24influxdb3_query_executor, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query14TableWithJoinsEENtNtB7_3fmt5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@409 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEECs43kcu4yvms7_24influxdb3_query_executor, [16 x i8] c"H\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprENtNtB7_3fmt5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@410 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query11OrderByExprEECs43kcu4yvms7_24influxdb3_query_executor, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsq_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query11OrderByExprENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@411 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@412 = private unnamed_addr constant [6 x i8] c"tables", align 1
@413 = private unnamed_addr constant [4 x i8] c"from", align 1
@414 = private unnamed_addr constant [5 x i8] c"using", align 1
@415 = private unnamed_addr constant [9 x i8] c"selection", align 1
@416 = private unnamed_addr constant [8 x i8] c"order_by", align 1
@417 = private unnamed_addr constant [5 x i8] c"limit", align 1
@418 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @412, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @413, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @414, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @415, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @294, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @416, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @417, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@419 = private unnamed_addr constant [6 x i8] c"Delete", align 1
@420 = private unnamed_addr constant [15 x i8] c"WithFromKeyword", align 1
@421 = private unnamed_addr constant [14 x i8] c"WithoutKeyword", align 1
@422 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\22\09\00\00&\00\00\00" }>, align 8
@423 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00*\09\00\003\00\00\00" }>, align 8
@424 = private unnamed_addr constant [11 x i8] c"FromCurrent", align 1
@425 = private unnamed_addr constant [5 x i8] c"Value", align 1
@426 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @95, [16 x i8] c"x\00\00\00\00\00\00\00\F7\06\00\00@\00\00\00" }>, align 8
@427 = private unnamed_addr constant [28 x i8] c"\17expected `list` found `\C0\01`\00", align 1
@428 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @95, [16 x i8] c"x\00\00\00\00\00\00\00h\09\00\00*\00\00\00" }>, align 8
@429 = private unnamed_addr constant [21 x i8] c"expected no `ok` type", align 1
@430 = private unnamed_addr constant [30 x i8] c"\19expected `result` found `\C0\01`\00", align 1
@431 = private unnamed_addr constant [22 x i8] c"expected no `err` type", align 1
@432 = private unnamed_addr constant [3 x i8] c"ALL", align 1
@433 = private unnamed_addr constant [10 x i8] c"ConfigName", align 1
@434 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6result6ResultINtNtB8_6option6OptionINtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources11host_static8ResourceNtNtCsbkGFX030hZe_18wasmtime_wasi_http5types10HostFieldsEENtNtNtNtNtNtB2E_8bindings9generated4wasi4http5types9ErrorCodeENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@435 = private unnamed_addr constant [2 x i8] c"Ok", align 1
@436 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRuNtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@437 = private unnamed_addr constant [3 x i8] c"Err", align 1
@438 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6result6ResultINtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources11host_static8ResourceINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCscFUs5937I7W_16wasmtime_wasi_io7streams11InputStreamEL_EEuENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@439 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6result6ResultINtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources11host_static8ResourceINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCscFUs5937I7W_16wasmtime_wasi_io7streams12OutputStreamEL_EEuENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@440 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6result6ResultINtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources11host_static8ResourceNtNtCsbkGFX030hZe_18wasmtime_wasi_http4body16HostIncomingBodyEuENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@441 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6result6ResultINtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources11host_static8ResourceNtNtCsbkGFX030hZe_18wasmtime_wasi_http4body16HostOutgoingBodyEuENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@442 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6result6ResultINtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources11host_static8ResourceNtNtCsbkGFX030hZe_18wasmtime_wasi_http5types10HostFieldsENtNtNtNtNtNtB2i_8bindings9generated4wasi4http5types11HeaderErrorENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@443 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6result6ResultINtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources11host_static8ResourceNtNtCsbkGFX030hZe_18wasmtime_wasi_http5types20HostIncomingResponseENtNtNtNtNtNtB2i_8bindings9generated4wasi4http5types9ErrorCodeENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@444 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6result6ResultuNtNtNtNtNtNtCsbkGFX030hZe_18wasmtime_wasi_http8bindings9generated4wasi4http5types11HeaderErrorENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@445 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6result6ResultuuENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@446 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionINtNtB8_6result6ResultIBT_IBx_INtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources11host_static8ResourceNtNtCsbkGFX030hZe_18wasmtime_wasi_http5types10HostFieldsEENtNtNtNtNtNtB2M_8bindings9generated4wasi4http5types9ErrorCodeEuEENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@447 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionINtNtB8_6result6ResultIBT_INtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources11host_static8ResourceNtNtCsbkGFX030hZe_18wasmtime_wasi_http5types20HostIncomingResponseENtNtNtNtNtNtB2I_8bindings9generated4wasi4http5types9ErrorCodeEuEENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@448 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionINtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources11host_static8ResourceNtNtCsbkGFX030hZe_18wasmtime_wasi_http5types10HostFieldsEENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@449 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtNtNtCsbkGFX030hZe_18wasmtime_wasi_http8bindings9generated4wasi4http5types9ErrorCodeNtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@450 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@451 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionNtNtNtNtNtNtCsbkGFX030hZe_18wasmtime_wasi_http8bindings9generated4wasi4http5types6SchemeENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@452 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionNtNtNtNtNtNtCsbkGFX030hZe_18wasmtime_wasi_http8bindings9generated4wasi4http5types9ErrorCodeENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@453 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionyENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@454 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources11host_static8ResourceINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCscFUs5937I7W_16wasmtime_wasi_io7streams11InputStreamEL_EENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@455 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources11host_static8ResourceINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCscFUs5937I7W_16wasmtime_wasi_io7streams12OutputStreamEL_EENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@456 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources11host_static8ResourceNtNtCsbkGFX030hZe_18wasmtime_wasi_http4body16HostIncomingBodyENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@457 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources11host_static8ResourceNtNtCsbkGFX030hZe_18wasmtime_wasi_http4body16HostOutgoingBodyENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@458 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources11host_static8ResourceNtNtCsbkGFX030hZe_18wasmtime_wasi_http4body18HostFutureTrailersENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@459 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources11host_static8ResourceNtNtCsbkGFX030hZe_18wasmtime_wasi_http5types10HostFieldsENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@460 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtNtNtCsbkGFX030hZe_18wasmtime_wasi_http8bindings9generated4wasi4http5types11HeaderErrorNtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@461 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources11host_static8ResourceNtNtCsbkGFX030hZe_18wasmtime_wasi_http5types18HostRequestOptionsENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@462 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources11host_static8ResourceNtNtCsbkGFX030hZe_18wasmtime_wasi_http5types19HostOutgoingRequestENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@463 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources11host_static8ResourceNtNtCsbkGFX030hZe_18wasmtime_wasi_http5types20HostIncomingResponseENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@464 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources11host_static8ResourceNtNtCsbkGFX030hZe_18wasmtime_wasi_http5types20HostOutgoingResponseENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@465 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources11host_static8ResourceNtNtCsbkGFX030hZe_18wasmtime_wasi_http5types26HostFutureIncomingResponseENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@466 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsbkGFX030hZe_18wasmtime_wasi_http5error9HttpErrorNtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@467 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources11host_static8ResourceNtNtCscFUs5937I7W_16wasmtime_wasi_io4poll11DynPollableENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@468 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtNtNtCsbkGFX030hZe_18wasmtime_wasi_http8bindings9generated4wasi4http5types6MethodNtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@469 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRtNtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@470 = private unnamed_addr constant [10 x i8] c"RenameRole", align 1
@471 = private unnamed_addr constant [9 x i8] c"role_name", align 1
@472 = private unnamed_addr constant [9 x i8] c"AddMember", align 1
@473 = private unnamed_addr constant [11 x i8] c"member_name", align 1
@474 = private unnamed_addr constant [10 x i8] c"DropMember", align 1
@475 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3dcl10RoleOptionENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@476 = private unnamed_addr constant [11 x i8] c"WithOptions", align 1
@477 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast10ObjectNameECs43kcu4yvms7_24influxdb3_query_executor, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3W_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@478 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3dcl14SetConfigValueECs43kcu4yvms7_24influxdb3_query_executor, [16 x i8] c"H\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCsaNmiEuYuYZf_9sqlparser3ast3dclNtB5_14SetConfigValueNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@479 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionNtNtCsaNmiEuYuYZf_9sqlparser3ast10ObjectNameENtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@480 = private unnamed_addr constant [3 x i8] c"Set", align 1
@481 = private unnamed_addr constant [11 x i8] c"config_name", align 1
@482 = private unnamed_addr constant [12 x i8] c"config_value", align 1
@483 = private unnamed_addr constant [11 x i8] c"in_database", align 1
@484 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3dcl11ResetConfigECs43kcu4yvms7_24influxdb3_query_executor, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsm_NtNtCsaNmiEuYuYZf_9sqlparser3ast3dclNtB5_11ResetConfigNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@485 = private unnamed_addr constant [5 x i8] c"Reset", align 1
@486 = private unnamed_addr constant [9 x i8] c"TableName", align 1
@487 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsaNmiEuYuYZf_9sqlparser3ast8FunctionNtB6_5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor }>, align 8
@488 = private unnamed_addr constant [13 x i8] c"TableFunction", align 1
@switch.table._RINvMsv_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8FuncType3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB1c_6option8IntoIterNtB6_7ValTypeEINtNtNtB1c_5array4iter8IntoIterB2k_Kj1_EEIB2z_B2k_Kj0_EECs43kcu4yvms7_24influxdb3_query_executor.290 = private unnamed_addr constant [19 x i8] c"\01\01\00\00\00\01\01\01\00\00\00\01\01\00\01\01\01\01\01", align 8
@switch.table._RINvXNtCsaIKnL9StOw_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultuNtB5_5ErrorEINtB5_7ContextuB1a_E12with_contextNtNtCscdodAO9FK5_5alloc6string6StringNCNvMs_NtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component6linkerINtB2C_6LinkerNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host5state13WasmStateImplE9typecheck0ECs43kcu4yvms7_24influxdb3_query_executor = private unnamed_addr constant [7 x ptr] [ptr @117, ptr @118, ptr @119, ptr @120, ptr @121, ptr @122, ptr @123], align 8
@switch.table._RINvXNtCsaIKnL9StOw_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultuNtB5_5ErrorEINtB5_7ContextuB1a_E12with_contextNtNtCscdodAO9FK5_5alloc6string6StringNCNvMs_NtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component6linkerINtB2C_6LinkerNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host5state13WasmStateImplE9typecheck0ECs43kcu4yvms7_24influxdb3_query_executor.291 = private unnamed_addr constant [7 x i8] c"\09\08\08\04\0B\0D\08", align 8
@switch.table._RNvNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component4func5typed4desc = private unnamed_addr constant [26 x i8] c"\04\02\02\03\03\03\03\03\03\03\03\04\06\06\07\04\05\05\04\06\06\0E\11\06\06\0D", align 8
@switch.table._RNvNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component4func5typed4desc.292 = private unnamed_addr constant [26 x ptr] [ptr @129, ptr @130, ptr @131, ptr @132, ptr @133, ptr @134, ptr @135, ptr @136, ptr @137, ptr @138, ptr @139, ptr @140, ptr @141, ptr @142, ptr @143, ptr @144, ptr @145, ptr @146, ptr @147, ptr @148, ptr @149, ptr @150, ptr @151, ptr @152, ptr @153, ptr @154], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs4NRVxsYgnAr_4core5sliceSh12align_to_muthECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCs4NRVxsYgnAr_4core3ptr12align_offsethECs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %1, i64 noundef 1) ; 4 uses
  %i.b = icmp ugt i64 %i.a, %2
  br i1 %i.b, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.d = sub nuw nsw i64 %2, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit
  %.sink4 = phi i64 [ %i.a, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit ], [ %2, %bb.a ]
  %.sink3 = phi ptr [ %i.c, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %.sink2 = phi i64 [ %i.d, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit ], [ 0, %bb.a ]
  %.sink = phi ptr [ %i.e, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12split_at_mutCs43kcu4yvms7_24influxdb3_query_executor.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  store ptr %1, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink4, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sink, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.j, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap12contains_keyRNtNtB8_4name10HeaderNameECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9, !noalias !10, !noundef !13 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvXs2_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i16 @_RINvNtNtCs6P5GRezSnwZ_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1), !noalias !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !9, !noalias !10, !noundef !13 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !9, !noalias !10, !noundef !13 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !9, !noalias !10, !nonnull !13
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !9, !noalias !10, !nonnull !13
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.b
  %.sroa.05.0.i.i.ph = phi i64 [ %i.ae, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.af, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.s = icmp ult i64 %.sroa.0.0.i.i.ph, %i.k     ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.s, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.s, i64 %.sroa.0.0.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !noalias !14, !noundef !13 ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, -1
  br i1 %.not.i.i, label %_RINvXs2_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.v = zext i16 %i.u to i64                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.x = load i16, ptr %i.w, align 2, !noalias !14, !noundef !13 ; 2 uses
  %i.y = and i16 %i.x, %i.g
  %i.z = zext i16 %i.y to i64
  %i.aa = sub i64 %.sroa.0.0.i.i.ph.mux, %i.z
  %i.ab = and i64 %i.aa, %i.n
  %i.ac = icmp samesign ugt i64 %.sroa.05.0.i.i.ph, %i.ab
  br i1 %i.ac, label %_RINvXs2_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq i16 %i.x, %i.e
  br i1 %i.ad, label %bb.e, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i, %bb.h, %bb.f, %bb.d
  %i.ae = add nuw nsw i64 %.sroa.05.0.i.i.ph, 1
  %i.af = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp samesign ugt i64 %i.b, %i.v
  br i1 %i.ag, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.v ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !14, !noundef !13
  %i.ak = icmp ne ptr %i.aj, null                 ; 2 uses
  %i.al = load ptr, ptr %1, align 8, !noalias !14, !noundef !13 ; 2 uses
  %i.am = icmp eq ptr %i.al, null                 ; 2 uses
  %i.an = xor i1 %i.ak, %i.am
  br i1 %i.an, label %bb.g, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ak, label %bb.h, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !14, !noundef !13 ; 2 uses
  %i.aq = load i64, ptr %i.r, align 8, !noalias !14, !noundef !13
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %.split.i.i, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.h
  %i.as = load ptr, ptr %i.q, align 8, !noalias !14, !noundef !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !noalias !14, !noundef !13
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.au, ptr %i.as, i64 %i.ap), !noalias !14
  %i.av = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.av, label %_RINvXs2_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs43kcu4yvms7_24influxdb3_query_executor.exit, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.am)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.ax = load i8, ptr %i.aw, align 8, !range !15, !noalias !14, !noundef !13
  %i.ay = load i8, ptr %i.q, align 8, !range !15, !noalias !14, !noundef !13
  %i.az = icmp eq i8 %i.ax, %i.ay
  br i1 %i.az, label %_RINvXs2_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs43kcu4yvms7_24influxdb3_query_executor.exit, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #37, !noalias !14
  unreachable

_RINvXs2_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %.split.i.i, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %.loopexit, %bb.c, %bb.a
  %i.ba = phi i1 [ false, %bb.a ], [ true, %.split.i.i ], [ true, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i ], [ false, %bb.c ], [ false, %.loopexit ]
  ret i1 %i.ba

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap7get_allRNtNtB8_4name10HeaderNameECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !22, !noalias !23, !noundef !13 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvXs2_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i16 @_RINvNtNtCs6P5GRezSnwZ_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull readonly align 8 %2), !noalias !23 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !22, !noalias !23, !noundef !13 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !22, !noalias !23, !noundef !13 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !22, !noalias !23, !nonnull !13
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !22, !noalias !23, !nonnull !13
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.b
  %.sroa.05.0.i.i.ph = phi i64 [ %i.ae, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.af, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.s = icmp ult i64 %.sroa.0.0.i.i.ph, %i.k     ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.s, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.s, i64 %.sroa.0.0.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !noalias !26, !noundef !13 ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, -1
  br i1 %.not.i.i, label %_RINvXs2_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.v = zext i16 %i.u to i64                     ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.x = load i16, ptr %i.w, align 2, !noalias !26, !noundef !13 ; 2 uses
  %i.y = and i16 %i.x, %i.g
  %i.z = zext i16 %i.y to i64
  %i.aa = sub i64 %.sroa.0.0.i.i.ph.mux, %i.z
  %i.ab = and i64 %i.aa, %i.n
  %i.ac = icmp samesign ugt i64 %.sroa.05.0.i.i.ph, %i.ab
  br i1 %i.ac, label %_RINvXs2_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq i16 %i.x, %i.e
  br i1 %i.ad, label %bb.e, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i, %bb.h, %bb.f, %bb.d
  %i.ae = add nuw nsw i64 %.sroa.05.0.i.i.ph, 1
  %i.af = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp samesign ugt i64 %i.b, %i.v
  br i1 %i.ag, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.v ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !26, !noundef !13
  %i.ak = icmp ne ptr %i.aj, null                 ; 2 uses
  %i.al = load ptr, ptr %2, align 8, !noalias !26, !noundef !13 ; 2 uses
  %i.am = icmp eq ptr %i.al, null                 ; 2 uses
  %i.an = xor i1 %i.ak, %i.am
  br i1 %i.an, label %bb.g, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ak, label %bb.h, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !26, !noundef !13 ; 2 uses
  %i.aq = load i64, ptr %i.r, align 8, !noalias !26, !noundef !13
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %.split.i.i, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.h
  %i.as = load ptr, ptr %i.q, align 8, !noalias !26, !noundef !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !noalias !26, !noundef !13
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.au, ptr %i.as, i64 %i.ap), !noalias !26
  %i.av = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.av, label %_RINvXs2_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs43kcu4yvms7_24influxdb3_query_executor.exit, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.am)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.ax = load i8, ptr %i.aw, align 8, !range !15, !noalias !26, !noundef !13
  %i.ay = load i8, ptr %i.q, align 8, !range !15, !noalias !26, !noundef !13
  %i.az = icmp eq i8 %i.ax, %i.ay
  br i1 %i.az, label %_RINvXs2_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs43kcu4yvms7_24influxdb3_query_executor.exit, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #37, !noalias !26
  unreachable

_RINvXs2_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameRNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %.split.i.i, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %.loopexit, %bb.c, %bb.a
  %.sroa.5.03 = phi i64 [ undef, %bb.a ], [ %i.v, %.split.i.i ], [ %i.v, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i ], [ undef, %bb.c ], [ undef, %.loopexit ]
  %.sink.i.i = phi i64 [ 0, %bb.a ], [ 1, %.split.i.i ], [ 1, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i ], [ 0, %bb.c ], [ 0, %.loopexit ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.ba, align 8
  store i64 %.sink.i.i, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.03, ptr %i.bb, align 8
  ret void

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtCsaIKnL9StOw_6anyhow4kindNtB6_5Trait3newNtNtCs3qFYL1dVk0u_16wasmtime_environ13trap_encoding4TrapECs43kcu4yvms7_24influxdb3_query_executor(i8 noundef range(i8 0, 36) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RNvXs_NtCsaIKnL9StOw_6anyhow5errorNtB6_5ErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCs3qFYL1dVk0u_16wasmtime_environ13trap_encoding4TrapE4fromCs43kcu4yvms7_24influxdb3_query_executor(i8 noundef range(i8 0, 36) %0)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtCsaIKnL9StOw_6anyhow4kindNtB6_5Trait3newNtNtCsbkGFX030hZe_18wasmtime_wasi_http5types19FieldSizeLimitErrorECs43kcu4yvms7_24influxdb3_query_executor(i64 noundef %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RNvXs_NtCsaIKnL9StOw_6anyhow5errorNtB6_5ErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCsbkGFX030hZe_18wasmtime_wasi_http5types19FieldSizeLimitErrorE4fromCs43kcu4yvms7_24influxdb3_query_executor(i64 noundef %0, i64 noundef %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMs_NtCslWccy9wMl4f_17datafusion_common6columnNtB5_6Column15new_unqualifiedNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (56, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  store i64 -1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMs_NtCslWccy9wMl4f_17datafusion_common6columnNtB5_6Column3newNtNtB7_15table_reference14TableReferenceNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 104)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [48 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.a = load i64, ptr %1, align 8, !range !27, !noundef !13 ; 2 uses
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, i64 48, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i64 %i.a, ptr %0, align 8
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %.sroa.54.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCslWccy9wMl4f_17datafusion_common6columnNtB5_6Column3newNtNtB7_15table_reference14TableReferenceRNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i64, ptr %1, align 8, !range !27, !noundef !13
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertRNtNtCscdodAO9FK5_5alloc6string6StringINtB5_4IntoBz_E4intoCs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(56) %i.b) #38
          to label %bb.g unwind label %bb.f

_RNvXs1_NtCs4NRVxsYgnAr_4core7convertRNtNtCscdodAO9FK5_5alloc6string6StringINtB5_4IntoBz_E4intoCs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.f, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %.sroa.54.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCslWccy9wMl4f_17datafusion_common6columnNtB5_6Column3newNtNtB7_15table_reference14TableReferenceReECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i64, ptr %1, align 8, !range !27, !noundef !13
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  %i.d = load i64, ptr %i.a, align 8, !range !38, !noalias !28, !noundef !13
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !39, !noalias !28, !noundef !13 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.e, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i, !prof !40

bb.e:                                             ; preds = %.noexc
  %i.i = load i64, ptr %i.h, align 8, !noalias !28
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #37
          to label %.noexc7 unwind label %bb.g

.noexc7:                                          ; preds = %bb.e
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i: ; preds = %.noexc
  %i.j = load ptr, ptr %i.h, align 8, !noalias !28, !nonnull !13, !noundef !13 ; 2 uses
  %i.k = icmp ule i64 %3, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28
  %.not.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i, label %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtNtCscdodAO9FK5_5alloc6string6StringE4intoCs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i
end_hunk_0
begin_hunk_1_@_RNvXse_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
  %i.ph = load ptr, ptr %i.pg, align 16, !alias.scope !11883, !noalias !11880, !nonnull !13, !noundef !13 ; 6 uses
  %i.pi = icmp eq ptr %i.pf, %i.ph
  br i1 %i.pi, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11888)
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pf, i64 64
  %i.pk = load ptr, ptr %i.pj, align 8, !alias.scope !11885, !noalias !11890, !nonnull !13, !noundef !13 ; 4 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 64
  %i.pm = load ptr, ptr %i.pl, align 8, !alias.scope !11888, !noalias !11891, !nonnull !13, !noundef !13 ; 4 uses
  %i.pn = icmp eq ptr %i.pk, %i.pm
  br i1 %i.pn, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11895)
  %i.pq = load ptr, ptr %i.po, align 8, !alias.scope !11892, !noalias !11897, !nonnull !13, !noundef !13 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  %i.ps = load i64, ptr %i.pr, align 8, !alias.scope !11892, !noalias !11897, !noundef !13 ; 2 uses
  %i.pt = load ptr, ptr %i.pp, align 8, !alias.scope !11895, !noalias !11898, !nonnull !13, !noundef !13 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pm, i64 24
  %i.pv = load i64, ptr %i.pu, align 8, !alias.scope !11895, !noalias !11898, !noundef !13
  %i.pw = icmp eq ptr %i.pq, %i.pt
  %i.px = icmp eq i64 %i.ps, %i.pv                ; 2 uses
  %i.py = and i1 %i.pw, %i.px
  br i1 %i.py, label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i20, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  br i1 %i.px, label %bb.cq, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.cq:                                            ; preds = %bb.cp
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %i.qb = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.pz, ptr noundef nonnull %i.qa, i64 noundef %i.ps), !noalias !11899
  br i1 %i.qb, label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i20, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i20: ; preds = %bb.cq, %bb.co
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pk, i64 32
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pm, i64 32
  %i.qe = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringB13_ENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qd), !noalias !11900
  br i1 %i.qe, label %bb.cr, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.cr:                                            ; preds = %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i20, %bb.cn
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pf, i64 32
  %i.qg = load i64, ptr %i.qf, align 8, !alias.scope !11885, !noalias !11890, !noundef !13 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  %i.qi = load i64, ptr %i.qh, align 8, !alias.scope !11888, !noalias !11891, !noundef !13
  %i.qj = icmp eq i64 %i.qg, %i.qi
  br i1 %i.qj, label %bb.cs, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.cs:                                            ; preds = %bb.cr
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.ql = load ptr, ptr %i.qk, align 8, !alias.scope !11888, !noalias !11891, !nonnull !13, !noundef !13
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pf, i64 24
  %i.qn = load ptr, ptr %i.qm, align 8, !alias.scope !11885, !noalias !11890, !nonnull !13, !noundef !13
  %i.qo = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpINtNtB9_6option6OptionNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.qn, ptr noundef nonnull %i.ql, i64 noundef %i.qg), !noalias !11900
  br i1 %i.qo, label %bb.ct, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ct:                                            ; preds = %bb.cs
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pf, i64 56
  %i.qq = load i64, ptr %i.qp, align 8, !alias.scope !11885, !noalias !11890, !noundef !13 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ph, i64 56
  %i.qs = load i64, ptr %i.qr, align 8, !alias.scope !11888, !noalias !11891, !noundef !13
  %i.qt = icmp eq i64 %i.qq, %i.qs
  br i1 %i.qt, label %bb.cu, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.cu:                                            ; preds = %bb.ct
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ph, i64 48
  %i.qv = load ptr, ptr %i.qu, align 8, !alias.scope !11888, !noalias !11891, !nonnull !13, !noundef !13
  %i.qw = getelementptr inbounds nuw i8, ptr %i.pf, i64 48
  %i.qx = load ptr, ptr %i.qw, align 8, !alias.scope !11885, !noalias !11890, !nonnull !13, !noundef !13
  %i.qy = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCslWccy9wMl4f_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.qx, ptr noundef nonnull %i.qv, i64 noundef %i.qq), !noalias !11900
  br label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.cv:                                            ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11904)
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ra = load i8, ptr %i.qz, align 8, !range !1564, !alias.scope !11901, !noalias !11904, !noundef !13
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.rc = load i8, ptr %i.rb, align 8, !range !1564, !alias.scope !11904, !noalias !11901, !noundef !13
  %i.rd = icmp eq i8 %i.ra, %i.rc
  br i1 %i.rd, label %bb.cw, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.cw:                                            ; preds = %bb.cv
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rg = tail call fastcc noundef zeroext i1 @_RNvXsg_NtCslWccy9wMl4f_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.rf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.re)
  br i1 %i.rg, label %bb.cx, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.cx:                                            ; preds = %bb.cw
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ri = load ptr, ptr %i.rh, align 16, !alias.scope !11901, !noalias !11904, !nonnull !13, !noundef !13 ; 6 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.rk = load ptr, ptr %i.rj, align 16, !alias.scope !11904, !noalias !11901, !nonnull !13, !noundef !13 ; 6 uses
  %i.rl = icmp eq ptr %i.ri, %i.rk
  br i1 %i.rl, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11909)
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ri, i64 64
  %i.rn = load ptr, ptr %i.rm, align 8, !alias.scope !11906, !noalias !11911, !nonnull !13, !noundef !13 ; 4 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 64
  %i.rp = load ptr, ptr %i.ro, align 8, !alias.scope !11909, !noalias !11912, !nonnull !13, !noundef !13 ; 4 uses
  %i.rq = icmp eq ptr %i.rn, %i.rp
  br i1 %i.rq, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11916)
  %i.rt = load ptr, ptr %i.rr, align 8, !alias.scope !11913, !noalias !11918, !nonnull !13, !noundef !13 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rn, i64 24
  %i.rv = load i64, ptr %i.ru, align 8, !alias.scope !11913, !noalias !11918, !noundef !13 ; 2 uses
  %i.rw = load ptr, ptr %i.rs, align 8, !alias.scope !11916, !noalias !11919, !nonnull !13, !noundef !13 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  %i.ry = load i64, ptr %i.rx, align 8, !alias.scope !11916, !noalias !11919, !noundef !13
  %i.rz = icmp eq ptr %i.rt, %i.rw
  %i.sa = icmp eq i64 %i.rv, %i.ry                ; 2 uses
  %i.sb = and i1 %i.rz, %i.sa
  br i1 %i.sb, label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i23, label %bb.da

bb.da:                                            ; preds = %bb.cz
  br i1 %i.sa, label %bb.db, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.db:                                            ; preds = %bb.da
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %i.se = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.sc, ptr noundef nonnull %i.sd, i64 noundef %i.rv), !noalias !11920
  br i1 %i.se, label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i23, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i23: ; preds = %bb.db, %bb.cz
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rn, i64 32
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rp, i64 32
  %i.sh = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringB13_ENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.sf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.sg), !noalias !11921
  br i1 %i.sh, label %bb.dc, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dc:                                            ; preds = %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i23, %bb.cy
  %i.si = getelementptr inbounds nuw i8, ptr %i.ri, i64 32
  %i.sj = load i64, ptr %i.si, align 8, !alias.scope !11906, !noalias !11911, !noundef !13 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.rk, i64 32
  %i.sl = load i64, ptr %i.sk, align 8, !alias.scope !11909, !noalias !11912, !noundef !13
  %i.sm = icmp eq i64 %i.sj, %i.sl
  br i1 %i.sm, label %bb.dd, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dd:                                            ; preds = %bb.dc
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rk, i64 24
  %i.so = load ptr, ptr %i.sn, align 8, !alias.scope !11909, !noalias !11912, !nonnull !13, !noundef !13
  %i.sp = getelementptr inbounds nuw i8, ptr %i.ri, i64 24
  %i.sq = load ptr, ptr %i.sp, align 8, !alias.scope !11906, !noalias !11911, !nonnull !13, !noundef !13
  %i.sr = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpINtNtB9_6option6OptionNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.sq, ptr noundef nonnull %i.so, i64 noundef %i.sj), !noalias !11921
  br i1 %i.sr, label %bb.de, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.de:                                            ; preds = %bb.dd
  %i.ss = getelementptr inbounds nuw i8, ptr %i.ri, i64 56
  %i.st = load i64, ptr %i.ss, align 8, !alias.scope !11906, !noalias !11911, !noundef !13 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.rk, i64 56
  %i.sv = load i64, ptr %i.su, align 8, !alias.scope !11909, !noalias !11912, !noundef !13
  %i.sw = icmp eq i64 %i.st, %i.sv
  br i1 %i.sw, label %bb.df, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.df:                                            ; preds = %bb.de
  %i.sx = getelementptr inbounds nuw i8, ptr %i.rk, i64 48
  %i.sy = load ptr, ptr %i.sx, align 8, !alias.scope !11909, !noalias !11912, !nonnull !13, !noundef !13
  %i.sz = getelementptr inbounds nuw i8, ptr %i.ri, i64 48
  %i.ta = load ptr, ptr %i.sz, align 8, !alias.scope !11906, !noalias !11911, !nonnull !13, !noundef !13
  %i.tb = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCslWccy9wMl4f_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.ta, ptr noundef nonnull %i.sy, i64 noundef %i.st), !noalias !11921
  br label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dg:                                            ; preds = %bb.b
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11925)
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.tf = load i8, ptr %i.te, align 16, !range !1564, !alias.scope !11922, !noalias !11925, !noundef !13
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.th = load i8, ptr %i.tg, align 16, !range !1564, !alias.scope !11925, !noalias !11922, !noundef !13
  %i.ti = icmp eq i8 %i.tf, %i.th
  br i1 %i.ti, label %bb.dh, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dh:                                            ; preds = %bb.dg
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.tk = load i8, ptr %i.tj, align 1, !range !1564, !alias.scope !11922, !noalias !11925, !noundef !13
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.tm = load i8, ptr %i.tl, align 1, !range !1564, !alias.scope !11925, !noalias !11922, !noundef !13
  %i.tn = icmp eq i8 %i.tk, %i.tm
  br i1 %i.tn, label %bb.di, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.di:                                            ; preds = %bb.dh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11930)
  %i.to = load ptr, ptr %i.tc, align 8, !alias.scope !11932, !noalias !11933, !noundef !13 ; 3 uses
  %i.tp = icmp ne ptr %i.to, null                 ; 2 uses
  %i.tq = load ptr, ptr %i.td, align 8, !alias.scope !11933, !noalias !11932, !noundef !13 ; 4 uses
  %i.tr = icmp eq ptr %i.tq, null                 ; 2 uses
  %i.ts = xor i1 %i.tp, %i.tr
  br i1 %i.ts, label %bb.dj, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dj:                                            ; preds = %bb.di
  br i1 %i.tp, label %bb.dk, label %bb.dl

.sink.split.i.i:                                  ; preds = %bb.do, %bb.dl
  %.sink.i.i = phi ptr [ %i.ug, %bb.dl ], [ %i.uu, %bb.do ]
  %.sink20.i.i = phi ptr [ %i.uc, %bb.dl ], [ %i.uq, %bb.do ]
  %.sink19.i.i = phi i64 [ %i.ue, %bb.dl ], [ %i.us, %bb.do ]
  %i.tt = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16
  %i.tu = getelementptr inbounds nuw i8, ptr %.sink20.i.i, i64 16
  %bcmp9.i.i = tail call i32 @bcmp(ptr nonnull %i.tu, ptr nonnull %i.tt, i64 %.sink19.i.i), !noalias !11934
  %i.tv = icmp eq i32 %bcmp9.i.i, 0
  br i1 %i.tv, label %bb.dp, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dk:                                            ; preds = %bb.dj
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.tw = load i64, ptr %2, align 16, !alias.scope !11932, !noalias !11933, !noundef !13 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ty = load i64, ptr %i.tx, align 16, !alias.scope !11933, !noalias !11932, !noundef !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tq) ]
  %i.tz = icmp eq ptr %i.to, %i.tq
  %i.ua = icmp eq i64 %i.tw, %i.ty                ; 2 uses
  %i.ub = and i1 %i.tz, %i.ua
  br i1 %i.ub, label %bb.do, label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  tail call void @llvm.assume(i1 %i.tr)
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.uc = load ptr, ptr %3, align 16, !alias.scope !11932, !noalias !11933, !nonnull !13, !noundef !13 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ue = load i64, ptr %i.ud, align 8, !alias.scope !11932, !noalias !11933, !noundef !13 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ug = load ptr, ptr %i.uf, align 16, !alias.scope !11933, !noalias !11932, !nonnull !13, !noundef !13 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ui = load i64, ptr %i.uh, align 8, !alias.scope !11933, !noalias !11932, !noundef !13
  %i.uj = icmp eq ptr %i.uc, %i.ug                ; 2 uses
  %i.uk = icmp eq i64 %i.ue, %i.ui                ; 2 uses
  %i.ul = and i1 %i.uj, %i.uk
  %.not.i.i = xor i1 %i.uk, true
  %brmerge.i.i = or i1 %i.uj, %.not.i.i
  br i1 %brmerge.i.i, label %_RNvXs3_NtCslWccy9wMl4f_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, label %.sink.split.i.i

bb.dm:                                            ; preds = %bb.dk
  br i1 %i.ua, label %bb.dn, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dn:                                            ; preds = %bb.dm
  %i.um = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.un = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  %bcmp8.i.i = tail call i32 @bcmp(ptr nonnull %i.un, ptr nonnull %i.um, i64 %i.tw), !noalias !11934
  %i.uo = icmp eq i32 %bcmp8.i.i, 0
  br i1 %i.uo, label %bb.do, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.do:                                            ; preds = %bb.dn, %bb.dk
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.uq = load ptr, ptr %i.up, align 8, !alias.scope !11932, !noalias !11933, !nonnull !13, !noundef !13 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.us = load i64, ptr %i.ur, align 16, !alias.scope !11932, !noalias !11933, !noundef !13 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.uu = load ptr, ptr %i.ut, align 8, !alias.scope !11933, !noalias !11932, !nonnull !13, !noundef !13 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.uw = load i64, ptr %i.uv, align 16, !alias.scope !11933, !noalias !11932, !noundef !13
  %i.ux = icmp eq ptr %i.uq, %i.uu                ; 2 uses
  %i.uy = icmp eq i64 %i.us, %i.uw                ; 2 uses
  %i.uz = and i1 %i.ux, %i.uy
  %.not10.i.i = xor i1 %i.uy, true
  %brmerge11.i.i = or i1 %i.ux, %.not10.i.i
  br i1 %brmerge11.i.i, label %_RNvXs3_NtCslWccy9wMl4f_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, label %.sink.split.i.i

_RNvXs3_NtCslWccy9wMl4f_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.do, %bb.dl
  %.sroa.0.0.shrunk.i.i = phi i1 [ %i.uz, %bb.do ], [ %i.ul, %bb.dl ]
  br i1 %.sroa.0.0.shrunk.i.i, label %bb.dp, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dp:                                            ; preds = %_RNvXs3_NtCslWccy9wMl4f_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, %.sink.split.i.i
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.vb = load ptr, ptr %i.va, align 8, !alias.scope !11922, !noalias !11925, !nonnull !13, !noundef !13 ; 6 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.vd = load ptr, ptr %i.vc, align 8, !alias.scope !11925, !noalias !11922, !nonnull !13, !noundef !13 ; 6 uses
  %i.ve = icmp eq ptr %i.vb, %i.vd
  br i1 %i.ve, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11938)
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vb, i64 64
  %i.vg = load ptr, ptr %i.vf, align 8, !alias.scope !11935, !noalias !11940, !nonnull !13, !noundef !13 ; 4 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vd, i64 64
  %i.vi = load ptr, ptr %i.vh, align 8, !alias.scope !11938, !noalias !11941, !nonnull !13, !noundef !13 ; 4 uses
  %i.vj = icmp eq ptr %i.vg, %i.vi
  br i1 %i.vj, label %bb.du, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11945)
  %i.vm = load ptr, ptr %i.vk, align 8, !alias.scope !11942, !noalias !11947, !nonnull !13, !noundef !13 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vg, i64 24
  %i.vo = load i64, ptr %i.vn, align 8, !alias.scope !11942, !noalias !11947, !noundef !13 ; 2 uses
  %i.vp = load ptr, ptr %i.vl, align 8, !alias.scope !11945, !noalias !11948, !nonnull !13, !noundef !13 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vi, i64 24
  %i.vr = load i64, ptr %i.vq, align 8, !alias.scope !11945, !noalias !11948, !noundef !13
  %i.vs = icmp eq ptr %i.vm, %i.vp
  %i.vt = icmp eq i64 %i.vo, %i.vr                ; 2 uses
  %i.vu = and i1 %i.vs, %i.vt
  br i1 %i.vu, label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i26, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  br i1 %i.vt, label %bb.dt, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dt:                                            ; preds = %bb.ds
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %i.vx = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.vv, ptr noundef nonnull %i.vw, i64 noundef %i.vo), !noalias !11949
  br i1 %i.vx, label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i26, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i26: ; preds = %bb.dt, %bb.dr
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vg, i64 32
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vi, i64 32
  %i.wa = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringB13_ENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.vy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.vz), !noalias !11950
  br i1 %i.wa, label %bb.du, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.du:                                            ; preds = %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i26, %bb.dq
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vb, i64 32
  %i.wc = load i64, ptr %i.wb, align 8, !alias.scope !11935, !noalias !11940, !noundef !13 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vd, i64 32
  %i.we = load i64, ptr %i.wd, align 8, !alias.scope !11938, !noalias !11941, !noundef !13
  %i.wf = icmp eq i64 %i.wc, %i.we
  br i1 %i.wf, label %bb.dv, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dv:                                            ; preds = %bb.du
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vd, i64 24
  %i.wh = load ptr, ptr %i.wg, align 8, !alias.scope !11938, !noalias !11941, !nonnull !13, !noundef !13
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vb, i64 24
  %i.wj = load ptr, ptr %i.wi, align 8, !alias.scope !11935, !noalias !11940, !nonnull !13, !noundef !13
  %i.wk = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpINtNtB9_6option6OptionNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.wj, ptr noundef nonnull %i.wh, i64 noundef %i.wc), !noalias !11950
  br i1 %i.wk, label %bb.dw, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dw:                                            ; preds = %bb.dv
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vb, i64 56
  %i.wm = load i64, ptr %i.wl, align 8, !alias.scope !11935, !noalias !11940, !noundef !13 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vd, i64 56
  %i.wo = load i64, ptr %i.wn, align 8, !alias.scope !11938, !noalias !11941, !noundef !13
  %i.wp = icmp eq i64 %i.wm, %i.wo
  br i1 %i.wp, label %bb.dx, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dx:                                            ; preds = %bb.dw
  %i.wq = getelementptr inbounds nuw i8, ptr %i.vd, i64 48
  %i.wr = load ptr, ptr %i.wq, align 8, !alias.scope !11938, !noalias !11941, !nonnull !13, !noundef !13
  %i.ws = getelementptr inbounds nuw i8, ptr %i.vb, i64 48
  %i.wt = load ptr, ptr %i.ws, align 8, !alias.scope !11935, !noalias !11940, !nonnull !13, !noundef !13
  %i.wu = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCslWccy9wMl4f_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.wt, ptr noundef nonnull %i.wr, i64 noundef %i.wm), !noalias !11950
  br label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dy:                                            ; preds = %bb.b
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11954)
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.wy = load i8, ptr %i.wx, align 16, !range !1564, !alias.scope !11951, !noalias !11954, !noundef !13
  %i.wz = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.xa = load i8, ptr %i.wz, align 16, !range !1564, !alias.scope !11954, !noalias !11951, !noundef !13
  %i.xb = icmp eq i8 %i.wy, %i.xa
  br i1 %i.xb, label %bb.dz, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dz:                                            ; preds = %bb.dy
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.xd = load i8, ptr %i.xc, align 1, !range !1564, !alias.scope !11951, !noalias !11954, !noundef !13
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 289
  %i.xf = load i8, ptr %i.xe, align 1, !range !1564, !alias.scope !11954, !noalias !11951, !noundef !13
  %i.xg = icmp eq i8 %i.xd, %i.xf
  br i1 %i.xg, label %bb.ea, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ea:                                            ; preds = %bb.dz
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.xi = load i64, ptr %i.xh, align 16, !alias.scope !11951, !noalias !11954, !noundef !13 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.xk = load i64, ptr %i.xj, align 16, !alias.scope !11954, !noalias !11951, !noundef !13
  %i.xl = icmp eq i64 %i.xi, %i.xk
  br i1 %i.xl, label %bb.eb, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.eb:                                            ; preds = %bb.ea
  %i.xm = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.xn = load ptr, ptr %i.xm, align 8, !alias.scope !11954, !noalias !11951, !nonnull !13, !noundef !13
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.xp = load ptr, ptr %i.xo, align 8, !alias.scope !11951, !noalias !11954, !nonnull !13, !noundef !13
  %bcmp.i28 = tail call i32 @bcmp(ptr nonnull %i.xp, ptr nonnull %i.xn, i64 %i.xi), !noalias !11956, !inline_history !11957
  %i.xq = icmp eq i32 %bcmp.i28, 0
  br i1 %i.xq, label %bb.ec, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ec:                                            ; preds = %bb.eb
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.xs = load i64, ptr %i.xr, align 8, !range !42, !alias.scope !11951, !noalias !11954, !noundef !13
  %.not.i29 = icmp eq i64 %i.xs, -1
  %i.xt = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.xu = load i64, ptr %i.xt, align 8, !range !42, !alias.scope !11954, !noalias !11951, !noundef !13
  %i.xv = icmp eq i64 %i.xu, -1                   ; 2 uses
  br i1 %.not.i29, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  br i1 %i.xv, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  br i1 %i.xv, label %bb.eg, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ef:                                            ; preds = %bb.ed
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.xx = load i64, ptr %i.xw, align 8, !alias.scope !11951, !noalias !11954, !noundef !13 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.xz = load i64, ptr %i.xy, align 8, !alias.scope !11954, !noalias !11951, !noundef !13
  %i.ya = icmp eq i64 %i.xx, %i.xz
  br i1 %i.ya, label %.split, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

.split:                                           ; preds = %bb.ef
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.yc = load ptr, ptr %i.yb, align 16, !alias.scope !11954, !noalias !11951, !nonnull !13, !noundef !13
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ye = load ptr, ptr %i.yd, align 16, !alias.scope !11951, !noalias !11954, !nonnull !13, !noundef !13
  %i.yf = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddl18OperateFunctionArgINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.ye, ptr noundef nonnull %i.yc, i64 noundef %i.xx), !noalias !11956, !inline_history !11957
  br i1 %i.yf, label %bb.eg, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.eg:                                            ; preds = %.split, %bb.ee
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.yh = load i8, ptr %i.yg, align 16, !range !2349, !alias.scope !11951, !noalias !11954, !noundef !13
  %.not8.i = icmp eq i8 %i.yh, -1
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.yj = load i8, ptr %i.yi, align 16, !range !2349, !alias.scope !11954, !noalias !11951, !noundef !13
  %i.yk = icmp eq i8 %i.yj, -1                    ; 2 uses
  br i1 %.not8.i, label %bb.ei, label %bb.eh
end_hunk_1
