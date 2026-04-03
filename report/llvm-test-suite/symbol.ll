begin_hunk_0

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = tail call ptr @list_PointerSort(ptr noundef nonnull %i.l) #22 ; 3 uses
  %.not2028 = icmp eq ptr %i.n, null              ; 2 uses
  br i1 %.not2028, label %.critedge, label %.lr.ph33

.lr.ph33:                                         ; preds = %._crit_edge, %.lr.ph33
  %.01731 = phi ptr [ %.017.val21, %.lr.ph33 ], [ %i.n, %._crit_edge ] ; 2 uses
end_hunk_0
begin_hunk_1
  %.not19 = icmp eq ptr %.1.val22, null
  %.not20 = icmp eq ptr %.017.val21, null
  %or.cond = select i1 %.not19, i1 true, i1 %.not20
  br i1 %or.cond, label %.critedge, label %.lr.ph33, !llvm.loop !20

.critedge:                                        ; preds = %.lr.ph33, %._crit_edge
  %2 = phi ptr [ null, %._crit_edge ], [ %i.n, %.lr.ph33 ]
  br i1 %.not2028, label %list_Delete.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge.thread, %.critedge
  %.07.i.ph = phi ptr [ %2, %.critedge ], [ %i.a, %._crit_edge.thread ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
end_hunk_1
begin_hunk_2
  %.not.i = icmp eq ptr %.0.val.i, null
  br i1 %.not.i, label %list_Delete.exit, label %.lr.ph.i, !llvm.loop !9

list_Delete.exit:                                 ; preds = %.lr.ph.i, %._crit_edge.thread, %.critedge
  ret void
}

end_hunk_2
