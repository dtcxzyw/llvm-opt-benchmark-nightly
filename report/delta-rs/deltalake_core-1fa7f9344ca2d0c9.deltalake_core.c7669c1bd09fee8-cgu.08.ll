inline.NumInlined: 16156
inline.NumDeleted: 5265
begin_hunk_0_@_RNvMNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2u_3mem4dropB1H_EE8pop_nextCs14kWLkQVSKO_14deltalake_core:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEENCNvXs0_NtNtBc_4task8join_setINtB5E_7JoinSetB2n_ENtNtNtB2u_3ops4drop4Drop4drop0E8pop_nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = tail call noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E8pop_backCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask12remote_abort(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.e)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.c
  br i1 %i.g, label %bb.d, label %.body

bb.d:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.e)
          to label %.body unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.h = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.e)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  br i1 %i.h, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.noexc
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.e)
          to label %bb.j unwind label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i, %bb.d, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.h ], [ %i.f, %bb.d ], [ %i.f, %.noexc.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !32796)
  call void @llvm.experimental.noalias.scope.decl(metadata !32799)
  %i.k = load ptr, ptr %i.b, align 8, !alias.scope !32802, !nonnull !4, !noundef !4
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !32802
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.m

bb.j:                                             ; preds = %.noexc, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !32803)
  call void @llvm.experimental.noalias.scope.decl(metadata !32806)
  %i.n = load ptr, ptr %i.b, align 8, !alias.scope !32809, !nonnull !4, !noundef !4
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !32809
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs14kWLkQVSKO_14deltalake_core.exit6

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs14kWLkQVSKO_14deltalake_core.exit6

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs14kWLkQVSKO_14deltalake_core.exit6: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs14kWLkQVSKO_14deltalake_core.exit6
  ret i1 %.not

bb.m:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCshmPyUV8PP35_6chrono6offsetINtB5_11LocalResultINtNtB7_8datetime8DateTimeNtNtB5_3utc3UtcEE6unwrapCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(28) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [12 x i8], align 4                ; 3 uses
  %i.c = alloca [12 x i8], align 4                ; 3 uses
  %i.d = load i32, ptr %1, align 4, !range !3741, !noundef !4
  switch i32 %i.d, label %default.unreachable9 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ], !prof !32810

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %i.f, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.g, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsz_NtCshmPyUV8PP35_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.42.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.h, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsz_NtCshmPyUV8PP35_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @341, ptr noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #39
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @342, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB5_17DeltaTableBuilder13build_storage(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(336) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.9 = alloca [16 x i8], align 8            ; 4 uses
  %i.f = alloca [224 x i8], align 16              ; 5 uses
  %i.g = alloca [224 x i8], align 8               ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [224 x i8], align 8               ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [32 x i8], align 8                ; 8 uses
  %i.aa = alloca [8 x i8], align 8                ; 5 uses
  %i.ab = alloca [224 x i8], align 8              ; 4 uses
  %i.ac = alloca [48 x i8], align 8               ; 8 uses
  %i.ad = alloca [48 x i8], align 8               ; 4 uses
  %i.ae = alloca [224 x i8], align 8              ; 10 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 5 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [32 x i8], align 8               ; 8 uses
  %i.ao = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ap = icmp ult i64 %i.ao, 2
  br i1 %i.ap, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.aq = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storage10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.aq, label %bb.c [
    i8 0, label %bb.j
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !32811

bb.c:                                             ; preds = %bb.b
  %i.ar = tail call noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storage10___CALLSITE) #42 ; 2 uses
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.06.0 = phi i8 [ %i.ar, %bb.c ], [ %i.aq, %bb.b ], [ %i.aq, %bb.b ]
  %i.at = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storage10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.au = tail call noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at, i8 noundef %.sroa.06.0)
  br i1 %i.au, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.av = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storage10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %i.ax, ptr %i.ak, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.442.0..sroa_idx, align 8
  store ptr @343, ptr %i.al, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ak, ptr %i.ay, align 8
  store ptr %i.al, ptr %i.am, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @74, ptr %i.az, align 8
  store i64 1, ptr %i.an, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.aw, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.an)
  %i.ba = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !32812
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.f, label %_RNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storage0Bb_.exit

bb.f:                                             ; preds = %bb.e
  %i.bc = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !32812 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, 6
  call void @llvm.assume(i1 %i.bd)
  %i.be = icmp samesign ugt i64 %i.bc, 3
  br i1 %i.be, label %bb.g, label %_RNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storage0Bb_.exit

bb.g:                                             ; preds = %bb.f
  %i.bf = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storage10___CALLSITE, align 8, !noalias !32812, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !4, !noundef !4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !4
  store i64 4, ptr %i.d, align 8, !noalias !32812
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bh, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !32812
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.bj, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !32812
  %i.bk = call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0      ; 2 uses
  %i.bm = extractvalue { ptr, ptr } %i.bk, 1      ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !invariant.load !4, !nonnull !4
  %i.bp = call noundef zeroext i1 %i.bo(ptr noundef %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d) #43, !inline_history !32815
  br i1 %i.bp, label %bb.h, label %_RNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storage0Bb_.exit

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bf, ptr noundef nonnull %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bm, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.an)
  br label %_RNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storage0Bb_.exit

_RNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storage0Bb_.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.m, %bb.k, %bb.j, %_RNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storage0Bb_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB5_17DeltaTableBuilder15storage_options(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %1)
  call void @_RINvMs2_NtNtCs14kWLkQVSKO_14deltalake_core8logstore6configNtB6_13StorageConfig13parse_optionsNtNtCs6Po7BT7Nknu_5alloc6string6StringB1t_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1t_B1t_EEBa_(ptr noalias noundef nonnull sret([224 x i8]) align 16 captures(none) dereferenceable(224) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.bq = load i64, ptr %i.f, align 16, !range !1535, !noundef !4 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 3
  br i1 %i.br, label %bb.n, label %bb.o

bb.j:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %i.bs = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.k, label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.bu = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.bv = icmp ult i64 %i.bu, 6
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp samesign ugt i64 %i.bu, 3
  br i1 %i.bw, label %bb.l, label %bb.i

bb.l:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storage10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !4, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !4
  store i64 4, ptr %i.aj, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.bz, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %i.cb, ptr %.sroa.547.0..sroa_idx, align 8
  %i.cc = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.cd = extractvalue { ptr, ptr } %i.cc, 0      ; 2 uses
  %i.ce = extractvalue { ptr, ptr } %i.cc, 1      ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !invariant.load !4, !nonnull !4
  %i.ch = call noundef zeroext i1 %i.cg(ptr noundef %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj) #43
  br i1 %i.ch, label %bb.m, label %bb.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.ci = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storage10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.ck, ptr %i.af, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.451.0..sroa_idx, align 8
  store ptr @343, ptr %i.ag, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %i.cl, align 8
  store ptr %i.ag, ptr %i.ah, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @74, ptr %i.cm, align 8
  store i64 1, ptr %i.ai, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ah, ptr %.sroa.453.0..sroa_idx, align 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 1, ptr %.sroa.554.0..sroa_idx, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.cj, ptr %i.cn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bx, ptr noundef nonnull %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.i

bb.n:                                             ; preds = %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.co, i64 96, i1 false)
  br label %bb.bo

bb.o:                                             ; preds = %bb.i
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.415.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.556.0..sroa_idx, i64 104, i1 false)
  store i64 %i.bq, ptr %i.ae, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.657.0..sroa_idx, i64 112, i1 false)
  %i.cp = load i64, ptr %1, align 8, !range !1535, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.cp, 3
  br i1 %.not, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !32816)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.not.i = icmp eq i64 %i.cp, 2
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cs = load i8, ptr %i.cr, align 8, !range !29, !alias.scope !32816, !noalias !32819, !noundef !4
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !32816, !noalias !32819
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !range !201, !alias.scope !32816, !noalias !32819, !noundef !4
  %.not4.i = icmp eq i64 %i.cw, -9223372036854775808
  br i1 %.not4.i, label %bb.x, label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.cx, align 8, !range !3, !alias.scope !32816, !noalias !32819, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5.i = load ptr, ptr %i.cy, align 8, !alias.scope !32816, !noalias !32819, !nonnull !4, !noundef !4 ; 2 uses
  %i.cz = trunc nuw i64 %.val.i to i1
  %i.da = atomicrmw add ptr %.val5.i, i64 1 monotonic, align 8, !noalias !32821
  %i.db = icmp slt i64 %i.da, 0                   ; 2 uses
  br i1 %i.cz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  br i1 %i.db, label %bb.v, label %_RNvXs0_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB5_6HandleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.t:                                             ; preds = %bb.r
  br i1 %i.db, label %bb.u, label %_RNvXs0_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB5_6HandleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.u:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.s
  call void @llvm.trap()
  unreachable

_RNvXs0_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB5_6HandleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.t, %bb.s
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.t ], [ 1, %bb.s ]
  %i.dc = ptrtoint ptr %.val5.i to i64
  br label %bb.z

bb.w:                                             ; preds = %bb.q
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cv)
          to label %.noexc unwind label %bb.bq

.noexc:                                           ; preds = %bb.w
  %.sroa.01.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !32821
  br label %bb.x

bb.x:                                             ; preds = %.noexc, %bb.q
  %.sroa.01.0.i = phi i64 [ %.sroa.01.0.copyload.i, %.noexc ], [ -9223372036854775808, %bb.q ]
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.de = load i8, ptr %i.dd, align 1, !range !29, !alias.scope !32816, !noalias !32819, !noundef !4
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.dg = load i8, ptr %i.df, align 2, !range !29, !alias.scope !32816, !noalias !32819, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i64 16, i1 false), !noalias !32816
  br label %bb.z

bb.y:                                             ; preds = %bb.o, %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.dj = load i64, ptr %i.di, align 8, !range !201, !noundef !4
  %.not101 = icmp eq i64 %i.dj, -9223372036854775808
  br i1 %.not101, label %bb.aa, label %bb.at

bb.z:                                             ; preds = %bb.x, %_RNvXs0_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB5_6HandleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  %.sroa.12.0 = phi i8 [ undef, %_RNvXs0_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB5_6HandleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.dg, %bb.x ]
  %.sroa.11.0 = phi i8 [ undef, %_RNvXs0_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB5_6HandleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.de, %bb.x ]
  %.sroa.10.0 = phi i8 [ undef, %_RNvXs0_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB5_6HandleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.cs, %bb.x ]
  %.sroa.7.0 = phi i64 [ %i.dc, %_RNvXs0_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB5_6HandleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.01.0.i, %bb.x ]
  %.sroa.5117.0 = phi i64 [ %.sroa.0.0.i.i, %_RNvXs0_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB5_6HandleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.cu, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.7121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7121.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  store i64 %i.cp, ptr %i.ac, align 8
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %.sroa.5117.0, ptr %.sroa.5119.0..sroa_idx, align 8
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.sroa.7.0, ptr %.sroa.6120.0..sroa_idx, align 8
  %.sroa.8122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i8 %.sroa.10.0, ptr %.sroa.8122.0..sroa_idx, align 8
  %.sroa.9123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 41
  store i8 %.sroa.11.0, ptr %.sroa.9123.0..sroa_idx, align 1
  %.sroa.10124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 42
  store i8 %.sroa.12.0, ptr %.sroa.10124.0..sroa_idx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ab, ptr noundef nonnull align 8 dereferenceable(224) %i.ae, i64 224, i1 false)
  call void @_RNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core8logstore6configNtB5_13StorageConfig15with_io_runtime(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.ae, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(224) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.y

bb.aa:                                            ; preds = %bb.y
  %i.dk = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.dl = icmp ult i64 %i.dk, 2
  br i1 %i.dl, label %bb.ab, label %bb.am

bb.ab:                                            ; preds = %bb.aa
  %i.dm = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storages0_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.dm, label %bb.ac [
    i8 0, label %bb.am
    i8 1, label %bb.ad
    i8 2, label %bb.ad
  ], !prof !32811

bb.ac:                                            ; preds = %bb.ab
  %i.dn = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storages0_10___CALLSITE)
          to label %bb.ae unwind label %bb.bq     ; 2 uses

