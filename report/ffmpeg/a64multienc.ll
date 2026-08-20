inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@a64multi_encode_frame:bb.a
  store i32 %.137.29.i, ptr %i.nj, align 4, !tbaa !42
  %i.nl = load i32, ptr %i.es, align 4, !tbaa !42
  %i.nm = getelementptr inbounds nuw i8, ptr %.010225.i, i64 120 ; 2 uses
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !42
  %.137.30.i = tail call i32 @llvm.smax.i32(i32 %i.nl, i32 %i.nn)
  store i32 %.137.30.i, ptr %i.nm, align 4, !tbaa !42
  %i.no = load i32, ptr %i.es, align 4, !tbaa !42
  %i.np = getelementptr inbounds nuw i8, ptr %.010225.i, i64 124 ; 2 uses
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !42
  %.137.31.i = tail call i32 @llvm.smax.i32(i32 %i.no, i32 %i.nq)
  store i32 %.137.31.i, ptr %i.np, align 4, !tbaa !42
  br label %.loopexit.i

.preheader3.preheader.i:                          ; preds = %bb.ap
  %i.nr = load i32, ptr %i.et, align 4, !tbaa !42
  %..i = tail call i32 @llvm.smin.i32(i32 %i.nr, i32 %i.ka)
  store i32 %..i, ptr %.010225.i, align 4, !tbaa !42
  %i.ns = load i32, ptr %i.et, align 4, !tbaa !42
  %i.nt = load i32, ptr %i.kb, align 4, !tbaa !42
  %..1.i = tail call i32 @llvm.smin.i32(i32 %i.ns, i32 %i.nt)
  store i32 %..1.i, ptr %i.kb, align 4, !tbaa !42
  %i.nu = load i32, ptr %i.et, align 4, !tbaa !42
  %i.nv = load i32, ptr %i.kc, align 4, !tbaa !42
  %..2.i = tail call i32 @llvm.smin.i32(i32 %i.nu, i32 %i.nv)
  store i32 %..2.i, ptr %i.kc, align 4, !tbaa !42
  %i.nw = load i32, ptr %i.et, align 4, !tbaa !42
  %i.nx = load i32, ptr %i.kd, align 4, !tbaa !42
  %..3.i = tail call i32 @llvm.smin.i32(i32 %i.nw, i32 %i.nx)
  store i32 %..3.i, ptr %i.kd, align 4, !tbaa !42
  %i.ny = load i32, ptr %i.et, align 4, !tbaa !42
  %i.nz = load i32, ptr %i.ke, align 4, !tbaa !42
  %..4.i = tail call i32 @llvm.smin.i32(i32 %i.ny, i32 %i.nz)
  store i32 %..4.i, ptr %i.ke, align 4, !tbaa !42
  %i.oa = load i32, ptr %i.et, align 4, !tbaa !42
  %i.ob = load i32, ptr %i.kf, align 4, !tbaa !42
  %..5.i = tail call i32 @llvm.smin.i32(i32 %i.oa, i32 %i.ob)
  store i32 %..5.i, ptr %i.kf, align 4, !tbaa !42
  %i.oc = load i32, ptr %i.et, align 4, !tbaa !42
  %i.od = getelementptr inbounds nuw i8, ptr %.010225.i, i64 24 ; 2 uses
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !42
  %..6.i = tail call i32 @llvm.smin.i32(i32 %i.oc, i32 %i.oe)
  store i32 %..6.i, ptr %i.od, align 4, !tbaa !42
  %i.of = load i32, ptr %i.et, align 4, !tbaa !42
  %i.og = getelementptr inbounds nuw i8, ptr %.010225.i, i64 28 ; 2 uses
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !42
  %..7.i = tail call i32 @llvm.smin.i32(i32 %i.of, i32 %i.oh)
  store i32 %..7.i, ptr %i.og, align 4, !tbaa !42
  %i.oi = load i32, ptr %i.et, align 4, !tbaa !42
  %i.oj = getelementptr inbounds nuw i8, ptr %.010225.i, i64 32 ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !42
  %..8.i = tail call i32 @llvm.smin.i32(i32 %i.oi, i32 %i.ok)
  store i32 %..8.i, ptr %i.oj, align 4, !tbaa !42
  %i.ol = load i32, ptr %i.et, align 4, !tbaa !42
  %i.om = getelementptr inbounds nuw i8, ptr %.010225.i, i64 36 ; 2 uses
  %i.on = load i32, ptr %i.om, align 4, !tbaa !42
  %..9.i = tail call i32 @llvm.smin.i32(i32 %i.ol, i32 %i.on)
  store i32 %..9.i, ptr %i.om, align 4, !tbaa !42
  %i.oo = load i32, ptr %i.et, align 4, !tbaa !42
  %i.op = getelementptr inbounds nuw i8, ptr %.010225.i, i64 40 ; 2 uses
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !42
  %..10.i = tail call i32 @llvm.smin.i32(i32 %i.oo, i32 %i.oq)
  store i32 %..10.i, ptr %i.op, align 4, !tbaa !42
  %i.or = load i32, ptr %i.et, align 4, !tbaa !42
  %i.os = getelementptr inbounds nuw i8, ptr %.010225.i, i64 44 ; 2 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !42
  %..11.i = tail call i32 @llvm.smin.i32(i32 %i.or, i32 %i.ot)
  store i32 %..11.i, ptr %i.os, align 4, !tbaa !42
  %i.ou = load i32, ptr %i.et, align 4, !tbaa !42
  %i.ov = getelementptr inbounds nuw i8, ptr %.010225.i, i64 48 ; 2 uses
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !42
  %..12.i = tail call i32 @llvm.smin.i32(i32 %i.ou, i32 %i.ow)
  store i32 %..12.i, ptr %i.ov, align 4, !tbaa !42
  %i.ox = load i32, ptr %i.et, align 4, !tbaa !42
  %i.oy = getelementptr inbounds nuw i8, ptr %.010225.i, i64 52 ; 2 uses
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !42
  %..13.i = tail call i32 @llvm.smin.i32(i32 %i.ox, i32 %i.oz)
  store i32 %..13.i, ptr %i.oy, align 4, !tbaa !42
  %i.pa = load i32, ptr %i.et, align 4, !tbaa !42
  %i.pb = getelementptr inbounds nuw i8, ptr %.010225.i, i64 56 ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !42
  %..14.i = tail call i32 @llvm.smin.i32(i32 %i.pa, i32 %i.pc)
  store i32 %..14.i, ptr %i.pb, align 4, !tbaa !42
  %i.pd = load i32, ptr %i.et, align 4, !tbaa !42
  %i.pe = getelementptr inbounds nuw i8, ptr %.010225.i, i64 60 ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !42
  %..15.i = tail call i32 @llvm.smin.i32(i32 %i.pd, i32 %i.pf)
  store i32 %..15.i, ptr %i.pe, align 4, !tbaa !42
  %i.pg = load i32, ptr %i.et, align 4, !tbaa !42
  %i.ph = getelementptr inbounds nuw i8, ptr %.010225.i, i64 64 ; 2 uses
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !42
  %..16.i = tail call i32 @llvm.smin.i32(i32 %i.pg, i32 %i.pi)
  store i32 %..16.i, ptr %i.ph, align 4, !tbaa !42
  %i.pj = load i32, ptr %i.et, align 4, !tbaa !42
  %i.pk = getelementptr inbounds nuw i8, ptr %.010225.i, i64 68 ; 2 uses
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !42
  %..17.i = tail call i32 @llvm.smin.i32(i32 %i.pj, i32 %i.pl)
  store i32 %..17.i, ptr %i.pk, align 4, !tbaa !42
  %i.pm = load i32, ptr %i.et, align 4, !tbaa !42
  %i.pn = getelementptr inbounds nuw i8, ptr %.010225.i, i64 72 ; 2 uses
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !42
  %..18.i = tail call i32 @llvm.smin.i32(i32 %i.pm, i32 %i.po)
  store i32 %..18.i, ptr %i.pn, align 4, !tbaa !42
  %i.pp = load i32, ptr %i.et, align 4, !tbaa !42
  %i.pq = getelementptr inbounds nuw i8, ptr %.010225.i, i64 76 ; 2 uses
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !42
  %..19.i = tail call i32 @llvm.smin.i32(i32 %i.pp, i32 %i.pr)
  store i32 %..19.i, ptr %i.pq, align 4, !tbaa !42
  %i.ps = load i32, ptr %i.et, align 4, !tbaa !42
  %i.pt = getelementptr inbounds nuw i8, ptr %.010225.i, i64 80 ; 2 uses
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !42
  %..20.i = tail call i32 @llvm.smin.i32(i32 %i.ps, i32 %i.pu)
  store i32 %..20.i, ptr %i.pt, align 4, !tbaa !42
  %i.pv = load i32, ptr %i.et, align 4, !tbaa !42
  %i.pw = getelementptr inbounds nuw i8, ptr %.010225.i, i64 84 ; 2 uses
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !42
  %..21.i = tail call i32 @llvm.smin.i32(i32 %i.pv, i32 %i.px)
  store i32 %..21.i, ptr %i.pw, align 4, !tbaa !42
  %i.py = load i32, ptr %i.et, align 4, !tbaa !42
  %i.pz = getelementptr inbounds nuw i8, ptr %.010225.i, i64 88 ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !42
  %..22.i = tail call i32 @llvm.smin.i32(i32 %i.py, i32 %i.qa)
  store i32 %..22.i, ptr %i.pz, align 4, !tbaa !42
  %i.qb = load i32, ptr %i.et, align 4, !tbaa !42
  %i.qc = getelementptr inbounds nuw i8, ptr %.010225.i, i64 92 ; 2 uses
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !42
  %..23.i = tail call i32 @llvm.smin.i32(i32 %i.qb, i32 %i.qd)
  store i32 %..23.i, ptr %i.qc, align 4, !tbaa !42
  %i.qe = load i32, ptr %i.et, align 4, !tbaa !42
  %i.qf = getelementptr inbounds nuw i8, ptr %.010225.i, i64 96 ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !42
  %..24.i = tail call i32 @llvm.smin.i32(i32 %i.qe, i32 %i.qg)
  store i32 %..24.i, ptr %i.qf, align 4, !tbaa !42
  %i.qh = load i32, ptr %i.et, align 4, !tbaa !42
  %i.qi = getelementptr inbounds nuw i8, ptr %.010225.i, i64 100 ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !42
  %..25.i = tail call i32 @llvm.smin.i32(i32 %i.qh, i32 %i.qj)
  store i32 %..25.i, ptr %i.qi, align 4, !tbaa !42
  %i.qk = load i32, ptr %i.et, align 4, !tbaa !42
  %i.ql = getelementptr inbounds nuw i8, ptr %.010225.i, i64 104 ; 2 uses
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !42
  %..26.i = tail call i32 @llvm.smin.i32(i32 %i.qk, i32 %i.qm)
  store i32 %..26.i, ptr %i.ql, align 4, !tbaa !42
  %i.qn = load i32, ptr %i.et, align 4, !tbaa !42
  %i.qo = getelementptr inbounds nuw i8, ptr %.010225.i, i64 108 ; 2 uses
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !42
  %..27.i = tail call i32 @llvm.smin.i32(i32 %i.qn, i32 %i.qp)
  store i32 %..27.i, ptr %i.qo, align 4, !tbaa !42
  %i.qq = load i32, ptr %i.et, align 4, !tbaa !42
  %i.qr = getelementptr inbounds nuw i8, ptr %.010225.i, i64 112 ; 2 uses
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !42
  %..28.i = tail call i32 @llvm.smin.i32(i32 %i.qq, i32 %i.qs)
  store i32 %..28.i, ptr %i.qr, align 4, !tbaa !42
  %i.qt = load i32, ptr %i.et, align 4, !tbaa !42
  %i.qu = getelementptr inbounds nuw i8, ptr %.010225.i, i64 116 ; 2 uses
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !42
  %..29.i = tail call i32 @llvm.smin.i32(i32 %i.qt, i32 %i.qv)
  store i32 %..29.i, ptr %i.qu, align 4, !tbaa !42
  %i.qw = load i32, ptr %i.et, align 4, !tbaa !42
  %i.qx = getelementptr inbounds nuw i8, ptr %.010225.i, i64 120 ; 2 uses
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !42
  %..30.i = tail call i32 @llvm.smin.i32(i32 %i.qw, i32 %i.qy)
  store i32 %..30.i, ptr %i.qx, align 4, !tbaa !42
  %i.qz = load i32, ptr %i.et, align 4, !tbaa !42
  %i.ra = getelementptr inbounds nuw i8, ptr %.010225.i, i64 124 ; 2 uses
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !42
  %..31.i = tail call i32 @llvm.smin.i32(i32 %i.qz, i32 %i.rb)
  store i32 %..31.i, ptr %i.ra, align 4, !tbaa !42
  br label %.loopexit.i

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %i.rc = getelementptr inbounds nuw i8, ptr %.010225.i, i64 128
  %i.rd = getelementptr inbounds nuw i8, ptr %.012123.i, i64 8
  %i.re = zext i1 %i.jw to i8
  %i.rf = sext i32 %.011524.i to i64
  %i.rg = getelementptr inbounds i8, ptr %i.i, i64 %i.rf
  store i8 %i.re, ptr %i.rg, align 1, !tbaa !41
  %i.rh = add nsw i32 %.011524.i, 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.aq, %.preheader3.preheader.i, %.preheader4.preheader.i
  %.1122.i = phi ptr [ %i.rd, %bb.aq ], [ %.012123.i, %.preheader3.preheader.i ], [ %.012123.i, %.preheader4.preheader.i ]
  %.1116.i = phi i32 [ %i.rh, %bb.aq ], [ %.011524.i, %.preheader3.preheader.i ], [ %.011524.i, %.preheader4.preheader.i ] ; 2 uses
  %.1103.i = phi ptr [ %i.rc, %bb.aq ], [ %.010225.i, %.preheader3.preheader.i ], [ %.010225.i, %.preheader4.preheader.i ]
  %i.ri = icmp slt i32 %.1116.i, 256
  br i1 %i.ri, label %.preheader6.i, label %bb.ar, !llvm.loop !69

