inline.NumInlined: 10
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@IDACalcIC:bb.a
  br i1 %.not, label %bb.f, label %bb.di

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1536
  store i32 1, ptr %i.f, align 8, !tbaa !20
  %i.g = add i32 %1, -3
  %or.cond = icmp ult i32 %i.g, -2
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #3
  br label %bb.di

bb.h:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 6 uses
  store i32 %1, ptr %i.h, align 8, !tbaa !21
  %i.i = icmp eq i32 %1, 1                        ; 5 uses
  br i1 %i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #3
  br label %bb.di

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 4 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !23
  %i.o = fsub double %2, %i.n
  %i.p = tail call double @SUNRabs(double noundef %i.o) #3 ; 3 uses
  %i.q = load double, ptr %0, align 8, !tbaa !24
  %i.r = fmul double %i.q, 2.000000e+00
  %i.s = load double, ptr %i.m, align 8, !tbaa !23
  %i.t = tail call double @SUNRabs(double noundef %i.s) #3
  %i.u = tail call double @SUNRabs(double noundef %2) #3
  %i.v = fadd double %i.t, %i.u
  %i.w = fmul double %i.r, %i.v
  %i.x = fcmp olt double %i.p, %i.w
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #3
  br label %bb.di

bb.m:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 9 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !25
  %.not275 = icmp eq i32 %i.z, 0
  br i1 %.not275, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !26 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 2
  %i.ad = icmp eq i32 %i.ab, 1
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.n
  %i.ae = phi i1 [ %i.ac, %bb.n ], [ false, %bb.m ]
  %i.af = phi i1 [ %i.ad, %bb.n ], [ false, %bb.m ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 6 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !27
  %i.ai = tail call ptr @N_VClone(ptr noundef %i.ah) #3
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 25 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !28
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !27
  %i.al = tail call ptr @N_VClone(ptr noundef %i.ak) #3
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 22 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !29
  %i.an = load double, ptr %i.m, align 8, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 8 uses
  store double %i.an, ptr %i.ao, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !28
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.aq, ptr noundef %i.ar) #3
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !31
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !29
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.at, ptr noundef %i.au) #3
  %i.av = load i32, ptr %i.y, align 8, !tbaa !25
  %.not277 = icmp eq i32 %i.av, 0
  br i1 %.not277, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 4 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !32
  %i.ay = load ptr, ptr %i.ag, align 8, !tbaa !27
  %i.az = tail call ptr @N_VCloneVectorArray(i32 noundef %i.ax, ptr noundef %i.ay) #3
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !33
  %i.bb = load i32, ptr %i.aw, align 4, !tbaa !32
  %i.bc = load ptr, ptr %i.ag, align 8, !tbaa !27
  %i.bd = tail call ptr @N_VCloneVectorArray(i32 noundef %i.bb, ptr noundef %i.bc) #3
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !34
  %i.bf = load i32, ptr %i.aw, align 4, !tbaa !32
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 808
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 5 uses
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !35
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !31
  %i.bm = load ptr, ptr %i.ba, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !31
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bl, ptr noundef %i.bo) #3
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !35
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !31
  %i.bs = load ptr, ptr %i.be, align 8, !tbaa !34
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !31
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.br, ptr noundef %i.bu) #3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bv = load i32, ptr %i.aw, align 4, !tbaa !32
  %i.bw = sext i32 %i.bv to i64
  %i.bx = icmp slt i64 %indvars.iv.next, %i.bw
  br i1 %i.bx, label %bb.p, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.p, %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.ca = load <2 x ptr>, ptr %i.by, align 8, !tbaa !35
  store <2 x ptr> %i.ca, ptr %i.bz, align 8, !tbaa !35
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !35
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 944
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !38
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !39
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 952
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !40
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 6 uses
  store i32 1, ptr %i.ch, align 8, !tbaa !41
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 5 uses
  store double %i.p, ptr %i.ci, align 8, !tbaa !42
  br i1 %i.i, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !22
  %i.cl = tail call double @N_VMin(ptr noundef %i.ck) #3 ; 2 uses
  %i.cm = fcmp olt double %i.cl, 0.000000e+00
  br i1 %i.cm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #3
  br label %bb.di