bb.ad:                                            ; preds = %bb.ab, %bb.ab, %bb.ae
  %.sroa.033.0 = phi i8 [ %i.dn, %bb.ae ], [ %i.dm, %bb.ab ], [ %i.dm, %bb.ab ]
  %i.do = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storages0_10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.dp = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.do, i8 noundef %.sroa.033.0)
          to label %bb.af unwind label %bb.bq

bb.ae:                                            ; preds = %bb.ac
  %i.dq = icmp eq i8 %i.dn, 0
  br i1 %i.dq, label %bb.am, label %bb.ad

bb.af:                                            ; preds = %bb.ad
  br i1 %i.dp, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.dr = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storages0_10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.dt, ptr %i.m, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs4_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.480.0..sroa_idx, align 8
  store ptr @344, ptr %i.n, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.du, align 8
  store ptr %i.n, ptr %i.o, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @74, ptr %i.dv, align 8
  store i64 1, ptr %i.p, align 8
  %.sroa.035.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %.sroa.035.sroa.4.0..sroa_idx, align 8
  %.sroa.035.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 1, ptr %.sroa.035.sroa.5.0..sroa_idx, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.ds, ptr %.sroa.436.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
          to label %.noexc107 unwind label %bb.bq

.noexc107:                                        ; preds = %bb.ag
  %i.dw = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !32822
  %i.dx = icmp eq i8 %i.dw, 0
  br i1 %i.dx, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %.noexc107
  %i.dy = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !32822 ; 2 uses
  %i.dz = icmp ult i64 %i.dy, 6
  call void @llvm.assume(i1 %i.dz)
  %i.ea = icmp samesign ugt i64 %i.dy, 3
  br i1 %i.ea, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.eb = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storages0_10___CALLSITE, align 8, !noalias !32822, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !4, !noundef !4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.ef = load i64, ptr %i.ee, align 8, !noundef !4
  store i64 4, ptr %i.b, align 8, !noalias !32822
  %.sroa.3.0..sroa_idx.i105 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ed, ptr %.sroa.3.0..sroa_idx.i105, align 8, !noalias !32822
  %.sroa.5.0..sroa_idx.i106 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ef, ptr %.sroa.5.0..sroa_idx.i106, align 8, !noalias !32822
  %i.eg = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc108 unwind label %bb.bq ; 2 uses

.noexc108:                                        ; preds = %bb.ai
  %i.eh = extractvalue { ptr, ptr } %i.eg, 0      ; 2 uses
  %i.ei = extractvalue { ptr, ptr } %i.eg, 1      ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !invariant.load !4, !nonnull !4
  %i.el = invoke noundef zeroext i1 %i.ek(ptr noundef %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #43
          to label %.noexc109 unwind label %bb.bq, !inline_history !32825

.noexc109:                                        ; preds = %.noexc108
  br i1 %i.el, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.noexc109
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.eb, ptr noundef nonnull %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ei, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
          to label %bb.ak unwind label %bb.bq

bb.ak:                                            ; preds = %.noexc109, %bb.ah, %.noexc107, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.al

bb.al:                                            ; preds = %bb.aq, %bb.as, %bb.an, %bb.am, %bb.ak
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 8 dereferenceable(224) %i.ae, i64 224, i1 false)
  call void @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore12logstore_for(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.em, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(224) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bo

bb.am:                                            ; preds = %bb.ae, %bb.ab, %bb.aa, %bb.af
  %i.en = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.eo = icmp eq i8 %i.en, 0
  br i1 %i.eo, label %bb.an, label %bb.al

bb.an:                                            ; preds = %bb.am
  %i.ep = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.eq = icmp ult i64 %i.ep, 6
  call void @llvm.assume(i1 %i.eq)
  %i.er = icmp samesign ugt i64 %i.ep, 3
  br i1 %i.er, label %bb.ao, label %bb.al

bb.ao:                                            ; preds = %bb.an
  %i.es = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storages0_10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !nonnull !4, !noundef !4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  %i.ew = load i64, ptr %i.ev, align 8, !noundef !4
  store i64 4, ptr %i.l, align 8
  %.sroa.385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.eu, ptr %.sroa.385.0..sroa_idx, align 8
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.ew, ptr %.sroa.586.0..sroa_idx, align 8
  %i.ex = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ap unwind label %bb.bq     ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %i.ey = extractvalue { ptr, ptr } %i.ex, 0      ; 2 uses
  %i.ez = extractvalue { ptr, ptr } %i.ex, 1      ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !invariant.load !4, !nonnull !4
  %i.fc = invoke noundef zeroext i1 %i.fb(ptr noundef %i.ey, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.aq unwind label %bb.bq

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.fc, label %bb.ar, label %bb.al

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.fd = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storages0_10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.ff, ptr %i.h, align 8
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs4_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.490.0..sroa_idx, align 8
  store ptr @344, ptr %i.i, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %i.fg, align 8
  store ptr %i.i, ptr %i.j, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @74, ptr %i.fh, align 8
  store i64 1, ptr %i.k, align 8
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %.sroa.492.0..sroa_idx, align 8
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 1, ptr %.sroa.593.0..sroa_idx, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.fe, ptr %i.fi, align 8
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.es, ptr noundef nonnull %i.ey, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ez, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
          to label %bb.as unwind label %bb.bq

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.al

bb.at:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.dh, ptr %i.aa, align 8
  %i.fj = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.fk = icmp ult i64 %i.fj, 2
  br i1 %i.fk, label %bb.au, label %bb.bf

bb.au:                                            ; preds = %bb.at
  %i.fl = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storages_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.fl, label %bb.av [
    i8 0, label %bb.bf
    i8 1, label %bb.aw
    i8 2, label %bb.aw
  ], !prof !32811

bb.av:                                            ; preds = %bb.au
  %i.fm = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storages_10___CALLSITE)
          to label %bb.ax unwind label %bb.bq     ; 2 uses

bb.aw:                                            ; preds = %bb.au, %bb.au, %bb.ax
  %.sroa.023.0 = phi i8 [ %i.fm, %bb.ax ], [ %i.fl, %bb.au ], [ %i.fl, %bb.au ]
  %i.fn = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storages_10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.fo = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fn, i8 noundef %.sroa.023.0)
          to label %bb.ay unwind label %bb.bq

bb.ax:                                            ; preds = %bb.av
  %i.fp = icmp eq i8 %i.fm, 0
  br i1 %i.fp, label %bb.bf, label %bb.aw

bb.ay:                                            ; preds = %bb.aw
  br i1 %i.fo, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.fq = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storages_10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.aa, ptr %i.w, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.462.0..sroa_idx, align 8
  store ptr @345, ptr %i.x, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.w, ptr %i.fs, align 8
  store ptr %i.x, ptr %i.y, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @74, ptr %i.ft, align 8
  store i64 1, ptr %i.z, align 8
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.y, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 1, ptr %.sroa.025.sroa.5.0..sroa_idx, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.fr, ptr %.sroa.426.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %.noexc113 unwind label %bb.bq

.noexc113:                                        ; preds = %bb.az
  %i.fu = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !32826
  %i.fv = icmp eq i8 %i.fu, 0
  br i1 %i.fv, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %.noexc113
  %i.fw = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !32826 ; 2 uses
  %i.fx = icmp ult i64 %i.fw, 6
  call void @llvm.assume(i1 %i.fx)
  %i.fy = icmp samesign ugt i64 %i.fw, 3
  br i1 %i.fy, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.fz = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storages_10___CALLSITE, align 8, !noalias !32826, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gb = load ptr, ptr %i.ga, align 8, !nonnull !4, !noundef !4
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.gd = load i64, ptr %i.gc, align 8, !noundef !4
  store i64 4, ptr %i.a, align 8, !noalias !32826
  %.sroa.3.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.gb, ptr %.sroa.3.0..sroa_idx.i111, align 8, !noalias !32826
  %.sroa.5.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.gd, ptr %.sroa.5.0..sroa_idx.i112, align 8, !noalias !32826
  %i.ge = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc114 unwind label %bb.bq ; 2 uses

.noexc114:                                        ; preds = %bb.bb
  %i.gf = extractvalue { ptr, ptr } %i.ge, 0      ; 2 uses
  %i.gg = extractvalue { ptr, ptr } %i.ge, 1      ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8, !invariant.load !4, !nonnull !4
  %i.gj = invoke noundef zeroext i1 %i.gi(ptr noundef %i.gf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #43
          to label %.noexc115 unwind label %bb.bq, !inline_history !32829

.noexc115:                                        ; preds = %.noexc114
  br i1 %i.gj, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.noexc115
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fz, ptr noundef nonnull %i.gf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gg, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.bd unwind label %bb.bq

bb.bd:                                            ; preds = %.noexc115, %bb.ba, %.noexc113, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.be

bb.be:                                            ; preds = %bb.bj, %bb.bl, %bb.bg, %bb.bf, %bb.bd
  %i.gk = load ptr, ptr %i.dh, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.gm = load ptr, ptr %i.gl, align 8, !nonnull !4, !align !17, !noundef !4
  %i.gn = atomicrmw add ptr %i.gk, i64 1 monotonic, align 8
  %i.go = icmp slt i64 %i.gn, 0
  br i1 %i.go, label %bb.bn, label %bb.bm

bb.bf:                                            ; preds = %bb.ax, %bb.au, %bb.at, %bb.ay
  %i.gp = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.gq = icmp eq i8 %i.gp, 0
  br i1 %i.gq, label %bb.bg, label %bb.be

bb.bg:                                            ; preds = %bb.bf
  %i.gr = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.gs = icmp ult i64 %i.gr, 6
  call void @llvm.assume(i1 %i.gs)
  %i.gt = icmp samesign ugt i64 %i.gr, 3
  br i1 %i.gt, label %bb.bh, label %bb.be

bb.bh:                                            ; preds = %bb.bg
  %i.gu = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storages_10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !nonnull !4, !noundef !4
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.gy = load i64, ptr %i.gx, align 8, !noundef !4
  store i64 4, ptr %i.v, align 8
  %.sroa.367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.gw, ptr %.sroa.367.0..sroa_idx, align 8
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.gy, ptr %.sroa.568.0..sroa_idx, align 8
  %i.gz = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.bi unwind label %bb.bq     ; 2 uses

bb.bi:                                            ; preds = %bb.bh
  %i.ha = extractvalue { ptr, ptr } %i.gz, 0      ; 2 uses
  %i.hb = extractvalue { ptr, ptr } %i.gz, 1      ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hd = load ptr, ptr %i.hc, align 8, !invariant.load !4, !nonnull !4
  %i.he = invoke noundef zeroext i1 %i.hd(ptr noundef %i.ha, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %bb.bj unwind label %bb.bq

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.he, label %bb.bk, label %bb.be

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.hf = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder13build_storages_10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.aa, ptr %i.r, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.472.0..sroa_idx, align 8
  store ptr @345, ptr %i.s, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %i.hh, align 8
  store ptr %i.s, ptr %i.t, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @74, ptr %i.hi, align 8
  store i64 1, ptr %i.u, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.t, ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 1, ptr %.sroa.575.0..sroa_idx, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.hg, ptr %i.hj, align 8
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gu, ptr noundef nonnull %i.ha, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u)
          to label %bb.bl unwind label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.be

bb.bm:                                            ; preds = %bb.be
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.q, ptr noundef nonnull align 8 dereferenceable(224) %i.ae, i64 224, i1 false)
  call void @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore13logstore_with(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noundef nonnull %i.gk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.gm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.hk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(224) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.bo

bb.bn:                                            ; preds = %bb.be
  call void @llvm.trap()
  unreachable

bb.bo:                                            ; preds = %bb.al, %bb.bm, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  ret void

bb.bp:                                            ; preds = %bb.bq
  resume { ptr, i32 } %lpad.thr_comm

bb.bq:                                            ; preds = %bb.bk, %bb.bi, %bb.bh, %bb.bb, %.noexc114, %bb.bc, %bb.aw, %bb.av, %bb.ag, %bb.w, %bb.ar, %bb.ap, %bb.ao, %bb.ai, %.noexc108, %bb.aj, %bb.ad, %bb.ac, %bb.az
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB5_17DeltaTableBuilder5build:bb.a
  store i64 1, ptr %0, align 16
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder17DeltaTableBuilderEBM_(ptr noalias noundef align 8 dereferenceable(336) %1)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit23

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 -9223372036854775808, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.f, ptr %.sroa.627.0..sroa_idx, align 16
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.h, ptr %.sroa.728.0..sroa_idx, align 8
  store i64 0, ptr %0, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.k)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.l, %bb.f ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtCseo6ZV82fEK1_3url3UrlEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %i.o) #40
          to label %bb.i unwind label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtCseo6ZV82fEK1_3url3UrlEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %i.p)
          to label %bb.l unwind label %bb.k

