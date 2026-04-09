inline.NumInlined: 1388
inline.NumDeleted: 170
begin_hunk_0_@inf_GenSuperpositionRight:bb.a

bb.as:                                            ; preds = %bb.ar, %bb.ap, %.lr.ph.i139.i.i
  %indvars.iv.next.i151.i.i = add nsw i64 %indvars.iv.i140.i.i, 1
  %.not46.not.i152.i.i = icmp slt i64 %indvars.iv.i140.i.i, %i.dv
  br i1 %.not46.not.i152.i.i, label %.lr.ph.i139.i.i, label %inf_LitMax.exit157.thread169.i.i, !llvm.loop !8

inf_LitMax.exit157.thread169.i.i:                 ; preds = %bb.as, %bb.ao
  call void @term_Delete(ptr noundef %i.dt) #14
end_hunk_0
begin_hunk_1_@inf_GenSuperpositionRight:bb.a

bb.ba:                                            ; preds = %bb.az, %bb.ax, %.lr.ph.i121.i.i
  %indvars.iv.next.i123.i.i = add nsw i64 %indvars.iv.i122.i.i, 1
  %.not46.not.i.i.i = icmp slt i64 %indvars.iv.i122.i.i, %i.fg
  br i1 %.not46.not.i.i.i, label %.lr.ph.i121.i.i, label %inf_LitMax.exit.thread179.i.i, !llvm.loop !8

inf_LitMax.exit.thread179.i.i:                    ; preds = %bb.ba, %bb.aw
  call void @term_Delete(ptr noundef %i.fe) #14
end_hunk_1
begin_hunk_2_@inf_GeneralResolution:bb.a

bb.an:                                            ; preds = %bb.am, %bb.ak, %.lr.ph.i185
  %indvars.iv.next.i197 = add nsw i64 %indvars.iv.i186, 1
  %.not46.not.i198 = icmp slt i64 %indvars.iv.i186, %i.dq
  br i1 %.not46.not.i198, label %.lr.ph.i185, label %inf_LitMax.exit203.thread225, !llvm.loop !8

inf_LitMax.exit203.thread225:                     ; preds = %bb.an, %bb.aj
  call void @term_Delete(ptr noundef %i.do) #14
end_hunk_2
begin_hunk_3_@inf_GeneralResolution:bb.a

bb.av:                                            ; preds = %bb.au, %bb.as, %.lr.ph.i167
  %indvars.iv.next.i169 = add nsw i64 %indvars.iv.i168, 1
  %.not46.not.i = icmp slt i64 %indvars.iv.i168, %i.fc
  br i1 %.not46.not.i, label %.lr.ph.i167, label %inf_LitMax.exit.thread235, !llvm.loop !8

inf_LitMax.exit.thread235:                        ; preds = %bb.av, %bb.ar
  call void @term_Delete(ptr noundef %i.fa) #14
end_hunk_3
begin_hunk_4_@inf_GenSuperpositionLeft:bb.a

bb.ar:                                            ; preds = %bb.aq, %bb.ao, %.lr.ph.i146.i.i
  %indvars.iv.next.i158.i.i = add nsw i64 %indvars.iv.i147.i.i, 1
  %.not46.not.i159.i.i = icmp slt i64 %indvars.iv.i147.i.i, %i.ea
  br i1 %.not46.not.i159.i.i, label %.lr.ph.i146.i.i, label %inf_LitMax.exit164.thread176.i.i, !llvm.loop !8

inf_LitMax.exit164.thread176.i.i:                 ; preds = %bb.ar, %bb.an
  call void @term_Delete(ptr noundef %i.dy) #14
end_hunk_4
begin_hunk_5_@inf_GenSuperpositionLeft:bb.a

bb.az:                                            ; preds = %bb.ay, %bb.aw, %.lr.ph.i128.i.i
  %indvars.iv.next.i130.i.i = add nsw i64 %indvars.iv.i129.i.i, 1
  %.not46.not.i.i.i = icmp slt i64 %indvars.iv.i129.i.i, %i.fl
  br i1 %.not46.not.i.i.i, label %.lr.ph.i128.i.i, label %inf_LitMax.exit.thread186.i.i, !llvm.loop !8

