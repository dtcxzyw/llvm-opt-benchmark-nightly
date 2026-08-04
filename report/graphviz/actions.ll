inline.NumInlined: 62
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@colorx:bb.a

bb.u:                                             ; preds = %bb.k
  %i.by = load i32, ptr %i.f, align 4, !tbaa !44
  %i.bz = shl i32 %i.by, 8
  %i.ca = and i32 %i.bz, 65280
  %i.cb = and i32 %i.af, 255
  %.sroa.0.1.insert.insert66121 = or disjoint i32 %i.ca, %i.cb
  %i.cc = shl i32 %i.ag, 16
  %i.cd = load i32, ptr %i.h, align 4, !tbaa !44
  %i.ce = shl i32 %i.cd, 24
  %.masked = and i32 %i.cc, 16711680
  %i.cf = or disjoint i32 %.sroa.0.1.insert.insert66121, %.masked
  %.sroa.0.3.insert.insert92123 = or disjoint i32 %i.cf, %i.ce
  br label %.thread114

.thread.i:                                        ; preds = %bb.i, %bb.h
  %i.cg = load i8, ptr %.0110.i, align 1, !tbaa !8 ; 4 uses
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
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !69
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
  %.0113144.i = phi ptr [ %.0110.i, %agxbsizeof.exit.i.lr.ph.i ], [ %i.cq, %agxbputc.exit.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0113144.i, i64 1 ; 2 uses
  %i.cr = icmp eq i8 %i.cp, 44
  %narrow.i = select i1 %i.cr, i8 32, i8 %i.cp    ; 2 uses
  %.not.i.i125.i = icmp eq i8 %.val.i.i.i, -1     ; 2 uses
  %i.cs = load i64, ptr %i.cn, align 8
  %i.ct = load i64, ptr %i.co, align 8
  %i.cu = zext i8 %.val.i.i.i to i64
  %.0.i20.i.i = select i1 %.not.i.i125.i, i64 %i.cs, i64 %i.cu
  %.0.i14.i.i = select i1 %.not.i.i125.i, i64 %i.ct, i64 31
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
  br i1 %.not.i, label %._crit_edge.i, label %agxbsizeof.exit.i.i, !llvm.loop !71

._crit_edge.i:                                    ; preds = %agxbputc.exit.i
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !69
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
  %i.dz = load double, ptr %i.a, align 8, !tbaa !69
  %i.ea = load double, ptr %i.b, align 8, !tbaa !69
  %i.eb = load double, ptr %i.c, align 8, !tbaa !69
  %i.ec = load double, ptr %i.d, align 8, !tbaa !69
  %i.ed = insertelement <4 x double> poison, double %i.dz, i64 0
  %i.ee = insertelement <4 x double> %i.ed, double %i.eb, i64 1
  %i.ef = insertelement <4 x double> %i.ee, double %i.ea, i64 2
  %i.eg = insertelement <4 x double> %i.ef, double %i.ec, i64 3
  %i.eh = call nsz <4 x double> @llvm.minnum.v4f64(<4 x double> %i.eg, <4 x double> splat (double 1.000000e+00))
  %i.ei = call nsz <4 x double> @llvm.maxnum.v4f64(<4 x double> %i.eh, <4 x double> zeroinitializer) ; 6 uses
  %i.ej = extractelement <4 x double> %i.ei, i64 0 ; 4 uses
  store double %i.ej, ptr %i.a, align 8, !tbaa !69
  %i.ek = extractelement <4 x double> %i.ei, i64 2 ; 4 uses
  store double %i.ek, ptr %i.b, align 8, !tbaa !69
  %i.el = extractelement <4 x double> %i.ei, i64 1 ; 13 uses
  store double %i.el, ptr %i.c, align 8, !tbaa !69
  %i.em = extractelement <4 x double> %i.ei, i64 3
  store double %i.em, ptr %i.d, align 8, !tbaa !69
  br i1 %.015, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %bb.ad
  %i.en = fcmp ugt double %i.ek, 0.000000e+00
  br i1 %i.en, label %bb.af, label %hsv2rgb.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.eo = fcmp ult double %i.ej, 1.000000e+00
  %i.ep = fmul nnan double %i.ej, 6.000000e+00
  %i.eq = select i1 %i.eo, double %i.ep, double 0.000000e+00 ; 2 uses
  %i.er = fptosi double %i.eq to i32              ; 2 uses
  %i.es = sitofp i32 %i.er to double
  %i.et = fsub double %i.eq, %i.es                ; 2 uses
  %i.eu = fsub nnan double 1.000000e+00, %i.ek
  %i.ev = fmul double %i.eu, %i.el                ; 6 uses
  %i.ew = fneg double %i.ek
  %5 = fsub nnan double 1.000000e+00, %i.et
  %6 = insertelement <2 x double> poison, double %i.ew, i64 0
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %8 = insertelement <2 x double> poison, double %i.et, i64 0
  %9 = insertelement <2 x double> %8, double %5, i64 1
  %10 = call nnan <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %9, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %11 = extractelement <2 x double> %10, i64 0
  %12 = fmul double %i.el, %11                    ; 3 uses
  %13 = extractelement <2 x double> %10, i64 1
  %i.ex = fmul double %i.el, %13                  ; 3 uses
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
  %i.ey = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ez = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ey, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.49, i32 noundef 88) #22 ; 0 uses
  call void @abort() #24
  unreachable