bb.i:                                             ; preds = %bb.k, %.body
  %.pn = phi { ptr, i32 } [ %i.t, %bb.k ], [ %eh.lpad-body, %.body ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !32839, !noundef !4
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.n

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !32842, !noundef !4
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit23, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.u)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit23

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit23: ; preds = %bb.m, %bb.l, %bb.d
  ret void

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit25, %bb.q, %bb.j, %bb.o, %.body, %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit25, %bb.i, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %.pn, %bb.j ], [ %i.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit25 ]
  resume { ptr, i32 } %.pn.pn

bb.o:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtCseo6ZV82fEK1_3url3UrlEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %i.y) #40
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !32845, !noundef !4
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit25, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit25 unwind label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit25: ; preds = %bb.q, %bb.p
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEEB1a_(ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB5_17DeltaTableBuilder8from_url(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([336 x i8]) align 16 captures(none) dereferenceable(336) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [104 x i8], align 8               ; 5 uses
  %i.e = alloca [88 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [88 x i8], align 8                ; 8 uses
  %i.p = alloca [88 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.u, align 8
  store ptr null, ptr %i.c, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %i.v, align 8
  invoke void @_RNvMCseo6ZV82fEK1_3urlNtB2_12ParseOptions5parse(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.ad, %bb.ae, %bb.c
  %.pn47 = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.ci, %bb.ae ], [ %i.ch, %bb.ad ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %1) #40
          to label %common.resume unwind label %bb.ac

bb.c:                                             ; preds = %bb.f, %bb.e, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.x = load i64, ptr %i.o, align 8, !range !201, !noundef !4 ; 2 uses
  %i.y = icmp eq i64 %i.x, -9223372036854775808
  br i1 %i.y, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32848
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 54, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.e
  %i.z = load i64, ptr %i.b, align 8, !range !3, !noalias !32848, !noundef !4
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !201, !noalias !32848, !noundef !4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.af, !prof !1176

bb.f:                                             ; preds = %.noexc
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !32848
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #39
          to label %.noexc49 unwind label %bb.c

.noexc49:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.575.0.copyload = load ptr, ptr %.sroa.575.0..sroa_idx, align 8
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.676.0.copyload = load i64, ptr %.sroa.676.0..sroa_idx, align 8
  %.sroa.777.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.777.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 %i.x, ptr %i.p, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.575.0.copyload, ptr %.sroa.489.0..sroa_idx, align 8
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.676.0.copyload, ptr %.sroa.590.0..sroa_idx, align 8
  %i.af = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ag = icmp ult i64 %i.af, 2
  br i1 %i.ag, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.ah = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder8from_url10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ah, label %bb.i [
    i8 0, label %bb.s
    i8 1, label %bb.j
    i8 2, label %bb.j
  ], !prof !32811

bb.i:                                             ; preds = %bb.h
  %i.ai = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder8from_url10___CALLSITE)
          to label %bb.k unwind label %bb.ae      ; 2 uses

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.k
  %.sroa.014.0 = phi i8 [ %i.ai, %bb.k ], [ %i.ah, %bb.h ], [ %i.ah, %bb.h ]
  %i.aj = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder8from_url10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.ak = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aj, i8 noundef %.sroa.014.0)
          to label %bb.l unwind label %bb.ae

bb.k:                                             ; preds = %bb.i
  %i.al = icmp eq i8 %i.ai, 0
  br i1 %i.al, label %bb.s, label %bb.j

bb.l:                                             ; preds = %bb.j
  br i1 %i.ak, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.am = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder8from_url10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.p, ptr %i.k, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx, align 8
  store ptr @353, ptr %i.l, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %i.ao, align 8
  store ptr %i.l, ptr %i.m, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @74, ptr %i.ap, align 8
  store i64 1, ptr %i.n, align 8
  %.sroa.016.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %.sroa.016.sroa.4.0..sroa_idx, align 8
  %.sroa.016.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 1, ptr %.sroa.016.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %.noexc51 unwind label %bb.ae

.noexc51:                                         ; preds = %bb.m
  %i.aq = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !32851
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.noexc51
  %i.as = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !32851 ; 2 uses
  %i.at = icmp ult i64 %i.as, 6
  call void @llvm.assume(i1 %i.at)
  %i.au = icmp samesign ugt i64 %i.as, 3
  br i1 %i.au, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.av = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder8from_url10___CALLSITE, align 8, !noalias !32851, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !noundef !4
  store i64 4, ptr %i.a, align 8, !noalias !32851
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ax, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !32851
  %.sroa.5.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.az, ptr %.sroa.5.0..sroa_idx.i50, align 8, !noalias !32851
  %i.ba = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc52 unwind label %bb.ae  ; 2 uses

.noexc52:                                         ; preds = %bb.o
  %i.bb = extractvalue { ptr, ptr } %i.ba, 0      ; 2 uses
  %i.bc = extractvalue { ptr, ptr } %i.ba, 1      ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !invariant.load !4, !nonnull !4
  %i.bf = invoke noundef zeroext i1 %i.be(ptr noundef %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #43
          to label %.noexc53 unwind label %bb.ae, !inline_history !32854

.noexc53:                                         ; preds = %.noexc52
  br i1 %i.bf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.noexc53
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.av, ptr noundef nonnull %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bc, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %bb.q unwind label %bb.ae

bb.q:                                             ; preds = %.noexc53, %bb.n, %.noexc51, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %bb.y, %bb.t, %bb.s, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.p, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 -9223372036854775808, ptr %i.bg, align 8
  %i.bh = invoke noundef i64 @_RNvNtCsGK9nvHfnG9_8num_cpus5linux12get_num_cpus()
          to label %bb.z unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.k, %bb.h, %bb.g, %bb.l
  %i.bi = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.t, label %bb.r

bb.t:                                             ; preds = %bb.s
  %i.bk = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 6
  call void @llvm.assume(i1 %i.bl)
  %i.bm = icmp samesign ugt i64 %i.bk, 3
  br i1 %i.bm, label %bb.u, label %bb.r

bb.u:                                             ; preds = %bb.t
  %i.bn = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder8from_url10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !4, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !noundef !4
  store i64 4, ptr %i.j, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.bp, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.br, ptr %.sroa.535.0..sroa_idx, align 8
  %i.bs = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.v unwind label %bb.ae      ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bt = extractvalue { ptr, ptr } %i.bs, 0      ; 2 uses
  %i.bu = extractvalue { ptr, ptr } %i.bs, 1      ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !invariant.load !4, !nonnull !4
  %i.bx = invoke noundef zeroext i1 %i.bw(ptr noundef %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %bb.v
  br i1 %i.bx, label %bb.x, label %bb.r

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.by = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB7_17DeltaTableBuilder8from_url10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.p, ptr %i.f, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.439.0..sroa_idx, align 8
  store ptr @353, ptr %i.g, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.ca, align 8
  store ptr %i.g, ptr %i.h, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @74, ptr %i.cb, align 8
  store i64 1, ptr %i.i, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1, ptr %.sroa.542.0..sroa_idx, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.bz, ptr %i.cc, align 8
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn, ptr noundef nonnull %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bu, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.r

bb.z:                                             ; preds = %bb.r
  %i.cd = shl i64 %i.bh, 2
  %.sroa.017.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.017.sroa.0.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %i.e, i64 88, i1 false)
  %.sroa.017.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %.sroa.017.sroa.0.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false)
  %.sroa.017.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr null, ptr %.sroa.017.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 3, ptr %0, align 16
  %.sroa.017.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.cd, ptr %.sroa.017.sroa.0.sroa.5.0..sroa_idx, align 16
  %.sroa.017.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 1024, ptr %.sroa.017.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.017.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %.sroa.017.sroa.0.sroa.7.0..sroa_idx, align 16
  %.sroa.017.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 0, ptr %.sroa.017.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 2, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
end_hunk_1
begin_hunk_2_@_RNvNtNtCs14kWLkQVSKO_14deltalake_core5table7builder17expand_tilde_path:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.654.0.copyload = load i64, ptr %.sroa.654.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.h, ptr %i.e, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.654.0.copyload, ptr %.sroa.566.0..sroa_idx, align 8
  %i.s = icmp eq i64 %2, 1
  br i1 %i.s, label %bb.n, label %bb.o

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39086
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 54, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !39086
  %i.t = load i64, ptr %i.a, align 8, !range !3, !noalias !39086, !noundef !4
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !201, !noalias !39086, !noundef !4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.u, label %bb.l, label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core5table7builder17expand_tilde_path0B7_.exit, !prof !1176

bb.l:                                             ; preds = %bb.k
  %i.y = load i64, ptr %i.x, align 8, !noalias !39086
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #39, !noalias !39086
  unreachable

_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core5table7builder17expand_tilde_path0B7_.exit: ; preds = %bb.k
  %i.z = load ptr, ptr %i.x, align 8, !noalias !39086, !nonnull !4, !noundef !4 ; 2 uses
  %i.aa = icmp samesign ugt i64 %i.w, 53
  call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %i.z, ptr noundef nonnull align 1 dereferenceable(54) @232, i64 54, i1 false), !noalias !39086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -9223372036854775724, ptr %0, align 16
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %.sroa.216.0..sroa_idx, align 8
  %.sroa.216.sroa.2.0..sroa.216.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.z, ptr %.sroa.216.sroa.2.0..sroa.216.0..sroa_idx.sroa_idx, align 16
  %.sroa.216.sroa.3.0..sroa.216.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 54, ptr %.sroa.216.sroa.3.0..sroa.216.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.y, %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core5table7builder17expand_tilde_path0B7_.exit
  ret void

bb.n:                                             ; preds = %bb.j
  %lhsc39 = load i8, ptr %1, align 1
  %i.ab = icmp eq i8 %lhsc39, 126
  br i1 %i.ab, label %bb.r, label %.thread68

bb.o:                                             ; preds = %bb.j
  %.not.i = icmp ugt i64 %2, 2
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = icmp eq i64 %2, 2
  br i1 %i.ac, label %bb.t, label %.thread68

bb.q:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !39089, !noundef !4
  %i.af = icmp sgt i8 %i.ae, -65
  br i1 %i.af, label %bb.t, label %.thread68

bb.r:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i64 -9223372036854775711, ptr %0, align 16
  br label %bb.y

bb.s:                                             ; preds = %.thread68, %bb.t
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #40
          to label %common.resume unwind label %bb.z

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.ai = add i64 %2, -2
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMs16_NtCs2pqxYH9ZEk8_3std4pathNtB7_4Path4joinReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload, i64 noundef %.sroa.654.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %i.ai)
          to label %bb.v unwind label %bb.s

