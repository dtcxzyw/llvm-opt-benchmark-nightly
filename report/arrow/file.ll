inline.NumInlined: 2014
inline.NumDeleted: 789
begin_hunk_0_@_ZN5arrow2io12ReadableFile16ReadableFileImpl8WillNeedERKSt6vectorINS0_9ReadRangeESaIS4_EE:bb.a
  br i1 %i.i, label %.critedge40, label %_ZN5arrow6StatusD2Ev.exit46

_ZN5arrow6StatusD2Ev.exit46:                      ; preds = %_ZN5arrow6StatusD2Ev.exit44, %.critedge38
  %.sroa.057.062 = phi ptr [ %i.t, %.critedge38 ], [ %i.f, %_ZN5arrow6StatusD2Ev.exit44 ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.057.062) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.j = load i64, ptr %.sroa.057.062, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.057.062, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow2io16MemoryMappedFile9MemoryMap5SliceEll:bb.a
  %i.e = sub nsw i64 %i.d, %2
  %.sroa.speculated24 = tail call i64 @llvm.smin.i64(i64 %i.e, i64 %3) ; 2 uses
  %i.f = icmp sgt i64 %.sroa.speculated24, 0
  %5 = tail call i64 @llvm.smax.i64(i64 %.sroa.speculated24, i64 0)
  br i1 %i.f, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_ZN5arrow2io16MemoryMappedFile9MemoryMap5SliceEll:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %2, ptr %i.a, align 8, !tbaa !132, !noalias !316
  store i64 %5, ptr %i.b, align 8, !tbaa !132, !noalias !316
  %i.q = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31
          to label %.noexc unwind label %bb.l     ; 4 uses

end_hunk_2
begin_hunk_3_@_ZN5arrow2io16MemoryMappedFile8WillNeedERKSt6vectorINS0_9ReadRangeESaIS3_EE:bb.a
bb.j:                                             ; preds = %.lr.ph, %bb.h
  %i.ba = phi ptr [ %i.q, %.lr.ph ], [ %i.au, %bb.h ]
  %.03063 = phi i64 [ 0, %.lr.ph ], [ %i.as, %bb.h ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %.03063 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !86
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
end_hunk_3
begin_hunk_4_@llvm.umin.i64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #29

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
end_hunk_4
