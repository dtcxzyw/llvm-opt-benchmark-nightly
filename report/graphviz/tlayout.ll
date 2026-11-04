Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/tlayout?download=true
inline.NumInlined: 15
inline.NumDeleted: 9
begin_hunk_0_@fdp_tLayout:bb.a
  %i.j = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 48), align 8, !tbaa !20 ; 2 uses
  %i.k = fmul double %i.i, %i.j
  %i.l = sitofp i32 %i.h to double
  %i.m = tail call double @sqrt(double noundef %i.l) #6
  %i.n = fmul double %i.k, %i.m
  %i.o = fdiv double %i.n, 5.000000e+00           ; 2 uses
  store double %i.o, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %i.p = phi double [ %i.j, %bb.b ], [ %.pre.i, %._crit_edge.i ]
  %i.q = phi double [ %i.o, %bb.b ], [ %i.f, %._crit_edge.i ]
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 96), align 8, !tbaa !24 ; 5 uses
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !19 ; 3 uses
  %i.t = sub nsw i32 %i.s, %i.r                   ; 3 uses
  %i.u = sitofp i32 %i.t to double
  %i.v = fmul double %i.q, %i.u
  %i.w = sitofp i32 %i.s to double
  %i.x = fdiv double %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.x, ptr %i.y, align 8, !tbaa !100
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.p, ptr %i.z, align 8, !tbaa !101
  %i.aa = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 32), align 8, !tbaa !102
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %i.aa, ptr %i.ab, align 8, !tbaa !103
  store i32 %i.t, ptr %1, align 8, !tbaa !104
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 16), align 8, !tbaa !16 ; 5 uses
  %i.ad = icmp sgt i32 %i.ac, -1
  br i1 %i.ad, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp sgt i32 %i.ac, %i.r
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !105
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.d
  %.not12.i = icmp sgt i32 %i.ac, %i.s
  br i1 %.not12.i, label %init_params.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.r, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !105
  %i.ae = sub nsw i32 %i.ac, %i.r
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.c
  store i32 %i.r, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !105
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.g, %bb.e
  %.sink.i = phi i32 [ 0, %bb.e ], [ %i.ae, %bb.g ], [ %i.t, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %.sink.i, ptr %i.af, align 8, !tbaa !106
  br label %init_params.exit

init_params.exit:                                 ; preds = %bb.f, %.sink.split.i
  %i.ag = tail call i32 @agnnodes(ptr noundef nonnull %0) #6
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 160
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !94
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !107
  %i.am = sub nsw i32 %i.ag, %i.al
  %i.an = tail call ptr @agfstnode(ptr noundef nonnull %0) #6 ; 2 uses
  %.not189.i = icmp eq ptr %i.an, null
  br i1 %.not189.i, label %._crit_edge.i36, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %init_params.exit, %bb.m
  %.0157191.i = phi i32 [ %.1158.i, %bb.m ], [ 0, %init_params.exit ] ; 3 uses
  %.0159190.i = phi ptr [ %i.bh, %bb.m ], [ %i.an, %init_params.exit ] ; 2 uses
  %i.ao = phi <2 x double> [ %i.bf, %bb.m ], [ zeroinitializer, %init_params.exit ] ; 3 uses
  %i.ap = phi <2 x double> [ %i.bg, %bb.m ], [ zeroinitializer, %init_params.exit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0159190.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !29 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 163
  %i.at = load i8, ptr %i.as, align 1, !tbaa !45
  %.not185.i = icmp eq i8 %i.at, 0
  br i1 %.not185.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %.not186.i = icmp eq i32 %.0157191.i, 0
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 176
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !46 ; 2 uses
  br i1 %.not186.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load <2 x double>, ptr %i.av, align 8, !tbaa !18 ; 4 uses
  %i.ax = fcmp olt <2 x double> %i.aw, %i.ao
  %i.ay = select <2 x i1> %i.ax, <2 x double> %i.aw, <2 x double> %i.ao
  %i.az = fcmp ogt <2 x double> %i.aw, %i.ap
  %i.ba = select <2 x i1> %i.az, <2 x double> %i.aw, <2 x double> %i.ap
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bb = load <2 x double>, ptr %i.av, align 8, !tbaa !18 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bc = phi <2 x double> [ %i.ay, %bb.j ], [ %i.bb, %bb.k ]
  %i.bd = phi <2 x double> [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  %i.be = add nsw i32 %.0157191.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %.1158.i = phi i32 [ %i.be, %bb.l ], [ %.0157191.i, %.lr.ph.i ] ; 2 uses
  %i.bf = phi <2 x double> [ %i.bc, %bb.l ], [ %i.ao, %.lr.ph.i ] ; 2 uses
  %i.bg = phi <2 x double> [ %i.bd, %bb.l ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %i.bh = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.0159190.i) #6 ; 2 uses
  %.not.i35 = icmp eq ptr %i.bh, null
  br i1 %.not.i35, label %._crit_edge.i36, label %.lr.ph.i, !llvm.loop !66

._crit_edge.i36:                                  ; preds = %bb.m, %init_params.exit
  %.0157.lcssa.i = phi i32 [ 0, %init_params.exit ], [ %.1158.i, %bb.m ] ; 3 uses
  %i.bi = phi <2 x double> [ zeroinitializer, %init_params.exit ], [ %i.bf, %bb.m ] ; 3 uses
  %i.bj = phi <2 x double> [ zeroinitializer, %init_params.exit ], [ %i.bg, %bb.m ] ; 2 uses
  %i.bk = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 48), align 8, !tbaa !20
  %i.bl = sitofp i32 %i.am to double
  %i.bm = tail call double @sqrt(double noundef %i.bl) #6
  %i.bn = fadd double %i.bm, 1.000000e+00
  %i.bo = fmul double %i.bk, %i.bn
  %i.bp = fmul double %i.bo, 5.000000e-01
  %i.bq = fmul double %i.bp, 1.200000e+00         ; 5 uses
  store double %i.bq, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 88), align 8, !tbaa !108
  store double %i.bq, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !109
  %i.br = icmp eq i32 %.0157.lcssa.i, 1
  br i1 %i.br, label %bb.x, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i36
  %i.bs = icmp sgt i32 %.0157.lcssa.i, 1
  br i1 %i.bs, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.bt = fadd <2 x double> %i.bi, %i.bj
  %i.bu = fmul <2 x double> %i.bt, splat (double 5.000000e-01)
  %i.bv = fsub <2 x double> %i.bj, %i.bi
  %i.bw = fmul <2 x double> %i.bv, splat (double 1.200000e+00) ; 6 uses
  %i.bx = fmul double %i.bq, 4.000000e+00
  %i.by = fmul double %i.bq, %i.bx                ; 3 uses
  %i.bz = extractelement <2 x double> %i.bw, i64 0 ; 3 uses
  %i.ca = extractelement <2 x double> %i.bw, i64 1 ; 3 uses
  %i.cb = fmul double %i.bz, %i.ca
  %i.cc = fdiv double %i.cb, %i.by                ; 3 uses
  %i.cd = fcmp ult double %i.cc, 1.000000e+00
  br i1 %i.cd, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = fmul <2 x double> %i.bw, splat (double 5.000000e-01)
  br label %bb.w

bb.q:                                             ; preds = %bb.o
  %i.cf = fcmp ogt double %i.cc, 0.000000e+00
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cg = tail call double @sqrt(double noundef %i.cc) #6
  %i.ch = fmul double %i.cg, 2.000000e+00
  %i.ci = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = fdiv <2 x double> %i.bw, %i.cj
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.cl = fcmp ogt double %i.bz, 0.000000e+00
  br i1 %i.cl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cm = fdiv double %i.by, %i.bz
  %i.cn = insertelement <2 x double> %i.bw, double %i.cm, i64 1
  %i.co = fmul <2 x double> %i.cn, splat (double 5.000000e-01)
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cp = fcmp ogt double %i.ca, 0.000000e+00
  %i.cq = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  br i1 %i.cp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cs = fdiv double %i.by, %i.ca
  %i.ct = insertelement <2 x double> %i.bw, double %i.cs, i64 0
  %i.cu = fmul <2 x double> %i.ct, splat (double 5.000000e-01)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.p
  %i.cv = phi <2 x double> [ %i.ck, %bb.r ], [ %i.cr, %bb.u ], [ %i.cu, %bb.v ], [ %i.co, %bb.t ], [ %i.ce, %bb.p ] ; 3 uses
  %i.cw = extractelement <2 x double> %i.cv, i64 0
  %i.cx = extractelement <2 x double> %i.cv, i64 1
  %i.cy = tail call double @atan2(double noundef %i.cx, double noundef %i.cw) #6 ; 2 uses
  %i.cz = tail call double @cos(double noundef %i.cy) #6
  %i.da = tail call double @sin(double noundef %i.cy) #6
  %i.db = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.da, i64 1
  %i.dd = fdiv <2 x double> %i.cv, %i.dc
  store <2 x double> %i.dd, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.n, %._crit_edge.i36
  %i.de = phi <2 x double> [ %i.bi, %._crit_edge.i36 ], [ %i.bu, %bb.w ], [ zeroinitializer, %bb.n ] ; 8 uses
  %i.df = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 64), align 8, !tbaa !23
  %i.dg = icmp eq i32 %i.df, 2
  br i1 %i.dg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dh = load i64, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 8), align 8, !tbaa !22
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.di = tail call i64 @time(ptr noundef null) #6
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0156.i = phi i64 [ %i.dh, %bb.y ], [ %i.di, %bb.z ]
  tail call void @srand48(i64 noundef %.0156.i) #6
  %.not172.i = icmp eq ptr %i.e, null
  br i1 %.not172.i, label %bb.ao, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aa
  %i.dj = load ptr, ptr %i.e, align 8, !tbaa !111
  %.not177200.i = icmp eq ptr %i.dj, null
  br i1 %.not177200.i, label %._crit_edge203.i, label %.lr.ph202.i.preheader

