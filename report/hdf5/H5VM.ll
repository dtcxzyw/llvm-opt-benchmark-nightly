Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5VM?download=true
inline.NumInlined: 16
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@H5VM_hyper_copy:bb.a
  %i.by = sub i64 %i.bv, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.by, ptr %i.bz, align 16, !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !8  ; 4 uses
  %i.cc = sub i64 %i.cb, %i.bx
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.cc, ptr %i.cd, align 16, !tbaa !8
  br i1 %.not140, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !8
  %i.cg = mul i64 %i.cf, %i.bv
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.ch = phi i64 [ %i.cg, %bb.v ], [ 0, %bb.u ]
  %i.ci = add i64 %i.ch, %i.m
  br i1 %.not141, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !8
  %i.cl = mul i64 %i.ck, %i.cb
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.cm = phi i64 [ %i.cl, %bb.x ], [ 0, %bb.w ]
  %i.cn = add i64 %i.cm, %i.p
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !8  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cr = load i64, ptr %i.cq, align 16, !tbaa !8 ; 2 uses
  %i.cs = sub i64 %i.cp, %i.cr
  %i.ct = mul i64 %i.cs, %i.bv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !8  ; 2 uses
  %i.cx = sub i64 %i.cw, %i.cr
  %i.cy = mul i64 %i.cx, %i.cb
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !8
  %i.da = mul i64 %i.cp, %i.bv                    ; 3 uses
  %i.db = mul i64 %i.cw, %i.cb                    ; 3 uses
  br i1 %.not140, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !8
  %i.de = mul i64 %i.dd, %i.da
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.df = phi i64 [ %i.de, %bb.z ], [ 0, %bb.y ]
  %i.dg = add i64 %i.ci, %i.df
  br i1 %.not141, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !8
  %i.dj = mul i64 %i.di, %i.db
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.dk = phi i64 [ %i.dj, %bb.ab ], [ 0, %bb.aa ]
  %i.dl = add i64 %i.cn, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !8  ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !8  ; 2 uses
  %i.dq = sub i64 %i.dn, %i.dp
  %i.dr = mul i64 %i.dq, %i.da
  store i64 %i.dr, ptr %i.d, align 16, !tbaa !8
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !8  ; 2 uses
  %i.du = sub i64 %i.dt, %i.dp
  %i.dv = mul i64 %i.du, %i.db
  store i64 %i.dv, ptr %i.c, align 16, !tbaa !8
  %i.dw = mul i64 %i.dt, %i.db
  br i1 %.not140, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dx = mul i64 %i.dn, %i.da
  %i.dy = load i64, ptr %3, align 8, !tbaa !8
  %i.dz = mul i64 %i.dx, %i.dy
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.ea = phi i64 [ %i.dz, %bb.ad ], [ 0, %bb.ac ]
  %i.eb = add i64 %i.dg, %i.ea
  br i1 %.not141, label %.thread178, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ec = load i64, ptr %6, align 8, !tbaa !8
  %i.ed = mul i64 %i.dw, %i.ec
  br label %.thread178

.thread178:                                       ; preds = %bb.af, %bb.ae
  %i.ee = phi i64 [ %i.ed, %bb.af ], [ 0, %bb.ae ]
  %i.ef = add i64 %i.dl, %i.ee
  br label %bb.ar

