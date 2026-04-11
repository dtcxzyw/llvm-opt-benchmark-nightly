inline.NumInlined: 7581
inline.NumDeleted: 2927
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00ECs7p2uQeJxui2_9deltalake:bb.a
  br label %.body47

bb.u:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2296
  %i.aq = load i8, ptr %i.ap, align 8, !range !1884, !noundef !4
  switch i8 %i.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit [
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00ECs7p2uQeJxui2_9deltalake:bb.a
    i8 3, label %bb.v
  ]

common.ret.sink.split.i:                          ; preds = %bb.v, %bb.u
  %.pn78 = phi i64 [ 1032, %bb.u ], [ 1552, %bb.v ]
  %.sink.i = getelementptr inbounds nuw i8, ptr %0, i64 %.pn78
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_writer16AsyncArrowWriterNtNtBJ_5store19ParquetObjectWriterEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(520) %.sink.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.av

bb.v:                                             ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2072
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE6finish0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.ar)
          to label %common.ret.sink.split.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00ECs7p2uQeJxui2_9deltalake:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_writer16AsyncArrowWriterNtNtBJ_5store19ParquetObjectWriterEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(520) %i.at) #39
          to label %.body50 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_2
begin_hunk_3_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext11drop_schema0EENtB4_6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
  %.not.i.i = icmp eq ptr %i.cd, null             ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !13138, !noalias !13114 ; 2 uses
  %.pn1.i.i = select i1 %.not.i.i, ptr %i.cf, ptr %i.cd
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.pn1.i.i, i64 16
  %.sroa.0.0.i.i.a = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.0.0.i.i.a, align 8, !noalias !13114
  %.val1.cast.i.i = ptrtoint ptr %i.cf to i64
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %.val.i.i, i64 %.val1.cast.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.ch = load ptr, ptr %i.cg, align 8, !invariant.load !4, !noalias !13114, !nonnull !4
  invoke void %i.ch(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noundef nonnull %i.cc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.3.0.i.i, i1 noundef zeroext %i.u)
          to label %bb.y unwind label %bb.x, !noalias !13114

bb.x:                                             ; preds = %bb.w
end_hunk_3
begin_hunk_4_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext11drop_schema0EENtB4_6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit1.i.i unwind label %bb.an, !noalias !13114

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit.sink.split.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit1.i.i, %bb.ak
  %.sink.i.i = phi ptr [ %.sroa.0.0.i.i.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit1.i.i ], [ %i.ce, %bb.ak ]
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceE9drop_slowCsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sink.i.i) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common16schema_reference15SchemaReferenceECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ar, !noalias !13114
end_hunk_4
begin_hunk_5_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext11drop_schema0EENtB4_6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13196)
  call void @llvm.experimental.noalias.scope.decl(metadata !13199)
  %i.dm = load ptr, ptr %.sroa.0.0.i.i.a, align 8, !alias.scope !13202, !noalias !13114, !nonnull !4, !noundef !4
  %i.dn = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !13203
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.ao, label %.body57.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceE9drop_slowCsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.a) #41
          to label %.body57.i unwind label %bb.ap, !noalias !13114

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit1.i.i: ; preds = %bb.am, %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !13204)
  call void @llvm.experimental.noalias.scope.decl(metadata !13207)
  %i.dp = load ptr, ptr %.sroa.0.0.i.i.a, align 8, !alias.scope !13210, !noalias !13114, !nonnull !4, !noundef !4
  %i.dq = atomicrmw sub ptr %i.dp, i64 1 release, align 8, !noalias !13211
  %i.dr = icmp eq i64 %i.dq, 1
  br i1 %i.dr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit.sink.split.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common16schema_reference15SchemaReferenceECs7p2uQeJxui2_9deltalake.exit.i
end_hunk_5
