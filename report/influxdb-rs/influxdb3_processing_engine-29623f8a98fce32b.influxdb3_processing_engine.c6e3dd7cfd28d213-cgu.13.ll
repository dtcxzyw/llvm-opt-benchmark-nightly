Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_processing_engine-29623f8a98fce32b.influxdb3_processing_engine.c6e3dd7cfd28d213-cgu.13?download=true
inline.NumInlined: 779
inline.NumDeleted: 389
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [136 x i8] c"/home/opt-bench/.rustup/toolchains/1.97.1-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/collections/btree/navigate.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\87\00\00\00\00\00\00\00N\00\00\005\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\87\00\00\00\00\00\00\00\C6\00\00\00'\00\00\00" }>, align 8
@3 = private unnamed_addr constant [40 x i8] c"mpsc bounded channel requires buffer > 0", align 1
@4 = private unnamed_addr constant [131 x i8] c"/home/opt-bench/.rustup/toolchains/1.97.1-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/collections/btree/map.rs\00", align 1
@5 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\82\00\00\00\00\00\00\00\F9\00\00\00,\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\82\00\00\00\00\00\00\00\0D\01\00\00?\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\87\00\00\00\00\00\00\00O\00\00\00/\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\87\00\00\00\00\00\00\00X\02\00\000\00\00\00" }>, align 8
@10 = private unnamed_addr constant [28 x i8] c"MissingProcessWritesFunction", align 1
@11 = private unnamed_addr constant [29 x i8] c"MissingProcessRequestFunction", align 1
@12 = private unnamed_addr constant [35 x i8] c"MissingProcessScheduledCallFunction", align 1
@13 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtCsaIKnL9StOw_6anyhow5ErrorNtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@14 = private unnamed_addr constant [11 x i8] c"PluginError", align 1
@_RNvNvNtCs3L39Jvi82fL_5ahash12random_state15get_fixed_seeds5SEEDS = external global { { { { ptr } } }, {} }
@15 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@16 = private unnamed_addr constant [10 x i8] c"ApplyError", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\82\00\00\00\00\00\00\002\01\00\00.\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@19 = private unnamed_addr constant [10 x i8] c"BufferFull", align 1
@20 = private unnamed_addr constant [10 x i8] c"WriteError", align 1
@21 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorNtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@22 = private unnamed_addr constant [9 x i8] c"Serialize", align 1
@23 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@24 = private unnamed_addr constant [4 x i8] c"Join", align 1
@25 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtCs1LivM9IBWqb_12object_store5ErrorNtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@26 = private unnamed_addr constant [16 x i8] c"ObjectStoreError", align 1
@27 = private unnamed_addr constant [8 x i8] c"Shutdown", align 1
@28 = private unnamed_addr constant [19 x i8] c"InvalidGen1Duration", align 1
@29 = private unnamed_addr constant [18 x i8] c"InvalidWalFilePath", align 1
@30 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_12DisplayValueRINtNtCscdodAO9FK5_5alloc4sync3ArceEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@31 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_12DisplayValueRINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc5error9SendErrorNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17TriggerInvocationEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB1X_ }>, align 8
@32 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_12DisplayValueRNtNtCs6P5GRezSnwZ_4http5error5ErrorENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@33 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_12DisplayValueRNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@34 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_12DisplayValueRNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@35 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_12DisplayValueRNtNtCs9h7Hq22ZyhR_15influxdb3_types7logging12ErrorOneLineENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@36 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_12DisplayValueRNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@37 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_12DisplayValueRNtNtCsh4GC5dvIChH_27influxdb3_processing_engine25scheduler_worker_protocol21TriggerExecutionErrorENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB14_ }>, align 8
@38 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_12DisplayValueRNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7plugins11PluginErrorENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB14_ }>, align 8
@39 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_12DisplayValueRNtNtCskkCPRT7oCWw_16influxdb3_py_api7logging8LogErrorENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@40 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_12DisplayValueRNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@41 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs4BfJs7E7SEE_12tracing_core5fieldINtB5_12DisplayValueRReENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@42 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionENtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@43 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc4sync3ArceENtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@44 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@45 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store20PersistCatalogResultNtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@46 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsh4GC5dvIChH_27influxdb3_processing_engine25scheduler_worker_protocol13TriggerWorkIdNtB6_5Debug3fmtBA_ }>, align 8
@47 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNtB6_5Debug3fmtBA_ }>, align 8
@48 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler10TriggerKeyNtB6_5Debug3fmtBA_ }>, align 8
@49 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler12RetryDelayIdNtB6_5Debug3fmtBA_ }>, align 8
@50 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16TriggerRuntimeIdNtB6_5Debug3fmtBA_ }>, align 8
@51 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v315CatalogFilePathNtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@52 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@53 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v315CatalogFilePathNtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvMs3_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_9LeafRangeNtNtNtB8_4node6marker5ImmutmNtNtB8_7set_val9SetValZSTE20perform_next_checkedNCNvMs1_B6_BX_12next_checked0TRmRB1F_EECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !noundef !3   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !3 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %.split, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %bb.i, label %bb.h