bb.ag:                                            ; preds = %bb.h
  %i.eg = add i32 %0, -2                          ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, -1
  br i1 %i.eh, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.ag
  %i.ei = zext nneg i32 %i.eg to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ak
  %indvars.iv = phi i64 [ %i.ei, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ak ] ; 7 uses
  %.0124201 = phi i64 [ 1, %.lr.ph.preheader ], [ %i.ex, %bb.ak ] ; 2 uses
  %.0125200 = phi i64 [ 1, %.lr.ph.preheader ], [ %i.ew, %bb.ak ] ; 2 uses
  %.0126199 = phi i64 [ %i.p, %.lr.ph.preheader ], [ %i.fh, %bb.ak ]
  %.0127198 = phi i64 [ %i.m, %.lr.ph.preheader ], [ %i.fc, %bb.ak ]
  %i.ej = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !8  ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ej
  %i.en = load i64, ptr %i.em, align 8, !tbaa !8  ; 2 uses
  %i.eo = sub i64 %i.el, %i.en
  %i.ep = mul i64 %i.eo, %.0125200
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !8
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ej
  %i.es = load i64, ptr %i.er, align 8, !tbaa !8  ; 2 uses
  %i.et = sub i64 %i.es, %i.en
  %i.eu = mul i64 %i.et, %.0124201
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !8
  %i.ew = mul i64 %i.el, %.0125200                ; 2 uses
  %i.ex = mul i64 %i.es, %.0124201                ; 2 uses
  br i1 %.not140, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !8
  %i.fa = mul i64 %i.ez, %i.ew
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %bb.ah
  %i.fb = phi i64 [ %i.fa, %bb.ah ], [ 0, %.lr.ph ]
  %i.fc = add i64 %i.fb, %.0127198                ; 2 uses
  br i1 %.not141, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !8
  %i.ff = mul i64 %i.fe, %i.ex
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.fg = phi i64 [ %i.ff, %bb.aj ], [ 0, %bb.ai ]
  %i.fh = add i64 %i.fg, %.0126199                ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.fi = icmp sgt i64 %indvars.iv, 0
  br i1 %i.fi, label %.lr.ph, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.ak, %bb.ag
  %.0127.lcssa = phi i64 [ %i.m, %bb.ag ], [ %i.fc, %bb.ak ] ; 10 uses
  %.0126.lcssa = phi i64 [ %i.p, %bb.ag ], [ %i.fh, %bb.ak ] ; 10 uses
  switch i32 %0, label %.lr.ph.i.preheader [
    i32 1, label %bb.al
    i32 2, label %bb.am
    i32 3, label %bb.ao
    i32 4, label %bb.ar
    i32 0, label %.loopexit192
  ]

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %i.fj = load i64, ptr %i.i, align 8, !tbaa !8
  %i.fk = icmp eq i64 %i.fj, 1
  br i1 %i.fk, label %.lr.ph206, label %.loopexit

bb.al:                                            ; preds = %._crit_edge
  %i.fl = load i64, ptr %i.d, align 16, !tbaa !8
  %i.fm = icmp eq i64 %i.fl, 1
  %i.fn = load i64, ptr %i.c, align 16
  %i.fo = icmp eq i64 %i.fn, 1
  %or.cond = select i1 %i.fm, i1 %i.fo, i1 false
  br i1 %or.cond, label %.critedge.sink.split.i, label %.loopexit

bb.am:                                            ; preds = %.thread, %._crit_edge
  %.1172 = phi i64 [ %i.af, %.thread ], [ %.0126.lcssa, %._crit_edge ] ; 3 uses
  %.1128169 = phi i64 [ %i.ab, %.thread ], [ %.0127.lcssa, %._crit_edge ] ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !8
  %i.fr = icmp eq i64 %i.fq, 1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ft = load i64, ptr %i.fs, align 8
  %i.fu = icmp eq i64 %i.ft, 1
  %or.cond247 = select i1 %i.fr, i1 %i.fu, i1 false
  br i1 %or.cond247, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %bb.am
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !8  ; 4 uses
  %i.fx = load i64, ptr %i.d, align 16, !tbaa !8  ; 2 uses
  %i.fy = add i64 %i.fx, %i.fw
  store i64 %i.fy, ptr %i.d, align 16, !tbaa !8
  %i.fz = load i64, ptr %i.c, align 16, !tbaa !8  ; 2 uses
  %i.ga = add i64 %i.fz, %i.fw
  store i64 %i.ga, ptr %i.c, align 16, !tbaa !8
  %i.gb = icmp eq i64 %i.fx, 0
  %i.gc = icmp eq i64 %i.fz, 0
  %or.cond.i = select i1 %i.gb, i1 %i.gc, i1 false
  br i1 %or.cond.i, label %.critedge.sink.split.i, label %.loopexit

