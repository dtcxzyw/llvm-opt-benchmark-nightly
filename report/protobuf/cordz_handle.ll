inline.NumInlined: 154
inline.NumDeleted: 87
begin_hunk_0_@_ZN4absl12lts_2025051213cord_internal11CordzHandleD2Ev:bb.a
  br label %_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EED2Ev.exit

.lr.ph69:                                         ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit.preheader, %_ZN4absl12lts_202505129MutexLockD2Ev.exit
  %.sroa.013.068 = phi ptr [ %i.as, %_ZN4absl12lts_202505129MutexLockD2Ev.exit ], [ %.sroa.021.135, %_ZN4absl12lts_202505129MutexLockD2Ev.exit.preheader ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.013.068, align 8, !tbaa !19 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN4absl12lts_202505129MutexLockD2Ev.exit, label %bb.n
end_hunk_0
begin_hunk_1_@_Znwm
; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
begin_hunk_2_@llvm.assume/@llvm.umax.i64
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
end_hunk_2
