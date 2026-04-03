begin_hunk_0
  br i1 %niter.ncmp.1, label %._crit_edge238.loopexit.unr-lcssa, label %.lr.ph237, !llvm.loop !14

tailrecurse.loopexit:                             ; preds = %.lr.ph
  %i.fm = sub nsw i32 %spec.select, %.1182
  %i.fn = sub nsw i32 %.1176, %.1178
  %i.fo = sub nsw i32 %.1, %.1174
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.loopexit, %.preheader207
end_hunk_0
begin_hunk_1
  %i.ea = sext i8 %i.dz to i64
  %i.eb = and i64 %i.ea, 4294967295
  %i.ec = lshr i64 %i.du, %i.eb                   ; 4 uses
  %i.ed = sub nsw i64 %i.du, %i.ec
  %i.ee = lshr i32 %i.b, 15
  %i.ef = and i32 %i.ee, 7
  %i.eg = zext nneg i32 %i.ef to i64
end_hunk_1
begin_hunk_2
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_2
begin_hunk_3
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_3
begin_hunk_4
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_4
begin_hunk_5
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_5
begin_hunk_6
  %i.p = getelementptr i8, ptr %i.o, i64 248
  %i.q = load i64, ptr %i.p, align 8, !tbaa !140  ; 5 uses
  %i.r = lshr i64 %i.q, 25
  %i.s = sub i64 %i.q, %i.r
  %i.t = sub nsw i32 40, %i.m
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.s, %i.u
end_hunk_6
begin_hunk_7
  %i.aq = sext i8 %i.ap to i64
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = lshr i64 %i.ak, %i.ar                   ; 4 uses
  %i.at = sub nsw i64 %i.ak, %i.as
  %i.au = lshr i32 %i.u, 15
  %i.av = and i32 %i.au, 7
  %i.aw = zext nneg i32 %i.av to i64
end_hunk_7
begin_hunk_8
  %i.dg = sext i8 %i.df to i64
  %i.dh = and i64 %i.dg, 4294967295
  %i.di = lshr i64 %i.da, %i.dh                   ; 4 uses
  %i.dj = sub nsw i64 %i.da, %i.di
  %i.dk = lshr i32 %i.cm, 15
  %i.dl = and i32 %i.dk, 7
  %i.dm = zext nneg i32 %i.dl to i64
end_hunk_8
begin_hunk_9
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_9
begin_hunk_10
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_10
begin_hunk_11
_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit: ; preds = %bb.c, %bb.d
  %.sroa.3.0.i = phi i64 [ %i.ax, %bb.d ], [ %.sroa.5.0.copyload.i, %bb.c ] ; 5 uses
  %i.ay = lshr i64 %.sroa.3.0.i, 54
  %i.az = sub i64 %.sroa.3.0.i, %i.ay
  %i.ba = sub nsw i32 11, %i.n
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = lshr i64 %i.az, %i.bb
end_hunk_11
begin_hunk_12
  %i.aq = sext i8 %i.ap to i64
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = lshr i64 %i.ak, %i.ar                   ; 4 uses
  %i.at = sub nsw i64 %i.ak, %i.as
  %i.au = lshr i32 %i.u, 15
  %i.av = and i32 %i.au, 7
  %i.aw = zext nneg i32 %i.av to i64
end_hunk_12
begin_hunk_13
  %i.dg = sext i8 %i.df to i64
  %i.dh = and i64 %i.dg, 4294967295
  %i.di = lshr i64 %i.da, %i.dh                   ; 4 uses
  %i.dj = sub nsw i64 %i.da, %i.di
  %i.dk = lshr i32 %i.cm, 15
  %i.dl = and i32 %i.dk, 7
  %i.dm = zext nneg i32 %i.dl to i64
end_hunk_13
begin_hunk_14
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_14
begin_hunk_15
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_15
begin_hunk_16
  %i.bp = sext i8 %i.bo to i64
  %i.bq = and i64 %i.bp, 4294967295
  %i.br = lshr i64 %i.bj, %i.bq                   ; 4 uses
  %i.bs = sub nsw i64 %i.bj, %i.br
  %i.bt = lshr i32 %i.n, 15
  %i.bu = and i32 %i.bt, 7
  %i.bv = zext nneg i32 %i.bu to i64
end_hunk_16
begin_hunk_17
  %i.bf = sext i8 %i.be to i64
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = lshr i64 %i.ay, %i.bg                   ; 4 uses
  %i.bi = sub nsw i64 %i.ay, %i.bh
  %i.bj = lshr i32 %i.az, 15
  %i.bk = and i32 %i.bj, 7
  %i.bl = zext nneg i32 %i.bk to i64
