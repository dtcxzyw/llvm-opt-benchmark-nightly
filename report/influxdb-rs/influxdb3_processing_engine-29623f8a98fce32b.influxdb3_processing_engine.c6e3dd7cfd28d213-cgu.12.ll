Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_processing_engine-29623f8a98fce32b.influxdb3_processing_engine.c6e3dd7cfd28d213-cgu.12?download=true
inline.NumInlined: 818
inline.NumDeleted: 341
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [1 x i8] c"/", align 1
@1 = private unnamed_addr constant [33 x i8] c"\1EOS can't spawn worker thread: \C0\00", align 1
@_RNvNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID = external global { { { i64 } } }
@2 = private unnamed_addr constant [120 x i8] c"/home/opt-bench/.rustup/toolchains/1.97.1-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/str/pattern.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"w\00\00\00\00\00\00\00\E7\05\00\00\14\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"w\00\00\00\00\00\00\00\E7\05\00\00!\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"w\00\00\00\00\00\00\00\DB\05\00\00!\00\00\00" }>, align 8
@_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS = external local_unnamed_addr global { { { i8 } } }
@_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@6 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name17DatabaseNameErrorECsh4GC5dvIChH_27influxdb3_processing_engine, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsa_NtCs9h7Hq22ZyhR_15influxdb3_types13database_nameNtB5_17DatabaseNameErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@7 = private unnamed_addr constant [106 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.0/src/util/linked_list.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"i\00\00\00\00\00\00\00}\00\00\00\09\00\00\00" }>, align 8
@9 = private unnamed_addr constant [15 x i8] c"table not found", align 1
@10 = private unnamed_addr constant [77 x i8] c"8unexpectedly found scheduled trigger specification cron:\C0\10 for WAL plugin \C0\00", align 1
@11 = private unnamed_addr constant [75 x i8] c"6unexpectedly found request path trigger specification \C0\10 for WAL plugin \C0\00", align 1
@12 = private unnamed_addr constant [74 x i8] c"5unexpectedly found every trigger specification every:\C0\10 for WAL plugin \C0\00", align 1
@13 = private unnamed_addr constant [25 x i8] c"\0Eerror running \C0\02: \C1 \00\80`\00", align 1
@_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL = external local_unnamed_addr global { { { i64 } } }
@14 = private unnamed_addr constant [20 x i8] c"error running plugin", align 1
@15 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsl_NtCs4BfJs7E7SEE_12tracing_core5fieldNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsNtB5_5Value6record }>, align 8
@16 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_12DisplayValueRNtNtCs9h7Hq22ZyhR_15influxdb3_types7logging12ErrorOneLineENtB5_5Value6recordCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@17 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_10DebugValueRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEENtB5_5Value6recordCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@18 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_12DisplayValueRReENtB5_5Value6recordCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@19 = private unnamed_addr constant [50 x i8] c"trigger database name from catalog should be valid", align 1
@20 = private unnamed_addr constant [48 x i8] c"influxdb3_processing_engine/src/worker/local.rs\00", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @20, [16 x i8] c"/\00\00\00\00\00\00\00\00\01\00\00\0E\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7logging16WriteLogEndpointEBF_, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsh4GC5dvIChH_27influxdb3_processing_engine7loggingNtB4_16WriteLogEndpointNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr @_RNvXs0_NtCsh4GC5dvIChH_27influxdb3_processing_engine7loggingNtB5_16WriteLogEndpointNtNtCskkCPRT7oCWw_16influxdb3_py_api7logging11LogEndpoint3log }>, align 8
@23 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.0/src/util/sharded_list.rs\00", align 1
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"j\00\00\00\00\00\00\00\89\00\00\00\09\00\00\00" }>, align 8
@_RNvNCNvMs2_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtB9_13TriggerPlugin20execute_request_once010___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNCNvMs2_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtBb_13TriggerPlugin20execute_request_once010___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNCNvMs2_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtB9_13TriggerPlugin24finish_return_state_join010___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNCNvMs2_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtBb_13TriggerPlugin24finish_return_state_join010___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvMs2_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtB7_13TriggerPlugin23log_return_state_errors10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvMs2_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtB9_13TriggerPlugin23log_return_state_errors10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@25 = private unnamed_addr constant [57 x i8] c"event influxdb3_processing_engine/src/worker/local.rs:434", align 1
@26 = private unnamed_addr constant [42 x i8] c"influxdb3_processing_engine::worker::local", align 1
@27 = private unnamed_addr constant [7 x i8] c"message", align 1
@28 = private unnamed_addr constant [23 x i8] c"self.trigger_definition", align 1
@29 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @27, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @28, [8 x i8] c"\17\00\00\00\00\00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs4BfJs7E7SEE_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest, ptr @_RNvXs_NtCs4BfJs7E7SEE_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata, ptr @_RNvYNtNtCs4BfJs7E7SEE_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@31 = private unnamed_addr constant [47 x i8] c"influxdb3_processing_engine/src/worker/local.rs", align 1
@_RNvNvNCNvMs2_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtBb_13TriggerPlugin20execute_request_once010___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00\B2\01\00\00", ptr @25, [8 x i8] c"9\00\00\00\00\00\00\00", ptr @26, [8 x i8] c"*\00\00\00\00\00\00\00", ptr @29, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @_RNvNCNvMs2_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtB9_13TriggerPlugin20execute_request_once010___CALLSITE, ptr @30, ptr @26, [8 x i8] c"*\00\00\00\00\00\00\00", ptr @31, [9 x i8] c"/\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@32 = private unnamed_addr constant [57 x i8] c"event influxdb3_processing_engine/src/worker/local.rs:324", align 1
@33 = private unnamed_addr constant [12 x i8] c"trigger_name", align 1
@34 = private unnamed_addr constant [7 x i8] c"context", align 1
@35 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @27, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @33, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @34, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@_RNvNvNCNvMs2_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtBb_13TriggerPlugin24finish_return_state_join010___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00D\01\00\00", ptr @32, [8 x i8] c"9\00\00\00\00\00\00\00", ptr @26, [8 x i8] c"*\00\00\00\00\00\00\00", ptr @35, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @_RNvNCNvMs2_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtB9_13TriggerPlugin24finish_return_state_join010___CALLSITE, ptr @30, ptr @26, [8 x i8] c"*\00\00\00\00\00\00\00", ptr @31, [9 x i8] c"/\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@36 = private unnamed_addr constant [57 x i8] c"event influxdb3_processing_engine/src/worker/local.rs:541", align 1
@37 = private unnamed_addr constant [5 x i8] c"error", align 1
@38 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @27, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @37, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @28, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @34, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@_RNvNvNvMs2_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtB9_13TriggerPlugin23log_return_state_errors10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00\1D\02\00\00", ptr @36, [8 x i8] c"9\00\00\00\00\00\00\00", ptr @26, [8 x i8] c"*\00\00\00\00\00\00\00", ptr @38, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @_RNvNvMs2_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtB7_13TriggerPlugin23log_return_state_errors10___CALLSITE, ptr @30, ptr @26, [8 x i8] c"*\00\00\00\00\00\00\00", ptr @31, [9 x i8] c"/\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@39 = private unnamed_addr constant [57 x i8] c"event influxdb3_processing_engine/src/worker/local.rs:668", align 1
@40 = private unnamed_addr constant [17 x i8] c"scheduler_node_id", align 1
@41 = private unnamed_addr constant [7 x i8] c"work_id", align 1
@42 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @27, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @40, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @41, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@_RNvNvNvXs4_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtB9_19PythonTriggerWorkerNtNtBd_25scheduler_worker_protocol13TriggerWorker11cancel_work10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00\9C\02\00\00", ptr @39, [8 x i8] c"9\00\00\00\00\00\00\00", ptr @26, [8 x i8] c"*\00\00\00\00\00\00\00", ptr @42, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @_RNvNvXs4_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtB7_19PythonTriggerWorkerNtNtBb_25scheduler_worker_protocol13TriggerWorker11cancel_work10___CALLSITE, ptr @30, ptr @26, [8 x i8] c"*\00\00\00\00\00\00\00", ptr @31, [9 x i8] c"/\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@43 = private unnamed_addr constant [57 x i8] c"event influxdb3_processing_engine/src/worker/local.rs:621", align 1
@_RNvNvNvXs4_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtB9_19PythonTriggerWorkerNtNtBd_25scheduler_worker_protocol13TriggerWorker11submit_work10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00m\02\00\00", ptr @43, [8 x i8] c"9\00\00\00\00\00\00\00", ptr @26, [8 x i8] c"*\00\00\00\00\00\00\00", ptr @42, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @_RNvNvXs4_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtB7_19PythonTriggerWorkerNtNtBb_25scheduler_worker_protocol13TriggerWorker11submit_work10___CALLSITE, ptr @30, ptr @26, [8 x i8] c"*\00\00\00\00\00\00\00", ptr @31, [9 x i8] c"/\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@44 = private unnamed_addr constant [57 x i8] c"event influxdb3_processing_engine/src/worker/local.rs:630", align 1
@45 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @27, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @41, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@_RNvNvNvXs4_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtB9_19PythonTriggerWorkerNtNtBd_25scheduler_worker_protocol13TriggerWorker11submit_works_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00v\02\00\00", ptr @44, [8 x i8] c"9\00\00\00\00\00\00\00", ptr @26, [8 x i8] c"*\00\00\00\00\00\00\00", ptr @45, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @_RNvNvXs4_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtB7_19PythonTriggerWorkerNtNtBb_25scheduler_worker_protocol13TriggerWorker11submit_works_10___CALLSITE, ptr @30, ptr @26, [8 x i8] c"*\00\00\00\00\00\00\00", ptr @31, [9 x i8] c"/\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@_RNvNvXs4_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtB7_19PythonTriggerWorkerNtNtBb_25scheduler_worker_protocol13TriggerWorker11cancel_work10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvXs4_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtB9_19PythonTriggerWorkerNtNtBd_25scheduler_worker_protocol13TriggerWorker11cancel_work10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvXs4_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtB7_19PythonTriggerWorkerNtNtBb_25scheduler_worker_protocol13TriggerWorker11submit_work10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvXs4_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtB9_19PythonTriggerWorkerNtNtBd_25scheduler_worker_protocol13TriggerWorker11submit_work10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvXs4_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtB7_19PythonTriggerWorkerNtNtBb_25scheduler_worker_protocol13TriggerWorker11submit_works_10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvXs4_NtNtCsh4GC5dvIChH_27influxdb3_processing_engine6worker5localNtB9_19PythonTriggerWorkerNtNtBd_25scheduler_worker_protocol13TriggerWorker11submit_works_10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@46 = private unnamed_addr constant [19 x i8] c"PythonTriggerWorker", align 1
@47 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsV_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@48 = private unnamed_addr constant [7 x i8] c"node_id", align 1
@49 = private unnamed_addr constant [61 x i8] c"fatal runtime error: thread local panicked on drop, aborting\0A", align 1
@50 = private unnamed_addr constant [60 x i8] c"internal error: entered unreachable code: invalid Once state", align 1
@51 = private unnamed_addr constant [127 x i8] c"/home/opt-bench/.rustup/toolchains/1.97.1-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/sys/sync/once/futex.rs\00", align 1
@52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @51, [16 x i8] c"~\00\00\00\00\00\00\00`\00\00\00\12\00\00\00" }>, align 8
@53 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@54 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@55 = private unnamed_addr constant [11 x i8] c"InvalidPart", align 1
@56 = private unnamed_addr constant [7 x i8] c"segment", align 1
@57 = private unnamed_addr constant [7 x i8] c"illegal", align 1
@58 = private unnamed_addr constant [71 x i8] c"trigger worker cancellation dropped because scheduler is not registered", align 1
@59 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_10DebugValueRINtNtCscdodAO9FK5_5alloc4sync3ArceEENtB5_5Value6recordCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@60 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_10DebugValueRNtNtCsh4GC5dvIChH_27influxdb3_processing_engine25scheduler_worker_protocol13TriggerWorkIdENtB5_5Value6recordB12_ }>, align 8
@61 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @20, [16 x i8] c"/\00\00\00\00\00\00\00z\02\00\00\09\00\00\00" }>, align 8
@62 = private unnamed_addr constant [43 x i8] c"duplicate trigger worker submission ignored", align 1
@63 = private unnamed_addr constant [69 x i8] c"trigger worker submission dropped because scheduler is not registered", align 1
@64 = private unnamed_addr constant [12 x i8] c"EmptySegment", align 1
@65 = private unnamed_addr constant [4 x i8] c"path", align 1
@66 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@67 = private unnamed_addr constant [10 x i8] c"BadSegment", align 1
@68 = private unnamed_addr constant [6 x i8] c"source", align 1
@69 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsh4GC5dvIChH_27influxdb3_processing_engine, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsG_NtCs2AWtUsOyxgP_3std4pathNtB5_7PathBufNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@70 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@71 = private unnamed_addr constant [12 x i8] c"Canonicalize", align 1
@72 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@73 = private unnamed_addr constant [11 x i8] c"InvalidPath", align 1
@74 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@75 = private unnamed_addr constant [10 x i8] c"NonUnicode", align 1
@76 = private unnamed_addr constant [14 x i8] c"PrefixMismatch", align 1
@77 = private unnamed_addr constant [6 x i8] c"prefix", align 1
@78 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartECsh4GC5dvIChH_27influxdb3_processing_engine, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCs1LivM9IBWqb_12object_store4path5partsNtB5_11InvalidPartNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt }>, align 8
@79 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartECsh4GC5dvIChH_27influxdb3_processing_engine, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtCs1LivM9IBWqb_12object_store4path5partsNtB5_11InvalidPartNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr @_RNvXs5_NtNtCs1LivM9IBWqb_12object_store4path5partsNtB5_11InvalidPartNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr @78, ptr @_RNvYNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsh4GC5dvIChH_27influxdb3_processing_engine, ptr @_RNvYNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsh4GC5dvIChH_27influxdb3_processing_engine, ptr @_RNvYNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsh4GC5dvIChH_27influxdb3_processing_engine, ptr @_RNvYNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsh4GC5dvIChH_27influxdb3_processing_engine, ptr @_RNvYNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@80 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsh4GC5dvIChH_27influxdb3_processing_engine, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt }>, align 8
@81 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsh4GC5dvIChH_27influxdb3_processing_engine, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCs2AWtUsOyxgP_3std2io5errorNtB2_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr @80, ptr @_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source, ptr @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsh4GC5dvIChH_27influxdb3_processing_engine, ptr @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsh4GC5dvIChH_27influxdb3_processing_engine, ptr @_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5cause, ptr @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@82 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str5errorNtB4_9Utf8ErrorNtNtB8_3fmt7Display3fmt }>, align 8
@83 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt, ptr @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str5errorNtB4_9Utf8ErrorNtNtB8_3fmt7Display3fmt, ptr @82, ptr @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str5error9Utf8ErrorNtNtB8_5error5Error6sourceCsh4GC5dvIChH_27influxdb3_processing_engine, ptr @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str5error9Utf8ErrorNtNtB8_5error5Error7type_idCsh4GC5dvIChH_27influxdb3_processing_engine, ptr @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str5error9Utf8ErrorNtNtB8_5error5Error11descriptionCsh4GC5dvIChH_27influxdb3_processing_engine, ptr @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str5error9Utf8ErrorNtNtB8_5error5Error5causeCsh4GC5dvIChH_27influxdb3_processing_engine, ptr @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str5error9Utf8ErrorNtNtB8_5error5Error7provideCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@84 = private unnamed_addr constant [116 x i8] c"/home/opt-bench/.rustup/toolchains/1.97.1-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/io/impls.rs\00", align 1
@85 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @84, [16 x i8] c"s\00\00\00\00\00\00\00k\01\00\00\11\00\00\00" }>, align 8
@86 = private unnamed_addr constant [27 x i8] c"failed to fill whole buffer", align 1
@87 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @86, [9 x i8] c"\1B\00\00\00\00\00\00\00%", [7 x i8] undef }>, align 8
@88 = private unnamed_addr constant [4 x i8] c"Path", align 1
@89 = private unnamed_addr constant [3 x i8] c"raw", align 1
@90 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@91 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @90, [24 x i8] zeroinitializer }>, align 8
@92 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc4sync3ArceENtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@93 = private unnamed_addr constant [15 x i8] c"TruncatedString", align 1
@94 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@95 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@96 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@97 = private unnamed_addr constant [11 x i8] c"valid_up_to", align 1
@98 = private unnamed_addr constant [9 x i8] c"error_len", align 1
@99 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCskkCPRT7oCWw_16influxdb3_py_api5write13WriteEndpointEL_ENtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@100 = private unnamed_addr constant [16 x i8] c"WriteLogEndpoint", align 1
@101 = private unnamed_addr constant [14 x i8] c"write_endpoint", align 1
@102 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name15TruncatedStringNtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@103 = private unnamed_addr constant [16 x i8] c"LengthConstraint", align 1
@104 = private unnamed_addr constant [4 x i8] c"name", align 1
@105 = private unnamed_addr constant [8 x i8] c"BadChars", align 1
@106 = private unnamed_addr constant [15 x i8] c"bad_char_offset", align 1
@107 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"w\00\00\00\00\00\00\00k\04\00\00$\00\00\00" }>, align 8
@108 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7576425159912132170 to ptr), ptr inttoptr (i64 19745073314560191 to ptr) }>, align 8
@109 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@110 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -8258812536611094200 to ptr), ptr inttoptr (i64 -279198307899696793 to ptr) }>, align 8
@111 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7080536387315632578 to ptr), ptr inttoptr (i64 5296459061437125857 to ptr) }>, align 8
@112 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -2236892227862618217 to ptr), ptr inttoptr (i64 -1826079698350918737 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs1LivM9IBWqb_12object_store4pathNtB3_4Path5parseRNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [104 x i8], align 8               ; 13 uses
  %i.c = alloca [48 x i8], align 8                ; 17 uses
  %i.d = alloca [24 x i8], align 8                ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.f, align 8, !noundef !4 ; 16 uses
  %i.g = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1) ; 2 uses
  %i.h = sext i1 %i.g to i64
  %.sroa.7.0 = add i64 %.val1.i, %i.h             ; 3 uses
  %.sroa.0.0.idx = zext i1 %i.g to i64
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.idx ; 3 uses
  %i.i = icmp eq i64 %.sroa.7.0, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.537.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bn

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.7.0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1)
  %i.l = sext i1 %i.k to i64
  %.sroa.7.1 = add i64 %.sroa.7.0, %i.l           ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.7.1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1)
  %.sroa.038.sroa.0.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.038.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.038.sroa.4.0.copyload = load i64, ptr %.sroa.038.sroa.4.0..sroa_idx, align 8 ; 29 uses
  %.sroa.038.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.038.sroa.6.0.copyload = load i64, ptr %.sroa.038.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %.sroa.038.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.038.sroa.7.0.copyload = load i64, ptr %.sroa.038.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.038.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.038.sroa.8.0.copyload = load i64, ptr %.sroa.038.sroa.8.0..sroa_idx, align 8
  %.sroa.038.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.038.sroa.10.0.copyload = load i64, ptr %.sroa.038.sroa.10.0..sroa_idx, align 8
  %.sroa.038.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.038.sroa.12.0.copyload = load ptr, ptr %.sroa.038.sroa.12.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 18 uses
  %.sroa.038.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.038.sroa.13.0.copyload = load i64, ptr %.sroa.038.sroa.13.0..sroa_idx, align 8 ; 57 uses
  %.sroa.038.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.038.sroa.14.0.copyload = load ptr, ptr %.sroa.038.sroa.14.0..sroa_idx, align 8 ; 5 uses
  %.sroa.038.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.038.sroa.15.0.copyload = load i64, ptr %.sroa.038.sroa.15.0..sroa_idx, align 8 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = trunc nuw i64 %.sroa.038.sroa.0.0.copyload to i1
  %i.n = add nsw i64 %.sroa.038.sroa.15.0.copyload, -1 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.sroa.4149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  br i1 %i.m, label %.split.us, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.c
  %i.p = and i64 %.sroa.038.sroa.6.0.copyload, 65536
  %.sroa.9104.sroa.10121.0.extract.trunc.not = icmp eq i64 %i.p, 0
  %.sroa.9104.sroa.0.0.extract.trunc = trunc i64 %.sroa.038.sroa.6.0.copyload to i1
  br i1 %.sroa.9104.sroa.10121.0.extract.trunc.not, label %.lr.ph.i.i.peel, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.peel

