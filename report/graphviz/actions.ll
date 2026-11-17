Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/actions?download=true
inline.NumInlined: 62
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@colorx:bb.a
  %i.bx = insertelement <2 x double> %i.bw, double %.0.i.i, i64 1
  br label %.thread

bb.u:                                             ; preds = %bb.k
  %i.by = load i32, ptr %i.f, align 4, !tbaa !33
  %i.bz = shl i32 %i.by, 8
  %i.ca = and i32 %i.bz, 65280
  %i.cb = and i32 %i.af, 255
  %.sroa.0.1.insert.insert66121 = or disjoint i32 %i.ca, %i.cb
  %i.cc = shl i32 %i.ag, 16
  %i.cd = load i32, ptr %i.h, align 4, !tbaa !33
  %i.ce = shl i32 %i.cd, 24
  %.masked = and i32 %i.cc, 16711680
  %i.cf = or disjoint i32 %.sroa.0.1.insert.insert66121, %.masked
  %.sroa.0.3.insert.insert92123 = or disjoint i32 %i.cf, %i.ce
  br label %.thread114

.thread.i:                                        ; preds = %bb.i, %bb.h
  %i.cg = load i8, ptr %.0113.i, align 1, !tbaa !8 ; 4 uses
  %i.ch = icmp eq i8 %i.cg, 46
  %i.ci = sext i8 %i.cg to i32
  %i.cj = add nsw i32 %i.ci, -48
  %i.ck = icmp ult i32 %i.cj, 10
  %or.cond.i = select i1 %i.ch, i1 true, i1 %i.ck
  br i1 %or.cond.i, label %bb.v, label %bb.ap

bb.v:                                             ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %.not143.i = icmp eq i8 %i.cg, 0
  br i1 %.not143.i, label %._crit_edge.thread.i, label %agxbsizeof.exit.i.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.v
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !73
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 31
  br label %agxblen.exit.i.i.i

agxbsizeof.exit.i.lr.ph.i:                        ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 31 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %agxbsizeof.exit.i.i

