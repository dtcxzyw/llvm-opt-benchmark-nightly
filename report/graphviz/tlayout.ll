Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/tlayout?download=true
inline.NumInlined: 15
inline.NumDeleted: 9
begin_hunk_0_@fdp_tLayout:bb.a
  %i.dc = phi <2 x double> [ %i.cr, %bb.r ], [ %i.cy, %bb.u ], [ %i.db, %bb.v ], [ %i.cv, %bb.t ], [ %i.cl, %bb.p ] ; 3 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 0
  %i.de = extractelement <2 x double> %i.dc, i64 1
  %i.df = tail call double @atan2(double noundef %i.de, double noundef %i.dd) #6 ; 2 uses
  %i.dg = tail call double @cos(double noundef %i.df) #6
  %i.dh = tail call double @sin(double noundef %i.df) #6
  %i.di = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.dh, i64 1
  %i.dk = fdiv <2 x double> %i.dc, %i.dj
  store <2 x double> %i.dk, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.n, %._crit_edge.i36
  %i.dl = phi <2 x double> [ %i.bq, %._crit_edge.i36 ], [ %i.cb, %bb.w ], [ zeroinitializer, %bb.n ] ; 8 uses
  %i.dm = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 64), align 8, !tbaa !23
  %i.dn = icmp eq i32 %i.dm, 2
  br i1 %i.dn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.do = load i64, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 8), align 8, !tbaa !22
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.dp = tail call i64 @time(ptr noundef null) #6
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0156.i = phi i64 [ %i.do, %bb.y ], [ %i.dp, %bb.z ]
  tail call void @srand48(i64 noundef %.0156.i) #6
  %.not172.i = icmp eq ptr %i.e, null
  br i1 %.not172.i, label %bb.ao, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aa
  %i.dq = load ptr, ptr %i.e, align 8, !tbaa !111
  %.not177200.i = icmp eq ptr %i.dq, null
  br i1 %.not177200.i, label %._crit_edge203.i, label %.lr.ph202.i.preheader

.lr.ph202.i.preheader:                            ; preds = %.preheader.i
  %i.dr = extractelement <2 x double> %i.dl, i64 0
  %i.ds = extractelement <2 x double> %i.dl, i64 1
  br label %.lr.ph202.i

.lr.ph202.i:                                      ; preds = %.lr.ph202.i.preheader, %.lr.ph202.i
  %.0161201.i = phi ptr [ %i.ek, %.lr.ph202.i ], [ %i.e, %.lr.ph202.i.preheader ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0161201.i, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !112
  %i.dv = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !109
  %i.dw = getelementptr inbounds nuw i8, ptr %.0161201.i, i64 16 ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !113
  %i.dy = tail call double @cos(double noundef %i.dx) #6
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.dv, double %i.dy, double %i.dr)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !29 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 176
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !46 ; 2 uses
  store double %i.dz, ptr %i.ed, align 8, !tbaa !18
  %i.ee = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 88), align 8, !tbaa !108
  %i.ef = load double, ptr %i.dw, align 8, !tbaa !113
  %i.eg = tail call double @sin(double noundef %i.ef) #6
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.eg, double %i.ds)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store double %i.eh, ptr %i.ei, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 163
  store i8 1, ptr %i.ej, align 1, !tbaa !45
  %i.ek = getelementptr inbounds nuw i8, ptr %.0161201.i, i64 24 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !111
  %.not177.i = icmp eq ptr %i.el, null
  br i1 %.not177.i, label %._crit_edge203.i, label %.lr.ph202.i, !llvm.loop !67

._crit_edge203.i:                                 ; preds = %.lr.ph202.i, %.preheader.i
  %i.em = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not178215.i = icmp eq ptr %i.em, null
  br i1 %.not178215.i, label %initPositions.exit, label %.lr.ph219.i