.lr.ph.i.i.peel:                                  ; preds = %.preheader.i.i.preheader
  %i.q = trunc i64 %.sroa.038.sroa.6.0.copyload to i1 ; 2 uses
  %i.r = icmp eq i64 %.sroa.038.sroa.4.0.copyload, 0
  br i1 %i.r, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.peel
  %.not.i.i.i.peel.i.peel = icmp ult i64 %.sroa.038.sroa.4.0.copyload, %.sroa.038.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i.peel, label %bb.e, label %.split.i.i.i.peel.i.peel

.split.i.i.i.peel.i.peel:                         ; preds = %bb.d
  %i.s = icmp eq i64 %.sroa.038.sroa.4.0.copyload, %.sroa.038.sroa.13.0.copyload
  br i1 %i.s, label %bb.f, label %.loopexit.i

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.038.sroa.4.0.copyload
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !70, !noalias !71, !noundef !4
  %i.v = icmp sgt i8 %i.u, -65
  br i1 %i.v, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %bb.e, %.split.i.i.i.peel.i.peel, %.lr.ph.i.i.peel
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.038.sroa.4.0.copyload ; 4 uses
  %i.x = icmp samesign eq i64 %.sroa.038.sroa.4.0.copyload, %.sroa.038.sroa.13.0.copyload
  br i1 %i.x, label %.loopexit19.i.peel, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i8, ptr %i.w, align 1, !noalias !72, !noundef !4 ; 5 uses
  %i.z = icmp sgt i8 %i.y, -1
  br i1 %i.z, label %bb.h, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.peel.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.peel.i.peel: ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.ab = and i8 %i.y, 31
  %i.ac = zext nneg i8 %i.ab to i32               ; 3 uses
  %i.ad = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload, 1
  %i.ae = icmp samesign ne i64 %i.ad, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = load i8, ptr %i.aa, align 1, !noalias !72, !noundef !4
  %i.ag = shl nuw nsw i32 %i.ac, 6
  %i.ah = and i8 %i.af, 63
  %i.ai = zext nneg i8 %i.ah to i32               ; 2 uses
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = icmp samesign ugt i8 %i.y, -33
  br i1 %i.ak, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.peel.i.peel, label %bb.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.peel.i.peel
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.am = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload, 2
  %i.an = icmp samesign ne i64 %i.am, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = load i8, ptr %i.al, align 1, !noalias !72, !noundef !4
  %i.ap = shl nuw nsw i32 %i.ai, 6
  %i.aq = and i8 %i.ao, 63
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ap, %i.ar            ; 2 uses
  %i.at = shl nuw nsw i32 %i.ac, 12
  %i.au = or disjoint i32 %i.as, %i.at
  %i.av = icmp samesign ugt i8 %i.y, -17
  br i1 %i.av, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.peel.i.peel, label %bb.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.peel.i.peel
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  %i.ax = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload, 3
  %i.ay = icmp samesign ne i64 %i.ax, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = load i8, ptr %i.aw, align 1, !noalias !72, !noundef !4
  %i.ba = shl nuw nsw i32 %i.ac, 18
  %i.bb = and i32 %i.ba, 1835008
  %i.bc = shl nuw nsw i32 %i.as, 6
  %i.bd = and i8 %i.az, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.bb
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bh = zext nneg i8 %i.y to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.peel.i.peel
  %.sroa.4.0.i.ph.i.i.peel.i.peel = phi i32 [ %i.au, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.peel.i.peel ], [ %i.bg, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.peel.i.peel ], [ %i.aj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.peel.i.peel ], [ %i.bh, %bb.h ] ; 4 uses
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bi)
  br i1 %i.q, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 128
  br i1 %i.bj, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 2048
  br i1 %i.bk, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 65536
  %..i.i.peel.i.peel = select i1 %i.bl, i64 3, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.01.0.i.i.peel.i.peel = phi i64 [ 2, %bb.k ], [ %..i.i.peel.i.peel, %bb.l ], [ 1, %bb.j ]
  %i.bm = add i64 %.sroa.01.0.i.i.peel.i.peel, %.sroa.038.sroa.4.0.copyload ; 23 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i.peel = icmp ult i64 %i.bm, %.sroa.038.sroa.13.0.copyload
  br i1 %.not.i.i.i.i.peel, label %bb.o, label %.split.i.i.i.i.peel