agxbsizeof.exit.i.i:                              ; preds = %agxbputc.exit.i, %agxbsizeof.exit.i.lr.ph.i
  %.val.i152.i = phi i8 [ 0, %agxbsizeof.exit.i.lr.ph.i ], [ %.val.i150.i, %agxbputc.exit.i ]
  %.val.i.i.i = phi i8 [ 0, %agxbsizeof.exit.i.lr.ph.i ], [ %.val.i.i149.i, %agxbputc.exit.i ] ; 3 uses
  %i.cp = phi i8 [ %i.cg, %agxbsizeof.exit.i.lr.ph.i ], [ %i.dd, %agxbputc.exit.i ] ; 2 uses
  %.0111144.i = phi ptr [ %.0113.i, %agxbsizeof.exit.i.lr.ph.i ], [ %i.cq, %agxbputc.exit.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0111144.i, i64 1 ; 2 uses
  %i.cr = icmp eq i8 %i.cp, 44
  %narrow.i = select i1 %i.cr, i8 32, i8 %i.cp    ; 2 uses
  %.not.i.i126.i = icmp eq i8 %.val.i.i.i, -1     ; 2 uses
  %i.cs = load i64, ptr %i.cn, align 8
  %i.ct = load i64, ptr %i.co, align 8
  %i.cu = zext i8 %.val.i.i.i to i64
  %.0.i20.i.i = select i1 %.not.i.i126.i, i64 %i.cs, i64 %i.cu
  %.0.i14.i.i = select i1 %.not.i.i126.i, i64 %i.ct, i64 31
  %.not.i.i = icmp ult i64 %.0.i20.i.i, %.0.i14.i.i
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %agxbsizeof.exit.i.i
  call fastcc void @agxbmore(ptr noundef nonnull %3, i64 noundef 1)
  %.val.i15.pre.i.i = load i8, ptr %i.cm, align 1, !tbaa !8 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %agxbsizeof.exit.i.i
  %.val.i151.i = phi i8 [ %.val.i15.pre.i.i, %bb.w ], [ %.val.i152.i, %agxbsizeof.exit.i.i ]
  %.val.i.i147.i = phi i8 [ %.val.i15.pre.i.i, %bb.w ], [ %.val.i.i.i, %agxbsizeof.exit.i.i ] ; 2 uses
  %.not.i16.i.i = icmp eq i8 %.val.i.i147.i, -1
  br i1 %.not.i16.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = zext i8 %.val.i.i147.i to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 %i.cv
  store i8 %narrow.i, ptr %i.cw, align 1, !tbaa !8
  %i.cx = load i8, ptr %i.cm, align 1, !tbaa !8
  %i.cy = add i8 %i.cx, 1                         ; 3 uses
  store i8 %i.cy, ptr %i.cm, align 1, !tbaa !8
  br label %agxbputc.exit.i

bb.z:                                             ; preds = %bb.x
  %i.cz = load i64, ptr %i.cn, align 8, !tbaa !8  ; 2 uses
  %i.da = load ptr, ptr %3, align 8, !tbaa !8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cz
  store i8 %narrow.i, ptr %i.db, align 1, !tbaa !8
  %i.dc = add i64 %i.cz, 1
  store i64 %i.dc, ptr %i.cn, align 8, !tbaa !8
  br label %agxbputc.exit.i

agxbputc.exit.i:                                  ; preds = %bb.z, %bb.y
  %.val.i150.i = phi i8 [ %i.cy, %bb.y ], [ %.val.i151.i, %bb.z ] ; 3 uses
  %.val.i.i149.i = phi i8 [ %i.cy, %bb.y ], [ -1, %bb.z ]
  %i.dd = load i8, ptr %i.cq, align 1, !tbaa !8   ; 2 uses
  %.not.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i, label %._crit_edge.i, label %agxbsizeof.exit.i.i, !llvm.loop !70

._crit_edge.i:                                    ; preds = %agxbputc.exit.i
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !73
  switch i8 %.val.i150.i, label %agxblen.exit.i.i.i [
    i8 -1, label %bb.aa
    i8 31, label %agxbuse.exit.thread.i
  ]

agxblen.exit.i.i.i:                               ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.de = phi ptr [ %i.cl, %._crit_edge.thread.i ], [ %i.cm, %._crit_edge.i ]
  %.val.i163.i = phi i8 [ 0, %._crit_edge.thread.i ], [ %.val.i150.i, %._crit_edge.i ] ; 2 uses
  %i.df = zext i8 %.val.i163.i to i64
  br label %agxbsizeof.exit.i.i.i

bb.aa:                                            ; preds = %._crit_edge.i
  %i.dg = load i64, ptr %i.cn, align 8, !tbaa !8
  %i.dh = load i64, ptr %i.co, align 8, !tbaa !8
  br label %agxbsizeof.exit.i.i.i

agxbsizeof.exit.i.i.i:                            ; preds = %bb.aa, %agxblen.exit.i.i.i
  %i.di = phi ptr [ %i.cm, %bb.aa ], [ %i.de, %agxblen.exit.i.i.i ] ; 4 uses
  %.val.i162.i = phi i8 [ -1, %bb.aa ], [ %.val.i163.i, %agxblen.exit.i.i.i ]
  %.0.i20.i.i.i = phi i64 [ %i.dg, %bb.aa ], [ %i.df, %agxblen.exit.i.i.i ]
  %.0.i14.i.i.i = phi i64 [ %i.dh, %bb.aa ], [ 31, %agxblen.exit.i.i.i ]
  %.not.i5.i.i = icmp ult i64 %.0.i20.i.i.i, %.0.i14.i.i.i
  br i1 %.not.i5.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %agxbsizeof.exit.i.i.i
  call fastcc void @agxbmore(ptr noundef nonnull %3, i64 noundef 1)
  %.val.i15.pre.i.i.i = load i8, ptr %i.di, align 1, !tbaa !8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %agxbsizeof.exit.i.i.i
  %.val.i6.pr.i.i = phi i8 [ %.val.i15.pre.i.i.i, %bb.ab ], [ %.val.i162.i, %agxbsizeof.exit.i.i.i ] ; 2 uses
  %.not.i16.i.i.i = icmp eq i8 %.val.i6.pr.i.i, -1
  br i1 %.not.i16.i.i.i, label %agxbputc.exit.i.thread.i, label %agxbputc.exit.i.i

agxbputc.exit.i.thread.i:                         ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !8
  %i.dl = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk
  store i8 0, ptr %i.dm, align 1, !tbaa !8
  br label %agxbuse.exit.i

agxbputc.exit.i.i:                                ; preds = %bb.ac
  %i.dn = zext i8 %.val.i6.pr.i.i to i64
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 %i.dn
  store i8 0, ptr %i.do, align 1, !tbaa !8
  %i.dp = load i8, ptr %i.di, align 1, !tbaa !8
  %i.dq = add i8 %i.dp, 1                         ; 2 uses
  store i8 %i.dq, ptr %i.di, align 1, !tbaa !8
  %i.dr = icmp eq i8 %i.dq, -1
  br i1 %i.dr, label %agxbputc.exit.i.i.agxbuse.exit.i_crit_edge, label %agxbuse.exit.thread.i

agxbputc.exit.i.i.agxbuse.exit.i_crit_edge:       ; preds = %agxbputc.exit.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !8
  br label %agxbuse.exit.i

agxbuse.exit.i:                                   ; preds = %agxbputc.exit.i.i.agxbuse.exit.i_crit_edge, %agxbputc.exit.i.thread.i
  %i.ds = phi ptr [ %.pre, %agxbputc.exit.i.i.agxbuse.exit.i_crit_edge ], [ %i.dl, %agxbputc.exit.i.thread.i ] ; 2 uses
  %i.dt = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.ds, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #19
  %i.du = icmp slt i32 %i.dt, 3
  br i1 %i.du, label %bb.ao, label %bb.ad

agxbuse.exit.thread.i:                            ; preds = %agxbputc.exit.i.i, %._crit_edge.i
  %i.dv = phi ptr [ %i.di, %agxbputc.exit.i.i ], [ %i.cm, %._crit_edge.i ]
  store i8 0, ptr %i.dv, align 1, !tbaa !8
  %i.dw = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #19
  %i.dx = icmp slt i32 %i.dw, 3
  br i1 %i.dx, label %agxbfree.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %agxbuse.exit.thread.i, %agxbuse.exit.i
  %i.dy = phi i1 [ false, %agxbuse.exit.thread.i ], [ true, %agxbuse.exit.i ]
  %i.dz = load double, ptr %i.a, align 8, !tbaa !73
  %i.ea = load double, ptr %i.b, align 8, !tbaa !73
  %i.eb = load double, ptr %i.c, align 8, !tbaa !73
  %i.ec = load double, ptr %i.d, align 8, !tbaa !73
  %i.ed = insertelement <4 x double> poison, double %i.dz, i64 0
  %i.ee = insertelement <4 x double> %i.ed, double %i.eb, i64 1
  %i.ef = insertelement <4 x double> %i.ee, double %i.ea, i64 2
  %i.eg = insertelement <4 x double> %i.ef, double %i.ec, i64 3
  %i.eh = call nsz <4 x double> @llvm.minnum.v4f64(<4 x double> %i.eg, <4 x double> splat (double 1.000000e+00))
  %i.ei = call nsz <4 x double> @llvm.maxnum.v4f64(<4 x double> %i.eh, <4 x double> zeroinitializer) ; 6 uses
  %i.ej = extractelement <4 x double> %i.ei, i64 0 ; 4 uses
  store double %i.ej, ptr %i.a, align 8, !tbaa !73
  %i.ek = extractelement <4 x double> %i.ei, i64 2 ; 4 uses
  store double %i.ek, ptr %i.b, align 8, !tbaa !73
  %i.el = extractelement <4 x double> %i.ei, i64 1 ; 13 uses
  store double %i.el, ptr %i.c, align 8, !tbaa !73
  %i.em = extractelement <4 x double> %i.ei, i64 3
  store double %i.em, ptr %i.d, align 8, !tbaa !73
  br i1 %.015, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %bb.ad
  %i.en = fcmp ugt double %i.ek, 0.000000e+00
  br i1 %i.en, label %bb.af, label %hsv2rgb.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.eo = fcmp oge double %i.ej, 1.000000e+00
  %i.ep = fmul nnan double %i.ej, 6.000000e+00
  %i.eq = select i1 %i.eo, double 0.000000e+00, double %i.ep ; 2 uses
  %i.er = fptosi double %i.eq to i32              ; 2 uses
  %i.es = uitofp nneg i32 %i.er to double
  %i.et = fsub double %i.eq, %i.es                ; 2 uses
  %i.eu = fsub nnan ninf double 1.000000e+00, %i.ek
  %i.ev = fmul nnan double %i.eu, %i.el           ; 6 uses
  %i.ew = fneg double %i.ek
  %i.ex = fsub nnan double 1.000000e+00, %i.et
  %i.ey = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = insertelement <2 x double> poison, double %i.et, i64 0
  %i.fb = insertelement <2 x double> %i.fa, double %i.ex, i64 1
  %i.fc = call nnan <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> %i.fb, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.fd = extractelement <2 x double> %i.fc, i64 0
  %i.fe = fmul double %i.el, %i.fd                ; 3 uses
  %i.ff = extractelement <2 x double> %i.fc, i64 1
  %i.fg = fmul double %i.el, %i.ff                ; 3 uses
  switch i32 %i.er, label %bb.al [
    i32 0, label %hsv2rgb.exit.i
    i32 1, label %bb.ag
    i32 2, label %bb.ah
    i32 3, label %bb.ai
    i32 4, label %bb.aj
    i32 5, label %bb.ak
  ]

bb.ag:                                            ; preds = %bb.af
  br label %hsv2rgb.exit.i

bb.ah:                                            ; preds = %bb.af
  br label %hsv2rgb.exit.i

bb.ai:                                            ; preds = %bb.af
  br label %hsv2rgb.exit.i

bb.aj:                                            ; preds = %bb.af
  br label %hsv2rgb.exit.i

bb.ak:                                            ; preds = %bb.af
  br label %hsv2rgb.exit.i

bb.al:                                            ; preds = %bb.af
  %i.fh = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.fi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fh, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.49, i32 noundef 88) #22 ; 0 uses
  call void @abort() #24
  unreachable

