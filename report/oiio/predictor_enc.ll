inline.NumInlined: 92
inline.NumDeleted: 33
begin_hunk_0_@VP8LResidualImage:bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 4 uses
  %i.dl = icmp sgt i32 %.fr130, 1                 ; 2 uses
  %.not.i.not.i = icmp slt i32 %2, %i.dc
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %i.de, i32 1)
  %i.dm = sext i32 %1 to i64
  %invariant.op.i.i = add nsw i64 %i.dm, -1       ; 3 uses
  %i.dn = add i32 %i.cm, -1
end_hunk_0
begin_hunk_1_@VP8LResidualImage:bb.a
  br i1 %.not.i.not.i, label %.lr.ph119.us.us.i.us.us.i, label %.loopexit.us.i.us.us.i

.lr.ph119.us.us.i.us.us.i:                        ; preds = %._crit_edge.us.i.us.us.i, %._crit_edge120.us.us.i.us.us.i
  %.098121.us.us.i.us.us.i = phi i32 [ %i.ia, %._crit_edge120.us.us.i.us.us.i ], [ 1, %._crit_edge.us.i.us.us.i ] ; 3 uses
  %i.gu = mul nsw i32 %.098121.us.us.i.us.us.i, 14
  %i.gv = add nsw i32 %i.gu, %i.fi
  %i.gw = shl nsw i32 %i.gv, 10
end_hunk_1
begin_hunk_2_@VP8LResidualImage:bb.a
  br i1 %exitcond147.not.i.us.us.i, label %._crit_edge120.us.us.i.us.us.i, label %bb.m, !llvm.loop !28

._crit_edge120.us.us.i.us.us.i:                   ; preds = %bb.m
  %i.ia = add nuw i32 %.098121.us.us.i.us.us.i, 1
  %exitcond148.i.us.us.i = icmp eq i32 %.098121.us.us.i.us.us.i, %umax.i.i
  br i1 %exitcond148.i.us.us.i, label %.loopexit.us.i.us.us.i, label %.lr.ph119.us.us.i.us.us.i, !llvm.loop !29

.loopexit.us.i.us.us.i:                           ; preds = %._crit_edge120.us.us.i.us.us.i, %._crit_edge.us.i.us.us.i
end_hunk_2
begin_hunk_3_@GetResidual:bb.a
  %i.dy = xor i32 %i.dq, 255
  %i.dz = icmp samesign ult i32 %i.dy, %i.du
  %i.ea = zext i1 %i.dz to i32
  %i.eb = sub nuw nsw i32 %i.dt, %i.dw
  %i.ec = sub nsw i32 %i.ea, %i.dt
  %i.ed = add i32 %i.ec, %i.dx
  %i.ee = icmp slt i32 %i.eb, %i.ed
end_hunk_3
begin_hunk_4_@GetResidual:bb.a
  %i.et = xor i32 %i.em, 255
  %i.eu = icmp samesign ult i32 %i.et, %i.eq
  %i.ev = zext i1 %i.eu to i32
  %i.ew = sub nuw nsw i32 %i.ep, %i.er
  %i.ex = sub nsw i32 %i.ev, %i.ep
  %i.ey = add i32 %i.ex, %i.es
  %i.ez = icmp slt i32 %i.ew, %i.ey
end_hunk_4
begin_hunk_5_@GetResidual:bb.a
  %i.fr = and i32 %i.fq, 255
  %i.fs = icmp samesign ult i32 %i.fr, %i.fn
  %i.ft = zext i1 %i.fs to i32
  %i.fu = sub nuw nsw i32 %i.fj, %i.fo
  %i.fv = sub i32 %i.fp, %i.fj
  %i.fw = add nsw i32 %i.fv, %i.ft
  %i.fx = icmp slt i32 %i.fu, %i.fw
end_hunk_5
begin_hunk_6_@GetResidual:bb.a
  %i.gk = and i32 %i.gj, 255
  %i.gl = icmp samesign ult i32 %i.gk, %i.gg
  %i.gm = zext i1 %i.gl to i32
  %i.gn = sub nuw nsw i32 %i.ge, %i.gh
  %i.go = sub i32 %i.gi, %i.ge
  %i.gp = add nsw i32 %i.go, %i.gm
  %i.gq = icmp slt i32 %i.gn, %i.gp
end_hunk_6
