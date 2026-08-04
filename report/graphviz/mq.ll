begin_hunk_0_@Multilevel_MQ_Clustering_establish:bb.a
  tail call fastcc void @graphviz_exit() #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.s, i64 noundef 48) #18 ; 7 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.y = mul nuw nsw i64 %i.s, 48
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.9, i64 noundef %i.y) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load <2 x double>, ptr %i.ac, align 8, !tbaa !8
  %i.ae = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.s, i64 noundef 8) #18 ; 6 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.g, label %gv_calloc.exit533

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.ah = shl nuw nsw i64 %i.s, 3
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.9, i64 noundef %i.ah) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_calloc.exit533:                                ; preds = %bb.f
  %i.aj = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.s, i64 noundef 8) #18 ; 6 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.h, label %gv_calloc.exit538

bb.h:                                             ; preds = %gv_calloc.exit533
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.am = shl nuw nsw i64 %i.s, 3
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.9, i64 noundef %i.am) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_calloc.exit538:                                ; preds = %gv_calloc.exit533
  %i.ao = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.s, i64 noundef 8) #18 ; 5 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.i, label %gv_calloc.exit543

bb.i:                                             ; preds = %gv_calloc.exit538
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.ar = shl nuw nsw i64 %i.s, 3
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aq, ptr noundef nonnull @.str.9, i64 noundef %i.ar) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_calloc.exit543:                                ; preds = %gv_calloc.exit538
  %i.at = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.s, i64 noundef 4) #18 ; 7 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.j, label %gv_calloc.exit548

bb.j:                                             ; preds = %gv_calloc.exit543
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.aw = shl nuw nsw i64 %i.s, 2
  %i.ax = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.9, i64 noundef %i.aw) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_calloc.exit548:                                ; preds = %gv_calloc.exit543
  %i.ay = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.s, i64 noundef 8) #18 ; 7 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.k, label %.lr.ph628.preheader

bb.k:                                             ; preds = %gv_calloc.exit548
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.bb = shl nuw nsw i64 %i.s, 3
  %i.bc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ba, ptr noundef nonnull @.str.9, i64 noundef %i.bb) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

._crit_edge:                                      ; preds = %bb.a
  %i.bd = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 48) #18
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !34
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bh = load <2 x double>, ptr %i.bg, align 8, !tbaa !8
  %i.bi = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #18
  %i.bj = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #18
  %i.bk = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #18
  %i.bl = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #18
  %i.bm = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #18
  br label %._crit_edge629

.lr.ph628.preheader:                              ; preds = %gv_calloc.exit548
  %i.bn = zext nneg i32 %i.g to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.at, i8 -1, i64 %i.bo, i1 false), !tbaa !29
  %i.bp = zext nneg i32 %i.g to i64
  %i.bq = shl nuw nsw i64 %i.bp, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.c, i8 -1, i64 %i.bq, i1 false), !tbaa !29
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !55 ; 5 uses
  %invariant.smax729 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count678 = zext nneg i32 %i.g to i64
  br label %.lr.ph628

