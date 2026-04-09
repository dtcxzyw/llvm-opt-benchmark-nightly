inline.NumInlined: 102
inline.NumDeleted: 41
begin_hunk_0_@_ZN6icu_7825CollationFastLatinBuilder15encodeUniqueCEsER10UErrorCode:bb.a

.lr.ph:                                           ; preds = %.preheader
  %i.ab = trunc i32 %.090104 to i16               ; 2 uses
  %i.ac = sext i32 %.063111 to i64                ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %.063111, i32 3)
  %i.ad = add nuw i32 %smax, 1                    ; 2 uses
  %smax114 = tail call i64 @llvm.smax.i64(i64 %i.ac, i64 3)
  %indvars.iv.next122 = add nsw i64 %i.ac, 1      ; 2 uses
  %i.ae = trunc nsw i64 %indvars.iv.next122 to i32 ; 2 uses
  %i.af = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9setCharAtEiDs(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i32 noundef %i.ae, i16 noundef zeroext %i.ab) #10 ; 0 uses
  %exitcond.not124 = icmp sgt i32 %.063111, 2
  br i1 %exitcond.not124, label %._crit_edge, label %.lr.ph124

bb.e:                                             ; preds = %.lr.ph124
  %indvars.iv.next = add nsw i64 %indvars.iv.next123, 1 ; 2 uses
  %i.ag = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  %i.ah = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9setCharAtEiDs(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i32 noundef %i.ag, i16 noundef zeroext %i.ab) #10 ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next123, %smax114
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph124, !llvm.loop !9

.lr.ph124:                                        ; preds = %.lr.ph, %bb.e
  %i.ai = phi i32 [ %i.ag, %bb.e ], [ %i.ae, %.lr.ph ]
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
