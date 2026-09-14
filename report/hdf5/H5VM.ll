Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5VM?download=true
inline.NumInlined: 16
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@H5VM_hyper_copy:bb.a
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !17 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ej
  %i.en = load i64, ptr %i.em, align 8, !tbaa !17 ; 2 uses
  %i.eo = sub i64 %i.el, %i.en
  %i.ep = mul i64 %i.eo, %.0125200
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !17
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ej
  %i.es = load i64, ptr %i.er, align 8, !tbaa !17 ; 2 uses
  %i.et = sub i64 %i.es, %i.en
  %i.eu = mul i64 %i.et, %.0124201
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !17
  %i.ew = mul i64 %i.el, %.0125200                ; 2 uses
  %i.ex = mul i64 %i.es, %.0124201                ; 2 uses
  br i1 %.not140, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !17
  %i.fa = mul i64 %i.ez, %i.ew
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %bb.ah
  %i.fb = phi i64 [ %i.fa, %bb.ah ], [ 0, %.lr.ph ]
  %i.fc = add i64 %i.fb, %.0127198                ; 2 uses
  br i1 %.not141, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !17
  %i.ff = mul i64 %i.fe, %i.ex
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.fg = phi i64 [ %i.ff, %bb.aj ], [ 0, %bb.ai ]
  %i.fh = add i64 %i.fg, %.0126199                ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.fi = icmp sgt i64 %indvars.iv, 0
  br i1 %i.fi, label %.lr.ph, label %._crit_edge, !llvm.loop !27

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
  %i.fj = load i64, ptr %i.i, align 8, !tbaa !17
  %i.fk = icmp eq i64 %i.fj, 1
  br i1 %i.fk, label %.lr.ph206, label %.loopexit

bb.al:                                            ; preds = %._crit_edge
  %i.fl = load i64, ptr %i.d, align 16, !tbaa !17
  %i.fm = icmp eq i64 %i.fl, 1
  %i.fn = load i64, ptr %i.c, align 16
  %i.fo = icmp eq i64 %i.fn, 1
  %or.cond = select i1 %i.fm, i1 %i.fo, i1 false
  br i1 %or.cond, label %.critedge.sink.split.i, label %.loopexit

bb.am:                                            ; preds = %.thread, %._crit_edge
  %.1172 = phi i64 [ %i.af, %.thread ], [ %.0126.lcssa, %._crit_edge ] ; 3 uses
  %.1128169 = phi i64 [ %i.ab, %.thread ], [ %.0127.lcssa, %._crit_edge ] ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !17
  %i.fr = icmp eq i64 %i.fq, 1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ft = load i64, ptr %i.fs, align 8
  %i.fu = icmp eq i64 %i.ft, 1
  %or.cond247 = select i1 %i.fr, i1 %i.fu, i1 false
  br i1 %or.cond247, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %bb.am
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !17 ; 4 uses
  %i.fx = load i64, ptr %i.d, align 16, !tbaa !17 ; 2 uses
  %i.fy = add i64 %i.fx, %i.fw
  store i64 %i.fy, ptr %i.d, align 16, !tbaa !17
  %i.fz = load i64, ptr %i.c, align 16, !tbaa !17 ; 2 uses
  %i.ga = add i64 %i.fz, %i.fw
  store i64 %i.ga, ptr %i.c, align 16, !tbaa !17
  %i.gb = icmp eq i64 %i.fx, 0
  %i.gc = icmp eq i64 %i.fz, 0
  %or.cond.i = select i1 %i.gb, i1 %i.gc, i1 false
  br i1 %or.cond.i, label %.critedge.sink.split.i, label %.loopexit