.lr.ph219.i:                                      ; preds = %._crit_edge203.i
  %i.en = fmul <2 x double> %i.dl, splat (double 1.000000e-01)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.an, %.lr.ph219.i
  %.1160216.i = phi ptr [ %i.em, %.lr.ph219.i ], [ %i.hr, %bb.an ] ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.1160216.i, i64 16 ; 4 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !29 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 152
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !48
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !50
  %.not179.i = icmp eq ptr %i.et, null
  br i1 %.not179.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 336
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !51
  %.not180.i = icmp eq ptr %i.ev, null
  br i1 %.not180.i, label %bb.an, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 163
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !45
  %.not181.i = icmp eq i8 %i.ex, 0
  br i1 %.not181.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 176
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !46 ; 2 uses
  %i.fa = load <2 x double>, ptr %i.ez, align 8, !tbaa !18
  %i.fb = fsub <2 x double> %i.fa, %i.dl
  store <2 x double> %i.fb, ptr %i.ez, align 8, !tbaa !18
  br label %bb.an

bb.af:                                            ; preds = %bb.ad
  %i.fc = tail call ptr @agfstedge(ptr noundef %0, ptr noundef nonnull %.1160216.i) #6 ; 2 uses
  %.not182204.i = icmp eq ptr %i.fc, null
  br i1 %.not182204.i, label %.thread.i, label %.lr.ph210.i

.lr.ph210.i:                                      ; preds = %bb.af, %.lr.ph210.i.backedge
  %.0208.i = phi ptr [ %.0208.i.be, %.lr.ph210.i.backedge ], [ %i.fc, %bb.af ] ; 5 uses
  %.0155207.i = phi i32 [ %.0155207.i.be, %.lr.ph210.i.backedge ], [ 0, %bb.af ] ; 5 uses
  %i.fd = phi <2 x double> [ %.be, %.lr.ph210.i.backedge ], [ zeroinitializer, %bb.af ] ; 3 uses
  %i.fe = load i32, ptr %.0208.i, align 8
  %i.ff = and i32 %i.fe, 3                        ; 2 uses
  %i.fg = icmp eq i32 %i.ff, 2
  %i.fh = select i1 %i.fg, i64 56, i64 -8
  %i.fi = getelementptr inbounds i8, ptr %.0208.i, i64 %i.fh
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !115 ; 3 uses
  %i.fk = icmp eq i32 %i.ff, 3
  %i.fl = select i1 %i.fk, i64 56, i64 120
  %i.fm = getelementptr inbounds nuw i8, ptr %.0208.i, i64 %i.fl
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !115 ; 2 uses
  %i.fo = icmp eq ptr %i.fj, %i.fn
  br i1 %i.fo, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph210.i
  %i.fp = icmp eq ptr %i.fj, %.1160216.i
  %..i = select i1 %i.fp, ptr %i.fn, ptr %i.fj
  %i.fq = getelementptr inbounds nuw i8, ptr %..i, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !29 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 163
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !45
  %.not183.i = icmp eq i8 %i.ft, 0
  br i1 %.not183.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not184.i = icmp eq i32 %.0155207.i, 0
  br i1 %.not184.i, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fu = sitofp i32 %.0155207.i to double
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 176
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !46
  %i.fx = add nsw i32 %.0155207.i, 1              ; 2 uses
  %i.fy = sitofp i32 %i.fx to double
  %i.fz = load <2 x double>, ptr %i.fw, align 8, !tbaa !18
  %i.ga = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.gb, <2 x double> %i.fz)
  %i.gd = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.ge = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gf = fdiv <2 x double> %i.gc, %i.ge
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag, %.lr.ph210.i
  %.1.i = phi i32 [ %.0155207.i, %.lr.ph210.i ], [ %.0155207.i, %bb.ag ], [ %i.fx, %bb.ai ] ; 3 uses
  %i.gg = phi <2 x double> [ %i.fd, %.lr.ph210.i ], [ %i.fd, %bb.ag ], [ %i.gf, %bb.ai ] ; 4 uses
  %i.gh = tail call ptr @agnxtedge(ptr noundef %0, ptr noundef nonnull %.0208.i, ptr noundef nonnull %.1160216.i) #6 ; 2 uses
  %.not182.i = icmp eq ptr %i.gh, null
  br i1 %.not182.i, label %._crit_edge211.i, label %.lr.ph210.i.backedge

