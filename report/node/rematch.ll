inline.NumInlined: 355
inline.NumDeleted: 28
begin_hunk_0_@_ZN6icu_7812RegexMatcher12MatchChunkAtEiaR10UErrorCode:bb.a
  br label %.critedge1078

bb.if:                                            ; preds = %bb.id
  %i.bbb = load i64, ptr %.0809, align 8          ; 4 uses
  %i.bbc = icmp slt i64 %i.bal, %i.ban
  br i1 %i.bbc, label %.lr.ph1510, label %.critedge1088

end_hunk_0
begin_hunk_1_@_ZN6icu_7812RegexMatcher12MatchChunkAtEiaR10UErrorCode:bb.a
  %i.bbd = load i64, ptr %i.bu, align 8
  %i.bbe = add i64 %i.bbb, %i.ban
  %i.bbf = sub i64 %i.bbe, %i.bal                 ; 4 uses
  %smax = call i64 @llvm.smax.i64(i64 %i.bbb, i64 %i.bbd)
  br label %bb.ig

bb.ig:                                            ; preds = %.lr.ph1510, %bb.ij
  %.08771508 = phi i64 [ %i.bbb, %.lr.ph1510 ], [ %i.bbl, %bb.ij ] ; 3 uses
  %.08801507 = phi i64 [ %i.bal, %.lr.ph1510 ], [ %i.bbk, %bb.ij ] ; 2 uses
  %exitcond.not = icmp eq i64 %.08771508, %smax
  br i1 %exitcond.not, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  store i8 1, ptr %i.bv, align 8
end_hunk_1
begin_hunk_2_@_ZN6icu_7812RegexMatcher12MatchChunkAtEiaR10UErrorCode:bb.a

bb.ij:                                            ; preds = %bb.ii
  %i.bbk = add i64 %.08801507, 1                  ; 2 uses
  %i.bbl = add i64 %.08771508, 1
  %exitcond.not.a = icmp eq i64 %i.bbk, %i.ban
  br i1 %exitcond.not.a, label %.critedge1082, label %bb.ig, !llvm.loop !60

end_hunk_2
begin_hunk_3_@llvm.smax.i32
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_3
