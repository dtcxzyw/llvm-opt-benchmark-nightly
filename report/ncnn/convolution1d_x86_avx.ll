inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN4ncnn21Convolution1D_x86_avx15create_pipelineERKNS_6OptionE:bb.a
  %i.cc = lshr i32 %i.n, 2
  %i.cd = and i32 %i.cc, 1
  %i.ce = lshr i32 %i.n, 1
  %i.cf = and i32 %i.ce, 1
  %i.cg = and i32 %i.n, 1
  %i.ch = add nuw nsw i32 %i.cg, %i.cb
  %i.ci = add nuw nsw i32 %i.ch, %i.cd
  %i.cj = add nuw nsw i32 %i.ci, %i.cf
  %i.ck = lshr i32 %i.m, 1
  %i.cl = and i32 %i.ck, 1
  %i.cm = and i32 %i.m, 1
  %i.cn = add nuw nsw i32 %i.cm, 1
  %i.co = add nuw nsw i32 %i.cn, %i.cl
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ca, i32 noundef %i.cj, i32 noundef %i.co, i64 noundef 4, ptr noundef null)
  br label %.preheader1103.i

bb.o:                                             ; preds = %bb.m
  %i.cp = icmp sgt i32 %i.n, 3
  br i1 %i.cp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cq = shl nsw i32 %i.j, 4
  %i.cr = lshr i32 %i.n, 1
  %i.cs = and i32 %i.cr, 1
  %i.ct = and i32 %i.n, 1
  %i.cu = add nuw nsw i32 %i.ct, 1
  %i.cv = add nuw nsw i32 %i.cu, %i.cs
  %i.cw = lshr i32 %i.m, 1
  %i.cx = and i32 %i.cw, 1
  %i.cy = and i32 %i.m, 1
  %i.cz = add nuw nsw i32 %i.cy, 1
  %i.da = add nuw nsw i32 %i.cz, %i.cx
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.cq, i32 noundef %i.cv, i32 noundef %i.da, i64 noundef 4, ptr noundef null)
  br label %.preheader1103.i

bb.q:                                             ; preds = %bb.o
  %i.db = icmp sgt i32 %i.n, 1
  br i1 %i.db, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dc = shl nsw i32 %i.j, 3
  %i.dd = and i32 %i.n, 1
  %i.de = add nuw nsw i32 %i.dd, 1
  %i.df = lshr i32 %i.m, 1
  %i.dg = and i32 %i.df, 1
  %i.dh = and i32 %i.m, 1
  %i.di = add nuw nsw i32 %i.dh, 1
  %i.dj = add nuw nsw i32 %i.di, %i.dg
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.dc, i32 noundef %i.de, i32 noundef %i.dj, i64 noundef 4, ptr noundef null)
  br label %.preheader1103.i

bb.s:                                             ; preds = %bb.q
  %i.dk = shl nsw i32 %i.j, 2
  %i.dl = lshr i32 %i.m, 1
  %i.dm = and i32 %i.dl, 1
  %i.dn = and i32 %i.m, 1
  %i.do = add nuw nsw i32 %i.dn, 1
  %i.dp = add nuw nsw i32 %i.do, %i.dm
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.dk, i32 noundef %i.n, i32 noundef %i.dp, i64 noundef 4, ptr noundef null)
  br label %.preheader1103.i

bb.t:                                             ; preds = %bb.l
  %i.dq = icmp sgt i32 %i.m, 1
  %i.dr = icmp sgt i32 %i.n, 7                    ; 2 uses
  br i1 %i.dq, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  br i1 %i.dr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ds = shl nsw i32 %i.j, 4
  %i.dt = lshr i32 %i.n, 3
  %i.du = lshr i32 %i.n, 2
  %i.dv = and i32 %i.du, 1
  %i.dw = lshr i32 %i.n, 1
  %i.dx = and i32 %i.dw, 1
  %i.dy = and i32 %i.n, 1
  %i.dz = add nuw nsw i32 %i.dy, %i.dt
  %i.ea = add nuw nsw i32 %i.dz, %i.dv
  %i.eb = add nuw nsw i32 %i.ea, %i.dx
  %i.ec = and i32 %i.m, 1
  %i.ed = add nuw nsw i32 %i.ec, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ds, i32 noundef %i.eb, i32 noundef %i.ed, i64 noundef 4, ptr noundef null)
  br label %.preheader1103.i

bb.w:                                             ; preds = %bb.u
  %i.ee = icmp sgt i32 %i.n, 3
  br i1 %i.ee, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ef = shl nsw i32 %i.j, 3
  %i.eg = lshr i32 %i.n, 1
  %i.eh = and i32 %i.eg, 1
  %i.ei = and i32 %i.n, 1
  %i.ej = add nuw nsw i32 %i.ei, 1
  %i.ek = add nuw nsw i32 %i.ej, %i.eh
  %i.el = and i32 %i.m, 1
  %i.em = add nuw nsw i32 %i.el, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ef, i32 noundef %i.ek, i32 noundef %i.em, i64 noundef 4, ptr noundef null)
  br label %.preheader1103.i

bb.y:                                             ; preds = %bb.w
  %i.en = icmp sgt i32 %i.n, 1
  br i1 %i.en, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eo = shl nsw i32 %i.j, 2
  %i.ep = and i32 %i.n, 1
  %i.eq = add nuw nsw i32 %i.ep, 1
  %i.er = and i32 %i.m, 1
  %i.es = add nuw nsw i32 %i.er, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.eo, i32 noundef %i.eq, i32 noundef %i.es, i64 noundef 4, ptr noundef null)
  br label %.preheader1103.i

bb.aa:                                            ; preds = %bb.y
  %i.et = shl nsw i32 %i.j, 1
  %i.eu = and i32 %i.m, 1
  %i.ev = add nuw nsw i32 %i.eu, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.et, i32 noundef %i.n, i32 noundef %i.ev, i64 noundef 4, ptr noundef null)
  br label %.preheader1103.i

bb.ab:                                            ; preds = %bb.t
  br i1 %i.dr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ew = shl nsw i32 %i.j, 3
  %i.ex = lshr i32 %i.n, 3
  %i.ey = lshr i32 %i.n, 2
  %i.ez = and i32 %i.ey, 1
  %i.fa = lshr i32 %i.n, 1
  %i.fb = and i32 %i.fa, 1
  %i.fc = and i32 %i.n, 1
  %i.fd = add nuw nsw i32 %i.fc, %i.ex
  %i.fe = add nuw nsw i32 %i.fd, %i.ez
  %i.ff = add nuw nsw i32 %i.fe, %i.fb
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ew, i32 noundef %i.ff, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader1103.i

bb.ad:                                            ; preds = %bb.ab
  %i.fg = icmp sgt i32 %i.n, 3
  br i1 %i.fg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fh = shl nsw i32 %i.j, 2
  %i.fi = lshr i32 %i.n, 1
  %i.fj = and i32 %i.fi, 1
  %i.fk = and i32 %i.n, 1
  %i.fl = add nuw nsw i32 %i.fk, 1
  %i.fm = add nuw nsw i32 %i.fl, %i.fj
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.fh, i32 noundef %i.fm, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader1103.i

bb.af:                                            ; preds = %bb.ad
  %i.fn = icmp sgt i32 %i.n, 1
  br i1 %i.fn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fo = shl nsw i32 %i.j, 1
  %i.fp = and i32 %i.n, 1
  %i.fq = add nuw nsw i32 %i.fp, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.fo, i32 noundef %i.fq, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader1103.i

bb.ah:                                            ; preds = %bb.af
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.j, i32 noundef %i.n, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader1103.i

_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i:                ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %i.fr = load ptr, ptr %i.o, align 8, !tbaa !18  ; 9 uses
  %i.fs = mul i32 %i.n, %i.j                      ; 16 uses
  %i.ft = load ptr, ptr %i.p, align 8, !tbaa !18, !noalias !46
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !20, !noalias !46
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !49, !noalias !46
  %factor.op.mul.i = mul i64 %i.fx, %i.fv
  %i.fy = icmp sgt i32 %i.j, 0                    ; 3 uses
  %i.fz = sext i32 %i.j to i64                    ; 88 uses
  %i.ga = shl i32 %i.j, 3
  %i.gb = sext i32 %i.ga to i64                   ; 9 uses
  %i.gc = shl i32 %i.j, 2
  %i.gd = sext i32 %i.gc to i64                   ; 9 uses
  %i.ge = shl i32 %i.j, 1
  %i.gf = sext i32 %i.ge to i64                   ; 8 uses
  %i.gg = icmp slt i32 %i.j, 1
  %i.gh = add i32 %i.n, -8                        ; 2 uses
  %i.gi = lshr i32 %i.gh, 1
  %i.gj = and i32 %i.gi, 2147483644
  %narrow.i = add nuw i32 %i.gj, 4
  %i.gk = zext i32 %narrow.i to i64
  %i.gl = mul nsw i64 %i.gk, %i.gb
  %scevgep.i = getelementptr i8, ptr %i.fr, i64 %i.gl ; 8 uses
  %i.gm = shl i32 %i.fs, 3                        ; 8 uses
  %i.gn = shl i32 %i.fs, 1
  %i.go = mul i32 %i.fs, 3
  %i.gp = shl i32 %i.fs, 2
  %i.gq = mul i32 %i.fs, 5
  %i.gr = mul i32 %i.fs, 6
  %i.gs = mul i32 %i.fs, 7
  %i.gt = and i32 %i.gh, -8
  %i.gu = add i32 %i.gt, 8                        ; 4 uses
  %i.gv = add i32 %i.n, -4
  %i.gw = zext nneg i32 %i.m to i64
  %i.gx = or disjoint i32 %i.gu, 3
  %i.gy = icmp slt i32 %i.gx, %i.n
  %wide.trip.count.i = zext i32 %i.j to i64       ; 8 uses
  %i.gz = shl nuw nsw i64 %wide.trip.count.i, 5
  %i.ha = shl nuw nsw i64 %wide.trip.count.i, 2   ; 8 uses
  %min.iters.check = icmp ult i32 %i.j, 16
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.hb = shl nuw nsw i64 %n.vec, 5
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %_ZN4ncnn3MatD2Ev.exit1005.i

.preheader1103.loopexit.i:                        ; preds = %._crit_edge1244.split.i
  %i.hc = trunc nuw nsw i64 %indvars.iv.next1684.i to i32
  br label %.preheader1103.i

.preheader1103.i:                                 ; preds = %.preheader1103.loopexit.i, %bb.ah, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.z, %bb.x, %bb.v, %bb.s, %bb.r, %bb.p, %bb.n
  %.0.lcssa.i = phi i32 [ %i.hc, %.preheader1103.loopexit.i ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.n ], [ 0, %bb.ac ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ae ], [ 0, %bb.v ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 0, %bb.x ] ; 7 uses
  %i.hd = or disjoint i32 %.0.lcssa.i, 3          ; 2 uses
  %i.he = icmp slt i32 %i.hd, %i.m
  br i1 %i.he, label %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i, label %.preheader1095.i

_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i:                ; preds = %.preheader1103.i
  %i.hf = load ptr, ptr %i.o, align 8, !tbaa !18  ; 5 uses
  %i.hg = mul i32 %i.n, %i.j                      ; 9 uses
  %i.hh = load ptr, ptr %i.p, align 8, !tbaa !18, !noalias !50
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !20, !noalias !50
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !49, !noalias !50
  %factor.op.mul1340.i = mul i64 %i.hl, %i.hj
  %i.hm = icmp sgt i32 %i.n, 7
  %i.hn = icmp sgt i32 %i.j, 0                    ; 3 uses
  %i.ho = sext i32 %i.j to i64                    ; 49 uses
  %i.hp = shl i32 %i.j, 3
  %i.hq = sext i32 %i.hp to i64                   ; 5 uses
  %i.hr = shl i32 %i.j, 2
  %i.hs = sext i32 %i.hr to i64                   ; 5 uses
  %i.ht = shl i32 %i.j, 1                         ; 2 uses
  %i.hu = sext i32 %i.ht to i64                   ; 5 uses
  %i.hv = icmp slt i32 %i.j, 1
  %i.hw = add i32 %i.n, -8                        ; 2 uses
  %i.hx = lshr i32 %i.hw, 1
  %i.hy = and i32 %i.hx, 2147483644
  %narrow1837.i = add nuw i32 %i.hy, 4
  %i.hz = zext i32 %narrow1837.i to i64
  %i.ia = mul nsw i64 %i.hz, %i.hq
  %scevgep1686.i = getelementptr i8, ptr %i.hf, i64 %i.ia ; 4 uses
  %i.ib = mul i32 %i.hg, %.0.lcssa.i
  %i.ic = shl i32 %i.hg, 2                        ; 4 uses
  %i.id = add nuw nsw i32 %.0.lcssa.i, 1
  %i.ie = mul i32 %i.id, %i.hg
  %i.if = add nuw nsw i32 %.0.lcssa.i, 2
  %i.ig = mul i32 %i.if, %i.hg
  %i.ih = mul i32 %i.hd, %i.hg
  %i.ii = and i32 %i.hw, -8
  %i.ij = add i32 %i.ii, 8                        ; 4 uses
  %i.ik = add i32 %i.n, -4
  %i.il = zext nneg i32 %.0.lcssa.i to i64
  %i.im = add i32 %.0.lcssa.i, 3
  %i.in = sext i32 %i.m to i64
  %i.io = or disjoint i32 %i.ij, 3
  %i.ip = icmp slt i32 %i.io, %i.n
  %wide.trip.count1706.i = zext i32 %i.j to i64   ; 13 uses
  %invariant.op.i = add nsw i64 %i.in, -3
  %i.iq = shl nuw nsw i64 %wide.trip.count1706.i, 4
  %i.ir = shl nuw nsw i64 %wide.trip.count1706.i, 2 ; 9 uses
  %i.is = shl nuw nsw i64 %wide.trip.count1706.i, 5
  %i.it = shl nuw nsw i64 %i.ho, 2                ; 5 uses
  %i.iu = add nuw nsw i64 %i.it, %i.ir            ; 4 uses
  %i.iv = shl nsw i64 %i.hu, 2
  %min.iters.check434 = icmp ult i32 %i.j, 16
  %stride.check401 = icmp slt i32 %i.ht, 0
  %n.vec436 = and i64 %wide.trip.count1706.i, 2147483640 ; 4 uses
  %i.iw = shl nuw nsw i64 %n.vec436, 5
  %cmp.n451 = icmp eq i64 %n.vec436, %wide.trip.count1706.i
  %min.iters.check357 = icmp ult i32 %i.j, 8
  %n.vec359 = and i64 %wide.trip.count1706.i, 2147483640 ; 4 uses
  %i.ix = shl nuw nsw i64 %n.vec359, 4
  %cmp.n370 = icmp eq i64 %n.vec359, %wide.trip.count1706.i
  %xtraiter = and i64 %wide.trip.count1706.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.iy = add nsw i64 %wide.trip.count1706.i, -1
  br label %_ZN4ncnn3MatD2Ev.exit1004.i

_ZN4ncnn3MatD2Ev.exit1005.i:                      ; preds = %._crit_edge1244.split.i, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i
  %indvars.iv1683.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1684.i, %._crit_edge1244.split.i ] ; 3 uses
  %indvars.iv1644.i = phi i32 [ %i.gs, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1645.i, %._crit_edge1244.split.i ] ; 2 uses
  %indvars.iv1640.i = phi i32 [ %i.gr, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1641.i, %._crit_edge1244.split.i ] ; 2 uses
  %indvars.iv1636.i = phi i32 [ %i.gq, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1637.i, %._crit_edge1244.split.i ] ; 2 uses
  %indvars.iv1632.i = phi i32 [ %i.gp, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1633.i, %._crit_edge1244.split.i ] ; 2 uses
  %indvars.iv1628.i = phi i32 [ %i.go, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1629.i, %._crit_edge1244.split.i ] ; 2 uses
  %indvars.iv1624.i = phi i32 [ %i.gn, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1625.i, %._crit_edge1244.split.i ] ; 2 uses
  %indvars.iv1620.i = phi i32 [ %i.fs, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1621.i, %._crit_edge1244.split.i ] ; 2 uses
  %indvars.iv.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next.i, %._crit_edge1244.split.i ] ; 2 uses
  %i.iz = sext i32 %indvars.iv.i to i64
  %i.ja = shl nsw i64 %i.iz, 2
  %scevgep1618.i = getelementptr i8, ptr %scevgep.i, i64 %i.ja ; 2 uses
  %i.jb = sext i32 %indvars.iv1620.i to i64
  %i.jc = shl nsw i64 %i.jb, 2
  %scevgep1622.i = getelementptr i8, ptr %scevgep.i, i64 %i.jc ; 2 uses
  %i.jd = sext i32 %indvars.iv1624.i to i64
  %i.je = shl nsw i64 %i.jd, 2
  %scevgep1626.i = getelementptr i8, ptr %scevgep.i, i64 %i.je ; 2 uses
  %i.jf = sext i32 %indvars.iv1628.i to i64
  %i.jg = shl nsw i64 %i.jf, 2
  %scevgep1630.i = getelementptr i8, ptr %scevgep.i, i64 %i.jg ; 2 uses
  %i.jh = sext i32 %indvars.iv1632.i to i64
  %i.ji = shl nsw i64 %i.jh, 2
  %scevgep1634.i = getelementptr i8, ptr %scevgep.i, i64 %i.ji ; 2 uses
  %i.jj = sext i32 %indvars.iv1636.i to i64
  %i.jk = shl nsw i64 %i.jj, 2
  %scevgep1638.i = getelementptr i8, ptr %scevgep.i, i64 %i.jk ; 2 uses
  %i.jl = sext i32 %indvars.iv1640.i to i64
  %i.jm = shl nsw i64 %i.jl, 2
  %scevgep1642.i = getelementptr i8, ptr %scevgep.i, i64 %i.jm ; 2 uses
  %i.jn = sext i32 %indvars.iv1644.i to i64
  %i.jo = shl nsw i64 %i.jn, 2
  %scevgep1646.i = getelementptr i8, ptr %scevgep.i, i64 %i.jo ; 2 uses
  %i.jp = trunc i64 %indvars.iv1683.i to i32      ; 8 uses
  %i.jq = mul i32 %i.fs, %i.jp
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.jr ; 2 uses
  %i.jt = or disjoint i32 %i.jp, 1
  %i.ju = mul i32 %i.jt, %i.fs
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.jv ; 2 uses
  %i.jx = or disjoint i32 %i.jp, 2
  %i.jy = mul i32 %i.jx, %i.fs
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.jz ; 2 uses
  %i.kb = or disjoint i32 %i.jp, 3
  %i.kc = mul i32 %i.kb, %i.fs
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.kd ; 2 uses
  %i.kf = or disjoint i32 %i.jp, 4
  %i.kg = mul i32 %i.kf, %i.fs
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.kh ; 2 uses
  %i.kj = or disjoint i32 %i.jp, 5
  %i.kk = mul i32 %i.kj, %i.fs
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.kl ; 2 uses
  %i.kn = or disjoint i32 %i.jp, 6
  %i.ko = mul i32 %i.kn, %i.fs
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.kp ; 2 uses
  %i.kr = or disjoint i32 %i.jp, 7
  %i.ks = mul i32 %i.kr, %i.fs
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.kt ; 2 uses
  %i.kv = lshr exact i64 %indvars.iv1683.i, 3
  %.reass.i = mul i64 %factor.op.mul.i, %i.kv
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.reass.i ; 4 uses
  br i1 %i.r, label %.preheader1107.lr.ph.i, label %.preheader1110.i

.preheader1107.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1005.i
  br i1 %i.fy, label %.preheader1107.us.i, label %.preheader1110.thread.i

