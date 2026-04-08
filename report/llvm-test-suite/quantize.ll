inline.NumInlined: 7
begin_hunk_0_@VBR_iteration_loop:bb.a
  %i.fu = add nsw i32 %i.ft, 1200
  %i.fv = call i32 @llvm.smax.i32(i32 %i.fu, i32 %.1303) ; 4 uses
  %i.fw = sub nsw i32 %i.fv, %.1303
  %12 = sdiv i32 %i.fw, 4
  %i.fx = add nsw i32 %i.fv, %.1303
  %i.fy = sdiv i32 %i.fx, 2
  %i.fz = add nsw i32 %i.fv, 1
end_hunk_0
begin_hunk_1_@VBR_iteration_loop:bb.a
  %.2282 = phi i32 [ %.0280, %bb.n ], [ %i.hc, %bb.p ], [ %.0280, %bb.q ] ; 2 uses
  %.2 = phi i32 [ %i.gd, %bb.n ], [ %i.hd, %bb.p ], [ %i.he, %bb.q ]
  %.1299362369 = lshr i32 %.0298, 1
  %13 = icmp sgt i32 %.0298, 21
  br i1 %13, label %bb.m, label %bb.s, !llvm.loop !49

bb.s:                                             ; preds = %bb.r
end_hunk_1
