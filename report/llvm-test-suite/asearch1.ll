begin_hunk_0
  %i.cj = zext i32 %i.ch to i64
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check447 = icmp ult i32 %i.ch, 7
  %n.vec450 = and i64 %i.ck, 8589934584           ; 3 uses
  %i.cl = add nuw nsw i64 %n.vec450, %i.bp
  %broadcast.splatinsert455 = insertelement <4 x i32> poison, i32 %i.q, i64 0
end_hunk_0
begin_hunk_1
  %i.cm = add nsw i64 %n.vec431, %i.bi
  %cmp.n439 = icmp eq i64 %i.cg, %n.vec431
  %min.iters.check400 = icmp ult i32 %i.cb, 7
  %n.vec403 = and i64 %i.ce, 8589934584           ; 3 uses
  %i.cn = add nuw nsw i64 %n.vec403, %i.bp
  %broadcast.splatinsert408 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat409 = shufflevector <4 x i32> %broadcast.splatinsert408, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n424 = icmp eq i64 %i.ce, %n.vec403
  %min.iters.check368 = icmp ult i32 %i.bx, 7
  %n.vec371 = and i64 %i.ca, 8589934584           ; 3 uses
  %i.co = add nuw nsw i64 %n.vec371, %i.bp
  %broadcast.splatinsert376 = insertelement <4 x i32> poison, i32 %i.q, i64 0
end_hunk_1
begin_hunk_2
  %i.cp = add nsw i64 %n.vec352, %i.bi
  %cmp.n360 = icmp eq i64 %i.bw, %n.vec352
  %min.iters.check322 = icmp ult i32 %i.br, 7
  %n.vec325 = and i64 %i.bu, 8589934584           ; 3 uses
  %i.cq = add nuw nsw i64 %n.vec325, %i.bp
  %broadcast.splatinsert330 = insertelement <4 x i32> poison, i32 %i.q, i64 0
end_hunk_2
begin_hunk_3
  br i1 %min.iters.check447, label %scalar.ph446.preheader, label %vector.scevcheck441

vector.scevcheck441:                              ; preds = %.lr.ph229
  %reass.sub = sub i32 %i.dr, %2
  %i.dt = add i32 %reass.sub, -2
  %i.du = icmp ult i32 %i.dt, %i.ch
  %reass.sub473 = sub i32 %i.dq, %2
  %i.dv = add i32 %reass.sub473, -2
  %i.dw = icmp ult i32 %i.dv, %i.ch
  %reass.sub474 = sub i32 %i.ds, %2
  %i.dx = add i32 %reass.sub474, -2
  %i.dy = icmp ult i32 %i.dx, %i.ch
  %i.dz = or i1 %i.du, %i.dw
  %i.ea = or i1 %i.dz, %i.dy
end_hunk_3
begin_hunk_4
  br i1 %min.iters.check400, label %scalar.ph399.preheader, label %vector.scevcheck394

vector.scevcheck394:                              ; preds = %.lr.ph239
  %reass.sub475 = sub i32 %i.hw, %2
  %i.hy = add i32 %reass.sub475, -2
  %i.hz = icmp ult i32 %i.hy, %i.cb
  %reass.sub476 = sub i32 %i.hv, %2
  %i.ia = add i32 %reass.sub476, -2
  %i.ib = icmp ult i32 %i.ia, %i.cb
  %reass.sub477 = sub i32 %i.hx, %2
  %i.ic = add i32 %reass.sub477, -2
  %i.id = icmp ult i32 %i.ic, %i.cb
  %i.ie = or i1 %i.hz, %i.ib
  %i.if = or i1 %i.ie, %i.id
end_hunk_4
begin_hunk_5
  br i1 %min.iters.check368, label %scalar.ph367.preheader, label %vector.scevcheck362

vector.scevcheck362:                              ; preds = %.lr.ph243
  %reass.sub478 = sub i32 %i.li, %2
  %i.lk = add i32 %reass.sub478, -2
  %i.ll = icmp ult i32 %i.lk, %i.bx
  %reass.sub479 = sub i32 %i.lh, %2
  %i.lm = add i32 %reass.sub479, -2
  %i.ln = icmp ult i32 %i.lm, %i.bx
  %reass.sub480 = sub i32 %i.lj, %2
  %i.lo = add i32 %reass.sub480, -2
  %i.lp = icmp ult i32 %i.lo, %i.bx
  %i.lq = or i1 %i.ll, %i.ln
  %i.lr = or i1 %i.lq, %i.lp
end_hunk_5
begin_hunk_6
  br i1 %min.iters.check322, label %scalar.ph321.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph253
  %reass.sub481 = sub i32 %i.pn, %2
  %i.pp = add i32 %reass.sub481, -2
  %i.pq = icmp ult i32 %i.pp, %i.br
  %reass.sub482 = sub i32 %i.pm, %2
  %i.pr = add i32 %reass.sub482, -2
  %i.ps = icmp ult i32 %i.pr, %i.br
  %reass.sub483 = sub i32 %i.po, %2
  %i.pt = add i32 %reass.sub483, -2
  %i.pu = icmp ult i32 %i.pt, %i.br
  %i.pv = or i1 %i.pq, %i.ps
  %i.pw = or i1 %i.pv, %i.pu
end_hunk_6