.split:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !3
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.i, label %bb.d

bb.d:                                             ; preds = %.split, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18
  invoke void @_RNvMsh_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmutmNtNtB7_7set_val9SetValZSTNtB1w_4LeafENtB1w_4EdgeE7next_kvCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.d
  %i.n = load ptr, ptr %i.b, align 8, !noalias !18, !noundef !3 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.f, !prof !4

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19
          to label %.noexc1.i unwind label %bb.g, !noalias !17

.noexc1.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18
  store ptr %i.n, ptr %i.a, align 8, !noalias !18
  %i.p = invoke { ptr, ptr } @_RNvMsP_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutmNtNtB7_7set_val9SetValZSTNtB1l_14LeafOrInternalENtB1l_2KVE7into_kvCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc2.i unwind label %bb.g, !noalias !17 ; 2 uses

.noexc2.i:                                        ; preds = %bb.f
  invoke void @_RNvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmutmNtNtB7_7set_val9SetValZSTNtB1w_14LeafOrInternalENtB1w_2KVE14next_leaf_edgeCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmutmNtNtB4_7set_val9SetValZSTNtB1w_4LeafENtB1w_4EdgeEINtNtCs4NRVxsYgnAr_4core6option6OptionTRmRB1P_EENCINvMs3_NtB4_8navigateINtB3x_9LeafRangeB1u_mB1P_E20perform_next_checkedNCNvMs1_B3x_B3L_12next_checked0B3e_E0ECsh4GC5dvIChH_27influxdb3_processing_engine.exit unwind label %bb.g, !noalias !17

bb.g:                                             ; preds = %.noexc2.i, %bb.f, %bb.e, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmutmNtNtB4_7set_val9SetValZSTNtB1w_4LeafENtB1w_4EdgeEINtNtCs4NRVxsYgnAr_4core6option6OptionTRmRB1P_EENCINvMs3_NtB4_8navigateINtB3x_9LeafRangeB1u_mB1P_E20perform_next_checkedNCNvMs1_B3x_B3L_12next_checked0B3e_E0ECsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %.noexc2.i
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s), "nonnull"(ptr %i.r) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #19
  unreachable

bb.i:                                             ; preds = %.split, %bb.c, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmutmNtNtB4_7set_val9SetValZSTNtB1w_4LeafENtB1w_4EdgeEINtNtCs4NRVxsYgnAr_4core6option6OptionTRmRB1P_EENCINvMs3_NtB4_8navigateINtB3x_9LeafRangeB1u_mB1P_E20perform_next_checkedNCNvMs1_B3x_B3L_12next_checked0B3e_E0ECsh4GC5dvIChH_27influxdb3_processing_engine.exit
  %.sroa.3.0 = phi ptr [ %i.r, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmutmNtNtB4_7set_val9SetValZSTNtB1w_4LeafENtB1w_4EdgeEINtNtCs4NRVxsYgnAr_4core6option6OptionTRmRB1P_EENCINvMs3_NtB4_8navigateINtB3x_9LeafRangeB1u_mB1P_E20perform_next_checkedNCNvMs1_B3x_B3L_12next_checked0B3e_E0ECsh4GC5dvIChH_27influxdb3_processing_engine.exit ], [ undef, %bb.c ], [ undef, %.split ]
  %.sroa.0.0 = phi ptr [ %i.s, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmutmNtNtB4_7set_val9SetValZSTNtB1w_4LeafENtB1w_4EdgeEINtNtCs4NRVxsYgnAr_4core6option6OptionTRmRB1P_EENCINvMs3_NtB4_8navigateINtB3x_9LeafRangeB1u_mB1P_E20perform_next_checkedNCNvMs1_B3x_B3L_12next_checked0B3e_E0ECsh4GC5dvIChH_27influxdb3_processing_engine.exit ], [ null, %bb.c ], [ null, %.split ]
  %i.t = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.u = insertvalue { ptr, ptr } %i.t, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEE7reserveNCINvNtB8_3map11make_hasherBQ_B1r_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1r_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0EB1v_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringBV_EE9next_implKb0_ECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %.not12 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not12, label %.lr.ph, label %._crit_edge19

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted14 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [48 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted14, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val10 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val10, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -768 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapmNtNtB8_7set_val9SetValZSTE3getmECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !3   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  call void @_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutmNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treemECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.b, i64 noundef %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1)
  %i.e = load i64, ptr %i.a, align 8, !range !5, !noundef !3
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.i, %bb.d ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = call { ptr, ptr } @_RNvMsP_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutmNtNtB7_7set_val9SetValZSTNtB1l_14LeafOrInternalENtB1l_2KVE7into_kvCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
  %i.i = extractvalue { ptr, ptr } %i.h, 1
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapmNtNtB8_7set_val9SetValZSTE5rangemTINtNtNtCs4NRVxsYgnAr_4core3ops5range5BoundmEB1G_EECsh4GC5dvIChH_27influxdb3_processing_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !3   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  call void @_RINvMsd_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB10_6marker5ImmutmNtNtB8_7set_val9SetValZSTNtB1k_14LeafOrInternalE30find_leaf_edges_spanning_rangemTINtNtNtCs4NRVxsYgnAr_4core3ops5range5BoundmEB2Y_EECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %i.b, i64 noundef %i.d, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %.sroa.54.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VeclEECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VeclENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVeclEECsh4GC5dvIChH_27influxdb3_processing_engine.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVeclEECsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCsj9JzdWj4GcM_12arrow_schema8datatype8DataTypeEECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj9JzdWj4GcM_12arrow_schema8datatype8DataTypeECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #21
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #21
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6ePPILGZvJ2_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBI_5types17GenericStringTypelEEECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsh4GC5dvIChH_27influxdb3_processing_engine.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body
end_hunk_0
begin_hunk_1_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskkCPRT7oCWw_16influxdb3_py_api7logging19ProcessingEngineLogECsh4GC5dvIChH_27influxdb3_processing_engine:bb.a
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit12: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECsh4GC5dvIChH_27influxdb3_processing_engine.exit, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !234, !nonnull !3, !noundef !3
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !234
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit16

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit12
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit16 unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit14: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit, %bb.f, %bb.i
  %.pn2 = phi { ptr, i32 } [ %i.w, %bb.i ], [ %.pn, %bb.f ], [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(24) %0) #22
          to label %.body unwind label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit14

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit16: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit12, %bb.h
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit16
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit16
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit unwind label %bb.m