hsv2rgb.exit.i:                                   ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %.sink59.i.i = phi double [ %i.el, %bb.ae ], [ %12, %bb.ag ], [ %i.ev, %bb.ah ], [ %i.ev, %bb.ai ], [ %i.ex, %bb.aj ], [ %i.el, %bb.ak ], [ %i.el, %bb.af ]
  %.sink58.i.i = phi double [ %i.el, %bb.ae ], [ %i.el, %bb.ag ], [ %i.el, %bb.ah ], [ %12, %bb.ai ], [ %i.ev, %bb.aj ], [ %i.ev, %bb.ak ], [ %i.ex, %bb.af ]
  %.sink.i.i = phi double [ %i.el, %bb.ae ], [ %i.ev, %bb.ag ], [ %i.ex, %bb.ah ], [ %i.el, %bb.ai ], [ %i.el, %bb.aj ], [ %12, %bb.ak ], [ %i.ev, %bb.af ]
  %i.fa = insertelement <4 x double> %i.ei, double %.sink59.i.i, i64 0
  %i.fb = insertelement <4 x double> %i.fa, double %.sink58.i.i, i64 1
  %i.fc = insertelement <4 x double> %i.fb, double %.sink.i.i, i64 2
  %i.fd = fmul <4 x double> %i.fc, splat (double 2.550000e+02)
  %i.fe = fptoui <4 x double> %i.fd to <4 x i8>
  %i.ff = bitcast <4 x i8> %i.fe to i32
  %i.fg = zext i32 %i.ff to i64
  %i.fh = bitcast i64 %i.fg to double             ; 2 uses
  %i.fi = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.fh, i64 0
  br label %bb.am

bb.am:                                            ; preds = %bb.ad, %hsv2rgb.exit.i
  %.sroa.0.0 = phi double [ %i.fh, %hsv2rgb.exit.i ], [ %i.ej, %bb.ad ]
  %i.fj = phi <4 x double> [ %i.fi, %hsv2rgb.exit.i ], [ %i.ei, %bb.ad ]
  br i1 %i.dy, label %bb.an, label %bb.be

bb.an:                                            ; preds = %bb.am
  %.val123.i = load ptr, ptr %3, align 8
  call void @free(ptr noundef %.val123.i) #19
  br label %bb.be

bb.ao:                                            ; preds = %agxbuse.exit.i
  call void @free(ptr noundef %i.ds) #19
  br label %agxbfree.exit.thread.i

