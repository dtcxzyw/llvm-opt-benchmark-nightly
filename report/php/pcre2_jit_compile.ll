Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_jit_compile?download=true
inline.NumInlined: 5888
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 17
begin_hunk_0_@jit_compile:bb.a
  store i32 %.sink5984, ptr %i.bb, align 8, !tbaa !85
  store i32 %i.az, ptr %i.bc, align 4, !tbaa !86
  store i32 %.5985, ptr %i.bg, align 8, !tbaa !88
  store i32 10, ptr %i.bh, align 4, !tbaa !89
  br label %.preheader6044

bb.q:                                             ; preds = %bb.l
  store i32 0, ptr %i.s, align 4, !tbaa !76
  br label %.preheader6044

.preheader6044:                                   ; preds = %bb.q, %bb.p
  br label %bb.r

bb.r:                                             ; preds = %.preheader6044, %bb.r
  %.0.i = phi ptr [ %i.ch, %bb.r ], [ %i.p, %.preheader6044 ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !97
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !97
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.cc
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !97
  %i.cj = icmp eq i8 %i.ci, 120
  br i1 %i.cj, label %bb.r, label %bracketend.exit, !llvm.loop !0

bracketend.exit:                                  ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 3 ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 30 uses
  store i32 40, ptr %i.cl, align 4, !tbaa !98
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 9 uses
  %i.cn = load i16, ptr %i.cm, align 8, !tbaa !99
  %i.co = zext i16 %i.cn to i64
  %i.cp = add nuw nsw i64 %i.co, 1
  %.val690 = load ptr, ptr %0, align 8, !tbaa !100
  %i.cq = getelementptr i8, ptr %0, i64 16        ; 30 uses
  %.val691 = load ptr, ptr %i.cq, align 8, !tbaa !101
  %i.cr = tail call ptr %.val690(i64 noundef %i.cp, ptr noundef %.val691) #20, !inline_history !1 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 17 uses
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !102
  %.not609 = icmp eq ptr %i.cr, null
  br i1 %.not609, label %_pcre2_jit_free_rodata_8.exit, label %bb.s

bb.s:                                             ; preds = %bracketend.exit
  %i.ct = load i16, ptr %i.cm, align 8, !tbaa !99
  %i.cu = zext i16 %i.ct to i64
  %i.cv = add nuw nsw i64 %i.cu, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cr, i8 1, i64 %i.cv, i1 false)
  %i.cw = icmp ult ptr %i.p, %i.ck
  br i1 %i.cw, label %.lr.ph119.i, label %check_opcode_types.exit

.lr.ph119.i:                                      ; preds = %bb.s
  %i.cx = getelementptr inbounds i8, ptr %i.p, i64 -1 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 100 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 184 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 180 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 492 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 172
  br label %bb.t

bb.t:                                             ; preds = %bb.bd, %.lr.ph119.i
  %.0117.i = phi ptr [ %i.cx, %.lr.ph119.i ], [ %.2.i, %bb.bd ] ; 21 uses
  %.097116.i = phi ptr [ %i.cx, %.lr.ph119.i ], [ %.299.i, %bb.bd ] ; 19 uses
  %.0103115.i = phi ptr [ %i.p, %.lr.ph119.i ], [ %.1104.i, %bb.bd ] ; 40 uses
  %i.dh = load i8, ptr %.0103115.i, align 1, !tbaa !97 ; 2 uses
  switch i8 %i.dh, label %bb.bc [
    i8 3, label %bb.u
    i8 114, label %bb.v
    i8 113, label %bb.x
    i8 -125, label %.preheader6041
    i8 -124, label %.preheader6041
    i8 -118, label %bb.z
    i8 -113, label %bb.z
    i8 -117, label %bb.aa
    i8 -112, label %bb.aa
    i8 -111, label %bb.ab
    i8 115, label %bb.ac
    i8 116, label %bb.ac
    i8 -110, label %bb.ac
    i8 117, label %bb.ad
    i8 118, label %bb.ag
    i8 119, label %bb.ag
    i8 -127, label %.preheader.i
    i8 -96, label %bb.am
    i8 -94, label %bb.an
    i8 -100, label %bb.an
    i8 -102, label %bb.ao
    i8 -97, label %bb.ar
    i8 -99, label %bb.as
    i8 -98, label %bb.aw
    i8 -101, label %bb.ba
    i8 -95, label %bb.ba
    i8 -91, label %bb.ba
  ]

