inline.NumInlined: 8450
inline.NumDeleted: 2899
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable17create_checkpoint0s_0EBQ_:bb.a
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1179
  %i.l = load i8, ptr %i.k, align 1, !range !3177, !noundef !11
  switch i8 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00EECs7p2uQeJxui2_9deltalake.exit.i.i [
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable17create_checkpoint0s_0EBQ_:bb.a
  br label %.body47.i.i.i

bb.ab:                                            ; preds = %bb.h
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2464
  %i.ba = load i8, ptr %i.az, align 8, !range !22, !noundef !11
  switch i8 %i.ba, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i [
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable17create_checkpoint0s_0EBQ_:bb.a
    i8 3, label %bb.ac
  ]

common.ret.sink.split.i.i.i.i:                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE6finish0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %bb.ab
  %.sink.i.i.i.i = phi ptr [ %2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE6finish0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %1, %bb.ab ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_writer16AsyncArrowWriterNtNtBJ_5store19ParquetObjectWriterEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(520) %.sink.i.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.bq

bb.ac:                                            ; preds = %bb.ab
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.bc = load i8, ptr %i.bb, align 8, !range !23, !noundef !11
  switch i8 %i.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE6finish0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i [
    i8 4, label %bb.ak
    i8 3, label %bb.ad
  ]
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable17create_checkpoint0s_0EBQ_:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE8do_write0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.an, %bb.am, %bb.ah, %bb.ag, %bb.ad
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 2256
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(168) %i.ch)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE6finish0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i unwind label %bb.ar

.body.i.i.i.i.i:                                  ; preds = %bb.ap, %bb.ao, %bb.aj, %bb.ai
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.bn, %bb.ai ], [ %i.cb, %bb.ao ], [ %i.bn, %bb.aj ], [ %i.cb, %bb.ap ]
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable17create_checkpoint0s_0EBQ_:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_writer16AsyncArrowWriterNtNtBJ_5store19ParquetObjectWriterEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(520) %i.cl) #31
          to label %.body52.i.i.i unwind label %bb.as

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE6finish0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE8do_write0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, %bb.ac
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 1720
  br label %common.ret.sink.split.i.i.i.i

bb.as:                                            ; preds = %.body.i.i.i.i
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_4