.lr.ph210.i.backedge:                             ; preds = %bb.aj, %.thread
  %.0208.i.be = phi ptr [ %i.gl, %.thread ], [ %i.gh, %bb.aj ]
  %.0155207.i.be = phi i32 [ 1, %.thread ], [ %.1.i, %bb.aj ]
  %.be = phi <2 x double> [ %i.gk, %.thread ], [ %i.gg, %bb.aj ]
  br label %.lr.ph210.i, !llvm.loop !68

.thread:                                          ; preds = %bb.ah
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fr, i64 176
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !46
  %i.gk = load <2 x double>, ptr %i.gj, align 8, !tbaa !18 ; 2 uses
  %i.gl = tail call ptr @agnxtedge(ptr noundef %0, ptr noundef nonnull %.0208.i, ptr noundef nonnull %.1160216.i) #6 ; 2 uses
  %.not182.i58 = icmp eq ptr %i.gl, null
  br i1 %.not182.i58, label %.thread68, label %.lr.ph210.i.backedge

._crit_edge211.i:                                 ; preds = %bb.aj
  %i.gm = icmp sgt i32 %.1.i, 1
  br i1 %i.gm, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %._crit_edge211.i
  %i.gn = load ptr, ptr %i.eo, align 8, !tbaa !29 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 176
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !46 ; 2 uses
  %i.gq = extractelement <2 x double> %i.gg, i64 0
  store double %i.gq, ptr %i.gp, align 8, !tbaa !18
  %i.gr = extractelement <2 x double> %i.gg, i64 1
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge211.i
  %i.gs = icmp eq i32 %.1.i, 1
  br i1 %i.gs, label %.thread68, label %.thread.i

.thread68:                                        ; preds = %.thread, %bb.al
  %i.gt = phi <2 x double> [ %i.gg, %bb.al ], [ %i.gk, %.thread ]
  %i.gu = load ptr, ptr %i.eo, align 8, !tbaa !29 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 176
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !46 ; 2 uses
  %2 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> <double f0x3FEF5C28F5C28F5C, double 9.000000e-01>, <2 x double> %i.en) ; 2 uses
  %i.gx = extractelement <2 x double> %2, i64 0
  store double %i.gx, ptr %i.gw, align 8, !tbaa !18
  %i.gy = extractelement <2 x double> %2, i64 1
  br label %bb.am

.thread.i:                                        ; preds = %bb.al, %bb.af
  %i.gz = tail call double @drand48() #6
  %i.ha = fmul double %i.gz, f0x401921FB54442D18  ; 2 uses
  %i.hb = tail call double @drand48() #6
  %i.hc = fmul double %i.hb, 9.000000e-01         ; 2 uses
  %i.hd = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !109
  %i.he = fmul double %i.hc, %i.hd
  %i.hf = tail call double @cos(double noundef %i.ha) #6
  %i.hg = fmul double %i.he, %i.hf
  %i.hh = load ptr, ptr %i.eo, align 8, !tbaa !29 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 176
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !46 ; 2 uses
  store double %i.hg, ptr %i.hj, align 8, !tbaa !18
  %i.hk = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 88), align 8, !tbaa !108
  %i.hl = fmul double %i.hc, %i.hk
  %i.hm = tail call double @sin(double noundef %i.ha) #6
  %i.hn = fmul double %i.hl, %i.hm
  br label %bb.am

bb.am:                                            ; preds = %.thread.i, %.thread68, %bb.ak
  %.sink256.i = phi ptr [ %i.gw, %.thread68 ], [ %i.hj, %.thread.i ], [ %i.gp, %bb.ak ]
  %.sink.i37 = phi double [ %i.gy, %.thread68 ], [ %i.hn, %.thread.i ], [ %i.gr, %bb.ak ]
  %i.ho = phi ptr [ %i.gu, %.thread68 ], [ %i.hh, %.thread.i ], [ %i.gn, %bb.ak ]
  %i.hp = getelementptr inbounds nuw i8, ptr %.sink256.i, i64 8
  store double %.sink.i37, ptr %i.hp, align 8, !tbaa !18
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 163
  store i8 1, ptr %i.hq, align 1, !tbaa !45
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ae, %bb.ac
  %i.hr = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.1160216.i) #6 ; 2 uses
  %.not178.i = icmp eq ptr %i.hr, null
  br i1 %.not178.i, label %initPositions.exit, label %bb.ab, !llvm.loop !69