.body:                                            ; preds = %bb.m, %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit14
  %.pn4 = phi { ptr, i32 } [ %.pn2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit14 ], [ %i.ad, %bb.m ], [ %i.x, %bb.j ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !237, !nonnull !3, !noundef !3
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !237
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit19

bb.l:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit19 unwind label %bb.u

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !240, !nonnull !3, !noundef !3
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !240
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit21

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ae)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit21 unwind label %bb.p

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit19: ; preds = %.body, %bb.l, %bb.p
  %.pn6 = phi { ptr, i32 } [ %i.am, %bb.p ], [ %.pn4, %bb.l ], [ %.pn4, %.body ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !243, !nonnull !3, !noundef !3
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !243
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit23

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit19
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit23 unwind label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit19

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit21: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit, %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !246, !nonnull !3, !noundef !3
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !noalias !246
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit25

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit21
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit25 unwind label %bb.s

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit23: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit19, %bb.o, %bb.s
  %.pn8 = phi { ptr, i32 } [ %i.av, %bb.s ], [ %.pn6, %bb.o ], [ %.pn6, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit19 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !249, !nonnull !3, !noundef !3
  %i.at = atomicrmw sub ptr %i.as, i64 1 release, align 8, !noalias !249
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit27

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit23
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit27 unwind label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit23

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit25: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit21, %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !252, !nonnull !3, !noundef !3
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !252
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit28

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit25
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aw)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit28

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit28: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit25, %bb.t
  ret void

bb.u:                                             ; preds = %bb.r, %bb.o, %bb.l, %bb.f, %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit14
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit27: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsh4GC5dvIChH_27influxdb3_processing_engine.exit23, %bb.r
  resume { ptr, i32 } %.pn8
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc7bounded7channelNtNtCskkCPRT7oCWw_16influxdb3_py_api7logging19ProcessingEngineLogECsh4GC5dvIChH_27influxdb3_processing_engine(i64 noundef %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 81 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCseCDlJsl44RV_5tokio4sync15batch_semaphoreNtB2_9Semaphore3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, i64 noundef %0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %0, ptr %i.b, align 8
  %i.c = call { ptr, ptr } @_RINvNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan7channelNtNtCskkCPRT7oCWw_16influxdb3_py_api7logging19ProcessingEngineLogNtNtB4_7bounded9SemaphoreECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone13clone_subtreemNtNtBa_7set_val9SetValZSTNtNtBe_5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.j = tail call { ptr, i64 } @_RINvMs8_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedmNtNtB8_7set_val9SetValZSTNtB19_4LeafE8new_leafNtNtBc_5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine() ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %3 = extractvalue { ptr, i64 } %i.j, 1          ; 2 uses
  store ptr %i.k, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.f, label %bb.g, !prof !259

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.q = add i64 %2, -1                           ; 2 uses
  call fastcc void @_RINvNvXs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone13clone_subtreemNtNtBa_7set_val9SetValZSTNtNtBe_5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull %i.p, i64 noundef %i.q)
  %i.r = load ptr, ptr %i.f, align 8, !noundef !3 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.o, label %bb.q, !prof !4

bb.d:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %.pn57 = phi { ptr, i32 } [ %i.y, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapmNtNtBG_7set_val9SetValZSTEECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(24) %i.h) #22
          to label %bb.ae unwind label %bb.n

.loopexit:                                        ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %i.w, ptr %i.m, align 8
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.e:                                             ; preds = %bb.o, %bb.g
  unreachable

bb.f:                                             ; preds = %bb.b
  store ptr %i.k, ptr %i.g, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !noundef !3
  %.not78 = icmp eq i16 %i.v, 0
  br i1 %.not78, label %._crit_edge76, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.f
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #19
          to label %bb.e unwind label %.loopexit.split-lp

._crit_edge76:                                    ; preds = %bb.m, %bb.f
  %.lcssa70 = phi i64 [ 0, %bb.f ], [ %i.ad, %bb.m ]
  store i64 %.lcssa70, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph75, %bb.m
  %.sroa.7.073 = phi i64 [ 0, %.lr.ph75 ], [ %i.aa, %bb.m ] ; 2 uses
  %i.w = phi i64 [ 0, %.lr.ph75 ], [ %i.ad, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  store i64 0, ptr %.sroa.59.0..sroa_idx, align 8
  store i64 %.sroa.7.073, ptr %.sroa.6.0..sroa_idx, align 8
  %i.x = invoke { ptr, ptr } @_RNvMsP_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutmNtNtB7_7set_val9SetValZSTNtB1l_4LeafENtB1l_2KVE7into_kvCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.k unwind label %.loopexit

bb.i:                                             ; preds = %bb.t, %._crit_edge76
  ret void

bb.j:                                             ; preds = %bb.l, %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  store i64 %i.w, ptr %i.m, align 8
  br label %bb.d

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = extractvalue { ptr, ptr } %i.x, 0
  %i.aa = add nuw nsw i64 %.sroa.7.073, 1         ; 2 uses
  %i.ab = load i32, ptr %i.z, align 4, !alias.scope !260, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMsu_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutmNtNtB7_7set_val9SetValZSTNtB18_4LeafE16push_with_handleCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.ab)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.ac = invoke noundef nonnull ptr @_RNvMsQ_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutmNtNtB7_7set_val9SetValZSTNtB1l_4LeafENtB1l_2KVE12into_val_mutCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
          to label %bb.m unwind label %bb.j       ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = add i64 %i.w, 1                         ; 2 uses
  %i.ae = load i16, ptr %i.u, align 2, !noundef !3
  %i.af = zext i16 %i.ae to i64
  %i.ag = icmp samesign ult i64 %i.aa, %i.af
  br i1 %i.ag, label %bb.h, label %._crit_edge76

bb.n:                                             ; preds = %bb.p, %bb.d
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.o:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #19
          to label %bb.e unwind label %.loopexit.split-lp61

bb.p:                                             ; preds = %.loopexit60, %.loopexit.split-lp61, %bb.z, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.z ], [ %i.at, %bb.v ], [ %lpad.loopexit62, %.loopexit60 ], [ %lpad.loopexit.split-lp63, %.loopexit.split-lp61 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapmNtNtBG_7set_val9SetValZSTEECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(24) %i.f) #22
          to label %bb.ae unwind label %bb.n

