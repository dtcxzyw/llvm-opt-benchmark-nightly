begin_hunk_0
  %i.cj = zext i32 %i.ch to i64
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check447 = icmp ult i32 %i.ch, 7
  %invariant.op = sub i32 -2, %2
  %invariant.op488 = sub i32 -2, %2
  %invariant.op490 = sub i32 -2, %2
  %n.vec450 = and i64 %i.ck, 8589934584           ; 3 uses
  %i.cl = add nuw nsw i64 %n.vec450, %i.bp
  %broadcast.splatinsert455 = insertelement <4 x i32> poison, i32 %i.q, i64 0
end_hunk_0
begin_hunk_1
  %i.cm = add nsw i64 %n.vec431, %i.bi
  %cmp.n439 = icmp eq i64 %i.cg, %n.vec431
  %min.iters.check400 = icmp ult i32 %i.cb, 7
  %invariant.op492 = sub i32 -2, %2
  %invariant.op494 = sub i32 -2, %2
  %invariant.op496 = sub i32 -2, %2
  %n.vec403 = and i64 %i.ce, 8589934584           ; 3 uses
  %i.cn = add nuw nsw i64 %n.vec403, %i.bp
  %broadcast.splatinsert408 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat409 = shufflevector <4 x i32> %broadcast.splatinsert408, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n424 = icmp eq i64 %i.ce, %n.vec403
  %min.iters.check368 = icmp ult i32 %i.bx, 7
  %invariant.op498 = sub i32 -2, %2
  %invariant.op500 = sub i32 -2, %2
  %invariant.op502 = sub i32 -2, %2
  %n.vec371 = and i64 %i.ca, 8589934584           ; 3 uses
  %i.co = add nuw nsw i64 %n.vec371, %i.bp
  %broadcast.splatinsert376 = insertelement <4 x i32> poison, i32 %i.q, i64 0
end_hunk_1
begin_hunk_2
  %i.cp = add nsw i64 %n.vec352, %i.bi
  %cmp.n360 = icmp eq i64 %i.bw, %n.vec352
  %min.iters.check322 = icmp ult i32 %i.br, 7
  %invariant.op504 = sub i32 -2, %2
  %invariant.op506 = sub i32 -2, %2
  %invariant.op508 = sub i32 -2, %2
  %n.vec325 = and i64 %i.bu, 8589934584           ; 3 uses
  %i.cq = add nuw nsw i64 %n.vec325, %i.bp
  %broadcast.splatinsert330 = insertelement <4 x i32> poison, i32 %i.q, i64 0
end_hunk_2
begin_hunk_3
  br i1 %min.iters.check447, label %scalar.ph446.preheader, label %vector.scevcheck441

vector.scevcheck441:                              ; preds = %.lr.ph229
  %i.dt = add i32 %i.dr, %invariant.op
  %i.du = icmp ult i32 %i.dt, %i.ch
  %i.dv = add i32 %i.dq, %invariant.op488
  %i.dw = icmp ult i32 %i.dv, %i.ch
  %i.dx = add i32 %i.ds, %invariant.op490
  %i.dy = icmp ult i32 %i.dx, %i.ch
  %i.dz = or i1 %i.du, %i.dw
  %i.ea = or i1 %i.dz, %i.dy
end_hunk_3
begin_hunk_4
  br i1 %min.iters.check400, label %scalar.ph399.preheader, label %vector.scevcheck394

vector.scevcheck394:                              ; preds = %.lr.ph239
  %i.hy = add i32 %i.hw, %invariant.op492
  %i.hz = icmp ult i32 %i.hy, %i.cb
  %i.ia = add i32 %i.hv, %invariant.op494
  %i.ib = icmp ult i32 %i.ia, %i.cb
  %i.ic = add i32 %i.hx, %invariant.op496
  %i.id = icmp ult i32 %i.ic, %i.cb
  %i.ie = or i1 %i.hz, %i.ib
  %i.if = or i1 %i.ie, %i.id
end_hunk_4
begin_hunk_5
  br i1 %min.iters.check368, label %scalar.ph367.preheader, label %vector.scevcheck362

vector.scevcheck362:                              ; preds = %.lr.ph243
  %i.lk = add i32 %i.li, %invariant.op498
  %i.ll = icmp ult i32 %i.lk, %i.bx
  %i.lm = add i32 %i.lh, %invariant.op500
  %i.ln = icmp ult i32 %i.lm, %i.bx
  %i.lo = add i32 %i.lj, %invariant.op502
  %i.lp = icmp ult i32 %i.lo, %i.bx
  %i.lq = or i1 %i.ll, %i.ln
  %i.lr = or i1 %i.lq, %i.lp
end_hunk_5
begin_hunk_6
  br i1 %min.iters.check322, label %scalar.ph321.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph253
  %i.pp = add i32 %i.pn, %invariant.op504
  %i.pq = icmp ult i32 %i.pp, %i.br
  %i.pr = add i32 %i.pm, %invariant.op506
  %i.ps = icmp ult i32 %i.pr, %i.br
  %i.pt = add i32 %i.po, %invariant.op508
  %i.pu = icmp ult i32 %i.pt, %i.br
  %i.pv = or i1 %i.pq, %i.ps
  %i.pw = or i1 %i.pv, %i.pu
end_hunk_6
