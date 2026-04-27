inline.NumInlined: 294
inline.NumDeleted: 158
begin_hunk_0_@tt_check_trickyness:bb.a
  br label %tt_skip_pdffont_random_tag.exit.i

tt_skip_pdffont_random_tag.exit.i:                ; preds = %.preheader.5.i.i, %.preheader.4.i.i, %.preheader.3.i.i, %.preheader.2.i.i, %.preheader.1.i.i, %.preheader.preheader.i.i, %bb.d, %bb.c
  %.09.i.i = phi ptr [ %i.c, %.preheader.preheader.i.i ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %spec.select.i.i, %.preheader.5.i.i ], [ %i.c, %.preheader.4.i.i ], [ %i.c, %.preheader.3.i.i ], [ %i.c, %.preheader.2.i.i ], [ %i.c, %.preheader.1.i.i ] ; 20 uses
  %i.ak = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) @tt_check_trickyness_family.trick_names) #24
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.e, label %tt_check_trickyness_family.exit.thread
end_hunk_0
begin_hunk_1_@llvm.umin.i32
; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #21

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