agxbfree.exit.thread.i:                           ; preds = %bb.ao, %agxbuse.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ap

bb.ap:                                            ; preds = %agxbfree.exit.thread.i, %.thread.i
  %i.fk = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0110.i, ptr noundef nonnull dereferenceable(6) @.str.51) #20
  %.not.i127.i = icmp eq i32 %i.fk, 0
  br i1 %.not.i127.i, label %resolveColor.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fl = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0110.i, ptr noundef nonnull dereferenceable(6) @.str.52) #20
  %.not26.i.i = icmp eq i32 %i.fl, 0
  br i1 %.not26.i.i, label %resolveColor.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fm = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0110.i, ptr noundef nonnull dereferenceable(10) @.str.53) #20
  %.not27.i.i = icmp eq i32 %i.fm, 0
  br i1 %.not27.i.i, label %resolveColor.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fn = load i8, ptr %.0110.i, align 1, !tbaa !8
  %i.fo = icmp eq i8 %i.fn, 47
  br i1 %i.fo, label %bb.at, label %resolveColor.exit.i

bb.at:                                            ; preds = %bb.as
  %i.fp = call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.p, i32 noundef 47) #20 ; 2 uses
  %.not28.i.i = icmp eq ptr %i.fp, null
  br i1 %.not28.i.i, label %resolveColor.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fq = load i8, ptr %i.p, align 1, !tbaa !8
  %i.fr = icmp eq i8 %i.fq, 47
  br i1 %i.fr, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fs = getelementptr inbounds nuw i8, ptr %.0110.i, i64 2
  br label %resolveColor.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.ft = call i32 @strncasecmp(ptr noundef nonnull @.str.54, ptr noundef nonnull readonly %i.p, i64 noundef 4) #20
  %.not29.i.i = icmp eq i32 %i.ft, 0
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  %spec.select.i.i = select i1 %.not29.i.i, ptr %i.fu, ptr %.0110.i
  br label %resolveColor.exit.i