.lr.ph202.i.preheader:                            ; preds = %.preheader.i
  %i.dk = extractelement <2 x double> %i.de, i64 0
  %i.dl = extractelement <2 x double> %i.de, i64 1
  br label %.lr.ph202.i

.lr.ph202.i:                                      ; preds = %.lr.ph202.i.preheader, %.lr.ph202.i
  %.0161201.i = phi ptr [ %i.ed, %.lr.ph202.i ], [ %i.e, %.lr.ph202.i.preheader ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0161201.i, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !112
  %i.do = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !109
  %i.dp = getelementptr inbounds nuw i8, ptr %.0161201.i, i64 16 ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !113
  %i.dr = tail call double @cos(double noundef %i.dq) #6
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.do, double %i.dr, double %i.dk)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !29 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 176
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !46 ; 2 uses
  store double %i.ds, ptr %i.dw, align 8, !tbaa !18
  %i.dx = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 88), align 8, !tbaa !108
  %i.dy = load double, ptr %i.dp, align 8, !tbaa !113
  %i.dz = tail call double @sin(double noundef %i.dy) #6
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.dz, double %i.dl)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store double %i.ea, ptr %i.eb, align 8, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 163
  store i8 1, ptr %i.ec, align 1, !tbaa !45
  %i.ed = getelementptr inbounds nuw i8, ptr %.0161201.i, i64 24 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !111
  %.not177.i = icmp eq ptr %i.ee, null
  br i1 %.not177.i, label %._crit_edge203.i, label %.lr.ph202.i, !llvm.loop !67

._crit_edge203.i:                                 ; preds = %.lr.ph202.i, %.preheader.i
  %i.ef = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not178215.i = icmp eq ptr %i.ef, null
  br i1 %.not178215.i, label %initPositions.exit, label %.lr.ph219.i

.lr.ph219.i:                                      ; preds = %._crit_edge203.i
  %i.eg = fmul <2 x double> %i.de, splat (double 1.000000e-01)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.an, %.lr.ph219.i
  %.1160216.i = phi ptr [ %i.ef, %.lr.ph219.i ], [ %i.hl, %bb.an ] ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.1160216.i, i64 16 ; 4 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !29 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 152
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !48
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !50
  %.not179.i = icmp eq ptr %i.em, null
  br i1 %.not179.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 336
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !51
  %.not180.i = icmp eq ptr %i.eo, null
  br i1 %.not180.i, label %bb.an, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 163
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !45
  %.not181.i = icmp eq i8 %i.eq, 0
  br i1 %.not181.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 176
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !46 ; 2 uses
  %i.et = load <2 x double>, ptr %i.es, align 8, !tbaa !18
  %i.eu = fsub <2 x double> %i.et, %i.de
  store <2 x double> %i.eu, ptr %i.es, align 8, !tbaa !18
  br label %bb.an