.loopexit60:                                      ; preds = %bb.u
  %lpad.loopexit62 = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ar, ptr %i.aq, align 8
  br label %bb.p

.loopexit.split-lp61:                             ; preds = %bb.o
  %lpad.loopexit.split-lp63 = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.q:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.ai = load i64, ptr %i.s, align 8, !alias.scope !261, !noundef !3
  %i.aj = invoke { ptr, i64 } @_RINvMs9_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedmNtNtB8_7set_val9SetValZSTNtB19_8InternalE12new_internalNtNtBc_5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noundef nonnull %i.r, i64 noundef %i.ai)
          to label %bb.s unwind label %bb.r, !noalias !261 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.al = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.aj, 1      ; 2 uses
  store ptr %i.al, ptr %i.f, align 8, !alias.scope !261
  store i64 %i.am, ptr %i.s, align 8, !alias.scope !261
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.am, ptr %i.an, align 8
  store ptr %i.al, ptr %i.e, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !noundef !3
  %.not77 = icmp eq i16 %i.ap, 0
  br i1 %.not77, label %bb.t, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %.promoted = load i64, ptr %i.aq, align 8
  br label %bb.u

._crit_edge:                                      ; preds = %bb.ad
  store i64 %i.bf, ptr %i.aq, align 8
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.u:                                             ; preds = %.lr.ph, %bb.ad
  %i.ar = phi i64 [ %.promoted, %.lr.ph ], [ %i.bf, %bb.ad ] ; 4 uses
  %.sroa.9.065 = phi i64 [ 0, %.lr.ph ], [ %i.av, %bb.ad ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  store i64 %2, ptr %.sroa.520.0..sroa_idx, align 8
  store i64 %.sroa.9.065, ptr %.sroa.622.0..sroa_idx, align 8
  %i.as = invoke { ptr, ptr } @_RNvMsP_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutmNtNtB7_7set_val9SetValZSTNtB1l_8InternalENtB1l_2KVE7into_kvCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.w unwind label %.loopexit60

bb.v:                                             ; preds = %bb.w
  %i.at = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ar, ptr %i.aq, align 8
  br label %bb.p

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.au = extractvalue { ptr, ptr } %i.as, 0
  %i.av = add nuw nsw i64 %.sroa.9.065, 1         ; 3 uses
  %i.aw = load i32, ptr %i.au, align 4, !alias.scope !262, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ax = icmp samesign ult i64 %.sroa.9.065, 11
  call void @llvm.assume(i1 %i.ax)
end_hunk_1
begin_hunk_2_@_RNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB1D_ENtB1l_14LeafOrInternalENtB1l_2KVE12drop_key_valCsh4GC5dvIChH_27influxdb3_processing_engine:bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i: ; preds = %bb.e
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB20_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB20_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsh4GC5dvIChH_27influxdb3_processing_engine.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i
  ret void

bb.h:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringBU_EE3newCsh4GC5dvIChH_27influxdb3_processing_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueE6insertCsh4GC5dvIChH_27influxdb3_processing_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [56 x i8], align 8                ; 11 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 7 uses
  %.sroa.14 = alloca [16 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.m = load ptr, ptr %1, align 8, !alias.scope !361, !noalias !363, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !364
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !361, !noalias !363, !noundef !3
  invoke void @_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutNtNtBb_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueNtB1h_14LeafOrInternalE11search_treeB1x_ECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noundef nonnull %i.m, i64 noundef %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.e unwind label %bb.j, !noalias !365

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload15 = load i64, ptr %2, align 8, !alias.scope !363, !noalias !361
  %.sroa.7.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx17, i64 16, i1 false), !alias.scope !363, !noalias !361
  br label %_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueE5entryCsh4GC5dvIChH_27influxdb3_processing_engine.exit

bb.d:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !365
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.g, align 8, !range !5, !noalias !364, !noundef !3
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.r, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !noalias !366
  %.sroa.9.8..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.9.8.copyload19 = load ptr, ptr %.sroa.9.8..sroa_idx18, align 8, !noalias !366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !364
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i unwind label %bb.g, !noalias !360

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %.thread24 unwind label %bb.h, !noalias !360

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !360
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueE5entryCsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread unwind label %bb.k

bb.i:                                             ; preds = %bb.e
  %.sroa.11.32.copyload = load ptr, ptr %i.s, align 8, !noalias !366
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.32..sroa_idx, i64 16, i1 false), !noalias !366
  %.sroa.0.0.copyload14 = load i64, ptr %2, align 8, !alias.scope !363, !noalias !361
  %.sroa.7.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx16, i64 16, i1 false), !alias.scope !363, !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !364
  br label %_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueE5entryCsh4GC5dvIChH_27influxdb3_processing_engine.exit