resolveColor.exit.i:                              ; preds = %bb.aw, %bb.av, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.1.sink.i.i = phi ptr [ %.0110.i, %bb.ar ], [ %.0110.i, %bb.aq ], [ %.0110.i, %bb.ap ], [ %i.p, %bb.at ], [ %spec.select.i.i, %bb.aw ], [ %i.fs, %bb.av ], [ %.0110.i, %bb.as ]
  %i.fv = call noalias ptr @strdup(ptr noundef nonnull %.1.sink.i.i) #19 ; 4 uses
  %.not117.i = icmp eq ptr %i.fv, null
  br i1 %.not117.i, label %colorxlate.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %resolveColor.exit.i, %bb.az
  %.01621.i.i = phi i64 [ %.1.i129.i, %bb.az ], [ 0, %resolveColor.exit.i ] ; 2 uses
  %.01720.i.i = phi i64 [ %.118.i.i, %bb.az ], [ 2515, %resolveColor.exit.i ] ; 2 uses
  %i.fw = add i64 %.01720.i.i, %.01621.i.i
  %i.fx = lshr i64 %i.fw, 1                       ; 3 uses
  %i.fy = shl i64 %i.fx, 4                        ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr @color_lib, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 16, !tbaa !72
  %i.gb = call i32 @strcasecmp(ptr noundef nonnull readonly %i.fv, ptr noundef %i.ga) #20 ; 2 uses
  %i.gc = icmp slt i32 %i.gb, 0
  br i1 %i.gc, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i
  %.not.i128.i = icmp eq i32 %i.gb, 0
  br i1 %.not.i128.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gd = add nuw i64 %i.fx, 1
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.lr.ph.i.i
  %.118.i.i = phi i64 [ %.01720.i.i, %bb.ay ], [ %i.fx, %.lr.ph.i.i ] ; 2 uses
  %.1.i129.i = phi i64 [ %i.gd, %bb.ay ], [ %.01621.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.ge = icmp ult i64 %.1.i129.i, %.118.i.i
  br i1 %i.ge, label %.lr.ph.i.i, label %bb.bd, !llvm.loop !74

bb.ba:                                            ; preds = %bb.ax
  %i.gf = getelementptr inbounds nuw i8, ptr @color_lib, i64 %i.fy ; 4 uses
  call void @free(ptr noundef nonnull %i.fv) #19
  br i1 %.015, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load <2 x i8>, ptr %i.gg, align 8, !tbaa !8
  %i.gi = uitofp <2 x i8> %i.gh to <2 x double>
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 10
  %i.gk = load i8, ptr %i.gj, align 2, !tbaa !75
  %i.gl = uitofp i8 %i.gk to double
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 14
  %i.gn = load i8, ptr %i.gm, align 2, !tbaa !76
  %i.go = fdiv <2 x double> %i.gi, splat (double 2.550000e+02)
  %i.gp = fdiv double %i.gl, 2.550000e+02
  %i.gq = uitofp i8 %i.gn to double
  br label %.thread

bb.bc:                                            ; preds = %bb.ba
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gf, i64 11
  %i.gs = load i32, ptr %i.gr, align 1
  br label %.thread114

bb.bd:                                            ; preds = %bb.az
  call void @free(ptr noundef nonnull %i.fv) #19
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
  %.sroa.32.1.ph.ph = phi double [ %i.aw, %rgb2hsv.exit.i ], [ %i.gp, %bb.bb ]
  %.sroa.36.1.ph.ph.in = phi double [ %i.aq, %rgb2hsv.exit.i ], [ %i.gq, %bb.bb ]
  %i.gt = phi <2 x double> [ %i.bx, %rgb2hsv.exit.i ], [ %i.go, %bb.bb ]
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.gu = shufflevector <2 x double> %i.gt, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.gv = insertelement <4 x double> %i.gu, double %.sroa.32.1.ph.ph, i64 1
  %i.gw = insertelement <4 x double> %i.gv, double %.sroa.36.1.ph.ph, i64 3
  br label %bb.bf

.thread114:                                       ; preds = %bb.u, %bb.bc
  %.sroa.0.1.ph.ph113.in.in = phi i32 [ %i.gs, %bb.bc ], [ %.sroa.0.3.insert.insert92123, %bb.u ]
  %.sroa.0.1.ph.ph113.in = zext i32 %.sroa.0.1.ph.ph113.in.in to i64
  %.sroa.0.1.ph.ph113 = bitcast i64 %.sroa.0.1.ph.ph113.in to double
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  br label %bb.bh

bb.be:                                            ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  br i1 %.015, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %.thread, %bb.be
  %i.gx = phi <4 x double> [ %i.gw, %.thread ], [ %i.fj, %bb.be ] ; 4 uses
  %i.gy = extractelement <4 x double> %i.gx, i64 0
  %i.gz = extractelement <4 x double> %i.gx, i64 1
  %i.ha = extractelement <4 x double> %i.gx, i64 2
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %4, ptr noundef nonnull @.str.30, double noundef %i.gy, double noundef %i.ha, double noundef %i.gz)
  br i1 %.not19.not, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
end_hunk_0
begin_hunk_1_@cloneSubg:bb.a
  %.not69 = icmp eq ptr %i.o, null
  br i1 %.not69, label %.loopexit74, label %bb.g

