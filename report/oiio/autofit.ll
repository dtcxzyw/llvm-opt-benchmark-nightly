inline.NumInlined: 115
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 40
begin_hunk_0_@af_latin_hint_edges:bb.a

bb.ac:                                            ; preds = %bb.ab
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !96
  %i.ez = sub nsw i64 %i.ey, %i.ev
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.fa = icmp slt i64 %i.ev, 96
  br i1 %i.fa, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fb = add nsw i64 %i.er, 32
  %i.fc = and i64 %i.fb, -64                      ; 2 uses
  %i.fd = icmp slt i64 %i.ev, 65                  ; 2 uses
  %.436 = select i1 %i.fd, i64 -32, i64 -38
  %.437 = select i1 %i.fd, i64 32, i64 26
  %i.fe = add i64 %.436, %i.fc                    ; 2 uses
  %i.ff = sub nsw i64 %i.er, %i.fe
  %.0344 = tail call i64 @llvm.abs.i64(i64 %i.ff, i1 true)
  %i.fg = or disjoint i64 %.437, %i.fc            ; 2 uses
  %i.fh = sub nsw i64 %i.er, %i.fg
  %.0342 = tail call i64 @llvm.abs.i64(i64 %i.fh, i1 true)
  %i.fi = icmp samesign ult i64 %.0344, %.0342
  %.0347 = select i1 %i.fi, i64 %i.fe, i64 %i.fg  ; 2 uses
  %i.fj = sdiv i64 %i.ev, 2                       ; 2 uses
  %i.fk = sub nsw i64 %.0347, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %.1499, i64 16
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !96
  %i.fm = add nsw i64 %.0347, %i.fj
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.fn = add i64 %i.em, 32                       ; 2 uses
  %i.fo = and i64 %i.fn, -64                      ; 2 uses
  %i.fp = lshr i64 %i.ev, 1                       ; 2 uses
  %i.fq = sub i64 %i.fo, %i.er
  %i.fr = add i64 %i.fq, %i.fp
  %spec.select438 = tail call i64 @llvm.abs.i64(i64 %i.fr, i1 true)
  %i.fs = add i64 %i.fn, %i.ep
  %i.ft = and i64 %i.fs, -64
  %i.fu = sub nsw i64 %i.ft, %i.ev                ; 2 uses
  %i.fv = sub i64 %i.fp, %i.er
  %i.fw = add i64 %i.fv, %i.fu
  %.1343 = tail call i64 @llvm.abs.i64(i64 %i.fw, i1 true)
  %i.fx = icmp samesign ult i64 %spec.select438, %.1343
  %i.fy = select i1 %i.fx, i64 %i.fo, i64 %i.fu   ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.1499, i64 16
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !96
  %i.ga = add nsw i64 %i.fy, %i.ev
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ac
  %.sink566.a = phi ptr [ %i.ce, %bb.ae ], [ %i.ce, %bb.af ], [ %.1499, %bb.ac ]
  %.sink = phi i64 [ %i.fm, %bb.ae ], [ %i.ga, %bb.af ], [ %i.ez, %bb.ac ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.sink566.a, i64 16
  store i64 %.sink, ptr %i.gb, align 8, !tbaa !96
  %i.gc = or i8 %i.ca, 4
  store i8 %i.gc, ptr %i.bz, align 8, !tbaa !202
  %i.gd = load i8, ptr %i.es, align 8, !tbaa !202
  %i.ge = or i8 %i.gd, 4
  store i8 %i.ge, ptr %i.es, align 8, !tbaa !202
  %i.gf = icmp ugt ptr %.1499, %i.e
  br i1 %i.gf, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.gg = getelementptr inbounds nuw i8, ptr %.1499, i64 16
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !96 ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %.1499, i64 -72
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !96 ; 4 uses
  br i1 %.0346459, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gk = icmp sgt i64 %i.gh, %i.gj
  br i1 %i.gk, label %bb.ak, label %bb.am

bb.aj:                                            ; preds = %bb.ah
  %i.gl = icmp slt i64 %i.gh, %i.gj
  br i1 %i.gl, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !96
  %i.go = add i64 %i.gn, -17
  %i.gp = sub i64 %i.go, %i.gj
  %i.gq = icmp ult i64 %i.gp, -33
  br i1 %i.gq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gr = getelementptr inbounds nuw i8, ptr %.1499, i64 16
  store i64 %i.gj, ptr %i.gr, align 8, !tbaa !96
  br label %bb.am

bb.am:                                            ; preds = %bb.aa, %bb.ak, %bb.al, %bb.aj, %bb.ai, %bb.ag, %bb.r, %bb.v, %bb.t
  %.1336 = phi i32 [ %i.cf, %bb.t ], [ %.0335497, %bb.v ], [ %.0335497, %bb.r ], [ %.0335497, %bb.ag ], [ %.0335497, %bb.ai ], [ %.0335497, %bb.aj ], [ %.0335497, %bb.al ], [ %.0335497, %bb.ak ], [ %.0335497, %bb.aa ] ; 2 uses
  %.6 = phi ptr [ %.4498, %bb.t ], [ %.4498, %bb.v ], [ %.4498, %bb.r ], [ %.4498, %bb.ag ], [ %.4498, %bb.ai ], [ %.4498, %bb.aj ], [ %.4498, %bb.al ], [ %.4498, %bb.ak ], [ %.1499, %bb.aa ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.1499, i64 88 ; 2 uses
  %i.gt = icmp ult ptr %i.gs, %i.j
  br i1 %i.gt, label %bb.r, label %._crit_edge.loopexit, !llvm.loop !443

._crit_edge.loopexit:                             ; preds = %bb.am
  %i.gu = icmp ne i32 %.1336, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.thread
  %.0335.lcssa = phi i1 [ false, %.thread ], [ %i.gu, %._crit_edge.loopexit ]
  %.4.lcssa = phi ptr [ %.3, %.thread ], [ %.6, %._crit_edge.loopexit ] ; 2 uses
  br i1 %.not399, label %bb.an, label %bb.aw

bb.an:                                            ; preds = %._crit_edge
  %i.gv = ptrtoint ptr %i.j to i64
  %i.gw = ptrtoint ptr %i.e to i64
  %i.gx = sub i64 %i.gv, %i.gw                    ; 2 uses
  %i.gy = icmp eq i64 %i.gx, 1056
  switch i64 %i.gx, label %bb.aw [
    i64 528, label %bb.ap
    i64 1056, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an
  %i.gz = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %.sink568 = phi i64 [ 440, %bb.ao ], [ 176, %bb.an ]
  %.sink567 = phi i64 [ 792, %bb.ao ], [ 352, %bb.an ]
  %.0339 = phi ptr [ %i.gz, %bb.ao ], [ %i.e, %bb.an ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink568 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink567 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !97
  %i.he = getelementptr inbounds nuw i8, ptr %.0339, i64 8
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !97
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !97
  %factor = shl i64 %i.hd, 1
  %i.hi = add i64 %factor, 7
  %i.hj = add i64 %i.hf, %i.hh
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = icmp ult i64 %i.hk, 15
  br i1 %i.hl, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !96
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !96
  %i.hq = shl nsw i64 %i.hp, 1
  %i.hr = getelementptr inbounds nuw i8, ptr %.0339, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !96
  %i.ht = sub nsw i64 %i.hq, %i.hs                ; 2 uses
  %i.hu = sub nsw i64 %i.hn, %i.ht                ; 3 uses
  store i64 %i.ht, ptr %i.hm, align 8, !tbaa !96
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hb, i64 48
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !387 ; 3 uses
  %.not400 = icmp eq ptr %i.hw, null              ; 2 uses
  br i1 %.not400, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !96
  %i.hz = sub nsw i64 %i.hy, %i.hu
  store i64 %i.hz, ptr %i.hx, align 8, !tbaa !96
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  br i1 %i.gy, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ia = getelementptr inbounds nuw i8, ptr %i.e, i64 720 ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !96
  %i.ic = sub nsw i64 %i.ib, %i.hu
  store i64 %i.ic, ptr %i.ia, align 8, !tbaa !96
  %i.id = getelementptr inbounds nuw i8, ptr %i.e, i64 984 ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !96
  %i.if = sub nsw i64 %i.ie, %i.hu
  store i64 %i.if, ptr %i.id, align 8, !tbaa !96
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hb, i64 24 ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 8, !tbaa !202
  %i.ii = or i8 %i.ih, 4
  store i8 %i.ii, ptr %i.ig, align 8, !tbaa !202
  br i1 %.not400, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hw, i64 24 ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 8, !tbaa !202
  %i.il = or i8 %i.ik, 4
  store i8 %i.il, ptr %i.ij, align 8, !tbaa !202
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ap, %bb.av, %bb.au, %bb.an, %._crit_edge
  %i.im = icmp eq ptr %.4.lcssa, null
  %or.cond5.not510 = select i1 %.0335.lcssa, i1 true, i1 %i.im
  %or.cond507 = and i1 %or.cond5.not510, %i.bw
  br i1 %or.cond507, label %.lr.ph506, label %.loopexit

.lr.ph506:                                        ; preds = %bb.aw, %bb.bx
  %.2504 = phi ptr [ %i.md, %bb.bx ], [ %i.e, %bb.aw ] ; 26 uses
  %.7503 = phi ptr [ %.9, %bb.bx ], [ %.4.lcssa, %bb.aw ] ; 8 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.2504, i64 24 ; 3 uses
  %i.io = load i8, ptr %i.in, align 8, !tbaa !202 ; 5 uses
  %i.ip = and i8 %i.io, 4
  %.not402 = icmp eq i8 %i.ip, 0
  br i1 %.not402, label %bb.ax, label %bb.bx

bb.ax:                                            ; preds = %.lr.ph506
  %i.iq = getelementptr inbounds nuw i8, ptr %.2504, i64 56
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !386 ; 3 uses
  %.not403 = icmp eq ptr %i.ir, null
  br i1 %.not403, label %.thread480, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.is = getelementptr i8, ptr %i.ir, i64 8
  %i.it = load i64, ptr %i.is, align 8, !tbaa !97 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.2504, i64 8
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !97 ; 2 uses
  %i.iw = add i64 %i.it, 79
  %i.ix = sub i64 %i.iw, %i.iv
  %i.iy = icmp ult i64 %i.ix, 159
  br i1 %i.iy, label %bb.az, label %.thread480

bb.az:                                            ; preds = %bb.ay
  %i.iz = getelementptr i8, ptr %i.ir, i64 16
  %.val457 = load i64, ptr %i.iz, align 8, !tbaa !96
  %i.ja = sub i64 %.val457, %i.it
  %i.jb = add i64 %i.ja, %i.iv                    ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.2504, i64 16
  store i64 %i.jb, ptr %i.jc, align 8, !tbaa !96
  br label %bb.bi

.thread480:                                       ; preds = %bb.ax, %bb.ay
  %.not404 = icmp eq ptr %.7503, null
  br i1 %.not404, label %bb.ba, label %.preheader

bb.ba:                                            ; preds = %.thread480
  %i.jd = getelementptr inbounds nuw i8, ptr %.2504, i64 8
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !97
  %i.jf = add nsw i64 %i.je, 32
  %i.jg = and i64 %i.jf, -64                      ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.2504, i64 16
  store i64 %i.jg, ptr %i.jh, align 8, !tbaa !96
  br label %bb.bi

.preheader:                                       ; preds = %.thread480, %bb.bb
  %.2.pn = phi ptr [ %.0328, %bb.bb ], [ %.2504, %.thread480 ] ; 4 uses
  %.0328 = getelementptr inbounds i8, ptr %.2.pn, i64 -88 ; 3 uses
  %.not405 = icmp ult ptr %.0328, %i.e            ; 2 uses
  br i1 %.not405, label %.preheader571, label %bb.bb

bb.bb:                                            ; preds = %.preheader
  %i.ji = getelementptr inbounds i8, ptr %.2.pn, i64 -64
  %i.jj = load i8, ptr %i.ji, align 8, !tbaa !202
  %i.jk = and i8 %i.jj, 4
  %.not406 = icmp eq i8 %i.jk, 0
  br i1 %.not406, label %.preheader, label %.preheader571, !llvm.loop !444

.preheader571:                                    ; preds = %bb.bb, %.preheader
  br label %bb.bc

bb.bc:                                            ; preds = %.preheader571, %bb.bd
  %.2.pn408 = phi ptr [ %.0, %bb.bd ], [ %.2504, %.preheader571 ] ; 4 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.2.pn408, i64 88 ; 2 uses
  %.not511.not.not = icmp ult ptr %.0, %i.j
  br i1 %.not511.not.not, label %bb.bd, label %.thread560

bb.bd:                                            ; preds = %bb.bc
  %i.jl = getelementptr inbounds nuw i8, ptr %.2.pn408, i64 112
  %i.jm = load i8, ptr %i.jl, align 8, !tbaa !202
  %i.jn = and i8 %i.jm, 4
  %.not407 = icmp eq i8 %i.jn, 0
  br i1 %.not407, label %bb.bc, label %bb.be, !llvm.loop !445

bb.be:                                            ; preds = %bb.bd
  %i.jo = icmp uge ptr %.0328, %.2504
  %i.jp = or i1 %.not405, %i.jo
  br i1 %i.jp, label %.thread560, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jq = getelementptr inbounds nuw i8, ptr %.2.pn408, i64 96
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !97 ; 2 uses
  %i.js = getelementptr inbounds i8, ptr %.2.pn, i64 -80
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !97 ; 3 uses
  %i.ju = icmp eq i64 %i.jr, %i.jt
  %i.jv = getelementptr inbounds i8, ptr %.2.pn, i64 -72
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !96 ; 4 uses
  br i1 %i.ju, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jx = getelementptr inbounds nuw i8, ptr %.2504, i64 16
  store i64 %i.jw, ptr %i.jx, align 8, !tbaa !96
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.jy = getelementptr inbounds nuw i8, ptr %.2504, i64 8
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !97
  %i.ka = sub nsw i64 %i.jz, %i.jt
  %i.kb = getelementptr inbounds nuw i8, ptr %.2.pn408, i64 104
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !96
  %i.kd = sub nsw i64 %i.kc, %i.jw
  %i.ke = sub nsw i64 %i.jr, %i.jt
  %i.kf = tail call i64 @FT_MulDiv(i64 noundef %i.ka, i64 noundef %i.kd, i64 noundef %i.ke) #18
  %i.kg = add nsw i64 %i.kf, %i.jw                ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.2504, i64 16
  store i64 %i.kg, ptr %i.kh, align 8, !tbaa !96
  %.pre516 = load i8, ptr %i.in, align 8, !tbaa !202
  br label %bb.bi

.thread560:                                       ; preds = %bb.bc, %bb.be
  %i.ki = getelementptr inbounds nuw i8, ptr %.7503, i64 16
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !96
  %i.kk = getelementptr inbounds nuw i8, ptr %.2504, i64 8
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !97
  %i.km = getelementptr inbounds nuw i8, ptr %.7503, i64 8
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !97
  %i.ko = add i64 %i.kl, 16
  %i.kp = sub i64 %i.ko, %i.kn
  %i.kq = and i64 %i.kp, -32
  %i.kr = add nsw i64 %i.kq, %i.kj                ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.2504, i64 16
  store i64 %i.kr, ptr %i.ks, align 8, !tbaa !96
  br label %bb.bi

bb.bi:                                            ; preds = %.thread560, %bb.bg, %bb.bh, %bb.ba, %bb.az
  %i.kt = phi i64 [ %i.jb, %bb.az ], [ %i.jg, %bb.ba ], [ %i.kg, %bb.bh ], [ %i.jw, %bb.bg ], [ %i.kr, %.thread560 ] ; 7 uses
  %i.ku = phi i8 [ %i.io, %bb.az ], [ %i.io, %bb.ba ], [ %.pre516, %bb.bh ], [ %i.io, %bb.bg ], [ %i.io, %.thread560 ]
  %.8 = phi ptr [ %.7503, %bb.az ], [ %.2504, %bb.ba ], [ %.7503, %bb.bh ], [ %.7503, %bb.bg ], [ %.7503, %.thread560 ] ; 7 uses
  %i.kv = or i8 %i.ku, 4
  store i8 %i.kv, ptr %i.in, align 8, !tbaa !202
  %i.kw = icmp ugt ptr %.2504, %i.e
  br i1 %i.kw, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  %i.kx = getelementptr inbounds i8, ptr %.2504, i64 -72
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !96 ; 5 uses
  br i1 %.0346459, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kz = icmp sgt i64 %i.kt, %i.ky
  br i1 %i.kz, label %bb.bm, label %bb.bp

bb.bl:                                            ; preds = %bb.bj
  %i.la = icmp slt i64 %i.kt, %i.ky
  br i1 %i.la, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.lb = getelementptr inbounds nuw i8, ptr %.2504, i64 48
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !387 ; 2 uses
  %.not410 = icmp eq ptr %i.lc, null
  br i1 %.not410, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !96
  %i.lf = add i64 %i.le, -17
  %i.lg = sub i64 %i.lf, %i.ky
  %i.lh = icmp ult i64 %i.lg, -33
  br i1 %i.lh, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.li = getelementptr inbounds nuw i8, ptr %.2504, i64 16
  store i64 %i.ky, ptr %i.li, align 8, !tbaa !96
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bm, %bb.bn, %bb.bo, %bb.bl, %bb.bk, %bb.bi
  %i.lj = phi i64 [ %i.kt, %bb.bm ], [ %i.kt, %bb.bn ], [ %i.ky, %bb.bo ], [ %i.kt, %bb.bl ], [ %i.kt, %bb.bk ], [ %i.kt, %bb.bi ] ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.2504, i64 88
  %i.ll = icmp ult ptr %i.lk, %i.j
  br i1 %i.ll, label %bb.bq, label %bb.bx

bb.bq:                                            ; preds = %bb.bp
  %i.lm = getelementptr inbounds nuw i8, ptr %.2504, i64 112
  %i.ln = load i8, ptr %i.lm, align 8, !tbaa !202
  %i.lo = and i8 %i.ln, 4
  %.not411 = icmp eq i8 %i.lo, 0
  br i1 %.not411, label %bb.bx, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lp = getelementptr inbounds nuw i8, ptr %.2504, i64 104
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !96 ; 3 uses
  br i1 %.0346459, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lr = icmp slt i64 %i.lj, %i.lq
  br i1 %i.lr, label %bb.bu, label %bb.bx

bb.bt:                                            ; preds = %bb.br
  %i.ls = icmp sgt i64 %i.lj, %i.lq
  br i1 %i.ls, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.lt = getelementptr inbounds nuw i8, ptr %.2504, i64 48
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !387 ; 2 uses
  %.not413 = icmp eq ptr %i.lu, null
  br i1 %.not413, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !96
  %i.lx = getelementptr inbounds i8, ptr %.2504, i64 -72
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !96
  %i.lz = add i64 %i.lw, -17
  %i.ma = sub i64 %i.lz, %i.ly
  %i.mb = icmp ult i64 %i.ma, -33
  br i1 %i.mb, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.mc = getelementptr inbounds nuw i8, ptr %.2504, i64 16
  store i64 %i.lq, ptr %i.mc, align 8, !tbaa !96
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bp, %bb.bq, %bb.bs, %bb.bt, %bb.bw, %bb.bv, %bb.bu, %.lr.ph506
  %.9 = phi ptr [ %.7503, %.lr.ph506 ], [ %.8, %bb.bu ], [ %.8, %bb.bv ], [ %.8, %bb.bw ], [ %.8, %bb.bt ], [ %.8, %bb.bs ], [ %.8, %bb.bq ], [ %.8, %bb.bp ]
  %i.md = getelementptr inbounds nuw i8, ptr %.2504, i64 88 ; 2 uses
  %i.me = icmp ult ptr %i.md, %i.j
  br i1 %i.me, label %.lr.ph506, label %.loopexit, !llvm.loop !446

.loopexit:                                        ; preds = %bb.bx, %bb.aw
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @af_latin_compute_stem_width(i32 %.5148.val, ptr nofree readonly captures(none) %.5152.val, i32 noundef range(i32 0, 2) %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 0, 256) %3, i32 noundef range(i32 0, 256) %4) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.5152.val, i64 80
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [19600 x i8], ptr %i.a, i64 %i.b ; 7 uses
  %.not7 = icmp eq i32 %0, 0                      ; 2 uses
  %i.d = and i32 %.5148.val, 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 424
  %i.f = load i8, ptr %i.e, align 8, !tbaa !154
  %.not111 = icmp eq i8 %i.f, 0
  br i1 %.not111, label %bb.c, label %bb.ak

bb.c:                                             ; preds = %bb.b
  %spec.select = tail call i64 @llvm.abs.i64(i64 %1, i1 true) ; 21 uses
  br i1 %.not7, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %.5148.val, 2
  %.not112 = icmp eq i32 %i.g, 0
  br i1 %.not112, label %bb.e, label %bb.u

.critedge:                                        ; preds = %bb.c
  %i.h = and i32 %.5148.val, 1
  %.not113 = icmp eq i32 %i.h, 0
  br i1 %.not113, label %.thread, label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.i = and i32 %4, 2
  %i.j = icmp ne i32 %i.i, 0
  %i.k = icmp samesign ult i64 %spec.select, 192
  %or.cond3 = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond3, label %bb.aj, label %.thread

.thread:                                          ; preds = %.critedge, %bb.e
  %i.l = and i32 %3, 1
  %.not114 = icmp eq i32 %i.l, 0
  br i1 %.not114, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.m = icmp samesign ult i64 %spec.select, 80
  %spec.store.select = select i1 %i.m, i64 64, i64 %spec.select
  br label %bb.h

bb.g:                                             ; preds = %.thread
  %spec.store.select4 = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 56)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.1 = phi i64 [ %spec.store.select, %bb.f ], [ %spec.store.select4, %bb.g ] ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
end_hunk_0