hsv2rgb.exit.i:                                   ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %.sink57.i.i = phi double [ %i.el, %bb.ae ], [ %i.fe, %bb.ag ], [ %i.ev, %bb.ah ], [ %i.ev, %bb.ai ], [ %i.fg, %bb.aj ], [ %i.el, %bb.ak ], [ %i.el, %bb.af ]
  %.sink56.i.i = phi double [ %i.el, %bb.ae ], [ %i.el, %bb.ag ], [ %i.el, %bb.ah ], [ %i.fe, %bb.ai ], [ %i.ev, %bb.aj ], [ %i.ev, %bb.ak ], [ %i.fg, %bb.af ]
  %.sink.i.i = phi double [ %i.el, %bb.ae ], [ %i.ev, %bb.ag ], [ %i.fg, %bb.ah ], [ %i.el, %bb.ai ], [ %i.el, %bb.aj ], [ %i.fe, %bb.ak ], [ %i.ev, %bb.af ]
  %i.fj = insertelement <4 x double> %i.ei, double %.sink57.i.i, i64 0
  %i.fk = insertelement <4 x double> %i.fj, double %.sink56.i.i, i64 1
  %i.fl = insertelement <4 x double> %i.fk, double %.sink.i.i, i64 2
  %i.fm = fmul <4 x double> %i.fl, splat (double 2.550000e+02)
  %i.fn = fptoui <4 x double> %i.fm to <4 x i8>
  %i.fo = bitcast <4 x i8> %i.fn to i32
  %i.fp = zext i32 %i.fo to i64
  %i.fq = bitcast i64 %i.fp to double             ; 2 uses
  %i.fr = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.fq, i64 0
  br label %bb.am

