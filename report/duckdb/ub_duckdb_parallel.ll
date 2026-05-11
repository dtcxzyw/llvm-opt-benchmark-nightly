inline.NumInlined: 6986
inline.NumDeleted: 3568
begin_hunk_0_@_ZNK6duckdb8Pipeline15GetDependenciesEv:bb.a
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
end_hunk_0
begin_hunk_1_@_ZNK6duckdb8Pipeline15GetDependenciesEv:bb.a
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #39 ; 4 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !948
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !294
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !295
end_hunk_1
begin_hunk_2_@_ZNK6duckdb8Pipeline15GetDependenciesEv:bb.a
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb6vectorINS_8weak_ptrINS_8PipelineELb1EEELb1ESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !949

_ZN6duckdb6vectorINS_8weak_ptrINS_8PipelineELb1EEELb1ESaIS3_EEC2ERKS5_.exit: ; preds = %_ZSt10_ConstructIN6duckdb8weak_ptrINS0_8PipelineELb1EEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %.thread
  %.0.lcssa.i.i.i.i.i.i.a = phi ptr [ %2, %.thread ], [ %3, %_ZSt10_ConstructIN6duckdb8weak_ptrINS0_8PipelineELb1EEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.w, %_ZSt10_ConstructIN6duckdb8weak_ptrINS0_8PipelineELb1EEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %.0.lcssa.i.i.i.i.i.i.a, align 8, !tbaa !294
  ret void
}

end_hunk_2