bb.j:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %2) #22
          to label %.thread24 unwind label %bb.d, !noalias !365

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread24

_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueE5entryCsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %bb.i, %bb.c
  %.sroa.11.0 = phi ptr [ null, %bb.c ], [ %.sroa.11.32.copyload, %bb.i ] ; 3 uses
  %.sroa.0.020 = phi i64 [ %.sroa.0.0.copyload15, %bb.c ], [ %.sroa.0.0.copyload14, %bb.i ] ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.020, -1
  br i1 %i.w, label %_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueE5entryCsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread, label %bb.n

_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueE5entryCsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i, %_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueE5entryCsh4GC5dvIChH_27influxdb3_processing_engine.exit
  %.sroa.9.039 = phi ptr [ %1, %_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueE5entryCsh4GC5dvIChH_27influxdb3_processing_engine.exit ], [ %.sroa.9.8.copyload19, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i ]
  %.sroa.11.038 = phi ptr [ %.sroa.11.0, %_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueE5entryCsh4GC5dvIChH_27influxdb3_processing_engine.exit ], [ %1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.sroa.9.039, ptr %.sroa.9.8..sroa_idx, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %.sroa.11.038, ptr %.sroa.11.8..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.x = invoke { ptr, ptr } @_RNvMsS_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueNtB1l_14LeafOrInternalENtB1l_2KVE6kv_mutCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %bb.t unwind label %bb.l, !noalias !367

bb.l:                                             ; preds = %_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueE5entryCsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5value5ValueECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k) #22
          to label %.thread28 unwind label %bb.m, !noalias !368

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !368
  unreachable

bb.n:                                             ; preds = %_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueE5entryCsh4GC5dvIChH_27influxdb3_processing_engine.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.sroa.0.020, ptr %i.j, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 4 uses
  store ptr %1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store ptr %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !371
  %.not.i5 = icmp eq ptr %.sroa.11.0, null
  br i1 %.not.i5, label %bb.o, label %.noexc9

bb.o:                                             ; preds = %bb.n
  %i.aa = invoke { ptr, i64 } @_RINvMs8_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueNtB19_4LeafE8new_leafNtNtBc_5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine()
          to label %.noexc8 unwind label %bb.q, !noalias !371 ; 2 uses

