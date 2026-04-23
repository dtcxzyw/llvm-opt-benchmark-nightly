inline.NumInlined: 7022
inline.NumDeleted: 3467
begin_hunk_0_@_ZN2v88internal14V8HeapExplorer8AddEntryEmNS0_9HeapEntry4TypeEPKcm:bb.a
  ret ptr %i.p
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i32 0, 15) i32 @_ZN2v88internal14V8HeapExplorer18GetSystemEntryTypeENS0_6TaggedINS0_10HeapObjectEEE(ptr nonnull readnone align 8 captures(none) %0, i64 %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = add i64 %1, -1
end_hunk_0
begin_hunk_1_@_ZN2v88internal14V8HeapExplorer27ExtractFixedArrayReferencesEPNS0_9HeapEntryENS0_6TaggedINS0_10FixedArrayEEE:bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %4 = load atomic volatile i64, ptr %3 monotonic, align 8
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.i = shl i32 %indvars.iv.tr, 3
  %i.j = add nuw i32 %i.i, 16
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @_ZN2v88internal14V8HeapExplorer20SetInternalReferenceEPNS0_9HeapEntryEiNS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, i32 noundef %5, i64 %4, i32 noundef %i.j)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !123
end_hunk_1
begin_hunk_2_@_ZN2v88internal4Heap24IterateWeakGlobalHandlesEPNS0_11RootVisitorE

declare void @_ZN2v88internal11VisitObjectEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEEPNS0_13ObjectVisitorE(ptr noundef, i64, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal14V8HeapExplorer17IsEssentialObjectENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, i64 %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = trunc i64 %1 to i1
end_hunk_2
begin_hunk_3_@_ZN2v88internal14V8HeapExplorer17IsEssentialObjectENS0_6TaggedINS0_6ObjectEEE:bb.a
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal14V8HeapExplorer26IsEssentialHiddenReferenceENS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(280) %0, i64 %1, i32 noundef %2) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = trunc i64 %1 to i1
end_hunk_3
begin_hunk_4_@llvm.smin.i32
attributes #10 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_4