.loopexit74:                                      ; preds = %mapEdge.exit, %mapEdge.exit.thread
  %i.p = load i32, ptr %.05883, align 8
  %i.q = and i32 %i.p, 3
  %i.r = icmp eq i32 %i.q, 2
  %i.s = getelementptr inbounds i8, ptr %.05883, i64 -64 ; 2 uses
  %i.t = select i1 %i.r, ptr %.05883, ptr %i.s
  %i.u = call ptr @agnameof(ptr noundef nonnull %i.t) #19 ; 2 uses
  %.not70 = icmp eq ptr %i.u, null
  %i.v = load i32, ptr %.05883, align 8
  %i.w = and i32 %i.v, 3
  %i.x = icmp eq i32 %i.w, 3
  %i.y = select i1 %i.x, i64 56, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %.05883, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19
  %i.ab = call ptr @agnameof(ptr noundef %i.aa) #19 ; 2 uses
  %i.ac = load i32, ptr %.05883, align 8
  %i.ad = and i32 %i.ac, 3
  %i.ae = icmp eq i32 %i.ad, 2
  %i.af = select i1 %i.ae, ptr %.05883, ptr %i.s
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19
  %i.ai = call ptr @agnameof(ptr noundef %i.ah) #19 ; 2 uses
  %i.aj = call ptr @agnameof(ptr noundef nonnull %0) #19 ; 2 uses
  br i1 %.not70, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit74
  call void (ptr, ...) @exerror(ptr noundef nonnull @.str.45, ptr noundef %i.ab, ptr noundef %i.ai, ptr noundef nonnull %i.u, ptr noundef %i.aj) #19
  br label %.loopexit

bb.f:                                             ; preds = %.loopexit74
  call void (ptr, ...) @exerror(ptr noundef nonnull @.str.46, ptr noundef %i.ab, ptr noundef %i.ai, ptr noundef %i.aj) #19
  br label %.loopexit

bb.g:                                             ; preds = %mapEdge.exit
  %i.ak = call ptr @agsubedge(ptr noundef nonnull %i.b, ptr noundef nonnull %i.o, i32 noundef 1) #19 ; 0 uses
  %i.al = call ptr @agnxtout(ptr noundef nonnull %1, ptr noundef nonnull %.05883) #19 ; 2 uses
  %.not68 = icmp eq ptr %i.al, null
  br i1 %.not68, label %._crit_edge86, label %.lr.ph85, !llvm.loop !80

._crit_edge86:                                    ; preds = %bb.g, %.lr.ph90
  %i.am = call ptr @agnxtnode(ptr noundef nonnull %1, ptr noundef nonnull %.188) #19 ; 2 uses
  %.not65 = icmp eq ptr %i.am, null
  br i1 %.not65, label %._crit_edge91, label %.lr.ph90, !llvm.loop !81

._crit_edge91:                                    ; preds = %._crit_edge86, %._crit_edge
  %i.an = call ptr @agfstsubg(ptr noundef nonnull %1) #19 ; 2 uses
  %.not6692 = icmp eq ptr %i.an, null
  br i1 %.not6692, label %.loopexit, label %.lr.ph95

.lr.ph95:                                         ; preds = %._crit_edge91, %bb.i
  %.05793 = phi ptr [ %i.ar, %bb.i ], [ %i.an, %._crit_edge91 ] ; 3 uses
  %i.ao = call fastcc ptr @cloneSubg(ptr noundef %i.b, ptr noundef %.05793, ptr noundef %2)
  %.not67 = icmp eq ptr %i.ao, null
  br i1 %.not67, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph95
  %i.ap = call ptr @agnameof(ptr noundef nonnull %.05793) #19
  %i.aq = call ptr @agnameof(ptr noundef nonnull %1) #19
  call void (ptr, ...) @exerror(ptr noundef nonnull @.str.40, ptr noundef %i.ap, ptr noundef %i.aq) #19
  br label %.loopexit

bb.i:                                             ; preds = %.lr.ph95
  %i.ar = call ptr @agnxtsubg(ptr noundef nonnull %.05793) #19 ; 2 uses
  %.not66 = icmp eq ptr %i.ar, null
  br i1 %.not66, label %.loopexit, label %.lr.ph95, !llvm.loop !82

.loopexit:                                        ; preds = %bb.i, %._crit_edge91, %bb.e, %bb.f, %bb.a, %bb.h, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.a ], [ null, %bb.h ], [ null, %bb.e ], [ null, %bb.f ], [ %i.b, %._crit_edge91 ], [ %i.b, %bb.i ]
  ret ptr %.0
}