.noexc8:                                          ; preds = %bb.o
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %4 = extractvalue { ptr, i64 } %i.aa, 1         ; 2 uses
  store ptr %i.ab, ptr %1, align 8, !noalias !371
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %4, ptr %i.ac, align 8, !noalias !371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !371
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %4, ptr %i.ad, align 8, !noalias !371
  store ptr %i.ab, ptr %i.e, align 8, !noalias !371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !371
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 24, i1 false), !noalias !372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !371
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @_RNvMsu_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueNtB18_4LeafE16push_with_handleCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !371
  br label %_RNvMs5_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueE8into_mutCsh4GC5dvIChH_27influxdb3_processing_engine.exit

.noexc9:                                          ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !371
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx, i64 24, i1 false), !noalias !372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !371
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 24, i1 false), !noalias !372
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  call void @_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueNtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3L_11VacantEntryB1C_B1X_E12insert_entry0ECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.9.0..sroa_idx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !371
  br label %_RNvMs5_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueE8into_mutCsh4GC5dvIChH_27influxdb3_processing_engine.exit

bb.p:                                             ; preds = %bb.r, %bb.q
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !369
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5value5ValueECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i) #22
          to label %bb.r unwind label %bb.p, !noalias !373

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j) #22
          to label %.thread28 unwind label %bb.p, !noalias !369

_RNvMs5_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueE8into_mutCsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %.noexc9, %.noexc8
  %i.ah = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !370, !noalias !372, !nonnull !3, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !372, !noundef !3
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !noalias !372
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.am = load ptr, ptr %i.f, align 8, !noalias !371, !nonnull !3, !noundef !3
  %i.an = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !370, !noalias !372, !nonnull !3, !noundef !3
  store ptr %i.am, ptr %i.h, align 8, !alias.scope !369, !noalias !374
  %.sroa.4.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ao = load <2 x i64>, ptr %i.al, align 8, !noalias !371
  store <2 x i64> %i.ao, ptr %.sroa.4.0..sroa_idx.i6, align 8, !alias.scope !369, !noalias !374
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.an, ptr %i.ap, align 8, !alias.scope !369, !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !371
  %i.aq = call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueNtB1l_14LeafOrInternalENtB1l_2KVE12into_val_mutCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %_RNvMs5_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueE8into_mutCsh4GC5dvIChH_27influxdb3_processing_engine.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  ret void

bb.t:                                             ; preds = %_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueE5entryCsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread
  %i.ar = extractvalue { ptr, ptr } %i.x, 1       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.s

.thread28:                                        ; preds = %bb.l, %bb.r, %.thread24
  %.pn23 = phi { ptr, i32 } [ %i.ag, %bb.r ], [ %eh.lpad-body27, %.thread24 ], [ %i.y, %bb.l ]
  resume { ptr, i32 } %.pn23

.thread24:                                        ; preds = %bb.g, %bb.j, %bb.k
  %eh.lpad-body27 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.k ], [ %i.v, %bb.j ], [ %i.t, %bb.g ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5value5ValueECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(32) %3) #22
          to label %.thread28 unwind label %bb.u