.split.i.i.i.i.peel:                              ; preds = %bb.n
  %i.bo = icmp eq i64 %i.bm, %.sroa.038.sroa.13.0.copyload
  br i1 %i.bo, label %bb.p, label %.loopexit.i

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.bm
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !70, !noalias !73, !noundef !4
  %i.br = icmp sgt i8 %i.bq, -65
  br i1 %i.br, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %bb.o, %.split.i.i.i.i.peel, %bb.m
  %i.bs = icmp samesign eq i64 %i.bm, %.sroa.038.sroa.13.0.copyload
  br i1 %i.bs, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.peel, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.bm
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !74, !noundef !4 ; 3 uses
  %i.bv = icmp sgt i8 %i.bu, -1
  br i1 %i.bv, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.peel, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.i.peel: ; preds = %bb.q
  %i.bw = add nuw nsw i64 %i.bm, 1
  %i.bx = icmp samesign ne i64 %i.bw, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = icmp samesign ugt i8 %i.bu, -33
  br i1 %i.by, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.i.peel, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.i.peel
  %i.bz = add nuw nsw i64 %i.bm, 2
  %i.ca = icmp samesign ne i64 %i.bz, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp samesign ugt i8 %i.bu, -17
  br i1 %i.cb, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.i.peel, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.i.peel
  %i.cc = add nuw nsw i64 %i.bm, 3
  %i.cd = icmp samesign ne i64 %i.cc, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.cd)
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.peel