bb.t:                                             ; preds = %bb.r
  %i.cn = fcmp ogt double %i.cl, 5.000000e-01
  br i1 %i.cn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.ch, align 8, !tbaa !41
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.cp = load double, ptr %i.co, align 8, !tbaa !43
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 5 uses
  store double %i.cp, ptr %i.cq, align 8, !tbaa !44
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store double 1.000000e+00, ptr %i.cr, align 8, !tbaa !45
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1092 ; 5 uses
  store i32 0, ptr %i.cs, align 4, !tbaa !46
  %i.ct = fmul double %i.p, 1.000000e-03          ; 2 uses
  %i.cu = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 6 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !47
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !48
  %i.cz = tail call double @IDAWrmsNorm(ptr noundef nonnull %0, ptr noundef %i.cu, ptr noundef %i.cw, i32 noundef %i.cy) #3 ; 2 uses
  br i1 %i.af, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !34
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !49
  %i.de = tail call double @IDASensWrmsNormUpdate(ptr noundef nonnull %0, double noundef %i.cz, ptr noundef %i.db, ptr noundef %i.dd, i32 noundef 0) #3
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0248 = phi double [ %i.de, %bb.w ], [ %i.cz, %bb.v ] ; 2 uses
  %3 = insertelement <2 x double> poison, double %i.ct, i64 0
  %4 = insertelement <2 x double> %3, double %.0248, i64 1
  %5 = fdiv <2 x double> splat (double 5.000000e-01), %4 ; 2 uses
  %6 = extractelement <2 x double> %5, i64 0
  %i.df = fcmp ogt double %.0248, %6
  %7 = extractelement <2 x double> %5, i64 1
  %.0249 = select i1 %i.df, double %7, double %i.ct ; 2 uses
  %i.dg = load double, ptr %i.m, align 8, !tbaa !23
  %i.dh = fcmp olt double %2, %i.dg
  %i.di = fneg double %.0249
  %.1250 = select i1 %i.dh, double %i.di, double %.0249 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 3 uses
  store double %.1250, ptr %i.dj, align 8, !tbaa !50
  br i1 %i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dk = fdiv double 1.000000e+00, %.1250
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !51
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.sink = phi double [ %i.dk, %bb.y ], [ 0.000000e+00, %bb.x ]
  %.0253 = phi i32 [ %i.dm, %bb.y ], [ 1, %bb.x ] ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 8 uses
  store double %.sink, ptr %i.dn, align 8, !tbaa !52
  %.not278435 = icmp slt i32 %.0253, 1            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 21 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 8 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 52 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 17 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 14 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 12 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 8 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1084 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 6 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 6 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 12 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 10 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 10 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 8 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1652
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 10 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1076 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %.preheader372

.preheader372:                                    ; preds = %bb.z, %.loopexit371
  %exitcond.not = phi i1 [ false, %bb.z ], [ true, %.loopexit371 ]
  %.2442 = phi double [ %.1250, %bb.z ], [ %.3422, %.loopexit371 ] ; 2 uses
  br i1 %.not278435, label %IDANlsIC.exit.thread320, label %.lr.ph438

.lr.ph438:                                        ; preds = %.preheader372, %.loopexit364
  %.3437 = phi double [ %i.tg, %.loopexit364 ], [ %.2442, %.preheader372 ] ; 6 uses
  %.0251436 = phi i32 [ %i.ti, %.loopexit364 ], [ 1, %.preheader372 ] ; 2 uses
  %i.fh = load i32, ptr %i.y, align 8, !tbaa !25
  %.not.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph438
  %i.fi = load i32, ptr %i.do, align 8, !tbaa !26
  %i.fj = icmp eq i32 %i.fi, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph438
  %i.fk = phi i1 [ false, %.lr.ph438 ], [ %i.fj, %bb.aa ] ; 2 uses
  %i.fl = load ptr, ptr %i.ag, align 8, !tbaa !27
  %i.fm = load ptr, ptr %i.dp, align 8, !tbaa !53
  %i.fn = load ptr, ptr %i.dq, align 8, !tbaa !31
  %i.fo = load ptr, ptr %i.dr, align 8, !tbaa !54
  %i.fp = load double, ptr %i.ao, align 8, !tbaa !30
  %i.fq = load ptr, ptr %i.aj, align 8, !tbaa !28
  %i.fr = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.fs = load ptr, ptr %i.ds, align 8, !tbaa !55
  %i.ft = load ptr, ptr %i.dt, align 8, !tbaa !56
  %i.fu = tail call i32 %i.fo(double noundef %i.fp, ptr noundef %i.fq, ptr noundef %i.fr, ptr noundef %i.fs, ptr noundef %i.ft) #3, !inline_history !57 ; 2 uses
  %i.fv = load i64, ptr %i.du, align 8, !tbaa !58
  %i.fw = add nsw i64 %i.fv, 1
  store i64 %i.fw, ptr %i.du, align 8, !tbaa !58
  %i.fx = icmp slt i32 %i.fu, 0
  br i1 %i.fx, label %.thread316, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not79.i = icmp eq i32 %i.fu, 0
  br i1 %.not79.i, label %bb.ad, label %.thread316

bb.ad:                                            ; preds = %bb.ac
  %i.fy = load ptr, ptr %i.ds, align 8, !tbaa !55
  %i.fz = load ptr, ptr %i.dv, align 8, !tbaa !59
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.fy, ptr noundef %i.fz) #3
  br i1 %i.fk, label %bb.ae, label %.loopexit102.i