.thread68:                                        ; preds = %bb.n, %bb.q, %bb.p
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @613) #39
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %.thread68
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 -9223372036854775711, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.al, %bb.w ], [ %i.ah, %bb.s ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.v
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.y

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.m

bb.z:                                             ; preds = %bb.s
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns21add_generated_columns(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([336 x i8]) align 16 captures(none) dereferenceable(336) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(336) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 384307168202282326) %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1680) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [96 x i8], align 16               ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [96 x i8], align 16               ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [104 x i8], align 8               ; 4 uses
  %i.j = alloca [104 x i8], align 8               ; 4 uses
  %i.k = alloca [96 x i8], align 16               ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %.sroa.619 = alloca [40 x i8], align 8          ; 4 uses
  %.sroa.447 = alloca [288 x i8], align 16        ; 3 uses
  %i.m = alloca [112 x i8], align 16              ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.640 = alloca [24 x i8], align 8          ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [112 x i8], align 16              ; 5 uses
  %i.q = alloca [112 x i8], align 16              ; 4 uses
  %i.r = alloca [112 x i8], align 16              ; 5 uses
  %i.s = alloca [112 x i8], align 16              ; 4 uses
  %i.t = alloca [64 x i8], align 8                ; 8 uses
  %i.u = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.631 = alloca [40 x i8], align 8          ; 6 uses
  %i.v = alloca [112 x i8], align 16              ; 11 uses
  %i.w = alloca [112 x i8], align 16              ; 9 uses
  %.sroa.625 = alloca [40 x i8], align 8          ; 6 uses
  %i.x = alloca [336 x i8], align 16              ; 22 uses
  %i.y = alloca [336 x i8], align 16              ; 10 uses
  %i.z = alloca [336 x i8], align 16              ; 11 uses
  %i.aa = alloca [112 x i8], align 16             ; 7 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  %i.ab = alloca [112 x i8], align 16             ; 8 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [32 x i8], align 8               ; 8 uses
  %i.aj = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ak = icmp ult i64 %i.aj, 2
  br i1 %i.ak, label %bb.b, label %bb.m

.body130:                                         ; preds = %.body.loopexit, %.body.loopexit.split-lp, %.loopexit, %.loopexit.split-lp, %.body.i128, %.body115, %.body.thread, %bb.ae, %bb.x
  %.pn89 = phi { ptr, i32 } [ %i.db, %bb.ae ], [ %lpad.phi153, %bb.x ], [ %.pn87140, %.body.thread ], [ %i.eq, %.body.i128 ], [ %.pn85, %.body115 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit159, %.body.loopexit ], [ %lpad.loopexit.split-lp160, %.body.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(336) %1) #40
          to label %common.resume unwind label %bb.bp

.loopexit:                                        ; preds = %bb.t, %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body130

.loopexit.split-lp:                               ; preds = %bb.c, %bb.d, %bb.o, %bb.p, %bb.r, %bb.g, %bb.i, %.noexc96, %bb.j, %bb.ch
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body130

bb.b:                                             ; preds = %bb.a
  %i.al = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns21add_generated_columns10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.al, label %bb.c [
    i8 0, label %bb.m
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !32811

bb.c:                                             ; preds = %bb.b
  %i.am = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns21add_generated_columns10___CALLSITE)
          to label %bb.e unwind label %.loopexit.split-lp ; 2 uses

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.e
  %.sroa.06.0 = phi i8 [ %i.am, %bb.e ], [ %i.al, %bb.b ], [ %i.al, %bb.b ]
  %i.an = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns21add_generated_columns10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.ao = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.an, i8 noundef %.sroa.06.0)
          to label %bb.f unwind label %.loopexit.split-lp

bb.e:                                             ; preds = %bb.c
  %i.ap = icmp eq i8 %i.am, 0
  br i1 %i.ap, label %bb.m, label %bb.d

bb.f:                                             ; preds = %bb.d
  br i1 %i.ao, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.aq = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns21add_generated_columns10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr @614, ptr %i.ag, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr inttoptr (i64 63 to ptr), ptr %i.as, align 8
  store ptr %i.ag, ptr %i.ah, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @74, ptr %i.at, align 8
  store i64 1, ptr %i.ai, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ah, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.ar, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  %i.au = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !39092
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.noexc
  %i.aw = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !39092 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 6
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp samesign ugt i64 %i.aw, 3
  br i1 %i.ay, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.az = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns21add_generated_columns10___CALLSITE, align 8, !noalias !39092, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !4
  store i64 4, ptr %i.a, align 8, !noalias !39092
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bb, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !39092
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.bd, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !39092
  %i.be = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc96 unwind label %.loopexit.split-lp ; 2 uses

.noexc96:                                         ; preds = %bb.i
  %i.bf = extractvalue { ptr, ptr } %i.be, 0      ; 2 uses
  %i.bg = extractvalue { ptr, ptr } %i.be, 1      ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !invariant.load !4, !nonnull !4
  %i.bj = invoke noundef zeroext i1 %i.bi(ptr noundef %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #43
          to label %.noexc97 unwind label %.loopexit.split-lp, !inline_history !39095

.noexc97:                                         ; preds = %.noexc96
  br i1 %i.bj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc97
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.az, ptr noundef nonnull %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai)
          to label %bb.k unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %.noexc97, %bb.h, %.noexc, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.l

bb.l:                                             ; preds = %bb.q, %bb.s, %bb.n, %bb.m, %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.bn, 88
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx
  %i.bp = icmp eq i64 %i.bn, 0
  br i1 %i.bp, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %i.z, i64 320 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.625.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.827.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %.sroa.345.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.447.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br label %bb.t

bb.m:                                             ; preds = %bb.e, %bb.b, %bb.a, %bb.f
  %i.bv = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.n, label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.bx = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 6
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = icmp samesign ugt i64 %i.bx, 3
  br i1 %i.bz, label %bb.o, label %bb.l

bb.o:                                             ; preds = %bb.n
  %i.ca = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns21add_generated_columns10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !4, !noundef !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !4
  store i64 4, ptr %i.af, align 8
  %.sroa.357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.cc, ptr %.sroa.357.0..sroa_idx, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %i.ce, ptr %.sroa.558.0..sroa_idx, align 8
  %i.cf = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.p unwind label %.loopexit.split-lp ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.cg = extractvalue { ptr, ptr } %i.cf, 0      ; 2 uses
  %i.ch = extractvalue { ptr, ptr } %i.cf, 1      ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !invariant.load !4, !nonnull !4
  %i.ck = invoke noundef zeroext i1 %i.cj(ptr noundef %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af)
          to label %bb.q unwind label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  br i1 %i.ck, label %bb.r, label %bb.l

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.cl = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns21add_generated_columns10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr @614, ptr %i.ac, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr inttoptr (i64 63 to ptr), ptr %i.cn, align 8
  store ptr %i.ac, ptr %i.ad, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @74, ptr %i.co, align 8
  store i64 1, ptr %i.ae, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ad, ptr %.sroa.460.0..sroa_idx, align 8
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 1, ptr %.sroa.561.0..sroa_idx, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.cm, ptr %i.cp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ca, ptr noundef nonnull %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ch, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ae)
          to label %bb.s unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.l

bb.t:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.09.0194 = phi ptr [ %i.bl, %.lr.ph ], [ %i.cq, %.backedge ] ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.09.0194, i64 88 ; 2 uses
  %i.cr = invoke noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.09.0194, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4)
end_hunk_2
begin_hunk_3_@_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns22with_generated_columns:bb.a
  %i.o = alloca [64 x i8], align 16               ; 4 uses
  %i.p = alloca [112 x i8], align 16              ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [64 x i8], align 16               ; 4 uses
  %i.s = alloca [112 x i8], align 16              ; 5 uses
  %i.t = alloca [112 x i8], align 16              ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 11 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [32 x i8], align 8               ; 8 uses
  %i.ae = alloca [8 x i8], align 8                ; 3 uses
  %i.af = alloca [112 x i8], align 16             ; 5 uses
  %i.ag = alloca [112 x i8], align 16             ; 7 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 12 uses
  %i.ai = alloca [112 x i8], align 16             ; 10 uses
  %i.aj = alloca [112 x i8], align 16             ; 2 uses
  %i.ak = alloca [112 x i8], align 16             ; 9 uses
  %i.al = alloca [112 x i8], align 16             ; 9 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [32 x i8], align 8               ; 7 uses
  %i.aq = alloca [24 x i8], align 8               ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [32 x i8], align 8               ; 8 uses
  %i.av = alloca [40 x i8], align 8               ; 6 uses
  %i.aw = alloca [16 x i8], align 8               ; 12 uses
  %i.ax = alloca [24 x i8], align 8               ; 14 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !noundef !4 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 104811045873349726
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %0, ptr noundef nonnull align 16 dereferenceable(320) %3, i64 320, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %i.bc = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %3)
          to label %bb.g unwind label %bb.f

bb.d:                                             ; preds = %bb.dj, %bb.di, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit, %bb.b
  ret void

bb.e:                                             ; preds = %.thread161
  br i1 %.not192224, label %bb.dk, label %.thread

bb.f:                                             ; preds = %bb.bg, %bb.g, %bb.c
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.g:                                             ; preds = %bb.c
  %i.be = load ptr, ptr %i.bc, align 8, !nonnull !4, !noundef !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !4, !noundef !4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2q_5slice4iter4IterINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns22with_generated_columns0EE9from_iterB4H_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ax, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bm)
          to label %.lr.ph unwind label %bb.f

.lr.ph:                                           ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.az, 88
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 7 uses
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.011.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.011.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 5 uses
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.026.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.026.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.3.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.383.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  br label %bb.h

._crit_edge:                                      ; preds = %.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.j, ptr noundef nonnull align 16 dereferenceable(320) %3, i64 320, i1 false)
  %i.cm = invoke { ptr, i1 } @_RNvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder3new(ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(320) %i.j)
          to label %bb.dh unwind label %.thread168.loopexit.split-lp ; 2 uses

.thread168.loopexit:                              ; preds = %bb.s, %bb.k, %bb.h, %bb.i, %bb.o, %bb.p, %bb.v, %.noexc125, %bb.u, %bb.aa, %bb.ab, %bb.ad, %bb.x, %bb.af
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread161

.thread168.loopexit.split-lp:                     ; preds = %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread161

bb.h:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.0.0232 = phi ptr [ %i.bo, %.lr.ph ], [ %i.cn, %.backedge ] ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0232, i64 88 ; 2 uses
  %i.co = getelementptr i8, ptr %.sroa.0.0232, i64 8
  %.sroa.0.0.val = load ptr, ptr %i.co, align 8, !nonnull !4, !noundef !4
  %i.cp = getelementptr i8, ptr %.sroa.0.0232, i64 16
  %.sroa.0.0.val121 = load i64, ptr %i.cp, align 8, !noundef !4
  store ptr %.sroa.0.0.val, ptr %i.aw, align 8
  store i64 %.sroa.0.0.val121, ptr %i.bq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.cq = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %3)
          to label %bb.i unwind label %.thread168.loopexit

bb.i:                                             ; preds = %bb.h
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !4, !noundef !4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4
  %i.cu = load i64, ptr %i.bq, align 8, !noundef !4
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema27field_with_unqualified_name(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cs, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cu)
          to label %bb.j unwind label %.thread168.loopexit

bb.j:                                             ; preds = %bb.i
  %i.cv = load i64, ptr %i.av, align 8, !range !38872, !noundef !4
  %i.cw = icmp eq i64 %i.cv, 20
  br i1 %i.cw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.av)
          to label %bb.m unwind label %.thread168.loopexit

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.de
  %.not192 = icmp eq ptr %i.cn, %i.bp
  br i1 %.not192, label %._crit_edge, label %bb.h

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %i.cx = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.cy = icmp ult i64 %i.cx, 2
  br i1 %i.cy, label %bb.n, label %bb.y

bb.n:                                             ; preds = %bb.m
  %i.cz = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns22with_generated_columns10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.cz, label %bb.o [
    i8 0, label %bb.y
    i8 1, label %bb.p
    i8 2, label %bb.p
  ], !prof !32811

bb.o:                                             ; preds = %bb.n
  %i.da = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns22with_generated_columns10___CALLSITE)
          to label %bb.q unwind label %.thread168.loopexit ; 2 uses

bb.p:                                             ; preds = %bb.n, %bb.n, %bb.q
  %.sroa.09.0 = phi i8 [ %i.da, %bb.q ], [ %i.cz, %bb.n ], [ %i.cz, %bb.n ]
  %i.db = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns22with_generated_columns10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.dc = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.db, i8 noundef %.sroa.09.0)
          to label %bb.r unwind label %.thread168.loopexit