bb.ao:                                            ; preds = %bb.aa
  %.not173.i = icmp eq i32 %.0157.lcssa.i, 0
  %i.hs = tail call ptr @agfstnode(ptr noundef %0) #6 ; 3 uses
  %.not174224.i = icmp eq ptr %i.hs, null         ; 2 uses
  br i1 %.not173.i, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  br i1 %.not174224.i, label %initPositions.exit, label %.lr.ph223.i.preheader

.lr.ph223.i.preheader:                            ; preds = %bb.ap
  %i.ht = extractelement <2 x double> %i.dl, i64 0
  %i.hu = extractelement <2 x double> %i.dl, i64 1
  br label %.lr.ph223.i

.lr.ph223.i:                                      ; preds = %.lr.ph223.i.preheader, %bb.as
  %.2221.i = phi ptr [ %i.iv, %bb.as ], [ %i.hs, %.lr.ph223.i.preheader ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.2221.i, i64 16 ; 3 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !29 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 163
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !45
  %.not176.i = icmp eq i8 %i.hy, 0
  br i1 %.not176.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph223.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 176
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !46 ; 3 uses
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !18
  %i.ic = fsub double %i.ib, %i.ht
  store double %i.ic, ptr %i.ia, align 8, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !18
  %i.if = fsub double %i.ie, %i.hu
  store double %i.if, ptr %i.id, align 8, !tbaa !18
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph223.i
  %i.ig = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !109
  %i.ih = tail call double @drand48() #6
  %i.ii = tail call double @llvm.fmuladd.f64(double %i.ih, double 2.000000e+00, double -1.000000e+00)
  %i.ij = fmul double %i.ig, %i.ii
  %i.ik = load ptr, ptr %i.hv, align 8, !tbaa !29
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 176
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !46
  store double %i.ij, ptr %i.im, align 8, !tbaa !18
  %i.in = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 88), align 8, !tbaa !108
  %i.io = tail call double @drand48() #6
  %i.ip = tail call double @llvm.fmuladd.f64(double %i.io, double 2.000000e+00, double -1.000000e+00)
  %i.iq = fmul double %i.in, %i.ip
  %i.ir = load ptr, ptr %i.hv, align 8, !tbaa !29
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 176
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !46
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store double %i.iq, ptr %i.iu, align 8, !tbaa !18
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.iv = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.2221.i) #6 ; 2 uses
  %.not175.i = icmp eq ptr %i.iv, null
  br i1 %.not175.i, label %initPositions.exit, label %.lr.ph223.i, !llvm.loop !70

bb.at:                                            ; preds = %bb.ao
  br i1 %.not174224.i, label %initPositions.exit, label %.lr.ph227.i

.lr.ph227.i:                                      ; preds = %bb.at, %.lr.ph227.i
  %.3225.i = phi ptr [ %i.jm, %.lr.ph227.i ], [ %i.hs, %bb.at ] ; 2 uses
  %i.iw = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !109
  %i.ix = tail call double @drand48() #6
  %i.iy = tail call double @llvm.fmuladd.f64(double %i.ix, double 2.000000e+00, double -1.000000e+00)
  %i.iz = fmul double %i.iw, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %.3225.i, i64 16 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !29
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 176
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !46
  store double %i.iz, ptr %i.jd, align 8, !tbaa !18
  %i.je = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 88), align 8, !tbaa !108
  %i.jf = tail call double @drand48() #6
  %i.jg = tail call double @llvm.fmuladd.f64(double %i.jf, double 2.000000e+00, double -1.000000e+00)
  %i.jh = fmul double %i.je, %i.jg
  %i.ji = load ptr, ptr %i.ja, align 8, !tbaa !29
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 176
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !46
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store double %i.jh, ptr %i.jl, align 8, !tbaa !18
  %i.jm = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.3225.i) #6 ; 2 uses
  %.not174.i = icmp eq ptr %i.jm, null
  br i1 %.not174.i, label %initPositions.exit, label %.lr.ph227.i, !llvm.loop !71