.loopexit19.i.peel:                               ; preds = %bb.f
  br i1 %i.q, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.peel, label %bb.r

bb.r:                                             ; preds = %.loopexit19.i.peel
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.peel

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.peel: ; preds = %bb.r, %.loopexit19.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.i.peel, %bb.q, %bb.p, %bb.i, %.preheader.i.i.preheader
  %.sroa.9104.sroa.0.4.peel = phi i1 [ true, %bb.r ], [ false, %.loopexit19.i.peel ], [ false, %bb.i ], [ false, %bb.p ], [ %.sroa.9104.sroa.0.0.extract.trunc, %.preheader.i.i.preheader ], [ false, %bb.q ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.i.peel ]
  %.sroa.51.2.peel = phi i1 [ true, %bb.r ], [ false, %.loopexit19.i.peel ], [ false, %bb.i ], [ false, %bb.p ], [ true, %.preheader.i.i.preheader ], [ false, %bb.q ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.i.peel ]
  %.sroa.41.2.peel = phi i64 [ 0, %bb.r ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.038.sroa.4.0.copyload, %bb.i ], [ %.sroa.038.sroa.13.0.copyload, %bb.p ], [ 0, %.preheader.i.i.preheader ], [ %i.bm, %bb.q ], [ %i.bm, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.i.peel ], [ %i.bm, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.i.peel ], [ %i.bm, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.i.peel ]
  %.sroa.5.5.peel = phi i64 [ %.sroa.038.sroa.13.0.copyload, %bb.r ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.038.sroa.4.0.copyload, %bb.i ], [ %.sroa.038.sroa.13.0.copyload, %bb.p ], [ %.sroa.038.sroa.4.0.copyload, %.preheader.i.i.preheader ], [ %i.bm, %bb.q ], [ %i.bm, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.i.peel ], [ %i.bm, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.i.peel ], [ %i.bm, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.i.peel ]
  %.sroa.7.1.pn.peel = phi i64 [ %.sroa.7.1, %bb.r ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.038.sroa.4.0.copyload, %bb.i ], [ %.sroa.038.sroa.13.0.copyload, %bb.p ], [ %.sroa.7.1, %.preheader.i.i.preheader ], [ %i.bm, %bb.q ], [ %i.bm, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.i.peel ], [ %i.bm, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.i.peel ], [ %i.bm, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.i.peel ] ; 2 uses
  %i.ce = icmp eq i64 %.sroa.7.1.pn.peel, 0
  br i1 %i.ce, label %.split285.us, label %bb.s

bb.s:                                             ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtNtCs1LivM9IBWqb_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.038.sroa.12.0.copyload, i64 noundef %.sroa.7.1.pn.peel)
  %i.cf = load i64, ptr %i.c, align 8, !range !5, !noundef !4
  %.not77.peel = icmp eq i64 %i.cf, -1
  br i1 %.not77.peel, label %bb.t, label %.split287.us

bb.t:                                             ; preds = %bb.s
  %.sroa.0148.0.copyload.peel = load ptr, ptr %i.o, align 8 ; 2 uses
  %i.cg = load <2 x i64>, ptr %.sroa.4149.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %.sroa.0148.0.copyload.peel, ptr %i.d, align 8
  store <2 x i64> %i.cg, ptr %.sroa.4161.0..sroa_idx, align 8
  %i.ch = icmp eq ptr %.sroa.0148.0.copyload.peel, inttoptr (i64 -1 to ptr)
  br i1 %i.ch, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit.peel, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.v unwind label %.split289.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  %.val.i.i.i.i.peel = load i64, ptr %i.d, align 8, !alias.scope !75 ; 2 uses
  %i.ci = icmp eq i64 %.val.i.i.i.i.peel, 0
  br i1 %i.ci, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit.peel, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val1.i.i.i.i.peel = load ptr, ptr %.sroa.4161.0..sroa_idx, align 8, !alias.scope !76, !nonnull !4, !noundef !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.peel, i64 noundef %.val.i.i.i.i.peel, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !77
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit.peel

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit.peel: ; preds = %bb.w, %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.sroa.51.2.peel, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread, label %.preheader.i.i

.split.us:                                        ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.sroa.14.0.copyload) ]
  %i.cj = sub i64 %.sroa.038.sroa.15.0.copyload, %.sroa.038.sroa.6.0.copyload
  %umax49.i94.us = tail call i64 @llvm.umax.i64(i64 %.sroa.038.sroa.4.0.copyload, i64 range(i64 0, -9223372036854775808) %.sroa.038.sroa.15.0.copyload)
  %i.ck = add i64 %.sroa.038.sroa.4.0.copyload, -1 ; 2 uses
  %.first_iter = icmp ult i64 %i.ck, %.sroa.038.sroa.15.0.copyload
  %.first_iter.fr = freeze i1 %.first_iter
  %.not217.us = icmp eq i64 %.sroa.038.sroa.4.0.copyload, 0
  %invariant.op = sub i64 1, %.sroa.038.sroa.4.0.copyload
  %exitcond.not.i96.us411.not = icmp ult i64 %.sroa.038.sroa.4.0.copyload, %.sroa.038.sroa.15.0.copyload
  %invariant.op495 = sub i64 1, %.sroa.038.sroa.4.0.copyload
  %.not217.us414 = icmp eq i64 %.sroa.038.sroa.4.0.copyload, 0
  br label %bb.x

