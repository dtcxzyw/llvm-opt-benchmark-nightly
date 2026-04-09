inline.NumInlined: 6
begin_hunk_0_@cli_pdf:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0270 = phi ptr [ %i.k, %bb.f ], [ %i.i, %bb.e ] ; 3 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, i64 noundef %i.f) #15
  %i.m = load i32, ptr %.0270, align 1
  %i.n = xor i32 %i.m, 1178882085
end_hunk_0
begin_hunk_1_@cli_pdf:bb.a
  br i1 %i.az, label %.lr.ph419, label %._crit_edge420, !llvm.loop !14

._crit_edge420:                                   ; preds = %bb.p, %.lr.ph419, %bb.o
  %.0281.lcssa = phi ptr [ %i.an, %bb.o ], [ %.0281417, %.lr.ph419 ], [ %i.v, %bb.p ] ; 9 uses
  %i.ba = ptrtoint ptr %.0273416 to i64
  %i.bb = ptrtoint ptr %.0281.lcssa to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = icmp eq ptr %.0281.lcssa, @.str.5
  br i1 %i.bd, label %.loopexit, label %bb.q
end_hunk_1
begin_hunk_2_@cli_pdf:bb.a

cli_pmemstr.exit:                                 ; preds = %.lr.ph.i, %bb.t, %bb.q, %.preheader.i
  %i.ch = icmp ugt ptr %.0281.lcssa, %i.v
  br i1 %i.ch, label %.lr.ph424, label %._crit_edge425

.loopexit:                                        ; preds = %bb.s, %bb.r, %._crit_edge420
  br i1 %.not, label %bb.v, label %bb.u
end_hunk_2
begin_hunk_3_@cli_pdf:bb.a
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.6) #15
  br label %bb.dd

.lr.ph424:                                        ; preds = %cli_pmemstr.exit, %bb.y
  %.0284423 = phi ptr [ %i.cp, %bb.y ], [ %.0281.lcssa, %cli_pmemstr.exit ] ; 5 uses
  %i.cj = load i32, ptr %.0284423, align 1
  %i.ck = icmp ne i32 %i.cj, 1717924472
  %i.cl = zext i1 %i.ck to i32
end_hunk_3
begin_hunk_4_@cli_pdf:bb.a
  ]

bb.y:                                             ; preds = %bb.x, %.lr.ph424
  %i.cp = getelementptr inbounds i8, ptr %.0284423, i64 -1 ; 3 uses
  %i.cq = icmp ugt ptr %i.cp, %i.v
  br i1 %i.cq, label %.lr.ph424, label %._crit_edge425, !llvm.loop !17

._crit_edge425:                                   ; preds = %bb.y, %bb.x, %bb.x, %cli_pmemstr.exit
  %.0284.lcssa = phi ptr [ %.0281.lcssa, %cli_pmemstr.exit ], [ %.0284423, %bb.x ], [ %.0284423, %bb.x ], [ %i.cp, %bb.y ] ; 4 uses
  %i.cr = icmp eq ptr %.0284.lcssa, %i.v
  br i1 %i.cr, label %bb.z, label %bb.ac

end_hunk_4
