begin_hunk_0
  %invariant.op.i = or disjoint i64 %.sroa.6818.sroa.9.0.insert.shift58.i, %.sroa.6818.sroa.0.0.insert.ext54.i
  %.sroa.6818.sroa.0.0.insert.insert56.reass.i.reass = or disjoint i64 %invariant.op.i, %invariant.op
  %i.eo = icmp ult i64 %.sroa.63.2.i.lcssa302, %.sroa.102.2.i.lcssa
  %.not259.i.us1787 = icmp eq i64 %.sroa.63.2.i.lcssa302, 0 ; 2 uses
  br label %bb.aq

end_hunk_0
begin_hunk_1
  br label %.invoke.i

bb.aw:                                            ; preds = %bb.au
  %reass.sub814 = sub i64 %i.eq, %.sroa.63.2.i.lcssa302
  %i.fu = add i64 %reass.sub814, 1
  %i.fv = add i64 %i.fu, %.sroa.04.0.i251.i1785
  br label %bb.as

end_hunk_1
begin_hunk_2
  %.sroa.6818.sroa.9.0.insert.insert.i = or disjoint i64 %.sroa.6818.sroa.961.0.insert.insert.i, %.sroa.6818.sroa.9.0.insert.shift.i
  %.sroa.6818.sroa.0.0.insert.ext.i = zext i8 %.sroa.6818.sroa.0.2.i.lcssa to i64
  %.sroa.6818.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.6818.sroa.9.0.insert.insert.i, %.sroa.6818.sroa.0.0.insert.ext.i ; 2 uses
  %i.fw = sub i64 %.sroa.102.2.i.lcssa, %.sroa.6818.sroa.0.0.insert.insert.i
  br label %bb.ay

bb.ay:                                            ; preds = %.sink.split.i236.i, %.lr.ph.i230.i
end_hunk_2
begin_hunk_3
  br i1 %i.gi, label %.lr.ph1780, label %.preheader265.i.preheader

.sink.split.i236.i:                               ; preds = %bb.bh, %bb.be, %bb.az
  %.sink.i237.i = phi i64 [ %i.fw, %bb.be ], [ 0, %bb.bh ], [ 0, %bb.az ] ; 2 uses
  %.ph75.i238.i = phi i64 [ %i.ha, %bb.be ], [ %i.hh, %bb.bh ], [ %i.gh, %bb.az ] ; 2 uses
  %i.gj = add i64 %.ph75.i238.i, %i.ds            ; 2 uses
  %i.gk = icmp ult i64 %i.gj, %.sroa.99.2.i.lcssa
end_hunk_3
begin_hunk_4
  br label %.invoke.i

bb.bh:                                            ; preds = %bb.bf
  %reass.sub813 = sub i64 %i.fz, %.sroa.63.2.i.lcssa302
  %i.hg = add i64 %reass.sub813, 1
  %i.hh = add i64 %i.hg, %.sroa.04.0.i233.i1778
  br label %.sink.split.i236.i

end_hunk_4
begin_hunk_5
  %i.ke = or disjoint i64 %.sroa.93.sroa.978.0.insert.shift80.i, %.sroa.93.sroa.0.0.insert.ext71.i
  %.sroa.93.sroa.0.0.insert.insert73.i = or disjoint i64 %i.ke, %i.br
  %i.kf = icmp ult i64 %.sroa.5.0.i, %.sroa.016.sroa.15.0.copyload.i
  %.not260.i.us1773 = icmp eq i64 %.sroa.5.0.i, 0 ; 2 uses
  br label %bb.bz

end_hunk_5
begin_hunk_6
  br label %.invoke.i

bb.cf:                                            ; preds = %bb.cd
  %reass.sub812 = sub i64 %i.kh, %.sroa.5.0.i
  %i.ll = add i64 %reass.sub812, 1
  %i.lm = add i64 %i.ll, %.sroa.04.0.i218.i1771
  br label %bb.cb

end_hunk_6
begin_hunk_7
  %.sroa.93.sroa.0.0.insert.ext.i = zext i8 %.sroa.93.sroa.0.0.i to i64
  %i.ln = or disjoint i64 %.sroa.93.sroa.978.0.insert.shift.i, %.sroa.93.sroa.0.0.insert.ext.i
  %.sroa.93.sroa.0.0.insert.insert.i = or disjoint i64 %i.ln, %i.br ; 2 uses
  %i.lo = sub i64 %.sroa.016.sroa.15.0.copyload.i, %.sroa.93.sroa.0.0.insert.insert.i
  br label %bb.ch

bb.ch:                                            ; preds = %.sink.split.i203.i, %.lr.ph.i197.i
end_hunk_7
begin_hunk_8
  br i1 %i.ma, label %.lr.ph1767, label %.preheader262.i.preheader

.sink.split.i203.i:                               ; preds = %bb.cq, %bb.cn, %bb.ci
  %.sink.i204.i = phi i64 [ %i.lo, %bb.cn ], [ 0, %bb.cq ], [ 0, %bb.ci ] ; 2 uses
  %.ph75.i205.i = phi i64 [ %i.mv, %bb.cn ], [ %i.nc, %bb.cq ], [ %i.lz, %bb.ci ] ; 2 uses
  %i.mb = add i64 %.ph75.i205.i, %i.bq            ; 2 uses
  %i.mc = icmp ult i64 %i.mb, %.sroa.016.sroa.13.0.copyload.i
end_hunk_8
begin_hunk_9
  br label %.invoke.i

bb.cq:                                            ; preds = %bb.co
  %reass.sub = sub i64 %i.lr, %.sroa.5.0.i
  %i.nb = add i64 %reass.sub, 1
  %i.nc = add i64 %i.nb, %.sroa.04.0.i200.i1765
  br label %.sink.split.i203.i

end_hunk_9