bb.am:                                            ; preds = %bb.ad, %hsv2rgb.exit.i
  %.sroa.0.0 = phi double [ %i.fq, %hsv2rgb.exit.i ], [ %i.ej, %bb.ad ]
  %i.fs = phi <4 x double> [ %i.fr, %hsv2rgb.exit.i ], [ %i.ei, %bb.ad ]
  br i1 %i.dy, label %bb.an, label %bb.be

bb.an:                                            ; preds = %bb.am
  %.val124.i = load ptr, ptr %3, align 8
  call void @free(ptr noundef %.val124.i) #19
  br label %bb.be

bb.ao:                                            ; preds = %agxbuse.exit.i
  call void @free(ptr noundef %i.ds) #19
  br label %agxbfree.exit.thread.i

agxbfree.exit.thread.i:                           ; preds = %bb.ao, %agxbuse.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ap

bb.ap:                                            ; preds = %agxbfree.exit.thread.i, %.thread.i
  %i.ft = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0113.i, ptr noundef nonnull dereferenceable(6) @.str.51) #20
  %.not.i128.i = icmp eq i32 %i.ft, 0
  br i1 %.not.i128.i, label %resolveColor.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fu = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0113.i, ptr noundef nonnull dereferenceable(6) @.str.52) #20
  %.not26.i.i = icmp eq i32 %i.fu, 0
  br i1 %.not26.i.i, label %resolveColor.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fv = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0113.i, ptr noundef nonnull dereferenceable(10) @.str.53) #20
  %.not27.i.i = icmp eq i32 %i.fv, 0
  br i1 %.not27.i.i, label %resolveColor.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fw = load i8, ptr %.0113.i, align 1, !tbaa !8
  %i.fx = icmp eq i8 %i.fw, 47
  br i1 %i.fx, label %bb.at, label %resolveColor.exit.i