bb.ao:                                            ; preds = %.thread173, %._crit_edge
  %.1177 = phi i64 [ %i.bt, %.thread173 ], [ %.0126.lcssa, %._crit_edge ] ; 4 uses
  %.1128176 = phi i64 [ %i.bp, %.thread173 ], [ %.0127.lcssa, %._crit_edge ] ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ge = load i64, ptr %i.gd, align 16, !tbaa !8
  %i.gf = icmp eq i64 %i.ge, 1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gh = load i64, ptr %i.gg, align 16
  %i.gi = icmp eq i64 %i.gh, 1
  %or.cond250 = select i1 %i.gf, i1 %i.gi, i1 false
  br i1 %or.cond250, label %bb.ap, label %.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gk = load i64, ptr %i.gj, align 16, !tbaa !8 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !8  ; 2 uses
  %i.gn = add i64 %i.gm, %i.gk                    ; 2 uses
  store i64 %i.gn, ptr %i.gl, align 8, !tbaa !8
  %i.go = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !8  ; 2 uses
  %i.gq = add i64 %i.gp, %i.gk
  store i64 %i.gq, ptr %i.go, align 8, !tbaa !8
  %i.gr = icmp eq i64 %i.gm, 0
  %i.gs = icmp eq i64 %i.gp, 0
  %or.cond143.i = select i1 %i.gr, i1 %i.gs, i1 false
  br i1 %or.cond143.i, label %bb.aq, label %.loopexit

bb.aq:                                            ; preds = %bb.ap
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !8  ; 2 uses
  %8 = mul i64 %i.gu, %i.gk                       ; 3 uses
  %i.gv = mul i64 %i.gu, %i.gn
  %i.gw = load i64, ptr %i.d, align 16, !tbaa !8
  %i.gx = add i64 %i.gw, %i.gv                    ; 2 uses
  store i64 %i.gx, ptr %i.d, align 16, !tbaa !8
  %i.gy = load i64, ptr %i.c, align 16, !tbaa !8  ; 2 uses
  %i.gz = add i64 %i.gy, %8                       ; 2 uses
  store i64 %i.gz, ptr %i.c, align 16, !tbaa !8
  %i.ha = icmp eq i64 %i.gx, %8
  %i.hb = icmp eq i64 %i.gy, 0
  %or.cond144.i = select i1 %i.ha, i1 %i.hb, i1 false
  br i1 %or.cond144.i, label %.critedge.sink.split.i, label %.loopexit

bb.ar:                                            ; preds = %.thread178, %._crit_edge
  %.1182 = phi i64 [ %i.ef, %.thread178 ], [ %.0126.lcssa, %._crit_edge ] ; 5 uses
  %.1128181 = phi i64 [ %i.eb, %.thread178 ], [ %.0127.lcssa, %._crit_edge ] ; 5 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !8
  %i.he = icmp eq i64 %i.hd, 1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.hg = load i64, ptr %i.hf, align 8
  %i.hh = icmp eq i64 %i.hg, 1
  %or.cond253 = select i1 %i.he, i1 %i.hh, i1 false
  br i1 %or.cond253, label %bb.as, label %.loopexit