bb.ar:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.pre = load i32, ptr %i.dy, align 4, !tbaa !30
  %i.rj = icmp sgt i32 %.pre, 0
  br i1 %i.rj, label %.preheader143.lr.ph, label %._crit_edge151

.preheader143.lr.ph:                              ; preds = %bb.ar
  %i.rk = getelementptr inbounds nuw i8, ptr %i.eg, i64 4096
  %i.rl = icmp slt i32 %spec.select, 1
  %i.rm = icmp slt i32 %i.w, 1
  %i.rn = sext i32 %i.x to i64
  %i.ro = sext i32 %i.p to i64
  %i.rp = zext i32 %i.w to i64                    ; 8 uses
  %brmerge = select i1 %i.rl, i1 true, i1 %i.rm
  %wide.trip.count158 = zext i32 %spec.select to i64 ; 3 uses
  %4 = mul nuw i64 %wide.trip.count158, %i.rp
  %i.rq = mul nuw i64 %wide.trip.count158, %i.rp
  %i.rr = shl i64 %i.rq, 2
  %i.rs = getelementptr i8, ptr %i.g, i64 %i.rr
  %min.iters.check = icmp ult i32 %i.w, 8
  %n.vec = and i64 %i.rp, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.rp
  %xtraiter189 = and i64 %i.rp, 3                 ; 2 uses
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br label %.preheader143

