inline.NumInlined: 4299
inline.NumDeleted: 574
begin_hunk_0_@_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm:bb.a
_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [104 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

end_hunk_0
begin_hunk_1_@_ZNK6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEixEm:bb.a
_ZNK6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EE3getILb1EEERKS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

end_hunk_1
begin_hunk_2_@_ZN6duckdb18NestedLoopJoinMark7PerformERNS_9DataChunkERNS_20ColumnDataCollectionEPbRKNS_6vectorINS_13JoinConditionELb1ESaIS7_EEE:bb.a
bb.l:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.as = getelementptr inbounds nuw [104 x i8], ptr %i.ad, i64 %.068 ; 10 uses
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.au = load ptr, ptr %13, align 8, !tbaa !56   ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
end_hunk_2
begin_hunk_3_@_ZN6duckdb18NestedLoopJoinMark7PerformERNS_9DataChunkERNS_20ColumnDataCollectionEPbRKNS_6vectorINS_13JoinConditionELb1ESaIS7_EEE:bb.a
bb.q:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bj = getelementptr inbounds nuw [104 x i8], ptr %i.au, i64 %.068 ; 15 uses
  %i.bk = load i64, ptr %i.q, align 8, !tbaa !9   ; 9 uses
  %i.bl = load i64, ptr %i.r, align 8, !tbaa !9   ; 16 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.068
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !24  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 9
end_hunk_3
begin_hunk_4_@bcmp
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17
end_hunk_4