bb.ae:                                            ; preds = %bb.ad
  %i.ga = load ptr, ptr %i.dw, align 8, !tbaa !60
  %i.gb = load i32, ptr %i.dx, align 4, !tbaa !32
  %i.gc = load double, ptr %i.ao, align 8, !tbaa !30
  %i.gd = load ptr, ptr %i.aj, align 8, !tbaa !28
  %i.ge = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.gf = load ptr, ptr %i.ds, align 8, !tbaa !55
  %i.gg = load ptr, ptr %i.dy, align 8, !tbaa !33
  %i.gh = load ptr, ptr %i.dz, align 8, !tbaa !34
  %i.gi = load ptr, ptr %i.ea, align 8, !tbaa !61
  %i.gj = load ptr, ptr %i.eb, align 8, !tbaa !62
  %i.gk = load ptr, ptr %i.ec, align 8, !tbaa !63
  %i.gl = load ptr, ptr %i.ed, align 8, !tbaa !64
  %i.gm = load ptr, ptr %i.ee, align 8, !tbaa !65
  %i.gn = tail call i32 %i.ga(i32 noundef %i.gb, double noundef %i.gc, ptr noundef %i.gd, ptr noundef %i.ge, ptr noundef %i.gf, ptr noundef %i.gg, ptr noundef %i.gh, ptr noundef %i.gi, ptr noundef %i.gj, ptr noundef %i.gk, ptr noundef %i.gl, ptr noundef %i.gm) #3, !inline_history !57 ; 2 uses
  %i.go = load i64, ptr %i.ef, align 8, !tbaa !66
  %i.gp = add nsw i64 %i.go, 1
  store i64 %i.gp, ptr %i.ef, align 8, !tbaa !66
  %i.gq = icmp slt i32 %i.gn, 0
  br i1 %i.gq, label %.thread316, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not80.i = icmp eq i32 %i.gn, 0
  br i1 %.not80.i, label %.preheader101.i, label %.thread316

.preheader101.i:                                  ; preds = %bb.af
  %i.gr = load i32, ptr %i.dx, align 4, !tbaa !32
  %i.gs = icmp sgt i32 %i.gr, 0
  br i1 %i.gs, label %.lr.ph.i, label %.loopexit102.i

.lr.ph.i:                                         ; preds = %.preheader101.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader101.i ] ; 3 uses
  %i.gt = load ptr, ptr %i.ea, align 8, !tbaa !61
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv.i
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !31
  %i.gw = load ptr, ptr %i.eg, align 8, !tbaa !67
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.i
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !31
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.gv, ptr noundef %i.gy) #3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gz = load i32, ptr %i.dx, align 4, !tbaa !32
  %i.ha = sext i32 %i.gz to i64
  %i.hb = icmp slt i64 %indvars.iv.next.i, %i.ha
  br i1 %i.hb, label %.lr.ph.i, label %.loopexit102.i, !llvm.loop !68

.loopexit102.i:                                   ; preds = %.lr.ph.i, %.preheader101.i, %bb.ad
  %i.hc = load i32, ptr %i.eh, align 4, !tbaa !69
  %.not81109.i = icmp slt i32 %i.hc, 1
  br i1 %.not81109.i, label %IDANlsIC.exit.thread320, label %.lr.ph111.i

.lr.ph111.i:                                      ; preds = %.loopexit102.i, %.loopexit.i
  %.072110.i = phi i32 [ %i.se, %.loopexit.i ], [ 1, %.loopexit102.i ] ; 2 uses
  %i.hd = load i32, ptr %i.ei, align 8, !tbaa !70
  %.not82.i = icmp eq i32 %i.hd, 0
  br i1 %.not82.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph111.i
  %i.he = load i64, ptr %i.ej, align 8, !tbaa !71
  %i.hf = add nsw i64 %i.he, 1
  store i64 %i.hf, ptr %i.ej, align 8, !tbaa !71
  %i.hg = load ptr, ptr %i.ek, align 8, !tbaa !72
  %i.hh = load ptr, ptr %i.aj, align 8, !tbaa !28
  %i.hi = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.hj = load ptr, ptr %i.ds, align 8, !tbaa !55
  %i.hk = tail call i32 %i.hg(ptr noundef nonnull %0, ptr noundef %i.hh, ptr noundef %i.hi, ptr noundef %i.hj, ptr noundef %i.fl, ptr noundef %i.fm, ptr noundef %i.fn) #3, !inline_history !57 ; 2 uses
  %i.hl = icmp slt i32 %i.hk, 0
  br i1 %i.hl, label %.thread316, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not83.i = icmp eq i32 %i.hk, 0
  br i1 %.not83.i, label %bb.ai, label %.loopexit356

bb.ai:                                            ; preds = %bb.ah, %.lr.ph111.i
  %i.hm = load i32, ptr %i.y, align 8, !tbaa !25
  %.not.i.i = icmp eq i32 %i.hm, 0
  br i1 %.not.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hn = load i32, ptr %i.do, align 8, !tbaa !26
  %i.ho = icmp eq i32 %i.hn, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.hp = phi i1 [ false, %bb.ai ], [ %i.ho, %bb.aj ] ; 2 uses
  %i.hq = load ptr, ptr %i.dq, align 8, !tbaa !31
  store ptr %i.hq, ptr %i.el, align 8, !tbaa !73
  %i.hr = load ptr, ptr %i.em, align 8, !tbaa !74
  %i.hs = load ptr, ptr %i.ds, align 8, !tbaa !55
end_hunk_0