bb.ao:                                            ; preds = %.thread173, %._crit_edge
  %.1177 = phi i64 [ %i.bt, %.thread173 ], [ %.0126.lcssa, %._crit_edge ] ; 4 uses
  %.1128176 = phi i64 [ %i.bp, %.thread173 ], [ %.0127.lcssa, %._crit_edge ] ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ge = load i64, ptr %i.gd, align 16, !tbaa !17
  %i.gf = icmp eq i64 %i.ge, 1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gh = load i64, ptr %i.gg, align 16
  %i.gi = icmp eq i64 %i.gh, 1
  %or.cond250 = select i1 %i.gf, i1 %i.gi, i1 false
  br i1 %or.cond250, label %bb.ap, label %.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gk = load i64, ptr %i.gj, align 16, !tbaa !17 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !17 ; 2 uses
  %i.gn = add i64 %i.gm, %i.gk                    ; 2 uses
  store i64 %i.gn, ptr %i.gl, align 8, !tbaa !17
  %i.go = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !17 ; 2 uses
  %i.gq = add i64 %i.gp, %i.gk
  store i64 %i.gq, ptr %i.go, align 8, !tbaa !17
  %i.gr = icmp eq i64 %i.gm, 0
  %i.gs = icmp eq i64 %i.gp, 0
  %or.cond143.i = select i1 %i.gr, i1 %i.gs, i1 false
  br i1 %or.cond143.i, label %bb.aq, label %.loopexit

bb.aq:                                            ; preds = %bb.ap
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !17 ; 2 uses
  %i.gv = mul i64 %i.gu, %i.gk                    ; 3 uses
  %i.gw = mul i64 %i.gu, %i.gn
  %i.gx = load i64, ptr %i.d, align 16, !tbaa !17
  %i.gy = add i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %i.d, align 16, !tbaa !17
  %i.gz = load i64, ptr %i.c, align 16, !tbaa !17 ; 2 uses
  %i.ha = add i64 %i.gz, %i.gv                    ; 2 uses
  store i64 %i.ha, ptr %i.c, align 16, !tbaa !17
  %i.hb = icmp eq i64 %i.gy, %i.gv
  %i.hc = icmp eq i64 %i.gz, 0
  %or.cond144.i = select i1 %i.hb, i1 %i.hc, i1 false
  br i1 %or.cond144.i, label %.critedge.sink.split.i, label %.loopexit

bb.ar:                                            ; preds = %.thread178, %._crit_edge
  %.1182 = phi i64 [ %i.ef, %.thread178 ], [ %.0126.lcssa, %._crit_edge ] ; 5 uses
  %.1128181 = phi i64 [ %i.eb, %.thread178 ], [ %.0127.lcssa, %._crit_edge ] ; 5 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !17
  %i.hf = icmp eq i64 %i.he, 1
  %i.hg = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.hh = load i64, ptr %i.hg, align 8
  %i.hi = icmp eq i64 %i.hh, 1
  %or.cond253 = select i1 %i.hf, i1 %i.hi, i1 false
  br i1 %or.cond253, label %bb.as, label %.loopexit

bb.as:                                            ; preds = %bb.ar
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !17 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 16, !tbaa !17 ; 2 uses
  %i.hn = add i64 %i.hm, %i.hk                    ; 2 uses
  store i64 %i.hn, ptr %i.hl, align 16, !tbaa !17
  %i.ho = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 16, !tbaa !17 ; 2 uses
  %i.hq = add i64 %i.hp, %i.hk
  store i64 %i.hq, ptr %i.ho, align 16, !tbaa !17
  %i.hr = icmp eq i64 %i.hm, 0
  %i.hs = icmp eq i64 %i.hp, 0
  %or.cond145.i = select i1 %i.hr, i1 %i.hs, i1 false
  br i1 %or.cond145.i, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %bb.as
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.hu = load i64, ptr %i.ht, align 16, !tbaa !17 ; 2 uses
  %i.hv = mul i64 %i.hu, %i.hk                    ; 4 uses
  %i.hw = mul i64 %i.hu, %i.hn
  %i.hx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !17
  %i.hz = add i64 %i.hy, %i.hw                    ; 2 uses
  store i64 %i.hz, ptr %i.hx, align 8, !tbaa !17
  %i.ia = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !17 ; 2 uses
  %i.ic = add i64 %i.ib, %i.hv                    ; 2 uses
  store i64 %i.ic, ptr %i.ia, align 8, !tbaa !17
  %i.id = icmp eq i64 %i.hz, %i.hv
  %i.ie = icmp eq i64 %i.ib, 0
  %or.cond146.i = select i1 %i.id, i1 %i.ie, i1 false
  br i1 %or.cond146.i, label %bb.au, label %.loopexit