bb.af:                                            ; preds = %bb.ad
  %i.ev = tail call ptr @agfstedge(ptr noundef %0, ptr noundef nonnull %.1160216.i) #6 ; 2 uses
  %.not182204.i = icmp eq ptr %i.ev, null
  br i1 %.not182204.i, label %.thread.i, label %.lr.ph210.i

.lr.ph210.i:                                      ; preds = %bb.af, %.lr.ph210.i.backedge
  %.0208.i = phi ptr [ %.0208.i.be, %.lr.ph210.i.backedge ], [ %i.ev, %bb.af ] ; 5 uses
  %.0155207.i = phi i32 [ %.0155207.i.be, %.lr.ph210.i.backedge ], [ 0, %bb.af ] ; 5 uses
  %i.ew = phi <2 x double> [ %.be, %.lr.ph210.i.backedge ], [ zeroinitializer, %bb.af ] ; 3 uses
  %i.ex = load i32, ptr %.0208.i, align 8
  %i.ey = and i32 %i.ex, 3                        ; 2 uses
  %i.ez = icmp eq i32 %i.ey, 2
  %i.fa = select i1 %i.ez, i64 56, i64 -8
  %i.fb = getelementptr inbounds i8, ptr %.0208.i, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !115 ; 3 uses
  %i.fd = icmp eq i32 %i.ey, 3
  %i.fe = select i1 %i.fd, i64 56, i64 120
  %i.ff = getelementptr inbounds nuw i8, ptr %.0208.i, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !115 ; 2 uses
  %i.fh = icmp eq ptr %i.fc, %i.fg
  br i1 %i.fh, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph210.i
  %i.fi = icmp eq ptr %i.fc, %.1160216.i
  %..i = select i1 %i.fi, ptr %i.fg, ptr %i.fc
  %i.fj = getelementptr inbounds nuw i8, ptr %..i, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !29 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 163
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !45
  %.not183.i = icmp eq i8 %i.fm, 0
  br i1 %.not183.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not184.i = icmp eq i32 %.0155207.i, 0
  br i1 %.not184.i, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fn = sitofp i32 %.0155207.i to double
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 176
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !46
  %i.fq = add nsw i32 %.0155207.i, 1              ; 2 uses
  %i.fr = sitofp i32 %i.fq to double
  %i.fs = load <2 x double>, ptr %i.fp, align 8, !tbaa !18
  %i.ft = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.fu, <2 x double> %i.fs)
  %i.fw = insertelement <2 x double> poison, double %i.fr, i64 0
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fy = fdiv <2 x double> %i.fv, %i.fx
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag, %.lr.ph210.i
  %.1.i = phi i32 [ %.0155207.i, %.lr.ph210.i ], [ %.0155207.i, %bb.ag ], [ %i.fq, %bb.ai ] ; 3 uses
  %i.fz = phi <2 x double> [ %i.ew, %.lr.ph210.i ], [ %i.ew, %bb.ag ], [ %i.fy, %bb.ai ] ; 4 uses
  %i.ga = tail call ptr @agnxtedge(ptr noundef %0, ptr noundef nonnull %.0208.i, ptr noundef nonnull %.1160216.i) #6 ; 2 uses
  %.not182.i = icmp eq ptr %i.ga, null
  br i1 %.not182.i, label %._crit_edge211.i, label %.lr.ph210.i.backedge

.lr.ph210.i.backedge:                             ; preds = %bb.aj, %.thread
  %.0208.i.be = phi ptr [ %i.ge, %.thread ], [ %i.ga, %bb.aj ]
  %.0155207.i.be = phi i32 [ 1, %.thread ], [ %.1.i, %bb.aj ]
  %.be = phi <2 x double> [ %i.gd, %.thread ], [ %i.fz, %bb.aj ]
  br label %.lr.ph210.i, !llvm.loop !68

.thread:                                          ; preds = %bb.ah
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fk, i64 176
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !46
  %i.gd = load <2 x double>, ptr %i.gc, align 8, !tbaa !18 ; 2 uses
  %i.ge = tail call ptr @agnxtedge(ptr noundef %0, ptr noundef nonnull %.0208.i, ptr noundef nonnull %.1160216.i) #6 ; 2 uses
  %.not182.i59 = icmp eq ptr %i.ge, null
  br i1 %.not182.i59, label %.thread69, label %.lr.ph210.i.backedge

._crit_edge211.i:                                 ; preds = %bb.aj
  %i.gf = icmp sgt i32 %.1.i, 1
  br i1 %i.gf, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %._crit_edge211.i
  %i.gg = load ptr, ptr %i.eh, align 8, !tbaa !29 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 176
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !46 ; 2 uses
  %i.gj = extractelement <2 x double> %i.fz, i64 0
  store double %i.gj, ptr %i.gi, align 8, !tbaa !18
  %i.gk = extractelement <2 x double> %i.fz, i64 1
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge211.i
  %i.gl = icmp eq i32 %.1.i, 1
  br i1 %i.gl, label %.thread69, label %.thread.i

.thread69:                                        ; preds = %.thread, %bb.al
  %i.gm = phi <2 x double> [ %i.fz, %bb.al ], [ %i.gd, %.thread ]
  %i.gn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> <double f0x3FEF5C28F5C28F5C, double 9.000000e-01>, <2 x double> %i.eg) ; 2 uses
  %i.go = load ptr, ptr %i.eh, align 8, !tbaa !29 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 176
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !46 ; 2 uses
  %i.gr = extractelement <2 x double> %i.gn, i64 0
  store double %i.gr, ptr %i.gq, align 8, !tbaa !18
  %i.gs = extractelement <2 x double> %i.gn, i64 1
  br label %bb.am