bb.q:                                             ; preds = %bb.o
  %i.dd = icmp eq i8 %i.da, 0
  br i1 %i.dd, label %bb.y, label %bb.p

bb.r:                                             ; preds = %bb.p
  br i1 %i.dc, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.de = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns22with_generated_columns10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %i.aw, ptr %i.ar, align 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.454.0..sroa_idx, align 8
  store ptr @616, ptr %i.as, align 8
  store ptr %i.ar, ptr %i.br, align 8
  store ptr %i.as, ptr %i.at, align 8
  store ptr @74, ptr %i.bs, align 8
  store i64 1, ptr %i.au, align 8
  store ptr %i.at, ptr %.sroa.011.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.011.sroa.5.0..sroa_idx, align 8
  store ptr %i.df, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.de, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.au)
          to label %.noexc124 unwind label %.thread168.loopexit

.noexc124:                                        ; preds = %bb.s
  %i.dg = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !39117
  %i.dh = icmp eq i8 %i.dg, 0
  br i1 %i.dh, label %bb.t, label %bb.w

bb.t:                                             ; preds = %.noexc124
  %i.di = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !39117 ; 2 uses
  %i.dj = icmp ult i64 %i.di, 6
  call void @llvm.assume(i1 %i.dj)
  %i.dk = icmp samesign ugt i64 %i.di, 3
  br i1 %i.dk, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.dl = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns22with_generated_columns10___CALLSITE, align 8, !noalias !39117, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !4, !noundef !4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %i.dp = load i64, ptr %i.do, align 8, !noundef !4
  store i64 4, ptr %i.f, align 8, !noalias !39117
  store ptr %i.dn, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !39117
  store i64 %i.dp, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !39117
  %i.dq = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc125 unwind label %.thread168.loopexit ; 2 uses

.noexc125:                                        ; preds = %bb.u
  %i.dr = extractvalue { ptr, ptr } %i.dq, 0      ; 2 uses
  %i.ds = extractvalue { ptr, ptr } %i.dq, 1      ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !invariant.load !4, !nonnull !4
  %i.dv = invoke noundef zeroext i1 %i.du(ptr noundef %i.dr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f) #43
          to label %.noexc126 unwind label %.thread168.loopexit, !inline_history !39120

.noexc126:                                        ; preds = %.noexc125
  br i1 %i.dv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.noexc126
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dl, ptr noundef nonnull %i.dr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ds, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.au)
          to label %bb.w unwind label %.thread168.loopexit

bb.w:                                             ; preds = %.noexc126, %bb.t, %.noexc124, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.x

bb.x:                                             ; preds = %bb.ac, %bb.ae, %bb.z, %bb.y, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.dw = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %3)
          to label %bb.af unwind label %.thread168.loopexit

bb.y:                                             ; preds = %bb.q, %bb.n, %bb.m, %bb.r
  %i.dx = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.dy = icmp eq i8 %i.dx, 0
  br i1 %i.dy, label %bb.z, label %bb.x

bb.z:                                             ; preds = %bb.y
  %i.dz = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ea = icmp ult i64 %i.dz, 6
  call void @llvm.assume(i1 %i.ea)
  %i.eb = icmp samesign ugt i64 %i.dz, 3
  br i1 %i.eb, label %bb.aa, label %bb.x

bb.aa:                                            ; preds = %bb.z
  %i.ec = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns22with_generated_columns10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !nonnull !4, !noundef !4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.eg = load i64, ptr %i.ef, align 8, !noundef !4
  store i64 4, ptr %i.aq, align 8
  store ptr %i.ee, ptr %.sroa.358.0..sroa_idx, align 8
  store i64 %i.eg, ptr %.sroa.559.0..sroa_idx, align 8
  %i.eh = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ab unwind label %.thread168.loopexit ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.ei = extractvalue { ptr, ptr } %i.eh, 0      ; 2 uses
  %i.ej = extractvalue { ptr, ptr } %i.eh, 1      ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !invariant.load !4, !nonnull !4
  %i.em = invoke noundef zeroext i1 %i.el(ptr noundef %i.ei, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq)
          to label %bb.ac unwind label %.thread168.loopexit

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.em, label %bb.ad, label %bb.x

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.en = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns22with_generated_columns10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr %i.aw, ptr %i.am, align 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.463.0..sroa_idx, align 8
  store ptr @616, ptr %i.an, align 8
  store ptr %i.am, ptr %i.bt, align 8
  store ptr %i.an, ptr %i.ao, align 8
  store ptr @74, ptr %i.bu, align 8
  store i64 1, ptr %i.ap, align 8
  store ptr %i.ao, ptr %.sroa.465.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.566.0..sroa_idx, align 8
  store ptr %i.eo, ptr %i.bv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ec, ptr noundef nonnull %i.ei, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ej, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap)
          to label %bb.ae unwind label %.thread168.loopexit

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.x

bb.af:                                            ; preds = %bb.x
  %i.ep = load ptr, ptr %i.dw, align 8, !nonnull !4, !noundef !4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.0232, i64 24
  invoke void @_RINvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr26parse_predicate_expressionRNtNtCs6Po7BT7Nknu_5alloc6string6StringEB6_(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.er, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %2)
          to label %bb.ag unwind label %.thread168.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.es = load i64, ptr %i.ak, align 16, !range !17735, !noundef !4
  %i.et = icmp eq i64 %i.es, 37
  br i1 %i.et, label %bb.ah, label %bb.at

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.bx, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !39121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !39124
  store i64 0, ptr %i.d, align 8, !noalias !39124
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !39124
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !39124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !39124
  store i32 1610612768, ptr %i.by, align 8, !noalias !39124
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !39124
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !39124
  store ptr %i.d, ptr %i.c, align 8, !noalias !39124
  store ptr @819, ptr %i.bz, align 8, !noalias !39124
  %i.eu = invoke noundef zeroext i1 @_RNvXs2_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB5_15DeltaTableErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.bx, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.aj unwind label %.loopexit196, !noalias !39128

.loopexit196:                                     ; preds = %bb.ah
  %lpad.loopexit198 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp197:                            ; preds = %bb.ak
  %lpad.loopexit.split-lp199 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

end_hunk_3
begin_hunk_4_@_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns22with_generated_columns:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ap
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.bo unwind label %.loopexit

bb.as:                                            ; preds = %bb.am
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.at:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.aj, ptr noundef nonnull align 16 dereferenceable(112) %i.ak, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.fe = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4
  %i.ff = load i64, ptr %i.bq, align 8, !noundef !4
  invoke void @_RINvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4Expr5aliasReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.ai, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(112) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fe, i64 noundef %i.ff)
          to label %bb.au unwind label %.loopexit

.body:                                            ; preds = %.loopexit, %bb.cn, %bb.co, %bb.bj, %bb.bi, %bb.av, %bb.aq, %bb.am, %bb.ai, %bb.bn
  %.pn114 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp177, %bb.av ], [ %i.fy, %bb.bj ], [ %lpad.thr_comm176, %bb.bn ], [ %.pn112, %bb.cn ], [ %i.fb, %bb.aq ], [ %i.ez, %bb.am ], [ %lpad.phi200, %bb.ai ], [ %i.fy, %bb.bi ], [ %.pn112, %bb.co ], [ %lpad.loopexit193, %.loopexit ] ; 2 uses
  %i.fg = load i64, ptr %i.ak, align 16, !range !17735, !noundef !4
  %i.fh = icmp eq i64 %i.fg, 37
  br i1 %i.fh, label %bb.dg, label %.thread161

.loopexit:                                        ; preds = %bb.at, %bb.bt, %bb.bu, %bb.cc, %bb.cf, %bb.cg, %bb.ci, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultRNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtB17_5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit150, %bb.cx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.bx, %bb.bz, %.noexc144, %bb.ca, %bb.cl, %bb.cv
  %lpad.loopexit193 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body.thread:                                     ; preds = %bb.bp
  %lpad.loopexit.split-lp194 = landingpad { ptr, i32 }
          cleanup
  br label %.thread161

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.fi = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4
  %i.fj = load i64, ptr %i.bq, align 8, !noundef !4
  invoke void @_RNvMs5_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6Schema15field_with_name(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fi, i64 noundef %i.fj)
          to label %bb.aw unwind label %bb.bn

bb.av:                                            ; preds = %bb.bc
  %lpad.thr_comm.split-lp177 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aw:                                            ; preds = %bb.au
  %i.fk = load i64, ptr %i.ah, align 8, !range !2799, !noundef !4
  %.not = icmp eq i64 %i.fk, -9223372036854775788
  br i1 %.not, label %bb.ax, label %.invoke

.invoke:                                          ; preds = %bb.bd, %bb.aw
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultRNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtB17_5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bn

bb.ax:                                            ; preds = %bb.aw
  %i.fl = load ptr, ptr %i.bw, align 8, !nonnull !4, !align !17, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.af, ptr noundef nonnull align 16 dereferenceable(112) %i.ai, i64 112, i1 false)
  %i.fm = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %3)
          to label %bb.az unwind label %bb.bk

bb.ay:                                            ; preds = %bb.az
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.az:                                            ; preds = %bb.ax
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  invoke void @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr11expr_schemaNtNtB4_4expr4ExprNtB2_13ExprSchemable7cast_to(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.ag, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fo, ptr noundef nonnull %i.fm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) @617)
          to label %bb.ba unwind label %bb.ay

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.fp = load i64, ptr %i.ag, align 16, !range !17735, !noundef !4 ; 2 uses
  %i.fq = icmp eq i64 %i.fp, 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.568.0..sroa_idx, i64 40, i1 false)
  br i1 %i.fq, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fr, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 36, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.fs = load i64, ptr %i.ah, align 8, !range !2799, !alias.scope !39130, !noundef !4
  %i.ft = icmp eq i64 %i.fs, -9223372036854775788
  br i1 %i.ft, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultRNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtB17_5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit131, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultRNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtB17_5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit131 unwind label %bb.av

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.317.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.669.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 %i.fp, ptr %i.ai, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.fu = load i64, ptr %i.ah, align 8, !range !2799, !alias.scope !39133, !noundef !4
  %i.fv = icmp eq i64 %i.fu, -9223372036854775788
  br i1 %i.fv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultRNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtB17_5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit, label %.invoke

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultRNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtB17_5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.invoke, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.al, ptr noundef nonnull align 16 dereferenceable(112) %i.ai, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.bm

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultRNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtB17_5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit131: ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.be

bb.be:                                            ; preds = %bb.bq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultRNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtB17_5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.bg unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.thread unwind label %bb.bh

bb.bg:                                            ; preds = %bb.be
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.f

bb.bh:                                            ; preds = %bb.bf
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.bi:                                            ; preds = %bb.ay, %bb.bk
  %i.fy = phi { ptr, i32 } [ %i.gb, %bb.bk ], [ %i.fn, %bb.ay ] ; 2 uses
  %i.fz = load i64, ptr %i.ah, align 8, !range !2799, !alias.scope !39136, !noundef !4
  %i.ga = icmp eq i64 %i.fz, -9223372036854775788
  br i1 %i.ga, label %.body, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %.body unwind label %bb.bl

bb.bk:                                            ; preds = %bb.ax
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.af) #40
          to label %bb.bi unwind label %bb.bl

bb.bl:                                            ; preds = %bb.co, %bb.bj, %.thread, %.thread161, %bb.dg, %bb.df, %bb.cw, %bb.bn, %bb.bk
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.bm:                                            ; preds = %bb.cy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultRNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtB17_5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit154, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultRNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtB17_5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit
  %i.gd = load i64, ptr %i.ak, align 16, !range !17735, !noundef !4
  %i.ge = icmp eq i64 %i.gd, 37
  br i1 %i.ge, label %bb.cz, label %bb.da

bb.bn:                                            ; preds = %.invoke, %bb.au
  %lpad.thr_comm176 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.ai) #40
          to label %.body unwind label %bb.bl

bb.bo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !39121
  br i1 %.sroa.0.0.i, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.n, ptr noundef nonnull align 16 dereferenceable(96) %i.bx, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvXNtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB4_6errors15DeltaTableErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.m, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.n)
          to label %bb.bq unwind label %.body.thread