.lr.ph628:                                        ; preds = %.lr.ph628.preheader, %.loopexit561
  %indvars.iv675 = phi i64 [ 0, %.lr.ph628.preheader ], [ %indvars.iv.next676, %.loopexit561 ] ; 19 uses
  %.0444626 = phi i32 [ 0, %.lr.ph628.preheader ], [ %.3, %.loopexit561 ] ; 11 uses
  %.0445625 = phi i32 [ %i.g, %.lr.ph628.preheader ], [ %.2447, %.loopexit561 ] ; 6 uses
  %.0448624 = phi double [ %i.ab, %.lr.ph628.preheader ], [ %.2450, %.loopexit561 ] ; 4 uses
  %.0460621 = phi double [ 0.000000e+00, %.lr.ph628.preheader ], [ %.3463, %.loopexit561 ] ; 3 uses
  %.0472618 = phi double [ 0.000000e+00, %.lr.ph628.preheader ], [ %.3475, %.loopexit561 ] ; 3 uses
  %.0483615 = phi double [ 0.000000e+00, %.lr.ph628.preheader ], [ %.2485, %.loopexit561 ] ; 3 uses
  %.0488614 = phi double [ 0.000000e+00, %.lr.ph628.preheader ], [ %.3491, %.loopexit561 ] ; 3 uses
  %.0492613 = phi double [ 0.000000e+00, %.lr.ph628.preheader ], [ %.3495, %.loopexit561 ] ; 3 uses
  %i.bt = phi <2 x double> [ %i.ad, %.lr.ph628.preheader ], [ %i.lz, %.loopexit561 ] ; 4 uses
  %i.bu = phi <2 x double> [ zeroinitializer, %.lr.ph628.preheader ], [ %i.ma, %.loopexit561 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv675 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !29
  %.not519 = icmp eq i32 %i.bw, -1
  br i1 %.not519, label %bb.l, label %.loopexit561

bb.l:                                             ; preds = %.lr.ph628
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv675 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !29 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !29 ; 2 uses
  %i.cb = icmp slt i32 %i.by, %i.ca
  br i1 %i.cb, label %.lr.ph570.preheader, label %._crit_edge571.thread

._crit_edge571.thread:                            ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv675
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv675 ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !8
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv675
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !8
  br label %._crit_edge583

.lr.ph570.preheader:                              ; preds = %bb.l
  %i.ch = sext i32 %i.by to i64
  %wide.trip.count = sext i32 %i.ca to i64
  %i.ci = trunc nuw nsw i64 %indvars.iv675 to i32
  br label %.lr.ph570

.lr.ph570:                                        ; preds = %.lr.ph570.preheader, %bb.q
  %indvars.iv = phi i64 [ %i.ch, %.lr.ph570.preheader ], [ %indvars.iv.next, %bb.q ] ; 4 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !29 ; 2 uses
  %i.cl = zext i32 %i.ck to i64
  %i.cm = icmp eq i64 %indvars.iv675, %i.cl
  br i1 %i.cm, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.lr.ph570
  %i.cn = sext i32 %i.ck to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !29 ; 2 uses
  %.not523 = icmp eq i32 %i.cp, -1
  br i1 %.not523, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = sext i32 %i.cp to i64                   ; 3 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.cq ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !29
  %i.ct = zext i32 %i.cs to i64
  %.not524 = icmp eq i64 %indvars.iv675, %i.ct
  br i1 %.not524, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.ci, ptr %i.cr, align 4, !tbaa !29
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %indvars.iv
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !8
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.cq
  store double %i.cv, ptr %i.cw, align 8, !tbaa !8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %indvars.iv
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !8
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.cq ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !8
  %i.db = fadd double %i.cy, %i.da
  store double %i.db, ptr %i.cz, align 8, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p, %bb.o, %.lr.ph570
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge571, label %.lr.ph570, !llvm.loop !64

._crit_edge571:                                   ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv675 ; 2 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !8 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv675 ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !8 ; 4 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv675
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !8 ; 3 uses
  %i.di = fdiv double %i.dh, %i.df
  %i.dj = extractelement <2 x double> %i.bt, i64 1
  %i.dk = fsub double %i.dj, %i.di
  %i.dl = icmp sgt i32 %.0445625, 2
  %2 = add nsw i32 %.0445625, -2
  %i.dm = add nsw i32 %.0445625, -1               ; 3 uses
  %i.dn = sitofp i32 %i.dm to double
  %i.do = uitofp nneg i32 %i.dm to double
  %i.dp = mul nsw i32 %i.dm, %2
  %i.dq = uitofp nneg i32 %i.dp to double
  %i.dr = sext i32 %i.by to i64
  %i.ds = trunc nuw nsw i64 %indvars.iv675 to i32
  %i.dt = extractelement <2 x double> %i.bt, i64 0
  %i.du = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %i.dq, i64 1
  %i.dw = insertelement <2 x double> poison, double %i.dk, i64 1
  %i.dx = insertelement <2 x double> poison, double %i.dh, i64 1
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge571, %bb.ad
  %indvars.iv657 = phi i64 [ %i.dr, %._crit_edge571 ], [ %indvars.iv.next658, %bb.ad ] ; 4 uses
  %.1461580 = phi double [ %.0460621, %._crit_edge571 ], [ %.2462, %bb.ad ] ; 3 uses
  %.1473577 = phi double [ %.0472618, %._crit_edge571 ], [ %.2474, %bb.ad ] ; 3 uses
  %.0486575 = phi double [ 0.000000e+00, %._crit_edge571 ], [ %.1487, %bb.ad ] ; 4 uses
  %.1489574 = phi double [ %.0488614, %._crit_edge571 ], [ %.2490, %bb.ad ] ; 3 uses
  %.1493573 = phi double [ %.0492613, %._crit_edge571 ], [ %.2494, %bb.ad ] ; 3 uses
  %.0502572 = phi i32 [ -1, %._crit_edge571 ], [ %.1503, %bb.ad ] ; 3 uses
  %i.dy = phi <2 x double> [ %i.bu, %._crit_edge571 ], [ %i.ge, %bb.ad ] ; 3 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv657
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !29 ; 4 uses
  %i.eb = zext i32 %i.ea to i64
  %i.ec = icmp eq i64 %indvars.iv675, %i.eb
  br i1 %i.ec, label %bb.ad, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ed = sext i32 %i.ea to i64                   ; 4 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !29 ; 2 uses
  %i.eg = icmp eq i32 %i.ef, -1
  br i1 %i.eg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %indvars.iv657
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !8
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ed
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !8
  %i.el = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ed
  %i.em = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ed
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.en = sext i32 %i.ef to i64                   ; 4 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.en ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !8 ; 2 uses
  %i.eq = fcmp olt double %i.ep, 0.000000e+00
  br i1 %i.eq, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.er = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.en
  %i.es = load double, ptr %i.er, align 8, !tbaa !8
  store double -1.000000e+00, ptr %i.eo, align 8, !tbaa !8
  %i.et = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.en
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.en
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.0504.in = phi ptr [ %i.el, %bb.t ], [ %i.et, %bb.v ]
  %.0501 = phi double [ %i.ek, %bb.t ], [ %i.es, %bb.v ] ; 4 uses
  %.0500 = phi double [ %i.ei, %bb.t ], [ %i.ep, %bb.v ] ; 2 uses
  %.0496.in = phi ptr [ %i.em, %bb.t ], [ %i.eu, %bb.v ]
  %.0496 = load double, ptr %.0496.in, align 8, !tbaa !8 ; 2 uses
  %.0504 = load double, ptr %.0504.in, align 8, !tbaa !8 ; 2 uses
  %i.ev = tail call double @pow(double noundef %i.df, double noundef 2.000000e+00) #15
  %i.ew = fdiv double %i.dd, %i.ev
  %i.ex = fsub double %i.dt, %i.ew
  %i.ey = tail call double @pow(double noundef %.0501, double noundef 2.000000e+00) #15
  %i.ez = fadd double %i.dd, %.0504
  %i.fa = fadd double %i.df, %.0501               ; 2 uses
  %i.fb = tail call double @pow(double noundef %i.fa, double noundef 2.000000e+00) #15
  %i.fc = insertelement <2 x double> poison, double %.0504, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %.0496, i64 1 ; 2 uses
  %i.fe = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.ff = insertelement <2 x double> %i.fe, double %.0501, i64 1
  %i.fg = fdiv <2 x double> %i.fd, %i.ff
  %i.fh = insertelement <2 x double> %i.dw, double %i.ex, i64 0
  %i.fi = fsub <2 x double> %i.fh, %i.fg
  %i.fj = insertelement <2 x double> %i.dx, double %.0500, i64 0
  %i.fk = insertelement <2 x double> %i.fd, double %i.ez, i64 0
  %i.fl = fadd <2 x double> %i.fj, %i.fk
  %i.fm = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.fn = insertelement <2 x double> %i.fm, double %i.fa, i64 1
  %i.fo = fdiv <2 x double> %i.fl, %i.fn
  %i.fp = fadd <2 x double> %i.fi, %i.fo          ; 3 uses
  br i1 %i.dl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fq = fdiv <2 x double> %i.fp, %i.dv          ; 2 uses
  %shift = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.fq, %shift
  %i.fr = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.fs = fmul double %i.fr, 2.000000e+00
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ft = extractelement <2 x double> %i.fp, i64 0
  %i.fu = fmul double %i.ft, 2.000000e+00
  %i.fv = fdiv double %i.fu, %i.dn
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0459 = phi double [ %i.fs, %bb.x ], [ %i.fv, %bb.y ] ; 3 uses
  %i.fw = fsub double %.0459, %.0448624           ; 3 uses
  %i.fx = load i8, ptr @Verbose, align 1, !tbaa !65
  %.not522 = icmp eq i8 %i.fx, 0
  br i1 %.not522, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fy = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.fz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fy, ptr noundef nonnull @.str.1, i32 noundef %i.ds, i32 noundef %i.ea, double noundef %.0448624, double noundef %.0459, double noundef %i.fw) #16 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ga = load i32, ptr %i.bx, align 4, !tbaa !29
  %i.gb = trunc nsw i64 %indvars.iv657 to i32
  %i.gc = icmp eq i32 %i.ga, %i.gb
  %i.gd = fcmp ogt double %i.fw, %.0486575
  %or.cond = select i1 %i.gc, i1 true, i1 %i.gd
  br i1 %or.cond, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.u, %bb.r
  %.1503 = phi i32 [ %.0502572, %bb.r ], [ %i.ea, %bb.ac ], [ %.0502572, %bb.ab ], [ %.0502572, %bb.u ] ; 2 uses
  %.2494 = phi double [ %.1493573, %bb.r ], [ %.0496, %bb.ac ], [ %.1493573, %bb.ab ], [ %.1493573, %bb.u ] ; 2 uses
  %.2490 = phi double [ %.1489574, %bb.r ], [ %.0501, %bb.ac ], [ %.1489574, %bb.ab ], [ %.1489574, %bb.u ] ; 2 uses
  %.1487 = phi double [ %.0486575, %bb.r ], [ %i.fw, %bb.ac ], [ %.0486575, %bb.ab ], [ %.0486575, %bb.u ] ; 2 uses
  %.2474 = phi double [ %.1473577, %bb.r ], [ %.0500, %bb.ac ], [ %.1473577, %bb.ab ], [ %.1473577, %bb.u ] ; 2 uses
  %.2462 = phi double [ %.1461580, %bb.r ], [ %.0459, %bb.ac ], [ %.1461580, %bb.ab ], [ %.1461580, %bb.u ] ; 2 uses
  %i.ge = phi <2 x double> [ %i.dy, %bb.r ], [ %i.fp, %bb.ac ], [ %i.dy, %bb.ab ], [ %i.dy, %bb.u ] ; 2 uses
  %indvars.iv.next658 = add nsw i64 %indvars.iv657, 1 ; 2 uses
  %i.gf = load i32, ptr %i.bz, align 4, !tbaa !29
  %i.gg = sext i32 %i.gf to i64
  %i.gh = icmp slt i64 %indvars.iv.next658, %i.gg
  br i1 %i.gh, label %bb.r, label %._crit_edge583, !llvm.loop !66