.thread.i:                                        ; preds = %bb.al, %bb.af
  %i.gt = tail call double @drand48() #6
  %i.gu = fmul double %i.gt, f0x401921FB54442D18  ; 2 uses
  %i.gv = tail call double @drand48() #6
  %i.gw = fmul double %i.gv, 9.000000e-01         ; 2 uses
  %i.gx = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !109
  %i.gy = fmul double %i.gw, %i.gx
  %i.gz = tail call double @cos(double noundef %i.gu) #6
  %i.ha = fmul double %i.gy, %i.gz
  %i.hb = load ptr, ptr %i.eh, align 8, !tbaa !29 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 176
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !46 ; 2 uses
  store double %i.ha, ptr %i.hd, align 8, !tbaa !18
  %i.he = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 88), align 8, !tbaa !108
  %i.hf = fmul double %i.gw, %i.he
  %i.hg = tail call double @sin(double noundef %i.gu) #6
  %i.hh = fmul double %i.hf, %i.hg
  br label %bb.am

bb.am:                                            ; preds = %.thread.i, %.thread69, %bb.ak
  %.sink256.i = phi ptr [ %i.gq, %.thread69 ], [ %i.hd, %.thread.i ], [ %i.gi, %bb.ak ]
  %.sink.i37 = phi double [ %i.gs, %.thread69 ], [ %i.hh, %.thread.i ], [ %i.gk, %bb.ak ]
  %i.hi = phi ptr [ %i.go, %.thread69 ], [ %i.hb, %.thread.i ], [ %i.gg, %bb.ak ]
  %i.hj = getelementptr inbounds nuw i8, ptr %.sink256.i, i64 8
  store double %.sink.i37, ptr %i.hj, align 8, !tbaa !18
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 163
  store i8 1, ptr %i.hk, align 1, !tbaa !45
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ae, %bb.ac
  %i.hl = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.1160216.i) #6 ; 2 uses
  %.not178.i = icmp eq ptr %i.hl, null
  br i1 %.not178.i, label %initPositions.exit, label %bb.ab, !llvm.loop !69

bb.ao:                                            ; preds = %bb.aa
  %.not173.i = icmp eq i32 %.0157.lcssa.i, 0
  %i.hm = tail call ptr @agfstnode(ptr noundef %0) #6 ; 3 uses
  %.not174224.i = icmp eq ptr %i.hm, null         ; 2 uses
  br i1 %.not173.i, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  br i1 %.not174224.i, label %initPositions.exit, label %.lr.ph223.i

.lr.ph223.i:                                      ; preds = %bb.ap, %bb.as
  %.2221.i = phi ptr [ %i.ik, %bb.as ], [ %i.hm, %bb.ap ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.2221.i, i64 16 ; 3 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !29 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 163
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !45
  %.not176.i = icmp eq i8 %i.hq, 0
  br i1 %.not176.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph223.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 176
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !46 ; 2 uses
  %i.ht = load <2 x double>, ptr %i.hs, align 8, !tbaa !18
  %i.hu = fsub <2 x double> %i.ht, %i.de
  store <2 x double> %i.hu, ptr %i.hs, align 8, !tbaa !18
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph223.i
  %i.hv = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !109
  %i.hw = tail call double @drand48() #6
  %i.hx = tail call double @llvm.fmuladd.f64(double %i.hw, double 2.000000e+00, double -1.000000e+00)
  %i.hy = fmul double %i.hv, %i.hx
  %i.hz = load ptr, ptr %i.hn, align 8, !tbaa !29
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 176
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !46
  store double %i.hy, ptr %i.ib, align 8, !tbaa !18
  %i.ic = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 88), align 8, !tbaa !108
  %i.id = tail call double @drand48() #6
  %i.ie = tail call double @llvm.fmuladd.f64(double %i.id, double 2.000000e+00, double -1.000000e+00)
  %i.if = fmul double %i.ic, %i.ie
  %i.ig = load ptr, ptr %i.hn, align 8, !tbaa !29
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 176
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !46
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store double %i.if, ptr %i.ij, align 8, !tbaa !18
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ik = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.2221.i) #6 ; 2 uses
  %.not175.i = icmp eq ptr %i.ik, null
  br i1 %.not175.i, label %initPositions.exit, label %.lr.ph223.i, !llvm.loop !70

bb.at:                                            ; preds = %bb.ao
  br i1 %.not174224.i, label %initPositions.exit, label %.lr.ph227.i

.lr.ph227.i:                                      ; preds = %bb.at, %.lr.ph227.i
  %.3225.i = phi ptr [ %i.jb, %.lr.ph227.i ], [ %i.hm, %bb.at ] ; 2 uses
  %i.il = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !109
  %i.im = tail call double @drand48() #6
  %i.in = tail call double @llvm.fmuladd.f64(double %i.im, double 2.000000e+00, double -1.000000e+00)
  %i.io = fmul double %i.il, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %.3225.i, i64 16 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !29
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 176
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !46
  store double %i.io, ptr %i.is, align 8, !tbaa !18
  %i.it = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 88), align 8, !tbaa !108
  %i.iu = tail call double @drand48() #6
  %i.iv = tail call double @llvm.fmuladd.f64(double %i.iu, double 2.000000e+00, double -1.000000e+00)
  %i.iw = fmul double %i.it, %i.iv
  %i.ix = load ptr, ptr %i.ip, align 8, !tbaa !29
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 176
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !46
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store double %i.iw, ptr %i.ja, align 8, !tbaa !18
  %i.jb = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.3225.i) #6 ; 2 uses
  %.not174.i = icmp eq ptr %i.jb, null
  br i1 %.not174.i, label %initPositions.exit, label %.lr.ph227.i, !llvm.loop !71

initPositions.exit:                               ; preds = %bb.an, %bb.as, %.lr.ph227.i, %._crit_edge203.i, %bb.ap, %bb.at
  %i.jc = load i32, ptr @parms, align 8, !tbaa !25
  %.not = icmp eq i32 %i.jc, 0
  br i1 %.not, label %.preheader, label %bb.au

.preheader:                                       ; preds = %initPositions.exit
  %i.jd = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !105 ; 2 uses
  %i.je = icmp sgt i32 %i.jd, 0
  br i1 %i.je, label %.lr.ph90.preheader, label %.loopexit75

.lr.ph90.preheader:                               ; preds = %.preheader
  %.pre112 = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !21
  %.pre114 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !19
  br label %.lr.ph90

bb.au:                                            ; preds = %initPositions.exit
  %i.jf = tail call i32 @agnnodes(ptr noundef %0) #6
  %i.jg = tail call ptr @mkGrid(i32 noundef %i.jf) #6 ; 5 uses
  %i.jh = tail call i32 @agnnodes(ptr noundef %0) #6
  tail call void @adjustGrid(ptr noundef %i.jg, i32 noundef %i.jh) #6
  %i.ji = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !105 ; 2 uses
  %i.jj = icmp sgt i32 %i.ji, 0
  br i1 %i.jj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.au
  %.pre107 = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !21
  %.pre109 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !19
  br label %.lr.ph

