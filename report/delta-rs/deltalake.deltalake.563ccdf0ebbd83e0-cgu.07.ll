inline.NumInlined: 7758
inline.NumDeleted: 2965
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 29
begin_hunk_0
@425 = private unnamed_addr constant [5 x i8] c"exprs", align 1
@426 = private unnamed_addr constant [8 x i8] c"constant", align 1
@427 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB8_4sync6atomic6AtomicjEENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake }>, align 8
@428 = private unnamed_addr constant [5 x i8] c"Count", align 1
@429 = private unnamed_addr constant [15 x i8] c"ReadUncommitted", align 1
@430 = private unnamed_addr constant [13 x i8] c"ReadCommitted", align 1
@431 = private unnamed_addr constant [14 x i8] c"RepeatableRead", align 1
@432 = private unnamed_addr constant [12 x i8] c"Serializable", align 1
@433 = private unnamed_addr constant [8 x i8] c"Snapshot", align 1
@434 = private unnamed_addr constant [5 x i8] c"Gauge", align 1
@435 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsj_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_21TransactionAccessModeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt }>, align 8
@436 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statement25TransactionIsolationLevelNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake }>, align 8
@437 = private unnamed_addr constant [11 x i8] c"access_mode", align 1
@438 = private unnamed_addr constant [15 x i8] c"isolation_level", align 1
@439 = private unnamed_addr constant [4 x i8] c"Time", align 1
@440 = private unnamed_addr constant [5 x i8] c"nanos", align 1
@441 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api5mutex5MutexNtNtCs8fBJGmGoRiY_11parking_lot9raw_mutex8RawMutexINtNtB8_6option6OptionINtNtCshmPyUV8PP35_6chrono8datetime8DateTimeNtNtNtB2X_6offset3utc3UtcEEEENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake }>, align 8
@442 = private unnamed_addr constant [9 x i8] c"Timestamp", align 1
@443 = private unnamed_addr constant [9 x i8] c"timestamp", align 1
@444 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs7p2uQeJxui2_9deltalake, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsW_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCsbvkFyIu7lgC_4core4sync6atomic6AtomicjEENtNtBN_3fmt5Debug3fmtCs7p2uQeJxui2_9deltalake }>, align 8
@445 = private unnamed_addr constant [14 x i8] c"PruningMetrics", align 1
@446 = private unnamed_addr constant [6 x i8] c"pruned", align 1
@447 = private unnamed_addr constant [7 x i8] c"matched", align 1
@448 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_21TransactionConclusionNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt }>, align 8
@449 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRbNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake }>, align 8
@450 = private unnamed_addr constant [10 x i8] c"conclusion", align 1
@451 = private unnamed_addr constant [5 x i8] c"chain", align 1
@452 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5value18RatioMergeStrategyNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake }>, align 8
@453 = private unnamed_addr constant [12 x i8] c"RatioMetrics", align 1
@454 = private unnamed_addr constant [4 x i8] c"part", align 1
@455 = private unnamed_addr constant [5 x i8] c"total", align 1
@456 = private unnamed_addr constant [14 x i8] c"merge_strategy", align 1
@457 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state15ScanFileVisitorNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay11ScanContextEECs7p2uQeJxui2_9deltalake, [16 x i8] c"\B8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB5_15ScanFileVisitorNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay11ScanContextENtNtB9_11engine_data10RowVisitor31selected_column_names_and_typesCs7p2uQeJxui2_9deltalake, ptr @_RNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB5_15ScanFileVisitorNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay11ScanContextENtNtB9_11engine_data10RowVisitor5visitCs7p2uQeJxui2_9deltalake }>, align 8
@458 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@459 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -4914948277808166054 to ptr), ptr inttoptr (i64 2111995574219228527 to ptr) }>, align 8
@460 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBP_5table13TableProvider11delete_from0ECs7p2uQeJxui2_9deltalake, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtB8_5table13TableProvider11delete_from0Cs7p2uQeJxui2_9deltalake }>, align 8
@461 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBP_5table13TableProvider11insert_into0ECs7p2uQeJxui2_9deltalake, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtB8_5table13TableProvider11insert_into0Cs7p2uQeJxui2_9deltalake }>, align 8
@462 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBP_5table13TableProvider14scan_with_args0ECs7p2uQeJxui2_9deltalake, [16 x i8] c"\A8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtB8_5table13TableProvider14scan_with_args0Cs7p2uQeJxui2_9deltalake }>, align 8
@463 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtBP_5table13TableProvider6update0ECs7p2uQeJxui2_9deltalake, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog4view9ViewTableNtNtB8_5table13TableProvider6update0Cs7p2uQeJxui2_9deltalake }>, align 8
@464 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider11delete_from0ECs7p2uQeJxui2_9deltalake, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider11delete_from0Cs7p2uQeJxui2_9deltalake }>, align 8
@465 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args0ECs7p2uQeJxui2_9deltalake, [16 x i8] c"\A8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args0Cs7p2uQeJxui2_9deltalake }>, align 8
@466 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider6update0ECs7p2uQeJxui2_9deltalake, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider6update0Cs7p2uQeJxui2_9deltalake }>, align 8
@467 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1294208861291987719 to ptr), ptr inttoptr (i64 7526452654611091669 to ptr) }>, align 8
@switch.table._RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake = private unnamed_addr constant [5 x i8] c"\05\0C\0B\0B\04", align 8
@switch.table._RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake.1500 = private unnamed_addr constant [5 x ptr] [ptr @415, ptr @416, ptr @417, ptr @418, ptr @419], align 8
@switch.table._RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5value18RatioMergeStrategyNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake = private unnamed_addr constant [3 x ptr] [ptr @356, ptr @357, ptr @358], align 8
@switch.table._RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statement25TransactionIsolationLevelNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake = private unnamed_addr constant [5 x i8] c"\0F\0D\0E\0C\08", align 8
@switch.table._RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statement25TransactionIsolationLevelNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake.1501 = private unnamed_addr constant [5 x ptr] [ptr @429, ptr @430, ptr @431, ptr @432, ptr @433], align 8
@switch.table._RNvXsg_NtCseo6ZV82fEK1_3url6parserNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt = private unnamed_addr constant [10 x i8] c"\09\09\0B\12\12\16\16 \19\08", align 8
@switch.table._RNvXsg_NtCseo6ZV82fEK1_3url6parserNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.1502 = private unnamed_addr constant [10 x ptr] [ptr @405, ptr @406, ptr @407, ptr @408, ptr @409, ptr @410, ptr @411, ptr @412, ptr @413, ptr @414], align 8

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMNtCs2y6mmZ7bjoM_12tracing_core10subscriberDNtB3_10SubscriberEL_12downcast_refINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer18OpenTelemetryLayerINtNtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layered7LayeredNtNtNtB2v_6filter3env9EnvFilterNtNtNtB2v_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(152) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !3, !nonnull !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) @0, i64 16, i1 false)
  %i.d = call { i64, ptr } %i.c(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.a) #32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1
  %i.g = trunc nuw i64 %i.e to i1
  %.sroa.0.0 = select i1 %i.g, ptr %i.f, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMNtCs2y6mmZ7bjoM_12tracing_core10subscriberDNtB3_10SubscriberEL_12downcast_refINtNtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layered7LayeredNtNtNtB1p_6filter3env9EnvFilterNtNtNtB1p_8registry7sharded8RegistryEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(152) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !3, !nonnull !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) @1, i64 16, i1 false)
  %i.d = call { i64, ptr } %i.c(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.a) #32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1
  %i.g = trunc nuw i64 %i.e to i1
  %.sroa.0.0 = select i1 %i.g, ptr %i.f, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMNtCs2y6mmZ7bjoM_12tracing_core10subscriberDNtB3_10SubscriberEL_12downcast_refNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter13layer_filters22MagicPlfDowncastMarkerECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(152) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !3, !nonnull !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) @2, i64 16, i1 false)
  %i.d = call { i64, ptr } %i.c(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.a) #32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1
  %i.g = trunc nuw i64 %i.e to i1
  %.sroa.0.0 = select i1 %i.g, ptr %i.f, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMNtCs2y6mmZ7bjoM_12tracing_core10subscriberDNtB3_10SubscriberEL_12downcast_refNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded8RegistryECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(152) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !3, !nonnull !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) @3, i64 16, i1 false)
  %i.d = call { i64, ptr } %i.c(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.a) #32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1
  %i.g = trunc nuw i64 %i.e to i1
  %.sroa.0.0 = select i1 %i.g, ptr %i.f, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMNtCskFSgV2vI2Ct_13opentelemetry5traceNtB3_5Event3newINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 60), (64, 68)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4, i32 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %5, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMNtCskFSgV2vI2Ct_13opentelemetry5traceNtB3_5Event3newNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 60), (64, 68)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4, i32 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %5, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMNtNtCskFSgV2vI2Ct_13opentelemetry5trace6tracerNtB3_11SpanBuilder15with_start_timeNtNtCs2pqxYH9ZEk8_3std4time10SystemTimeECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([272 x i8]) align 16 captures(none) dereferenceable(272) initializes((0, 124), (128, 140), (144, 265)) %0, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(272) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i128, ptr %1, align 16, !range !4, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i128, ptr %i.b, align 16
  store i128 %i.a, ptr %0, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %i.c, ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load <2 x i64>, ptr %i.e, align 16
  store <2 x i64> %i.g, ptr %i.f, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.i = load i8, ptr %i.h, align 8, !range !5, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.l, ptr noundef nonnull align 16 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %2, ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %3, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.p = load i64, ptr %i.o, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.r = load i32, ptr %i.q, align 8, !range !6, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.p, ptr %i.s, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.x, ptr noundef nonnull align 16 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ab, ptr noundef nonnull align 16 dereferenceable(24) %i.aa, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ad, ptr noundef nonnull align 16 dereferenceable(64) %i.ac, i64 64, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCskFSgV2vI2Ct_13opentelemetry5trace6tracerNtB3_11SpanBuilder9from_nameReECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([272 x i8]) align 16 captures(none) dereferenceable(272) initializes((0, 16), (32, 40), (48, 112), (120, 124), (136, 140), (144, 265)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [272 x i8], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i128 0, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.b, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i8 5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 4 uses
  store i64 0, ptr %i.d, align 16
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i64 0, ptr %.sroa.516.0..sroa_idx, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i32 1000000000, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i32 1000000000, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 2 uses
  store i64 -9223372036854775808, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  store i64 -9223372036854775808, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  store i64 -9223372036854775808, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  store i64 -9223372036854775807, ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 -9223372036854775808, ptr %i.k, align 16
  store i128 0, ptr %0, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 5, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 -9223372036854775808, ptr %i.n, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 1000000000, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 1000000000, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.r, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.t, ptr noundef nonnull align 16 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.u, ptr noundef nonnull align 16 dereferenceable(64) %i.k, i64 64, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs0_NtCs4Y5ccqZjUYD_25datafusion_common_runtime8join_setINtB6_7JoinSetTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE5spawnNCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = tail call noundef nonnull ptr @_RINvNtNtCskQDtHcQtBkN_5tokio4task5spawn5spawnINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBM_6future6future6Futurep6OutputTjINtNtBM_6result6ResultINtNtB1i_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtBM_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  %i.e = tail call noundef nonnull ptr @_RNvMs_NtNtCskQDtHcQtBkN_5tokio4task8join_setINtB4_7JoinSetTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE6insertCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.d)
  ret ptr %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB6_18BatchSpanProcessor20get_spans_and_exportNtNtCs1e4wyRlCFp2_18opentelemetry_otlp4span12SpanExporterECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull align 8 dereferenceable(16) %4, ptr nofree noundef nonnull align 8 captures(none) %5, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.731.i.i = alloca [344 x i8], align 8     ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.416.i.i = alloca [344 x i8], align 8     ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [352 x i8], align 16              ; 2 uses
  %i.g = alloca [352 x i8], align 16              ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = load atomic i64, ptr %5 monotonic, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 -9223372036854775806, ptr %i.h, align 8
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.val = load i64, ptr %1, align 8, !range !7, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load ptr, ptr %i.j, align 8            ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.433.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val6, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val6, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit
  %.sroa.0.053 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.gx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit ]
  br label %bb.b