bb.u:                                             ; preds = %.thread24
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer7BuilderE10dying_nextCsh4GC5dvIChH_27influxdb3_processing_engine(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !395, !noalias !396
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !395, !noalias !396 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !395, !noalias !396 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !395, !noalias !396 ; 6 uses
  store i64 0, ptr %1, align 8, !alias.scope !395, !noalias !396
  %i.h = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.h, label %bb.c, label %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer7BuilderE16deallocating_endNtNtBc_5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.i = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter4 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod5.not = icmp eq i64 %xtraiter4, 0
  br i1 %lcmp.mod5.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter6 = phi i64 [ %prol.iter6.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 3032
  %i.k = load ptr, ptr %i.j, align 8, !noalias !397, !nonnull !3, !noundef !3 ; 3 uses
  %i.l = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter6.next = add i64 %prol.iter6, 1       ; 2 uses
  %prol.iter6.cmp.not = icmp eq i64 %prol.iter6.next, %xtraiter4
  br i1 %prol.iter6.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !380

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.l, %.lr.ph.i.i.prol ]
  %i.m = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.m, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 3032
  %i.o = load ptr, ptr %i.n, align 8, !noalias !397, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 3032
  %i.q = load ptr, ptr %i.p, align 8, !noalias !397, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 3032
  %i.s = load ptr, ptr %i.r, align 8, !noalias !397, !nonnull !3, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 3032
  %i.u = load ptr, ptr %i.t, align 8, !noalias !397, !nonnull !3, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 3032
  %i.w = load ptr, ptr %i.v, align 8, !noalias !397, !nonnull !3, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 3032
  %i.y = load ptr, ptr %i.x, align 8, !noalias !397, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3032
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !397, !nonnull !3, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 3032
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !397, !nonnull !3, !noundef !3 ; 2 uses
  %i.ad = add i64 %.sroa.020.024.i.i, -8          ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.10.0.ph.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.sroa.6.0.copyload.i.i, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !393
  store ptr %.sroa.0.0.ph.i, ptr %i.c, align 8, !noalias !393
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !393
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !393
  call void @_RINvMsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer7BuilderNtB1y_4LeafENtB1y_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !noalias !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !393
  br label %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer7BuilderE16deallocating_endNtNtBc_5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine.exit

_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer7BuilderE16deallocating_endNtNtBc_5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %bb.b, %.loopexit.i
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.af = add i64 %i.f, -1
  store i64 %i.af, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
end_hunk_2
begin_hunk_3_@_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine:bb.a
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.023.i.i, %bb.d ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !2049
  %i.m = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -768 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.022.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.023.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.021.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i, i64 %i.t ; 3 uses
  %i.v = add i64 %.sroa.107.020.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -48 ; 4 uses
  %i.x = load i64, ptr %i.w, align 8, !range !2050, !alias.scope !2051, !noalias !2047, !noundef !3
  switch i64 %i.x, label %bb.e [
    i64 -1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i
    i64 -9223372036854775803, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i
    i64 -9223372036854775804, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i
    i64 -9223372036854775805, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i
    i64 -9223372036854775806, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i
    i64 -9223372036854775807, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i
    i64 -9223372036854775808, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i
  ]

bb.e:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i.i unwind label %bb.f, !noalias !2047

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %.body.i.i.i unwind label %bb.g, !noalias !2047

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !2047
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i unwind label %bb.h, !noalias !2047

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.h, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.y, %bb.f ]
  %i.ab = getelementptr inbounds i8, ptr %i.u, i64 -24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store10attributes14AttributeValueECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(24) %i.ab) #22
          to label %common.resume.i.i.i unwind label %bb.l, !noalias !2047

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBX_14AttributeValueEE9next_implKb0_ECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i
  %i.ac = getelementptr inbounds i8, ptr %i.u, i64 -24 ; 4 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !7, !alias.scope !2052, !noalias !2047, !noundef !3
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBE_14AttributeValueEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i2.i.i.i unwind label %bb.j, !noalias !2047

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %common.resume.i.i.i unwind label %bb.k, !noalias !2047

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !2047
  unreachable

common.resume.i.i.i:                              ; preds = %bb.j, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.af, %bb.j ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i2.i.i.i: ; preds = %bb.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac), !noalias !2047
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBE_14AttributeValueEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i

bb.l:                                             ; preds = %.body.i.i.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !2047
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBE_14AttributeValueEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i2.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i
  %i.ai = icmp eq i64 %i.v, 0
  br i1 %i.ai, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB1c_14AttributeValueEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i, label %bb.d

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB1c_14AttributeValueEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBE_14AttributeValueEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i, %bb.b
  %i.aj = mul i64 %i.b, 48                        ; 2 uses
  %i.ak = add i64 %i.aj, 48                       ; 2 uses
  %i.al = add i64 %i.b, 17
  %i.am = add i64 %i.al, %i.ak                    ; 4 uses
  %i.an = icmp uge i64 %i.am, %i.ak
  %i.ao = icmp ult i64 %i.am, 9223372036854775793
  tail call void @llvm.assume(i1 %i.an)
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp eq i64 %i.am, 0
  br i1 %i.ap, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB1f_14AttributeValueENtNtCscdodAO9FK5_5alloc5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine.exit, label %bb.m

bb.m:                                             ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB1c_14AttributeValueEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i
  %i.aq = load ptr, ptr %0, align 8, !alias.scope !2045, !nonnull !3, !noundef !3
  %i.ar = sub i64 -48, %i.aj
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 %i.ar
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !2045
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB1f_14AttributeValueENtNtCscdodAO9FK5_5alloc5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB1f_14AttributeValueENtNtCscdodAO9FK5_5alloc5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %bb.a, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB1c_14AttributeValueEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2G_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2061)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2061, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtB1h_6marker4SendNtB34_4SyncEL_EENtNtB1Q_5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2062)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2063, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB31_4SyncEL_EEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2063, !nonnull !3, !noundef !3 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !2064
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i, %bb.c
  %.sroa.06.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ] ; 2 uses
  %.sroa.87.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ] ; 2 uses
  %.sroa.108.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.87.015.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2M_4SyncEL_EEE9next_implKb0_ECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.06.017.i.i, %bb.d ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !2065
  %i.m = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2M_4SyncEL_EEE9next_implKb0_ECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2M_4SyncEL_EEE9next_implKb0_ECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.87.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.108.014.i.i, -1           ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 -16
  %.val.i.i = load ptr, ptr %i.w, align 8, !noalias !2063 ; 5 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -8
  %.val5.i.i = load ptr, ptr %i.x, align 8, !noalias !2063, !nonnull !3, !align !8, !noundef !3 ; 5 uses
  %i.y = load ptr, ptr %.val5.i.i, align 8, !invariant.load !3, !noalias !2063 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2M_4SyncEL_EEE9next_implKb0_ECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.y(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.g, !noalias !2063

bb.f:                                             ; preds = %bb.e, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2M_4SyncEL_EEE9next_implKb0_ECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !2066, !invariant.load !3, !noalias !2063 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !2067, !invariant.load !3, !noalias !2063
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.ad) #21, !noalias !2063
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !2066, !invariant.load !3, !noalias !2063 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1r_4SyncEL_ENtNtNtB1t_3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine.exit5.i.i.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !2067, !invariant.load !3, !noalias !2063
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) %i.aj) #21, !noalias !2063
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1r_4SyncEL_ENtNtNtB1t_3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine.exit5.i.i.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1r_4SyncEL_ENtNtNtB1t_3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine.exit5.i.i.i.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.g
  resume { ptr, i32 } %i.ae

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.f
  %i.ak = icmp eq i64 %i.v, 0
  br i1 %i.ak, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB31_4SyncEL_EEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i, label %bb.d

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB31_4SyncEL_EEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i, %bb.b
  %i.al = shl i64 %i.b, 5                         ; 2 uses
  %i.am = add i64 %i.al, 32                       ; 2 uses
  %i.an = add i64 %i.b, 17
  %i.ao = add i64 %i.an, %i.am                    ; 4 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  %i.aq = icmp ult i64 %i.ao, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ap)
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp eq i64 %i.ao, 0
  br i1 %i.ar, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtB1h_6marker4SendNtB34_4SyncEL_EENtNtB1Q_5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine.exit, label %bb.h