bb.au:                                            ; preds = %bb.at
  %i.if = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !17 ; 2 uses
  %i.ih = mul i64 %i.ig, %i.ic                    ; 3 uses
  %i.ii = mul i64 %i.ig, %i.hv
  %i.ij = load i64, ptr %i.d, align 16, !tbaa !17
  %i.ik = add i64 %i.ij, %i.ii                    ; 2 uses
  store i64 %i.ik, ptr %i.d, align 16, !tbaa !17
  %i.il = load i64, ptr %i.c, align 16, !tbaa !17 ; 2 uses
  %i.im = add i64 %i.il, %i.ih                    ; 2 uses
  store i64 %i.im, ptr %i.c, align 16, !tbaa !17
  %i.in = icmp eq i64 %i.ik, %i.ih
  %i.io = icmp eq i64 %i.il, 0
  %or.cond147.i = select i1 %i.in, i1 %i.io, i1 false
  br i1 %or.cond147.i, label %.critedge.sink.split.i, label %.loopexit

.lr.ph206:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ip = phi i64 [ %i.iw, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 3 uses
  %i.iq = phi i64 [ %i.jg, %.lr.ph.i ], [ %i.h, %.lr.ph.i.preheader ] ; 2 uses
  %.0163204 = phi i32 [ %i.jf, %.lr.ph.i ], [ %i.g, %.lr.ph.i.preheader ] ; 5 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.iq
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !17
  %i.it = icmp eq i64 %i.is, %i.ip
  br i1 %i.it, label %bb.av, label %.loopexit.loopexit.split.loop.exit

bb.av:                                            ; preds = %.lr.ph206
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.iq
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !17
  %i.iw = mul i64 %i.iv, %i.ip                    ; 6 uses
  %.not142.i = icmp eq i32 %.0163204, 0
  br i1 %.not142.i, label %.loopexit192, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.av
  %i.ix = add i32 %.0163204, -1
  %i.iy = zext i32 %i.ix to i64                   ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.iy ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !17
  %i.jb = add i64 %i.ja, %i.iw
  store i64 %i.jb, ptr %i.iz, align 8, !tbaa !17
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.iy ; 2 uses
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !17
  %i.je = add i64 %i.jd, %i.iw
  store i64 %i.je, ptr %i.jc, align 8, !tbaa !17
  %i.jf = add i32 %.0163204, -1                   ; 2 uses
  %i.jg = zext i32 %i.jf to i64                   ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.jg
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !17
  %i.jj = icmp eq i64 %i.ji, %i.iw
  br i1 %i.jj, label %.lr.ph206, label %.loopexit, !llvm.loop !28

.critedge.sink.split.i:                           ; preds = %bb.al, %bb.au, %bb.aq, %bb.an
  %.1171 = phi i64 [ %.1177, %bb.aq ], [ %.1172, %bb.an ], [ %.0126.lcssa, %bb.al ], [ %.1182, %bb.au ]
  %.1128168 = phi i64 [ %.1128176, %bb.aq ], [ %.1128169, %bb.an ], [ %.0127.lcssa, %bb.al ], [ %.1128181, %bb.au ]
  %.sink163.i = phi i64 [ %i.ha, %bb.aq ], [ %i.fw, %bb.an ], [ 1, %bb.al ], [ %i.im, %bb.au ]
  %i.jk = load i64, ptr %i.b, align 16, !tbaa !17
  %i.jl = mul i64 %i.jk, %.sink163.i
  br label %.loopexit192

.loopexit.loopexit.split.loop.exit:               ; preds = %.lr.ph206
  %.0163204218.le = add i32 %.0163204, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i, %.loopexit.loopexit.split.loop.exit, %.lr.ph.i.preheader, %bb.al, %bb.an, %bb.am, %bb.aq, %bb.ap, %bb.ao, %bb.au, %bb.at, %bb.as, %bb.ar
  %.1170.ph = phi i64 [ %.1182, %bb.ar ], [ %.0126.lcssa, %bb.al ], [ %.1182, %bb.as ], [ %.1182, %bb.at ], [ %.1182, %bb.au ], [ %.1177, %bb.ao ], [ %.0126.lcssa, %.lr.ph.i.preheader ], [ %.1177, %bb.ap ], [ %.1177, %bb.aq ], [ %.1172, %bb.am ], [ %.1172, %bb.an ], [ %.0126.lcssa, %.loopexit.loopexit.split.loop.exit ], [ %.0126.lcssa, %.lr.ph.i ]
  %.1128167.ph = phi i64 [ %.1128181, %bb.ar ], [ %.0127.lcssa, %bb.al ], [ %.1128181, %bb.as ], [ %.1128181, %bb.at ], [ %.1128181, %bb.au ], [ %.1128176, %bb.ao ], [ %.0127.lcssa, %.lr.ph.i.preheader ], [ %.1128176, %bb.ap ], [ %.1128176, %bb.aq ], [ %.1128169, %bb.am ], [ %.1128169, %bb.an ], [ %.0127.lcssa, %.loopexit.loopexit.split.loop.exit ], [ %.0127.lcssa, %.lr.ph.i ]
  %.1164.ph = phi i32 [ 4, %bb.ar ], [ 1, %bb.al ], [ 3, %bb.as ], [ 2, %bb.at ], [ 1, %bb.au ], [ 3, %bb.ao ], [ %0, %.lr.ph.i.preheader ], [ 2, %bb.ap ], [ 1, %bb.aq ], [ 2, %bb.am ], [ 1, %bb.an ], [ %.0163204218.le, %.loopexit.loopexit.split.loop.exit ], [ %.0163204, %.lr.ph.i ] ; 5 uses
  %.1162.ph = phi i64 [ 1, %bb.ar ], [ 1, %bb.al ], [ %i.hk, %bb.as ], [ %i.hv, %bb.at ], [ %i.ih, %bb.au ], [ 1, %bb.ao ], [ 1, %.lr.ph.i.preheader ], [ %i.gk, %bb.ap ], [ %i.gv, %bb.aq ], [ 1, %bb.am ], [ %i.fw, %bb.an ], [ %i.ip, %.loopexit.loopexit.split.loop.exit ], [ %i.iw, %.lr.ph.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.jm = zext i32 %.1164.ph to i64
  %i.jn = shl nuw nsw i64 %i.jm, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 16 %i.b, i64 %i.jn, i1 false)
  %i.jo = add i32 %.1164.ph, -1
  %xtraiter = and i32 %.1164.ph, 7                ; 3 uses
  %i.jp = icmp ult i32 %i.jo, 7
  br i1 %i.jp, label %.lr.ph.i.i.epil.preheader, label %.loopexit.new

.loopexit.new:                                    ; preds = %.loopexit
  %unroll_iter = and i32 %.1164.ph, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.new
  %.011.i.i = phi i64 [ 1, %.loopexit.new ], [ %i.kn, %.lr.ph.i.i ]
  %.0610.i.i = phi ptr [ %i.b, %.loopexit.new ], [ %i.kl, %.lr.ph.i.i ] ; 9 uses
  %niter = phi i32 [ 0, %.loopexit.new ], [ %niter.next.7, %.lr.ph.i.i ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 8
  %i.jr = load i64, ptr %.0610.i.i, align 8, !tbaa !17
  %i.js = mul i64 %i.jr, %.011.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 16
  %i.ju = load i64, ptr %i.jq, align 8, !tbaa !17
  %i.jv = mul i64 %i.ju, %i.js
  %i.jw = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 24
  %i.jx = load i64, ptr %i.jt, align 8, !tbaa !17
  %i.jy = mul i64 %i.jx, %i.jv
  %i.jz = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 32
  %i.ka = load i64, ptr %i.jw, align 8, !tbaa !17
  %i.kb = mul i64 %i.ka, %i.jy
  %i.kc = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 40
  %i.kd = load i64, ptr %i.jz, align 8, !tbaa !17
  %i.ke = mul i64 %i.kd, %i.kb
  %i.kf = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 48
  %i.kg = load i64, ptr %i.kc, align 8, !tbaa !17
  %i.kh = mul i64 %i.kg, %i.ke
  %i.ki = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 56
  %i.kj = load i64, ptr %i.kf, align 8, !tbaa !17
  %i.kk = mul i64 %i.kj, %i.kh
  %i.kl = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 64 ; 2 uses
  %i.km = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kn = mul i64 %i.km, %i.kk                    ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %H5VM_vector_reduce_product.exit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !0

H5VM_vector_reduce_product.exit.i.unr-lcssa:      ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %H5VM_vector_reduce_product.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %H5VM_vector_reduce_product.exit.i.unr-lcssa, %.loopexit
  %.011.i.i.epil.init = phi i64 [ 1, %.loopexit ], [ %i.kn, %H5VM_vector_reduce_product.exit.i.unr-lcssa ]
  %.0610.i.i.epil.init = phi ptr [ %i.b, %.loopexit ], [ %i.kl, %H5VM_vector_reduce_product.exit.i.unr-lcssa ]
  %lcmp.mod267 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod267)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.011.i.i.epil = phi i64 [ %i.kq, %.lr.ph.i.i.epil ], [ %.011.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.0610.i.i.epil = phi ptr [ %i.ko, %.lr.ph.i.i.epil ], [ %.0610.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.0610.i.i.epil, i64 8
  %i.kp = load i64, ptr %.0610.i.i.epil, align 8, !tbaa !17
  %i.kq = mul i64 %i.kp, %.011.i.i.epil           ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %H5VM_vector_reduce_product.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29

H5VM_vector_reduce_product.exit.i:                ; preds = %.lr.ph.i.i.epil, %H5VM_vector_reduce_product.exit.i.unr-lcssa
  %.lcssa262 = phi i64 [ %i.kn, %H5VM_vector_reduce_product.exit.i.unr-lcssa ], [ %i.kq, %.lr.ph.i.i.epil ] ; 5 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %4, i64 %.1128167.ph ; 6 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %7, i64 %.1170.ph ; 6 uses
  %.not61.i = icmp eq i64 %.lcssa262, 0
  br i1 %.not61.i, label %H5VM_stride_copy.exit, label %.lr.ph60.i

.lr.ph60.i:                                       ; preds = %H5VM_vector_reduce_product.exit.i
  %.03152.i = add i32 %.1164.ph, -1               ; 2 uses
  %i.kt = icmp sgt i32 %.03152.i, -1
  br i1 %i.kt, label %.lr.ph.us.i, label %.lr.ph60.split.i.preheader

.lr.ph60.split.i.preheader:                       ; preds = %.lr.ph60.i
  %xtraiter268 = and i64 %.lcssa262, 3            ; 3 uses
  %i.ku = icmp ult i64 %.lcssa262, 4
  br i1 %i.ku, label %.lr.ph60.split.i.epil.preheader, label %.lr.ph60.split.i.preheader.new

.lr.ph60.split.i.preheader.new:                   ; preds = %.lr.ph60.split.i.preheader
  %unroll_iter272 = and i64 %.lcssa262, -4
  br label %.lr.ph60.split.i

.lr.ph.us.i:                                      ; preds = %.lr.ph60.i, %._crit_edge.us.i
  %.03259.us.i = phi i64 [ %i.li, %._crit_edge.us.i ], [ 0, %.lr.ph60.i ]
  %.03358.us.i = phi ptr [ %i.ky, %._crit_edge.us.i ], [ %i.ks, %.lr.ph60.i ] ; 2 uses
  %.03557.us.i = phi ptr [ %i.lb, %._crit_edge.us.i ], [ %i.kr, %.lr.ph60.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03557.us.i, ptr align 1 %.03358.us.i, i64 %.1162.ph, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %.lr.ph.us.i
  %.03155.us.i = phi i32 [ %.03152.i, %.lr.ph.us.i ], [ %.031.us.i, %bb.ax ] ; 3 uses
  %.13454.us.i = phi ptr [ %.03358.us.i, %.lr.ph.us.i ], [ %i.ky, %bb.ax ]
  %.13653.us.i = phi ptr [ %.03557.us.i, %.lr.ph.us.i ], [ %i.lb, %bb.ax ]
  %i.kv = zext nneg i32 %.03155.us.i to i64       ; 4 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.kv
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !17
  %i.ky = getelementptr inbounds nuw i8, ptr %.13454.us.i, i64 %i.kx ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.kv
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !17
  %i.lb = getelementptr inbounds nuw i8, ptr %.13653.us.i, i64 %i.la ; 2 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kv ; 3 uses
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !17
  %i.le = add i64 %i.ld, -1                       ; 2 uses
  store i64 %i.le, ptr %i.lc, align 8, !tbaa !17
  %.not42.us.i = icmp eq i64 %i.le, 0
  br i1 %.not42.us.i, label %bb.ax, label %._crit_edge.us.i

bb.ax:                                            ; preds = %bb.aw
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.kv
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !17
  store i64 %i.lg, ptr %i.lc, align 8, !tbaa !17
  %.031.us.i = add nsw i32 %.03155.us.i, -1
  %i.lh = icmp sgt i32 %.03155.us.i, 0
  br i1 %i.lh, label %bb.aw, label %._crit_edge.us.i, !llvm.loop !3

._crit_edge.us.i:                                 ; preds = %bb.ax, %bb.aw
  %i.li = add nuw i64 %.03259.us.i, 1             ; 2 uses
  %exitcond65.not.i = icmp eq i64 %i.li, %.lcssa262
  br i1 %exitcond65.not.i, label %H5VM_stride_copy.exit, label %.lr.ph.us.i, !llvm.loop !4

.lr.ph60.split.i:                                 ; preds = %.lr.ph60.split.i, %.lr.ph60.split.i.preheader.new
  %niter273 = phi i64 [ 0, %.lr.ph60.split.i.preheader.new ], [ %niter273.next.3, %.lr.ph60.split.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kr, ptr readonly align 1 %i.ks, i64 %.1162.ph, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kr, ptr readonly align 1 %i.ks, i64 %.1162.ph, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kr, ptr readonly align 1 %i.ks, i64 %.1162.ph, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kr, ptr readonly align 1 %i.ks, i64 %.1162.ph, i1 false)
  %niter273.next.3 = add nuw i64 %niter273, 4     ; 2 uses
  %niter273.ncmp.3 = icmp eq i64 %niter273.next.3, %unroll_iter272
  br i1 %niter273.ncmp.3, label %H5VM_stride_copy.exit.loopexit261.unr-lcssa, label %.lr.ph60.split.i, !llvm.loop !4

.loopexit192:                                     ; preds = %bb.av, %.critedge.sink.split.i, %._crit_edge
  %.1170 = phi i64 [ %.0126.lcssa, %._crit_edge ], [ %.1171, %.critedge.sink.split.i ], [ %.0126.lcssa, %bb.av ]
  %.1128167 = phi i64 [ %.0127.lcssa, %._crit_edge ], [ %.1128168, %.critedge.sink.split.i ], [ %.0127.lcssa, %bb.av ]
  %.1162 = phi i64 [ 1, %._crit_edge ], [ %i.jl, %.critedge.sink.split.i ], [ %i.iw, %bb.av ]
  %i.lj = getelementptr inbounds nuw i8, ptr %4, i64 %.1128167
  %i.lk = getelementptr inbounds nuw i8, ptr %7, i64 %.1170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lj, ptr readonly align 1 %i.lk, i64 %.1162, i1 false)
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kr, ptr readonly align 1 %i.ks, i64 %.1162.ph, i1 false)
  %epil.iter269.next = add i64 %epil.iter269, 1   ; 2 uses
  %epil.iter269.cmp.not = icmp eq i64 %epil.iter269.next, %xtraiter268
  br i1 %epil.iter269.cmp.not, label %H5VM_stride_copy.exit, label %.lr.ph60.split.i.epil, !llvm.loop !30

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
  %i.f = load i64, ptr %.0610.i, align 8, !tbaa !17
end_hunk_0
