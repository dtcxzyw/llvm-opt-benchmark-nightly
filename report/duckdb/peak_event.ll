inline.NumInlined: 7
inline.NumDeleted: 4
begin_hunk_0_@duckdb_je_peak_alloc_event_handler:bb.a
bb.c:                                             ; preds = %duckdb_je_peak_event_update.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15
  tail call void %i.m(ptr noundef %i.o, i64 noundef %i.b, i64 noundef %i.d) #4, !inline_history !16
  br label %peak_event_activity_callback.exit

peak_event_activity_callback.exit:                ; preds = %duckdb_je_peak_event_update.exit, %bb.c
end_hunk_0
begin_hunk_1_@duckdb_je_peak_dalloc_event_handler:bb.a
bb.c:                                             ; preds = %duckdb_je_peak_event_update.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15
  tail call void %i.m(ptr noundef %i.o, i64 noundef %i.b, i64 noundef %i.d) #4, !inline_history !16
  br label %peak_event_activity_callback.exit

peak_event_activity_callback.exit:                ; preds = %duckdb_je_peak_event_update.exit, %bb.c
end_hunk_1
begin_hunk_2_@duckdb_je_peak_dalloc_event_handler:bb.a
!13 = !{!"activity_callback_thunk_s", !14, i64 0, !14, i64 8}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!13, !14, i64 8}
!16 = distinct !{null}
end_hunk_2
