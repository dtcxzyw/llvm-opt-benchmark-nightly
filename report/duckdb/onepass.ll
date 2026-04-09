inline.NumInlined: 434
inline.NumDeleted: 268
begin_hunk_0_@_ZN10duckdb_re24Prog9IsOnePassEv:bb.a
  %i.fy = sext i32 %.0179455 to i64               ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %i.cf, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !73  ; 2 uses
  %exitcond.not617 = icmp eq i32 %.0179455, 255
  br i1 %exitcond.not617, label %.critedge, label %.lr.ph616

bb.aj:                                            ; preds = %.lr.ph616
  %exitcond.not = icmp eq i64 %indvars.iv.next479, 255
  br i1 %exitcond.not, label %.critedge, label %.lr.ph616, !llvm.loop !106

.lr.ph616:                                        ; preds = %bb.ai, %bb.aj
  %indvars.iv478614 = phi i64 [ %indvars.iv.next479, %bb.aj ], [ %i.fy, %bb.ai ] ; 2 uses
  %indvars.iv.next479 = add nsw i64 %indvars.iv478614, 1 ; 3 uses
  %i.gb = getelementptr inbounds i8, ptr %i.cf, i64 %indvars.iv.next479
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !73
  %i.gd = icmp eq i8 %i.gc, %i.ga
end_hunk_0
begin_hunk_1_@_ZN10duckdb_re24Prog9IsOnePassEv:bb.a

bb.ao:                                            ; preds = %.lr.ph462, %bb.as
  %.0146460 = phi i32 [ %i.gv, %.lr.ph462 ], [ %i.hn, %bb.as ] ; 3 uses
  %i.hb = sext i32 %.0146460 to i64               ; 3 uses
  %i.hc = getelementptr inbounds i8, ptr %i.cf, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !73  ; 2 uses
  %smax483 = call i32 @llvm.smax.i32(i32 %.0146460, i32 255) ; 2 uses
  %smax486 = call i64 @llvm.smax.i64(i64 %i.hb, i64 255)
  %exitcond487.not621 = icmp sgt i32 %.0146460, 254
  br i1 %exitcond487.not621, label %.critedge10, label %.lr.ph619

bb.ap:                                            ; preds = %.lr.ph619
  %exitcond487.not = icmp eq i64 %indvars.iv.next482, %smax486
  br i1 %exitcond487.not, label %.critedge10, label %.lr.ph619, !llvm.loop !108

.lr.ph619:                                        ; preds = %bb.ao, %bb.ap
  %indvars.iv481617 = phi i64 [ %indvars.iv.next482, %bb.ap ], [ %i.hb, %bb.ao ] ; 2 uses
  %indvars.iv.next482 = add nsw i64 %indvars.iv481617, 1 ; 3 uses
  %i.he = getelementptr inbounds i8, ptr %i.cf, i64 %indvars.iv.next482
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !73
  %i.hg = icmp eq i8 %i.hf, %i.hd
end_hunk_1
begin_hunk_2_@llvm.umax.i8
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_2
