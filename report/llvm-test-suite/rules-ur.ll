inline.NumInlined: 207
inline.NumDeleted: 81
begin_hunk_0_@inf_GetURPartnerLits:bb.a

.lr.ph16:                                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.lr.ph16.split.split.us, label %.lr.ph16.split.us.split

.lr.ph16.split.us.split:                          ; preds = %.lr.ph16, %.loopexit.us
  %.015.us = phi ptr [ %.3.us, %.loopexit.us ], [ null, %.lr.ph16 ] ; 3 uses
end_hunk_0
begin_hunk_1_@inf_GetURPartnerLits:bb.a
  %.not4.us.us61 = icmp eq ptr %.022.val27.us.us60, null
  br i1 %.not4.us.us61, label %.loopexit.us48, label %.lr.ph.us50, !llvm.loop !12

._crit_edge:                                      ; preds = %.loopexit.us, %.loopexit.us48, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %.3.us45, %.loopexit.us48 ], [ %.3.us, %.loopexit.us ]
  ret ptr %.0.lcssa
}

end_hunk_1