inf_LitMax.exit.thread186.i.i:                    ; preds = %bb.az, %bb.av
  call void @term_Delete(ptr noundef %i.fj) #14
end_hunk_5
begin_hunk_6_@inf_GeneralHyperResolution:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ao = sext i32 %.val75.i to i64
  %i.ap = sext i32 %.val76.i to i64
  %i.aq = add nsw i64 %i.ap, %i.ao
  %i.ar = sext i32 %i.ai to i64
  br label %bb.f

bb.f:                                             ; preds = %.loopexit115.i, %.lr.ph131.i
end_hunk_6
begin_hunk_7_@inf_GeneralHyperResolution:bb.a
.loopexit115.i:                                   ; preds = %bb.v, %._crit_edge.i, %bb.h
  %.6.i = phi ptr [ %.057129.i, %bb.h ], [ %.2.lcssa.i, %._crit_edge.i ], [ %.2.lcssa.i, %bb.v ] ; 5 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %.not63.not.i = icmp slt i64 %indvars.iv.i, %i.ar
  br i1 %.not63.not.i, label %bb.f, label %inf_BackwardHyperResolution.exit, !llvm.loop !68

inf_BackwardHyperResolution.exit:                 ; preds = %.loopexit115.i
  call void @clause_Delete(ptr noundef %i.ac) #14
end_hunk_7
begin_hunk_8_@inf_GenSPRightEqToGiven:bb.a

bb.ac:                                            ; preds = %bb.ab, %bb.z, %.lr.ph.i211
  %indvars.iv.next.i223 = add nsw i64 %indvars.iv.i212, 1
  %.not46.not.i224 = icmp slt i64 %indvars.iv.i212, %i.cm
  br i1 %.not46.not.i224, label %.lr.ph.i211, label %inf_LitMax.exit229.thread319, !llvm.loop !8

inf_LitMax.exit229.thread319:                     ; preds = %bb.ac, %bb.y
  call void @term_Delete(ptr noundef %i.ck) #14
end_hunk_8
begin_hunk_9_@inf_GenSPRightEqToGiven:bb.a

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %.lr.ph.i193
  %indvars.iv.next.i195 = add nsw i64 %indvars.iv.i194, 1
  %.not46.not.i = icmp slt i64 %indvars.iv.i194, %i.dx
  br i1 %.not46.not.i, label %.lr.ph.i193, label %inf_LitMax.exit.thread329, !llvm.loop !8

inf_LitMax.exit.thread329:                        ; preds = %bb.ak, %bb.ag
  call void @term_Delete(ptr noundef %i.dv) #14
end_hunk_9
begin_hunk_10_@inf_GenSPLeftEqToGiven:bb.a

bb.ac:                                            ; preds = %bb.ab, %bb.z, %.lr.ph.i209
  %indvars.iv.next.i221 = add nsw i64 %indvars.iv.i210, 1
  %.not46.not.i222 = icmp slt i64 %indvars.iv.i210, %i.cl
  br i1 %.not46.not.i222, label %.lr.ph.i209, label %inf_LitMax.exit227.thread317, !llvm.loop !8

inf_LitMax.exit227.thread317:                     ; preds = %bb.ac, %bb.y
  call void @term_Delete(ptr noundef %i.cj) #14
end_hunk_10
begin_hunk_11_@inf_GenSPLeftEqToGiven:bb.a

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %.lr.ph.i191
  %indvars.iv.next.i193 = add nsw i64 %indvars.iv.i192, 1
  %.not46.not.i = icmp slt i64 %indvars.iv.i192, %i.dw
  br i1 %.not46.not.i, label %.lr.ph.i191, label %inf_LitMax.exit.thread327, !llvm.loop !8

inf_LitMax.exit.thread327:                        ; preds = %bb.ak, %bb.ag
  call void @term_Delete(ptr noundef %i.du) #14
end_hunk_11
begin_hunk_12_@llvm.umax.i32
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
end_hunk_12