bb.as:                                            ; preds = %bb.ar
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !8  ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 16, !tbaa !8 ; 2 uses
  %i.hm = add i64 %i.hl, %i.hj                    ; 2 uses
  store i64 %i.hm, ptr %i.hk, align 16, !tbaa !8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 16, !tbaa !8 ; 2 uses
  %i.hp = add i64 %i.ho, %i.hj
  store i64 %i.hp, ptr %i.hn, align 16, !tbaa !8
  %i.hq = icmp eq i64 %i.hl, 0
  %i.hr = icmp eq i64 %i.ho, 0
  %or.cond145.i = select i1 %i.hq, i1 %i.hr, i1 false
  br i1 %or.cond145.i, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %bb.as
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ht = load i64, ptr %i.hs, align 16, !tbaa !8 ; 2 uses
  %9 = mul i64 %i.ht, %i.hj                       ; 4 uses
  %i.hu = mul i64 %i.ht, %i.hm
  %i.hv = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !8
  %i.hx = add i64 %i.hw, %i.hu                    ; 2 uses
  store i64 %i.hx, ptr %i.hv, align 8, !tbaa !8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !8  ; 2 uses
  %i.ia = add i64 %i.hz, %9                       ; 2 uses
  store i64 %i.ia, ptr %i.hy, align 8, !tbaa !8
  %i.ib = icmp eq i64 %i.hx, %9
  %i.ic = icmp eq i64 %i.hz, 0
  %or.cond146.i = select i1 %i.ib, i1 %i.ic, i1 false
  br i1 %or.cond146.i, label %bb.au, label %.loopexit

bb.au:                                            ; preds = %bb.at
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !8  ; 2 uses
  %10 = mul i64 %i.ie, %i.ia                      ; 3 uses
  %i.if = mul i64 %i.ie, %9
  %i.ig = load i64, ptr %i.d, align 16, !tbaa !8
  %i.ih = add i64 %i.ig, %i.if                    ; 2 uses
  store i64 %i.ih, ptr %i.d, align 16, !tbaa !8
  %i.ii = load i64, ptr %i.c, align 16, !tbaa !8  ; 2 uses
  %i.ij = add i64 %i.ii, %10                      ; 2 uses
  store i64 %i.ij, ptr %i.c, align 16, !tbaa !8
  %i.ik = icmp eq i64 %i.ih, %10
  %i.il = icmp eq i64 %i.ii, 0
  %or.cond147.i = select i1 %i.ik, i1 %i.il, i1 false
  br i1 %or.cond147.i, label %.critedge.sink.split.i, label %.loopexit