bb.x:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit.us, %.split.us
  %.sroa.19.0262.us = phi i64 [ %.sroa.038.sroa.8.0.copyload, %.split.us ], [ %.sroa.19.2.us, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit.us ] ; 3 uses
  %.sroa.31108.0261.us = phi i64 [ %.sroa.038.sroa.10.0.copyload, %.split.us ], [ %.sroa.31108.2.us, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit.us ] ; 3 uses
  %.sroa.41.0260.us = phi i64 [ 0, %.split.us ], [ %.sroa.41.2.us, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit.us ] ; 7 uses
  %i.cl = icmp eq i64 %.sroa.31108.0261.us, -1
  %i.cm = add i64 %.sroa.19.0262.us, %i.n         ; 3 uses
  %i.cn = icmp ult i64 %i.cm, %.sroa.038.sroa.13.0.copyload ; 2 uses
  br i1 %i.cl, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  br i1 %i.cn, label %.lr.ph.i.us, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.us

.lr.ph.i.us:                                      ; preds = %bb.y, %.sink.split.i85.us
  %i.co = phi i64 [ %.sink.i86.us, %.sink.split.i85.us ], [ %.sroa.31108.0261.us, %bb.y ] ; 3 uses
  %i.cp = phi i64 [ %i.ds, %.sink.split.i85.us ], [ %i.cm, %bb.y ]
  %i.cq = phi i64 [ %.ph71.i.us, %.sink.split.i85.us ], [ %.sroa.19.0262.us, %bb.y ] ; 8 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.cp
  %i.cs = load i8, ptr %i.cr, align 1, !alias.scope !78, !noundef !4
  %i.ct = and i8 %i.cs, 63
  %i.cu = zext nneg i8 %i.ct to i64
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %.sroa.038.sroa.7.0.copyload
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.us
  %.sroa.0.0.i.i.us = call i64 @llvm.umax.i64(i64 %i.co, i64 %.sroa.038.sroa.4.0.copyload) ; 4 uses
  %umax49.i.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us, i64 range(i64 0, -9223372036854775808) %.sroa.038.sroa.15.0.copyload)
  %exitcond.not.i.us406.not = icmp ult i64 %.sroa.0.0.i.i.us, %.sroa.038.sroa.15.0.copyload
  br i1 %exitcond.not.i.us406.not, label %.lr.ph, label %.preheader218.us.preheader

bb.aa:                                            ; preds = %bb.ab
  %i.cy = add nuw i64 %.sroa.02.0.i.us407, 1      ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.cy, %umax49.i.us
  br i1 %exitcond.not.i.us, label %.preheader218.us.preheader, label %.lr.ph

.preheader218.us.preheader:                       ; preds = %bb.aa, %bb.z
  %i.cz = icmp ult i64 %i.co, %.sroa.038.sroa.4.0.copyload
  br i1 %i.cz, label %.lr.ph409, label %.preheader218.us.preheader._crit_edge

.lr.ph:                                           ; preds = %bb.z, %bb.aa
  %.sroa.02.0.i.us407 = phi i64 [ %i.cy, %bb.aa ], [ %.sroa.0.0.i.i.us, %bb.z ] ; 4 uses
  %i.da = add i64 %.sroa.02.0.i.us407, %i.cq      ; 2 uses
  %i.db = icmp ult i64 %i.da, %.sroa.038.sroa.13.0.copyload
  br i1 %i.db, label %bb.ab, label %.split266.us

bb.ab:                                            ; preds = %.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload, i64 %.sroa.02.0.i.us407
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !79, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.da
  %i.df = load i8, ptr %i.de, align 1, !alias.scope !78, !noundef !4
  %.not21.i.us = icmp eq i8 %i.dd, %i.df
  br i1 %.not21.i.us, label %bb.aa, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.reass.reass = add i64 %i.cq, %invariant.op
  %i.dg = add i64 %.reass.reass, %.sroa.02.0.i.us407
  br label %.sink.split.i85.us

.preheader218.us:                                 ; preds = %bb.ae
  %i.dh = icmp ult i64 %i.co, %i.di
  br i1 %i.dh, label %.lr.ph409, label %.preheader218.us.preheader._crit_edge

.lr.ph409:                                        ; preds = %.preheader218.us.preheader, %.preheader218.us
  %.sroa.2.0.i.us408 = phi i64 [ %i.di, %.preheader218.us ], [ %.sroa.038.sroa.4.0.copyload, %.preheader218.us.preheader ]
  %i.di = add i64 %.sroa.2.0.i.us408, -1          ; 6 uses
  %i.dj = icmp ult i64 %i.di, %.sroa.038.sroa.15.0.copyload
  br i1 %i.dj, label %bb.ad, label %.split269.us

bb.ad:                                            ; preds = %.lr.ph409
  %i.dk = add i64 %i.di, %i.cq                    ; 3 uses
  %i.dl = icmp ult i64 %i.dk, %.sroa.038.sroa.13.0.copyload
  br i1 %i.dl, label %bb.ae, label %.split272.us

bb.ae:                                            ; preds = %bb.ad
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload, i64 %i.di
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !79, !noundef !4
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.dk
  %i.dp = load i8, ptr %i.do, align 1, !alias.scope !78, !noundef !4
  %.not.i87.us = icmp eq i8 %i.dn, %i.dp
  br i1 %.not.i87.us, label %.preheader218.us, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dq = add i64 %i.cq, %.sroa.038.sroa.6.0.copyload
  br label %.sink.split.i85.us

bb.ag:                                            ; preds = %.lr.ph.i.us
  %i.dr = add i64 %i.cq, %.sroa.038.sroa.15.0.copyload
  br label %.sink.split.i85.us

.sink.split.i85.us:                               ; preds = %bb.ag, %bb.af, %bb.ac
  %.sink.i86.us = phi i64 [ %i.cj, %bb.af ], [ 0, %bb.ac ], [ 0, %bb.ag ] ; 2 uses
  %.ph71.i.us = phi i64 [ %i.dq, %bb.af ], [ %i.dg, %bb.ac ], [ %i.dr, %bb.ag ] ; 2 uses
  %i.ds = add i64 %.ph71.i.us, %i.n               ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %.sroa.038.sroa.13.0.copyload
  br i1 %i.dt, label %.lr.ph.i.us, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.us

.preheader218.us.preheader._crit_edge:            ; preds = %.preheader218.us.preheader, %.preheader218.us
  %i.du = add i64 %i.cq, %.sroa.038.sroa.15.0.copyload ; 2 uses
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.us

bb.ah:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  br i1 %i.cn, label %.lr.ph.i91.us, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.us

.lr.ph.i91.us:                                    ; preds = %bb.ah, %bb.ao
  %i.dv = phi i64 [ %i.eu, %bb.ao ], [ %i.cm, %bb.ah ]
  %i.dw = phi i64 [ %i.et, %bb.ao ], [ %.sroa.19.0262.us, %bb.ah ] ; 8 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.dv
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !80, !noundef !4
  %i.dz = and i8 %i.dy, 63
  %i.ea = zext nneg i8 %i.dz to i64
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = and i64 %i.eb, %.sroa.038.sroa.7.0.copyload
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.an, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i91.us
  br i1 %exitcond.not.i96.us411.not, label %bb.ak, label %.preheader.us.preheader

.preheader:                                       ; preds = %bb.al
  %i.ee = add nuw i64 %.sroa.02.0.i95.us415, 1    ; 2 uses
  %exitcond.not.i96.us = icmp eq i64 %i.ee, %umax49.i94.us
  br i1 %exitcond.not.i96.us, label %.preheader.us.preheader, label %bb.ak

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.first_iter.fr, label %.preheader.us.us.preheader, label %.lr.ph416.a

.preheader.us.us.preheader:                       ; preds = %.preheader.us.preheader
  br i1 %.not217.us414, label %.preheader.us.preheader._crit_edge, label %.lr.ph413

.preheader.us.preheader.a:                        ; preds = %bb.ai
  %.not217.us.us = icmp eq i64 %2, 0
  br i1 %.not217.us.us, label %.preheader.us.preheader._crit_edge, label %.lr.ph413

