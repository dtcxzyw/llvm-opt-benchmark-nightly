inline.NumInlined: 129
inline.NumDeleted: 49
begin_hunk_0_@_ZN3p2t5Sweep11SweepPointsERNS_12SweepContextE:bb.a
  br i1 %i.aa, label %bb.b, label %._crit_edge75, !llvm.loop !5

bb.c:                                             ; preds = %.lr.ph71, %_ZN3p2t5Sweep9EdgeEventERNS_12SweepContextEPNS_4EdgeEPNS_4NodeE.exit
  %.sroa.036.070 = phi ptr [ %i.n, %.lr.ph71 ], [ %i.sb, %_ZN3p2t5Sweep9EdgeEventERNS_12SweepContextEPNS_4EdgeEPNS_4NodeE.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.036.070) ]
  %i.ab = load ptr, ptr %.sroa.036.070, align 8   ; 9 uses
  store ptr %i.ab, ptr %i.i, align 8
  %i.ac = load ptr, ptr %i.ab, align 8
end_hunk_0
begin_hunk_1_@_ZN3p2t5SweepD2Ev:bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.04.08 = phi ptr [ %i.l, %bb.d ], [ %i.a, %bb.a ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.08) ]
  %i.j = load ptr, ptr %.sroa.04.08, align 8      ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.c
end_hunk_1
begin_hunk_2_@llvm.memmove.p0.p0.i64
; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_2