.preheader143:                                    ; preds = %.preheader143.lr.ph, %bb.au
  %indvar = phi i64 [ 0, %.preheader143.lr.ph ], [ %indvar.next, %bb.au ] ; 2 uses
  %.0102150 = phi ptr [ %i.g, %.preheader143.lr.ph ], [ %i.uj, %bb.au ] ; 9 uses
  %.2149 = phi ptr [ %i.rk, %.preheader143.lr.ph ], [ %.3, %bb.au ] ; 9 uses
  %.2106148 = phi i32 [ 4096, %.preheader143.lr.ph ], [ %.3107, %bb.au ]
  %.0110147 = phi i32 [ 0, %.preheader143.lr.ph ], [ %i.uk, %bb.au ]
  %i.rt = mul nuw nsw i64 %indvar, 4000
  %scevgep186 = getelementptr i8, ptr %i.rs, i64 %i.rt
  br i1 %brmerge, label %._crit_edge146.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader143
  %scevgep = getelementptr i8, ptr %.2149, i64 %4
  %bound0 = icmp ult ptr %.2149, %scevgep186
  %bound1 = icmp ult ptr %.0102150, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.ru = mul nuw nsw i64 %indvars.iv155, %i.rp   ; 6 uses
  %brmerge195 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge195, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 2 uses
  %i.rv = add nuw nsw i64 %index, %i.ru           ; 2 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %.0102150, i64 %i.rv ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %wide.load = load <4 x i32>, ptr %i.rw, align 4, !tbaa !42, !alias.scope !70
  %wide.load187 = load <4 x i32>, ptr %i.rx, align 4, !tbaa !42, !alias.scope !70
  %i.ry = trunc <4 x i32> %wide.load to <4 x i8>
  %i.rz = trunc <4 x i32> %wide.load187 to <4 x i8>
  %i.sa = getelementptr inbounds nuw i8, ptr %.2149, i64 %i.rv ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 4
  store <4 x i8> %i.ry, ptr %i.sa, align 1, !tbaa !41, !alias.scope !73, !noalias !70
  store <4 x i8> %i.rz, ptr %i.sb, align 1, !tbaa !41, !alias.scope !73, !noalias !70
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sc = icmp eq i64 %index.next, %n.vec
  br i1 %i.sc, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 3 uses
  br i1 %lcmp.mod190.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.sd = add nuw nsw i64 %indvars.iv.prol, %i.ru ; 2 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %.0102150, i64 %i.sd
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !42
  %i.sg = trunc i32 %i.sf to i8
  %i.sh = getelementptr inbounds nuw i8, ptr %.2149, i64 %i.sd
  store i8 %i.sg, ptr %i.sh, align 1, !tbaa !41
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter189
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !78

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.si = sub nsw i64 %indvars.iv.ph, %i.rp
  %i.sj = icmp ugt i64 %i.si, -4
  br i1 %i.sj, label %._crit_edge, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add nuw nsw i64 1, %i.ru
  %invariant.op191 = add nuw nsw i64 2, %i.ru
  %invariant.op193 = add nuw nsw i64 3, %i.ru
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.3, %scalar.ph ] ; 5 uses
  %i.sk = add nuw nsw i64 %indvars.iv, %i.ru      ; 2 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %.0102150, i64 %i.sk
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !42
  %i.sn = trunc i32 %i.sm to i8
  %i.so = getelementptr inbounds nuw i8, ptr %.2149, i64 %i.sk
  store i8 %i.sn, ptr %i.so, align 1, !tbaa !41
  %.reass = add nuw nsw i64 %indvars.iv, %invariant.op ; 2 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %.0102150, i64 %.reass
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !42
  %i.sr = trunc i32 %i.sq to i8
  %i.ss = getelementptr inbounds nuw i8, ptr %.2149, i64 %.reass
  store i8 %i.sr, ptr %i.ss, align 1, !tbaa !41
  %.reass192 = add nuw nsw i64 %indvars.iv, %invariant.op191 ; 2 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %.0102150, i64 %.reass192
  %i.su = load i32, ptr %i.st, align 4, !tbaa !42
  %i.sv = trunc i32 %i.su to i8
  %i.sw = getelementptr inbounds nuw i8, ptr %.2149, i64 %.reass192
  store i8 %i.sv, ptr %i.sw, align 1, !tbaa !41
  %.reass194 = add nuw nsw i64 %indvars.iv, %invariant.op193 ; 2 uses
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %.0102150, i64 %.reass194
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !42
  %i.sz = trunc i32 %i.sy to i8
  %i.ta = getelementptr inbounds nuw i8, ptr %.2149, i64 %.reass194
  store i8 %i.sz, ptr %i.ta, align 1, !tbaa !41
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.rp
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count158
  br i1 %exitcond159.not, label %._crit_edge146.split, label %.preheader, !llvm.loop !81