declare ptr @agnxtsubg(ptr noundef) local_unnamed_addr #2

declare i32 @dtclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @cmppair(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !78     ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !78     ; 2 uses
  %i.c = icmp ugt ptr %i.a, %i.b
  %i.d = icmp ult ptr %i.a, %i.b
  %. = sext i1 %i.d to i32
  %.0 = select i1 %i.c, i32 1, i32 %.
  ret i32 %.0
}

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #11 {
bb.a:
  tail call void @exit(i32 noundef 1) #25
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #13

declare ptr @agnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @agfstedge(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agnxtedge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @agxbmore(ptr nofree noundef nonnull captures(none) %0, i64 noundef range(i64 -2147483646, 2147483649) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 31         ; 2 uses
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !8  ; 2 uses
  %.not.i = icmp eq i8 %.val.i, -1
  br i1 %.not.i, label %agxbsizeof.exit, label %bb.g

agxbsizeof.exit:                                  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !8
  %.fr = freeze i64 %i.c                          ; 6 uses
  %i.d = icmp eq i64 %.fr, 0
  %i.e = shl i64 %.fr, 1
  %spec.select45 = select i1 %i.d, i64 8192, i64 %i.e
  %i.f = add i64 %.fr, %1
  %spec.select34 = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %spec.select45) ; 7 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.h = icmp eq i64 %spec.select34, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %agxbsizeof.exit
  tail call void @free(ptr noundef %i.g) #19
  br label %gv_recalloc.exit

bb.c:                                             ; preds = %agxbsizeof.exit
  %i.i = tail call ptr @realloc(ptr noundef %i.g, i64 noundef %spec.select34) #26 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.43, i64 noundef %spec.select34) #22 ; 0 uses
  tail call fastcc void @graphviz_exit() #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = icmp ugt i64 %spec.select34, %.fr
  br i1 %i.m, label %bb.f, label %gv_recalloc.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %.fr
  %i.o = sub nuw i64 %spec.select34, %.fr
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %gv_recalloc.exit

bb.g:                                             ; preds = %bb.a
  %i.p = add nsw i64 %1, 31
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.p, i64 62) ; 3 uses
  %i.q = tail call noalias ptr @calloc(i64 noundef %spec.select, i64 noundef 1) #21 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %gv_calloc.exit

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.43, i64 noundef %spec.select) #22 ; 0 uses
  tail call fastcc void @graphviz_exit() #23
  unreachable

gv_calloc.exit:                                   ; preds = %bb.g
  %i.u = zext i8 %.val.i to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %0, i64 %i.u, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !8
  br label %gv_recalloc.exit

