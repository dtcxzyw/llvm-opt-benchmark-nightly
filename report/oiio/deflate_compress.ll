begin_hunk_0
  br i1 %i.zt, label %.lr.ph613, label %._crit_edge614, !llvm.loop !106

._crit_edge614:                                   ; preds = %.lr.ph613, %bb.r
  %.0494.lcssa = phi i32 [ %i.xg, %bb.r ], [ %i.zs, %.lr.ph613 ] ; 3 uses
  %.8480.lcssa = phi ptr [ %.7479, %bb.r ], [ %i.zq, %.lr.ph613 ] ; 4 uses
  %.8466.lcssa = phi i32 [ %.7465, %bb.r ], [ %i.zr, %.lr.ph613 ] ; 3 uses
  %.8.lcssa = phi i64 [ %.7, %bb.r ], [ %i.zl, %.lr.ph613 ] ; 2 uses
  %.3.lcssa = phi ptr [ %.2, %bb.r ], [ %i.yt, %.lr.ph613 ] ; 5 uses
  %.not544 = icmp eq i32 %.0494.lcssa, 0
  br i1 %.not544, label %bb.w, label %bb.s

end_hunk_0
begin_hunk_1
  %i.aae = load i8, ptr %i.aad, align 1, !tbaa !20
  %i.aaf = zext i8 %i.aae to i32
  %i.aag = add nuw nsw i32 %.8466.lcssa, %i.aaf   ; 3 uses
  %.not545 = icmp eq i32 %.0494.lcssa, 1
  br i1 %.not545, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
end_hunk_1
begin_hunk_2
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !20
  %i.aas = zext i8 %i.aar to i32
  %i.aat = add nuw nsw i32 %i.aag, %i.aas         ; 3 uses
  %.not546 = icmp eq i32 %.0494.lcssa, 2
  br i1 %.not546, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
end_hunk_2