.lr.ph413:                                        ; preds = %.preheader.us.us.preheader, %.preheader.us.preheader.a
  %.sroa.02.0.i95.us412 = phi i64 [ %2, %.preheader.us.preheader.a ], [ %.sroa.038.sroa.4.0.copyload, %.preheader.us.us.preheader ]
  %2 = add i64 %.sroa.02.0.i95.us412, -1          ; 4 uses
  %i.ef = add i64 %2, %i.dw                       ; 3 uses
  %i.eg = icmp ult i64 %i.ef, %.sroa.038.sroa.13.0.copyload
  br i1 %i.eg, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph413
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload, i64 %2
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !81, !noundef !4
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.ef
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !80, !noundef !4
  %.not21.i98.us.a = icmp eq i8 %i.ei, %i.ek
  br i1 %.not21.i98.us.a, label %.preheader.us.preheader.a, label %.preheader.us

bb.aj:                                            ; preds = %.lr.ph413
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ef, i64 noundef range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #35, !noalias !82
  unreachable

.preheader.us:                                    ; preds = %bb.ai
  %3 = add i64 %.sroa.038.sroa.6.0.copyload, %i.dw
  br label %bb.ao

.lr.ph416.a:                                      ; preds = %.preheader.us.preheader
  br i1 %.not217.us, label %.preheader.us.preheader._crit_edge, label %.split279.us

bb.ak:                                            ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i95.us415 = phi i64 [ %i.ee, %.preheader ], [ %.sroa.038.sroa.4.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.el = add i64 %.sroa.02.0.i95.us415, %i.dw    ; 2 uses
  %i.em = icmp ult i64 %i.el, %.sroa.038.sroa.13.0.copyload
  br i1 %i.em, label %bb.al, label %.split275.us

bb.al:                                            ; preds = %bb.ak
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload, i64 %.sroa.02.0.i95.us415
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !81, !noundef !4
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.el
  %i.eq = load i8, ptr %i.ep, align 1, !alias.scope !80, !noundef !4
  %.not.i100.us = icmp eq i8 %i.eo, %i.eq
  br i1 %.not.i100.us, label %.preheader, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.reass380.reass = add i64 %i.dw, %invariant.op495
  %i.er = add i64 %.reass380.reass, %.sroa.02.0.i95.us415
  br label %bb.ao

.split279.us:                                     ; preds = %.lr.ph416.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ck, i64 noundef range(i64 0, -9223372036854775808) %.sroa.038.sroa.15.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35, !noalias !82
  unreachable

bb.an:                                            ; preds = %.lr.ph.i91.us
  %i.es = add i64 %i.dw, %.sroa.038.sroa.15.0.copyload
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.preheader.us, %bb.am
  %i.et = phi i64 [ %i.er, %bb.am ], [ %i.es, %bb.an ], [ %3, %.preheader.us ] ; 2 uses
  %i.eu = add i64 %i.et, %i.n                     ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %.sroa.038.sroa.13.0.copyload
  br i1 %i.ev, label %.lr.ph.i91.us, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.us

.preheader.us.preheader._crit_edge:               ; preds = %.preheader.us.us.preheader, %.preheader.us.preheader.a, %.lr.ph416.a
  %i.ew = add i64 %i.dw, %.sroa.038.sroa.15.0.copyload ; 2 uses
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.us

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.us: ; preds = %.sink.split.i85.us, %bb.ao, %.preheader.us.preheader._crit_edge, %bb.ah, %.preheader218.us.preheader._crit_edge, %bb.y
  %.sroa.51.2.us = phi i1 [ false, %.preheader218.us.preheader._crit_edge ], [ true, %bb.y ], [ true, %bb.ao ], [ true, %bb.ah ], [ false, %.preheader.us.preheader._crit_edge ], [ true, %.sink.split.i85.us ]
  %.sroa.41.2.us = phi i64 [ %i.du, %.preheader218.us.preheader._crit_edge ], [ %.sroa.41.0260.us, %bb.y ], [ %.sroa.41.0260.us, %bb.ao ], [ %.sroa.41.0260.us, %bb.ah ], [ %i.ew, %.preheader.us.preheader._crit_edge ], [ %.sroa.41.0260.us, %.sink.split.i85.us ]
  %.sroa.31108.2.us = phi i64 [ 0, %.preheader218.us.preheader._crit_edge ], [ %.sroa.31108.0261.us, %bb.y ], [ -1, %bb.ao ], [ -1, %bb.ah ], [ -1, %.preheader.us.preheader._crit_edge ], [ %.sink.i86.us, %.sink.split.i85.us ]
  %.sroa.19.2.us = phi i64 [ %i.du, %.preheader218.us.preheader._crit_edge ], [ %.sroa.038.sroa.13.0.copyload, %bb.y ], [ %.sroa.038.sroa.13.0.copyload, %bb.ao ], [ %.sroa.038.sroa.13.0.copyload, %bb.ah ], [ %i.ew, %.preheader.us.preheader._crit_edge ], [ %.sroa.038.sroa.13.0.copyload, %.sink.split.i85.us ]
  %.sroa.7.1.pn.us = phi i64 [ %i.cq, %.preheader218.us.preheader._crit_edge ], [ %.sroa.7.1, %bb.y ], [ %.sroa.7.1, %bb.ao ], [ %.sroa.7.1, %bb.ah ], [ %i.dw, %.preheader.us.preheader._crit_edge ], [ %.sroa.7.1, %.sink.split.i85.us ] ; 2 uses
  %i.ex = icmp eq i64 %.sroa.7.1.pn.us, %.sroa.41.0260.us
  br i1 %i.ex, label %.split285.us, label %bb.ap

bb.ap:                                            ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.us
  %.sroa.4.1.i.us = sub nuw i64 %.sroa.7.1.pn.us, %.sroa.41.0260.us
  %.sroa.0.1.i.us = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.41.0260.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtNtCs1LivM9IBWqb_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.us, i64 noundef %.sroa.4.1.i.us)
  %i.ey = load i64, ptr %i.c, align 8, !range !5, !noundef !4
  %.not77.us = icmp eq i64 %i.ey, -1
  br i1 %.not77.us, label %bb.aq, label %.split287.us

bb.aq:                                            ; preds = %bb.ap
  %.sroa.0148.0.copyload.us = load ptr, ptr %i.o, align 8 ; 2 uses
  %i.ez = load <2 x i64>, ptr %.sroa.4149.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %.sroa.0148.0.copyload.us, ptr %i.d, align 8
  store <2 x i64> %i.ez, ptr %.sroa.4161.0..sroa_idx, align 8
  %i.fa = icmp eq ptr %.sroa.0148.0.copyload.us, inttoptr (i64 -1 to ptr)
  br i1 %i.fa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit.us, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.as unwind label %.split289.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  %.val.i.i.i.i.us = load i64, ptr %i.d, align 8, !alias.scope !75 ; 2 uses
  %i.fb = icmp eq i64 %.val.i.i.i.i.us, 0
  br i1 %i.fb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit.us, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.val1.i.i.i.i.us = load ptr, ptr %.sroa.4161.0..sroa_idx, align 8, !alias.scope !76, !nonnull !4, !noundef !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.us, i64 noundef %.val.i.i.i.i.us, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !77
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit.us

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit.us: ; preds = %bb.at, %bb.as, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.sroa.51.2.us, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread, label %bb.x

.preheader.i.i:                                   ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit.peel, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit
  %.sroa.5.0263 = phi i64 [ %.sroa.5.5, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit ], [ %.sroa.5.5.peel, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit.peel ] ; 15 uses
  %.sroa.41.0260 = phi i64 [ %.sroa.41.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit ], [ %.sroa.41.2.peel, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit.peel ] ; 4 uses
  %.sroa.9104.sroa.0.0258 = phi i1 [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit ], [ %.sroa.9104.sroa.0.4.peel, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit.peel ] ; 2 uses
  %i.fc = icmp eq i64 %.sroa.5.0263, 0
  br i1 %i.fc, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %.preheader.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.sroa.5.0263, %.sroa.038.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i, label %bb.av, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.au
  %i.fd = icmp eq i64 %.sroa.5.0263, %.sroa.038.sroa.13.0.copyload
  br i1 %i.fd, label %bb.aw, label %.loopexit.i