._crit_edge:                                      ; preds = %gAdjust.exit, %bb.au
  tail call void @delGrid(ptr noundef %i.jg) #6
  br label %.loopexit75

.lr.ph:                                           ; preds = %.lr.ph.preheader, %gAdjust.exit
  %i.jk = phi i32 [ %i.na, %gAdjust.exit ], [ %i.ji, %.lr.ph.preheader ]
  %i.jl = phi i32 [ %i.nb, %gAdjust.exit ], [ %.pre109, %.lr.ph.preheader ] ; 3 uses
  %i.jm = phi double [ %i.nc, %gAdjust.exit ], [ %.pre107, %.lr.ph.preheader ] ; 2 uses
  %.03388 = phi i32 [ %i.nd, %gAdjust.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.jn = sub nsw i32 %i.jl, %.03388
  %i.jo = sitofp i32 %i.jn to double
  %i.jp = fmul double %i.jm, %i.jo
  %i.jq = sitofp i32 %i.jl to double
  %i.jr = fdiv double %i.jp, %i.jq                ; 2 uses
  %i.js = fcmp ugt double %i.jr, 0.000000e+00
  br i1 %i.js, label %bb.av, label %gAdjust.exit

bb.av:                                            ; preds = %.lr.ph
  tail call void @clearGrid(ptr noundef %i.jg) #6
  %i.jt = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not42.i = icmp eq ptr %i.jt, null
  br i1 %.not42.i, label %._crit_edge.i40, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.av, %.lr.ph.i38
  %.03443.i = phi ptr [ %i.kl, %.lr.ph.i38 ], [ %i.jt, %bb.av ] ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.03443.i, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !29 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 152
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !48
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jy, i8 0, i64 16, i1 false)
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !46
  %i.kb = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 72), align 8
  %i.kc = load <2 x double>, ptr %i.ka, align 8, !tbaa !18
  %i.kd = shufflevector <1 x double> %i.kb, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ke = fdiv <2 x double> %i.kc, %i.kd          ; 2 uses
  %i.kf = extractelement <2 x double> %i.ke, i64 0
  %i.kg = tail call double @llvm.floor.f64(double %i.kf)
  %i.kh = fptosi double %i.kg to i32
  %i.ki = extractelement <2 x double> %i.ke, i64 1
  %i.kj = tail call double @llvm.floor.f64(double %i.ki)
  %i.kk = fptosi double %i.kj to i32
  tail call void @addGrid(ptr noundef %i.jg, i32 noundef %i.kh, i32 noundef %i.kk, ptr noundef nonnull %.03443.i) #6
  %i.kl = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.03443.i) #6 ; 2 uses
  %.not.i39 = icmp eq ptr %i.kl, null
  br i1 %.not.i39, label %._crit_edge.i40, label %.lr.ph.i38, !llvm.loop !72

._crit_edge.i40:                                  ; preds = %.lr.ph.i38, %bb.av
  %i.km = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not3749.i = icmp eq ptr %i.km, null
  br i1 %.not3749.i, label %._crit_edge53.i, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %._crit_edge.i40, %._crit_edge48.i
  %.150.i = phi ptr [ %i.mz, %._crit_edge48.i ], [ %i.km, %._crit_edge.i40 ] ; 4 uses
  %i.kn = tail call ptr @agfstout(ptr noundef %0, ptr noundef nonnull %.150.i) #6 ; 2 uses
  %.not3844.i = icmp eq ptr %i.kn, null
  br i1 %.not3844.i, label %._crit_edge48.i, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %.lr.ph52.i
  %i.ko = getelementptr inbounds nuw i8, ptr %.150.i, i64 16 ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ba, %.lr.ph47.i
  %.045.i = phi ptr [ %i.kn, %.lr.ph47.i ], [ %i.my, %bb.ba ] ; 4 uses
  %i.kp = load i32, ptr %.045.i, align 8
  %i.kq = and i32 %i.kp, 3
  %i.kr = icmp eq i32 %i.kq, 2
  %i.ks = select i1 %i.kr, i64 56, i64 -8
  %i.kt = getelementptr inbounds i8, ptr %.045.i, i64 %i.ks
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !115 ; 2 uses
  %.not39.i = icmp eq ptr %.150.i, %i.ku
  br i1 %.not39.i, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !29
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 176
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !46
  %i.kz = load ptr, ptr %i.ko, align 8, !tbaa !29
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 176
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !46
  %i.lc = load <2 x double>, ptr %i.ky, align 8, !tbaa !18
  %i.ld = load <2 x double>, ptr %i.lb, align 8, !tbaa !18
  %i.le = fsub <2 x double> %i.lc, %i.ld          ; 4 uses
  %i.lf = extractelement <2 x double> %i.le, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.le, %i.le
  %i.lg = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.lh = tail call double @llvm.fmuladd.f64(double %i.lf, double %i.lf, double %i.lg) ; 2 uses
  %i.li = fcmp oeq double %i.lh, 0.000000e+00
  br i1 %i.li, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ax, %.lr.ph.i.i
  %i.lj = tail call i32 @rand() #6
  %i.lk = tail call i32 @rand() #6
  %i.ll = insertelement <2 x i32> poison, i32 %i.lj, i64 0
  %i.lm = insertelement <2 x i32> %i.ll, i32 %i.lk, i64 1
  %i.ln = srem <2 x i32> %i.lm, splat (i32 10)
  %i.lo = sub nsw <2 x i32> splat (i32 5), %i.ln
  %i.lp = sitofp <2 x i32> %i.lo to <2 x double>  ; 4 uses
  %i.lq = extractelement <2 x double> %i.lp, i64 0 ; 2 uses
  %foldExtExtBinop187 = fmul nnan <2 x double> %i.lp, %i.lp
  %i.lr = extractelement <2 x double> %foldExtExtBinop187, i64 1
  %i.ls = tail call double @llvm.fmuladd.f64(double %i.lq, double %i.lq, double %i.lr) ; 2 uses
  %i.lt = fcmp oeq double %i.ls, 0.000000e+00
  br i1 %i.lt, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !73

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.ax
  %.0.lcssa.i.i = phi double [ %i.lh, %bb.ax ], [ %i.ls, %.lr.ph.i.i ]
  %i.lu = phi <2 x double> [ %i.le, %bb.ax ], [ %i.lp, %.lr.ph.i.i ] ; 2 uses
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %.0.lcssa.i.i) ; 3 uses
  %i.lv = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 4), align 4, !tbaa !54
  %.not.i.i = icmp eq i32 %i.lv, 0
  %i.lw = getelementptr inbounds nuw i8, ptr %.045.i, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !29 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 176