bb.at:                                            ; preds = %bb.as
  %i.fy = call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.p, i32 noundef 47) #20 ; 2 uses
  %.not28.i.i = icmp eq ptr %i.fy, null
  br i1 %.not28.i.i, label %resolveColor.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fz = load i8, ptr %i.p, align 1, !tbaa !8
  %i.ga = icmp eq i8 %i.fz, 47
  br i1 %i.ga, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gb = getelementptr inbounds nuw i8, ptr %.0113.i, i64 2
  br label %resolveColor.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.gc = call i32 @strncasecmp(ptr noundef nonnull @.str.54, ptr noundef nonnull readonly %i.p, i64 noundef 4) #20
  %.not29.i.i = icmp eq i32 %i.gc, 0
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 1
  %spec.select.i.i = select i1 %.not29.i.i, ptr %i.gd, ptr %.0113.i
  br label %resolveColor.exit.i

resolveColor.exit.i:                              ; preds = %bb.aw, %bb.av, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.1.sink.i.i = phi ptr [ %.0113.i, %bb.ar ], [ %.0113.i, %bb.aq ], [ %.0113.i, %bb.ap ], [ %i.p, %bb.at ], [ %spec.select.i.i, %bb.aw ], [ %i.gb, %bb.av ], [ %.0113.i, %bb.as ]
  %i.ge = call noalias ptr @strdup(ptr noundef nonnull %.1.sink.i.i) #19 ; 4 uses
  %.not118.i = icmp eq ptr %i.ge, null
  br i1 %.not118.i, label %colorxlate.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %resolveColor.exit.i, %bb.az
  %.021.i.i = phi i64 [ %.1.i130.i, %bb.az ], [ 2515, %resolveColor.exit.i ] ; 2 uses
  %.01620.i.i = phi i64 [ %.117.i.i, %bb.az ], [ 0, %resolveColor.exit.i ] ; 2 uses
  %i.gf = add i64 %.01620.i.i, %.021.i.i
  %i.gg = lshr i64 %i.gf, 1                       ; 3 uses
  %i.gh = shl i64 %i.gg, 4                        ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr @color_lib, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 16, !tbaa !75
  %i.gk = call i32 @strcasecmp(ptr noundef nonnull readonly %i.ge, ptr noundef %i.gj) #20 ; 2 uses
  %i.gl = icmp slt i32 %i.gk, 0
  br i1 %i.gl, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i
  %.not.i129.i = icmp eq i32 %i.gk, 0
  br i1 %.not.i129.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gm = add nuw i64 %i.gg, 1
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.lr.ph.i.i
  %.117.i.i = phi i64 [ %i.gm, %bb.ay ], [ %.01620.i.i, %.lr.ph.i.i ] ; 2 uses
  %.1.i130.i = phi i64 [ %.021.i.i, %bb.ay ], [ %i.gg, %.lr.ph.i.i ] ; 2 uses
  %i.gn = icmp ult i64 %.117.i.i, %.1.i130.i
  br i1 %i.gn, label %.lr.ph.i.i, label %bb.bd, !llvm.loop !71

