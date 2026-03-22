begin_hunk_0

.epil.preheader:                                  ; preds = %countFrequencies.exit.preheader.unr-lcssa, %15
  %.06.i.epil.init = phi i64 [ 0, %15 ], [ %45, %countFrequencies.exit.preheader.unr-lcssa ] ; [#uses=1 type=i64]
  %lcmp.mod533 = icmp ne i64 %xtraiter, 0         ; [#uses=1 type=i1]
  tail call void @llvm.assume(i1 %lcmp.mod533)
  br label %46

46:                                               ; preds = %46, %.epil.preheader
end_hunk_0
begin_hunk_1
  %313 = lshr i64 %312, 1                         ; [#uses=1 type=i64]
  store i64 %309, ptr %310, align 8, !tbaa !9
  %indvars.iv.next37.i.i.1 = add nsw i64 %indvars.iv36.i.i, -2 ; [#uses=1 type=i64]
  %.not534 = icmp eq i64 %indvars.iv.next37.i.i, 1 ; [#uses=1 type=i1]
  br i1 %.not534, label %.preheader.i.i, label %.preheader27.i.i, !llvm.loop !23

.preheader.i.i:                                   ; preds = %.preheader27.i.i, %332
  %indvars.iv39.i.i = phi i64 [ %indvars.iv.next40.i.i.1, %332 ], [ 0, %.preheader27.i.i ] ; [#uses=4 type=i64]
end_hunk_1
begin_hunk_2
  %357 = add nuw i32 %.0103196.i, 13              ; [#uses=1 type=i32]
  %smin271 = tail call i32 @llvm.smin.i32(i32 %354, i32 15) ; [#uses=1 type=i32]
  %358 = sub i32 %357, %smin271                   ; [#uses=1 type=i32]
  %359 = lshr i32 %358, 3                         ; [#uses=1 type=i32]
  %360 = zext nneg i32 %359 to i64                ; [#uses=1 type=i64]
  %361 = tail call i64 @llvm.usub.sat.i64(i64 %333, i64 %.081198.i244) ; [#uses=1 type=i64]
  %umin273 = tail call i64 @llvm.umin.i64(i64 %360, i64 %361) ; [#uses=2 type=i64]
end_hunk_2
begin_hunk_3
  %414 = add nuw i32 %.0103196.i, 13              ; [#uses=1 type=i32]
  %smin293 = tail call i32 @llvm.smin.i32(i32 %411, i32 15) ; [#uses=1 type=i32]
  %415 = sub i32 %414, %smin293                   ; [#uses=1 type=i32]
  %416 = lshr i32 %415, 3                         ; [#uses=1 type=i32]
  %417 = zext nneg i32 %416 to i64                ; [#uses=1 type=i64]
  %418 = tail call i64 @llvm.usub.sat.i64(i64 %333, i64 %.081198.i244) ; [#uses=1 type=i64]
  %umin295 = tail call i64 @llvm.umin.i64(i64 %417, i64 %418) ; [#uses=2 type=i64]
end_hunk_3
begin_hunk_4
  %441 = add nuw i32 %.0103196.i, 13              ; [#uses=1 type=i32]
  %smin = tail call i32 @llvm.smin.i32(i32 %438, i32 15) ; [#uses=1 type=i32]
  %442 = sub i32 %441, %smin                      ; [#uses=1 type=i32]
  %443 = lshr i32 %442, 3                         ; [#uses=1 type=i32]
  %444 = zext nneg i32 %443 to i64                ; [#uses=1 type=i64]
  %445 = tail call i64 @llvm.usub.sat.i64(i64 %333, i64 %.081198.i244) ; [#uses=1 type=i64]
  %umin = tail call i64 @llvm.umin.i64(i64 %444, i64 %445) ; [#uses=2 type=i64]
end_hunk_4
begin_hunk_5
  %509 = add nuw nsw i64 %508, 7                  ; [#uses=1 type=i64]
  %smin361 = tail call i64 @llvm.smin.i64(i64 %508, i64 15) ; [#uses=1 type=i64]
  %510 = sub nsw i64 %509, %smin361               ; [#uses=1 type=i64]
  %511 = lshr i64 %510, 3                         ; [#uses=1 type=i64]
  %512 = tail call i64 @llvm.usub.sat.i64(i64 %483, i64 %.0161346.i362) ; [#uses=1 type=i64]
  %umin364 = tail call i64 @llvm.umin.i64(i64 %511, i64 %512) ; [#uses=2 type=i64]
  %min.iters.check366 = icmp samesign ult i64 %umin364, 16 ; [#uses=1 type=i1]
end_hunk_5
begin_hunk_6
  %.1162.lcssa.i = phi ptr [ %.0161346.i, %501 ], [ %526, %.critedge.loopexit.i60 ] ; [#uses=6 type=ptr]
  %529 = shl i64 %505, %481                       ; [#uses=1 type=i64]
  %530 = or i64 %529, %482                        ; [#uses=4 type=i64]
  %531 = add nsw i32 %.1186.lcssa.i, %479         ; [#uses=4 type=i32]
  %532 = icmp slt i32 %531, 8                     ; [#uses=1 type=i1]
  br i1 %532, label %.critedge235.i, label %.lr.ph332.preheader.i

.lr.ph332.preheader.i:                            ; preds = %.critedge.i61
  %.1162.lcssa.i339 = ptrtoint ptr %.1162.lcssa.i to i64 ; [#uses=1 type=i64]
  %533 = zext nneg i32 %531 to i64                ; [#uses=4 type=i64]
  %534 = tail call i64 @llvm.usub.sat.i64(i64 %533, i64 15) ; [#uses=1 type=i64]
  %535 = add nuw nsw i64 %534, 7                  ; [#uses=1 type=i64]
  %536 = lshr i64 %535, 3                         ; [#uses=1 type=i64]
end_hunk_6
begin_hunk_7
  %558 = shl i64 %530, 8                          ; [#uses=1 type=i64]
  %559 = sext i32 %.0205342.i to i64              ; [#uses=1 type=i64]
  %560 = or i64 %558, %559                        ; [#uses=2 type=i64]
  %561 = add nsw i32 %531, 8                      ; [#uses=2 type=i32]
  %562 = icmp slt i32 %531, 0                     ; [#uses=1 type=i1]
  br i1 %562, label %.loopexit268.i, label %.lr.ph337.preheader.i

.lr.ph337.preheader.i:                            ; preds = %.critedge235.i, %.critedge235.thread.i
end_hunk_7
begin_hunk_8
  %566 = add i32 %563, 7                          ; [#uses=1 type=i32]
  %smin315 = tail call i32 @llvm.smin.i32(i32 %563, i32 15) ; [#uses=1 type=i32]
  %567 = sub i32 %566, %smin315                   ; [#uses=1 type=i32]
  %568 = lshr i32 %567, 3                         ; [#uses=1 type=i32]
  %569 = zext nneg i32 %568 to i64                ; [#uses=1 type=i64]
  %570 = tail call i64 @llvm.usub.sat.i64(i64 %483, i64 %.2163.lcssa450.i316) ; [#uses=1 type=i64]
  %umin318 = tail call i64 @llvm.umin.i64(i64 %569, i64 %570) ; [#uses=2 type=i64]
end_hunk_8
begin_hunk_9
  %647 = add nuw nsw i64 %646, 7                  ; [#uses=1 type=i64]
  %smin407 = tail call i64 @llvm.smin.i64(i64 %646, i64 15) ; [#uses=1 type=i64]
  %648 = sub nsw i64 %647, %smin407               ; [#uses=1 type=i64]
  %649 = lshr i64 %648, 3                         ; [#uses=1 type=i64]
  %650 = add i64 %2, %8                           ; [#uses=1 type=i64]
  %651 = tail call i64 @llvm.usub.sat.i64(i64 %650, i64 %.8169.i408.le) ; [#uses=1 type=i64]
  %umin410 = tail call i64 @llvm.umin.i64(i64 %649, i64 %651) ; [#uses=2 type=i64]
end_hunk_9
begin_hunk_10
  %673 = add nuw nsw i64 %672, 7                  ; [#uses=1 type=i64]
  %smin430 = tail call i64 @llvm.smin.i64(i64 %672, i64 15) ; [#uses=1 type=i64]
  %674 = sub nsw i64 %673, %smin430               ; [#uses=1 type=i64]
  %675 = lshr i64 %674, 3                         ; [#uses=1 type=i64]
  %676 = add i64 %2, %8                           ; [#uses=1 type=i64]
  %677 = tail call i64 @llvm.usub.sat.i64(i64 %676, i64 %.10171.lcssa.i431) ; [#uses=1 type=i64]
  %umin433 = tail call i64 @llvm.umin.i64(i64 %675, i64 %677) ; [#uses=2 type=i64]
end_hunk_10
begin_hunk_11
  %706 = add i32 %703, 7                          ; [#uses=1 type=i32]
  %smin453 = tail call i32 @llvm.smin.i32(i32 %703, i32 15) ; [#uses=1 type=i32]
  %707 = sub i32 %706, %smin453                   ; [#uses=1 type=i32]
  %708 = lshr i32 %707, 3                         ; [#uses=1 type=i32]
  %709 = zext nneg i32 %708 to i64                ; [#uses=1 type=i64]
  %710 = add i64 %2, %8                           ; [#uses=1 type=i64]
  %711 = tail call i64 @llvm.usub.sat.i64(i64 %710, i64 %.11172.lcssa477.i454) ; [#uses=1 type=i64]
end_hunk_11