end_hunk_17
begin_hunk_18
  %i.hd = sext i8 %i.hc to i64
  %i.he = and i64 %i.hd, 4294967295
  %i.hf = lshr i64 %i.gx, %i.he                   ; 4 uses
  %i.hg = sub nsw i64 %i.gx, %i.hf
  %i.hh = lshr i32 %i.gj, 15
  %i.hi = and i32 %i.hh, 7
  %i.hj = zext nneg i32 %i.hi to i64
end_hunk_18
begin_hunk_19
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_19
begin_hunk_20
  %i.l = sext i8 %i.k to i64
  %i.m = and i64 %i.l, 4294967295
  %i.n = lshr i64 %i.e, %i.m                      ; 4 uses
  %i.o = sub nsw i64 %i.e, %i.n
  %i.p = lshr i32 %i.f, 15
  %i.q = and i32 %i.p, 7
  %i.r = zext nneg i32 %i.q to i64
end_hunk_20
begin_hunk_21
  %i.dx = sext i8 %i.dw to i64
  %i.dy = and i64 %i.dx, 4294967295
  %i.dz = lshr i64 %i.dr, %i.dy                   ; 4 uses
  %i.ea = sub nsw i64 %i.dr, %i.dz
  %i.eb = lshr i32 %i.b, 15
  %i.ec = and i32 %i.eb, 7
  %i.ed = zext nneg i32 %i.ec to i64
end_hunk_21
begin_hunk_22
  %i.ea = sext i8 %i.dz to i64
  %i.eb = and i64 %i.ea, 4294967295
  %i.ec = lshr i64 %i.du, %i.eb                   ; 4 uses
  %i.ed = sub nsw i64 %i.du, %i.ec
  %i.ee = lshr i32 %i.b, 15
  %i.ef = and i32 %i.ee, 7
  %i.eg = zext nneg i32 %i.ef to i64
end_hunk_22
begin_hunk_23
  %i.bz = sext i8 %i.by to i64
  %i.ca = and i64 %i.bz, 4294967295
  %i.cb = lshr i64 %i.bt, %i.ca                   ; 4 uses
  %i.cc = sub nsw i64 %i.bt, %i.cb
  %i.cd = lshr i32 %i.n, 15
  %i.ce = and i32 %i.cd, 7
  %i.cf = zext nneg i32 %i.ce to i64
end_hunk_23
begin_hunk_24
  %i.bf = sext i8 %i.be to i64
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = lshr i64 %i.ay, %i.bg                   ; 4 uses
  %i.bi = sub nsw i64 %i.ay, %i.bh
  %i.bj = lshr i32 %i.az, 15
  %i.bk = and i32 %i.bj, 7
  %i.bl = zext nneg i32 %i.bk to i64
end_hunk_24
begin_hunk_25
  %i.hd = sext i8 %i.hc to i64
  %i.he = and i64 %i.hd, 4294967295
  %i.hf = lshr i64 %i.gx, %i.he                   ; 4 uses
  %i.hg = sub nsw i64 %i.gx, %i.hf
  %i.hh = lshr i32 %i.gj, 15
  %i.hi = and i32 %i.hh, 7
  %i.hj = zext nneg i32 %i.hi to i64
end_hunk_25
begin_hunk_26
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_26
begin_hunk_27
  %i.bz = sext i8 %i.by to i64
  %i.ca = and i64 %i.bz, 4294967295
  %i.cb = lshr i64 %i.bt, %i.ca                   ; 4 uses
  %i.cc = sub nsw i64 %i.bt, %i.cb
  %i.cd = lshr i32 %i.n, 15
  %i.ce = and i32 %i.cd, 7
  %i.cf = zext nneg i32 %i.ce to i64
end_hunk_27
begin_hunk_28
  %i.bf = sext i8 %i.be to i64
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = lshr i64 %i.ay, %i.bg                   ; 4 uses
  %i.bi = sub nsw i64 %i.ay, %i.bh
  %i.bj = lshr i32 %i.az, 15
  %i.bk = and i32 %i.bj, 7
  %i.bl = zext nneg i32 %i.bk to i64
end_hunk_28
begin_hunk_29
  %i.hd = sext i8 %i.hc to i64
  %i.he = and i64 %i.hd, 4294967295
  %i.hf = lshr i64 %i.gx, %i.he                   ; 4 uses
  %i.hg = sub nsw i64 %i.gx, %i.hf
  %i.hh = lshr i32 %i.gj, 15
  %i.hi = and i32 %i.hh, 7
  %i.hj = zext nneg i32 %i.hi to i64
end_hunk_29
begin_hunk_30
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_30
begin_hunk_31
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_31