bb.bq:                                            ; preds = %bb.bp
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gf, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  store i64 36, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.be

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(320) %3)
  br label %bb.d

bb.br:                                            ; preds = %bb.bo
  %i.gg = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.gh = icmp ult i64 %i.gg, 2
  br i1 %i.gh, label %bb.bs, label %bb.cd

bb.bs:                                            ; preds = %bb.br
  %i.gi = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns22with_generated_columnss_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.gi, label %bb.bt [
    i8 0, label %bb.cd
    i8 1, label %bb.bu
    i8 2, label %bb.bu
  ], !prof !32811

bb.bt:                                            ; preds = %bb.bs
  %i.gj = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns22with_generated_columnss_10___CALLSITE)
          to label %bb.bv unwind label %.loopexit ; 2 uses

bb.bu:                                            ; preds = %bb.bs, %bb.bs, %bb.bv
  %.sroa.024.0 = phi i8 [ %i.gj, %bb.bv ], [ %i.gi, %bb.bs ], [ %i.gi, %bb.bs ]
  %i.gk = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns22with_generated_columnss_10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.gl = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gk, i8 noundef %.sroa.024.0)
          to label %bb.bw unwind label %.loopexit

bb.bv:                                            ; preds = %bb.bt
  %i.gm = icmp eq i8 %i.gj, 0
  br i1 %i.gm, label %bb.cd, label %bb.bu

bb.bw:                                            ; preds = %bb.bu
  br i1 %i.gl, label %bb.bx, label %bb.cd

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.gn = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns22with_generated_columnss_10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.aw, ptr %i.aa, align 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.474.0..sroa_idx, align 8
  store ptr %i.ae, ptr %i.cc, align 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorNtB6_7Display3fmtBA_, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr @618, ptr %i.ab, align 8
  store ptr %i.aa, ptr %i.cd, align 8
  store ptr %i.ab, ptr %i.ac, align 8
  store ptr @74, ptr %i.ce, align 8
  store i64 1, ptr %i.ad, align 8
  store ptr %i.ac, ptr %.sroa.026.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.026.sroa.5.0..sroa_idx, align 8
  store ptr %i.go, ptr %.sroa.427.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad)
          to label %.noexc143 unwind label %.loopexit

.noexc143:                                        ; preds = %bb.bx
  %i.gp = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !39139
  %i.gq = icmp eq i8 %i.gp, 0
  br i1 %i.gq, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %.noexc143
  %i.gr = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !39139 ; 2 uses
  %i.gs = icmp ult i64 %i.gr, 6
  call void @llvm.assume(i1 %i.gs)
  %i.gt = icmp samesign ugt i64 %i.gr, 3
  br i1 %i.gt, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.gu = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns22with_generated_columnss_10___CALLSITE, align 8, !noalias !39139, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !nonnull !4, !noundef !4
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.gy = load i64, ptr %i.gx, align 8, !noundef !4
  store i64 4, ptr %i.b, align 8, !noalias !39139
  store ptr %i.gw, ptr %.sroa.3.0..sroa_idx.i141, align 8, !noalias !39139
  store i64 %i.gy, ptr %.sroa.5.0..sroa_idx.i142, align 8, !noalias !39139
  %i.gz = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc144 unwind label %.loopexit ; 2 uses

.noexc144:                                        ; preds = %bb.bz
  %i.ha = extractvalue { ptr, ptr } %i.gz, 0      ; 2 uses
  %i.hb = extractvalue { ptr, ptr } %i.gz, 1      ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hd = load ptr, ptr %i.hc, align 8, !invariant.load !4, !nonnull !4
  %i.he = invoke noundef zeroext i1 %i.hd(ptr noundef %i.ha, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #43
          to label %.noexc145 unwind label %.loopexit, !inline_history !39142

.noexc145:                                        ; preds = %.noexc144
  br i1 %i.he, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %.noexc145
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gu, ptr noundef nonnull %i.ha, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad)
          to label %bb.cb unwind label %.loopexit

bb.cb:                                            ; preds = %.noexc145, %bb.by, %.noexc143, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ch, %bb.cj, %bb.ce, %bb.cd, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.hf = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4
  %i.hg = load i64, ptr %i.bq, align 8, !noundef !4
  invoke void @_RNvMs5_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6Schema15field_with_name(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hf, i64 noundef %i.hg)
          to label %bb.ck unwind label %.loopexit

bb.cd:                                            ; preds = %bb.bv, %bb.bs, %bb.br, %bb.bw
  %i.hh = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.hi = icmp eq i8 %i.hh, 0
  br i1 %i.hi, label %bb.ce, label %bb.cc

bb.ce:                                            ; preds = %bb.cd
  %i.hj = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.hk = icmp ult i64 %i.hj, 6
  call void @llvm.assume(i1 %i.hk)
  %i.hl = icmp samesign ugt i64 %i.hj, 3
  br i1 %i.hl, label %bb.cf, label %bb.cc

bb.cf:                                            ; preds = %bb.ce
  %i.hm = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns22with_generated_columnss_10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.ho = load ptr, ptr %i.hn, align 8, !nonnull !4, !noundef !4
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %i.hq = load i64, ptr %i.hp, align 8, !noundef !4
  store i64 4, ptr %i.z, align 8
  store ptr %i.ho, ptr %.sroa.383.0..sroa_idx, align 8
  store i64 %i.hq, ptr %.sroa.584.0..sroa_idx, align 8
  %i.hr = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.cg unwind label %.loopexit ; 2 uses

bb.cg:                                            ; preds = %bb.cf
  %i.hs = extractvalue { ptr, ptr } %i.hr, 0      ; 2 uses
  %i.ht = extractvalue { ptr, ptr } %i.hr, 1      ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !invariant.load !4, !nonnull !4
  %i.hw = invoke noundef zeroext i1 %i.hv(ptr noundef %i.hs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z)
          to label %bb.ch unwind label %.loopexit

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.hw, label %bb.ci, label %bb.cc

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.hx = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns22with_generated_columnss_10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.aw, ptr %i.v, align 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.488.0..sroa_idx, align 8
  store ptr %i.ae, ptr %i.cf, align 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorNtB6_7Display3fmtBA_, ptr %.sroa.492.0..sroa_idx, align 8
  store ptr @618, ptr %i.w, align 8
  store ptr %i.v, ptr %i.cg, align 8
  store ptr %i.w, ptr %i.x, align 8
  store ptr @74, ptr %i.ch, align 8
  store i64 1, ptr %i.y, align 8
  store ptr %i.x, ptr %.sroa.494.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.595.0..sroa_idx, align 8
  store ptr %i.hy, ptr %i.ci, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hm, ptr noundef nonnull %i.hs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ht, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y)
          to label %bb.cj unwind label %.loopexit

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.cc

bb.ck:                                            ; preds = %bb.cc
  %i.hz = load i64, ptr %i.u, align 8, !range !2799, !noundef !4
  %.not111 = icmp eq i64 %i.hz, -9223372036854775788
  br i1 %.not111, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultRNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtB17_5error10ArrowErrorEECs14kWLkQVSKO_14deltalake_core.exit150 unwind label %.loopexit

bb.cm:                                            ; preds = %bb.ck
  %i.ia = load ptr, ptr %i.cj, align 8, !nonnull !4, !align !17, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i128 2, ptr %i.r, align 16
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.s, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(64) %i.r)
          to label %bb.cq unwind label %bb.cp

bb.cn:                                            ; preds = %bb.cr, %bb.cw, %bb.cp
  %.pn112 = phi { ptr, i32 } [ %i.id, %bb.cp ], [ %i.ik, %bb.cw ], [ %i.if, %bb.cr ] ; 2 uses
  %i.ib = load i64, ptr %i.u, align 8, !range !2799, !alias.scope !39143, !noundef !4
  %i.ic = icmp eq i64 %i.ib, -9223372036854775788
  br i1 %i.ic, label %.body, label %bb.co

bb.co:                                            ; preds = %bb.cn
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %.body unwind label %bb.bl

bb.cp:                                            ; preds = %bb.ct, %bb.cm
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

end_hunk_4
begin_hunk_5_@_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns29add_missing_generated_columns:bb.a
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [368 x i8], align 16              ; 5 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 4 uses
  %.sroa.419 = alloca [288 x i8], align 16        ; 3 uses
  %i.g = alloca [64 x i8], align 16               ; 4 uses
  %i.h = alloca [112 x i8], align 16              ; 4 uses
  %i.i = alloca [336 x i8], align 16              ; 5 uses
  %i.j = alloca [336 x i8], align 16              ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [336 x i8], align 16              ; 11 uses
  %i.v = alloca [40 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store i64 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ad, 88
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx
  %i.af = icmp eq i64 %i.ad, 0
  br i1 %i.af, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 320 ; 2 uses
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.010.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.010.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %.sroa.317.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.419.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.k, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.f, ptr noundef nonnull align 16 dereferenceable(336) %1, i64 336, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %0, ptr noundef nonnull align 16 dereferenceable(368) %i.f, i64 368, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.be

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.aq, %bb.al, %.body.i55, %.body.i, %bb.bf, %.body69, %bb.d
  %.pn = phi { ptr, i32 } [ %i.av, %bb.d ], [ %eh.lpad-body70, %.body69 ], [ %i.dz, %bb.bf ], [ %i.dl, %bb.aq ], [ %i.bc, %.body.i55 ], [ %i.az, %.body.i ], [ %i.dg, %bb.al ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.x) #40
          to label %.body73 unwind label %bb.bg

.loopexit:                                        ; preds = %bb.b, %bb.p, %bb.q, %bb.y, %bb.ab, %bb.ac, %bb.ae, %bb.ao, %bb.i, %bb.l, %bb.t, %bb.v, %.noexc61, %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ah, %bb.at
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.0.089 = phi ptr [ %i.ab, %.lr.ph ], [ %i.ar, %bb.k ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.089, i64 88 ; 2 uses
  %i.as = getelementptr i8, ptr %.sroa.0.089, i64 8
  %.sroa.0.0.val = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4
  %i.at = getelementptr i8, ptr %.sroa.0.089, i64 16
  %.sroa.0.0.val50 = load i64, ptr %i.at, align 8, !noundef !4
  store ptr %.sroa.0.0.val, ptr %i.w, align 8
  store i64 %.sroa.0.0.val50, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke fastcc void @_RNvXs2_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB5_9DataFrameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(336) %i.u, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(336) %1)
          to label %bb.c unwind label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.au = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB5_9DataFrame6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(336) %i.u)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.e, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(336) %i.u) #40
          to label %.body unwind label %bb.bg

bb.e:                                             ; preds = %bb.c
  %i.aw = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4
  %i.ax = load i64, ptr %i.ag, align 8, !noundef !4
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema27field_with_unqualified_name(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.au, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef %i.ax)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.ay = load i64, ptr %i.v, align 8, !range !38872, !noundef !4
  %.not = icmp eq i64 %i.ay, 20
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit52 unwind label %bb.d

bb.h:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !39154)
  %.val.i = load ptr, ptr %i.ah, align 16, !alias.scope !39154, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(1680) %.val.i)
          to label %bb.i unwind label %.body.i, !noalias !39154

.body.i:                                          ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 1680, i64 noundef 8) #33, !noalias !39154
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.u) #40
          to label %.body unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 1680, i64 noundef 8) #33, !noalias !39154
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit

bb.j:                                             ; preds = %.body.i
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit71, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit
  %i.bb = icmp eq ptr %i.ar, %i.ae
  br i1 %i.bb, label %._crit_edge, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit52: ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !39157)
  %.val.i54 = load ptr, ptr %i.ah, align 16, !alias.scope !39157, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(1680) %.val.i54)
          to label %bb.l unwind label %.body.i55, !noalias !39157

.body.i55:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit52
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i54, i64 noundef 1680, i64 noundef 8) #33, !noalias !39157
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.u) #40
          to label %.body unwind label %bb.m

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit52
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i54, i64 noundef 1680, i64 noundef 8) #33, !noalias !39157
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.u)
          to label %bb.n unwind label %.loopexit

