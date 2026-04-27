inline.NumInlined: 95
inline.NumDeleted: 27
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile10readPixelsEii:bb.a
  br i1 %.not1640, label %.loopexit, label %.split

.split:                                           ; preds = %bb.b
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %2)
  %.sroa.speculated32 = tail call i32 @llvm.smin.i32(i32 %2, i32 %1)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 88
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile10readPixelsEii:bb.a
  %i.ay = load float, ptr %i.x, align 4, !tbaa !8, !noalias !58
  %i.az = load float, ptr %i.w, align 4, !tbaa !8, !noalias !58
  %i.ba = load float, ptr %i.v, align 4, !tbaa !8, !noalias !58
  %smin = sext i32 %.sroa.speculated32 to i64
  %i.bb = add i32 %3, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.split, %._crit_edge
end_hunk_1
begin_hunk_2_@_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile10readPixelsEii:bb.a
._crit_edge:                                      ; preds = %_ZN9Imath_3_14halfaSEf.exit25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond45.not = icmp eq i32 %i.bb, %lftr.wideiv
  br i1 %exitcond45.not, label %.loopexit, label %.lr.ph, !llvm.loop !61

bb.c:                                             ; preds = %.lr.ph, %_ZN9Imath_3_14halfaSEf.exit25
end_hunk_2
begin_hunk_3_@llvm.smin.i32
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_3