._crit_edge146.split:                             ; preds = %._crit_edge, %.preheader143
  %i.tb = getelementptr inbounds i8, ptr %.2149, i64 %i.rn ; 3 uses
  %i.tc = add nsw i32 %.2106148, %i.x             ; 2 uses
  %i.td = load i32, ptr %i.n, align 8, !tbaa !39
  %.not125 = icmp eq i32 %i.td, 0
  br i1 %.not125, label %bb.au, label %.preheader142

.preheader142:                                    ; preds = %._crit_edge146.split, %bb.at
  %indvars.iv.i131 = phi i64 [ %indvars.iv.next.i132, %bb.at ], [ 0, %._crit_edge146.split ] ; 4 uses
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %.0102150, i64 %indvars.iv.i131 ; 4 uses
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !42
  %i.tg = sext i32 %i.tf to i64
  %i.th = getelementptr inbounds i8, ptr %i.i, i64 %i.tg
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !41
  %i.tj = getelementptr inbounds nuw i8, ptr %i.te, i64 1024
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !42
  %i.tl = sext i32 %i.tk to i64
  %i.tm = getelementptr inbounds i8, ptr %i.i, i64 %i.tl
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !41
  %i.to = shl i8 %i.tn, 1
  %i.tp = or i8 %i.to, %i.ti
  %i.tq = getelementptr inbounds nuw i8, ptr %i.te, i64 2048
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !42
  %i.ts = sext i32 %i.tr to i64
  %i.tt = getelementptr inbounds i8, ptr %i.i, i64 %i.ts
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !41
  %i.tv = shl i8 %i.tu, 2
  %i.tw = or i8 %i.tp, %i.tv                      ; 2 uses
  %i.tx = icmp samesign ult i64 %indvars.iv.i131, 232
  br i1 %i.tx, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.preheader142
  %i.ty = getelementptr inbounds nuw i8, ptr %i.te, i64 3072
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !42
  %i.ua = sext i32 %i.tz to i64
  %i.ub = getelementptr inbounds i8, ptr %i.i, i64 %i.ua
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !41
  %i.ud = shl i8 %i.uc, 3
  %i.ue = or i8 %i.ud, %i.tw
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.preheader142
  %.0.i = phi i8 [ %i.ue, %bb.as ], [ %i.tw, %.preheader142 ]
  %i.uf = shl i8 %.0.i, 2
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tb, i64 %indvars.iv.i131
  store i8 %i.uf, ptr %i.ug, align 1, !tbaa !41
  %indvars.iv.next.i132 = add nuw nsw i64 %indvars.iv.i131, 1 ; 2 uses
  %exitcond.not.i133 = icmp eq i64 %indvars.iv.next.i132, 256
  br i1 %exitcond.not.i133, label %a64_compress_colram.exit, label %.preheader142, !llvm.loop !82

