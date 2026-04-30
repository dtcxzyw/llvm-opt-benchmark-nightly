inline.NumInlined: 5552
inline.NumDeleted: 2531
begin_hunk_0_@_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorC2EOS1_:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.g, i8 0, i64 17, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false)
  %i.j = load i64, ptr %1, align 8, !tbaa !405
  store i64 %i.j, ptr %0, align 8, !tbaa !405
end_hunk_0
begin_hunk_1_@_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorC2EOS1_:bb.a
  store ptr null, ptr %i.i, align 8, !tbaa !311
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !311
  store ptr null, ptr %i.l, align 8, !tbaa !311
  store ptr %i.o, ptr %i.i, align 8, !tbaa !311
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !311  ; 3 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !311
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt4swapIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i5.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i5.i: ; preds = %bb.a
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.p) #25
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #26
  br label %_ZSt4swapIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit

_ZSt4swapIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i5.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.s = load i64, ptr %i.q, align 8, !tbaa !103
end_hunk_1
