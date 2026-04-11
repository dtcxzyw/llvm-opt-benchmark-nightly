inline.NumInlined: 8267
inline.NumDeleted: 4059
begin_hunk_0_@_ZN6duckdb25GroupedAggregateHashTable26FindOrCreateGroupsInternalERNS_9DataChunkERNS_6VectorES4_RNS_15SelectionVectorE:bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 2312 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 2336 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb25GroupedAggregateHashTable26FindOrCreateGroupsInternalERNS_9DataChunkERNS_6VectorES4_RNS_15SelectionVectorE:bb.a
          cleanup
  br label %bb.bo

bb.az:                                            ; preds = %bb.ax, %bb.aw
  %.pn = phi i64 [ 184, %bb.aw ], [ 192, %bb.ax ]
  %storemerge195.in.in.a = phi ptr [ %i.t, %bb.aw ], [ %i.dt, %bb.ax ]
  %storemerge195.in.in = getelementptr inbounds nuw i8, ptr %0, i64 %.pn
  %storemerge195.in = load ptr, ptr %storemerge195.in.in, align 8, !tbaa !307
  %storemerge195 = ptrtoint ptr %storemerge195.in to i64
  store i64 %storemerge195, ptr %10, align 8, !tbaa !307
  %storemerge = ptrtoint ptr %storemerge195.in.in.a to i64
  store i64 %storemerge, ptr %11, align 8, !tbaa !460
  invoke void @_ZNK6duckdb12optional_ptrINS_20PartitionedTupleDataELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ba unwind label %bb.ay
end_hunk_1
