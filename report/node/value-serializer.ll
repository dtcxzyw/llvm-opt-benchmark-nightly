inline.NumInlined: 3394
inline.NumDeleted: 1222
begin_hunk_0_@_ZN2v88internal15ValueSerializer10WriteJSMapENS0_12DirectHandleINS0_5JSMapEEE:bb.a
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %sh.diff = lshr i64 %i.s, 31                    ; 2 uses
  %tr.sh.diff = trunc i64 %sh.diff to i32         ; 2 uses
  %i.t = and i32 %tr.sh.diff, -2                  ; 2 uses
  %i.u = load ptr, ptr %0, align 8
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %i.u, i32 noundef %i.t, i8 noundef zeroext 0, i8 0) #27 ; 2 uses
  %i.w = load i64, ptr %.0.i.i32, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal15ValueSerializer10WriteJSMapENS0_12DirectHandleINS0_5JSMapEEE:bb.a
  br i1 %.not88, label %.lr.ph90.preheader, label %._crit_edge91

.lr.ph90.preheader:                               ; preds = %_ZN2v88internal15ValueSerializer8WriteTagENS0_16SerializationTagE.exit
  %wide.trip.count = and i64 %sh.diff, 2147483646
  br label %.lr.ph90

bb.c:                                             ; preds = %.lr.ph, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit38
end_hunk_1
begin_hunk_2_@llvm.umax.i64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
