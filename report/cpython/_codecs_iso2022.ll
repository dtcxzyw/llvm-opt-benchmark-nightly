begin_hunk_0

bb.n:                                             ; preds = %bb.i
  %i.aq = add nsw i64 %.05487.i, 1                ; 5 uses
  switch i64 %i.aq, label %.thread159.loopexit254 [
    i64 0, label %.thread159
    i64 3, label %bb.o
    i64 4, label %bb.s
    i64 6, label %bb.v
end_hunk_0
begin_hunk_1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.az, %bb.bb, %bb.bd, %bb.bi, %bb.cd, %bb.ax, %iso2022processesc.exit.thread150, %iso2022processg2.exit, %bb.e, %bb.d
  %.2144 = phi i64 [ %i.ed, %bb.ax ], [ %i.bw, %iso2022processesc.exit.thread150 ], [ %i.ek, %bb.az ], [ %i.er, %bb.bb ], [ %i.ex, %bb.bd ], [ %i.t, %bb.e ], [ %i.t, %bb.d ], [ %i.fg, %bb.bi ], [ %i.hl, %bb.cd ], [ %i.dw, %iso2022processg2.exit ] ; 2 uses
  %.3106 = phi ptr [ %.0103169, %bb.ax ], [ %.0103169, %iso2022processesc.exit.thread150 ], [ %.0103169, %bb.az ], [ %.0103169, %bb.bb ], [ %.0103169, %bb.bd ], [ %.0103169, %bb.e ], [ %.0103169, %bb.d ], [ %.0103169, %bb.bi ], [ %.1104, %bb.cd ], [ %.0103169, %iso2022processg2.exit ]
  %i.hm = icmp sgt i64 %.2144, 0
  br i1 %i.hm, label %bb.b, label %.thread159

end_hunk_1
begin_hunk_2
  br label %.thread159

.thread159:                                       ; preds = %bb.ce, %bb.aw, %bb.c, %bb.bf, %bb.bc, %bb.bh, %.loopexit, %bb.bq, %bb.g, %bb.ad, %bb.bs, %bb.t, %bb.v, %bb.ab, %bb.r, %bb.s, %bb.y, %bb.x, %bb.w, %bb.av, %bb.ag, %bb.af, %bb.ai, %bb.al, %bb.ap, %bb.ar, %bb.as, %bb.at, %bb.aq, %bb.au, %bb.ae, %bb.bv, %switch.lookup, %bb.m, %bb.n, %.thread159.loopexit254, %bb.a, %bb.bo
  %.5 = phi i64 [ %i.fx, %bb.bo ], [ -2, %switch.lookup ], [ 0, %bb.a ], [ 1, %bb.n ], [ 1, %bb.m ], [ -4, %bb.ag ], [ 3, %bb.af ], [ -4, %bb.ai ], [ -4, %bb.al ], [ -4, %bb.ap ], [ -4, %bb.ar ], [ -4, %bb.as ], [ -4, %bb.at ], [ 3, %bb.aq ], [ 3, %bb.au ], [ -4, %bb.bs ], [ 4, %bb.t ], [ 6, %bb.v ], [ %i.aq, %bb.ab ], [ 3, %bb.r ], [ 4, %bb.s ], [ 6, %bb.y ], [ 6, %bb.x ], [ -3, %bb.ae ], [ -4, %bb.av ], [ -4, %bb.aw ], [ -4, %bb.c ], [ 1, %bb.bf ], [ -4, %bb.bc ], [ -4, %bb.bh ], [ -2, %.loopexit ], [ 6, %bb.w ], [ -4, %bb.bq ], [ 0, %bb.ce ], [ -2, %bb.g ], [ -2, %bb.ad ], [ -4, %bb.bv ], [ %i.aq, %.thread159.loopexit254 ]
  ret i64 %.5
}

end_hunk_2
