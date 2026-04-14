begin_hunk_0_@ResvFrameBegin:bb.a
  %. = select i1 %i.g, i32 4088, i32 2040
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.i = load i32, ptr %i.h, align 8, !tbaa !15
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 7680)
  %i.j = sub nsw i32 7680, %4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i32, ptr %i.k, align 8, !tbaa !16
  %.not = icmp eq i32 %i.l, 0
  %i.m = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %.)
  %spec.store.select10 = select i1 %.not, i32 %i.m, i32 0
  store i32 %spec.store.select10, ptr @ResvMax, align 4
  %i.n = mul nsw i32 %i.i, %2
  %i.o = add nsw i32 %i.n, %i.d
end_hunk_0
begin_hunk_1_@llvm.smax.i32
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
