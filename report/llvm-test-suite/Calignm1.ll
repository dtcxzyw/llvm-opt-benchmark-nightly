begin_hunk_0_@Calignm1:bb.a

.preheader374:                                    ; preds = %.preheader374.lr.ph, %._crit_edge444
  %indvars.iv581 = phi i64 [ 0, %.preheader374.lr.ph ], [ %indvars.iv.next582, %._crit_edge444 ] ; 9 uses
  %i.aaf = shl nuw nsw i64 %indvars.iv581, 2
  %.not359439 = icmp eq i64 %indvars.iv581, 0
  br i1 %.not359439, label %._crit_edge444, label %.lr.ph441

end_hunk_0
