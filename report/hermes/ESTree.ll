inline.NumInlined: 115
inline.NumDeleted: 67
begin_hunk_0_@_ZN6hermes6ESTree12getArgumentsEPNS0_22CallExpressionLikeNodeE:bb.a
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN6hermes6ESTree15hasSimpleParamsEPNS0_16FunctionLikeNodeE(ptr noundef readonly captures(address) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
end_hunk_0
begin_hunk_1_@_ZN6hermes6ESTree15hasSimpleParamsEPNS0_16FunctionLikeNodeE:bb.a
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.sroa.010.016 = phi ptr [ %.sroa.010.0, %.critedge ], [ %.sroa.010.014, %bb.a ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.016) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  %i.g = add i32 %i.f, -94
end_hunk_1
begin_hunk_2_@_ZN6hermes6ESTree15hasSimpleParamsEPNS0_16FunctionLikeNodeE:bb.a
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN6hermes6ESTree19hasParamExpressionsEPNS0_16FunctionLikeNodeE(ptr noundef readonly captures(address) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
end_hunk_2
begin_hunk_3_@_ZN6hermes6ESTree19hasParamExpressionsEPNS0_16FunctionLikeNodeE:bb.a
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.010.021 = phi ptr [ %.sroa.010.0, %bb.c ], [ %.sroa.010.019, %bb.a ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.021) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.010.021, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !7
  switch i32 %i.f, label %bb.c [
end_hunk_3
begin_hunk_4_@_ZN6hermes6ESTree7isAsyncEPNS0_16FunctionLikeNodeE:bb.a
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_4
