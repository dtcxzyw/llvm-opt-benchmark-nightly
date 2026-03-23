begin_hunk_0
  %313 = lshr i64 %312, 1
  store i64 %309, ptr %310, align 8, !tbaa !9
  %indvars.iv.next37.i.i.1 = add nsw i64 %indvars.iv36.i.i, -2
  %.not534 = icmp eq i64 %indvars.iv.next37.i.i, 1
  br i1 %.not534, label %.preheader.i.i, label %.preheader27.i.i, !llvm.loop !23

.preheader.i.i:                                   ; preds = %.preheader27.i.i, %332
  %indvars.iv39.i.i = phi i64 [ %indvars.iv.next40.i.i.1, %332 ], [ 0, %.preheader27.i.i ] ; 4 uses
end_hunk_0
begin_hunk_1
  %357 = add nuw i32 %.0103196.i, 13
  %smin271 = tail call i32 @llvm.smin.i32(i32 %354, i32 15)
  %358 = sub i32 %357, %smin271
  %359 = lshr i32 %358, 3
  %360 = zext nneg i32 %359 to i64
  %361 = tail call i64 @llvm.usub.sat.i64(i64 %333, i64 %.081198.i244)
  %umin273 = tail call i64 @llvm.umin.i64(i64 %360, i64 %361) ; 2 uses
end_hunk_1
begin_hunk_2
  %414 = add nuw i32 %.0103196.i, 13
  %smin293 = tail call i32 @llvm.smin.i32(i32 %411, i32 15)
  %415 = sub i32 %414, %smin293
  %416 = lshr i32 %415, 3
  %417 = zext nneg i32 %416 to i64
  %418 = tail call i64 @llvm.usub.sat.i64(i64 %333, i64 %.081198.i244)
  %umin295 = tail call i64 @llvm.umin.i64(i64 %417, i64 %418) ; 2 uses
end_hunk_2
begin_hunk_3
  %441 = add nuw i32 %.0103196.i, 13
  %smin = tail call i32 @llvm.smin.i32(i32 %438, i32 15)
  %442 = sub i32 %441, %smin
  %443 = lshr i32 %442, 3
  %444 = zext nneg i32 %443 to i64
  %445 = tail call i64 @llvm.usub.sat.i64(i64 %333, i64 %.081198.i244)
  %umin = tail call i64 @llvm.umin.i64(i64 %444, i64 %445) ; 2 uses
end_hunk_3
begin_hunk_4
  %509 = add nuw nsw i64 %508, 7
  %smin361 = tail call i64 @llvm.smin.i64(i64 %508, i64 15)
  %510 = sub nsw i64 %509, %smin361
  %511 = lshr i64 %510, 3
  %512 = tail call i64 @llvm.usub.sat.i64(i64 %483, i64 %.0161346.i362)
  %umin364 = tail call i64 @llvm.umin.i64(i64 %511, i64 %512) ; 2 uses
  %min.iters.check366 = icmp samesign ult i64 %umin364, 16
end_hunk_4
begin_hunk_5
  %.1162.lcssa.i = phi ptr [ %.0161346.i, %501 ], [ %526, %.critedge.loopexit.i60 ] ; 6 uses
  %529 = shl i64 %505, %481
  %530 = or i64 %529, %482                        ; 4 uses
  %531 = add nsw i32 %.1186.lcssa.i, %479         ; 4 uses
  %532 = icmp slt i32 %531, 8
  br i1 %532, label %.critedge235.i, label %.lr.ph332.preheader.i

.lr.ph332.preheader.i:                            ; preds = %.critedge.i61
  %.1162.lcssa.i339 = ptrtoint ptr %.1162.lcssa.i to i64
  %533 = zext nneg i32 %531 to i64                ; 4 uses
  %534 = tail call i64 @llvm.usub.sat.i64(i64 %533, i64 15)
  %535 = add nuw nsw i64 %534, 7
  %536 = lshr i64 %535, 3
end_hunk_5
begin_hunk_6
  %558 = shl i64 %530, 8
  %559 = sext i32 %.0205342.i to i64
  %560 = or i64 %558, %559                        ; 2 uses
  %561 = add nsw i32 %531, 8                      ; 2 uses
  %562 = icmp slt i32 %531, 0
  br i1 %562, label %.loopexit268.i, label %.lr.ph337.preheader.i

.lr.ph337.preheader.i:                            ; preds = %.critedge235.i, %.critedge235.thread.i
end_hunk_6
begin_hunk_7
  %566 = add i32 %563, 7
  %smin315 = tail call i32 @llvm.smin.i32(i32 %563, i32 15)
  %567 = sub i32 %566, %smin315
  %568 = lshr i32 %567, 3
  %569 = zext nneg i32 %568 to i64
  %570 = tail call i64 @llvm.usub.sat.i64(i64 %483, i64 %.2163.lcssa450.i316)
  %umin318 = tail call i64 @llvm.umin.i64(i64 %569, i64 %570) ; 2 uses
end_hunk_7
begin_hunk_8
  %647 = add nuw nsw i64 %646, 7
  %smin407 = tail call i64 @llvm.smin.i64(i64 %646, i64 15)
  %648 = sub nsw i64 %647, %smin407
  %649 = lshr i64 %648, 3
  %650 = add i64 %2, %8
  %651 = tail call i64 @llvm.usub.sat.i64(i64 %650, i64 %.8169.i408.le)
  %umin410 = tail call i64 @llvm.umin.i64(i64 %649, i64 %651) ; 2 uses
end_hunk_8
begin_hunk_9
  %673 = add nuw nsw i64 %672, 7
  %smin430 = tail call i64 @llvm.smin.i64(i64 %672, i64 15)
  %674 = sub nsw i64 %673, %smin430
  %675 = lshr i64 %674, 3
  %676 = add i64 %2, %8
  %677 = tail call i64 @llvm.usub.sat.i64(i64 %676, i64 %.10171.lcssa.i431)
  %umin433 = tail call i64 @llvm.umin.i64(i64 %675, i64 %677) ; 2 uses
end_hunk_9
begin_hunk_10
  %706 = add i32 %703, 7
  %smin453 = tail call i32 @llvm.smin.i32(i32 %703, i32 15)
  %707 = sub i32 %706, %smin453
  %708 = lshr i32 %707, 3
  %709 = zext nneg i32 %708 to i64
  %710 = add i64 %2, %8
  %711 = tail call i64 @llvm.usub.sat.i64(i64 %710, i64 %.11172.lcssa477.i454)
end_hunk_10
