begin_hunk_0
; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @openregion(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %3, i32 %1)
  %smin = sext i32 %i.a to i64
  %4 = tail call i32 @llvm.smax.i32(i32 %1, i32 %3)
  %i.b = add i32 %4, 1
  %i.c = tail call i32 @llvm.smin.i32(i32 %2, i32 %0)
  %smin43 = sext i32 %i.c to i64
  %5 = tail call i32 @llvm.smax.i32(i32 %0, i32 %2)
  %i.d = add i32 %5, 1
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.d
end_hunk_0
begin_hunk_1_@openregion:bb.a
bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.b, %lftr.wideiv
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !8

bb.c:                                             ; preds = %.preheader, %bb.b
end_hunk_1
begin_hunk_2_@openregion:bb.a
bb.d:                                             ; preds = %bb.b
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, 1 ; 2 uses
  %lftr.wideiv46 = trunc i64 %indvars.iv.next45 to i32
  %exitcond47.not = icmp eq i32 %i.d, %lftr.wideiv46
  br i1 %exitcond47.not, label %.loopexit, label %.preheader, !llvm.loop !11

.loopexit:                                        ; preds = %bb.d, %bb.c
end_hunk_2
begin_hunk_3_@openregion:bb.a
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

end_hunk_3
