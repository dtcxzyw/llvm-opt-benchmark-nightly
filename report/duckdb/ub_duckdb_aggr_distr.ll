begin_hunk_0
  %.15.i.unr = phi i64 [ %.015.i, %.lr.ph.i.preheader ], [ %i.ao, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr = phi i64 [ %.promoted1112.i, %.lr.ph.i.preheader ], [ %i.an, %.lr.ph.i.prol.loopexit.unr-lcssa ] ; 2 uses
  %i.ap = icmp eq i64 %i.ai, %.neg
  br i1 %i.ap, label %.loopexit.i, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.prol.loopexit
  %invariant.op = sub i64 1, %.015.i
  br label %.lr.ph.i

bb.e:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i
  %i.aq = sub i64 %i.ai, %.015.i
end_hunk_0
begin_hunk_1
  store i64 %i.ar, ptr %3, align 8, !tbaa !51
  br label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i.preheader.new
  %.promoted10.i = phi i64 [ %.unr, %.lr.ph.i.preheader.new ], [ %.promoted9.i.1, %bb.g ]
  %.15.i = phi i64 [ %.15.i.unr, %.lr.ph.i.preheader.new ], [ %i.bg, %bb.g ] ; 3 uses
  %i.as = phi i64 [ %.unr, %.lr.ph.i.preheader.new ], [ %i.bc, %bb.g ] ; 2 uses
  %i.at = sub nuw i64 %.15.i, %.015.i
  %i.au = shl nuw i64 1, %i.at
  %i.av = and i64 %i.au, %i.ag
end_hunk_1
begin_hunk_2
  %i.aw = add nsw i64 %i.as, 1                    ; 2 uses
  %.promoted9.i = select i1 %.not.i, i64 %.promoted10.i, i64 %i.aw
  %i.ax = select i1 %.not.i, i64 %i.as, i64 %i.aw ; 2 uses
  %i.ay = add i64 %.15.i, %invariant.op
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = and i64 %i.az, %i.ag
  %.not.i.1 = icmp eq i64 %i.ba, 0                ; 3 uses
  %i.bb = add nsw i64 %i.ax, 1                    ; 2 uses
end_hunk_2
