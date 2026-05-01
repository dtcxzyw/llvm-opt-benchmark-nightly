inline.NumInlined: 41205
inline.NumDeleted: 6297
begin_hunk_0_@_ZN6duckdb23GetSegmentDataFunctionsERNS_20ListSegmentFunctionsERKNS_11LogicalTypeE:bb.a

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %.tr86125 = phi ptr [ %.tr86.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 5 uses
  %.tr124 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 67 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.tr86125, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !483
  switch i8 %i.f, label %bb.ap [
end_hunk_0
begin_hunk_1_@_ZN6duckdb23GetSegmentDataFunctionsERNS_20ListSegmentFunctionsERKNS_11LogicalTypeE:bb.a
  br label %common.resume

bb.w:                                             ; preds = %.lr.ph
  store <2 x ptr> <ptr @_ZN6duckdbL17CreateListSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEt, ptr @_ZN6duckdbL22WriteDataToListSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEPNS_11ListSegmentERNS_28RecursiveUnifiedVectorFormatERm>, ptr %.tr124, align 8, !tbaa !364
  %i.be = getelementptr inbounds nuw i8, ptr %.tr124, i64 16
  store ptr @_ZN6duckdbL23ReadDataFromListSegmentERKNS_20ListSegmentFunctionsEPKNS_11ListSegmentERNS_6VectorERm, ptr %i.be, align 8, !tbaa !1005
  %i.bf = getelementptr inbounds nuw i8, ptr %.tr124, i64 32 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb23GetSegmentDataFunctionsERNS_20ListSegmentFunctionsERKNS_11LogicalTypeE:bb.a
  br label %common.resume

bb.am:                                            ; preds = %.lr.ph
  store <2 x ptr> <ptr @_ZN6duckdbL18CreateArraySegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEt, ptr @_ZN6duckdbL23WriteDataToArraySegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEPNS_11ListSegmentERNS_28RecursiveUnifiedVectorFormatERm>, ptr %.tr124, align 8, !tbaa !364
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr124, i64 16
  store ptr @_ZN6duckdbL24ReadDataFromArraySegmentERKNS_20ListSegmentFunctionsEPKNS_11ListSegmentERNS_6VectorERm, ptr %i.dl, align 8, !tbaa !1005
  %i.dm = getelementptr inbounds nuw i8, ptr %.tr124, i64 32 ; 2 uses
end_hunk_2
