inline.NumInlined: 2507
inline.NumDeleted: 162
begin_hunk_0_@cnf_OptimizedSkolemFormula:bb.a

.lr.ph374.lr.ph:                                  ; preds = %bb.a
  %i.f = getelementptr i8, ptr %4, i64 16         ; 19 uses
  %10 = trunc nuw i32 %7 to i1
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = getelementptr i8, ptr %1, i64 16         ; 2 uses
  br label %.lr.ph374
end_hunk_0
begin_hunk_1_@cnf_OptimizedSkolemFormula:bb.a

bb.j:                                             ; preds = %.lr.ph383, %bb.aw
  %.1116380 = phi ptr [ %.val142, %.lr.ph383 ], [ %.1116.val147, %bb.aw ] ; 4 uses
  br i1 %10, label %cnf_HaveProofOptSkolem.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not128, label %bb.n, label %bb.l
end_hunk_1
begin_hunk_2_@cnf_OptimizedSkolemFormula:bb.a
  %exitcond.not = icmp eq i32 %i.np, %i.mr
  br i1 %exitcond.not, label %.preheader344, label %.lr.ph404, !llvm.loop !192

.preheader:                                       ; preds = %list_Delete.exit226, %.preheader344
  %.0120.i.lcssa = phi ptr [ null, %.preheader344 ], [ %i.nr, %list_Delete.exit226 ] ; 2 uses
  %.0113.i.lcssa = phi i1 [ false, %.preheader344 ], [ %spec.select.i, %list_Delete.exit226 ]
  %.1105.i.lcssa = phi ptr [ %.0104.i.lcssa, %.preheader344 ], [ %.2106.i.lcssa, %list_Delete.exit226 ] ; 2 uses
  %.not324421 = icmp eq ptr %.1105.i.lcssa, null
  br i1 %.not324421, label %._crit_edge424, label %.lr.ph423

bb.bo:                                            ; preds = %.lr.ph417, %list_Delete.exit226
  %.1105.i416 = phi ptr [ %.0104.i.lcssa, %.lr.ph417 ], [ %.2106.i.lcssa, %list_Delete.exit226 ] ; 2 uses
  %.0110.i415 = phi i32 [ 0, %.lr.ph417 ], [ %i.og, %list_Delete.exit226 ] ; 2 uses
  %.0113.i413 = phi i1 [ false, %.lr.ph417 ], [ %spec.select.i, %list_Delete.exit226 ]
  %.2117.i413 = phi ptr [ %.0.i182.lcssa, %.lr.ph417 ], [ %.2117.val144.i, %list_Delete.exit226 ] ; 2 uses
  %.0120.i412 = phi ptr [ null, %.lr.ph417 ], [ %i.nr, %list_Delete.exit226 ] ; 4 uses
  %i.nq = getelementptr i8, ptr %.2117.i413, i64 8 ; 3 uses
end_hunk_2
begin_hunk_3_@cnf_OptimizedSkolemFormula:bb.a
._crit_edge409:                                   ; preds = %.lr.ph408, %list_Nconc.exit249
  %.2106.i.lcssa = phi ptr [ %.1105.i416, %list_Nconc.exit249 ], [ %.val.i241, %.lr.ph408 ] ; 4 uses
  %i.og = tail call i32 @list_Length(ptr noundef %i.nr) #19, !inline_history !184
  %.not324 = icmp ne ptr %.2106.i.lcssa, null
  %spec.select.i = select i1 %.not324, i1 true, i1 %.0113.i413 ; 2 uses
  %i.oh = tail call ptr @list_Copy(ptr noundef %i.nr) #19, !inline_history !184 ; 4 uses
  %i.oi = tail call ptr @list_Copy(ptr noundef %.2106.i.lcssa) #19, !inline_history !184 ; 3 uses
  %.not.i238 = icmp eq ptr %i.oh, null
end_hunk_3
begin_hunk_4_@cnf_OptimizedSkolemFormula:bb.a
  tail call fastcc void @cnf_OptimizedSkolemFormula(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2) %.tr335.ph430, ptr noundef %.val152.i, ptr noundef nonnull %5, ptr noundef %6, i32 noundef range(i32 0, 2) %7, ptr noundef %8, i32 noundef %.tr341370), !inline_history !184
  %.2117.val144.i = load ptr, ptr %.2117.i413, align 8 ; 2 uses
  %.not323.a = icmp eq ptr %.2117.val144.i, null
  br i1 %.not323.a, label %.preheader, label %bb.bo, !llvm.loop !197

.lr.ph423:                                        ; preds = %.preheader, %.lr.ph423
  %.3.i422 = phi ptr [ %.val.i219, %.lr.ph423 ], [ %.1105.i.lcssa, %.preheader ] ; 4 uses
end_hunk_4
