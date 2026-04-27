inline.NumInlined: 68
inline.NumDeleted: 49
begin_hunk_0_@_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl:bb.a
  %i.ac = phi ptr [ %.pre, %.lr.ph ], [ %i.ay, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !22  ; 2 uses
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !27
  %.not.i.i5 = icmp eq ptr %i.ac, %i.ag
end_hunk_0
begin_hunk_1_@_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl:bb.a
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  %i.ay = phi ptr [ %i.aw, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %i.ai, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !29
end_hunk_1
begin_hunk_2_@llvm.lifetime.end.p0
; Function Attrs: nounwind
declare void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36)) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %0, i64 %1, i32 noundef %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.i, %bb.a
end_hunk_2
begin_hunk_3_@llvm.assume
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_3