._crit_edge583:                                   ; preds = %bb.ad, %._crit_edge571.thread
  %i.gi = phi double [ %i.cg, %._crit_edge571.thread ], [ %i.dh, %bb.ad ] ; 2 uses
  %i.gj = phi double [ %i.ce, %._crit_edge571.thread ], [ %i.df, %bb.ad ] ; 2 uses
  %i.gk = phi ptr [ %i.cd, %._crit_edge571.thread ], [ %i.de, %bb.ad ] ; 3 uses
  %i.gl = phi ptr [ %i.cc, %._crit_edge571.thread ], [ %i.dc, %bb.ad ] ; 3 uses
  %.0502.lcssa = phi i32 [ -1, %._crit_edge571.thread ], [ %.1503, %bb.ad ] ; 3 uses
  %.1493.lcssa = phi double [ %.0492613, %._crit_edge571.thread ], [ %.2494, %bb.ad ] ; 5 uses
  %.1489.lcssa = phi double [ %.0488614, %._crit_edge571.thread ], [ %.2490, %bb.ad ] ; 5 uses
  %.0486.lcssa = phi double [ 0.000000e+00, %._crit_edge571.thread ], [ %.1487, %bb.ad ] ; 5 uses
  %.1473.lcssa = phi double [ %.0472618, %._crit_edge571.thread ], [ %.2474, %bb.ad ] ; 5 uses
  %.1461.lcssa = phi double [ %.0460621, %._crit_edge571.thread ], [ %.2462, %bb.ad ] ; 4 uses
  %i.gm = phi <2 x double> [ %i.bu, %._crit_edge571.thread ], [ %i.ge, %bb.ad ] ; 4 uses
  %i.gn = fcmp ogt double %.0486.lcssa, 0.000000e+00
  %or.cond525 = icmp sgt i32 %.0444626, %invariant.smax729
  %or.cond650 = select i1 %i.gn, i1 true, i1 %or.cond525
  br i1 %or.cond650, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %._crit_edge583
  %i.go = fadd double %.0483615, %.0486.lcssa
  %i.gp = sext i32 %.0502.lcssa to i64            ; 3 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.gp ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !29 ; 4 uses
  %i.gs = icmp eq i32 %i.gr, -1
  %i.gt = load ptr, ptr @stderr, align 8, !tbaa !26 ; 2 uses
  %i.gu = trunc nuw nsw i64 %indvars.iv675 to i32 ; 4 uses
  br i1 %i.gs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gt, ptr noundef nonnull @.str.2, double noundef %.0486.lcssa, i32 noundef %i.gu, i32 noundef %.0502.lcssa) #16 ; 0 uses
  %i.gw = sext i32 %.0444626 to i64               ; 5 uses
  %i.gx = getelementptr inbounds [48 x i8], ptr %i.v, i64 %i.gw ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 40 ; 4 uses
  store i32 %.0502.lcssa, ptr %i.gy, align 8, !tbaa !67
  %i.gz = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %i.gx, i64 noundef 4) #15
  %i.ha = load i32, ptr %i.gy, align 8, !tbaa !67
  %i.hb = load ptr, ptr %i.gx, align 8, !tbaa !65
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.gz
  store i32 %i.ha, ptr %i.hc, align 4, !tbaa !29
  store i32 %i.gu, ptr %i.gy, align 8, !tbaa !67
  %i.hd = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %i.gx, i64 noundef 4) #15
  %i.he = load i32, ptr %i.gy, align 8, !tbaa !67
  %i.hf = load ptr, ptr %i.gx, align 8, !tbaa !65
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.hd
  store i32 %i.he, ptr %i.hg, align 4, !tbaa !29
  %i.hh = fadd double %i.gi, %.1493.lcssa
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.gw
  store double %i.hh, ptr %i.hi, align 8, !tbaa !8
  store i32 %.0444626, ptr %i.gq, align 4, !tbaa !29
  %i.hj = load double, ptr %i.gk, align 8, !tbaa !8
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gp
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !8
  %i.hm = fadd double %i.hj, %i.hl
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.gw
  store double %i.hm, ptr %i.hn, align 8, !tbaa !8
  %i.ho = load double, ptr %i.gl, align 8, !tbaa !8
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.gp
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !8
  %i.hr = fadd double %i.ho, %i.hq
  %i.hs = fadd double %.1473.lcssa, %i.hr
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.gw
  store double %i.hs, ptr %i.ht, align 8, !tbaa !8
  %i.hu = add nsw i32 %.0444626, 1
end_hunk_0
