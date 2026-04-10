inline.NumInlined: 4
begin_hunk_0_@opt_parse:bb.a
  br i1 %exitcond.not, label %bb.aa, label %.preheader, !llvm.loop !24

bb.aa:                                            ; preds = %.preheader
  %5 = sub i32 %0, %i.as
  %i.ba = add i32 %5, 63
  %i.bb = add i32 %i.ba, %i.az
  %i.bc = sext i32 %i.bb to i64
  %i.bd = call noalias ptr @calloc(i64 noundef %i.bc, i64 noundef 1) #10 ; 5 uses
end_hunk_0