end_hunk_0
begin_hunk_1_@fdp_tLayout:bb.a
  %i.pd = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 48), align 8, !tbaa !20 ; 2 uses
  %i.pe = fmul double %i.pd, %i.pd                ; 2 uses
  %i.pf = fmul nnan double %.026.lcssa.i.i, %.026.lcssa.i.i ; 2 uses
  br i1 %.not.i44.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.pg = fmul double %.026.lcssa.i.i, %i.pf
  %i.ph = fdiv double %i.pe, %i.pg
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.pi = fdiv double %i.pe, %i.pf
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %._crit_edge.i43.i
  %.0.i.i = phi double [ %i.pi, %bb.bf ], [ %i.ph, %bb.be ], [ 0.000000e+00, %._crit_edge.i43.i ] ; 5 uses
  %i.pj = load ptr, ptr %i.nx, align 8, !tbaa !29 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 152
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !48 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !50
  %.not29.i.i = icmp eq ptr %i.pn, null
  br i1 %.not29.i.i, label %bb.bh, label %.doRep.exit_crit_edge.i

.doRep.exit_crit_edge.i:                          ; preds = %bb.bg
  %.pre.i44 = load ptr, ptr %i.ny, align 8, !tbaa !29
  br label %doRep.exit.i

bb.bh:                                            ; preds = %bb.bg
  %i.po = getelementptr inbounds nuw i8, ptr %i.pj, i64 336
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !51
  %.not30.i.i = icmp eq ptr %i.pp, null
  %.pre73.i = load ptr, ptr %i.ny, align 8, !tbaa !29 ; 6 uses
  br i1 %.not30.i.i, label %bb.bi, label %doRep.exit.i

bb.bi:                                            ; preds = %bb.bh
  %i.pq = getelementptr inbounds nuw i8, ptr %.pre73.i, i64 152
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !48
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !50
  %.not31.i.i = icmp eq ptr %i.pt, null
  br i1 %.not31.i.i, label %bb.bj, label %doRep.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.pu = getelementptr inbounds nuw i8, ptr %.pre73.i, i64 336
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !51
  %.not32.i.i = icmp eq ptr %i.pv, null
  br i1 %.not32.i.i, label %bb.bk, label %doRep.exit.i

bb.bk:                                            ; preds = %bb.bj
  %i.pw = fmul double %.0.i.i, 1.000000e+01
  br label %doRep.exit.i

doRep.exit.i:                                     ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh, %.doRep.exit_crit_edge.i
  %i.px = phi ptr [ %.pre.i44, %.doRep.exit_crit_edge.i ], [ %.pre73.i, %bb.bh ], [ %.pre73.i, %bb.bi ], [ %.pre73.i, %bb.bj ], [ %.pre73.i, %bb.bk ]
  %.1.i.i = phi double [ %.0.i.i, %.doRep.exit_crit_edge.i ], [ %.0.i.i, %bb.bh ], [ %.0.i.i, %bb.bi ], [ %.0.i.i, %bb.bj ], [ %i.pw, %bb.bk ]
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 152
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !48
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16 ; 2 uses
  %i.qb = load <2 x double>, ptr %i.qa, align 8, !tbaa !18
  %i.qc = insertelement <2 x double> poison, double %.1.i.i, i64 0
  %i.qd = shufflevector <2 x double> %i.qc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ox, <2 x double> %i.qd, <2 x double> %i.qb)
  store <2 x double> %i.qe, ptr %i.qa, align 8, !tbaa !18
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pl, i64 16 ; 2 uses
  %i.qg = fneg <2 x double> %i.ox
  %i.qh = load <2 x double>, ptr %i.qf, align 8, !tbaa !18
  %i.qi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qg, <2 x double> %i.qd, <2 x double> %i.qh)
  store <2 x double> %i.qi, ptr %i.qf, align 8, !tbaa !18
  %i.qj = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.03554.i) #6 ; 2 uses
  %.not40.i = icmp eq ptr %i.qj, null
  br i1 %.not40.i, label %._crit_edge57.i, label %bb.bc, !llvm.loop !78

._crit_edge57.i:                                  ; preds = %doRep.exit.i, %.lr.ph66.i
  %i.qk = tail call ptr @agfstout(ptr noundef %0, ptr noundef nonnull %.164.i) #6 ; 2 uses
  %.not4158.i = icmp eq ptr %i.qk, null
  br i1 %.not4158.i, label %._crit_edge62.i, label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %._crit_edge57.i
  %i.ql = getelementptr inbounds nuw i8, ptr %.164.i, i64 16 ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bp, %.lr.ph61.i
  %.059.i = phi ptr [ %i.qk, %.lr.ph61.i ], [ %i.sv, %bb.bp ] ; 4 uses
  %i.qm = load i32, ptr %.059.i, align 8
  %i.qn = and i32 %i.qm, 3
  %i.qo = icmp eq i32 %i.qn, 2
  %i.qp = select i1 %i.qo, i64 56, i64 -8
  %i.qq = getelementptr inbounds i8, ptr %.059.i, i64 %i.qp
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !115 ; 2 uses
  %.not42.i45 = icmp eq ptr %.164.i, %i.qr
  br i1 %.not42.i45, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 16 ; 2 uses
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !29
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 176
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !46
  %i.qw = load ptr, ptr %i.ql, align 8, !tbaa !29
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 176
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !46
  %i.qz = load <2 x double>, ptr %i.qv, align 8, !tbaa !18
  %i.ra = load <2 x double>, ptr %i.qy, align 8, !tbaa !18
  %i.rb = fsub <2 x double> %i.qz, %i.ra          ; 4 uses
  %i.rc = extractelement <2 x double> %i.rb, i64 0 ; 2 uses
  %foldExtExtBinop189 = fmul <2 x double> %i.rb, %i.rb
  %i.rd = extractelement <2 x double> %foldExtExtBinop189, i64 1
  %i.re = tail call double @llvm.fmuladd.f64(double %i.rc, double %i.rc, double %i.rd) ; 2 uses
  %i.rf = fcmp oeq double %i.re, 0.000000e+00
  br i1 %i.rf, label %.lr.ph.i.i55, label %._crit_edge.i.i46

