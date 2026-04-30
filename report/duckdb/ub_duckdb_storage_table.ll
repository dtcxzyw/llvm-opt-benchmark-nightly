inline.NumInlined: 22002
inline.NumDeleted: 8912
begin_hunk_0_@_ZN6duckdb23RowGroupIterationHelper16RowGroupIteratorD2Ev:bb.a
; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb23RowGroupIterationHelper16RowGroupIteratorC2EOS1_(ptr noundef nonnull align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(32) %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x i64>, ptr %1, align 8, !tbaa !309
end_hunk_0
begin_hunk_1_@_ZN6duckdb23RowGroupIterationHelper16RowGroupIteratorC2EOS1_:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3086
  store ptr null, ptr %i.e, align 8, !tbaa !3086
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !3086 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !3086
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.a
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.g) #39
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #41
  br label %_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i

_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i.i, %bb.a
  %2 = load ptr, ptr %i.e, align 8, !tbaa !3086   ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !3086
  %.not.i.i.i.i.i4.i = icmp eq ptr %2, null
  br i1 %.not.i.i.i.i.i4.i, label %_ZSt4swapIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i5.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i5.i: ; preds = %_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #39
  tail call void @_ZdlPv(ptr noundef nonnull %2) #41
  br label %_ZSt4swapIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit

_ZSt4swapIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit: ; preds = %_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i5.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %3 = load i64, ptr %i.b, align 8, !tbaa !3091
  %4 = inttoptr i64 %3 to ptr
  store ptr null, ptr %i.b, align 8, !tbaa !3091
  %5 = load ptr, ptr %i.h, align 8, !tbaa !3091
  store ptr null, ptr %i.h, align 8, !tbaa !3091
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !3091 ; 3 uses
  store ptr %5, ptr %i.b, align 8, !tbaa !3091
  %.not.i.i.i.i.i.i6 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i6, label %_ZN6duckdb10unique_ptrINS_14TableScanStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i, label %_ZNKSt14default_deleteIN6duckdb14TableScanStateEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14TableScanStateEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %_ZSt4swapIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit
  tail call void @_ZN6duckdb14TableScanStateD1Ev(ptr noundef nonnull align 8 dead_on_return(528) dereferenceable(528) %i.i) #39
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #41
  br label %_ZN6duckdb10unique_ptrINS_14TableScanStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i

_ZN6duckdb10unique_ptrINS_14TableScanStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb14TableScanStateEEclEPS1_.exit.i.i.i.i.i.i, %_ZSt4swapIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit
  %6 = load ptr, ptr %i.h, align 8, !tbaa !3091   ; 3 uses
  store ptr %4, ptr %i.h, align 8, !tbaa !3091
  %.not.i.i.i.i.i4.i7 = icmp eq ptr %6, null
  br i1 %.not.i.i.i.i.i4.i7, label %_ZSt4swapIN6duckdb10unique_ptrINS0_14TableScanStateESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit, label %_ZNKSt14default_deleteIN6duckdb14TableScanStateEEclEPS1_.exit.i.i.i.i.i5.i

_ZNKSt14default_deleteIN6duckdb14TableScanStateEEclEPS1_.exit.i.i.i.i.i5.i: ; preds = %_ZN6duckdb10unique_ptrINS_14TableScanStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i
  tail call void @_ZN6duckdb14TableScanStateD1Ev(ptr noundef nonnull align 8 dead_on_return(528) dereferenceable(528) %6) #39
  tail call void @_ZdlPv(ptr noundef nonnull %6) #41
  br label %_ZSt4swapIN6duckdb10unique_ptrINS0_14TableScanStateESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit

_ZSt4swapIN6duckdb10unique_ptrINS0_14TableScanStateESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit: ; preds = %_ZN6duckdb10unique_ptrINS_14TableScanStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i, %_ZNKSt14default_deleteIN6duckdb14TableScanStateEEclEPS1_.exit.i.i.i.i.i5.i
  ret void
}

end_hunk_1