bb.h:                                             ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB31_4SyncEL_EEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i
  %i.as = load ptr, ptr %0, align 8, !alias.scope !2061, !nonnull !3, !noundef !3
  %i.at = sub nuw nsw i64 -32, %i.al
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !2061
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtB1h_6marker4SendNtB34_4SyncEL_EENtNtB1Q_5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtB1h_6marker4SendNtB34_4SyncEL_EENtNtB1Q_5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %bb.a, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB31_4SyncEL_EEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2080)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2080, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamENtNtB1h_5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2081)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2082, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2082, !nonnull !3, !noundef !3 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !2083
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i, %bb.c
  %.sroa.05.023.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ] ; 2 uses
  %.sroa.6.022.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ] ; 2 uses
  %.sroa.86.021.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ] ; 2 uses
  %.sroa.107.020.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.86.021.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEE9next_implKb0_ECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.022.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.023.i.i, %bb.d ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !2084
  %i.m = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -768 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEE9next_implKb0_ECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEE9next_implKb0_ECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.022.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.023.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.021.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i, i64 %i.t ; 3 uses
  %i.v = add i64 %.sroa.107.020.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -48 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i unwind label %bb.e, !noalias !2082

bb.e:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEE9next_implKb0_ECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %.body.i.i.i unwind label %bb.f, !noalias !2082

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !2082
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i: ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEE9next_implKb0_ECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i unwind label %bb.g, !noalias !2082

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.x, %bb.e ]
  %i.aa = getelementptr inbounds i8, ptr %i.u, i64 -24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(24) %i.aa) #22
          to label %common.resume.i.i.i unwind label %bb.k, !noalias !2082

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i
  %i.ab = getelementptr inbounds i8, ptr %i.u, i64 -24 ; 4 uses
  %i.ac = load i64, ptr %i.ab, align 8, !range !9, !alias.scope !2085, !noalias !2082, !noundef !3
  %switch1.i.i.i.i = icmp slt i64 %i.ac, -9223372036854775803
  br i1 %switch1.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i unwind label %bb.i, !noalias !2082

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %common.resume.i.i.i unwind label %bb.j, !noalias !2082

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !2082
  unreachable

common.resume.i.i.i:                              ; preds = %bb.i, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i: ; preds = %bb.h
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab), !noalias !2082
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i

bb.k:                                             ; preds = %.body.i.i.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !2082
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i
  %i.ag = icmp eq i64 %i.v, 0
  br i1 %i.ag, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i, label %bb.d

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i, %bb.b
  %i.ah = mul i64 %i.b, 48                        ; 2 uses
  %i.ai = add i64 %i.ah, 48                       ; 2 uses
  %i.aj = add i64 %i.b, 17
  %i.ak = add i64 %i.aj, %i.ai                    ; 4 uses
  %i.al = icmp uge i64 %i.ak, %i.ai
  %i.am = icmp ult i64 %i.ak, 9223372036854775793
  tail call void @llvm.assume(i1 %i.al)
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i64 %i.ak, 0
  br i1 %i.an, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamENtNtB1h_5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine.exit, label %bb.l

bb.l:                                             ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i
  %i.ao = load ptr, ptr %0, align 8, !alias.scope !2080, !nonnull !3, !noundef !3
  %i.ap = sub i64 -48, %i.ah
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !2080
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamENtNtB1h_5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamENtNtB1h_5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %bb.a, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i, %bb.l
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtCs4BfJs7E7SEE_12tracing_core5fieldReNtB5_5Value6recordCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_3
