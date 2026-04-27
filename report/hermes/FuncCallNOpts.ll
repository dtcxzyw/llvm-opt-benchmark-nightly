inline.NumInlined: 139
inline.NumDeleted: 102
begin_hunk_0_@_ZN6hermes13FuncCallNOpts13runOnFunctionEPNS_8FunctionE:bb.a
  ret i1 %.0.lcssa6668

bb.c:                                             ; preds = %.lr.ph49, %._crit_edge
  %.sroa.034.047 = phi ptr [ %.sroa.034.044, %.lr.ph49 ], [ %.sroa.034.0, %._crit_edge ] ; 3 uses
  %.046 = phi i1 [ false, %.lr.ph49 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.034.047, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.034.047, i64 56 ; 2 uses
  %.sroa.030.040 = load ptr, ptr %i.p, align 8, !tbaa !63 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes13FuncCallNOpts13runOnFunctionEPNS_8FunctionE:bb.a
  br i1 %.not, label %._crit_edge50, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %bb.l
  %.sroa.030.043 = phi ptr [ %.sroa.030.0, %bb.l ], [ %.sroa.030.040, %bb.c ] ; 11 uses
  %.142 = phi i1 [ %.3, %bb.l ], [ %.046, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.030.043, i64 16 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !66
  %i.u = icmp eq i8 %i.t, 91
end_hunk_1
begin_hunk_2_@_ZN6hermes11Instruction15eraseFromParentEv
; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_2
begin_hunk_3_@llvm.assume/@llvm.umax.i64
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind allocsize(0) }
attributes #13 = { noreturn nounwind }
end_hunk_3
