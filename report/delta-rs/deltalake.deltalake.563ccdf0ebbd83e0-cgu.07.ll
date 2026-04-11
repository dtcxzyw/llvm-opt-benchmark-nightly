inline.NumInlined: 7758
inline.NumDeleted: 2965
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00ECs7p2uQeJxui2_9deltalake:bb.a
  br label %.body47

bb.u:                                             ; preds = %bb.a
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2296
  %i.aq = load i8, ptr %i.ap, align 8, !range !474, !noundef !3
  switch i8 %i.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit [
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00ECs7p2uQeJxui2_9deltalake:bb.a
    i8 3, label %bb.v
  ]

common.ret.sink.split.i:                          ; preds = %2, %bb.u
  %.sink.i = phi ptr [ %3, %2 ], [ %1, %bb.u ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_writer16AsyncArrowWriterNtNtBJ_5store19ParquetObjectWriterEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(520) %.sink.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.av

bb.v:                                             ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2072
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE6finish0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.ar)
          to label %2 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00ECs7p2uQeJxui2_9deltalake:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_writer16AsyncArrowWriterNtNtBJ_5store19ParquetObjectWriterEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(520) %i.at) #39
          to label %.body50 unwind label %bb.x

2:                                                ; preds = %bb.v
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1552
  br label %common.ret.sink.split.i

bb.x:                                             ; preds = %bb.w
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_2