.preheader1107.us.i:                              ; preds = %.preheader1107.lr.ph.i, %._crit_edge.us.i
  %.08371132.us.i = phi ptr [ %i.sh, %._crit_edge.us.i ], [ %i.js, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08401131.us.i = phi ptr [ %i.si, %._crit_edge.us.i ], [ %i.jw, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08481130.us.i = phi ptr [ %i.sj, %._crit_edge.us.i ], [ %i.ka, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08511129.us.i = phi ptr [ %i.sk, %._crit_edge.us.i ], [ %i.ke, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08551128.us.i = phi ptr [ %i.sl, %._crit_edge.us.i ], [ %i.ki, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08581127.us.i = phi ptr [ %i.sm, %._crit_edge.us.i ], [ %i.km, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08811126.us.i = phi ptr [ %i.sn, %._crit_edge.us.i ], [ %i.kq, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08841125.us.i = phi ptr [ %i.so, %._crit_edge.us.i ], [ %i.ku, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08871124.us.i = phi ptr [ %i.sg, %._crit_edge.us.i ], [ %i.kw, %.preheader1107.lr.ph.i ]
  %.08981123.us.i = phi i32 [ %i.sp, %._crit_edge.us.i ], [ 0, %.preheader1107.lr.ph.i ]
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.preheader1107.us.i
  %indvars.iv1647.i = phi i64 [ 0, %.preheader1107.us.i ], [ %indvars.iv.next1648.i, %bb.ai ] ; 9 uses
  %.18881122.us.i = phi ptr [ %.08871124.us.i, %.preheader1107.us.i ], [ %i.sg, %bb.ai ] ; 65 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.08371132.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %.08401131.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.08481130.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.08511129.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.08551128.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.08581127.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.08811126.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.08841125.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.lf = load float, ptr %i.kx, align 4, !tbaa !53
  store float %i.lf, ptr %.18881122.us.i, align 4, !tbaa !53
  %i.lg = load float, ptr %i.ky, align 4, !tbaa !53
  %i.lh = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 4
  store float %i.lg, ptr %i.lh, align 4, !tbaa !53
  %i.li = load float, ptr %i.kz, align 4, !tbaa !53
  %i.lj = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 8
  store float %i.li, ptr %i.lj, align 4, !tbaa !53
  %i.lk = load float, ptr %i.la, align 4, !tbaa !53
  %i.ll = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 12
  store float %i.lk, ptr %i.ll, align 4, !tbaa !53
  %i.lm = load float, ptr %i.lb, align 4, !tbaa !53
  %i.ln = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 16
  store float %i.lm, ptr %i.ln, align 4, !tbaa !53
  %i.lo = load float, ptr %i.lc, align 4, !tbaa !53
  %i.lp = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 20
  store float %i.lo, ptr %i.lp, align 4, !tbaa !53
  %i.lq = load float, ptr %i.ld, align 4, !tbaa !53
  %i.lr = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 24
  store float %i.lq, ptr %i.lr, align 4, !tbaa !53
  %i.ls = load float, ptr %i.le, align 4, !tbaa !53
  %i.lt = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 28
  store float %i.ls, ptr %i.lt, align 4, !tbaa !53
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.fz ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.fz ; 2 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.fz ; 2 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.fz ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.fz ; 2 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.fz ; 2 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.fz ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.fz ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 32
  %i.md = load float, ptr %i.lu, align 4, !tbaa !53
  store float %i.md, ptr %i.mc, align 4, !tbaa !53
  %i.me = load float, ptr %i.lv, align 4, !tbaa !53
  %i.mf = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 36
  store float %i.me, ptr %i.mf, align 4, !tbaa !53
  %i.mg = load float, ptr %i.lw, align 4, !tbaa !53
  %i.mh = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 40
  store float %i.mg, ptr %i.mh, align 4, !tbaa !53
  %i.mi = load float, ptr %i.lx, align 4, !tbaa !53
  %i.mj = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 44
  store float %i.mi, ptr %i.mj, align 4, !tbaa !53
  %i.mk = load float, ptr %i.ly, align 4, !tbaa !53
  %i.ml = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 48
  store float %i.mk, ptr %i.ml, align 4, !tbaa !53
  %i.mm = load float, ptr %i.lz, align 4, !tbaa !53
  %i.mn = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 52
  store float %i.mm, ptr %i.mn, align 4, !tbaa !53
  %i.mo = load float, ptr %i.ma, align 4, !tbaa !53
  %i.mp = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 56
  store float %i.mo, ptr %i.mp, align 4, !tbaa !53
  %i.mq = load float, ptr %i.mb, align 4, !tbaa !53
  %i.mr = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 60
  store float %i.mq, ptr %i.mr, align 4, !tbaa !53
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.fz ; 2 uses
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.fz ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.fz ; 2 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.fz ; 2 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.fz ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.fz ; 2 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.fz ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.fz ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 64
  %i.nb = load float, ptr %i.ms, align 4, !tbaa !53
  store float %i.nb, ptr %i.na, align 4, !tbaa !53
  %i.nc = load float, ptr %i.mt, align 4, !tbaa !53
  %i.nd = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 68
  store float %i.nc, ptr %i.nd, align 4, !tbaa !53
  %i.ne = load float, ptr %i.mu, align 4, !tbaa !53
  %i.nf = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 72
  store float %i.ne, ptr %i.nf, align 4, !tbaa !53
  %i.ng = load float, ptr %i.mv, align 4, !tbaa !53
  %i.nh = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 76
end_hunk_0
begin_hunk_1_@_ZN4ncnn21Convolution1D_x86_avx15create_pipelineERKNS_6OptionE:bb.a
  %i.zn = icmp sge i32 %.2900.lcssa.i, %i.n
  %brmerge.i = or i1 %i.gg, %i.zn
  br i1 %brmerge.i, label %._crit_edge1244.split.i, label %.preheader1104.i.preheader

.preheader1104.i.preheader:                       ; preds = %.preheader1108.i
  %scevgep292 = getelementptr i8, ptr %.2886.lcssa.i, i64 %i.ha
  %scevgep293 = getelementptr i8, ptr %.2883.lcssa.i, i64 %i.ha
  %scevgep294 = getelementptr i8, ptr %.2860.lcssa.i, i64 %i.ha
  %scevgep295 = getelementptr i8, ptr %.2857.lcssa.i, i64 %i.ha
  %scevgep296 = getelementptr i8, ptr %.2853.lcssa.i, i64 %i.ha
  %scevgep297 = getelementptr i8, ptr %.2850.lcssa.i, i64 %i.ha
  %scevgep298 = getelementptr i8, ptr %.2842.lcssa.i, i64 %i.ha
  %scevgep299 = getelementptr i8, ptr %.2839.lcssa.i, i64 %i.ha
  %i.zo = insertelement <8 x ptr> poison, ptr %scevgep292, i64 0
  %i.zp = insertelement <8 x ptr> %i.zo, ptr %scevgep293, i64 1
  %i.zq = insertelement <8 x ptr> %i.zp, ptr %scevgep294, i64 2
  %i.zr = insertelement <8 x ptr> %i.zq, ptr %scevgep295, i64 3
  %i.zs = insertelement <8 x ptr> %i.zr, ptr %scevgep296, i64 4
  %i.zt = insertelement <8 x ptr> %i.zs, ptr %scevgep297, i64 5
  %i.zu = insertelement <8 x ptr> %i.zt, ptr %scevgep298, i64 6
  %i.zv = insertelement <8 x ptr> %i.zu, ptr %scevgep299, i64 7
  %i.zw = insertelement <8 x ptr> poison, ptr %.2886.lcssa.i, i64 0
  %i.zx = insertelement <8 x ptr> %i.zw, ptr %.2883.lcssa.i, i64 1
  %i.zy = insertelement <8 x ptr> %i.zx, ptr %.2860.lcssa.i, i64 2
  %i.zz = insertelement <8 x ptr> %i.zy, ptr %.2857.lcssa.i, i64 3
  %i.aaa = insertelement <8 x ptr> %i.zz, ptr %.2853.lcssa.i, i64 4
  %i.aab = insertelement <8 x ptr> %i.aaa, ptr %.2850.lcssa.i, i64 5
  %i.aac = insertelement <8 x ptr> %i.aab, ptr %.2842.lcssa.i, i64 6
  %i.aad = insertelement <8 x ptr> %i.aac, ptr %.2839.lcssa.i, i64 7
  br label %.preheader1104.i

.preheader1104.i:                                 ; preds = %.preheader1104.i.preheader, %._crit_edge.i
  %.98961243.i = phi ptr [ %.lcssa291, %._crit_edge.i ], [ %.6893.lcssa.i, %.preheader1104.i.preheader ] ; 6 uses
  %.39011242.i = phi i32 [ %i.abd, %._crit_edge.i ], [ %.2900.lcssa.i, %.preheader1104.i.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader1104.i
  %scevgep = getelementptr i8, ptr %.98961243.i, i64 %i.gz
  %i.aae = insertelement <8 x ptr> poison, ptr %.98961243.i, i64 0
  %i.aaf = shufflevector <8 x ptr> %i.aae, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.aag = icmp ult <8 x ptr> %i.aaf, %i.zv
  %i.aah = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.aai = shufflevector <8 x ptr> %i.aah, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.aaj = icmp ult <8 x ptr> %i.aad, %i.aai
  %i.aak = and <8 x i1> %i.aag, %i.aaj
  %i.aal = bitcast <8 x i1> %i.aak to i8
  %.not818 = icmp eq i8 %i.aal, 0
  br i1 %.not818, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %i.aam = getelementptr i8, ptr %.98961243.i, i64 %i.hb ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.aan = shl i64 %index, 5
  %next.gep = getelementptr i8, ptr %.98961243.i, i64 %i.aan
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %.2839.lcssa.i, i64 %index
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %.2842.lcssa.i, i64 %index
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %.2850.lcssa.i, i64 %index
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %.2853.lcssa.i, i64 %index
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %.2857.lcssa.i, i64 %index
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %.2860.lcssa.i, i64 %index
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %.2883.lcssa.i, i64 %index
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %.2886.lcssa.i, i64 %index
  %wide.load = load <8 x float>, ptr %i.aao, align 4, !tbaa !53, !alias.scope !61
  %wide.load327 = load <8 x float>, ptr %i.aap, align 4, !tbaa !53, !alias.scope !64
  %wide.load328 = load <8 x float>, ptr %i.aaq, align 4, !tbaa !53, !alias.scope !66
  %wide.load329 = load <8 x float>, ptr %i.aar, align 4, !tbaa !53, !alias.scope !68
  %wide.load330 = load <8 x float>, ptr %i.aas, align 4, !tbaa !53, !alias.scope !70
  %wide.load331 = load <8 x float>, ptr %i.aat, align 4, !tbaa !53, !alias.scope !72
  %wide.load332 = load <8 x float>, ptr %i.aau, align 4, !tbaa !53, !alias.scope !74
  %wide.load333 = load <8 x float>, ptr %i.aav, align 4, !tbaa !53, !alias.scope !76
  %i.aaw = shufflevector <8 x float> %wide.load, <8 x float> %wide.load327, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aax = shufflevector <8 x float> %wide.load328, <8 x float> %wide.load329, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aay = shufflevector <8 x float> %wide.load330, <8 x float> %wide.load331, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aaz = shufflevector <8 x float> %wide.load332, <8 x float> %wide.load333, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aba = shufflevector <16 x float> %i.aaw, <16 x float> %i.aax, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.abb = shufflevector <16 x float> %i.aay, <16 x float> %i.aaz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x float> %i.aba, <32 x float> %i.abb, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !53, !alias.scope !78, !noalias !80
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.abc = icmp eq i64 %index.next, %n.vec
  br i1 %i.abc, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader1104.i, %middle.block
  %indvars.iv1677.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader1104.i ], [ %n.vec, %middle.block ]
  %.108971241.i.ph = phi ptr [ %.98961243.i, %vector.memcheck ], [ %.98961243.i, %.preheader1104.i ], [ %i.aam, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa291 = phi ptr [ %i.aam, %middle.block ], [ %i.acb, %scalar.ph ]
  %i.abd = add nuw nsw i32 %.39011242.i, 1        ; 2 uses
  %exitcond1682.not.i = icmp eq i32 %i.abd, %i.n
  br i1 %exitcond1682.not.i, label %._crit_edge1244.split.i, label %.preheader1104.i, !llvm.loop !84

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv1677.i = phi i64 [ %indvars.iv.next1678.i, %scalar.ph ], [ %indvars.iv1677.i.ph, %scalar.ph.preheader ] ; 9 uses
  %.108971241.i = phi ptr [ %i.acb, %scalar.ph ], [ %.108971241.i.ph, %scalar.ph.preheader ] ; 9 uses
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %.2839.lcssa.i, i64 %indvars.iv1677.i
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %.2842.lcssa.i, i64 %indvars.iv1677.i
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %.2850.lcssa.i, i64 %indvars.iv1677.i
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %.2853.lcssa.i, i64 %indvars.iv1677.i
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %.2857.lcssa.i, i64 %indvars.iv1677.i
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %.2860.lcssa.i, i64 %indvars.iv1677.i
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %.2883.lcssa.i, i64 %indvars.iv1677.i
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %.2886.lcssa.i, i64 %indvars.iv1677.i
  %i.abm = load float, ptr %i.abe, align 4, !tbaa !53
  store float %i.abm, ptr %.108971241.i, align 4, !tbaa !53
  %i.abn = load float, ptr %i.abf, align 4, !tbaa !53
  %i.abo = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 4
  store float %i.abn, ptr %i.abo, align 4, !tbaa !53
  %i.abp = load float, ptr %i.abg, align 4, !tbaa !53
  %i.abq = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 8
  store float %i.abp, ptr %i.abq, align 4, !tbaa !53
  %i.abr = load float, ptr %i.abh, align 4, !tbaa !53
  %i.abs = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 12
  store float %i.abr, ptr %i.abs, align 4, !tbaa !53
  %i.abt = load float, ptr %i.abi, align 4, !tbaa !53
  %i.abu = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 16
  store float %i.abt, ptr %i.abu, align 4, !tbaa !53
  %i.abv = load float, ptr %i.abj, align 4, !tbaa !53
  %i.abw = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 20
  store float %i.abv, ptr %i.abw, align 4, !tbaa !53
  %i.abx = load float, ptr %i.abk, align 4, !tbaa !53
  %i.aby = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 24
  store float %i.abx, ptr %i.aby, align 4, !tbaa !53
  %i.abz = load float, ptr %i.abl, align 4, !tbaa !53
  %i.aca = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 28
  store float %i.abz, ptr %i.aca, align 4, !tbaa !53
  %i.acb = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 32 ; 2 uses
  %indvars.iv.next1678.i = add nuw nsw i64 %indvars.iv1677.i, 1 ; 2 uses
  %exitcond1681.not.i = icmp eq i64 %indvars.iv.next1678.i, %wide.trip.count.i
  br i1 %exitcond1681.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !85

._crit_edge1244.split.i:                          ; preds = %._crit_edge.i, %.preheader1108.i, %.preheader1105.lr.ph.i
  %indvars.iv.next1684.i = add nuw nsw i64 %indvars.iv1683.i, 8 ; 3 uses
  %i.acc = or disjoint i64 %indvars.iv.next1684.i, 7
  %i.acd = icmp samesign ult i64 %i.acc, %i.gw
  %indvars.iv.next.i = add i32 %indvars.iv.i, %i.gm
  %indvars.iv.next1621.i = add i32 %indvars.iv1620.i, %i.gm
  %indvars.iv.next1625.i = add i32 %indvars.iv1624.i, %i.gm
  %indvars.iv.next1629.i = add i32 %indvars.iv1628.i, %i.gm
  %indvars.iv.next1633.i = add i32 %indvars.iv1632.i, %i.gm
  %indvars.iv.next1637.i = add i32 %indvars.iv1636.i, %i.gm
  %indvars.iv.next1641.i = add i32 %indvars.iv1640.i, %i.gm
  %indvars.iv.next1645.i = add i32 %indvars.iv1644.i, %i.gm
  br i1 %i.acd, label %_ZN4ncnn3MatD2Ev.exit1005.i, label %.preheader1103.loopexit.i, !llvm.loop !86

.preheader1095.loopexit.i:                        ; preds = %._crit_edge1337.split.i
  %i.ace = trunc nuw nsw i64 %indvars.iv.next1737.i to i32
  br label %.preheader1095.i

.preheader1095.i:                                 ; preds = %.preheader1095.loopexit.i, %.preheader1103.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader1103.i ], [ %i.ace, %.preheader1095.loopexit.i ] ; 4 uses
  %i.acf = or disjoint i32 %.1.lcssa.i, 1         ; 3 uses
  %i.acg = icmp slt i32 %i.acf, %i.m
  br i1 %i.acg, label %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i, label %.preheader1087.i

_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i:                ; preds = %.preheader1095.i
  %i.ach = load ptr, ptr %i.o, align 8, !tbaa !18 ; 3 uses
  %i.aci = mul i32 %i.n, %i.j                     ; 5 uses
  %i.acj = load ptr, ptr %i.p, align 8, !tbaa !18, !noalias !87
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.acl = load i64, ptr %i.ack, align 8, !tbaa !20, !noalias !87
  %i.acm = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.acn = load i64, ptr %i.acm, align 8, !tbaa !49, !noalias !87
  %factor.op.mul1403.i = mul i64 %i.acn, %i.acl
  %i.aco = icmp sgt i32 %i.n, 7
  %i.acp = icmp sgt i32 %i.j, 0                   ; 3 uses
  %i.acq = sext i32 %i.j to i64                   ; 16 uses
  %i.acr = shl i32 %i.j, 1                        ; 2 uses
  %i.acs = sext i32 %i.acr to i64                 ; 10 uses
  %i.act = mul i32 %i.j, 3
  %i.acu = sext i32 %i.act to i64                 ; 7 uses
  %i.acv = shl i32 %i.j, 2                        ; 2 uses
  %i.acw = sext i32 %i.acv to i64                 ; 6 uses
  %i.acx = mul nsw i32 %i.j, 5
  %i.acy = sext i32 %i.acx to i64                 ; 2 uses
  %i.acz = mul nsw i32 %i.j, 6
  %i.ada = sext i32 %i.acz to i64                 ; 2 uses
  %i.adb = mul nsw i32 %i.j, 7
  %i.adc = sext i32 %i.adb to i64                 ; 2 uses
  %i.add = shl i32 %i.j, 3
  %i.ade = sext i32 %i.add to i64                 ; 3 uses
  %i.adf = icmp slt i32 %i.j, 1
  %i.adg = add i32 %i.n, -8                       ; 2 uses
  %i.adh = lshr i32 %i.adg, 1
  %i.adi = and i32 %i.adh, 2147483644
  %narrow1838.i = add nuw i32 %i.adi, 4
  %i.adj = zext i32 %narrow1838.i to i64
  %i.adk = mul nsw i64 %i.adj, %i.ade
  %scevgep1741.i = getelementptr i8, ptr %i.ach, i64 %i.adk ; 2 uses
  %i.adl = mul i32 %i.aci, %.1.lcssa.i
  %i.adm = shl i32 %i.aci, 1                      ; 2 uses
  %i.adn = mul i32 %i.acf, %i.aci
  %i.ado = and i32 %i.adg, -8
  %i.adp = add i32 %i.ado, 8                      ; 4 uses
  %i.adq = add i32 %i.n, -4
  %i.adr = zext nneg i32 %.1.lcssa.i to i64
  %i.ads = sext i32 %i.m to i64
  %i.adt = or disjoint i32 %i.adp, 3
  %i.adu = icmp slt i32 %i.adt, %i.n
  %wide.trip.count1752.i = zext i32 %i.j to i64   ; 19 uses
  %i.adv = shl nuw nsw i64 %wide.trip.count1752.i, 3
  %i.adw = shl nuw nsw i64 %wide.trip.count1752.i, 2 ; 5 uses
  %i.adx = shl nuw nsw i64 %wide.trip.count1752.i, 4
  %i.ady = shl nuw nsw i64 %i.acq, 2              ; 3 uses
  %i.adz = add nuw nsw i64 %i.ady, %i.adw         ; 2 uses
  %i.aea = shl nsw i64 %i.acs, 2
  %i.aeb = shl nuw nsw i64 %wide.trip.count1752.i, 5
  %i.aec = shl nuw nsw i64 %i.acu, 2              ; 3 uses
  %i.aed = shl nuw nsw i64 %wide.trip.count1752.i, 2 ; 5 uses
  %i.aee = add nuw nsw i64 %i.aec, %i.aed         ; 2 uses
  %i.aef = shl nsw i64 %i.acw, 2
  %i.aeg = add i32 %i.n, -4
  %i.aeh = shl nuw nsw i64 %i.acs, 2              ; 3 uses
  %i.aei = add nuw nsw i64 %i.aeh, %i.aed         ; 2 uses
  %i.aej = shl nuw nsw i64 %i.acq, 2              ; 3 uses
  %i.aek = add nuw nsw i64 %i.aej, %i.aed         ; 2 uses
  %min.iters.check597 = icmp ult i32 %i.j, 16
  %stride.check564 = icmp slt i32 %i.acv, 0
  %n.vec599 = and i64 %wide.trip.count1752.i, 2147483640 ; 4 uses
  %i.ael = shl nuw nsw i64 %n.vec599, 5
  %cmp.n614 = icmp eq i64 %n.vec599, %wide.trip.count1752.i
  %min.iters.check517 = icmp ult i32 %i.j, 16
  %stride.check504 = icmp slt i32 %i.acr, 0
  %n.vec519 = and i64 %wide.trip.count1752.i, 2147483640 ; 4 uses
  %i.aem = shl nuw nsw i64 %n.vec519, 4
  %cmp.n530 = icmp eq i64 %n.vec519, %wide.trip.count1752.i
  %xtraiter888 = and i64 %wide.trip.count1752.i, 1
  %lcmp.mod889.not = icmp eq i64 %xtraiter888, 0
  %i.aen = add nsw i64 %wide.trip.count1752.i, -1
  %min.iters.check466 = icmp ult i32 %i.j, 6
  %n.vec468 = and i64 %wide.trip.count1752.i, 2147483644 ; 4 uses
  %i.aeo = shl nuw nsw i64 %n.vec468, 3
  %cmp.n481 = icmp eq i64 %n.vec468, %wide.trip.count1752.i
  %xtraiter890 = and i64 %wide.trip.count1752.i, 3 ; 2 uses
  %lcmp.mod891.not = icmp eq i64 %xtraiter890, 0
  br label %_ZN4ncnn3MatD2Ev.exit1003.i

_ZN4ncnn3MatD2Ev.exit1004.i:                      ; preds = %._crit_edge1337.split.i, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i
  %indvars.iv1736.i = phi i64 [ %i.il, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1737.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1734.i = phi i32 [ %i.im, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1735.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1699.i = phi i32 [ %i.ih, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1700.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1695.i = phi i32 [ %i.ig, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1696.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1691.i = phi i32 [ %i.ie, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1692.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1687.i = phi i32 [ %i.ib, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1688.i, %._crit_edge1337.split.i ] ; 2 uses
  %i.aep = sext i32 %indvars.iv1687.i to i64
  %i.aeq = shl nsw i64 %i.aep, 2
  %scevgep1689.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.aeq ; 2 uses
  %i.aer = sext i32 %indvars.iv1691.i to i64
  %i.aes = shl nsw i64 %i.aer, 2
  %scevgep1693.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.aes ; 2 uses
  %i.aet = sext i32 %indvars.iv1695.i to i64
  %i.aeu = shl nsw i64 %i.aet, 2
  %scevgep1697.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.aeu ; 2 uses
  %i.aev = sext i32 %indvars.iv1699.i to i64
  %i.aew = shl nsw i64 %i.aev, 2
  %scevgep1701.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.aew ; 2 uses
  %i.aex = trunc nuw i64 %indvars.iv1736.i to i32 ; 5 uses
  %i.aey = mul i32 %i.hg, %i.aex
  %i.aez = sext i32 %i.aey to i64
  %i.afa = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.aez ; 2 uses
  %i.afb = add i32 %i.aex, 1
  %i.afc = mul i32 %i.afb, %i.hg
  %i.afd = sext i32 %i.afc to i64
  %i.afe = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.afd ; 2 uses
  %i.aff = add i32 %i.aex, 2
  %i.afg = mul i32 %i.aff, %i.hg
  %i.afh = sext i32 %i.afg to i64
  %i.afi = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.afh ; 2 uses
  %i.afj = mul i32 %indvars.iv1734.i, %i.hg
  %i.afk = sext i32 %i.afj to i64
  %i.afl = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.afk ; 2 uses
  %i.afm = lshr i32 %i.aex, 3
  %i.afn = lshr i32 %i.aex, 2
  %i.afo = and i32 %i.afn, 1
  %i.afp = add nuw nsw i32 %i.afo, %i.afm
  %i.afq = zext nneg i32 %i.afp to i64
  %.reass1341.i = mul i64 %factor.op.mul1340.i, %i.afq
  %i.afr = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.reass1341.i ; 4 uses
  br i1 %i.hm, label %.preheader1099.lr.ph.i, label %.preheader1102.i

.preheader1099.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1004.i
  br i1 %i.hn, label %.preheader1099.us.i, label %.preheader1102.thread.i

.preheader1099.us.i:                              ; preds = %.preheader1099.lr.ph.i, %._crit_edge1255.us.i
  %.09211262.us.i = phi i32 [ %i.ajo, %._crit_edge1255.us.i ], [ 0, %.preheader1099.lr.ph.i ]
  %.09251261.us.i = phi ptr [ %i.ajj, %._crit_edge1255.us.i ], [ %i.afr, %.preheader1099.lr.ph.i ]
  %.09361260.us.i = phi ptr [ %i.ajn, %._crit_edge1255.us.i ], [ %i.afl, %.preheader1099.lr.ph.i ] ; 2 uses
  %.09391259.us.i = phi ptr [ %i.ajm, %._crit_edge1255.us.i ], [ %i.afi, %.preheader1099.lr.ph.i ] ; 2 uses
  %.09421258.us.i = phi ptr [ %i.ajl, %._crit_edge1255.us.i ], [ %i.afe, %.preheader1099.lr.ph.i ] ; 2 uses
  %.09451257.us.i = phi ptr [ %i.ajk, %._crit_edge1255.us.i ], [ %i.afa, %.preheader1099.lr.ph.i ] ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.preheader1099.us.i
  %indvars.iv1703.i = phi i64 [ 0, %.preheader1099.us.i ], [ %indvars.iv.next1704.i, %bb.al ] ; 5 uses
  %.19261253.us.i = phi ptr [ %.09251261.us.i, %.preheader1099.us.i ], [ %i.ajj, %bb.al ] ; 33 uses
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %.09451257.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %.09421258.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %.09391259.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %.09361260.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afw = load float, ptr %i.afs, align 4, !tbaa !53
  store float %i.afw, ptr %.19261253.us.i, align 4, !tbaa !53
  %i.afx = load float, ptr %i.aft, align 4, !tbaa !53
  %i.afy = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 4
  store float %i.afx, ptr %i.afy, align 4, !tbaa !53
  %i.afz = load float, ptr %i.afu, align 4, !tbaa !53
  %i.aga = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 8
  store float %i.afz, ptr %i.aga, align 4, !tbaa !53
  %i.agb = load float, ptr %i.afv, align 4, !tbaa !53
  %i.agc = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 12
  store float %i.agb, ptr %i.agc, align 4, !tbaa !53
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.ho ; 2 uses
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.ho ; 2 uses
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %i.ho ; 2 uses
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %i.ho ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 16
  %i.agi = load float, ptr %i.agd, align 4, !tbaa !53
  store float %i.agi, ptr %i.agh, align 4, !tbaa !53
  %i.agj = load float, ptr %i.age, align 4, !tbaa !53
  %i.agk = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 20
  store float %i.agj, ptr %i.agk, align 4, !tbaa !53
  %i.agl = load float, ptr %i.agf, align 4, !tbaa !53
  %i.agm = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 24
  store float %i.agl, ptr %i.agm, align 4, !tbaa !53
  %i.agn = load float, ptr %i.agg, align 4, !tbaa !53
  %i.ago = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 28
  store float %i.agn, ptr %i.ago, align 4, !tbaa !53
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.agd, i64 %i.ho ; 2 uses
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.age, i64 %i.ho ; 2 uses
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %i.ho ; 2 uses
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %i.ho ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 32
  %i.agu = load float, ptr %i.agp, align 4, !tbaa !53
  store float %i.agu, ptr %i.agt, align 4, !tbaa !53
  %i.agv = load float, ptr %i.agq, align 4, !tbaa !53
  %i.agw = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 36
  store float %i.agv, ptr %i.agw, align 4, !tbaa !53
  %i.agx = load float, ptr %i.agr, align 4, !tbaa !53
  %i.agy = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 40
  store float %i.agx, ptr %i.agy, align 4, !tbaa !53
  %i.agz = load float, ptr %i.ags, align 4, !tbaa !53
  %i.aha = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 44
  store float %i.agz, ptr %i.aha, align 4, !tbaa !53
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %i.ho ; 2 uses
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.agq, i64 %i.ho ; 2 uses
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %i.agr, i64 %i.ho ; 2 uses
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.ags, i64 %i.ho ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 48
  %i.ahg = load float, ptr %i.ahb, align 4, !tbaa !53
  store float %i.ahg, ptr %i.ahf, align 4, !tbaa !53
  %i.ahh = load float, ptr %i.ahc, align 4, !tbaa !53
  %i.ahi = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 52
  store float %i.ahh, ptr %i.ahi, align 4, !tbaa !53
  %i.ahj = load float, ptr %i.ahd, align 4, !tbaa !53
  %i.ahk = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 56
  store float %i.ahj, ptr %i.ahk, align 4, !tbaa !53
  %i.ahl = load float, ptr %i.ahe, align 4, !tbaa !53
  %i.ahm = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 60
  store float %i.ahl, ptr %i.ahm, align 4, !tbaa !53
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.ahb, i64 %i.ho ; 2 uses
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %i.ho ; 2 uses
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %i.ho ; 2 uses
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %i.ho ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 64
  %i.ahs = load float, ptr %i.ahn, align 4, !tbaa !53
  store float %i.ahs, ptr %i.ahr, align 4, !tbaa !53
  %i.aht = load float, ptr %i.aho, align 4, !tbaa !53
  %i.ahu = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 68
  store float %i.aht, ptr %i.ahu, align 4, !tbaa !53
  %i.ahv = load float, ptr %i.ahp, align 4, !tbaa !53
  %i.ahw = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 72
  store float %i.ahv, ptr %i.ahw, align 4, !tbaa !53
  %i.ahx = load float, ptr %i.ahq, align 4, !tbaa !53
  %i.ahy = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 76
  store float %i.ahx, ptr %i.ahy, align 4, !tbaa !53
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.ahn, i64 %i.ho ; 2 uses
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %i.ho ; 2 uses
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.ho ; 2 uses
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.ahq, i64 %i.ho ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 80
  %i.aie = load float, ptr %i.ahz, align 4, !tbaa !53
  store float %i.aie, ptr %i.aid, align 4, !tbaa !53
  %i.aif = load float, ptr %i.aia, align 4, !tbaa !53
  %i.aig = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 84
  store float %i.aif, ptr %i.aig, align 4, !tbaa !53
  %i.aih = load float, ptr %i.aib, align 4, !tbaa !53
  %i.aii = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 88
  store float %i.aih, ptr %i.aii, align 4, !tbaa !53
  %i.aij = load float, ptr %i.aic, align 4, !tbaa !53
  %i.aik = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 92
  store float %i.aij, ptr %i.aik, align 4, !tbaa !53
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %i.ho ; 2 uses
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %i.ho ; 2 uses
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.aib, i64 %i.ho ; 2 uses
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.aic, i64 %i.ho ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnn21Convolution1D_x86_avx15create_pipelineERKNS_6OptionE:bb.a
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr %.29381316.us.i, i64 %i.hu ; 2 uses
  %i.apd = add nuw nsw i32 %.29231318.us.i, 2     ; 3 uses
  %i.ape = or disjoint i32 %i.apd, 1
  %i.apf = icmp slt i32 %i.ape, %i.n
  br i1 %i.apf, label %.preheader1097.us.i, label %.preheader1100.i, !llvm.loop !116

.preheader1100.i:                                 ; preds = %._crit_edge1311.us.i, %.preheader1101.i
  %.2947.lcssa.i = phi ptr [ %.1946.lcssa.i, %.preheader1101.i ], [ %i.aoz, %._crit_edge1311.us.i ] ; 6 uses
  %.2944.lcssa.i = phi ptr [ %.1943.lcssa.i, %.preheader1101.i ], [ %i.apa, %._crit_edge1311.us.i ] ; 6 uses
  %.2941.lcssa.i = phi ptr [ %.1940.lcssa.i, %.preheader1101.i ], [ %i.apb, %._crit_edge1311.us.i ] ; 6 uses
  %.2938.lcssa.i = phi ptr [ %.1937.lcssa.i, %.preheader1101.i ], [ %i.apc, %._crit_edge1311.us.i ] ; 6 uses
  %.6931.lcssa.i = phi ptr [ %.3928.lcssa.i, %.preheader1101.i ], [ %.lcssa255, %._crit_edge1311.us.i ]
  %.2923.lcssa.i = phi i32 [ %.1922.lcssa.i, %.preheader1101.i ], [ %i.apd, %._crit_edge1311.us.i ] ; 2 uses
  %i.apg = icmp sge i32 %.2923.lcssa.i, %i.n
  %brmerge1467.i = or i1 %i.hv, %i.apg
  br i1 %brmerge1467.i, label %._crit_edge1337.split.i, label %.preheader1096.i.preheader

.preheader1096.i.preheader:                       ; preds = %.preheader1100.i
  %scevgep337 = getelementptr i8, ptr %.2938.lcssa.i, i64 %i.ir
  %scevgep338 = getelementptr i8, ptr %.2941.lcssa.i, i64 %i.ir
  %scevgep339 = getelementptr i8, ptr %.2944.lcssa.i, i64 %i.ir
  %scevgep340 = getelementptr i8, ptr %.2947.lcssa.i, i64 %i.ir
  br label %.preheader1096.i

.preheader1096.i:                                 ; preds = %.preheader1096.i.preheader, %._crit_edge1333.i
  %.39241336.i = phi i32 [ %i.aqd, %._crit_edge1333.i ], [ %.2923.lcssa.i, %.preheader1096.i.preheader ]
  %.99341335.i = phi ptr [ %.lcssa261, %._crit_edge1333.i ], [ %.6931.lcssa.i, %.preheader1096.i.preheader ] ; 9 uses
  br i1 %min.iters.check357, label %scalar.ph356.preheader, label %vector.memcheck335

vector.memcheck335:                               ; preds = %.preheader1096.i
  %scevgep336 = getelementptr i8, ptr %.99341335.i, i64 %i.iq ; 4 uses
  %bound0341 = icmp ult ptr %.99341335.i, %scevgep337
  %bound1342 = icmp ult ptr %.2938.lcssa.i, %scevgep336
  %found.conflict343 = and i1 %bound0341, %bound1342
  %bound0344 = icmp ult ptr %.99341335.i, %scevgep338
  %bound1345 = icmp ult ptr %.2941.lcssa.i, %scevgep336
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx347 = or i1 %found.conflict343, %found.conflict346
  %bound0348 = icmp ult ptr %.99341335.i, %scevgep339
  %bound1349 = icmp ult ptr %.2944.lcssa.i, %scevgep336
  %found.conflict350 = and i1 %bound0348, %bound1349
  %conflict.rdx351 = or i1 %conflict.rdx347, %found.conflict350
  %bound0352 = icmp ult ptr %.99341335.i, %scevgep340
  %bound1353 = icmp ult ptr %.2947.lcssa.i, %scevgep336
  %found.conflict354 = and i1 %bound0352, %bound1353
  %conflict.rdx355 = or i1 %conflict.rdx351, %found.conflict354
  br i1 %conflict.rdx355, label %scalar.ph356.preheader, label %vector.ph358

vector.ph358:                                     ; preds = %vector.memcheck335
  %i.aph = getelementptr i8, ptr %.99341335.i, i64 %i.ix ; 2 uses
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph358
  %index361 = phi i64 [ 0, %vector.ph358 ], [ %index.next368, %vector.body360 ] ; 6 uses
  %i.api = shl i64 %index361, 4
  %next.gep362 = getelementptr i8, ptr %.99341335.i, i64 %i.api
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr %.2947.lcssa.i, i64 %index361
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %.2944.lcssa.i, i64 %index361
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr %.2941.lcssa.i, i64 %index361
  %i.apm = getelementptr inbounds nuw [4 x i8], ptr %.2938.lcssa.i, i64 %index361
  %wide.load363 = load <8 x float>, ptr %i.apj, align 4, !tbaa !53, !alias.scope !117
  %wide.load364 = load <8 x float>, ptr %i.apk, align 4, !tbaa !53, !alias.scope !120
  %wide.load365 = load <8 x float>, ptr %i.apl, align 4, !tbaa !53, !alias.scope !122
  %wide.load366 = load <8 x float>, ptr %i.apm, align 4, !tbaa !53, !alias.scope !124
  %i.apn = shufflevector <8 x float> %wide.load363, <8 x float> %wide.load364, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apo = shufflevector <8 x float> %wide.load365, <8 x float> %wide.load366, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec367 = shufflevector <16 x float> %i.apn, <16 x float> %i.apo, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec367, ptr %next.gep362, align 4, !tbaa !53, !alias.scope !126, !noalias !128
  %index.next368 = add nuw i64 %index361, 8       ; 2 uses
  %i.app = icmp eq i64 %index.next368, %n.vec359
  br i1 %i.app, label %middle.block369, label %vector.body360, !llvm.loop !129

middle.block369:                                  ; preds = %vector.body360
  br i1 %cmp.n370, label %._crit_edge1333.i, label %scalar.ph356.preheader

scalar.ph356.preheader:                           ; preds = %vector.memcheck335, %.preheader1096.i, %middle.block369
  %indvars.iv1728.i.ph = phi i64 [ 0, %vector.memcheck335 ], [ 0, %.preheader1096.i ], [ %n.vec359, %middle.block369 ] ; 7 uses
  %.109351331.i.ph = phi ptr [ %.99341335.i, %vector.memcheck335 ], [ %.99341335.i, %.preheader1096.i ], [ %i.aph, %middle.block369 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph356.prol.loopexit, label %scalar.ph356.prol

scalar.ph356.prol:                                ; preds = %scalar.ph356.preheader
  %i.apq = getelementptr inbounds nuw [4 x i8], ptr %.2947.lcssa.i, i64 %indvars.iv1728.i.ph
  %i.apr = getelementptr inbounds nuw [4 x i8], ptr %.2944.lcssa.i, i64 %indvars.iv1728.i.ph
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr %.2941.lcssa.i, i64 %indvars.iv1728.i.ph
  %i.apt = getelementptr inbounds nuw [4 x i8], ptr %.2938.lcssa.i, i64 %indvars.iv1728.i.ph
  %i.apu = load float, ptr %i.apq, align 4, !tbaa !53
  store float %i.apu, ptr %.109351331.i.ph, align 4, !tbaa !53
  %i.apv = load float, ptr %i.apr, align 4, !tbaa !53
  %i.apw = getelementptr inbounds nuw i8, ptr %.109351331.i.ph, i64 4
  store float %i.apv, ptr %i.apw, align 4, !tbaa !53
  %i.apx = load float, ptr %i.aps, align 4, !tbaa !53
  %i.apy = getelementptr inbounds nuw i8, ptr %.109351331.i.ph, i64 8
  store float %i.apx, ptr %i.apy, align 4, !tbaa !53
  %i.apz = load float, ptr %i.apt, align 4, !tbaa !53
  %i.aqa = getelementptr inbounds nuw i8, ptr %.109351331.i.ph, i64 12
  store float %i.apz, ptr %i.aqa, align 4, !tbaa !53
  %i.aqb = getelementptr inbounds nuw i8, ptr %.109351331.i.ph, i64 16 ; 2 uses
  %indvars.iv.next1729.i.prol = or disjoint i64 %indvars.iv1728.i.ph, 1
  br label %scalar.ph356.prol.loopexit

scalar.ph356.prol.loopexit:                       ; preds = %scalar.ph356.prol, %scalar.ph356.preheader
  %.lcssa857.unr = phi ptr [ poison, %scalar.ph356.preheader ], [ %i.aqb, %scalar.ph356.prol ]
  %indvars.iv1728.i.unr = phi i64 [ %indvars.iv1728.i.ph, %scalar.ph356.preheader ], [ %indvars.iv.next1729.i.prol, %scalar.ph356.prol ]
  %.109351331.i.unr = phi ptr [ %.109351331.i.ph, %scalar.ph356.preheader ], [ %i.aqb, %scalar.ph356.prol ]
  %i.aqc = icmp eq i64 %indvars.iv1728.i.ph, %i.iy
  br i1 %i.aqc, label %._crit_edge1333.i, label %scalar.ph356

._crit_edge1333.i:                                ; preds = %scalar.ph356.prol.loopexit, %scalar.ph356, %middle.block369
  %.lcssa261 = phi ptr [ %i.aph, %middle.block369 ], [ %.lcssa857.unr, %scalar.ph356.prol.loopexit ], [ %i.arb, %scalar.ph356 ]
  %i.aqd = add nuw nsw i32 %.39241336.i, 1        ; 2 uses
  %exitcond1733.not.i = icmp eq i32 %i.aqd, %i.n
  br i1 %exitcond1733.not.i, label %._crit_edge1337.split.i, label %.preheader1096.i, !llvm.loop !130

scalar.ph356:                                     ; preds = %scalar.ph356.prol.loopexit, %scalar.ph356
  %indvars.iv1728.i = phi i64 [ %indvars.iv.next1729.i.1, %scalar.ph356 ], [ %indvars.iv1728.i.unr, %scalar.ph356.prol.loopexit ] ; 6 uses
  %.109351331.i = phi ptr [ %i.arb, %scalar.ph356 ], [ %.109351331.i.unr, %scalar.ph356.prol.loopexit ] ; 9 uses
  %i.aqe = getelementptr inbounds nuw [4 x i8], ptr %.2947.lcssa.i, i64 %indvars.iv1728.i
  %i.aqf = getelementptr inbounds nuw [4 x i8], ptr %.2944.lcssa.i, i64 %indvars.iv1728.i
  %i.aqg = getelementptr inbounds nuw [4 x i8], ptr %.2941.lcssa.i, i64 %indvars.iv1728.i
  %i.aqh = getelementptr inbounds nuw [4 x i8], ptr %.2938.lcssa.i, i64 %indvars.iv1728.i
  %i.aqi = load float, ptr %i.aqe, align 4, !tbaa !53
  store float %i.aqi, ptr %.109351331.i, align 4, !tbaa !53
  %i.aqj = load float, ptr %i.aqf, align 4, !tbaa !53
  %i.aqk = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 4
  store float %i.aqj, ptr %i.aqk, align 4, !tbaa !53
  %i.aql = load float, ptr %i.aqg, align 4, !tbaa !53
  %i.aqm = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 8
  store float %i.aql, ptr %i.aqm, align 4, !tbaa !53
  %i.aqn = load float, ptr %i.aqh, align 4, !tbaa !53
  %i.aqo = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 12
  store float %i.aqn, ptr %i.aqo, align 4, !tbaa !53
  %i.aqp = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 16
  %indvars.iv.next1729.i = add nuw nsw i64 %indvars.iv1728.i, 1 ; 4 uses
  %i.aqq = getelementptr inbounds nuw [4 x i8], ptr %.2947.lcssa.i, i64 %indvars.iv.next1729.i
  %i.aqr = getelementptr inbounds nuw [4 x i8], ptr %.2944.lcssa.i, i64 %indvars.iv.next1729.i
  %i.aqs = getelementptr inbounds nuw [4 x i8], ptr %.2941.lcssa.i, i64 %indvars.iv.next1729.i
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %.2938.lcssa.i, i64 %indvars.iv.next1729.i
  %i.aqu = load float, ptr %i.aqq, align 4, !tbaa !53
  store float %i.aqu, ptr %i.aqp, align 4, !tbaa !53
  %i.aqv = load float, ptr %i.aqr, align 4, !tbaa !53
  %i.aqw = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 20
  store float %i.aqv, ptr %i.aqw, align 4, !tbaa !53
  %i.aqx = load float, ptr %i.aqs, align 4, !tbaa !53
  %i.aqy = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 24
  store float %i.aqx, ptr %i.aqy, align 4, !tbaa !53
  %i.aqz = load float, ptr %i.aqt, align 4, !tbaa !53
  %i.ara = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 28
  store float %i.aqz, ptr %i.ara, align 4, !tbaa !53
  %i.arb = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 32 ; 2 uses
  %indvars.iv.next1729.i.1 = add nuw nsw i64 %indvars.iv1728.i, 2 ; 2 uses
  %exitcond1732.not.i.1 = icmp eq i64 %indvars.iv.next1729.i.1, %wide.trip.count1706.i
  br i1 %exitcond1732.not.i.1, label %._crit_edge1333.i, label %scalar.ph356, !llvm.loop !131

._crit_edge1337.split.i:                          ; preds = %._crit_edge1333.i, %.preheader1100.i, %.preheader1097.lr.ph.i
  %indvars.iv.next1737.i = add nuw nsw i64 %indvars.iv1736.i, 4 ; 3 uses
  %i.arc = icmp slt i64 %indvars.iv.next1737.i, %invariant.op.i
  %indvars.iv.next1688.i = add i32 %indvars.iv1687.i, %i.ic
  %indvars.iv.next1692.i = add i32 %indvars.iv1691.i, %i.ic
  %indvars.iv.next1696.i = add i32 %indvars.iv1695.i, %i.ic
  %indvars.iv.next1700.i = add i32 %indvars.iv1699.i, %i.ic
  %indvars.iv.next1735.i = add i32 %indvars.iv1734.i, 4
  br i1 %i.arc, label %_ZN4ncnn3MatD2Ev.exit1004.i, label %.preheader1095.loopexit.i, !llvm.loop !132

.preheader1087.loopexit.i:                        ; preds = %._crit_edge1400.split.i
  %i.ard = trunc nsw i64 %indvars.iv.next1776.i to i32
  br label %.preheader1087.i

.preheader1087.i:                                 ; preds = %.preheader1087.loopexit.i, %.preheader1095.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1095.i ], [ %i.ard, %.preheader1087.loopexit.i ] ; 4 uses
  %i.are = icmp slt i32 %.2.lcssa.i, %i.m
  br i1 %i.are, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1087.i
  %i.arf = load ptr, ptr %i.o, align 8, !tbaa !18 ; 18 uses
  %i.arg = mul i32 %i.n, %i.j                     ; 3 uses
  %i.arh = load ptr, ptr %i.p, align 8, !tbaa !18, !noalias !133
  %i.ari = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.arj = load i64, ptr %i.ari, align 8, !tbaa !20, !noalias !133
  %i.ark = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.arl = load i64, ptr %i.ark, align 8, !tbaa !49, !noalias !133
  %factor.op.mul1462.i = mul i64 %i.arl, %i.arj
  %i.arm = icmp sgt i32 %i.n, 7
  %i.arn = icmp sgt i32 %i.j, 0                   ; 3 uses
  %i.aro = sext i32 %i.j to i64                   ; 43 uses
  %i.arp = shl i32 %i.j, 3                        ; 2 uses
  %i.arq = sext i32 %i.arp to i64                 ; 3 uses
  %i.arr = shl i32 %i.j, 2
  %i.ars = sext i32 %i.arr to i64                 ; 3 uses
  %i.art = shl i32 %i.j, 1
  %i.aru = sext i32 %i.art to i64                 ; 2 uses
  %i.arv = icmp slt i32 %i.j, 1
  %i.arw = add i32 %i.n, -8                       ; 3 uses
  %i.arx = lshr i32 %i.arw, 1
  %i.ary = and i32 %i.arx, 2147483644
  %narrow1839.i = add nuw i32 %i.ary, 4
  %i.arz = zext i32 %narrow1839.i to i64
  %i.asa = mul nsw i64 %i.arz, %i.arq
  %scevgep1778.i = getelementptr i8, ptr %i.arf, i64 %i.asa
  %i.asb = mul i32 %i.arg, %.2.lcssa.i
  %i.asc = and i32 %i.arw, -8
  %i.asd = add i32 %i.asc, 8                      ; 4 uses
  %i.ase = add i32 %i.n, -4
  %i.asf = sext i32 %.2.lcssa.i to i64
  %wide.trip.count1811.i = sext i32 %i.m to i64
  %i.asg = or disjoint i32 %i.asd, 3
  %i.ash = icmp slt i32 %i.asg, %i.n
  %wide.trip.count1786.i = zext i32 %i.j to i64   ; 26 uses
  %i.asi = shl nuw nsw i64 %wide.trip.count1786.i, 3
  %i.asj = shl nuw nsw i64 %i.aro, 2              ; 2 uses
  %i.ask = shl nuw nsw i64 %wide.trip.count1786.i, 2 ; 6 uses
  %i.asl = shl nsw i64 %i.aru, 2
  %i.asm = shl nuw nsw i64 %wide.trip.count1786.i, 4
  %i.asn = mul nsw i64 %i.aro, 12                 ; 2 uses
  %i.aso = shl nsw i64 %i.ars, 2
  %i.asp = add i32 %i.n, -4
  %i.asq = shl nsw i64 %i.aro, 3                  ; 2 uses
  %i.asr = shl nuw nsw i64 %i.aro, 2              ; 2 uses
  %i.ass = shl nuw nsw i64 %wide.trip.count1786.i, 5
  %i.ast = mul nsw i64 %i.aro, 28                 ; 2 uses
  %scevgep725 = getelementptr i8, ptr %i.arf, i64 %i.ast
  %i.asu = mul i32 %.2.lcssa.i, %i.j
  %i.asv = mul i32 %i.asu, %i.n
  %i.asw = mul i32 %i.j, %i.n
  %i.asx = lshr i32 %i.arw, 3
  %i.asy = zext nneg i32 %i.asx to i64
  %i.asz = mul nsw i64 %i.asy, %i.arq
  %i.ata = shl nsw i64 %i.asz, 2                  ; 8 uses
  %i.atb = shl nuw nsw i64 %wide.trip.count1786.i, 2 ; 8 uses
  %i.atc = getelementptr i8, ptr %i.arf, i64 %i.ata
  %i.atd = getelementptr i8, ptr %i.atc, i64 %i.ast
  %scevgep727 = getelementptr i8, ptr %i.atd, i64 %i.atb
  %i.ate = mul nsw i64 %i.aro, 24                 ; 2 uses
  %scevgep729 = getelementptr i8, ptr %i.arf, i64 %i.ate
  %i.atf = getelementptr i8, ptr %i.arf, i64 %i.ata
  %i.atg = getelementptr i8, ptr %i.atf, i64 %i.ate
  %scevgep731 = getelementptr i8, ptr %i.atg, i64 %i.atb
  %i.ath = mul nsw i64 %i.aro, 20                 ; 2 uses
  %scevgep733 = getelementptr i8, ptr %i.arf, i64 %i.ath
  %i.ati = getelementptr i8, ptr %i.arf, i64 %i.ata
  %i.atj = getelementptr i8, ptr %i.ati, i64 %i.ath
  %scevgep735 = getelementptr i8, ptr %i.atj, i64 %i.atb
  %i.atk = shl nsw i64 %i.aro, 4                  ; 2 uses
  %scevgep737 = getelementptr i8, ptr %i.arf, i64 %i.atk
  %i.atl = getelementptr i8, ptr %i.arf, i64 %i.ata
  %i.atm = getelementptr i8, ptr %i.atl, i64 %i.atk
  %scevgep739 = getelementptr i8, ptr %i.atm, i64 %i.atb
  %i.atn = mul nsw i64 %i.aro, 12                 ; 2 uses
  %scevgep741 = getelementptr i8, ptr %i.arf, i64 %i.atn
  %i.ato = getelementptr i8, ptr %i.arf, i64 %i.ata
  %i.atp = getelementptr i8, ptr %i.ato, i64 %i.atn
  %scevgep743 = getelementptr i8, ptr %i.atp, i64 %i.atb
  %i.atq = shl nsw i64 %i.aro, 3                  ; 2 uses
  %scevgep745 = getelementptr i8, ptr %i.arf, i64 %i.atq
  %i.atr = getelementptr i8, ptr %i.arf, i64 %i.ata
  %i.ats = getelementptr i8, ptr %i.atr, i64 %i.atq
  %scevgep747 = getelementptr i8, ptr %i.ats, i64 %i.atb
  %i.att = shl nuw nsw i64 %i.aro, 2              ; 2 uses
  %scevgep749 = getelementptr i8, ptr %i.arf, i64 %i.att
  %i.atu = getelementptr i8, ptr %i.arf, i64 %i.ata
  %i.atv = getelementptr i8, ptr %i.atu, i64 %i.att
  %scevgep751 = getelementptr i8, ptr %i.atv, i64 %i.atb
  %i.atw = getelementptr i8, ptr %i.arf, i64 %i.ata
  %scevgep754 = getelementptr i8, ptr %i.atw, i64 %i.atb
  %min.iters.check796 = icmp ult i32 %i.j, 16
  %stride.check763 = icmp slt i32 %i.arp, 0
  %n.vec798 = and i64 %wide.trip.count1786.i, 2147483640 ; 4 uses
  %i.atx = shl nuw nsw i64 %n.vec798, 5
  %cmp.n813 = icmp eq i64 %n.vec798, %wide.trip.count1786.i
  %min.iters.check707 = icmp ult i32 %i.j, 8
  %n.vec709 = and i64 %wide.trip.count1786.i, 2147483640 ; 4 uses
  %i.aty = shl nuw nsw i64 %n.vec709, 4
  %cmp.n720 = icmp eq i64 %n.vec709, %wide.trip.count1786.i
  %xtraiter892 = and i64 %wide.trip.count1786.i, 1
  %lcmp.mod893.not = icmp eq i64 %xtraiter892, 0
  %i.atz = add nsw i64 %wide.trip.count1786.i, -1
  %min.iters.check660 = icmp ult i32 %i.j, 6
  %n.vec662 = and i64 %wide.trip.count1786.i, 2147483644 ; 4 uses
  %i.aua = shl nuw nsw i64 %n.vec662, 3
  %cmp.n675 = icmp eq i64 %n.vec662, %wide.trip.count1786.i
  %xtraiter895 = and i64 %wide.trip.count1786.i, 3 ; 2 uses
  %lcmp.mod896.not = icmp eq i64 %xtraiter895, 0
  %min.iters.check621 = icmp ult i32 %i.j, 8
  %min.iters.check622 = icmp ult i32 %i.j, 32
  %i.aub = and i64 %wide.trip.count1786.i, 24
  %n.vec624 = and i64 %wide.trip.count1786.i, 2147483616 ; 5 uses
  %i.auc = shl nuw nsw i64 %n.vec624, 2
  %cmp.n634 = icmp eq i64 %n.vec624, %wide.trip.count1786.i
  %min.epilog.iters.check = icmp eq i64 %i.aub, 0
  %n.vec636 = and i64 %wide.trip.count1786.i, 2147483640 ; 4 uses
  %i.aud = shl nuw nsw i64 %n.vec636, 2
  %cmp.n641 = icmp eq i64 %n.vec636, %wide.trip.count1786.i
  %xtraiter898 = and i64 %wide.trip.count1786.i, 7 ; 2 uses
  %lcmp.mod899.not = icmp eq i64 %xtraiter898, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit1003.i:                      ; preds = %._crit_edge1400.split.i, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i
  %indvars.iv1775.i = phi i64 [ %i.adr, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1776.i, %._crit_edge1400.split.i ] ; 2 uses
  %indvars.iv1746.i = phi i32 [ %i.adn, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1747.i, %._crit_edge1400.split.i ] ; 2 uses
  %indvars.iv1742.i = phi i32 [ %i.adl, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1743.i, %._crit_edge1400.split.i ] ; 2 uses
  %i.aue = phi i32 [ %i.acf, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %i.beg, %._crit_edge1400.split.i ]
  %i.auf = sext i32 %indvars.iv1742.i to i64
  %i.aug = shl nsw i64 %i.auf, 2
  %scevgep1744.i = getelementptr i8, ptr %scevgep1741.i, i64 %i.aug ; 2 uses
  %i.auh = sext i32 %indvars.iv1746.i to i64
  %i.aui = shl nsw i64 %i.auh, 2
  %scevgep1748.i = getelementptr i8, ptr %scevgep1741.i, i64 %i.aui ; 2 uses
  %i.auj = trunc i64 %indvars.iv1775.i to i32     ; 4 uses
  %i.auk = mul i32 %i.aci, %i.auj
  %i.aul = sext i32 %i.auk to i64
  %i.aum = getelementptr inbounds [4 x i8], ptr %i.ach, i64 %i.aul ; 2 uses
  %i.aun = mul i32 %i.aue, %i.aci
  %i.auo = sext i32 %i.aun to i64
  %i.aup = getelementptr inbounds [4 x i8], ptr %i.ach, i64 %i.auo ; 2 uses
  %i.auq = lshr i32 %i.auj, 3
  %i.aur = lshr i32 %i.auj, 2
  %i.aus = and i32 %i.aur, 1
  %i.aut = add nuw nsw i32 %i.aus, %i.auq
  %i.auu = lshr i32 %i.auj, 1
  %i.auv = and i32 %i.auu, 1
  %i.auw = add nuw nsw i32 %i.aut, %i.auv
  %i.aux = zext nneg i32 %i.auw to i64
  %.reass1404.i = mul i64 %factor.op.mul1403.i, %i.aux
  %i.auy = getelementptr inbounds nuw i8, ptr %i.acj, i64 %.reass1404.i ; 4 uses
  br i1 %i.aco, label %.preheader1091.lr.ph.i, label %.preheader1094.i

.preheader1091.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1003.i
  br i1 %i.acp, label %.preheader1091.us.i, label %.preheader1094.thread.i

.preheader1091.us.i:                              ; preds = %.preheader1091.lr.ph.i, %._crit_edge1344.us.i
  %.08621349.us.i = phi i32 [ %i.awx, %._crit_edge1344.us.i ], [ 0, %.preheader1091.lr.ph.i ]
  %.08661348.us.i = phi ptr [ %i.awu, %._crit_edge1344.us.i ], [ %i.auy, %.preheader1091.lr.ph.i ]
  %.08751347.us.i = phi ptr [ %i.aww, %._crit_edge1344.us.i ], [ %i.aup, %.preheader1091.lr.ph.i ] ; 2 uses
  %.08781346.us.i = phi ptr [ %i.awv, %._crit_edge1344.us.i ], [ %i.aum, %.preheader1091.lr.ph.i ] ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.preheader1091.us.i
  %indvars.iv1749.i = phi i64 [ 0, %.preheader1091.us.i ], [ %indvars.iv.next1750.i, %bb.an ] ; 3 uses
  %.18671342.us.i = phi ptr [ %.08661348.us.i, %.preheader1091.us.i ], [ %i.awu, %bb.an ] ; 17 uses
  %i.auz = getelementptr inbounds nuw [4 x i8], ptr %.08781346.us.i, i64 %indvars.iv1749.i ; 8 uses
  %i.ava = getelementptr inbounds nuw [4 x i8], ptr %.08751347.us.i, i64 %indvars.iv1749.i ; 8 uses
  %i.avb = load float, ptr %i.auz, align 4, !tbaa !53
  store float %i.avb, ptr %.18671342.us.i, align 4, !tbaa !53
  %i.avc = getelementptr inbounds nuw [4 x i8], ptr %i.auz, i64 %i.acq
  %i.avd = load float, ptr %i.avc, align 4, !tbaa !53
  %i.ave = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 4
  store float %i.avd, ptr %i.ave, align 4, !tbaa !53
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr %i.auz, i64 %i.acs
  %i.avg = load float, ptr %i.avf, align 4, !tbaa !53
  %i.avh = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 8
  store float %i.avg, ptr %i.avh, align 4, !tbaa !53
  %i.avi = getelementptr inbounds nuw [4 x i8], ptr %i.auz, i64 %i.acu
  %i.avj = load float, ptr %i.avi, align 4, !tbaa !53
  %i.avk = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 12
  store float %i.avj, ptr %i.avk, align 4, !tbaa !53
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %i.auz, i64 %i.acw
  %i.avm = load float, ptr %i.avl, align 4, !tbaa !53
  %i.avn = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 16
  store float %i.avm, ptr %i.avn, align 4, !tbaa !53
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %i.auz, i64 %i.acy
  %i.avp = load float, ptr %i.avo, align 4, !tbaa !53
  %i.avq = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 20
  store float %i.avp, ptr %i.avq, align 4, !tbaa !53
  %i.avr = getelementptr inbounds nuw [4 x i8], ptr %i.auz, i64 %i.ada
  %i.avs = load float, ptr %i.avr, align 4, !tbaa !53
  %i.avt = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 24
  store float %i.avs, ptr %i.avt, align 4, !tbaa !53
  %i.avu = getelementptr inbounds nuw [4 x i8], ptr %i.auz, i64 %i.adc
  %i.avv = load float, ptr %i.avu, align 4, !tbaa !53
  %i.avw = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 28
  store float %i.avv, ptr %i.avw, align 4, !tbaa !53
  %i.avx = load float, ptr %i.ava, align 4, !tbaa !53
  %i.avy = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 32
  store float %i.avx, ptr %i.avy, align 4, !tbaa !53
  %i.avz = getelementptr inbounds nuw [4 x i8], ptr %i.ava, i64 %i.acq
  %i.awa = load float, ptr %i.avz, align 4, !tbaa !53
  %i.awb = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 36
  store float %i.awa, ptr %i.awb, align 4, !tbaa !53
  %i.awc = getelementptr inbounds nuw [4 x i8], ptr %i.ava, i64 %i.acs
  %i.awd = load float, ptr %i.awc, align 4, !tbaa !53
  %i.awe = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 40
  store float %i.awd, ptr %i.awe, align 4, !tbaa !53
  %i.awf = getelementptr inbounds nuw [4 x i8], ptr %i.ava, i64 %i.acu
  %i.awg = load float, ptr %i.awf, align 4, !tbaa !53
  %i.awh = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 44
  store float %i.awg, ptr %i.awh, align 4, !tbaa !53
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %i.ava, i64 %i.acw
  %i.awj = load float, ptr %i.awi, align 4, !tbaa !53
  %i.awk = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 48
  store float %i.awj, ptr %i.awk, align 4, !tbaa !53
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr %i.ava, i64 %i.acy
  %i.awm = load float, ptr %i.awl, align 4, !tbaa !53
  %i.awn = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 52
  store float %i.awm, ptr %i.awn, align 4, !tbaa !53
  %i.awo = getelementptr inbounds nuw [4 x i8], ptr %i.ava, i64 %i.ada
  %i.awp = load float, ptr %i.awo, align 4, !tbaa !53
  %i.awq = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 56
  store float %i.awp, ptr %i.awq, align 4, !tbaa !53
  %i.awr = getelementptr inbounds nuw [4 x i8], ptr %i.ava, i64 %i.adc
  %i.aws = load float, ptr %i.awr, align 4, !tbaa !53
  %i.awt = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 60
  store float %i.aws, ptr %i.awt, align 4, !tbaa !53
end_hunk_2
begin_hunk_3_@_ZN4ncnn21Convolution1D_x86_avx21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.bw = lshr i32 %i.h, 2
  %i.bx = and i32 %i.bw, 1
  %i.by = lshr i32 %i.h, 1
  %i.bz = and i32 %i.by, 1
  %i.ca = and i32 %i.h, 1
  %i.cb = add nuw nsw i32 %i.ca, %i.bv
  %i.cc = add nuw nsw i32 %i.cb, %i.bx
  %i.cd = add nuw nsw i32 %i.cc, %i.bz
  %i.ce = lshr i32 %i.g, 1
  %i.cf = and i32 %i.ce, 1
  %i.cg = and i32 %i.g, 1
  %i.ch = add nuw nsw i32 %i.cg, 1
  %i.ci = add nuw nsw i32 %i.ch, %i.cf
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.bu, i32 noundef %i.cd, i32 noundef %i.ci, i64 noundef 2, ptr noundef null)
  br label %.preheader1103.i

bb.l:                                             ; preds = %bb.j
  %i.cj = icmp sgt i32 %i.h, 3
  br i1 %i.cj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ck = shl nsw i32 %i.d, 4
  %i.cl = lshr i32 %i.h, 1
  %i.cm = and i32 %i.cl, 1
  %i.cn = and i32 %i.h, 1
  %i.co = add nuw nsw i32 %i.cn, 1
  %i.cp = add nuw nsw i32 %i.co, %i.cm
  %i.cq = lshr i32 %i.g, 1
  %i.cr = and i32 %i.cq, 1
  %i.cs = and i32 %i.g, 1
  %i.ct = add nuw nsw i32 %i.cs, 1
  %i.cu = add nuw nsw i32 %i.ct, %i.cr
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.ck, i32 noundef %i.cp, i32 noundef %i.cu, i64 noundef 2, ptr noundef null)
  br label %.preheader1103.i

bb.n:                                             ; preds = %bb.l
  %i.cv = icmp sgt i32 %i.h, 1
  br i1 %i.cv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cw = shl nsw i32 %i.d, 3
  %i.cx = and i32 %i.h, 1
  %i.cy = add nuw nsw i32 %i.cx, 1
  %i.cz = lshr i32 %i.g, 1
  %i.da = and i32 %i.cz, 1
  %i.db = and i32 %i.g, 1
  %i.dc = add nuw nsw i32 %i.db, 1
  %i.dd = add nuw nsw i32 %i.dc, %i.da
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.cw, i32 noundef %i.cy, i32 noundef %i.dd, i64 noundef 2, ptr noundef null)
  br label %.preheader1103.i

bb.p:                                             ; preds = %bb.n
  %i.de = shl nsw i32 %i.d, 2
  %i.df = lshr i32 %i.g, 1
  %i.dg = and i32 %i.df, 1
  %i.dh = and i32 %i.g, 1
  %i.di = add nuw nsw i32 %i.dh, 1
  %i.dj = add nuw nsw i32 %i.di, %i.dg
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.de, i32 noundef %i.h, i32 noundef %i.dj, i64 noundef 2, ptr noundef null)
  br label %.preheader1103.i

bb.q:                                             ; preds = %bb.i
  %i.dk = icmp sgt i32 %i.g, 1
  %i.dl = icmp sgt i32 %i.h, 7                    ; 2 uses
  br i1 %i.dk, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  br i1 %i.dl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dm = shl nsw i32 %i.d, 4
  %i.dn = lshr i32 %i.h, 3
  %i.do = lshr i32 %i.h, 2
  %i.dp = and i32 %i.do, 1
  %i.dq = lshr i32 %i.h, 1
  %i.dr = and i32 %i.dq, 1
  %i.ds = and i32 %i.h, 1
  %i.dt = add nuw nsw i32 %i.ds, %i.dn
  %i.du = add nuw nsw i32 %i.dt, %i.dp
  %i.dv = add nuw nsw i32 %i.du, %i.dr
  %i.dw = and i32 %i.g, 1
  %i.dx = add nuw nsw i32 %i.dw, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.dm, i32 noundef %i.dv, i32 noundef %i.dx, i64 noundef 2, ptr noundef null)
  br label %.preheader1103.i

bb.t:                                             ; preds = %bb.r
  %i.dy = icmp sgt i32 %i.h, 3
  br i1 %i.dy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dz = shl nsw i32 %i.d, 3
  %i.ea = lshr i32 %i.h, 1
  %i.eb = and i32 %i.ea, 1
  %i.ec = and i32 %i.h, 1
  %i.ed = add nuw nsw i32 %i.ec, 1
  %i.ee = add nuw nsw i32 %i.ed, %i.eb
  %i.ef = and i32 %i.g, 1
  %i.eg = add nuw nsw i32 %i.ef, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.dz, i32 noundef %i.ee, i32 noundef %i.eg, i64 noundef 2, ptr noundef null)
  br label %.preheader1103.i

bb.v:                                             ; preds = %bb.t
  %i.eh = icmp sgt i32 %i.h, 1
  br i1 %i.eh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ei = shl nsw i32 %i.d, 2
  %i.ej = and i32 %i.h, 1
  %i.ek = add nuw nsw i32 %i.ej, 1
  %i.el = and i32 %i.g, 1
  %i.em = add nuw nsw i32 %i.el, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.ei, i32 noundef %i.ek, i32 noundef %i.em, i64 noundef 2, ptr noundef null)
  br label %.preheader1103.i

bb.x:                                             ; preds = %bb.v
  %i.en = shl nsw i32 %i.d, 1
  %i.eo = and i32 %i.g, 1
  %i.ep = add nuw nsw i32 %i.eo, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.en, i32 noundef %i.h, i32 noundef %i.ep, i64 noundef 2, ptr noundef null)
  br label %.preheader1103.i

bb.y:                                             ; preds = %bb.q
  br i1 %i.dl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eq = shl nsw i32 %i.d, 3
  %i.er = lshr i32 %i.h, 3
  %i.es = lshr i32 %i.h, 2
  %i.et = and i32 %i.es, 1
  %i.eu = lshr i32 %i.h, 1
  %i.ev = and i32 %i.eu, 1
  %i.ew = and i32 %i.h, 1
  %i.ex = add nuw nsw i32 %i.ew, %i.er
  %i.ey = add nuw nsw i32 %i.ex, %i.et
  %i.ez = add nuw nsw i32 %i.ey, %i.ev
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.eq, i32 noundef %i.ez, i32 noundef %i.g, i64 noundef 2, ptr noundef null)
  br label %.preheader1103.i

bb.aa:                                            ; preds = %bb.y
  %i.fa = icmp sgt i32 %i.h, 3
  br i1 %i.fa, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fb = shl nsw i32 %i.d, 2
  %i.fc = lshr i32 %i.h, 1
  %i.fd = and i32 %i.fc, 1
  %i.fe = and i32 %i.h, 1
  %i.ff = add nuw nsw i32 %i.fe, 1
  %i.fg = add nuw nsw i32 %i.ff, %i.fd
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.fb, i32 noundef %i.fg, i32 noundef %i.g, i64 noundef 2, ptr noundef null)
  br label %.preheader1103.i

bb.ac:                                            ; preds = %bb.aa
  %i.fh = icmp sgt i32 %i.h, 1
  br i1 %i.fh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fi = shl nsw i32 %i.d, 1
  %i.fj = and i32 %i.h, 1
  %i.fk = add nuw nsw i32 %i.fj, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.fi, i32 noundef %i.fk, i32 noundef %i.g, i64 noundef 2, ptr noundef null)
  br label %.preheader1103.i

bb.ae:                                            ; preds = %bb.ac
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.d, i32 noundef %i.h, i32 noundef %i.g, i64 noundef 2, ptr noundef null)
  br label %.preheader1103.i

_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i:                ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %i.fl = load ptr, ptr %i.i, align 8, !tbaa !18  ; 9 uses
  %i.fm = mul i32 %i.h, %i.d                      ; 16 uses
  %i.fn = load ptr, ptr %i.j, align 8, !tbaa !18, !noalias !325
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !20, !noalias !325
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !49, !noalias !325
  %factor.op.mul.i = mul i64 %i.fr, %i.fp
  %i.fs = icmp sgt i32 %i.d, 0                    ; 3 uses
  %i.ft = sext i32 %i.d to i64                    ; 88 uses
  %i.fu = shl i32 %i.d, 3
  %i.fv = sext i32 %i.fu to i64                   ; 9 uses
  %i.fw = shl i32 %i.d, 2
  %i.fx = sext i32 %i.fw to i64                   ; 9 uses
  %i.fy = shl i32 %i.d, 1
  %i.fz = sext i32 %i.fy to i64                   ; 8 uses
  %i.ga = icmp slt i32 %i.d, 1
  %i.gb = add i32 %i.h, -8                        ; 2 uses
  %i.gc = lshr i32 %i.gb, 1
  %i.gd = and i32 %i.gc, 2147483644
  %narrow.i = add nuw i32 %i.gd, 4
  %i.ge = zext i32 %narrow.i to i64
  %i.gf = mul nsw i64 %i.ge, %i.fv
  %scevgep.i = getelementptr i8, ptr %i.fl, i64 %i.gf ; 8 uses
  %i.gg = shl i32 %i.fm, 3                        ; 8 uses
  %i.gh = shl i32 %i.fm, 1
  %i.gi = mul i32 %i.fm, 3
  %i.gj = shl i32 %i.fm, 2
  %i.gk = mul i32 %i.fm, 5
  %i.gl = mul i32 %i.fm, 6
  %i.gm = mul i32 %i.fm, 7
  %i.gn = and i32 %i.gb, -8
  %i.go = add i32 %i.gn, 8                        ; 4 uses
  %i.gp = add i32 %i.h, -4
  %i.gq = zext nneg i32 %i.g to i64
  %i.gr = or disjoint i32 %i.go, 3
  %i.gs = icmp slt i32 %i.gr, %i.h
  %wide.trip.count.i = zext i32 %i.d to i64       ; 6 uses
  %min.iters.check = icmp ult i32 %i.d, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.gt = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %_ZN4ncnn3MatD2Ev.exit1005.i

.preheader1103.loopexit.i:                        ; preds = %._crit_edge1244.split.i
  %i.gu = trunc nuw nsw i64 %indvars.iv.next1684.i to i32
  br label %.preheader1103.i

.preheader1103.i:                                 ; preds = %.preheader1103.loopexit.i, %bb.ae, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.w, %bb.u, %bb.s, %bb.p, %bb.o, %bb.m, %bb.k
  %.0.lcssa.i = phi i32 [ %i.gu, %.preheader1103.loopexit.i ], [ 0, %bb.m ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.k ], [ 0, %bb.z ], [ 0, %bb.ad ], [ 0, %bb.ae ], [ 0, %bb.ab ], [ 0, %bb.s ], [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.u ] ; 7 uses
  %i.gv = or disjoint i32 %.0.lcssa.i, 3          ; 2 uses
  %i.gw = icmp slt i32 %i.gv, %i.g
  br i1 %i.gw, label %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i, label %.preheader1095.i

_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i:                ; preds = %.preheader1103.i
  %i.gx = load ptr, ptr %i.i, align 8, !tbaa !18  ; 5 uses
  %i.gy = mul i32 %i.h, %i.d                      ; 9 uses
  %i.gz = load ptr, ptr %i.j, align 8, !tbaa !18, !noalias !328
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !20, !noalias !328
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !49, !noalias !328
  %factor.op.mul1340.i = mul i64 %i.hd, %i.hb
  %i.he = icmp sgt i32 %i.h, 7
  %i.hf = icmp sgt i32 %i.d, 0                    ; 3 uses
  %i.hg = sext i32 %i.d to i64                    ; 48 uses
  %i.hh = shl i32 %i.d, 3
  %i.hi = sext i32 %i.hh to i64                   ; 5 uses
  %i.hj = shl i32 %i.d, 2
  %i.hk = sext i32 %i.hj to i64                   ; 5 uses
  %i.hl = shl i32 %i.d, 1
  %i.hm = sext i32 %i.hl to i64                   ; 4 uses
  %i.hn = icmp slt i32 %i.d, 1
  %i.ho = add i32 %i.h, -8                        ; 2 uses
  %i.hp = lshr i32 %i.ho, 1
  %i.hq = and i32 %i.hp, 2147483644
  %narrow1837.i = add nuw i32 %i.hq, 4
  %i.hr = zext i32 %narrow1837.i to i64
  %i.hs = mul nsw i64 %i.hr, %i.hi
  %scevgep1686.i = getelementptr i8, ptr %i.gx, i64 %i.hs ; 4 uses
  %i.ht = mul i32 %i.gy, %.0.lcssa.i
  %i.hu = shl i32 %i.gy, 2                        ; 4 uses
  %i.hv = add nuw nsw i32 %.0.lcssa.i, 1
  %i.hw = mul i32 %i.hv, %i.gy
  %i.hx = add nuw nsw i32 %.0.lcssa.i, 2
  %i.hy = mul i32 %i.hx, %i.gy
  %i.hz = mul i32 %i.gv, %i.gy
  %i.ia = and i32 %i.ho, -8
  %i.ib = add i32 %i.ia, 8                        ; 4 uses
  %i.ic = add i32 %i.h, -4
  %i.id = zext nneg i32 %.0.lcssa.i to i64
  %i.ie = add i32 %.0.lcssa.i, 3
  %i.if = sext i32 %i.g to i64
  %i.ig = or disjoint i32 %i.ib, 3
  %i.ih = icmp slt i32 %i.ig, %i.h
  %wide.trip.count1706.i = zext i32 %i.d to i64   ; 8 uses
  %invariant.op.i = add nsw i64 %i.if, -3
  %min.iters.check315 = icmp ult i32 %i.d, 4
  %n.vec317 = and i64 %wide.trip.count1706.i, 2147483644 ; 4 uses
  %i.ii = shl nuw nsw i64 %n.vec317, 4
  %cmp.n332 = icmp eq i64 %n.vec317, %wide.trip.count1706.i
  %min.iters.check298 = icmp ult i32 %i.d, 4
  %n.vec300 = and i64 %wide.trip.count1706.i, 2147483644 ; 4 uses
  %i.ij = shl nuw nsw i64 %n.vec300, 3
  %cmp.n311 = icmp eq i64 %n.vec300, %wide.trip.count1706.i
  br label %_ZN4ncnn3MatD2Ev.exit1004.i

_ZN4ncnn3MatD2Ev.exit1005.i:                      ; preds = %._crit_edge1244.split.i, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i
  %indvars.iv1683.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1684.i, %._crit_edge1244.split.i ] ; 3 uses
  %indvars.iv1644.i = phi i32 [ %i.gm, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1645.i, %._crit_edge1244.split.i ] ; 2 uses
  %indvars.iv1640.i = phi i32 [ %i.gl, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1641.i, %._crit_edge1244.split.i ] ; 2 uses
  %indvars.iv1636.i = phi i32 [ %i.gk, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1637.i, %._crit_edge1244.split.i ] ; 2 uses
  %indvars.iv1632.i = phi i32 [ %i.gj, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1633.i, %._crit_edge1244.split.i ] ; 2 uses
  %indvars.iv1628.i = phi i32 [ %i.gi, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1629.i, %._crit_edge1244.split.i ] ; 2 uses
  %indvars.iv1624.i = phi i32 [ %i.gh, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1625.i, %._crit_edge1244.split.i ] ; 2 uses
  %indvars.iv1620.i = phi i32 [ %i.fm, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1621.i, %._crit_edge1244.split.i ] ; 2 uses
  %indvars.iv.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next.i, %._crit_edge1244.split.i ] ; 2 uses
  %i.ik = sext i32 %indvars.iv.i to i64
  %i.il = shl nsw i64 %i.ik, 2
  %scevgep1618.i = getelementptr i8, ptr %scevgep.i, i64 %i.il ; 2 uses
  %i.im = sext i32 %indvars.iv1620.i to i64
  %i.in = shl nsw i64 %i.im, 2
  %scevgep1622.i = getelementptr i8, ptr %scevgep.i, i64 %i.in ; 2 uses
  %i.io = sext i32 %indvars.iv1624.i to i64
  %i.ip = shl nsw i64 %i.io, 2
  %scevgep1626.i = getelementptr i8, ptr %scevgep.i, i64 %i.ip ; 2 uses
  %i.iq = sext i32 %indvars.iv1628.i to i64
  %i.ir = shl nsw i64 %i.iq, 2
  %scevgep1630.i = getelementptr i8, ptr %scevgep.i, i64 %i.ir ; 2 uses
  %i.is = sext i32 %indvars.iv1632.i to i64
  %i.it = shl nsw i64 %i.is, 2
  %scevgep1634.i = getelementptr i8, ptr %scevgep.i, i64 %i.it ; 2 uses
  %i.iu = sext i32 %indvars.iv1636.i to i64
  %i.iv = shl nsw i64 %i.iu, 2
  %scevgep1638.i = getelementptr i8, ptr %scevgep.i, i64 %i.iv ; 2 uses
  %i.iw = sext i32 %indvars.iv1640.i to i64
  %i.ix = shl nsw i64 %i.iw, 2
  %scevgep1642.i = getelementptr i8, ptr %scevgep.i, i64 %i.ix ; 2 uses
  %i.iy = sext i32 %indvars.iv1644.i to i64
  %i.iz = shl nsw i64 %i.iy, 2
  %scevgep1646.i = getelementptr i8, ptr %scevgep.i, i64 %i.iz ; 2 uses
  %i.ja = trunc i64 %indvars.iv1683.i to i32      ; 8 uses
  %i.jb = mul i32 %i.fm, %i.ja
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.jc ; 2 uses
  %i.je = or disjoint i32 %i.ja, 1
  %i.jf = mul i32 %i.je, %i.fm
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.jg ; 2 uses
  %i.ji = or disjoint i32 %i.ja, 2
  %i.jj = mul i32 %i.ji, %i.fm
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.jk ; 2 uses
  %i.jm = or disjoint i32 %i.ja, 3
  %i.jn = mul i32 %i.jm, %i.fm
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.jo ; 2 uses
  %i.jq = or disjoint i32 %i.ja, 4
  %i.jr = mul i32 %i.jq, %i.fm
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.js ; 2 uses
  %i.ju = or disjoint i32 %i.ja, 5
  %i.jv = mul i32 %i.ju, %i.fm
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.jw ; 2 uses
  %i.jy = or disjoint i32 %i.ja, 6
  %i.jz = mul i32 %i.jy, %i.fm
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.ka ; 2 uses
  %i.kc = or disjoint i32 %i.ja, 7
  %i.kd = mul i32 %i.kc, %i.fm
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.ke ; 2 uses
  %i.kg = lshr exact i64 %indvars.iv1683.i, 3
  %.reass.i = mul i64 %factor.op.mul.i, %i.kg
  %i.kh = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.reass.i ; 4 uses
  br i1 %i.l, label %.preheader1107.lr.ph.i, label %.preheader1110.i