bb.ba:                                            ; preds = %bb.ax
  %i.go = getelementptr inbounds nuw i8, ptr @color_lib, i64 %i.gh ; 4 uses
  call void @free(ptr noundef nonnull %i.ge) #19
  br i1 %.015, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load <2 x i8>, ptr %i.gp, align 8, !tbaa !8
  %i.gr = uitofp <2 x i8> %i.gq to <2 x double>
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 10
  %i.gt = load i8, ptr %i.gs, align 2, !tbaa !76
  %i.gu = uitofp i8 %i.gt to double
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 14
  %i.gw = load i8, ptr %i.gv, align 2, !tbaa !77
  %i.gx = fdiv <2 x double> %i.gr, splat (double 2.550000e+02)
  %i.gy = fdiv double %i.gu, 2.550000e+02
  %i.gz = uitofp i8 %i.gw to double
  br label %.thread

bb.bc:                                            ; preds = %bb.ba
  %i.ha = getelementptr inbounds nuw i8, ptr %i.go, i64 11
  %i.hb = load i32, ptr %i.ha, align 1
  br label %.thread114

bb.bd:                                            ; preds = %bb.az
  call void @free(ptr noundef nonnull %i.ge) #19
  br label %colorxlate.exit

colorxlate.exit:                                  ; preds = %bb.bd, %resolveColor.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.bp

.thread:                                          ; preds = %rgb2hsv.exit.i, %bb.bb
  %.sroa.32.1.ph.ph = phi double [ %i.aw, %rgb2hsv.exit.i ], [ %i.gy, %bb.bb ]
  %.sroa.36.1.ph.ph.in = phi double [ %i.aq, %rgb2hsv.exit.i ], [ %i.gz, %bb.bb ]
  %i.hc = phi <2 x double> [ %i.bx, %rgb2hsv.exit.i ], [ %i.gx, %bb.bb ]
  %.sroa.36.1.ph.ph = fdiv double %.sroa.36.1.ph.ph.in, 2.550000e+02
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
end_hunk_0