._crit_edge:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.b:                                             ; preds = %.preheader, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !8)
  switch i64 %.val, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.ag
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([352 x i8]) align 16 captures(none) dereferenceable(352) %i.g, ptr noundef nonnull align 128 %.val6)
          to label %._RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exitthread-pre-split_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

._RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exitthread-pre-split_crit_edge: ; preds = %bb.c
  %.pr.pre = load i64, ptr %i.g, align 16
  br label %_RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416.i.i)
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.backedge, %bb.d
  %.sroa.0.034.i.i.i = phi i32 [ 0, %bb.d ], [ %.sroa.0.034.i.i.i.be, %.backedge.i.i.i.backedge ] ; 16 uses
  %i.t = load atomic i64, ptr %.val6 acquire, align 8, !noalias !14 ; 5 uses
  %i.u = load atomic ptr, ptr %i.n acquire, align 8, !noalias !14 ; 7 uses
  %i.v = lshr i64 %i.t, 1                         ; 2 uses
  %i.w = and i64 %i.v, 31                         ; 5 uses
  %i.x = icmp eq i64 %i.w, 31
  br i1 %i.x, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.backedge.i.i.i
  %i.y = icmp ult i32 %.sroa.0.034.i.i.i, 7
  br i1 %i.y, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.g:                                             ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.g
  %i.z = mul nuw i32 %.sroa.0.034.i.i.i, %.sroa.0.034.i.i.i ; 2 uses
  %xtraiter168 = and i32 %i.z, 7                  ; 3 uses
  %i.aa = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.aa, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter172 = and i32 %i.z, 56
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %niter173 = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter173.next.7, %.lr.ph.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  %niter173.next.7 = add i32 %niter173, 8         ; 2 uses
  %niter173.ncmp.7 = icmp eq i32 %niter173.next.7, %unroll_iter172
  br i1 %niter173.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod170.not = icmp eq i32 %xtraiter168, 0
  br i1 %lcmp.mod170.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %lcmp.mod171 = icmp ne i32 %xtraiter168, 0
  call void @llvm.assume(i1 %lcmp.mod171)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %epil.iter169 = phi i32 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter169.next, %.lr.ph.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !14
  %epil.iter169.next = add i32 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i32 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !17

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.f, %bb.g
  %i.ab = add i32 %.sroa.0.034.i.i.i, 1
  br label %.backedge.i.i.i.backedge

bb.h:                                             ; preds = %.backedge.i.i.i
  %i.ac = add i64 %i.t, 2                         ; 2 uses
  %i.ad = and i64 %i.t, 1
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  fence seq_cst
  %i.af = load atomic i64, ptr %i.o monotonic, align 8, !noalias !14 ; 3 uses
  %i.ag = lshr i64 %i.af, 1
  %i.ah = icmp eq i64 %i.v, %i.ag
  br i1 %i.ah, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.unshifted.i.i.i = xor i64 %i.af, %i.t
  %.not.i.i.i = icmp ugt i64 %.not.unshifted.i.i.i, 63
  %i.ai = zext i1 %.not.i.i.i to i64
  %spec.select.i.i.i = or disjoint i64 %i.ac, %i.ai
  br label %bb.l
end_hunk_0