.preheader1107.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1005.i
  br i1 %i.fs, label %.preheader1107.us.i, label %.preheader1110.thread.i

.preheader1107.us.i:                              ; preds = %.preheader1107.lr.ph.i, %._crit_edge.us.i
  %.08371132.us.i = phi ptr [ %i.se, %._crit_edge.us.i ], [ %i.jd, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08401131.us.i = phi ptr [ %i.sf, %._crit_edge.us.i ], [ %i.jh, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08481130.us.i = phi ptr [ %i.sg, %._crit_edge.us.i ], [ %i.jl, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08511129.us.i = phi ptr [ %i.sh, %._crit_edge.us.i ], [ %i.jp, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08551128.us.i = phi ptr [ %i.si, %._crit_edge.us.i ], [ %i.jt, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08581127.us.i = phi ptr [ %i.sj, %._crit_edge.us.i ], [ %i.jx, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08811126.us.i = phi ptr [ %i.sk, %._crit_edge.us.i ], [ %i.kb, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08841125.us.i = phi ptr [ %i.sl, %._crit_edge.us.i ], [ %i.kf, %.preheader1107.lr.ph.i ] ; 2 uses
  %.08871124.us.i = phi ptr [ %i.sd, %._crit_edge.us.i ], [ %i.kh, %.preheader1107.lr.ph.i ]
  %.08981123.us.i = phi i32 [ %i.sm, %._crit_edge.us.i ], [ 0, %.preheader1107.lr.ph.i ]
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.preheader1107.us.i
  %indvars.iv1647.i = phi i64 [ 0, %.preheader1107.us.i ], [ %indvars.iv.next1648.i, %bb.af ] ; 9 uses
  %.18881122.us.i = phi ptr [ %.08871124.us.i, %.preheader1107.us.i ], [ %i.sd, %bb.af ] ; 5 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.08371132.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.08401131.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.08481130.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.08511129.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.08551128.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %.08581127.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.08811126.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.08841125.us.i, i64 %indvars.iv1647.i ; 2 uses
  %i.kq = load i32, ptr %i.ki, align 4, !tbaa !53
  %i.kr = load i32, ptr %i.kj, align 4, !tbaa !53
  %i.ks = load i32, ptr %i.kk, align 4, !tbaa !53
  %i.kt = load i32, ptr %i.kl, align 4, !tbaa !53
  %i.ku = load i32, ptr %i.km, align 4, !tbaa !53
  %i.kv = load i32, ptr %i.kn, align 4, !tbaa !53
  %i.kw = load i32, ptr %i.ko, align 4, !tbaa !53
  %i.kx = load i32, ptr %i.kp, align 4, !tbaa !53
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.ft ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %i.ft ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.ft ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %i.ft ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.ft ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %i.ft ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %i.ft ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.ft ; 2 uses
  %i.lg = load i32, ptr %i.ky, align 4, !tbaa !53
  %i.lh = load i32, ptr %i.kz, align 4, !tbaa !53
  %i.li = load i32, ptr %i.la, align 4, !tbaa !53
  %i.lj = load i32, ptr %i.lb, align 4, !tbaa !53
  %i.lk = load i32, ptr %i.lc, align 4, !tbaa !53
  %i.ll = load i32, ptr %i.ld, align 4, !tbaa !53
  %i.lm = load i32, ptr %i.le, align 4, !tbaa !53
  %i.ln = load i32, ptr %i.lf, align 4, !tbaa !53
  %i.lo = insertelement <16 x i32> poison, i32 %i.kq, i64 0
  %i.lp = insertelement <16 x i32> %i.lo, i32 %i.kr, i64 1
  %i.lq = insertelement <16 x i32> %i.lp, i32 %i.ks, i64 2
  %i.lr = insertelement <16 x i32> %i.lq, i32 %i.kt, i64 3
  %i.ls = insertelement <16 x i32> %i.lr, i32 %i.ku, i64 4
  %i.lt = insertelement <16 x i32> %i.ls, i32 %i.kv, i64 5
  %i.lu = insertelement <16 x i32> %i.lt, i32 %i.kw, i64 6
  %i.lv = insertelement <16 x i32> %i.lu, i32 %i.kx, i64 7
  %i.lw = insertelement <16 x i32> %i.lv, i32 %i.lg, i64 8
  %i.lx = insertelement <16 x i32> %i.lw, i32 %i.lh, i64 9
  %i.ly = insertelement <16 x i32> %i.lx, i32 %i.li, i64 10
  %i.lz = insertelement <16 x i32> %i.ly, i32 %i.lj, i64 11
  %i.ma = insertelement <16 x i32> %i.lz, i32 %i.lk, i64 12
  %i.mb = insertelement <16 x i32> %i.ma, i32 %i.ll, i64 13
  %i.mc = insertelement <16 x i32> %i.mb, i32 %i.lm, i64 14
  %i.md = insertelement <16 x i32> %i.mc, i32 %i.ln, i64 15
  %i.me = lshr <16 x i32> %i.md, splat (i32 16)
  %i.mf = trunc nuw <16 x i32> %i.me to <16 x i16>
  store <16 x i16> %i.mf, ptr %.18881122.us.i, align 2, !tbaa !331
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.ft ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.ft ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.ft ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.ft ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.ft ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.ft ; 2 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.ft ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.ft ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 32
  %i.mp = load i32, ptr %i.mg, align 4, !tbaa !53
  %i.mq = load i32, ptr %i.mh, align 4, !tbaa !53
  %i.mr = load i32, ptr %i.mi, align 4, !tbaa !53
  %i.ms = load i32, ptr %i.mj, align 4, !tbaa !53
  %i.mt = load i32, ptr %i.mk, align 4, !tbaa !53
  %i.mu = load i32, ptr %i.ml, align 4, !tbaa !53
  %i.mv = load i32, ptr %i.mm, align 4, !tbaa !53
  %i.mw = load i32, ptr %i.mn, align 4, !tbaa !53
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.ft ; 2 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.ft ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.ft ; 2 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.ft ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.ft ; 2 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.ft ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.ft ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.ft ; 2 uses
  %i.nf = load i32, ptr %i.mx, align 4, !tbaa !53
  %i.ng = load i32, ptr %i.my, align 4, !tbaa !53
  %i.nh = load i32, ptr %i.mz, align 4, !tbaa !53
  %i.ni = load i32, ptr %i.na, align 4, !tbaa !53
  %i.nj = load i32, ptr %i.nb, align 4, !tbaa !53
  %i.nk = load i32, ptr %i.nc, align 4, !tbaa !53
  %i.nl = load i32, ptr %i.nd, align 4, !tbaa !53
  %i.nm = load i32, ptr %i.ne, align 4, !tbaa !53
  %i.nn = insertelement <16 x i32> poison, i32 %i.mp, i64 0
  %i.no = insertelement <16 x i32> %i.nn, i32 %i.mq, i64 1
  %i.np = insertelement <16 x i32> %i.no, i32 %i.mr, i64 2
  %i.nq = insertelement <16 x i32> %i.np, i32 %i.ms, i64 3
  %i.nr = insertelement <16 x i32> %i.nq, i32 %i.mt, i64 4
  %i.ns = insertelement <16 x i32> %i.nr, i32 %i.mu, i64 5
  %i.nt = insertelement <16 x i32> %i.ns, i32 %i.mv, i64 6
  %i.nu = insertelement <16 x i32> %i.nt, i32 %i.mw, i64 7
end_hunk_3
begin_hunk_4_@_ZN4ncnn21Convolution1D_x86_avx21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.zs = icmp slt i32 %i.zr, %i.h
  br i1 %i.zs, label %.preheader1105.us.i, label %.preheader1108.i, !llvm.loop !338

.preheader1108.i:                                 ; preds = %._crit_edge.us1228.i, %.preheader1109.i
  %.2900.lcssa.i = phi i32 [ %.1899.lcssa.i, %.preheader1109.i ], [ %i.zq, %._crit_edge.us1228.i ] ; 2 uses
  %.6893.lcssa.i = phi ptr [ %.3890.lcssa.i, %.preheader1109.i ], [ %i.zh, %._crit_edge.us1228.i ]
  %.2886.lcssa.i = phi ptr [ %.1885.lcssa.i, %.preheader1109.i ], [ %i.zp, %._crit_edge.us1228.i ] ; 2 uses
  %.2883.lcssa.i = phi ptr [ %.1882.lcssa.i, %.preheader1109.i ], [ %i.zo, %._crit_edge.us1228.i ] ; 2 uses
  %.2860.lcssa.i = phi ptr [ %.1859.lcssa.i, %.preheader1109.i ], [ %i.zn, %._crit_edge.us1228.i ] ; 2 uses
  %.2857.lcssa.i = phi ptr [ %.1856.lcssa.i, %.preheader1109.i ], [ %i.zm, %._crit_edge.us1228.i ] ; 2 uses
  %.2853.lcssa.i = phi ptr [ %.1852.lcssa.i, %.preheader1109.i ], [ %i.zl, %._crit_edge.us1228.i ] ; 2 uses
  %.2850.lcssa.i = phi ptr [ %.1849.lcssa.i, %.preheader1109.i ], [ %i.zk, %._crit_edge.us1228.i ] ; 2 uses
  %.2842.lcssa.i = phi ptr [ %.1841.lcssa.i, %.preheader1109.i ], [ %i.zj, %._crit_edge.us1228.i ] ; 2 uses
  %.2839.lcssa.i = phi ptr [ %.1838.lcssa.i, %.preheader1109.i ], [ %i.zi, %._crit_edge.us1228.i ] ; 2 uses
  %i.zt = icmp sge i32 %.2900.lcssa.i, %i.h
  %brmerge.i = or i1 %i.ga, %i.zt
  br i1 %brmerge.i, label %._crit_edge1244.split.i, label %.preheader1104.i

.preheader1104.i:                                 ; preds = %.preheader1108.i, %._crit_edge.i
  %.98961243.i = phi ptr [ %.lcssa288, %._crit_edge.i ], [ %.6893.lcssa.i, %.preheader1108.i ] ; 3 uses
  %.39011242.i = phi i32 [ %i.aav, %._crit_edge.i ], [ %.2900.lcssa.i, %.preheader1108.i ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader1104.i
  %i.zu = getelementptr i8, ptr %.98961243.i, i64 %i.gt ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.zv = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.98961243.i, i64 %i.zv
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %.2839.lcssa.i, i64 %index
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %.2842.lcssa.i, i64 %index
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %.2850.lcssa.i, i64 %index
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %.2853.lcssa.i, i64 %index
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %.2857.lcssa.i, i64 %index
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %.2860.lcssa.i, i64 %index
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %.2883.lcssa.i, i64 %index
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %.2886.lcssa.i, i64 %index
  %wide.load = load <4 x i32>, ptr %i.zw, align 4, !tbaa !53
  %i.aae = lshr <4 x i32> %wide.load, splat (i32 16)
  %wide.load289 = load <4 x i32>, ptr %i.zx, align 4, !tbaa !53
  %i.aaf = lshr <4 x i32> %wide.load289, splat (i32 16)
  %wide.load290 = load <4 x i32>, ptr %i.zy, align 4, !tbaa !53
  %i.aag = lshr <4 x i32> %wide.load290, splat (i32 16)
  %wide.load291 = load <4 x i32>, ptr %i.zz, align 4, !tbaa !53
  %i.aah = lshr <4 x i32> %wide.load291, splat (i32 16)
  %wide.load292 = load <4 x i32>, ptr %i.aaa, align 4, !tbaa !53
  %i.aai = lshr <4 x i32> %wide.load292, splat (i32 16)
  %wide.load293 = load <4 x i32>, ptr %i.aab, align 4, !tbaa !53
  %i.aaj = lshr <4 x i32> %wide.load293, splat (i32 16)
  %wide.load294 = load <4 x i32>, ptr %i.aac, align 4, !tbaa !53
  %i.aak = lshr <4 x i32> %wide.load294, splat (i32 16)
  %wide.load295 = load <4 x i32>, ptr %i.aad, align 4, !tbaa !53
  %i.aal = lshr <4 x i32> %wide.load295, splat (i32 16)
  %i.aam = shufflevector <4 x i32> %i.aae, <4 x i32> %i.aaf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aan = shufflevector <4 x i32> %i.aag, <4 x i32> %i.aah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aao = shufflevector <4 x i32> %i.aai, <4 x i32> %i.aaj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aap = shufflevector <4 x i32> %i.aak, <4 x i32> %i.aal, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aaq = shufflevector <8 x i32> %i.aam, <8 x i32> %i.aan, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aar = trunc nuw <16 x i32> %i.aaq to <16 x i16>
  %i.aas = shufflevector <8 x i32> %i.aao, <8 x i32> %i.aap, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aat = trunc nuw <16 x i32> %i.aas to <16 x i16>
  %interleaved.vec = shufflevector <16 x i16> %i.aar, <16 x i16> %i.aat, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !331
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aau = icmp eq i64 %index.next, %n.vec
  br i1 %i.aau, label %middle.block, label %vector.body, !llvm.loop !339

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader1104.i, %middle.block
  %indvars.iv1677.i.ph = phi i64 [ 0, %.preheader1104.i ], [ %n.vec, %middle.block ]
  %.108971241.i.ph = phi ptr [ %.98961243.i, %.preheader1104.i ], [ %i.zu, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa288 = phi ptr [ %i.zu, %middle.block ], [ %i.acj, %scalar.ph ]
  %i.aav = add nuw nsw i32 %.39011242.i, 1        ; 2 uses
  %exitcond1682.not.i = icmp eq i32 %i.aav, %i.h
  br i1 %exitcond1682.not.i, label %._crit_edge1244.split.i, label %.preheader1104.i, !llvm.loop !340

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv1677.i = phi i64 [ %indvars.iv.next1678.i, %scalar.ph ], [ %indvars.iv1677.i.ph, %scalar.ph.preheader ] ; 9 uses
  %.108971241.i = phi ptr [ %i.acj, %scalar.ph ], [ %.108971241.i.ph, %scalar.ph.preheader ] ; 9 uses
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %.2839.lcssa.i, i64 %indvars.iv1677.i
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %.2842.lcssa.i, i64 %indvars.iv1677.i
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %.2850.lcssa.i, i64 %indvars.iv1677.i
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %.2853.lcssa.i, i64 %indvars.iv1677.i
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %.2857.lcssa.i, i64 %indvars.iv1677.i
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %.2860.lcssa.i, i64 %indvars.iv1677.i
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %.2883.lcssa.i, i64 %indvars.iv1677.i
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %.2886.lcssa.i, i64 %indvars.iv1677.i
  %i.abe = load i32, ptr %i.aaw, align 4, !tbaa !53
  %i.abf = lshr i32 %i.abe, 16
  %i.abg = trunc nuw i32 %i.abf to i16
  store i16 %i.abg, ptr %.108971241.i, align 2, !tbaa !331
  %i.abh = load i32, ptr %i.aax, align 4, !tbaa !53
  %i.abi = lshr i32 %i.abh, 16
  %i.abj = trunc nuw i32 %i.abi to i16
  %i.abk = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 2
  store i16 %i.abj, ptr %i.abk, align 2, !tbaa !331
  %i.abl = load i32, ptr %i.aay, align 4, !tbaa !53
  %i.abm = lshr i32 %i.abl, 16
  %i.abn = trunc nuw i32 %i.abm to i16
  %i.abo = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 4
  store i16 %i.abn, ptr %i.abo, align 2, !tbaa !331
  %i.abp = load i32, ptr %i.aaz, align 4, !tbaa !53
  %i.abq = lshr i32 %i.abp, 16
  %i.abr = trunc nuw i32 %i.abq to i16
  %i.abs = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 6
  store i16 %i.abr, ptr %i.abs, align 2, !tbaa !331
  %i.abt = load i32, ptr %i.aba, align 4, !tbaa !53
  %i.abu = lshr i32 %i.abt, 16
  %i.abv = trunc nuw i32 %i.abu to i16
  %i.abw = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 8
  store i16 %i.abv, ptr %i.abw, align 2, !tbaa !331
  %i.abx = load i32, ptr %i.abb, align 4, !tbaa !53
  %i.aby = lshr i32 %i.abx, 16
  %i.abz = trunc nuw i32 %i.aby to i16
  %i.aca = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 10
  store i16 %i.abz, ptr %i.aca, align 2, !tbaa !331
  %i.acb = load i32, ptr %i.abc, align 4, !tbaa !53
  %i.acc = lshr i32 %i.acb, 16
  %i.acd = trunc nuw i32 %i.acc to i16
  %i.ace = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 12
  store i16 %i.acd, ptr %i.ace, align 2, !tbaa !331
  %i.acf = load i32, ptr %i.abd, align 4, !tbaa !53
  %i.acg = lshr i32 %i.acf, 16
  %i.ach = trunc nuw i32 %i.acg to i16
  %i.aci = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 14
  store i16 %i.ach, ptr %i.aci, align 2, !tbaa !331
  %i.acj = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 16 ; 2 uses
  %indvars.iv.next1678.i = add nuw nsw i64 %indvars.iv1677.i, 1 ; 2 uses
  %exitcond1681.not.i = icmp eq i64 %indvars.iv.next1678.i, %wide.trip.count.i
  br i1 %exitcond1681.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !341

._crit_edge1244.split.i:                          ; preds = %._crit_edge.i, %.preheader1108.i, %.preheader1105.lr.ph.i
  %indvars.iv.next1684.i = add nuw nsw i64 %indvars.iv1683.i, 8 ; 3 uses
  %i.ack = or disjoint i64 %indvars.iv.next1684.i, 7
  %i.acl = icmp samesign ult i64 %i.ack, %i.gq
  %indvars.iv.next.i = add i32 %indvars.iv.i, %i.gg
  %indvars.iv.next1621.i = add i32 %indvars.iv1620.i, %i.gg
  %indvars.iv.next1625.i = add i32 %indvars.iv1624.i, %i.gg
  %indvars.iv.next1629.i = add i32 %indvars.iv1628.i, %i.gg
  %indvars.iv.next1633.i = add i32 %indvars.iv1632.i, %i.gg
  %indvars.iv.next1637.i = add i32 %indvars.iv1636.i, %i.gg
  %indvars.iv.next1641.i = add i32 %indvars.iv1640.i, %i.gg
  %indvars.iv.next1645.i = add i32 %indvars.iv1644.i, %i.gg
  br i1 %i.acl, label %_ZN4ncnn3MatD2Ev.exit1005.i, label %.preheader1103.loopexit.i, !llvm.loop !342

.preheader1095.loopexit.i:                        ; preds = %._crit_edge1337.split.i
  %i.acm = trunc nuw nsw i64 %indvars.iv.next1737.i to i32
  br label %.preheader1095.i

.preheader1095.i:                                 ; preds = %.preheader1095.loopexit.i, %.preheader1103.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader1103.i ], [ %i.acm, %.preheader1095.loopexit.i ] ; 4 uses
  %i.acn = or disjoint i32 %.1.lcssa.i, 1         ; 3 uses
  %i.aco = icmp slt i32 %i.acn, %i.g
  br i1 %i.aco, label %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i, label %.preheader1087.i

_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i:                ; preds = %.preheader1095.i
  %i.acp = load ptr, ptr %i.i, align 8, !tbaa !18 ; 3 uses
  %i.acq = mul i32 %i.h, %i.d                     ; 5 uses
  %i.acr = load ptr, ptr %i.j, align 8, !tbaa !18, !noalias !343
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.act = load i64, ptr %i.acs, align 8, !tbaa !20, !noalias !343
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.acv = load i64, ptr %i.acu, align 8, !tbaa !49, !noalias !343
  %factor.op.mul1403.i = mul i64 %i.acv, %i.act
  %i.acw = icmp sgt i32 %i.h, 7
  %i.acx = icmp sgt i32 %i.d, 0                   ; 3 uses
  %i.acy = sext i32 %i.d to i64                   ; 10 uses
  %i.acz = shl i32 %i.d, 1
  %i.ada = sext i32 %i.acz to i64                 ; 8 uses
  %i.adb = mul nsw i32 %i.d, 3
  %i.adc = sext i32 %i.adb to i64                 ; 6 uses
  %i.add = shl i32 %i.d, 2
  %i.ade = sext i32 %i.add to i64                 ; 5 uses
  %i.adf = mul nsw i32 %i.d, 5
  %i.adg = sext i32 %i.adf to i64                 ; 2 uses
  %i.adh = mul nsw i32 %i.d, 6
  %i.adi = sext i32 %i.adh to i64                 ; 2 uses
  %i.adj = mul nsw i32 %i.d, 7
  %i.adk = sext i32 %i.adj to i64                 ; 2 uses
  %i.adl = shl i32 %i.d, 3
  %i.adm = sext i32 %i.adl to i64                 ; 3 uses
  %i.adn = icmp slt i32 %i.d, 1
  %i.ado = add i32 %i.h, -8                       ; 2 uses
  %i.adp = lshr i32 %i.ado, 1
  %i.adq = and i32 %i.adp, 2147483644
  %narrow1838.i = add nuw i32 %i.adq, 4
  %i.adr = zext i32 %narrow1838.i to i64
  %i.ads = mul nsw i64 %i.adr, %i.adm
  %scevgep1741.i = getelementptr i8, ptr %i.acp, i64 %i.ads ; 2 uses
  %i.adt = mul i32 %i.acq, %.1.lcssa.i
  %i.adu = shl i32 %i.acq, 1                      ; 2 uses
  %i.adv = mul i32 %i.acn, %i.acq
  %i.adw = and i32 %i.ado, -8
  %i.adx = add i32 %i.adw, 8                      ; 4 uses
  %i.ady = add i32 %i.h, -4
  %i.adz = zext nneg i32 %.1.lcssa.i to i64
  %i.aea = sext i32 %i.g to i64
  %i.aeb = or disjoint i32 %i.adx, 3
  %i.aec = icmp slt i32 %i.aeb, %i.h
  %wide.trip.count1752.i = zext i32 %i.d to i64   ; 10 uses
  %min.iters.check368 = icmp ult i32 %i.d, 4
  %n.vec370 = and i64 %wide.trip.count1752.i, 2147483644 ; 4 uses
  %i.aed = shl nuw nsw i64 %n.vec370, 4
  %cmp.n385 = icmp eq i64 %n.vec370, %wide.trip.count1752.i
  %min.iters.check351 = icmp ult i32 %i.d, 4
  %n.vec353 = and i64 %wide.trip.count1752.i, 2147483644 ; 4 uses
  %i.aee = shl nuw nsw i64 %n.vec353, 3
  %cmp.n364 = icmp eq i64 %n.vec353, %wide.trip.count1752.i
  %min.iters.check336 = icmp ult i32 %i.d, 4
  %n.vec338 = and i64 %wide.trip.count1752.i, 2147483644 ; 4 uses
  %i.aef = shl nuw nsw i64 %n.vec338, 2
  %cmp.n347 = icmp eq i64 %n.vec338, %wide.trip.count1752.i
  br label %_ZN4ncnn3MatD2Ev.exit1003.i

_ZN4ncnn3MatD2Ev.exit1004.i:                      ; preds = %._crit_edge1337.split.i, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i
  %indvars.iv1736.i = phi i64 [ %i.id, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1737.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1734.i = phi i32 [ %i.ie, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1735.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1699.i = phi i32 [ %i.hz, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1700.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1695.i = phi i32 [ %i.hy, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1696.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1691.i = phi i32 [ %i.hw, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1692.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1687.i = phi i32 [ %i.ht, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1688.i, %._crit_edge1337.split.i ] ; 2 uses
  %i.aeg = sext i32 %indvars.iv1687.i to i64
  %i.aeh = shl nsw i64 %i.aeg, 2
  %scevgep1689.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.aeh ; 2 uses
  %i.aei = sext i32 %indvars.iv1691.i to i64
  %i.aej = shl nsw i64 %i.aei, 2
  %scevgep1693.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.aej ; 2 uses
  %i.aek = sext i32 %indvars.iv1695.i to i64
  %i.ael = shl nsw i64 %i.aek, 2
  %scevgep1697.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.ael ; 2 uses
  %i.aem = sext i32 %indvars.iv1699.i to i64
  %i.aen = shl nsw i64 %i.aem, 2
  %scevgep1701.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.aen ; 2 uses
  %i.aeo = trunc nuw i64 %indvars.iv1736.i to i32 ; 5 uses
  %i.aep = mul i32 %i.gy, %i.aeo
  %i.aeq = sext i32 %i.aep to i64
  %i.aer = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.aeq ; 2 uses
  %i.aes = add i32 %i.aeo, 1
  %i.aet = mul i32 %i.aes, %i.gy
  %i.aeu = sext i32 %i.aet to i64
  %i.aev = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.aeu ; 2 uses
  %i.aew = add i32 %i.aeo, 2
  %i.aex = mul i32 %i.aew, %i.gy
  %i.aey = sext i32 %i.aex to i64
  %i.aez = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.aey ; 2 uses
  %i.afa = mul i32 %indvars.iv1734.i, %i.gy
  %i.afb = sext i32 %i.afa to i64
  %i.afc = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.afb ; 2 uses
  %i.afd = lshr i32 %i.aeo, 3
  %i.afe = lshr i32 %i.aeo, 2
  %i.aff = and i32 %i.afe, 1
  %i.afg = add nuw nsw i32 %i.aff, %i.afd
  %i.afh = zext nneg i32 %i.afg to i64
  %.reass1341.i = mul i64 %factor.op.mul1340.i, %i.afh
  %i.afi = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.reass1341.i ; 4 uses
  br i1 %i.he, label %.preheader1099.lr.ph.i, label %.preheader1102.i

.preheader1099.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1004.i
  br i1 %i.hf, label %.preheader1099.us.i, label %.preheader1102.thread.i

.preheader1099.us.i:                              ; preds = %.preheader1099.lr.ph.i, %._crit_edge1255.us.i
  %.09211262.us.i = phi i32 [ %i.alr, %._crit_edge1255.us.i ], [ 0, %.preheader1099.lr.ph.i ]
  %.09251261.us.i = phi ptr [ %i.alm, %._crit_edge1255.us.i ], [ %i.afi, %.preheader1099.lr.ph.i ]
  %.09361260.us.i = phi ptr [ %i.alq, %._crit_edge1255.us.i ], [ %i.afc, %.preheader1099.lr.ph.i ] ; 2 uses
  %.09391259.us.i = phi ptr [ %i.alp, %._crit_edge1255.us.i ], [ %i.aez, %.preheader1099.lr.ph.i ] ; 2 uses
  %.09421258.us.i = phi ptr [ %i.alo, %._crit_edge1255.us.i ], [ %i.aev, %.preheader1099.lr.ph.i ] ; 2 uses
  %.09451257.us.i = phi ptr [ %i.aln, %._crit_edge1255.us.i ], [ %i.aer, %.preheader1099.lr.ph.i ] ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.preheader1099.us.i
  %indvars.iv1703.i = phi i64 [ 0, %.preheader1099.us.i ], [ %indvars.iv.next1704.i, %bb.ai ] ; 5 uses
  %.19261253.us.i = phi ptr [ %.09251261.us.i, %.preheader1099.us.i ], [ %i.alm, %bb.ai ] ; 33 uses
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %.09451257.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %.09421258.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %.09391259.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %.09361260.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afn = load i32, ptr %i.afj, align 4, !tbaa !53
  %i.afo = lshr i32 %i.afn, 16
  %i.afp = trunc nuw i32 %i.afo to i16
  store i16 %i.afp, ptr %.19261253.us.i, align 2, !tbaa !331
  %i.afq = load i32, ptr %i.afk, align 4, !tbaa !53
  %i.afr = lshr i32 %i.afq, 16
  %i.afs = trunc nuw i32 %i.afr to i16
  %i.aft = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 2
  store i16 %i.afs, ptr %i.aft, align 2, !tbaa !331
  %i.afu = load i32, ptr %i.afl, align 4, !tbaa !53
  %i.afv = lshr i32 %i.afu, 16
  %i.afw = trunc nuw i32 %i.afv to i16
  %i.afx = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 4
  store i16 %i.afw, ptr %i.afx, align 2, !tbaa !331
  %i.afy = load i32, ptr %i.afm, align 4, !tbaa !53
  %i.afz = lshr i32 %i.afy, 16
  %i.aga = trunc nuw i32 %i.afz to i16
  %i.agb = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 6
  store i16 %i.aga, ptr %i.agb, align 2, !tbaa !331
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %i.afj, i64 %i.hg ; 2 uses
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %i.afk, i64 %i.hg ; 2 uses
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %i.afl, i64 %i.hg ; 2 uses
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.afm, i64 %i.hg ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 8
  %i.agh = load i32, ptr %i.agc, align 4, !tbaa !53
  %i.agi = lshr i32 %i.agh, 16
  %i.agj = trunc nuw i32 %i.agi to i16
  store i16 %i.agj, ptr %i.agg, align 2, !tbaa !331
  %i.agk = load i32, ptr %i.agd, align 4, !tbaa !53
  %i.agl = lshr i32 %i.agk, 16
  %i.agm = trunc nuw i32 %i.agl to i16
  %i.agn = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 10
  store i16 %i.agm, ptr %i.agn, align 2, !tbaa !331
  %i.ago = load i32, ptr %i.age, align 4, !tbaa !53
  %i.agp = lshr i32 %i.ago, 16
  %i.agq = trunc nuw i32 %i.agp to i16
  %i.agr = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 12
  store i16 %i.agq, ptr %i.agr, align 2, !tbaa !331
  %i.ags = load i32, ptr %i.agf, align 4, !tbaa !53
  %i.agt = lshr i32 %i.ags, 16
  %i.agu = trunc nuw i32 %i.agt to i16
  %i.agv = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 14
  store i16 %i.agu, ptr %i.agv, align 2, !tbaa !331
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.agc, i64 %i.hg ; 2 uses
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %i.agd, i64 %i.hg ; 2 uses
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.age, i64 %i.hg ; 2 uses
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %i.hg ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 16
  %i.ahb = load i32, ptr %i.agw, align 4, !tbaa !53
  %i.ahc = lshr i32 %i.ahb, 16
  %i.ahd = trunc nuw i32 %i.ahc to i16
  store i16 %i.ahd, ptr %i.aha, align 2, !tbaa !331
  %i.ahe = load i32, ptr %i.agx, align 4, !tbaa !53
  %i.ahf = lshr i32 %i.ahe, 16
  %i.ahg = trunc nuw i32 %i.ahf to i16
  %i.ahh = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 18
  store i16 %i.ahg, ptr %i.ahh, align 2, !tbaa !331
  %i.ahi = load i32, ptr %i.agy, align 4, !tbaa !53
  %i.ahj = lshr i32 %i.ahi, 16
  %i.ahk = trunc nuw i32 %i.ahj to i16
  %i.ahl = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 20
  store i16 %i.ahk, ptr %i.ahl, align 2, !tbaa !331
  %i.ahm = load i32, ptr %i.agz, align 4, !tbaa !53
  %i.ahn = lshr i32 %i.ahm, 16
  %i.aho = trunc nuw i32 %i.ahn to i16
  %i.ahp = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 22
  store i16 %i.aho, ptr %i.ahp, align 2, !tbaa !331
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.hg ; 2 uses
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %i.hg ; 2 uses
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %i.hg ; 2 uses
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %i.hg ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 24
  %i.ahv = load i32, ptr %i.ahq, align 4, !tbaa !53
  %i.ahw = lshr i32 %i.ahv, 16
  %i.ahx = trunc nuw i32 %i.ahw to i16
  store i16 %i.ahx, ptr %i.ahu, align 2, !tbaa !331
  %i.ahy = load i32, ptr %i.ahr, align 4, !tbaa !53
  %i.ahz = lshr i32 %i.ahy, 16
  %i.aia = trunc nuw i32 %i.ahz to i16
  %i.aib = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 26
  store i16 %i.aia, ptr %i.aib, align 2, !tbaa !331
  %i.aic = load i32, ptr %i.ahs, align 4, !tbaa !53
  %i.aid = lshr i32 %i.aic, 16
  %i.aie = trunc nuw i32 %i.aid to i16
  %i.aif = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 28
  store i16 %i.aie, ptr %i.aif, align 2, !tbaa !331
  %i.aig = load i32, ptr %i.aht, align 4, !tbaa !53
  %i.aih = lshr i32 %i.aig, 16
  %i.aii = trunc nuw i32 %i.aih to i16
  %i.aij = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 30
  store i16 %i.aii, ptr %i.aij, align 2, !tbaa !331
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.ahq, i64 %i.hg ; 2 uses
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %i.hg ; 2 uses
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %i.hg ; 2 uses
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.aht, i64 %i.hg ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 32
  %i.aip = load i32, ptr %i.aik, align 4, !tbaa !53
  %i.aiq = lshr i32 %i.aip, 16
  %i.air = trunc nuw i32 %i.aiq to i16
  store i16 %i.air, ptr %i.aio, align 2, !tbaa !331
  %i.ais = load i32, ptr %i.ail, align 4, !tbaa !53
  %i.ait = lshr i32 %i.ais, 16
  %i.aiu = trunc nuw i32 %i.ait to i16
  %i.aiv = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 34
  store i16 %i.aiu, ptr %i.aiv, align 2, !tbaa !331
  %i.aiw = load i32, ptr %i.aim, align 4, !tbaa !53
  %i.aix = lshr i32 %i.aiw, 16
  %i.aiy = trunc nuw i32 %i.aix to i16
  %i.aiz = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 36
  store i16 %i.aiy, ptr %i.aiz, align 2, !tbaa !331
  %i.aja = load i32, ptr %i.ain, align 4, !tbaa !53
  %i.ajb = lshr i32 %i.aja, 16
  %i.ajc = trunc nuw i32 %i.ajb to i16
  %i.ajd = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 38
  store i16 %i.ajc, ptr %i.ajd, align 2, !tbaa !331
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.aik, i64 %i.hg ; 2 uses
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.ail, i64 %i.hg ; 2 uses
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %i.aim, i64 %i.hg ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4ncnn21Convolution1D_x86_avx21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.aqp = getelementptr inbounds nuw [4 x i8], ptr %.29471313.us.i, i64 %indvars.iv1723.i ; 2 uses
  %i.aqq = getelementptr inbounds nuw [4 x i8], ptr %.29441314.us.i, i64 %indvars.iv1723.i ; 2 uses
  %i.aqr = getelementptr inbounds nuw [4 x i8], ptr %.29411315.us.i, i64 %indvars.iv1723.i ; 2 uses
  %i.aqs = getelementptr inbounds nuw [4 x i8], ptr %.29381316.us.i, i64 %indvars.iv1723.i ; 2 uses
  %i.aqt = load i32, ptr %i.aqp, align 4, !tbaa !53
  %i.aqu = lshr i32 %i.aqt, 16
  %i.aqv = trunc nuw i32 %i.aqu to i16
  store i16 %i.aqv, ptr %.79321309.us.i, align 2, !tbaa !331
  %i.aqw = load i32, ptr %i.aqq, align 4, !tbaa !53
  %i.aqx = lshr i32 %i.aqw, 16
  %i.aqy = trunc nuw i32 %i.aqx to i16
  %i.aqz = getelementptr inbounds nuw i8, ptr %.79321309.us.i, i64 2
  store i16 %i.aqy, ptr %i.aqz, align 2, !tbaa !331
  %i.ara = load i32, ptr %i.aqr, align 4, !tbaa !53
  %i.arb = lshr i32 %i.ara, 16
  %i.arc = trunc nuw i32 %i.arb to i16
  %i.ard = getelementptr inbounds nuw i8, ptr %.79321309.us.i, i64 4
  store i16 %i.arc, ptr %i.ard, align 2, !tbaa !331
  %i.are = load i32, ptr %i.aqs, align 4, !tbaa !53
  %i.arf = lshr i32 %i.are, 16
  %i.arg = trunc nuw i32 %i.arf to i16
  %i.arh = getelementptr inbounds nuw i8, ptr %.79321309.us.i, i64 6
  store i16 %i.arg, ptr %i.arh, align 2, !tbaa !331
  %i.ari = getelementptr inbounds nuw [4 x i8], ptr %i.aqp, i64 %i.hg
  %i.arj = getelementptr inbounds nuw [4 x i8], ptr %i.aqq, i64 %i.hg
  %i.ark = getelementptr inbounds nuw [4 x i8], ptr %i.aqr, i64 %i.hg
  %i.arl = getelementptr inbounds nuw [4 x i8], ptr %i.aqs, i64 %i.hg
  %i.arm = getelementptr inbounds nuw i8, ptr %.79321309.us.i, i64 8
  %i.arn = load i32, ptr %i.ari, align 4, !tbaa !53
  %i.aro = lshr i32 %i.arn, 16
  %i.arp = trunc nuw i32 %i.aro to i16
  store i16 %i.arp, ptr %i.arm, align 2, !tbaa !331
  %i.arq = load i32, ptr %i.arj, align 4, !tbaa !53
  %i.arr = lshr i32 %i.arq, 16
  %i.ars = trunc nuw i32 %i.arr to i16
  %i.art = getelementptr inbounds nuw i8, ptr %.79321309.us.i, i64 10
  store i16 %i.ars, ptr %i.art, align 2, !tbaa !331
  %i.aru = load i32, ptr %i.ark, align 4, !tbaa !53
  %i.arv = lshr i32 %i.aru, 16
  %i.arw = trunc nuw i32 %i.arv to i16
  %i.arx = getelementptr inbounds nuw i8, ptr %.79321309.us.i, i64 12
  store i16 %i.arw, ptr %i.arx, align 2, !tbaa !331
  %i.ary = load i32, ptr %i.arl, align 4, !tbaa !53
  %i.arz = lshr i32 %i.ary, 16
  %i.asa = trunc nuw i32 %i.arz to i16
  %i.asb = getelementptr inbounds nuw i8, ptr %.79321309.us.i, i64 14
  store i16 %i.asa, ptr %i.asb, align 2, !tbaa !331
  %i.asc = getelementptr inbounds nuw i8, ptr %.79321309.us.i, i64 16 ; 2 uses
  %indvars.iv.next1724.i = add nuw nsw i64 %indvars.iv1723.i, 1 ; 2 uses
  %exitcond1727.not.i = icmp eq i64 %indvars.iv.next1724.i, %wide.trip.count1706.i
  br i1 %exitcond1727.not.i, label %._crit_edge1311.us.i, label %scalar.ph314, !llvm.loop !351

._crit_edge1311.us.i:                             ; preds = %scalar.ph314, %middle.block331
  %.lcssa252 = phi ptr [ %i.apo, %middle.block331 ], [ %i.asc, %scalar.ph314 ] ; 2 uses
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %.29471313.us.i, i64 %i.hm ; 2 uses
  %i.ase = getelementptr inbounds nuw [4 x i8], ptr %.29441314.us.i, i64 %i.hm ; 2 uses
  %i.asf = getelementptr inbounds nuw [4 x i8], ptr %.29411315.us.i, i64 %i.hm ; 2 uses
  %i.asg = getelementptr inbounds nuw [4 x i8], ptr %.29381316.us.i, i64 %i.hm ; 2 uses
  %i.ash = add nuw nsw i32 %.29231318.us.i, 2     ; 3 uses
  %i.asi = or disjoint i32 %i.ash, 1
  %i.asj = icmp slt i32 %i.asi, %i.h
  br i1 %i.asj, label %.preheader1097.us.i, label %.preheader1100.i, !llvm.loop !352

.preheader1100.i:                                 ; preds = %._crit_edge1311.us.i, %.preheader1101.i
  %.2947.lcssa.i = phi ptr [ %.1946.lcssa.i, %.preheader1101.i ], [ %i.asd, %._crit_edge1311.us.i ] ; 2 uses
  %.2944.lcssa.i = phi ptr [ %.1943.lcssa.i, %.preheader1101.i ], [ %i.ase, %._crit_edge1311.us.i ] ; 2 uses
  %.2941.lcssa.i = phi ptr [ %.1940.lcssa.i, %.preheader1101.i ], [ %i.asf, %._crit_edge1311.us.i ] ; 2 uses
  %.2938.lcssa.i = phi ptr [ %.1937.lcssa.i, %.preheader1101.i ], [ %i.asg, %._crit_edge1311.us.i ] ; 2 uses
  %.6931.lcssa.i = phi ptr [ %.3928.lcssa.i, %.preheader1101.i ], [ %.lcssa252, %._crit_edge1311.us.i ]
  %.2923.lcssa.i = phi i32 [ %.1922.lcssa.i, %.preheader1101.i ], [ %i.ash, %._crit_edge1311.us.i ] ; 2 uses
  %i.ask = icmp sge i32 %.2923.lcssa.i, %i.h
  %brmerge1467.i = or i1 %i.hn, %i.ask
  br i1 %brmerge1467.i, label %._crit_edge1337.split.i, label %.preheader1096.i

.preheader1096.i:                                 ; preds = %.preheader1100.i, %._crit_edge1333.i
  %.39241336.i = phi i32 [ %i.asz, %._crit_edge1333.i ], [ %.2923.lcssa.i, %.preheader1100.i ]
  %.99341335.i = phi ptr [ %.lcssa258, %._crit_edge1333.i ], [ %.6931.lcssa.i, %.preheader1100.i ] ; 3 uses
  br i1 %min.iters.check298, label %scalar.ph297.preheader, label %vector.ph299

vector.ph299:                                     ; preds = %.preheader1096.i
  %i.asl = getelementptr i8, ptr %.99341335.i, i64 %i.ij ; 2 uses
  br label %vector.body301

vector.body301:                                   ; preds = %vector.body301, %vector.ph299
  %index302 = phi i64 [ 0, %vector.ph299 ], [ %index.next309, %vector.body301 ] ; 6 uses
  %i.asm = shl i64 %index302, 3
  %next.gep303 = getelementptr i8, ptr %.99341335.i, i64 %i.asm
  %i.asn = getelementptr inbounds nuw [4 x i8], ptr %.2947.lcssa.i, i64 %index302
  %i.aso = getelementptr inbounds nuw [4 x i8], ptr %.2944.lcssa.i, i64 %index302
  %i.asp = getelementptr inbounds nuw [4 x i8], ptr %.2941.lcssa.i, i64 %index302
  %i.asq = getelementptr inbounds nuw [4 x i8], ptr %.2938.lcssa.i, i64 %index302
  %wide.load304 = load <4 x i32>, ptr %i.asn, align 4, !tbaa !53
  %i.asr = lshr <4 x i32> %wide.load304, splat (i32 16)
  %wide.load305 = load <4 x i32>, ptr %i.aso, align 4, !tbaa !53
  %i.ass = lshr <4 x i32> %wide.load305, splat (i32 16)
  %wide.load306 = load <4 x i32>, ptr %i.asp, align 4, !tbaa !53
  %i.ast = lshr <4 x i32> %wide.load306, splat (i32 16)
  %wide.load307 = load <4 x i32>, ptr %i.asq, align 4, !tbaa !53
  %i.asu = lshr <4 x i32> %wide.load307, splat (i32 16)
  %i.asv = shufflevector <4 x i32> %i.asr, <4 x i32> %i.ass, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.asw = shufflevector <4 x i32> %i.ast, <4 x i32> %i.asu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.asx = shufflevector <8 x i32> %i.asv, <8 x i32> %i.asw, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %interleaved.vec308 = trunc nuw <16 x i32> %i.asx to <16 x i16>
  store <16 x i16> %interleaved.vec308, ptr %next.gep303, align 2, !tbaa !331
  %index.next309 = add nuw i64 %index302, 4       ; 2 uses
  %i.asy = icmp eq i64 %index.next309, %n.vec300
  br i1 %i.asy, label %middle.block310, label %vector.body301, !llvm.loop !353

middle.block310:                                  ; preds = %vector.body301
  br i1 %cmp.n311, label %._crit_edge1333.i, label %scalar.ph297.preheader

scalar.ph297.preheader:                           ; preds = %.preheader1096.i, %middle.block310
  %indvars.iv1728.i.ph = phi i64 [ 0, %.preheader1096.i ], [ %n.vec300, %middle.block310 ]
  %.109351331.i.ph = phi ptr [ %.99341335.i, %.preheader1096.i ], [ %i.asl, %middle.block310 ]
  br label %scalar.ph297

._crit_edge1333.i:                                ; preds = %scalar.ph297, %middle.block310
  %.lcssa258 = phi ptr [ %i.asl, %middle.block310 ], [ %i.att, %scalar.ph297 ]
  %i.asz = add nuw nsw i32 %.39241336.i, 1        ; 2 uses
  %exitcond1733.not.i = icmp eq i32 %i.asz, %i.h
  br i1 %exitcond1733.not.i, label %._crit_edge1337.split.i, label %.preheader1096.i, !llvm.loop !354

scalar.ph297:                                     ; preds = %scalar.ph297.preheader, %scalar.ph297
  %indvars.iv1728.i = phi i64 [ %indvars.iv.next1729.i, %scalar.ph297 ], [ %indvars.iv1728.i.ph, %scalar.ph297.preheader ] ; 5 uses
  %.109351331.i = phi ptr [ %i.att, %scalar.ph297 ], [ %.109351331.i.ph, %scalar.ph297.preheader ] ; 5 uses
  %i.ata = getelementptr inbounds nuw [4 x i8], ptr %.2947.lcssa.i, i64 %indvars.iv1728.i
  %i.atb = getelementptr inbounds nuw [4 x i8], ptr %.2944.lcssa.i, i64 %indvars.iv1728.i
  %i.atc = getelementptr inbounds nuw [4 x i8], ptr %.2941.lcssa.i, i64 %indvars.iv1728.i
  %i.atd = getelementptr inbounds nuw [4 x i8], ptr %.2938.lcssa.i, i64 %indvars.iv1728.i
  %i.ate = load i32, ptr %i.ata, align 4, !tbaa !53
  %i.atf = lshr i32 %i.ate, 16
  %i.atg = trunc nuw i32 %i.atf to i16
  store i16 %i.atg, ptr %.109351331.i, align 2, !tbaa !331
  %i.ath = load i32, ptr %i.atb, align 4, !tbaa !53
  %i.ati = lshr i32 %i.ath, 16
  %i.atj = trunc nuw i32 %i.ati to i16
  %i.atk = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 2
  store i16 %i.atj, ptr %i.atk, align 2, !tbaa !331
  %i.atl = load i32, ptr %i.atc, align 4, !tbaa !53
  %i.atm = lshr i32 %i.atl, 16
  %i.atn = trunc nuw i32 %i.atm to i16
  %i.ato = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 4
  store i16 %i.atn, ptr %i.ato, align 2, !tbaa !331
  %i.atp = load i32, ptr %i.atd, align 4, !tbaa !53
  %i.atq = lshr i32 %i.atp, 16
  %i.atr = trunc nuw i32 %i.atq to i16
  %i.ats = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 6
  store i16 %i.atr, ptr %i.ats, align 2, !tbaa !331
  %i.att = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 8 ; 2 uses
  %indvars.iv.next1729.i = add nuw nsw i64 %indvars.iv1728.i, 1 ; 2 uses
  %exitcond1732.not.i = icmp eq i64 %indvars.iv.next1729.i, %wide.trip.count1706.i
  br i1 %exitcond1732.not.i, label %._crit_edge1333.i, label %scalar.ph297, !llvm.loop !355

._crit_edge1337.split.i:                          ; preds = %._crit_edge1333.i, %.preheader1100.i, %.preheader1097.lr.ph.i
  %indvars.iv.next1737.i = add nuw nsw i64 %indvars.iv1736.i, 4 ; 3 uses
  %i.atu = icmp slt i64 %indvars.iv.next1737.i, %invariant.op.i
  %indvars.iv.next1688.i = add i32 %indvars.iv1687.i, %i.hu
  %indvars.iv.next1692.i = add i32 %indvars.iv1691.i, %i.hu
  %indvars.iv.next1696.i = add i32 %indvars.iv1695.i, %i.hu
  %indvars.iv.next1700.i = add i32 %indvars.iv1699.i, %i.hu
  %indvars.iv.next1735.i = add i32 %indvars.iv1734.i, 4
  br i1 %i.atu, label %_ZN4ncnn3MatD2Ev.exit1004.i, label %.preheader1095.loopexit.i, !llvm.loop !356

.preheader1087.loopexit.i:                        ; preds = %._crit_edge1400.split.i
  %i.atv = trunc nsw i64 %indvars.iv.next1776.i to i32
  br label %.preheader1087.i

.preheader1087.i:                                 ; preds = %.preheader1087.loopexit.i, %.preheader1095.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1095.i ], [ %i.atv, %.preheader1087.loopexit.i ] ; 3 uses
  %i.atw = icmp slt i32 %.2.lcssa.i, %i.g
  br i1 %i.atw, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1087.i
  %i.atx = load ptr, ptr %i.i, align 8, !tbaa !18 ; 2 uses
  %i.aty = mul i32 %i.h, %i.d                     ; 3 uses
  %i.atz = load ptr, ptr %i.j, align 8, !tbaa !18, !noalias !357
  %i.aua = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.aub = load i64, ptr %i.aua, align 8, !tbaa !20, !noalias !357
  %i.auc = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.aud = load i64, ptr %i.auc, align 8, !tbaa !49, !noalias !357
  %factor.op.mul1462.i = mul i64 %i.aud, %i.aub
  %i.aue = icmp sgt i32 %i.h, 7
  %i.auf = icmp sgt i32 %i.d, 0                   ; 3 uses
  %i.aug = sext i32 %i.d to i64                   ; 22 uses
  %i.auh = shl i32 %i.d, 3
  %i.aui = sext i32 %i.auh to i64                 ; 2 uses
  %i.auj = shl i32 %i.d, 2
  %i.auk = sext i32 %i.auj to i64                 ; 2 uses
  %i.aul = shl i32 %i.d, 1
  %i.aum = sext i32 %i.aul to i64
  %i.aun = icmp slt i32 %i.d, 1
  %i.auo = add i32 %i.h, -8                       ; 2 uses
  %i.aup = lshr i32 %i.auo, 1
  %i.auq = and i32 %i.aup, 2147483644
  %narrow1839.i = add nuw i32 %i.auq, 4
  %i.aur = zext i32 %narrow1839.i to i64
  %i.aus = mul nsw i64 %i.aur, %i.aui
  %scevgep1778.i = getelementptr i8, ptr %i.atx, i64 %i.aus
  %i.aut = mul i32 %i.aty, %.2.lcssa.i
  %i.auu = and i32 %i.auo, -8
  %i.auv = add i32 %i.auu, 8                      ; 4 uses
  %i.auw = add i32 %i.h, -4
  %i.aux = sext i32 %.2.lcssa.i to i64
  %wide.trip.count1811.i = sext i32 %i.g to i64
  %i.auy = or disjoint i32 %i.auv, 3
  %i.auz = icmp slt i32 %i.auy, %i.h
  %wide.trip.count1786.i = zext i32 %i.d to i64   ; 15 uses
  %min.iters.check449 = icmp ult i32 %i.d, 4
  %n.vec451 = and i64 %wide.trip.count1786.i, 2147483644 ; 4 uses
  %i.ava = shl nuw nsw i64 %n.vec451, 4
  %cmp.n466 = icmp eq i64 %n.vec451, %wide.trip.count1786.i
  %min.iters.check432 = icmp ult i32 %i.d, 4
  %n.vec434 = and i64 %wide.trip.count1786.i, 2147483644 ; 4 uses
  %i.avb = shl nuw nsw i64 %n.vec434, 3
  %cmp.n445 = icmp eq i64 %n.vec434, %wide.trip.count1786.i
  %min.iters.check413 = icmp ult i32 %i.d, 8
  %n.vec415 = and i64 %wide.trip.count1786.i, 2147483640 ; 4 uses
  %i.avc = shl nuw nsw i64 %n.vec415, 2
  %cmp.n428 = icmp eq i64 %n.vec415, %wide.trip.count1786.i
  %min.iters.check389 = icmp ult i32 %i.d, 4
  %min.iters.check390 = icmp ult i32 %i.d, 32
  %i.avd = and i64 %wide.trip.count1786.i, 28
  %n.vec392 = and i64 %wide.trip.count1786.i, 2147483616 ; 5 uses
  %i.ave = shl nuw nsw i64 %n.vec392, 1
  %cmp.n402 = icmp eq i64 %n.vec392, %wide.trip.count1786.i
  %min.epilog.iters.check = icmp eq i64 %i.avd, 0
  %n.vec404 = and i64 %wide.trip.count1786.i, 2147483644 ; 4 uses
  %i.avf = shl nuw nsw i64 %n.vec404, 1
  %cmp.n409 = icmp eq i64 %n.vec404, %wide.trip.count1786.i
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit1003.i:                      ; preds = %._crit_edge1400.split.i, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i
  %indvars.iv1775.i = phi i64 [ %i.adz, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1776.i, %._crit_edge1400.split.i ] ; 2 uses
  %indvars.iv1746.i = phi i32 [ %i.adv, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1747.i, %._crit_edge1400.split.i ] ; 2 uses
  %indvars.iv1742.i = phi i32 [ %i.adt, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1743.i, %._crit_edge1400.split.i ] ; 2 uses
  %i.avg = phi i32 [ %i.acn, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %i.bdt, %._crit_edge1400.split.i ]
  %i.avh = sext i32 %indvars.iv1742.i to i64
  %i.avi = shl nsw i64 %i.avh, 2
  %scevgep1744.i = getelementptr i8, ptr %scevgep1741.i, i64 %i.avi ; 2 uses
  %i.avj = sext i32 %indvars.iv1746.i to i64
  %i.avk = shl nsw i64 %i.avj, 2
  %scevgep1748.i = getelementptr i8, ptr %scevgep1741.i, i64 %i.avk ; 2 uses
  %i.avl = trunc i64 %indvars.iv1775.i to i32     ; 4 uses
  %i.avm = mul i32 %i.acq, %i.avl
  %i.avn = sext i32 %i.avm to i64
  %i.avo = getelementptr inbounds [4 x i8], ptr %i.acp, i64 %i.avn ; 2 uses
  %i.avp = mul i32 %i.avg, %i.acq
  %i.avq = sext i32 %i.avp to i64
  %i.avr = getelementptr inbounds [4 x i8], ptr %i.acp, i64 %i.avq ; 2 uses
  %i.avs = lshr i32 %i.avl, 3
  %i.avt = lshr i32 %i.avl, 2
  %i.avu = and i32 %i.avt, 1
  %i.avv = add nuw nsw i32 %i.avu, %i.avs
  %i.avw = lshr i32 %i.avl, 1
  %i.avx = and i32 %i.avw, 1
  %i.avy = add nuw nsw i32 %i.avv, %i.avx
  %i.avz = zext nneg i32 %i.avy to i64
  %.reass1404.i = mul i64 %factor.op.mul1403.i, %i.avz
  %i.awa = getelementptr inbounds nuw i8, ptr %i.acr, i64 %.reass1404.i ; 4 uses
  br i1 %i.acw, label %.preheader1091.lr.ph.i, label %.preheader1094.i

.preheader1091.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1003.i
  br i1 %i.acx, label %.preheader1091.us.i, label %.preheader1094.thread.i

.preheader1091.us.i:                              ; preds = %.preheader1091.lr.ph.i, %._crit_edge1344.us.i
  %.08621349.us.i = phi i32 [ %i.ayc, %._crit_edge1344.us.i ], [ 0, %.preheader1091.lr.ph.i ]
  %.08661348.us.i = phi ptr [ %i.axz, %._crit_edge1344.us.i ], [ %i.awa, %.preheader1091.lr.ph.i ]
  %.08751347.us.i = phi ptr [ %i.ayb, %._crit_edge1344.us.i ], [ %i.avr, %.preheader1091.lr.ph.i ] ; 2 uses
  %.08781346.us.i = phi ptr [ %i.aya, %._crit_edge1344.us.i ], [ %i.avo, %.preheader1091.lr.ph.i ] ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.preheader1091.us.i
  %indvars.iv1749.i = phi i64 [ 0, %.preheader1091.us.i ], [ %indvars.iv.next1750.i, %bb.ak ] ; 3 uses
  %.18671342.us.i = phi ptr [ %.08661348.us.i, %.preheader1091.us.i ], [ %i.axz, %bb.ak ] ; 2 uses
  %i.awb = getelementptr inbounds nuw [4 x i8], ptr %.08781346.us.i, i64 %indvars.iv1749.i ; 8 uses
  %i.awc = getelementptr inbounds nuw [4 x i8], ptr %.08751347.us.i, i64 %indvars.iv1749.i ; 8 uses
  %i.awd = load i32, ptr %i.awb, align 4, !tbaa !53
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr %i.awb, i64 %i.acy
  %i.awf = load i32, ptr %i.awe, align 4, !tbaa !53
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.awb, i64 %i.ada
  %i.awh = load i32, ptr %i.awg, align 4, !tbaa !53
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %i.awb, i64 %i.adc
  %i.awj = load i32, ptr %i.awi, align 4, !tbaa !53
  %i.awk = getelementptr inbounds nuw [4 x i8], ptr %i.awb, i64 %i.ade
  %i.awl = load i32, ptr %i.awk, align 4, !tbaa !53
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %i.awb, i64 %i.adg
  %i.awn = load i32, ptr %i.awm, align 4, !tbaa !53
  %i.awo = getelementptr inbounds nuw [4 x i8], ptr %i.awb, i64 %i.adi
  %i.awp = load i32, ptr %i.awo, align 4, !tbaa !53
  %i.awq = getelementptr inbounds nuw [4 x i8], ptr %i.awb, i64 %i.adk
  %i.awr = load i32, ptr %i.awq, align 4, !tbaa !53
  %i.aws = load i32, ptr %i.awc, align 4, !tbaa !53
  %i.awt = getelementptr inbounds nuw [4 x i8], ptr %i.awc, i64 %i.acy
  %i.awu = load i32, ptr %i.awt, align 4, !tbaa !53
  %i.awv = getelementptr inbounds nuw [4 x i8], ptr %i.awc, i64 %i.ada
  %i.aww = load i32, ptr %i.awv, align 4, !tbaa !53
  %i.awx = getelementptr inbounds nuw [4 x i8], ptr %i.awc, i64 %i.adc
  %i.awy = load i32, ptr %i.awx, align 4, !tbaa !53
  %i.awz = getelementptr inbounds nuw [4 x i8], ptr %i.awc, i64 %i.ade
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !53
  %i.axb = getelementptr inbounds nuw [4 x i8], ptr %i.awc, i64 %i.adg
  %i.axc = load i32, ptr %i.axb, align 4, !tbaa !53
  %i.axd = getelementptr inbounds nuw [4 x i8], ptr %i.awc, i64 %i.adi
  %i.axe = load i32, ptr %i.axd, align 4, !tbaa !53
  %i.axf = getelementptr inbounds nuw [4 x i8], ptr %i.awc, i64 %i.adk
  %i.axg = load i32, ptr %i.axf, align 4, !tbaa !53
  %i.axh = insertelement <16 x i32> poison, i32 %i.awd, i64 0
  %i.axi = insertelement <16 x i32> %i.axh, i32 %i.awf, i64 1
  %i.axj = insertelement <16 x i32> %i.axi, i32 %i.awh, i64 2
  %i.axk = insertelement <16 x i32> %i.axj, i32 %i.awj, i64 3
  %i.axl = insertelement <16 x i32> %i.axk, i32 %i.awl, i64 4
  %i.axm = insertelement <16 x i32> %i.axl, i32 %i.awn, i64 5
  %i.axn = insertelement <16 x i32> %i.axm, i32 %i.awp, i64 6
  %i.axo = insertelement <16 x i32> %i.axn, i32 %i.awr, i64 7
  %i.axp = insertelement <16 x i32> %i.axo, i32 %i.aws, i64 8
  %i.axq = insertelement <16 x i32> %i.axp, i32 %i.awu, i64 9
  %i.axr = insertelement <16 x i32> %i.axq, i32 %i.aww, i64 10
  %i.axs = insertelement <16 x i32> %i.axr, i32 %i.awy, i64 11
  %i.axt = insertelement <16 x i32> %i.axs, i32 %i.axa, i64 12
  %i.axu = insertelement <16 x i32> %i.axt, i32 %i.axc, i64 13
  %i.axv = insertelement <16 x i32> %i.axu, i32 %i.axe, i64 14
  %i.axw = insertelement <16 x i32> %i.axv, i32 %i.axg, i64 15
  %i.axx = lshr <16 x i32> %i.axw, splat (i32 16)
  %i.axy = trunc nuw <16 x i32> %i.axx to <16 x i16>
  store <16 x i16> %i.axy, ptr %.18671342.us.i, align 2, !tbaa !331
  %i.axz = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 32 ; 3 uses
  %indvars.iv.next1750.i = add nuw nsw i64 %indvars.iv1749.i, 1 ; 2 uses
  %exitcond1753.not.i = icmp eq i64 %indvars.iv.next1750.i, %wide.trip.count1752.i
  br i1 %exitcond1753.not.i, label %._crit_edge1344.us.i, label %bb.ak, !llvm.loop !360

._crit_edge1344.us.i:                             ; preds = %bb.ak
  %i.aya = getelementptr inbounds nuw [4 x i8], ptr %.08781346.us.i, i64 %i.adm ; 2 uses
  %i.ayb = getelementptr inbounds nuw [4 x i8], ptr %.08751347.us.i, i64 %i.adm ; 2 uses
  %i.ayc = add nuw nsw i32 %.08621349.us.i, 8     ; 2 uses
  %i.ayd = or disjoint i32 %i.ayc, 7
  %i.aye = icmp slt i32 %i.ayd, %i.h
  br i1 %i.aye, label %.preheader1091.us.i, label %.preheader1094.i, !llvm.loop !361

.preheader1094.i:                                 ; preds = %._crit_edge1344.us.i, %_ZN4ncnn3MatD2Ev.exit1003.i
  %.0878.lcssa.i = phi ptr [ %i.avo, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.aya, %._crit_edge1344.us.i ] ; 3 uses
  %.0875.lcssa.i = phi ptr [ %i.avr, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.ayb, %._crit_edge1344.us.i ] ; 3 uses
  %.0866.lcssa.i = phi ptr [ %i.awa, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.axz, %._crit_edge1344.us.i ] ; 3 uses
  %.0862.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.adx, %._crit_edge1344.us.i ] ; 4 uses
  %i.ayf = or disjoint i32 %.0862.lcssa.i, 3
  %i.ayg = icmp slt i32 %i.ayf, %i.h
  br i1 %i.ayg, label %.preheader1090.lr.ph.i, label %.preheader1093.i

.preheader1094.thread.i:                          ; preds = %.preheader1091.lr.ph.i
  br i1 %i.aec, label %.preheader1090.preheader.i, label %.preheader1093.i

.preheader1090.lr.ph.i:                           ; preds = %.preheader1094.i
  br i1 %i.acx, label %.preheader1090.us.i, label %.preheader1090.preheader.i

.preheader1090.preheader.i:                       ; preds = %.preheader1090.lr.ph.i, %.preheader1094.thread.i
  %.0878.lcssa19261937.i = phi ptr [ %.0878.lcssa.i, %.preheader1090.lr.ph.i ], [ %scevgep1744.i, %.preheader1094.thread.i ]
  %.0875.lcssa19271936.i = phi ptr [ %.0875.lcssa.i, %.preheader1090.lr.ph.i ], [ %scevgep1748.i, %.preheader1094.thread.i ]
  %.0866.lcssa19281935.i = phi ptr [ %.0866.lcssa.i, %.preheader1090.lr.ph.i ], [ %i.awa, %.preheader1094.thread.i ]
  %.0862.lcssa19291934.i = phi i32 [ %.0862.lcssa.i, %.preheader1090.lr.ph.i ], [ %i.adx, %.preheader1094.thread.i ] ; 2 uses
  %i.ayh = sub i32 %i.ady, %.0862.lcssa19291934.i
  %i.ayi = and i32 %i.ayh, -4                     ; 2 uses
  %i.ayj = zext i32 %i.ayi to i64
  %i.ayk = add nuw nsw i64 %i.ayj, 4
  %i.ayl = mul nsw i64 %i.ayk, %i.ade             ; 2 uses
  %scevgep1754.i = getelementptr i8, ptr %.0878.lcssa19261937.i, i64 %i.ayl
  %scevgep1755.i = getelementptr i8, ptr %.0875.lcssa19271936.i, i64 %i.ayl
  %i.aym = add i32 %.0862.lcssa19291934.i, 4
  %i.ayn = add i32 %i.aym, %i.ayi
  br label %.preheader1093.i

.preheader1090.us.i:                              ; preds = %.preheader1090.lr.ph.i, %._crit_edge1360.us.i
  %.18631365.us.i = phi i32 [ %i.bbf, %._crit_edge1360.us.i ], [ %.0862.lcssa.i, %.preheader1090.lr.ph.i ]
  %.28681364.us.i = phi ptr [ %.lcssa232, %._crit_edge1360.us.i ], [ %.0866.lcssa.i, %.preheader1090.lr.ph.i ] ; 3 uses
  %.18761363.us.i = phi ptr [ %i.bbe, %._crit_edge1360.us.i ], [ %.0875.lcssa.i, %.preheader1090.lr.ph.i ] ; 3 uses
  %.18791362.us.i = phi ptr [ %i.bbd, %._crit_edge1360.us.i ], [ %.0878.lcssa.i, %.preheader1090.lr.ph.i ] ; 3 uses
  br i1 %min.iters.check368, label %scalar.ph367.preheader, label %vector.ph369

vector.ph369:                                     ; preds = %.preheader1090.us.i
  %i.ayo = getelementptr i8, ptr %.28681364.us.i, i64 %i.aed ; 2 uses
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph369
  %index372 = phi i64 [ 0, %vector.ph369 ], [ %index.next383, %vector.body371 ] ; 4 uses
  %i.ayp = shl i64 %index372, 4
  %next.gep373 = getelementptr i8, ptr %.28681364.us.i, i64 %i.ayp
  %i.ayq = getelementptr inbounds nuw [4 x i8], ptr %.18791362.us.i, i64 %index372 ; 4 uses
  %i.ayr = getelementptr inbounds nuw [4 x i8], ptr %.18761363.us.i, i64 %index372 ; 4 uses
  %wide.load374 = load <4 x i32>, ptr %i.ayq, align 4, !tbaa !53
  %i.ays = lshr <4 x i32> %wide.load374, splat (i32 16)
  %i.ayt = getelementptr inbounds nuw [4 x i8], ptr %i.ayq, i64 %i.acy
  %wide.load375 = load <4 x i32>, ptr %i.ayt, align 4, !tbaa !53
  %i.ayu = lshr <4 x i32> %wide.load375, splat (i32 16)
  %i.ayv = getelementptr inbounds nuw [4 x i8], ptr %i.ayq, i64 %i.ada
  %wide.load376 = load <4 x i32>, ptr %i.ayv, align 4, !tbaa !53
  %i.ayw = lshr <4 x i32> %wide.load376, splat (i32 16)
  %i.ayx = getelementptr inbounds nuw [4 x i8], ptr %i.ayq, i64 %i.adc
  %wide.load377 = load <4 x i32>, ptr %i.ayx, align 4, !tbaa !53
  %i.ayy = lshr <4 x i32> %wide.load377, splat (i32 16)
  %wide.load378 = load <4 x i32>, ptr %i.ayr, align 4, !tbaa !53
  %i.ayz = lshr <4 x i32> %wide.load378, splat (i32 16)
  %i.aza = getelementptr inbounds nuw [4 x i8], ptr %i.ayr, i64 %i.acy
  %wide.load379 = load <4 x i32>, ptr %i.aza, align 4, !tbaa !53
end_hunk_5