initPositions.exit:                               ; preds = %bb.an, %bb.as, %.lr.ph227.i, %._crit_edge203.i, %bb.ap, %bb.at
  %i.jn = load i32, ptr @parms, align 8, !tbaa !25
  %.not = icmp eq i32 %i.jn, 0
  br i1 %.not, label %.preheader, label %bb.au

.preheader:                                       ; preds = %initPositions.exit
  %i.jo = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !105 ; 2 uses
  %i.jp = icmp sgt i32 %i.jo, 0
  br i1 %i.jp, label %.lr.ph89.preheader, label %.loopexit74

.lr.ph89.preheader:                               ; preds = %.preheader
  %.pre111 = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !21
  %.pre113 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !19
  br label %.lr.ph89

bb.au:                                            ; preds = %initPositions.exit
  %i.jq = tail call i32 @agnnodes(ptr noundef %0) #6
  %i.jr = tail call ptr @mkGrid(i32 noundef %i.jq) #6 ; 5 uses
  %i.js = tail call i32 @agnnodes(ptr noundef %0) #6
  tail call void @adjustGrid(ptr noundef %i.jr, i32 noundef %i.js) #6
  %i.jt = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !105 ; 2 uses
  %i.ju = icmp sgt i32 %i.jt, 0
  br i1 %i.ju, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.au
  %.pre106 = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !21
  %.pre108 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !19
  br label %.lr.ph

._crit_edge:                                      ; preds = %gAdjust.exit, %bb.au
  tail call void @delGrid(ptr noundef %i.jr) #6
  br label %.loopexit74

.lr.ph:                                           ; preds = %.lr.ph.preheader, %gAdjust.exit
  %i.jv = phi i32 [ %i.nm, %gAdjust.exit ], [ %i.jt, %.lr.ph.preheader ]
  %i.jw = phi i32 [ %i.nn, %gAdjust.exit ], [ %.pre108, %.lr.ph.preheader ] ; 3 uses
  %i.jx = phi double [ %i.no, %gAdjust.exit ], [ %.pre106, %.lr.ph.preheader ] ; 2 uses
  %.03387 = phi i32 [ %i.np, %gAdjust.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.jy = sub nsw i32 %i.jw, %.03387
  %i.jz = sitofp i32 %i.jy to double
  %i.ka = fmul double %i.jx, %i.jz
  %i.kb = sitofp i32 %i.jw to double
  %i.kc = fdiv double %i.ka, %i.kb                ; 2 uses
  %i.kd = fcmp ugt double %i.kc, 0.000000e+00
  br i1 %i.kd, label %bb.av, label %gAdjust.exit

bb.av:                                            ; preds = %.lr.ph
  tail call void @clearGrid(ptr noundef %i.jr) #6
  %i.ke = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not42.i = icmp eq ptr %i.ke, null
  br i1 %.not42.i, label %._crit_edge.i40, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.av, %.lr.ph.i38
  %.03443.i = phi ptr [ %i.kw, %.lr.ph.i38 ], [ %i.ke, %bb.av ] ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.03443.i, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !29 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 152
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !48
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kj, i8 0, i64 16, i1 false)
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !46
  %i.km = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 72), align 8
  %i.kn = load <2 x double>, ptr %i.kl, align 8, !tbaa !18
  %i.ko = shufflevector <1 x double> %i.km, <1 x double> poison, <2 x i32> zeroinitializer
  %i.kp = fdiv <2 x double> %i.kn, %i.ko          ; 2 uses
  %i.kq = extractelement <2 x double> %i.kp, i64 0
  %i.kr = tail call double @llvm.floor.f64(double %i.kq)
  %i.ks = fptosi double %i.kr to i32
  %i.kt = extractelement <2 x double> %i.kp, i64 1
  %i.ku = tail call double @llvm.floor.f64(double %i.kt)
  %i.kv = fptosi double %i.ku to i32
  tail call void @addGrid(ptr noundef %i.jr, i32 noundef %i.ks, i32 noundef %i.kv, ptr noundef nonnull %.03443.i) #6
  %i.kw = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.03443.i) #6 ; 2 uses
end_hunk_0