.lr.ph206:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.im = phi i64 [ %i.iu, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 3 uses
  %i.in = phi i64 [ %i.je, %.lr.ph.i ], [ %i.h, %.lr.ph.i.preheader ] ; 2 uses
  %i.io = phi i32 [ %i.jd, %.lr.ph.i ], [ %i.g, %.lr.ph.i.preheader ] ; 4 uses
  %.0163204 = phi i32 [ %i.io, %.lr.ph.i ], [ %0, %.lr.ph.i.preheader ] ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.in
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !8
  %i.ir = icmp eq i64 %i.iq, %i.im
  br i1 %i.ir, label %bb.av, label %.loopexit

bb.av:                                            ; preds = %.lr.ph206
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.in
  %i.it = load i64, ptr %i.is, align 8, !tbaa !8
  %i.iu = mul i64 %i.it, %i.im                    ; 6 uses
  %.not142.i = icmp eq i32 %i.io, 0
  br i1 %.not142.i, label %.loopexit192, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.av
  %i.iv = add i32 %.0163204, -2
  %i.iw = zext i32 %i.iv to i64                   ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.iw ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !8
  %i.iz = add i64 %i.iy, %i.iu
  store i64 %i.iz, ptr %i.ix, align 8, !tbaa !8
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.iw ; 2 uses
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !8
  %i.jc = add i64 %i.jb, %i.iu
  store i64 %i.jc, ptr %i.ja, align 8, !tbaa !8
  %i.jd = add i32 %i.io, -1                       ; 2 uses
  %i.je = zext i32 %i.jd to i64                   ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.je
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !8
  %i.jh = icmp eq i64 %i.jg, %i.iu
  br i1 %i.jh, label %.lr.ph206, label %.loopexit, !llvm.loop !21

.critedge.sink.split.i:                           ; preds = %bb.al, %bb.au, %bb.aq, %bb.an
  %.1171 = phi i64 [ %.1177, %bb.aq ], [ %.1172, %bb.an ], [ %.0126.lcssa, %bb.al ], [ %.1182, %bb.au ]
  %.1128168 = phi i64 [ %.1128176, %bb.aq ], [ %.1128169, %bb.an ], [ %.0127.lcssa, %bb.al ], [ %.1128181, %bb.au ]
  %.sink163.i = phi i64 [ %i.gz, %bb.aq ], [ %i.fw, %bb.an ], [ 1, %bb.al ], [ %i.ij, %bb.au ]
  %i.ji = load i64, ptr %i.b, align 16, !tbaa !8
  %i.jj = mul i64 %i.ji, %.sink163.i
  br label %.loopexit192

.loopexit:                                        ; preds = %.lr.ph.i, %.lr.ph206, %.lr.ph.i.preheader, %bb.al, %bb.an, %bb.am, %bb.aq, %bb.ap, %bb.ao, %bb.au, %bb.at, %bb.as, %bb.ar
  %.1170.ph = phi i64 [ %.1182, %bb.ar ], [ %.0126.lcssa, %bb.al ], [ %.1182, %bb.as ], [ %.1182, %bb.at ], [ %.1182, %bb.au ], [ %.1177, %bb.ao ], [ %.0126.lcssa, %.lr.ph.i.preheader ], [ %.1177, %bb.ap ], [ %.1177, %bb.aq ], [ %.1172, %bb.am ], [ %.1172, %bb.an ], [ %.0126.lcssa, %.lr.ph206 ], [ %.0126.lcssa, %.lr.ph.i ]
  %.1128167.ph = phi i64 [ %.1128181, %bb.ar ], [ %.0127.lcssa, %bb.al ], [ %.1128181, %bb.as ], [ %.1128181, %bb.at ], [ %.1128181, %bb.au ], [ %.1128176, %bb.ao ], [ %.0127.lcssa, %.lr.ph.i.preheader ], [ %.1128176, %bb.ap ], [ %.1128176, %bb.aq ], [ %.1128169, %bb.am ], [ %.1128169, %bb.an ], [ %.0127.lcssa, %.lr.ph206 ], [ %.0127.lcssa, %.lr.ph.i ]
  %.1164.ph = phi i32 [ 4, %bb.ar ], [ 1, %bb.al ], [ 3, %bb.as ], [ 2, %bb.at ], [ 1, %bb.au ], [ 3, %bb.ao ], [ %0, %.lr.ph.i.preheader ], [ 2, %bb.ap ], [ 1, %bb.aq ], [ 2, %bb.am ], [ 1, %bb.an ], [ %i.io, %.lr.ph.i ], [ %.0163204, %.lr.ph206 ] ; 5 uses
  %.1162.ph = phi i64 [ 1, %bb.ar ], [ 1, %bb.al ], [ %i.hj, %bb.as ], [ %9, %bb.at ], [ %10, %bb.au ], [ 1, %bb.ao ], [ 1, %.lr.ph.i.preheader ], [ %i.gk, %bb.ap ], [ %8, %bb.aq ], [ 1, %bb.am ], [ %i.fw, %bb.an ], [ %i.iu, %.lr.ph.i ], [ %i.im, %.lr.ph206 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.jk = zext i32 %.1164.ph to i64
  %i.jl = shl nuw nsw i64 %i.jk, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 16 %i.b, i64 %i.jl, i1 false)
  %i.jm = add i32 %.1164.ph, -1
  %xtraiter = and i32 %.1164.ph, 7                ; 3 uses
  %i.jn = icmp ult i32 %i.jm, 7
  br i1 %i.jn, label %.lr.ph.i.i.epil.preheader, label %.loopexit.new

.loopexit.new:                                    ; preds = %.loopexit
  %unroll_iter = and i32 %.1164.ph, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.new
  %.011.i.i = phi i64 [ 1, %.loopexit.new ], [ %i.kl, %.lr.ph.i.i ]
  %.0610.i.i = phi ptr [ %i.b, %.loopexit.new ], [ %i.kj, %.lr.ph.i.i ] ; 9 uses
  %niter = phi i32 [ 0, %.loopexit.new ], [ %niter.next.7, %.lr.ph.i.i ]
  %i.jo = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 8
  %i.jp = load i64, ptr %.0610.i.i, align 8, !tbaa !8
  %i.jq = mul i64 %i.jp, %.011.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 16
  %i.js = load i64, ptr %i.jo, align 8, !tbaa !8
  %i.jt = mul i64 %i.js, %i.jq
  %i.ju = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 24
  %i.jv = load i64, ptr %i.jr, align 8, !tbaa !8
  %i.jw = mul i64 %i.jv, %i.jt
  %i.jx = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 32
  %i.jy = load i64, ptr %i.ju, align 8, !tbaa !8
  %i.jz = mul i64 %i.jy, %i.jw
  %i.ka = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 40
  %i.kb = load i64, ptr %i.jx, align 8, !tbaa !8
  %i.kc = mul i64 %i.kb, %i.jz
  %i.kd = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 48
  %i.ke = load i64, ptr %i.ka, align 8, !tbaa !8
  %i.kf = mul i64 %i.ke, %i.kc
  %i.kg = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 56
  %i.kh = load i64, ptr %i.kd, align 8, !tbaa !8
  %i.ki = mul i64 %i.kh, %i.kf
  %i.kj = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 64 ; 2 uses
  %i.kk = load i64, ptr %i.kg, align 8, !tbaa !8
  %i.kl = mul i64 %i.kk, %i.ki                    ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %H5VM_vector_reduce_product.exit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !14

H5VM_vector_reduce_product.exit.i.unr-lcssa:      ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %H5VM_vector_reduce_product.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %H5VM_vector_reduce_product.exit.i.unr-lcssa, %.loopexit
  %.011.i.i.epil.init = phi i64 [ 1, %.loopexit ], [ %i.kl, %H5VM_vector_reduce_product.exit.i.unr-lcssa ]
  %.0610.i.i.epil.init = phi ptr [ %i.b, %.loopexit ], [ %i.kj, %H5VM_vector_reduce_product.exit.i.unr-lcssa ]
  %lcmp.mod267 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod267)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.011.i.i.epil = phi i64 [ %i.ko, %.lr.ph.i.i.epil ], [ %.011.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.0610.i.i.epil = phi ptr [ %i.km, %.lr.ph.i.i.epil ], [ %.0610.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.km = getelementptr inbounds nuw i8, ptr %.0610.i.i.epil, i64 8
  %i.kn = load i64, ptr %.0610.i.i.epil, align 8, !tbaa !8
  %i.ko = mul i64 %i.kn, %.011.i.i.epil           ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %H5VM_vector_reduce_product.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !22

H5VM_vector_reduce_product.exit.i:                ; preds = %.lr.ph.i.i.epil, %H5VM_vector_reduce_product.exit.i.unr-lcssa
  %.lcssa262 = phi i64 [ %i.kl, %H5VM_vector_reduce_product.exit.i.unr-lcssa ], [ %i.ko, %.lr.ph.i.i.epil ] ; 5 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %4, i64 %.1128167.ph ; 6 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %7, i64 %.1170.ph ; 6 uses
  %.not61.i = icmp eq i64 %.lcssa262, 0
  br i1 %.not61.i, label %H5VM_stride_copy.exit, label %.lr.ph60.i

.lr.ph60.i:                                       ; preds = %H5VM_vector_reduce_product.exit.i
  %.03152.i = add i32 %.1164.ph, -1               ; 2 uses
  %i.kr = icmp sgt i32 %.03152.i, -1
  br i1 %i.kr, label %.lr.ph.us.i, label %.lr.ph60.split.i.preheader

.lr.ph60.split.i.preheader:                       ; preds = %.lr.ph60.i
  %xtraiter268 = and i64 %.lcssa262, 3            ; 3 uses
  %i.ks = icmp ult i64 %.lcssa262, 4
  br i1 %i.ks, label %.lr.ph60.split.i.epil.preheader, label %.lr.ph60.split.i.preheader.new

.lr.ph60.split.i.preheader.new:                   ; preds = %.lr.ph60.split.i.preheader
  %unroll_iter272 = and i64 %.lcssa262, -4
  br label %.lr.ph60.split.i

.lr.ph.us.i:                                      ; preds = %.lr.ph60.i, %._crit_edge.us.i
  %.03259.us.i = phi i64 [ %i.lg, %._crit_edge.us.i ], [ 0, %.lr.ph60.i ]
  %.03358.us.i = phi ptr [ %i.kw, %._crit_edge.us.i ], [ %i.kq, %.lr.ph60.i ] ; 2 uses
  %.03557.us.i = phi ptr [ %i.kz, %._crit_edge.us.i ], [ %i.kp, %.lr.ph60.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03557.us.i, ptr align 1 %.03358.us.i, i64 %.1162.ph, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %.lr.ph.us.i
  %.03155.us.i = phi i32 [ %.03152.i, %.lr.ph.us.i ], [ %.031.us.i, %bb.ax ] ; 3 uses
  %.13454.us.i = phi ptr [ %.03358.us.i, %.lr.ph.us.i ], [ %i.kw, %bb.ax ]
  %.13653.us.i = phi ptr [ %.03557.us.i, %.lr.ph.us.i ], [ %i.kz, %bb.ax ]
  %i.kt = zext nneg i32 %.03155.us.i to i64       ; 4 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.kt
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !8
  %i.kw = getelementptr inbounds nuw i8, ptr %.13454.us.i, i64 %i.kv ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.kt
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !8
  %i.kz = getelementptr inbounds nuw i8, ptr %.13653.us.i, i64 %i.ky ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kt ; 3 uses
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !8
  %i.lc = add i64 %i.lb, -1                       ; 2 uses
  store i64 %i.lc, ptr %i.la, align 8, !tbaa !8
  %.not42.us.i = icmp eq i64 %i.lc, 0
  br i1 %.not42.us.i, label %bb.ax, label %._crit_edge.us.i

bb.ax:                                            ; preds = %bb.aw
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.kt
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !8
  store i64 %i.le, ptr %i.la, align 8, !tbaa !8
  %.031.us.i = add nsw i32 %.03155.us.i, -1
  %i.lf = icmp sgt i32 %.03155.us.i, 0
  br i1 %i.lf, label %bb.aw, label %._crit_edge.us.i, !llvm.loop !23

._crit_edge.us.i:                                 ; preds = %bb.ax, %bb.aw
  %i.lg = add nuw i64 %.03259.us.i, 1             ; 2 uses
  %exitcond65.not.i = icmp eq i64 %i.lg, %.lcssa262
  br i1 %exitcond65.not.i, label %H5VM_stride_copy.exit, label %.lr.ph.us.i, !llvm.loop !24

.lr.ph60.split.i:                                 ; preds = %.lr.ph60.split.i, %.lr.ph60.split.i.preheader.new
  %niter273 = phi i64 [ 0, %.lr.ph60.split.i.preheader.new ], [ %niter273.next.3, %.lr.ph60.split.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kp, ptr readonly align 1 %i.kq, i64 %.1162.ph, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kp, ptr readonly align 1 %i.kq, i64 %.1162.ph, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kp, ptr readonly align 1 %i.kq, i64 %.1162.ph, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kp, ptr readonly align 1 %i.kq, i64 %.1162.ph, i1 false)
  %niter273.next.3 = add nuw i64 %niter273, 4     ; 2 uses
  %niter273.ncmp.3 = icmp eq i64 %niter273.next.3, %unroll_iter272
  br i1 %niter273.ncmp.3, label %H5VM_stride_copy.exit.loopexit261.unr-lcssa, label %.lr.ph60.split.i, !llvm.loop !24

.loopexit192:                                     ; preds = %bb.av, %.critedge.sink.split.i, %._crit_edge
  %.1170 = phi i64 [ %.0126.lcssa, %._crit_edge ], [ %.1171, %.critedge.sink.split.i ], [ %.0126.lcssa, %bb.av ]
  %.1128167 = phi i64 [ %.0127.lcssa, %._crit_edge ], [ %.1128168, %.critedge.sink.split.i ], [ %.0127.lcssa, %bb.av ]
  %.1162 = phi i64 [ 1, %._crit_edge ], [ %i.jj, %.critedge.sink.split.i ], [ %i.iu, %bb.av ]
  %i.lh = getelementptr inbounds nuw i8, ptr %4, i64 %.1128167
  %i.li = getelementptr inbounds nuw i8, ptr %7, i64 %.1170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lh, ptr readonly align 1 %i.li, i64 %.1162, i1 false)
  br label %H5VM_stride_copy.exit

H5VM_stride_copy.exit.loopexit261.unr-lcssa:      ; preds = %.lr.ph60.split.i
  %lcmp.mod270.not = icmp eq i64 %xtraiter268, 0
  br i1 %lcmp.mod270.not, label %H5VM_stride_copy.exit, label %.lr.ph60.split.i.epil.preheader

.lr.ph60.split.i.epil.preheader:                  ; preds = %H5VM_stride_copy.exit.loopexit261.unr-lcssa, %.lr.ph60.split.i.preheader
  %lcmp.mod271 = icmp ne i64 %xtraiter268, 0
  tail call void @llvm.assume(i1 %lcmp.mod271)
  br label %.lr.ph60.split.i.epil

.lr.ph60.split.i.epil:                            ; preds = %.lr.ph60.split.i.epil, %.lr.ph60.split.i.epil.preheader
  %epil.iter269 = phi i64 [ 0, %.lr.ph60.split.i.epil.preheader ], [ %epil.iter269.next, %.lr.ph60.split.i.epil ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kp, ptr readonly align 1 %i.kq, i64 %.1162.ph, i1 false)
  %epil.iter269.next = add i64 %epil.iter269, 1   ; 2 uses
  %epil.iter269.cmp.not = icmp eq i64 %epil.iter269.next, %xtraiter268
  br i1 %epil.iter269.cmp.not, label %H5VM_stride_copy.exit, label %.lr.ph60.split.i.epil, !llvm.loop !25

H5VM_stride_copy.exit:                            ; preds = %H5VM_stride_copy.exit.loopexit261.unr-lcssa, %.lr.ph60.split.i.epil, %._crit_edge.us.i, %H5VM_vector_reduce_product.exit.i, %.loopexit192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @H5VM_stride_copy(i32 noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [33 x i64], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not41 = icmp eq ptr %2, null
  br i1 %.not41, label %.loopexit, label %.split

.split:                                           ; preds = %bb.b
  %i.b = zext i32 %0 to i64
  %i.c = shl nuw nsw i64 %i.b, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 8 %2, i64 %i.c, i1 false)
  %xtraiter = and i32 %0, 7                       ; 3 uses
  %i.d = icmp ult i32 %0, 8
  br i1 %i.d, label %.lr.ph.i.epil.preheader, label %.split.new

.split.new:                                       ; preds = %.split
  %unroll_iter = and i32 %0, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.split.new
  %.011.i = phi i64 [ 1, %.split.new ], [ %i.ab, %.lr.ph.i ]
  %.0610.i = phi ptr [ %2, %.split.new ], [ %i.z, %.lr.ph.i ] ; 9 uses
  %niter = phi i32 [ 0, %.split.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %.0610.i, i64 8
  %i.f = load i64, ptr %.0610.i, align 8, !tbaa !8
end_hunk_0
