begin_hunk_0
  %i.mt = add i64 %.fr99.i.i.i, -1                ; 2 uses
  %.first_iter.i.i.i.i = icmp ult i64 %i.mt, %i.lr
  %i.mu = icmp ult i64 %.fr99.i.i.i, %i.lr
  %.not.i.us.i.i.i366 = icmp eq i64 %.fr99.i.i.i, 0 ; 2 uses
  br label %bb.ed

end_hunk_0
begin_hunk_1
  br label %.invoke.i.i.i

bb.ej:                                            ; preds = %bb.eh
  %reass.sub220 = sub i64 %i.mv, %.fr99.i.i.i
  %i.nz = add i64 %reass.sub220, 1
  %i.oa = add i64 %i.nz, %.sroa.04.0.i22.i.i.i.i364
  br label %bb.ef

end_hunk_1
begin_hunk_2
  %i.of = load i64, ptr %i.jc, align 8, !alias.scope !2655, !noalias !2662 ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.oh = load i64, ptr %i.og, align 8, !alias.scope !2655, !noalias !2662 ; 2 uses
  %i.oi = sub i64 %i.lr, %i.oh
  br label %bb.el

bb.el:                                            ; preds = %.sink.split.i.i.i.i.i, %.lr.ph.i14.i.i.i.i
end_hunk_2
begin_hunk_3
  br i1 %i.ou, label %.lr.ph361, label %.preheader34.i.i.i.i.preheader

.sink.split.i.i.i.i.i:                            ; preds = %bb.eu, %bb.er, %bb.em
  %.sink.i.i.i.i.i = phi i64 [ %i.oi, %bb.er ], [ 0, %bb.eu ], [ 0, %bb.em ]
  %.ph75.i.i.i.i.i = phi i64 [ %i.pl, %bb.er ], [ %i.ps, %bb.eu ], [ %i.ot, %bb.em ] ; 2 uses
  %i.ov = add i64 %.ph75.i.i.i.i.i, %i.lt         ; 2 uses
  %i.ow = icmp ult i64 %i.ov, %i.ln
end_hunk_3
begin_hunk_4
  br label %.invoke.i.i.i

bb.eu:                                            ; preds = %bb.es
  %reass.sub = sub i64 %i.oj, %i.of
  %i.pr = add i64 %reass.sub, 1
  %i.ps = add i64 %i.pr, %.sroa.04.0.i.i.i.i.i360
  br label %.sink.split.i.i.i.i.i

end_hunk_4
