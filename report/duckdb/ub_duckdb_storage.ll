inline.NumInlined: 20079
inline.NumDeleted: 9323
begin_hunk_0_@_ZN6duckdb11DataPointerC2EOS0_:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN6duckdb14BaseStatisticsC1EOS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.e) #25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  store ptr null, ptr %i.f, align 8, !tbaa !1234
  %i.g = load i64, ptr %0, align 8, !tbaa !70
  %i.h = load i64, ptr %1, align 8, !tbaa !70
end_hunk_0
begin_hunk_1_@_ZN6duckdb11DataPointerC2EOS0_:bb.a
  store ptr null, ptr %i.f, align 8, !tbaa !1239
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !1239
  store ptr null, ptr %i.r, align 8, !tbaa !1239
  store ptr %i.u, ptr %i.f, align 8, !tbaa !1239
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !1239 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !1239
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt4swapIN6duckdb10unique_ptrINS0_18ColumnSegmentStateESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit, label %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i.i.i.i5.i

_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i.i.i.i5.i: ; preds = %bb.a
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.v) #25, !inline_history !1240
  br label %_ZSt4swapIN6duckdb10unique_ptrINS0_18ColumnSegmentStateESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit

_ZSt4swapIN6duckdb10unique_ptrINS0_18ColumnSegmentStateESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i.i.i.i5.i
  ret void
}

end_hunk_1
begin_hunk_2_@_ZN6duckdb11DataPointeraSEOS0_:bb.a
  %i.p = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb14BaseStatisticsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.n, ptr noundef nonnull align 8 dereferenceable(128) %2) #25 ; 0 uses
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 4 uses
  %i.s = load i64, ptr %i.q, align 8, !tbaa !1239
  %i.t = inttoptr i64 %i.s to ptr
  store ptr null, ptr %i.q, align 8, !tbaa !1239
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !1239
  store ptr null, ptr %i.r, align 8, !tbaa !1239
  store ptr %i.u, ptr %i.q, align 8, !tbaa !1239
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !1239 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !1239
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt4swapIN6duckdb10unique_ptrINS0_18ColumnSegmentStateESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit, label %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i.i.i.i5.i

_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i.i.i.i5.i: ; preds = %bb.a
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.v) #25, !inline_history !1240
  br label %_ZSt4swapIN6duckdb10unique_ptrINS0_18ColumnSegmentStateESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit

_ZSt4swapIN6duckdb10unique_ptrINS0_18ColumnSegmentStateESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i.i.i.i5.i
  ret ptr %0
}

end_hunk_2