bb.m:                                             ; preds = %.body.i55
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.be = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bf = icmp ult i64 %i.be, 2
  br i1 %i.bf, label %bb.o, label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.bg = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns29add_missing_generated_columns10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bg, label %bb.p [
    i8 0, label %bb.z
    i8 1, label %bb.q
    i8 2, label %bb.q
  ], !prof !32811

bb.p:                                             ; preds = %bb.o
  %i.bh = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns29add_missing_generated_columns10___CALLSITE)
          to label %bb.r unwind label %.loopexit  ; 2 uses

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.r
  %.sroa.08.0 = phi i8 [ %i.bh, %bb.r ], [ %i.bg, %bb.o ], [ %i.bg, %bb.o ]
  %i.bi = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns29add_missing_generated_columns10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.bj = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bi, i8 noundef %.sroa.08.0)
          to label %bb.s unwind label %.loopexit

bb.r:                                             ; preds = %bb.p
  %i.bk = icmp eq i8 %i.bh, 0
  br i1 %i.bk, label %bb.z, label %bb.q

bb.s:                                             ; preds = %bb.q
  br i1 %i.bj, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.bl = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns29add_missing_generated_columns10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.w, ptr %i.q, align 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.426.0..sroa_idx, align 8
  store ptr @621, ptr %i.r, align 8
  store ptr %i.q, ptr %i.ai, align 8
  store ptr %i.r, ptr %i.s, align 8
  store ptr @74, ptr %i.aj, align 8
  store i64 1, ptr %i.t, align 8
  store ptr %i.s, ptr %.sroa.010.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.010.sroa.5.0..sroa_idx, align 8
  store ptr %i.bm, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t)
          to label %.noexc60 unwind label %.loopexit

.noexc60:                                         ; preds = %bb.t
  %i.bn = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !39160
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.noexc60
  %i.bp = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !39160 ; 2 uses
  %i.bq = icmp ult i64 %i.bp, 6
  call void @llvm.assume(i1 %i.bq)
  %i.br = icmp samesign ugt i64 %i.bp, 3
  br i1 %i.br, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bs = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns29add_missing_generated_columns10___CALLSITE, align 8, !noalias !39160, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !4, !noundef !4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !4
  store i64 4, ptr %i.a, align 8, !noalias !39160
  store ptr %i.bu, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !39160
  store i64 %i.bw, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !39160
  %i.bx = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc61 unwind label %.loopexit ; 2 uses

.noexc61:                                         ; preds = %bb.v
  %i.by = extractvalue { ptr, ptr } %i.bx, 0      ; 2 uses
  %i.bz = extractvalue { ptr, ptr } %i.bx, 1      ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !invariant.load !4, !nonnull !4
  %i.cc = invoke noundef zeroext i1 %i.cb(ptr noundef %i.by, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #43
          to label %.noexc62 unwind label %.loopexit, !inline_history !39163

.noexc62:                                         ; preds = %.noexc61
  br i1 %i.cc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc62
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bs, ptr noundef nonnull %i.by, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t)
          to label %bb.x unwind label %.loopexit

bb.x:                                             ; preds = %.noexc62, %bb.u, %.noexc60, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.y

bb.y:                                             ; preds = %bb.ad, %bb.af, %bb.aa, %bb.z, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.cd = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4
  %i.ce = load i64, ptr %i.ag, align 8, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.ce, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ag unwind label %.loopexit

bb.z:                                             ; preds = %bb.r, %bb.o, %bb.n, %bb.s
  %i.cf = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %bb.aa, label %bb.y

bb.aa:                                            ; preds = %bb.z
  %i.ch = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ci = icmp ult i64 %i.ch, 6
  call void @llvm.assume(i1 %i.ci)
  %i.cj = icmp samesign ugt i64 %i.ch, 3
  br i1 %i.cj, label %bb.ab, label %bb.y

bb.ab:                                            ; preds = %bb.aa
  %i.ck = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns29add_missing_generated_columns10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !4, !noundef !4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.co = load i64, ptr %i.cn, align 8, !noundef !4
  store i64 4, ptr %i.p, align 8
  store ptr %i.cm, ptr %.sroa.330.0..sroa_idx, align 8
  store i64 %i.co, ptr %.sroa.531.0..sroa_idx, align 8
  %i.cp = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ac unwind label %.loopexit ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.cq = extractvalue { ptr, ptr } %i.cp, 0      ; 2 uses
  %i.cr = extractvalue { ptr, ptr } %i.cp, 1      ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !invariant.load !4, !nonnull !4
  %i.cu = invoke noundef zeroext i1 %i.ct(ptr noundef %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %bb.ad unwind label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.cu, label %bb.ae, label %bb.y

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cv = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns29add_missing_generated_columns10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.w, ptr %i.l, align 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.435.0..sroa_idx, align 8
  store ptr @621, ptr %i.m, align 8
  store ptr %i.l, ptr %i.ak, align 8
  store ptr %i.m, ptr %i.n, align 8
  store ptr @74, ptr %i.al, align 8
  store i64 1, ptr %i.o, align 8
  store ptr %i.n, ptr %.sroa.437.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.538.0..sroa_idx, align 8
  store ptr %i.cw, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ck, ptr noundef nonnull %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cr, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
          to label %bb.af unwind label %.loopexit

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.y

bb.ag:                                            ; preds = %bb.y
  %i.cx = load i64, ptr %i.e, align 8, !range !3, !noundef !4
  %i.cy = trunc nuw i64 %i.cx to i1
  %i.cz = load i64, ptr %i.an, align 8, !range !201, !noundef !4 ; 3 uses
  br i1 %i.cy, label %bb.ah, label %bb.ai, !prof !1176

bb.ah:                                            ; preds = %bb.ag
  %i.da = load i64, ptr %i.ao, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.cz, i64 %i.da) #39
          to label %bb.bh unwind label %.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ag
  %i.db = load ptr, ptr %i.ao, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.dc = icmp ule i64 %i.ce, %i.cz
  call void @llvm.assume(i1 %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not47 = icmp eq i64 %i.ce, 0
  br i1 %.not47, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.an, %bb.ai
  store i64 %i.cz, ptr %i.k, align 8
  store ptr %i.db, ptr %.sroa.440.0..sroa_idx, align 8
  store i64 %i.ce, ptr %.sroa.641.0..sroa_idx, align 8
  %i.dd = load i64, ptr %i.z, align 8, !alias.scope !39164, !noalias !39167, !noundef !4 ; 3 uses
  %i.de = load i64, ptr %i.x, align 8, !range !1123, !alias.scope !39164, !noalias !39167, !noundef !4
  %i.df = icmp eq i64 %i.dd, %i.de
  br i1 %i.df, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2pqxYH9ZEk8_3std(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.ao unwind label %bb.al, !noalias !39167

bb.al:                                            ; preds = %bb.ak
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #40
end_hunk_5
begin_hunk_6_@_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  store ptr %i.v, ptr %i.br, align 8
  store i8 30, ptr %0, align 8
  br label %bb.as

bb.bd:                                            ; preds = %bb.af
  tail call void @llvm.trap()
  unreachable

bb.be:                                            ; preds = %bb.ag
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.bs, align 8
  store i8 31, ptr %0, align 8
  br label %bb.as

bb.bf:                                            ; preds = %bb.ag
  tail call void @llvm.trap()
  unreachable

bb.bg:                                            ; preds = %bb.ah
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %i.bu, align 8
  store i8 32, ptr %0, align 8
  br label %bb.as

bb.bh:                                            ; preds = %bb.ah
  tail call void @llvm.trap()
  unreachable

bb.bi:                                            ; preds = %bb.ai
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !range !34, !noundef !4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.bw, ptr %i.bz, align 1
  store i8 33, ptr %0, align 8
  br label %bb.as

bb.bj:                                            ; preds = %bb.ai
  tail call void @llvm.trap()
  unreachable

bb.bk:                                            ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.al, %bb.bk
  %eh.lpad-body = phi { ptr, i32 } [ %i.ca, %bb.bk ], [ %i.av, %bb.al ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.c) #40
          to label %common.resume unwind label %bb.bm

bb.bl:                                            ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !40268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40268
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.cc, align 8
  store i8 34, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.as

bb.bm:                                            ; preds = %.body
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.bn:                                            ; preds = %bb.aq
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !range !34, !noundef !4
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.cf, ptr %i.ch, align 1
  store i8 39, ptr %0, align 8
  br label %bb.as

bb.bo:                                            ; preds = %bb.aq
  tail call void @llvm.trap()
  unreachable

bb.bp:                                            ; preds = %bb.ar
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ck = atomicrmw add ptr %i.cj, i64 1 monotonic, align 8
  %i.cl = icmp slt i64 %i.ck, 0
  br i1 %i.cl, label %bb.bs, label %bb.br

bb.bq:                                            ; preds = %bb.ar
  tail call void @llvm.trap()
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cj, ptr %i.cn, align 8
  store i8 40, ptr %0, align 8
  br label %bb.as

bb.bs:                                            ; preds = %bb.bp
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB5_12WriteBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(1008) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [40 x i8], align 8                ; 5 uses
  %i.l = alloca [9072 x i8], align 16             ; 6 uses
  %i.m = alloca [9120 x i8], align 16             ; 6 uses
  %i.n = alloca [1 x i8], align 1                 ; 5 uses
  %i.o = alloca [88 x i8], align 8                ; 14 uses
  %i.p = alloca [1008 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1008) %i.p, ptr noundef nonnull align 16 dereferenceable(1008) %0, i64 1008, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 496
  %i.r = load ptr, ptr %i.q, align 16, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 504
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !947, !invariant.load !4
  %i.w = add nsw i64 %i.v, -1
  %i.x = and i64 %i.w, -16
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !4, !nonnull !4
  %i.ac = invoke noundef nonnull align 8 ptr %i.ab(ptr noundef nonnull %i.z)
          to label %bb.b unwind label %bb.z       ; 6 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %bb.e unwind label %bb.z

bb.c:                                             ; preds = %bb.m, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.d ], [ %i.bj, %bb.m ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtBO_12WriteBuilderNtNtNtB4_6future11into_future10IntoFuture11into_future0EBS_(ptr noundef nonnull align 16 %i.l) #40
          to label %.body unwind label %bb.u

bb.d:                                             ; preds = %bb.k, %bb.h, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 60
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ao = load <4 x i32>, ptr %i.ae, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ag, ptr noundef nonnull align 8 dereferenceable(17) %i.af, i64 17, i1 false)
  %i.ap = load i32, ptr %i.ai, align 4, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.aq = load <2 x i16>, ptr %i.ah, align 8
  %i.ar = load <4 x i32>, ptr %i.aj, align 8
  store <4 x i32> %i.ao, ptr %i.ak, align 4
  store <2 x i16> %i.aq, ptr %i.al, align 8
  store i32 %i.ap, ptr %i.am, align 4
  store <4 x i32> %i.ar, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 1003
  %i.at = load i8, ptr %i.as, align 1, !range !3169, !noundef !4
  store i8 %i.at, ptr %i.n, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1008) %i.l, ptr noundef nonnull align 16 dereferenceable(1008) %0, i64 1008, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 4240
  store i8 0, ptr %i.au, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.av = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.aw = icmp ult i64 %i.av, 3
  br i1 %i.aw, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ax = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB7_12WriteBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ax, label %bb.g [
    i8 0, label %bb.n
    i8 1, label %bb.h
    i8 2, label %bb.h
  ], !prof !32811

bb.g:                                             ; preds = %bb.f
  %i.ay = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB7_12WriteBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future10___CALLSITE)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.i
  %.sroa.05.0 = phi i8 [ %i.ay, %bb.i ], [ %i.ax, %bb.f ], [ %i.ax, %bb.f ]
  %i.az = load ptr, ptr @_RNvNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB7_12WriteBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4
  %i.ba = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.az, i8 noundef %.sroa.05.0)
          to label %bb.j unwind label %bb.d