bb.av:                                            ; preds = %bb.au
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.5.0263
  %i.ff = load i8, ptr %i.fe, align 1, !alias.scope !70, !noalias !71, !noundef !4
  %i.fg = icmp sgt i8 %i.ff, -65
  br i1 %i.fg, label %bb.aw, label %.loopexit.i

bb.aw:                                            ; preds = %bb.av, %.split.i.i.i.peel.i, %.preheader.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.5.0263 ; 4 uses
  %i.fi = icmp samesign eq i64 %.sroa.5.0263, %.sroa.038.sroa.13.0.copyload
  br i1 %i.fi, label %.loopexit19.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fj = load i8, ptr %i.fh, align 1, !noalias !72, !noundef !4 ; 5 uses
  %i.fk = icmp sgt i8 %i.fj, -1
  br i1 %i.fk, label %bb.ay, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.peel.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.peel.i: ; preds = %bb.ax
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fm = and i8 %i.fj, 31
  %i.fn = zext nneg i8 %i.fm to i32               ; 3 uses
  %i.fo = add nuw nsw i64 %.sroa.5.0263, 1
  %i.fp = icmp samesign ne i64 %i.fo, %.sroa.038.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.fp)
  %i.fq = load i8, ptr %i.fl, align 1, !noalias !72, !noundef !4
  %i.fr = shl nuw nsw i32 %i.fn, 6
  %i.fs = and i8 %i.fq, 63
  %i.ft = zext nneg i8 %i.fs to i32               ; 2 uses
  %i.fu = or disjoint i32 %i.fr, %i.ft
  %i.fv = icmp samesign ugt i8 %i.fj, -33
  br i1 %i.fv, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.peel.i, label %bb.az

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.peel.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  %i.fx = add nuw nsw i64 %.sroa.5.0263, 2
  %i.fy = icmp samesign ne i64 %i.fx, %.sroa.038.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.fy)
  %i.fz = load i8, ptr %i.fw, align 1, !noalias !72, !noundef !4
  %i.ga = shl nuw nsw i32 %i.ft, 6
  %i.gb = and i8 %i.fz, 63
  %i.gc = zext nneg i8 %i.gb to i32
  %i.gd = or disjoint i32 %i.ga, %i.gc            ; 2 uses
  %i.ge = shl nuw nsw i32 %i.fn, 12
  %i.gf = or disjoint i32 %i.gd, %i.ge
  %i.gg = icmp samesign ugt i8 %i.fj, -17
  br i1 %i.gg, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.peel.i, label %bb.az

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.peel.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fh, i64 3
  %i.gi = add nuw nsw i64 %.sroa.5.0263, 3
  %i.gj = icmp samesign ne i64 %i.gi, %.sroa.038.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.gj)
  %i.gk = load i8, ptr %i.gh, align 1, !noalias !72, !noundef !4
  %i.gl = shl nuw nsw i32 %i.fn, 18
  %i.gm = and i32 %i.gl, 1835008
  %i.gn = shl nuw nsw i32 %i.gd, 6
  %i.go = and i8 %i.gk, 63
  %i.gp = zext nneg i8 %i.go to i32
  %i.gq = or disjoint i32 %i.gn, %i.gp
  %i.gr = or disjoint i32 %i.gq, %i.gm
  br label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gs = zext nneg i8 %i.fj to i32
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.gf, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.peel.i ], [ %i.gr, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.peel.i ], [ %i.fu, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.peel.i ], [ %i.gs, %bb.ay ] ; 4 uses
  %i.gt = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.gt)
  br i1 %.sroa.9104.sroa.0.0258, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gu = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.gu, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.gv, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.gw, i64 3, i64 4
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.bb ], [ %..i.i.peel.i, %bb.bc ], [ 1, %bb.ba ]
  %i.gx = add i64 %.sroa.01.0.i.i.peel.i, %.sroa.5.0263 ; 23 uses
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.not.i.i.i.i = icmp ult i64 %i.gx, %.sroa.038.sroa.13.0.copyload
  br i1 %.not.i.i.i.i, label %bb.bf, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.be
  %i.gz = icmp eq i64 %i.gx, %.sroa.038.sroa.13.0.copyload
  br i1 %i.gz, label %bb.bg, label %.loopexit.i

bb.bf:                                            ; preds = %bb.be
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.gx
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !70, !noalias !73, !noundef !4
  %i.hc = icmp sgt i8 %i.hb, -65
  br i1 %i.hc, label %bb.bg, label %.loopexit.i

bb.bg:                                            ; preds = %bb.bf, %.split.i.i.i.i, %bb.bd
  %i.hd = icmp samesign eq i64 %i.gx, %.sroa.038.sroa.13.0.copyload
  br i1 %i.hd, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.gx
  %i.hf = load i8, ptr %i.he, align 1, !noalias !74, !noundef !4 ; 3 uses
  %i.hg = icmp sgt i8 %i.hf, -1
  br i1 %i.hg, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.i: ; preds = %bb.bh
  %i.hh = add nuw nsw i64 %i.gx, 1
  %i.hi = icmp samesign ne i64 %i.hh, %.sroa.038.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.hi)
  %i.hj = icmp samesign ugt i8 %i.hf, -33
  br i1 %i.hj, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.i
  %i.hk = add nuw nsw i64 %i.gx, 2
  %i.hl = icmp samesign ne i64 %i.hk, %.sroa.038.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.hl)
  %i.hm = icmp samesign ugt i8 %i.hf, -17
  br i1 %i.hm, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.i
  %i.hn = add nuw nsw i64 %i.gx, 3
  %i.ho = icmp samesign ne i64 %i.hn, %.sroa.038.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.ho)
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit

.loopexit.i:                                      ; preds = %bb.bf, %.split.i.i.i.i, %bb.av, %.split.i.i.i.peel.i, %bb.o, %.split.i.i.i.i.peel, %bb.e, %.split.i.i.i.peel.i.peel
  %.lcssa12.i = phi i64 [ %.sroa.038.sroa.4.0.copyload, %.split.i.i.i.peel.i.peel ], [ %.sroa.038.sroa.4.0.copyload, %bb.e ], [ %i.bm, %.split.i.i.i.i.peel ], [ %i.bm, %bb.o ], [ %i.gx, %bb.bf ], [ %i.gx, %.split.i.i.i.i ], [ %.sroa.5.0263, %bb.av ], [ %.sroa.5.0263, %.split.i.i.i.peel.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.038.sroa.12.0.copyload, i64 noundef %.sroa.038.sroa.13.0.copyload, i64 noundef %.lcssa12.i, i64 noundef %.sroa.038.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #35, !noalias !73
  unreachable

.loopexit19.i:                                    ; preds = %bb.aw
  br i1 %.sroa.9104.sroa.0.0258, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit, label %bb.bi

.split275.us:                                     ; preds = %bb.ak
  %i.hp = add i64 %i.dw, %.sroa.038.sroa.4.0.copyload
  %umax.i97 = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload, i64 %i.hp)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i97, i64 noundef range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #35, !noalias !82
  unreachable

.split269.us:                                     ; preds = %.lr.ph409
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.di, i64 noundef range(i64 0, -9223372036854775808) %.sroa.038.sroa.15.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35, !noalias !83
  unreachable

.split272.us:                                     ; preds = %bb.ad
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dk, i64 noundef range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #35, !noalias !83
  unreachable

.split266.us:                                     ; preds = %.lr.ph
  %i.hq = add i64 %i.cq, %.sroa.0.0.i.i.us
  %umax.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload, i64 %i.hq)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #35, !noalias !83
  unreachable

