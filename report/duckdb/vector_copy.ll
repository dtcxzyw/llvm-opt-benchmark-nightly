inline.NumInlined: 765
inline.NumDeleted: 419
begin_hunk_0_@_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmmm:.peel.begin

.noexc.peel:                                      ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = invoke noundef nonnull ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %bb.b unwind label %.loopexit.split-lp674

bb.b:                                             ; preds = %.noexc.peel
end_hunk_0
begin_hunk_1_@_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmmm:.peel.begin

.noexc362.peel:                                   ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = invoke noundef nonnull ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %bb.c unwind label %.loopexit.split-lp678

bb.c:                                             ; preds = %.noexc362.peel
end_hunk_1
begin_hunk_2_@_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmmm:.peel.begin

.noexc:                                           ; preds = %bb.ac
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn698, i64 136
  %i.bv = invoke noundef nonnull ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu)
          to label %bb.ad unwind label %.loopexit673

bb.ad:                                            ; preds = %.noexc
end_hunk_2
begin_hunk_3_@_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmmm:.peel.begin

.noexc362:                                        ; preds = %bb.ad
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn698, i64 120
  %i.bx = invoke noundef nonnull ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %bb.ae unwind label %.loopexit677

bb.ae:                                            ; preds = %.noexc362
end_hunk_3
begin_hunk_4_@_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm:bb.a
_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERKS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  ret ptr %i.p
}

end_hunk_4
begin_hunk_5_@_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm:bb.a
_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  ret ptr %i.p
}

end_hunk_5
begin_hunk_6_@llvm.experimental.noalias.scope.decl
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_6