bb.i:                                             ; preds = %bb.g
  %.not = icmp eq i8 %i.ay, 0
  br i1 %.not, label %bb.n, label %bb.h

bb.j:                                             ; preds = %bb.h
  br i1 %i.ba, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr @_RNvNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB7_12WriteBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.n, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.o, ptr %i.g, align 8
  store ptr @697, ptr %i.i, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @698, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.h, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @699, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.g, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @700, ptr %i.bh, align 8
  store i64 1, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.bc, ptr %i.bi, align 8
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
          to label %bb.v unwind label %bb.d

bb.l:                                             ; preds = %bb.n, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.q

bb.m:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.f) #40
          to label %bb.c unwind label %bb.u

bb.n:                                             ; preds = %bb.i, %bb.j, %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bk = load ptr, ptr @_RNvNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB7_12WriteBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future10___CALLSITE, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  store i64 2, ptr %i.f, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.bk, ptr %i.bl, align 8
  %i.bm = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.o, label %bb.l

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.n, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.o, ptr %i.b, align 8
  store ptr @697, ptr %i.d, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @698, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.c, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @699, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.b, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @700, ptr %i.bt, align 8
  store i64 1, ptr %i.e, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 3, ptr %.sroa.514.0..sroa_idx, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.bo, ptr %i.bu, align 8
  %i.bv = invoke noundef nonnull align 8 ptr @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span10record_all(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %bb.p unwind label %bb.m       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.q:                                             ; preds = %bb.v, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9072) %i.m, ptr noundef nonnull align 16 dereferenceable(9072) %i.l, i64 9072, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.m, i64 9072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.bw, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !40271
  %i.bx = call noundef align 16 dereferenceable_or_null(9120) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9121) 9120, i64 noundef range(i64 1, 129) 16) #33, !noalias !40271 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.r, label %bb.w, !prof !216

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 9120) #39
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB1F_12WriteBuilderNtNtNtB4_6future11into_future10IntoFuture11into_future0EEB1J_(ptr noundef nonnull align 16 dereferenceable(9120) %i.m) #40
          to label %.body unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.u:                                             ; preds = %bb.z, %.body, %bb.m, %bb.c
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.v:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.q

.body:                                            ; preds = %bb.s, %bb.c
  %.pn18 = phi { ptr, i32 } [ %.pn, %bb.c ], [ %i.bz, %bb.s ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.o) #40
          to label %.thread unwind label %bb.u

bb.w:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9120) %i.bx, ptr noundef nonnull align 16 dereferenceable(9120) %i.m, i64 9120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.o)
          to label %.thread unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.w
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ce = insertvalue { ptr, ptr } poison, ptr %i.bx, 0
  %i.cf = insertvalue { ptr, ptr } %i.ce, ptr @701, 1
  ret { ptr, ptr } %i.cf

.thread:                                          ; preds = %bb.x, %.body, %bb.z
  %.pn2027 = phi { ptr, i32 } [ %.pn18, %.body ], [ %lpad.thr_comm, %bb.z ], [ %i.cc, %bb.x ]
  resume { ptr, i32 } %.pn2027

bb.z:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write12WriteBuilderEBM_(ptr noalias noundef align 16 dereferenceable(1008) %i.p) #40
          to label %.thread unwind label %bb.u
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCsanCXJAiNsO_18datafusion_catalog6memory5tableNtB5_8MemTableNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_6
begin_hunk_7_@_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write12WriteBuilderNtB6_9Operation16get_operation_idB8_:bb.a
  tail call void @_RNvMNtCs3LITIwzqf1g_4uuid2v4NtB4_4Uuid6new_v4(ptr noalias noundef nonnull sret([16 x i8]) align 1 captures(none) dereferenceable(16) %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider18DeltaTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider10statisticsB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 8)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  store i64 3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider18DeltaTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider11constraintsB8_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 16 ptr @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider18DeltaTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider18get_column_defaultB8_(ptr noalias readonly align 8 captures(none) %0, ptr noalias nonnull readonly captures(none) %1, i64 %2) unnamed_addr #1 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider9DeltaScanNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan10with_fetchB8_(ptr noalias readonly align 8 captures(none) %0, i64 range(i64 0, 2) %1, i64 %2) unnamed_addr #1 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider9DeltaScanNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan17try_pushdown_sortB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias nonnull readonly align 8 captures(none) %2, i64 range(i64 0, 384307168202282326) %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.a, align 8
  store i64 20, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 4) i8 @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider9DeltaScanNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan18cardinality_effectB8_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider9DeltaScanNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan23supports_limit_pushdownB8_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider9DeltaScanNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan28try_swapping_with_projectionB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8
  store i64 20, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i64, i64 } @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider9DeltaScanNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan5fetchB8_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { i64, i64 } { i64 0, i64 undef }
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore15DefaultLogStoreNtB6_8LogStore15transaction_urlB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %1, ptr noalias readonly align 1 captures(none) dead_on_return %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(17) %i.d, i64 17, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 284
  %i.g = load i32, ptr %i.f, align 4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load <4 x i32>, ptr %i.h, align 8
  store <4 x i32> %i.i, ptr %.sroa.4.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load <2 x i16>, ptr %i.e, align 8
  store <2 x i16> %i.j, ptr %.sroa.8.0..sroa_idx, align 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = load <4 x i32>, ptr %i.c, align 4
  store <4 x i32> %i.k, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.g, ptr %.sroa.14.0..sroa_idx, align 4
  store i64 -9223372036854775711, ptr %0, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore15DefaultLogStoreNtB6_8LogStore16object_store_urlB8_(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  tail call void @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore16object_store_url(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore15DefaultLogStoreNtB6_8LogStore23is_delta_table_locationB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i8 0, ptr %i.b, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !42665
  %i.c = tail call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9121) 168, i64 noundef range(i64 1, 129) 8) #33, !noalias !42665 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore15DefaultLogStoreNtBN_8LogStore23is_delta_table_location0E3newBP_.exit, !prof !216

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #39
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore15DefaultLogStoreNtBP_8LogStore23is_delta_table_location0EBR_(ptr noundef nonnull align 8 dereferenceable(168) %i.a) #40
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore15DefaultLogStoreNtBN_8LogStore23is_delta_table_location0E3newBP_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef nonnull align 8 dereferenceable(168) %i.a, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr @970, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore15DefaultLogStoreNtB6_8LogStore6engineB8_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(344) %0, ptr noalias nofree readnone align 1 captures(none) dead_on_return %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42668)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !42668, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !42668, !nonnull !4, !align !17, !noundef !4
  %i.e = atomicrmw add ptr %i.b, i64 1 monotonic, align 8, !noalias !42668
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstoreNtB5_15DefaultLogStoreNtB7_8LogStore17root_object_store.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstoreNtB5_15DefaultLogStoreNtB7_8LogStore17root_object_store.exit: ; preds = %bb.a
  %i.g = tail call { ptr, ptr } @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore10get_engine(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.d)
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore15DefaultLogStoreNtB6_8LogStore6to_uriB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  tail call void @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore6to_uri(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore15DefaultLogStoreNtB6_8LogStore7refreshB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !42671
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9121) 16, i64 noundef range(i64 1, 129) 8) #33, !noalias !42671 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.noexc, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore15DefaultLogStoreNtBN_8LogStore7refresh0E3newBP_.exit, !prof !216

.noexc:                                           ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #39
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore15DefaultLogStoreNtBN_8LogStore7refresh0E3newBP_.exit: ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @971, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore15DefaultLogStoreNtB6_8LogStore8log_pathB8_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore14DELTA_LOG_PATH, i64 24) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore14DELTA_LOG_PATH, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore14DELTA_LOG_PATH, i64 24), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  ret ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore14DELTA_LOG_PATH
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 ptr @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore15DefaultLogStoreNtB6_8LogStore8root_urlB8_(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(344) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, i64 } { ptr @931, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @972, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtB8_5table13TableProvider10statisticsCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 8)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  store i64 3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtB8_5table13TableProvider16get_logical_planCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([320 x i8]) align 16 captures(none) dereferenceable(320) initializes((0, 8)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  store i64 37, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtB8_5table13TableProvider20get_table_definitionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, i64 } { ptr null, i64 undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer10WriteErrorNtNtCsbvkFyIu7lgC_4core5error5Error5causeBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !40691, !alias.scope !42674, !noundef !4 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775786
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775788
  %i.d = icmp ugt i64 %i.a, -9223372036854775789
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %_RNvXs4_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB5_10WriteErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %_RNvXs4_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB5_10WriteErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !42674, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !42674, !nonnull !4, !align !17, !noundef !4
  br label %_RNvXs4_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB5_10WriteErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  br label %_RNvXs4_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB5_10WriteErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

_RNvXs4_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB5_10WriteErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit: ; preds = %bb.a, %bb.a, %bb.c, %bb.d
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %i.i, %bb.c ], [ @754, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.g, %bb.c ], [ %0, %bb.d ], [ null, %bb.a ]
  %i.j = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %.sroa.5.0.i, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider10statisticsBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 8)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  store i64 3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider11constraintsBa_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 16 ptr @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider18get_column_defaultBa_(ptr noalias readonly align 8 captures(none) %0, ptr noalias nonnull readonly captures(none) %1, i64 %2) unnamed_addr #1 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, i64 } { ptr @931, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorNtNtCsbvkFyIu7lgC_4core5error5Error6sourceCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @973, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #18

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() unnamed_addr #19

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare hidden void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockNtCsjyY8HP3IvQ6_12object_store10PutOptionsE10initializeNCINvB2_11get_or_initNCNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore11put_options0E0zEB2f_(ptr noundef nonnull align 8) unnamed_addr #20

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare hidden void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB2_11get_or_initNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime5io_rt0E0zEB2p_(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #20

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare hidden void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockjE10initializeNCINvB2_11get_or_initNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0E0zEB1C_(ptr noundef nonnull align 8) unnamed_addr #20

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare hidden void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockjE10initializeNCINvB2_11get_or_initNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer25get_max_concurrency_tasks0E0zEB1C_(ptr noundef nonnull align 8) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task5errorNtB4_9JoinErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCsbpG6u9KFjWn_8indexmap3mapINtB4_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs1_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB6_6Handle5spawnINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2i_24TokioMultiThreadExecutorNtB2k_12TaskExecutor8block_onNCNvNtB2m_10filesystem14list_from_impl0E0EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs1_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB6_6Handle5spawnINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2i_24TokioMultiThreadExecutorNtB2k_12TaskExecutor8block_onNCNvNtB2m_10filesystem15read_files_impl0E0EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs1_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB6_6Handle5spawnINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2i_24TokioMultiThreadExecutorNtB2k_12TaskExecutor8block_onNCNvNtB2m_10filesystem16copy_atomic_impl0E0EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs1_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB6_6Handle5spawnINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2i_24TokioMultiThreadExecutorNtB2k_12TaskExecutor8block_onNCNvNtB2m_10filesystem9head_impl0E0EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs1_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB6_6Handle5spawnINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2i_24TokioMultiThreadExecutorNtB2k_12TaskExecutor8block_onNCNvNtB2m_4json20read_json_files_impl0E0EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs1_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB6_6Handle5spawnINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2i_24TokioMultiThreadExecutorNtB2k_12TaskExecutor8block_onNCNvNtB2m_4json20write_json_file_impl0E0EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs1_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB6_6Handle5spawnINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2i_24TokioMultiThreadExecutorNtB2k_12TaskExecutor8block_onNCNvNtB2m_7parquet23read_parquet_files_impl0E0EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs1_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB6_6Handle5spawnINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvXs3_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB2i_24TokioMultiThreadExecutorNtB2k_12TaskExecutor8block_onNCNvXB2m_INtB2m_22BlockingStreamIteratorINtNtB19_6result6ResultIB1B_DNtNtB2q_11engine_data10EngineDataEL_ENtNtB2q_5error5ErrorEB3m_ENtNtNtNtB19_4iter6traits8iterator8Iterator4next0E0EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0)) unnamed_addr #0
end_hunk_7