.preheader6041:                                   ; preds = %bb.t, %bb.t
  br label %bb.y

bb.u:                                             ; preds = %bb.t
  store i32 1, ptr %i.dg, align 4, !tbaa !103
  store i32 1, ptr %i.ai, align 8, !tbaa !81
  %i.di = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 1
  br label %bb.bd

bb.v:                                             ; preds = %bb.t
  %i.dj = load i32, ptr %i.df, align 4, !tbaa !104
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dl = load i32, ptr %i.cl, align 4, !tbaa !98 ; 2 uses
  store i32 %i.dl, ptr %i.df, align 4, !tbaa !104
  %i.dm = add i32 %i.dl, 24
  store i32 %i.dm, ptr %i.cl, align 4, !tbaa !98
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t
  %i.dn = load ptr, ptr %i.cs, align 8, !tbaa !102
  %i.do = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !97
  %i.dq = zext i8 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 2
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !97
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.du
  store i8 0, ptr %i.dw, align 1, !tbaa !97
  %i.dx = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 3
  br label %bb.bd

bb.y:                                             ; preds = %.preheader6041, %bb.y
  %.0.i.i = phi ptr [ %i.eg, %bb.y ], [ %.0103115.i, %.preheader6041 ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !97
  %i.ea = zext i8 %i.dz to i64
  %i.eb = shl nuw nsw i64 %i.ea, 8
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !97
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.eb
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ee ; 3 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !97
  %i.ei = icmp eq i8 %i.eh, 120
  br i1 %i.ei, label %bb.y, label %bracketend.exit.i, !llvm.loop !0

bracketend.exit.i:                                ; preds = %bb.y
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 3 ; 2 uses
  %i.ek = icmp ugt ptr %i.ej, %.0117.i
  %spec.select.i = select i1 %i.ek, ptr %i.ej, ptr %.0117.i
  %i.el = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 3
  br label %bb.bd

bb.z:                                             ; preds = %bb.t, %bb.t
  %i.em = load ptr, ptr %i.cs, align 8, !tbaa !102
  %i.en = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 3
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !97
  %i.ep = zext i8 %i.eo to i64
  %i.eq = shl nuw nsw i64 %i.ep, 8
  %i.er = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 4
  %i.es = load i8, ptr %i.er, align 1, !tbaa !97
  %i.et = zext i8 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.eq
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.et
  store i8 0, ptr %i.ev, align 1, !tbaa !97
  %i.ew = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 5
  br label %bb.bd

bb.aa:                                            ; preds = %bb.t, %bb.t
  %i.ex = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 3 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !97
  %i.ez = and i8 %i.ey, -2
  %switch.i = icmp eq i8 %i.ez, 118
  br i1 %switch.i, label %bb.be, label %bb.bd

bb.ab:                                            ; preds = %bb.t
  %i.fa = load ptr, ptr %i.cs, align 8, !tbaa !102
  %i.fb = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !97
  %i.fd = zext i8 %i.fc to i64
  %i.fe = shl nuw nsw i64 %i.fd, 8
  %i.ff = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 2
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !97
  %i.fh = zext i8 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fe
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fh
  store i8 0, ptr %i.fj, align 1, !tbaa !97
  %i.fk = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 3
  br label %bb.bd

bb.ac:                                            ; preds = %bb.t, %bb.t, %bb.t
  %i.fl = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 3
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !97
  %i.fn = zext i8 %i.fm to i32
  %i.fo = shl nuw nsw i32 %i.fn, 8                ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 4
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !97
  %i.fr = zext i8 %i.fq to i32                    ; 3 uses
  %i.fs = or disjoint i32 %i.fo, %i.fr            ; 3 uses
  %.not.i = icmp eq i32 %i.fs, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ac
  %i.ft = load ptr, ptr %i.h, align 8, !tbaa !72
  %i.fu = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !97
  %i.fw = zext i8 %i.fv to i64
  %i.fx = shl nuw nsw i64 %i.fw, 8
  %i.fy = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 2
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !97
  %i.ga = zext i8 %i.fz to i64
  %i.gb = or disjoint i64 %i.fx, %i.ga
  %i.gc = load i64, ptr %i.bq, align 8, !tbaa !92
  %i.gd = mul nsw i64 %i.gb, %i.gc
  %i.ge = getelementptr inbounds i8, ptr %i.ft, i64 %i.gd ; 4 uses
  %5 = add nsw i32 %i.fo, -1
  %xtraiter = and i32 %i.fr, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.gf = add nsw i32 %i.fs, -1
  %i.gg = load ptr, ptr %i.cs, align 8, !tbaa !102
  %i.gh = load i8, ptr %i.ge, align 1, !tbaa !97
  %i.gi = zext i8 %i.gh to i64
  %i.gj = shl nuw nsw i64 %i.gi, 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !97
  %i.gm = zext i8 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gj
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gm
  store i8 0, ptr %i.go, align 1, !tbaa !97
  %i.gp = load i64, ptr %i.bq, align 8, !tbaa !92
  %i.gq = getelementptr inbounds i8, ptr %i.ge, i64 %i.gp
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.0100114.i.unr = phi ptr [ %i.ge, %.lr.ph.preheader.i ], [ %i.gq, %.lr.ph.i.prol ]
  %.0101113.i.unr = phi i32 [ %i.fs, %.lr.ph.preheader.i ], [ %i.gf, %.lr.ph.i.prol ]
  %6 = sub nsw i32 0, %i.fr
  %i.gr = icmp eq i32 %5, %6
  br i1 %i.gr, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0100114.i = phi ptr [ %i.ho, %.lr.ph.i ], [ %.0100114.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.0101113.i = phi i32 [ %i.hd, %.lr.ph.i ], [ %.0101113.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.gs = load ptr, ptr %i.cs, align 8, !tbaa !102
  %i.gt = load i8, ptr %.0100114.i, align 1, !tbaa !97
  %i.gu = zext i8 %i.gt to i64
  %i.gv = shl nuw nsw i64 %i.gu, 8
  %i.gw = getelementptr inbounds nuw i8, ptr %.0100114.i, i64 1
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !97
  %i.gy = zext i8 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gv
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gy
  store i8 0, ptr %i.ha, align 1, !tbaa !97
  %i.hb = load i64, ptr %i.bq, align 8, !tbaa !92
  %i.hc = getelementptr inbounds i8, ptr %.0100114.i, i64 %i.hb ; 3 uses
  %i.hd = add nsw i32 %.0101113.i, -2
  %i.he = load ptr, ptr %i.cs, align 8, !tbaa !102
  %i.hf = load i8, ptr %i.hc, align 1, !tbaa !97
  %i.hg = zext i8 %i.hf to i64
  %i.hh = shl nuw nsw i64 %i.hg, 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 1
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !97
  %i.hk = zext i8 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hh
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hk
  store i8 0, ptr %i.hm, align 1, !tbaa !97
  %i.hn = load i64, ptr %i.bq, align 8, !tbaa !92
  %i.ho = getelementptr inbounds i8, ptr %i.hc, i64 %i.hn
  %i.hp = icmp sgt i32 %.0101113.i, 2
  br i1 %i.hp, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !269

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.ac
  %i.hq = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 5
  br label %bb.bd

bb.ad:                                            ; preds = %bb.t
  %i.hr = load i32, ptr %i.de, align 8, !tbaa !105
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ht = load i32, ptr %i.cl, align 4, !tbaa !98 ; 2 uses
  store i32 %i.ht, ptr %i.de, align 8, !tbaa !105
  %i.hu = add i32 %i.ht, 8
  store i32 %i.hu, ptr %i.cl, align 4, !tbaa !98
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.hv = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 3
  br label %bb.bd

bb.ag:                                            ; preds = %bb.t, %bb.t
  %i.hw = load i32, ptr %i.dd, align 8, !tbaa !106
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hy = load i32, ptr %i.cl, align 4, !tbaa !98 ; 2 uses
  store i32 %i.hy, ptr %i.dd, align 8, !tbaa !106
  %i.hz = add i32 %i.hy, 8
  store i32 %i.hz, ptr %i.cl, align 4, !tbaa !98
  %.pre.i = load i8, ptr %.0103115.i, align 1, !tbaa !97
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ia = phi i8 [ %.pre.i, %bb.ah ], [ %i.dh, %bb.ag ]
  %i.ib = icmp eq i8 %i.ia, 118
  br i1 %i.ib, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ic = load i8, ptr getelementptr inbounds nuw (i8, ptr @_pcre2_OP_lengths_8, i64 118), align 1, !tbaa !97
  %i.id = zext i8 %i.ic to i64
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ie = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 5
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !97
  %i.ig = zext i8 %i.if to i64
  %i.ih = shl nuw nsw i64 %i.ig, 8
  %i.ii = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 6
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !97
  %i.ik = zext i8 %i.ij to i64
  %i.il = or disjoint i64 %i.ih, %i.ik
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.im = phi i64 [ %i.id, %bb.aj ], [ %i.il, %bb.ak ]
  %i.in = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 %i.im
  br label %bb.bd

.preheader.i:                                     ; preds = %bb.t, %.preheader.i
  %.0.i110.i = phi ptr [ %i.iw, %.preheader.i ], [ %.0103115.i, %bb.t ] ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.0.i110.i, i64 1
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !97
  %i.iq = zext i8 %i.ip to i64
  %i.ir = shl nuw nsw i64 %i.iq, 8
  %i.is = getelementptr inbounds nuw i8, ptr %.0.i110.i, i64 2
  %i.it = load i8, ptr %i.is, align 1, !tbaa !97
  %i.iu = zext i8 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %.0.i110.i, i64 %i.ir
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.iu ; 3 uses
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !97
  %i.iy = icmp eq i8 %i.ix, 120
  br i1 %i.iy, label %.preheader.i, label %bracketend.exit111.i, !llvm.loop !0

bracketend.exit111.i:                             ; preds = %.preheader.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 3 ; 2 uses
  %i.ja = icmp ugt ptr %i.iz, %.097116.i
  %spec.select109.i = select i1 %i.ja, ptr %i.iz, ptr %.097116.i
  %i.jb = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 3
  br label %bb.bd

bb.am:                                            ; preds = %bb.t
  store i32 1, ptr %i.db, align 4, !tbaa !107
  store i32 1, ptr %i.cy, align 4, !tbaa !108
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.t, %bb.t
  %i.jc = icmp ult ptr %.0103115.i, %.0117.i
  br i1 %i.jc, label %bb.be, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.t
  %i.jd = load i32, ptr %i.dc, align 8, !tbaa !109
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.jf = load i32, ptr %i.cl, align 4, !tbaa !98 ; 2 uses
  store i32 %i.jf, ptr %i.dc, align 8, !tbaa !109
  %i.jg = add i32 %i.jf, 8
  store i32 %i.jg, ptr %i.cl, align 4, !tbaa !98
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.jh = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 1
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !97
  %i.jj = zext i8 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 3
  br label %bb.bd

bb.ar:                                            ; preds = %bb.t
  store i32 1, ptr %i.db, align 4, !tbaa !107
  store i32 1, ptr %i.cy, align 4, !tbaa !108
  %i.jm = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 1
  br label %bb.bd

bb.as:                                            ; preds = %bb.t
  %i.jn = icmp ult ptr %.0103115.i, %.097116.i
  br i1 %i.jn, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 1, ptr %i.da, align 8, !tbaa !414
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.jo = icmp ult ptr %.0103115.i, %.0117.i
  br i1 %i.jo, label %bb.be, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jp = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 1
  br label %bb.bd

bb.aw:                                            ; preds = %bb.t
  store i32 1, ptr %i.cy, align 4, !tbaa !108
  store i32 1, ptr %i.cz, align 8, !tbaa !110
  %i.jq = icmp ult ptr %.0103115.i, %.097116.i
  br i1 %i.jq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 1, ptr %i.da, align 8, !tbaa !414
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.jr = icmp ult ptr %.0103115.i, %.0117.i
  br i1 %i.jr, label %bb.be, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.js = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 1
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !97
  %i.ju = zext i8 %i.jt to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 3
  br label %bb.bd

bb.ba:                                            ; preds = %bb.t, %bb.t, %bb.t
  %i.jx = icmp ult ptr %.0103115.i, %.0117.i
  br i1 %i.jx, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jy = getelementptr inbounds nuw i8, ptr %.0103115.i, i64 1
  br label %bb.bd

bb.bc:                                            ; preds = %bb.t
  %i.jz = call fastcc ptr @next_opcode(ptr noundef nonnull %4, ptr noundef nonnull %.0103115.i) ; 2 uses
  %i.ka = icmp eq ptr %i.jz, null
  br i1 %i.ka, label %bb.be, label %bb.bd

end_hunk_0
