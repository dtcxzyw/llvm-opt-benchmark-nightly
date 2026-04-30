inline.NumInlined: 975
inline.NumDeleted: 448
begin_hunk_0_@_ZN6duckdb18ParquetBloomFilterC2ENS_10unique_ptrINS_16ResizeableBufferESt14default_deleteIS2_ELb1EEE:bb.a
  store ptr null, ptr %0, align 8, !tbaa !279
  %i.a = load ptr, ptr %1, align 8, !tbaa !218
  store ptr null, ptr %1, align 8, !tbaa !218
  store ptr %i.a, ptr %0, align 8, !tbaa !218
  %2 = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ResizeableBufferESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !233
  %i.d = lshr i64 %i.c, 5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !234
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10unique_ptrIN6duckdb16ResizeableBufferESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
end_hunk_0