.lr.ph.i.i55:                                     ; preds = %bb.bm, %.lr.ph.i.i55
  %i.rg = tail call i32 @rand() #6
  %i.rh = tail call i32 @rand() #6
  %i.ri = insertelement <2 x i32> poison, i32 %i.rg, i64 0
  %i.rj = insertelement <2 x i32> %i.ri, i32 %i.rh, i64 1
  %i.rk = srem <2 x i32> %i.rj, splat (i32 10)
  %i.rl = sub nsw <2 x i32> splat (i32 5), %i.rk
  %i.rm = sitofp <2 x i32> %i.rl to <2 x double>  ; 4 uses
  %i.rn = extractelement <2 x double> %i.rm, i64 0 ; 2 uses
  %foldExtExtBinop191 = fmul nnan <2 x double> %i.rm, %i.rm
  %i.ro = extractelement <2 x double> %foldExtExtBinop191, i64 1
  %i.rp = tail call double @llvm.fmuladd.f64(double %i.rn, double %i.rn, double %i.ro) ; 2 uses
  %i.rq = fcmp oeq double %i.rp, 0.000000e+00
  br i1 %i.rq, label %.lr.ph.i.i55, label %._crit_edge.i.i46, !llvm.loop !73

._crit_edge.i.i46:                                ; preds = %.lr.ph.i.i55, %bb.bm
  %.0.lcssa.i.i49 = phi double [ %i.re, %bb.bm ], [ %i.rp, %.lr.ph.i.i55 ]
  %i.rr = phi <2 x double> [ %i.rb, %bb.bm ], [ %i.rm, %.lr.ph.i.i55 ] ; 2 uses
  %sqrt.i.i50 = tail call double @llvm.sqrt.f64(double %.0.lcssa.i.i49) ; 3 uses
  %i.rs = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 4), align 4, !tbaa !54
  %.not.i.i51 = icmp eq i32 %i.rs, 0
  %i.rt = getelementptr inbounds nuw i8, ptr %.059.i, i64 16
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !29 ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 176
  %i.rw = load double, ptr %i.rv, align 8, !tbaa !121 ; 2 uses
  br i1 %.not.i.i51, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge.i.i46
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 184
  %i.ry = load double, ptr %i.rx, align 8, !tbaa !122
  %i.rz = fsub double %sqrt.i.i50, %i.ry
  %i.sa = fmul double %i.rw, %i.rz
  %i.sb = fdiv double %i.sa, %sqrt.i.i50
  br label %applyAttr.exit.i52

bb.bo:                                            ; preds = %._crit_edge.i.i46
  %i.sc = fmul double %sqrt.i.i50, %i.rw
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ru, i64 184
  %i.se = load double, ptr %i.sd, align 8, !tbaa !122
  %i.sf = fdiv double %i.sc, %i.se
  br label %applyAttr.exit.i52

applyAttr.exit.i52:                               ; preds = %bb.bo, %bb.bn
  %.033.i.i53 = phi double [ %i.sb, %bb.bn ], [ %i.sf, %bb.bo ]
  %i.sg = load ptr, ptr %i.qs, align 8, !tbaa !29
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 152
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !48
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16 ; 2 uses
  %i.sk = fneg <2 x double> %i.rr
  %i.sl = load <2 x double>, ptr %i.sj, align 8, !tbaa !18
  %i.sm = insertelement <2 x double> poison, double %.033.i.i53, i64 0
  %i.sn = shufflevector <2 x double> %i.sm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.so = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sk, <2 x double> %i.sn, <2 x double> %i.sl)
  store <2 x double> %i.so, ptr %i.sj, align 8, !tbaa !18
  %i.sp = load ptr, ptr %i.ql, align 8, !tbaa !29
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 152
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !48
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 16 ; 2 uses
  %i.st = load <2 x double>, ptr %i.ss, align 8, !tbaa !18
  %i.su = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rr, <2 x double> %i.sn, <2 x double> %i.st)
  store <2 x double> %i.su, ptr %i.ss, align 8, !tbaa !18
  br label %bb.bp

bb.bp:                                            ; preds = %applyAttr.exit.i52, %bb.bl
  %i.sv = tail call ptr @agnxtout(ptr noundef %0, ptr noundef nonnull %.059.i) #6 ; 2 uses
  %.not41.i = icmp eq ptr %i.sv, null
  br i1 %.not41.i, label %._crit_edge62.i, label %bb.bl, !llvm.loop !79

._crit_edge62.i:                                  ; preds = %bb.bp, %._crit_edge57.i
  %i.sw = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.164.i) #6 ; 2 uses
  %.not39.i54 = icmp eq ptr %i.sw, null
  br i1 %.not39.i54, label %._crit_edge67.i, label %.lr.ph66.i, !llvm.loop !80

._crit_edge67.i:                                  ; preds = %._crit_edge62.i, %._crit_edge.i43
  tail call fastcc void @updatePos(ptr noundef %0, double noundef %i.nm, ptr noundef readnone %i.e)
  %.pre111 = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !21
  %.pre113 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !19
  %.pre115 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !105
  br label %adjust.exit

adjust.exit:                                      ; preds = %.lr.ph90, %._crit_edge67.i
  %i.sx = phi i32 [ %i.nf, %.lr.ph90 ], [ %.pre115, %._crit_edge67.i ] ; 2 uses
  %i.sy = phi i32 [ %i.ng, %.lr.ph90 ], [ %.pre113, %._crit_edge67.i ]
  %i.sz = phi double [ %i.nh, %.lr.ph90 ], [ %.pre111, %._crit_edge67.i ]
  %i.ta = add nuw nsw i32 %.03289, 1              ; 2 uses
  %i.tb = icmp slt i32 %i.ta, %i.sx
  br i1 %i.tb, label %.lr.ph90, label %.loopexit75, !llvm.loop !81