a64_compress_colram.exit:                         ; preds = %bb.at
  %i.uh = getelementptr inbounds i8, ptr %i.tb, i64 %i.ro
  %i.ui = add nsw i32 %i.tc, %i.p
  br label %bb.au

bb.au:                                            ; preds = %a64_compress_colram.exit, %._crit_edge146.split
  %.3107 = phi i32 [ %i.ui, %a64_compress_colram.exit ], [ %i.tc, %._crit_edge146.split ] ; 2 uses
  %.3 = phi ptr [ %i.uh, %a64_compress_colram.exit ], [ %i.tb, %._crit_edge146.split ]
  %i.uj = getelementptr i8, ptr %.0102150, i64 4000
  %i.uk = add nuw nsw i32 %.0110147, 1            ; 2 uses
  %i.ul = load i32, ptr %i.dy, align 4, !tbaa !30
  %i.um = icmp slt i32 %i.uk, %i.ul
  %indvar.next = add i64 %indvar, 1
  br i1 %i.um, label %.preheader143, label %._crit_edge151, !llvm.loop !83

._crit_edge151:                                   ; preds = %bb.au, %bb.s, %bb.ar
  %.2106.lcssa = phi i32 [ 4096, %bb.ar ], [ 0, %bb.s ], [ %.3107, %bb.au ] ; 2 uses
  %i.un = load i32, ptr %i.dx, align 4, !tbaa !34
  %i.uo = tail call i32 @llvm.bswap.i32(i32 %i.un)
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !49
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 4
  store i32 %i.uo, ptr %i.ur, align 1, !tbaa !41
  %i.us = load ptr, ptr %i.up, align 8, !tbaa !49
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  store i32 1048576, ptr %i.ut, align 1, !tbaa !41
  %i.uu = add nsw i32 %i.x, %i.p
  %i.uv = tail call i32 @llvm.bswap.i32(i32 %i.uu)
  %i.uw = load ptr, ptr %i.up, align 8, !tbaa !49
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 12
  store i32 %i.uv, ptr %i.ux, align 1, !tbaa !41
  store i32 0, ptr %i.dx, align 4, !tbaa !34
  %i.uy = getelementptr inbounds nuw i8, ptr %i.e, i64 352 ; 2 uses
  %i.uz = load i64, ptr %i.uy, align 8, !tbaa !52 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.uz, ptr %i.va, align 8, !tbaa !84
  %i.vb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.uz, ptr %i.vb, align 8, !tbaa !85
  store i64 -9223372036854775808, ptr %i.uy, align 8, !tbaa !52
  %i.vc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.vd = load i32, ptr %i.vc, align 8, !tbaa !86
  %i.ve = icmp eq i32 %i.vd, %.2106.lcssa
  br i1 %i.ve, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %._crit_edge151
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 389) #7
  tail call void @abort() #8
  unreachable

bb.aw:                                            ; preds = %._crit_edge151
  %i.vf = icmp ne i32 %.2106.lcssa, 0
  %i.vg = zext i1 %i.vf to i32
  store i32 %i.vg, ptr %3, align 4, !tbaa !42
  br label %.thread
end_hunk_0