gv_recalloc.exit:                                 ; preds = %bb.f, %bb.e, %bb.b, %gv_calloc.exit
  %spec.select3742 = phi i64 [ %spec.select, %gv_calloc.exit ], [ 0, %bb.b ], [ %spec.select34, %bb.e ], [ %spec.select34, %bb.f ]
  %.0 = phi ptr [ %i.q, %gv_calloc.exit ], [ null, %bb.b ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  store ptr %.0, ptr %0, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select3742, ptr %i.w, align 8, !tbaa !8
  store i8 -1, ptr %i.a, align 1, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #18

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.minnum.v4f64(<4 x double>, <4 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.maxnum.v4f64(<4 x double>, <4 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { cold nounwind }
attributes #23 = { noreturn }
attributes #24 = { noreturn nounwind }
attributes #25 = { cold noreturn nounwind }
attributes #26 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !14, i64 16}
!10 = !{!"Agsym_s", !11, i64 0, !14, i64 16, !14, i64 24, !5, i64 32, !6, i64 36, !6, i64 37, !6, i64 38, !15, i64 40}
!11 = !{!"dtlink_s_", !12, i64 0, !6, i64 8}
!12 = !{!"p1 _ZTS9dtlink_s_", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"p1 _ZTS8Agraph_s", !13, i64 0}
!16 = !{!10, !14, i64 24}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!20, !25, i64 56}
!20 = !{!"Agedge_s", !21, i64 0, !11, i64 24, !11, i64 40, !25, i64 56}
!21 = !{!"Agobj_s", !22, i64 0, !24, i64 16}
!22 = !{!"Agtag_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !23, i64 8}
!23 = !{!"long", !6, i64 0}
!24 = !{!"p1 _ZTS7Agrec_s", !13, i64 0}
!25 = !{!"p1 _ZTS8Agnode_s", !13, i64 0}
!26 = !{!13, !13, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!29 = distinct !{!29, !18}
!30 = !{!31, !32, i64 16}
!31 = !{!"", !11, i64 0, !32, i64 16, !32, i64 24}
!32 = !{!"p1 _ZTS8Agedge_s", !13, i64 0}
!33 = !{!31, !32, i64 24}
!34 = !{!35, !13, i64 0}
!35 = !{!"dt_s_", !13, i64 0, !36, i64 8, !37, i64 16, !13, i64 56, !5, i64 64, !38, i64 72, !38, i64 80, !13, i64 88}
!36 = !{!"p1 _ZTS9dtdisc_s_", !13, i64 0}
!37 = !{!"", !5, i64 0, !12, i64 8, !6, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!38 = !{!"p1 _ZTS5dt_s_", !13, i64 0}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
!42 = !{!21, !23, i64 8}
!43 = distinct !{!43, !18}
!44 = !{!5, !5, i64 0}
!45 = distinct !{!45, !18}
!46 = !{!47, !50, i64 128}
!47 = !{!"Agraph_s", !21, i64 0, !48, i64 24, !11, i64 32, !11, i64 48, !38, i64 64, !49, i64 72, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !15, i64 112, !15, i64 120, !50, i64 128}
!48 = !{!"Agdesc_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0}
!49 = !{!"p1 _ZTS17graphviz_node_set", !13, i64 0}
!50 = !{!"p1 _ZTS8Agclos_s", !13, i64 0}
!51 = !{!52, !55, i64 8}
!52 = !{!"Agclos_s", !53, i64 0, !56, i64 16, !13, i64 24, !6, i64 32, !57, i64 56, !6, i64 64, !6, i64 88}
!53 = !{!"Agdisc_s", !54, i64 0, !55, i64 8}
!54 = !{!"p1 _ZTS10Agiddisc_s", !13, i64 0}
!55 = !{!"p1 _ZTS10Agiodisc_s", !13, i64 0}
!56 = !{!"Agdstate_s", !13, i64 0}
!57 = !{!"p1 _ZTS11Agcbstack_s", !13, i64 0}
!58 = distinct !{!58, !18}
!59 = distinct !{!59, !18, !60, !61}
!60 = !{!"llvm.loop.isvectorized", i32 1}
!61 = !{!"llvm.loop.unroll.runtime.disable"}
!62 = !{!"branch_weights", i32 4, i32 12}
!63 = distinct !{!63, !18, !60, !61}
!64 = distinct !{!64, !18, !60}
!65 = distinct !{!65, !18, !60, !61}
!66 = distinct !{!66, !18, !60, !61}
!67 = distinct !{!67, !18, !60}
!68 = distinct !{!68, !18}
!69 = !{!70, !70, i64 0}
!70 = !{!"double", !6, i64 0}
!71 = distinct !{!71, !18}
!72 = !{!73, !14, i64 0}
!73 = !{!"hsvrgbacolor_t", !14, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 11, !6, i64 12, !6, i64 13, !6, i64 14}
!74 = distinct !{!74, !18}
!75 = !{!73, !6, i64 10}
!76 = !{!73, !6, i64 14}
!77 = distinct !{!77, !18}
!78 = !{!32, !32, i64 0}
!79 = distinct !{null}
!80 = distinct !{!80, !18}
!81 = distinct !{!81, !18}
!82 = distinct !{!82, !18}
end_hunk_1
