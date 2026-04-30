inline.NumInlined: 2160
inline.NumDeleted: 1234
begin_hunk_0_@_ZN6duckdb17AggregateFunction12StateCombineINS_12_GLOBAL__N_120SortedAggregateStateENS2_23SortedAggregateFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm:bb.a
bb.m:                                             ; preds = %bb.l
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !216
  store i64 0, ptr %i.ab, align 8, !tbaa !216
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !300
  %i.ak = inttoptr i64 %i.aj to ptr
  store ptr null, ptr %i.ah, align 8, !tbaa !300
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !300
  store ptr null, ptr %i.ai, align 8, !tbaa !300
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !300
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !300 ; 3 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !300
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt4swapIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i.i.i.i5.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i.i.i.i5.i.i.i.i.i: ; preds = %bb.m
  tail call void @_ZN6duckdb20ColumnDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.am) #22
  tail call void @_ZdlPv(ptr noundef nonnull %i.am) #24
  br label %_ZSt4swapIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit.i.i.i.i

_ZSt4swapIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i.i.i.i5.i.i.i.i.i, %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 5 uses
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !316
  store ptr null, ptr %i.an, align 8, !tbaa !316
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !316
  store ptr null, ptr %i.ao, align 8, !tbaa !316
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !316
  %8 = inttoptr i64 %i.ap to ptr
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !316 ; 2 uses
  store ptr %8, ptr %i.ao, align 8, !tbaa !316
  %.not.i.i.i.i.i.i6.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i6.i.i.i.i, label %_ZSt4swapIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit5.i.i.i.i.i

_ZN6duckdb10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit5.i.i.i.i.i: ; preds = %_ZSt4swapIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit.i.i.i.i
  tail call void @_ZNKSt14default_deleteIN6duckdb21ColumnDataAppendStateEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %i.ar)
  br label %_ZSt4swapIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit.i.i.i.i

_ZSt4swapIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit.i.i.i.i: ; preds = %_ZN6duckdb10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit5.i.i.i.i.i, %_ZSt4swapIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 4 uses
  %i.au = load i64, ptr %i.as, align 8, !tbaa !301
  %i.av = inttoptr i64 %i.au to ptr
  store ptr null, ptr %i.as, align 8, !tbaa !301
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !301
  store ptr null, ptr %i.at, align 8, !tbaa !301
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !301
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !301 ; 3 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !301
  %.not.i.i.i.i.i.i8.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i.i8.i.i.i.i, label %_ZN6duckdb12_GLOBAL__N_120SortedAggregateState4SwapERS1_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i5.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i5.i.i.i.i.i: ; preds = %_ZSt4swapIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit.i.i.i.i
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.ax) #22
  tail call void @_ZdlPv(ptr noundef nonnull %i.ax) #24
  br label %_ZN6duckdb12_GLOBAL__N_120SortedAggregateState4SwapERS1_.exit.i.i.i

_ZN6duckdb12_GLOBAL__N_120SortedAggregateState4SwapERS1_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i5.i.i.i.i.i, %_ZSt4swapIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
end_hunk_0