bb.bi:                                            ; preds = %.loopexit19.i
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.i, %bb.bh, %bb.bg, %bb.az, %.loopexit19.i, %bb.bi
  %.sroa.51.2 = phi i1 [ true, %bb.bi ], [ false, %.loopexit19.i ], [ false, %bb.az ], [ false, %bb.bg ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.i ], [ false, %bb.bh ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.i ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.i ]
  %.sroa.41.2 = phi i64 [ %.sroa.41.0260, %bb.bi ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0263, %bb.az ], [ %.sroa.038.sroa.13.0.copyload, %bb.bg ], [ %i.gx, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.i ], [ %i.gx, %bb.bh ], [ %i.gx, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.i ], [ %i.gx, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.i ]
  %.sroa.5.5 = phi i64 [ %.sroa.038.sroa.13.0.copyload, %bb.bi ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0263, %bb.az ], [ %.sroa.038.sroa.13.0.copyload, %bb.bg ], [ %i.gx, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.i ], [ %i.gx, %bb.bh ], [ %i.gx, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.i ], [ %i.gx, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.i ]
  %.sroa.7.1.pn = phi i64 [ %.sroa.7.1, %bb.bi ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0263, %bb.az ], [ %.sroa.038.sroa.13.0.copyload, %bb.bg ], [ %i.gx, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit12.i.i.i.i ], [ %i.gx, %bb.bh ], [ %i.gx, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit16.i.i.i.i ], [ %i.gx, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit14.i.i.i.i ] ; 2 uses
  %i.hr = icmp eq i64 %.sroa.7.1.pn, %.sroa.41.0260
  br i1 %i.hr, label %.split285.us, label %bb.bq

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit.peel, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit.us
  %.not.i = icmp slt i64 %.sroa.7.1, 0
  br i1 %.not.i, label %bb.bl, label %bb.bj, !prof !6

bb.bj:                                            ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread
  %i.hs = icmp eq i64 %.sroa.7.1, 0
  br i1 %i.hs, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread200, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !84
  %i.ht = call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.1, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !84 ; 3 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread, %bb.bk
  %.sroa.4.0.ph = phi i64 [ 1, %bb.bk ], [ 0, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread ]
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %.sroa.7.1) #35
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread200: ; preds = %bb.bj, %bb.bm
  %i.hv = phi ptr [ %i.ht, %bb.bm ], [ inttoptr (i64 1 to ptr), %bb.bj ]
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.1, ptr %i.hw, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.hv, ptr %.sroa.455.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.1, ptr %.sroa.556.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ht, ptr nonnull align 1 %.sroa.0.0, i64 %.sroa.7.1, i1 false)
  br label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread200

bb.bn:                                            ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsh4GC5dvIChH_27influxdb3_processing_engine.exit83.thread211, %_RNCINvMNtCs1LivM9IBWqb_12object_store4pathNtB5_4Path5parseRNtNtCscdodAO9FK5_5alloc6string6StringE0Csh4GC5dvIChH_27influxdb3_processing_engine.exit, %bb.b, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread200
  ret void

.split285.us:                                     ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.peel, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit.us
  %.not.i81 = icmp slt i64 %.val1.i, 0
  br i1 %.not.i81, label %bb.br, label %bb.bo, !prof !6

bb.bo:                                            ; preds = %.split285.us
  %i.hx = icmp eq i64 %.val1.i, 0
  br i1 %i.hx, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsh4GC5dvIChH_27influxdb3_processing_engine.exit83.thread211, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !85
  %i.hy = call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !85 ; 3 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %bb.br, label %bb.bs

bb.bq:                                            ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsh4GC5dvIChH_27influxdb3_processing_engine.exit
  %.sroa.4.1.i = sub nuw i64 %.sroa.7.1.pn, %.sroa.41.0260
  %.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.41.0260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtNtCs1LivM9IBWqb_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i, i64 noundef %.sroa.4.1.i)
  %i.ia = load i64, ptr %i.c, align 8, !range !5, !noundef !4
  %.not77 = icmp eq i64 %i.ia, -1
  br i1 %.not77, label %bb.ca, label %.split287.us

bb.br:                                            ; preds = %.split285.us, %bb.bp
  %.sroa.4134.0.ph = phi i64 [ 1, %bb.bp ], [ 0, %.split285.us ]
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4134.0.ph, i64 %.val1.i) #35
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsh4GC5dvIChH_27influxdb3_processing_engine.exit83.thread211: ; preds = %bb.bo, %bb.bs
  %i.ib = phi ptr [ %i.hy, %bb.bs ], [ inttoptr (i64 1 to ptr), %bb.bo ]
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val1.i, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ib, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val1.i, ptr %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  br label %bb.bn

bb.bs:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hy, ptr nonnull align 1 %.val.i, i64 %.val1.i, i1 false)
  br label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsh4GC5dvIChH_27influxdb3_processing_engine.exit83.thread211

.split287.us:                                     ; preds = %bb.s, %bb.bq, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %.not.i.i84 = icmp slt i64 %.val1.i, 0
  br i1 %.not.i.i84, label %bb.bw, label %bb.bt, !prof !6

bb.bt:                                            ; preds = %.split287.us
  %i.ic = icmp eq i64 %.val1.i, 0
  br i1 %i.ic, label %_RNCINvMNtCs1LivM9IBWqb_12object_store4pathNtB5_4Path5parseRNtNtCscdodAO9FK5_5alloc6string6StringE0Csh4GC5dvIChH_27influxdb3_processing_engine.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !88
  %i.id = call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !88 ; 3 uses
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %bb.bw, label %bb.bx

bb.bv:                                            ; preds = %bb.bw
  %i.if = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #36
          to label %common.resume unwind label %bb.bz, !noalias !89

bb.bw:                                            ; preds = %bb.bu, %.split287.us
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.bu ], [ 0, %.split287.us ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.val1.i) #35
          to label %bb.by unwind label %bb.bv, !noalias !90

bb.bx:                                            ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.id, ptr nonnull readonly align 1 %.val.i, i64 %.val1.i, i1 false), !noalias !91
  br label %_RNCINvMNtCs1LivM9IBWqb_12object_store4pathNtB5_4Path5parseRNtNtCscdodAO9FK5_5alloc6string6StringE0Csh4GC5dvIChH_27influxdb3_processing_engine.exit

bb.by:                                            ; preds = %bb.bw
  unreachable

bb.bz:                                            ; preds = %bb.bv
  %i.ig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37, !noalias !89
  unreachable

common.resume:                                    ; preds = %.split289.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cc, %bb.bv
  %common.resume.op = phi { ptr, i32 } [ %i.if, %bb.bv ], [ %lpad.loopexit.split-lp, %bb.cc ], [ %lpad.loopexit.split-lp, %.split289.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RNCINvMNtCs1LivM9IBWqb_12object_store4pathNtB5_4Path5parseRNtNtCscdodAO9FK5_5alloc6string6StringE0Csh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %bb.bt, %bb.bx
  %i.ih = phi ptr [ %i.id, %bb.bx ], [ inttoptr (i64 1 to ptr), %bb.bt ]
  %.sroa.7.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !alias.scope !91
  %i.ii = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.571.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.ii, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %.val1.i, ptr %0, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ih, ptr %.sroa.470.0..sroa_idx, align 8
  %.sroa.470.sroa.4.0..sroa.470.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val1.i, ptr %.sroa.470.sroa.4.0..sroa.470.0..sroa_idx.sroa_idx, align 8
  %.sroa.470.sroa.5.0..sroa.470.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.sroa.0.0.copyload, ptr %.sroa.470.sroa.5.0..sroa.470.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bn

bb.ca:                                            ; preds = %bb.bq
  %.sroa.0148.0.copyload = load ptr, ptr %i.o, align 8 ; 2 uses
  %i.ij = load <2 x i64>, ptr %.sroa.4149.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %.sroa.0148.0.copyload, ptr %i.d, align 8
  store <2 x i64> %i.ij, ptr %.sroa.4161.0..sroa_idx, align 8
  %i.ik = icmp eq ptr %.sroa.0148.0.copyload, inttoptr (i64 -1 to ptr)
  br i1 %i.ik, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsh4GC5dvIChH_27influxdb3_processing_engine.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.cd unwind label %.split289.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split289.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ar, %bb.cb, %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !75 ; 2 uses
  %i.il = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.il, label %common.resume, label %bb.cc

bb.cc:                                            ; preds = %.split289.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val3.i.i.i.i = load ptr, ptr %.sroa.4161.0..sroa_idx, align 8, !alias.scope !76, !nonnull !4, !noundef !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !92
  br label %common.resume

end_hunk_0