.loopexit75:                                      ; preds = %adjust.exit, %.preheader, %._crit_edge
  %i.tc = fcmp une <2 x double> %i.de, zeroinitializer ; 2 uses
  %2 = extractelement <2 x i1> %i.tc, i64 0
  %3 = extractelement <2 x i1> %i.tc, i64 1
  %or.cond = select i1 %2, i1 true, i1 %3
  br i1 %or.cond, label %bb.bq, label %.loopexit

bb.bq:                                            ; preds = %.loopexit75
  %i.td = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not3491 = icmp eq ptr %i.td, null
  br i1 %.not3491, label %.loopexit, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %bb.bq
  %i.te = extractelement <2 x double> %i.de, i64 0
  %i.tf = extractelement <2 x double> %i.de, i64 1
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %.lr.ph94
  %.092 = phi ptr [ %i.tp, %.lr.ph94 ], [ %i.td, %.lr.ph94.preheader ] ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.092, i64 16
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !29
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 176
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !46 ; 3 uses
  %i.tk = load double, ptr %i.tj, align 8, !tbaa !18
  %i.tl = fadd double %i.te, %i.tk
  store double %i.tl, ptr %i.tj, align 8, !tbaa !18
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tj, i64 8 ; 2 uses
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !18
  %i.to = fadd double %i.tf, %i.tn
  store double %i.to, ptr %i.tm, align 8, !tbaa !18
  %i.tp = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.092) #6 ; 2 uses
  %.not34 = icmp eq ptr %i.tp, null
  br i1 %.not34, label %.loopexit, label %.lr.ph94, !llvm.loop !82

.loopexit:                                        ; preds = %.lr.ph94, %bb.bq, %.loopexit75
  br i1 %i.g, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.loopexit
  store double -1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !21
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.loopexit
  ret void
}

declare ptr @mkGrid(i32 noundef) local_unnamed_addr #1

declare i32 @agnnodes(ptr noundef) local_unnamed_addr #1

declare void @adjustGrid(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @delGrid(ptr noundef) local_unnamed_addr #1

declare ptr @agfstnode(ptr noundef) local_unnamed_addr #1

declare ptr @agnxtnode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @srand48(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare ptr @agfstedge(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @agnxtedge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare double @drand48() local_unnamed_addr #3

declare void @clearGrid(ptr noundef) local_unnamed_addr #1

declare void @addGrid(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

declare ptr @agfstout(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @agnxtout(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @walkGrid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @gridRepulse(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 11 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !128    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !129  ; 4 uses
  %.not53 = icmp eq ptr %i.b, null
  br i1 %.not53, label %._crit_edge55, label %.preheader

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %.04654 = phi ptr [ %i.bw, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.l
  %.052 = phi ptr [ %i.b, %.preheader ], [ %i.bu, %bb.l ] ; 3 uses
  %.not48 = icmp eq ptr %.04654, %.052
  br i1 %.not48, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.04654, align 8, !tbaa !58
  %i.g = load ptr, ptr %.052, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.p = load <2 x double>, ptr %i.k, align 8, !tbaa !18
  %i.q = load <2 x double>, ptr %i.o, align 8, !tbaa !18
  %i.r = fsub <2 x double> %i.p, %i.q             ; 3 uses
  %i.s = extractelement <2 x double> %i.r, i64 1
  %i.t = extractelement <2 x double> %i.r, i64 0
  %i.u = tail call double @hypot(double noundef %i.t, double noundef %i.s) #6 ; 2 uses
  %i.v = fcmp ule double %i.u, 0.000000e+00
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.w = tail call i32 @rand() #6
  %i.x = tail call i32 @rand() #6
  %i.y = insertelement <2 x i32> poison, i32 %i.w, i64 0
  %i.z = insertelement <2 x i32> %i.y, i32 %i.x, i64 1
  %i.aa = srem <2 x i32> %i.z, splat (i32 10)
  %i.ab = sub nsw <2 x i32> splat (i32 5), %i.aa
  %i.ac = sitofp <2 x i32> %i.ab to <2 x double>  ; 3 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 1
  %i.ae = extractelement <2 x double> %i.ac, i64 0
  %i.af = tail call double @hypot(double noundef %i.ae, double noundef %i.ad) #6 ; 2 uses
  %i.ag = fcmp ule double %i.af, 0.000000e+00
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.026.lcssa.i = phi double [ %i.u, %bb.c ], [ %i.af, %.lr.ph.i ] ; 4 uses
  %i.ah = phi <2 x double> [ %i.r, %bb.c ], [ %i.ac, %.lr.ph.i ] ; 2 uses
  %i.ai = load ptr, ptr @fdp_parms, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !55
  %i.al = fcmp ogt double %.026.lcssa.i, %i.ak
  br i1 %i.al, label %bb.g, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 4), align 4, !tbaa !54
  %.not.i = icmp eq i32 %i.am, 0
  %i.an = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 48), align 8, !tbaa !20 ; 2 uses
  %i.ao = fmul double %i.an, %i.an                ; 2 uses
  %i.ap = fmul nnan double %.026.lcssa.i, %.026.lcssa.i ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = fmul double %.026.lcssa.i, %i.ap
  %i.ar = fdiv double %i.ao, %i.aq
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.as = fdiv double %i.ao, %i.ap
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i
  %.0.i = phi double [ %i.as, %bb.f ], [ %i.ar, %bb.e ], [ 0.000000e+00, %._crit_edge.i ] ; 5 uses
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !29  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 152
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !50
  %.not29.i = icmp eq ptr %i.ax, null
  br i1 %.not29.i, label %bb.h, label %.doRep.exit_crit_edge

.doRep.exit_crit_edge:                            ; preds = %bb.g
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !29
  br label %doRep.exit

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 336
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !51
  %.not30.i = icmp eq ptr %i.az, null
  %.pre58 = load ptr, ptr %i.h, align 8, !tbaa !29 ; 6 uses
  br i1 %.not30.i, label %bb.i, label %doRep.exit

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre58, i64 152
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !48
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !50
  %.not31.i = icmp eq ptr %i.bd, null
  br i1 %.not31.i, label %bb.j, label %doRep.exit

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %.pre58, i64 336
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !51
  %.not32.i = icmp eq ptr %i.bf, null
  br i1 %.not32.i, label %bb.k, label %doRep.exit

bb.k:                                             ; preds = %bb.j
  %i.bg = fmul double %.0.i, 1.000000e+01
end_hunk_1
