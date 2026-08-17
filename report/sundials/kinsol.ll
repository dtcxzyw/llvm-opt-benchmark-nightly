inline.NumInlined: 21
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@KINSol:bb.a

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.by = load double, ptr %i.af, align 8, !tbaa !20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.y, %bb.x
  %.0.i = phi double [ %i.bk, %bb.x ], [ 1.000000e+00, %bb.y ], [ %i.by, %bb.ad ], [ 1.000000e+00, %bb.ac ], [ 1.000000e+00, %bb.aa ]
  %i.bz = load ptr, ptr %i.aa, align 8, !tbaa !64
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !72
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.bz, double noundef -1.000000e+00, ptr noundef %i.ca, ptr noundef %i.v) #13
  %i.cb = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.cc = load ptr, ptr %i.t, align 8, !tbaa !67
  tail call void @N_VProd(ptr noundef %i.cb, ptr noundef %i.v, ptr noundef %i.cc) #13
  %i.cd = load ptr, ptr %i.t, align 8, !tbaa !67
  %i.ce = tail call double @N_VMaxNorm(ptr noundef %i.cd) #13 ; 2 uses
  store double %i.ce, ptr %i.ah, align 8, !tbaa !88
  %i.cf = load i64, ptr %i.r, align 8, !tbaa !78
  %i.cg = load i64, ptr %i.ai, align 8, !tbaa !22
  %.not83.i = icmp slt i64 %i.cf, %i.cg           ; 2 uses
  %i.ch = load double, ptr %i.aj, align 8, !tbaa !89
  %i.ci = fmul double %.0.i, %i.ch
  %i.cj = fcmp ugt double %i.ce, %i.ci            ; 2 uses
  %i.ck = select i1 %i.cj, i1 %.not83.i, i1 false
  br i1 %i.ck, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %spec.select.le.i = select i1 %.not83.i, i32 -999, i32 -6
  %.2.le.i = select i1 %i.cj, i32 %spec.select.le.i, i32 0 ; 2 uses
  %i.cl = load i32, ptr %i.ak, align 8, !tbaa !90
  %.not84.i = icmp eq i32 %i.cl, 0
  br i1 %.not84.i, label %KINFP.exit, label %.thread92.i

.thread92.i:                                      ; preds = %bb.af
  %i.cm = load ptr, ptr %i.aa, align 8, !tbaa !64
  %i.cn = load ptr, ptr %i.e, align 8, !tbaa !72
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.cm, ptr noundef %i.cn) #13
  br label %KINFP.exit

bb.ag:                                            ; preds = %bb.ae
  %i.co = load ptr, ptr %i.aa, align 8, !tbaa !64
  %i.cp = load ptr, ptr %i.e, align 8, !tbaa !72
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.co, ptr noundef %i.cp) #13
  %i.cq = load i64, ptr %i.r, align 8, !tbaa !78
  %i.cr = add nsw i64 %i.cq, 1
  store i64 %i.cr, ptr %i.r, align 8, !tbaa !78
  %i.cs = load ptr, ptr %i.w, align 8, !tbaa !69
  %i.ct = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.cu = load ptr, ptr %i.x, align 8, !tbaa !65
  %i.cv = load ptr, ptr %i.y, align 8, !tbaa !79
  %i.cw = tail call i32 %i.cs(ptr noundef %i.ct, ptr noundef %i.cu, ptr noundef %i.cv) #13, !inline_history !80
  %i.cx = load i64, ptr %i.s, align 8, !tbaa !81
  %i.cy = add nsw i64 %i.cx, 1
  store i64 %i.cy, ptr %i.s, align 8, !tbaa !81
  %i.cz = icmp slt i32 %i.cw, 0
  br i1 %i.cz, label %KINFP.exit.thread242, label %.lr.ph390

KINFP.exit:                                       ; preds = %bb.z, %bb.af, %.thread92.i
  %.3.i = phi i32 [ %.2.le.i, %.thread92.i ], [ %.2.le.i, %bb.af ], [ %i.bu, %bb.z ] ; 2 uses
  switch i32 %.3.i, label %KINPicardAA.exit [
    i32 -13, label %KINFP.exit.thread242
    i32 -6, label %bb.ah
  ]

KINFP.exit.thread242:                             ; preds = %bb.ag, %bb.p, %KINFP.exit
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -13, i32 noundef 551, ptr noundef nonnull @__func__.KINSol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11)
  br label %KINPicardAA.exit

bb.ah:                                            ; preds = %KINFP.exit
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -6, i32 noundef 555, ptr noundef nonnull @__func__.KINSol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12)
  br label %KINPicardAA.exit

.thread:                                          ; preds = %bb.e, %bb.k
  %i.da = phi ptr [ %.pre, %bb.k ], [ %1, %bb.e ]
  %i.db = phi i32 [ %.pr, %bb.k ], [ %2, %bb.e ]
  %i.dc = icmp eq ptr %i.da, null
  br i1 %i.dc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.thread
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 1034, ptr noundef nonnull @__func__.KINSolInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9)
  br label %KINPicardAA.exit

bb.aj:                                            ; preds = %.thread
  %switch.i = icmp ult i32 %i.db, 4
  br i1 %switch.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 1046, ptr noundef nonnull @__func__.KINSolInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.34)
  br label %KINPicardAA.exit

bb.al:                                            ; preds = %bb.aj
  %i.dd = load ptr, ptr %i.f, align 8, !tbaa !73  ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 1053, ptr noundef nonnull @__func__.KINSolInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.35)
  br label %KINPicardAA.exit

bb.an:                                            ; preds = %bb.al
  %i.df = tail call double @N_VMin(ptr noundef nonnull %i.dd) #13
  %i.dg = fcmp ugt double %i.df, 0.000000e+00
  br i1 %i.dg, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 1060, ptr noundef nonnull @__func__.KINSolInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.36)
  br label %KINPicardAA.exit

bb.ap:                                            ; preds = %bb.an
  %i.dh = load ptr, ptr %i.g, align 8, !tbaa !74  ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 1067, ptr noundef nonnull @__func__.KINSolInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.37)
  br label %KINPicardAA.exit

bb.ar:                                            ; preds = %bb.ap
  %i.dj = tail call double @N_VMin(ptr noundef nonnull %i.dh) #13
  %i.dk = fcmp ugt double %i.dj, 0.000000e+00
  br i1 %i.dk, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 1074, ptr noundef nonnull @__func__.KINSolInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.38)
  br label %KINPicardAA.exit

bb.at:                                            ; preds = %bb.ar
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !91 ; 3 uses
  %.not93.i = icmp eq ptr %i.dm, null
  br i1 %.not93.i, label %.thread.i160, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dn = load i32, ptr %i.h, align 8, !tbaa !75
  %i.do = and i32 %i.dn, -2
  %switch101.i = icmp eq i32 %i.do, 2
  br i1 %switch101.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 1083, ptr noundef nonnull @__func__.KINSolInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10)
  br label %KINPicardAA.exit

.thread.i160:                                     ; preds = %bb.at
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.dp, align 8, !tbaa !77
  br label %bb.bb

bb.aw:                                            ; preds = %bb.au
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 1, ptr %i.dq, align 8, !tbaa !77
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !45 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 224
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !92
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 232
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !93
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 1100, ptr noundef nonnull @__func__.KINSolInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5)
  br label %KINPicardAA.exit

bb.az:                                            ; preds = %bb.ax
  %i.dz = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !67
  %i.ec = tail call i32 @N_VConstrMask(ptr noundef nonnull %i.dm, ptr noundef %i.dz, ptr noundef %i.eb) #13
  %.not95.i = icmp eq i32 %i.ec, 0
  br i1 %.not95.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 1113, ptr noundef nonnull @__func__.KINSolInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.39)
  br label %KINPicardAA.exit

bb.bb:                                            ; preds = %bb.az, %.thread.i160
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !94 ; 2 uses
  %i.ef = fcmp oeq double %i.ee, 0.000000e+00
  br i1 %i.ef, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.eg = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.eh = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.ei = tail call double @N_VWL2Norm(ptr noundef %i.eg, ptr noundef %i.eh) #13
  %i.ej = fmul double %i.ei, 1.000000e+03
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sink.i = phi double [ %i.ej, %bb.bc ], [ %i.ee, %bb.bb ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 8 uses
  %i.el = fcmp olt double %.sink.i, 1.000000e+00
  %storemerge.i = select i1 %i.el, double 1.000000e+00, double %.sink.i
  store double %storemerge.i, ptr %i.ek, align 8, !tbaa !95
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 7 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !96
  %.not96.i = icmp eq i32 %i.en, 0
  br i1 %.not96.i, label %7, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !29 ; 2 uses
  %i.eq = icmp ne i32 %i.ep, 3
  %i.er = zext i1 %i.eq to i32
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.er, ptr %i.es, align 8, !tbaa !97
  switch i32 %i.ep, label %bb.bf [
    i32 1, label %.thread102.i
    i32 3, label %5
  ]

.thread102.i:                                     ; preds = %bb.be
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 192
  store double f0x3FF9E3779B97F4A8, ptr %i.et, align 8, !tbaa !30
  br label %bb.bf

bb.bf:                                            ; preds = %.thread102.i, %bb.be
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 176
  store double 5.000000e-01, ptr %i.eu, align 8, !tbaa !98
  br label %5

5:                                                ; preds = %bb.bf, %bb.be
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 1, ptr %6, align 4, !tbaa !99
  br label %bb.bg

7:                                                ; preds = %bb.bd
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 0, ptr %8, align 8, !tbaa !97
  br label %bb.bg

bb.bg:                                            ; preds = %7, %5
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 19 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 34 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 17 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ev, i8 0, i64 48, i1 false)
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !69
  %i.ez = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 36 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !65
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 18 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !79
  %i.fe = tail call i32 %i.ey(ptr noundef %i.ez, ptr noundef %i.fb, ptr noundef %i.fd) #13, !inline_history !100 ; 2 uses
  %i.ff = load i64, ptr %i.ew, align 8, !tbaa !81
  %i.fg = add nsw i64 %i.ff, 1
  store i64 %i.fg, ptr %i.ew, align 8, !tbaa !81
  %i.fh = icmp slt i32 %i.fe, 0
  br i1 %i.fh, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -13, i32 noundef 1174, ptr noundef nonnull @__func__.KINSolInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11)
  br label %KINPicardAA.exit

bb.bi:                                            ; preds = %bb.bg
  %.not98.i = icmp eq i32 %i.fe, 0
  br i1 %.not98.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -14, i32 noundef 1180, ptr noundef nonnull @__func__.KINSolInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.40)
  br label %KINPicardAA.exit

bb.bk:                                            ; preds = %bb.bi
  %i.fi = load ptr, ptr %i.fa, align 8, !tbaa !65
  %i.fj = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.fk = tail call fastcc double @KINScFNorm(ptr noundef nonnull %0, ptr noundef %i.fi, ptr noundef %i.fj)
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !89
  %i.fn = fmul double %i.fm, 1.000000e-02
  %i.fo = fcmp ugt double %i.fk, %i.fn
  br i1 %i.fo, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fp = load ptr, ptr %i.fa, align 8, !tbaa !65
  %i.fq = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.fr = tail call double @N_VWL2Norm(ptr noundef %i.fp, ptr noundef %i.fq) #13
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 632
  store double %i.fr, ptr %i.fs, align 8, !tbaa !88
  br label %KINPicardAA.exit

bb.bm:                                            ; preds = %bb.bk
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !101 ; 2 uses
  %.not99.i = icmp eq ptr %i.fu, null
  br i1 %.not99.i, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fv = tail call i32 %i.fu(ptr noundef nonnull %0) #13, !inline_history !100
  %.not100.i = icmp eq i32 %i.fv, 0
  br i1 %.not100.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -10, i32 noundef 1203, ptr noundef nonnull @__func__.KINSolInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.41)
  br label %KINPicardAA.exit

bb.bp:                                            ; preds = %bb.bn, %bb.bm
  %i.fw = load ptr, ptr %i.fa, align 8, !tbaa !65
  %i.fx = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.fy = tail call double @N_VWL2Norm(ptr noundef %i.fw, ptr noundef %i.fx) #13 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 13 uses
  store double %i.fy, ptr %i.fz, align 8, !tbaa !88
  %i.ga = fmul double %i.fy, 5.000000e-01
  %i.gb = fmul double %i.fy, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 12 uses
  store double %i.gb, ptr %i.gc, align 8, !tbaa !102
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 5 uses
  store double %i.fy, ptr %i.gd, align 8, !tbaa !103
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  store i64 0, ptr %i.ge, align 8, !tbaa !104
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !105
  %.not145 = icmp eq i32 %i.gg, 0
  %.sink = select i1 %.not145, double 2.000000e+00, double 1.000000e+00
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 12 uses
  store double %.sink, ptr %i.gh, align 8, !tbaa !26
  %i.gi = load i32, ptr %i.em, align 8, !tbaa !96 ; 2 uses
  %.not146 = icmp eq i32 %i.gi, 0
  br i1 %.not146, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !106
  %.not147 = icmp eq i32 %i.gk, 0
  br i1 %.not147, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.gl = load double, ptr %i.fl, align 8, !tbaa !89
  %i.gm = fmul double %i.gl, 1.000000e-02
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  %.0124 = phi double [ 0.000000e+00, %bb.bq ], [ %i.gm, %bb.br ], [ 0.000000e+00, %bb.bp ] ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.go = load double, ptr %i.gn, align 8, !tbaa !107
  %i.gp = fcmp oeq double %i.go, 0.000000e+00
  %.sink474 = zext i1 %i.gp to i32
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  store i32 %.sink474, ptr %i.gq, align 8, !tbaa !31
  %i.gr = load i32, ptr %i.h, align 8, !tbaa !75
  %i.gs = icmp eq i32 %i.gr, 2
  br i1 %i.gs, label %bb.bt, label %.preheader

.preheader:                                       ; preds = %bb.bs
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 6 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 9 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 17 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 6 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 45 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 38 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 10 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 14 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 10 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  br label %bb.dh

bb.bt:                                            ; preds = %bb.bs
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 6 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !108
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !64
  %i.ig = tail call ptr @N_VClone(ptr noundef %i.if) #13 ; 2 uses
  store ptr %i.ig, ptr %i.ib, align 8, !tbaa !108
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -4, i32 noundef 605, ptr noundef nonnull @__func__.KINSol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2)
  br label %KINPicardAA.exit

bb.bw:                                            ; preds = %bb.bu
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.ik = load <2 x i64>, ptr %i.ii, align 8, !tbaa !61
  %i.il = load <2 x i64>, ptr %i.ij, align 8, !tbaa !61
  %i.im = add nsw <2 x i64> %i.il, %i.ik
  store <2 x i64> %i.im, ptr %i.ij, align 8, !tbaa !61
  %.pre481 = load i32, ptr %i.em, align 8, !tbaa !96
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bt
  %i.in = phi i32 [ %.pre481, %bb.bw ], [ %i.gi, %bb.bt ] ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !67
  %.not.i161 = icmp eq i32 %i.in, 0
  br i1 %.not.i161, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !106
  %.not91.i = icmp eq i32 %i.ir, 0
  br i1 %.not91.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.is = load double, ptr %i.fl, align 8, !tbaa !89
  %i.it = fmul double %i.is, 1.000000e-02
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bx
  %.0.i162 = phi double [ 0.000000e+00, %bb.by ], [ %i.it, %bb.bz ], [ 0.000000e+00, %bb.bx ] ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 72
end_hunk_0
begin_hunk_1_@KINSol:bb.a
  %i.ahw = fmul double %i.ahv, f0x3FEFAE147AE147AE
  %i.ahx = fcmp ogt double %i.ahu, %i.ahw
  br i1 %i.ahx, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %.thread475.i
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %.thread475.i, %.loopexit425.i, %bb.fh
  %.12240 = phi double [ %.11239, %.loopexit425.i ], [ %.1229556, %bb.fh ], [ %.4232, %bb.gj ], [ %.4232, %.thread475.i ]
  %.12 = phi double [ %.11, %.loopexit425.i ], [ %.1224558, %bb.fh ], [ %.4227, %bb.gj ], [ %.4227, %.thread475.i ]
  %.4222 = phi i32 [ 0, %.loopexit425.i ], [ 0, %bb.fh ], [ 1, %bb.gj ], [ 0, %.thread475.i ]
  %.0290.i = phi i32 [ -997, %.loopexit425.i ], [ -997, %bb.fh ], [ 0, %bb.gj ], [ 0, %.thread475.i ]
  %i.ahy = load i64, ptr %i.hm, align 8, !tbaa !133
  %i.ahz = load i64, ptr %i.ho, align 8, !tbaa !25
  %i.aia = icmp sgt i64 %i.ahy, %i.ahz
  br i1 %i.aia, label %.thread262, label %KINFullNewton.exit.jt2

KINFullNewton.exit:                               ; preds = %bb.dn
  %i.aib = load i32, ptr %i.h, align 8, !tbaa !75 ; 2 uses
  %i.aic = and i32 %i.aib, -2
  %switch158 = icmp eq i32 %i.aic, 2
  br i1 %switch158, label %KINStop.exit.thread, label %bb.gl

KINFullNewton.exit.jt2:                           ; preds = %bb.ef, %bb.eq, %bb.er, %bb.gk, %bb.do
  %.2230.jt2 = phi double [ %.2230559, %bb.do ], [ %.12240, %bb.gk ], [ %i.uc, %bb.er ], [ %i.uc, %bb.eq ], [ %.1229555, %bb.ef ]
  %.2225.jt2 = phi double [ %.2225561, %bb.do ], [ %.12, %bb.gk ], [ %i.ue, %bb.er ], [ %i.ue, %bb.eq ], [ %.1224557, %bb.ef ] ; 2 uses
  %.2220.jt2 = phi i32 [ %.2220564, %bb.do ], [ %.4222, %bb.gk ], [ 1, %bb.er ], [ 0, %bb.eq ], [ 0, %bb.ef ]
  %.2.jt2 = phi i32 [ -998, %bb.do ], [ 0, %bb.gk ], [ 0, %bb.er ], [ 0, %bb.eq ], [ 0, %bb.ef ]
  %.0.jt2 = phi i32 [ 0, %bb.do ], [ %.0290.i, %bb.gk ], [ 0, %bb.er ], [ 0, %bb.eq ], [ -997, %bb.ef ]
  %i.aid = load i32, ptr %i.h, align 8, !tbaa !75 ; 2 uses
  %i.aie = and i32 %i.aid, -2
  %switch158.jt2 = icmp eq i32 %i.aie, 2
  br i1 %switch158.jt2, label %KINStop.exit.thread.jt2, label %bb.gl

KINFullNewton.exit.jt4294966297:                  ; preds = %bb.dp
  %i.aif = load i32, ptr %i.h, align 8, !tbaa !75 ; 2 uses
  %i.aig = and i32 %i.aif, -2
  %switch158.jt4294966297 = icmp eq i32 %i.aig, 2
  br i1 %switch158.jt4294966297, label %KINStop.exit.thread.jt4294966297, label %bb.gl

bb.gl:                                            ; preds = %KINFullNewton.exit.jt2, %KINFullNewton.exit.jt4294966297, %KINFullNewton.exit
  %i.aih = phi i32 [ %i.aid, %KINFullNewton.exit.jt2 ], [ %i.aif, %KINFullNewton.exit.jt4294966297 ], [ %i.aib, %KINFullNewton.exit ] ; 2 uses
  %.0566 = phi i32 [ %.0.jt2, %KINFullNewton.exit.jt2 ], [ 0, %KINFullNewton.exit.jt4294966297 ], [ 0, %KINFullNewton.exit ]
  %.2220564 = phi i32 [ %.2220.jt2, %KINFullNewton.exit.jt2 ], [ %.0218, %KINFullNewton.exit.jt4294966297 ], [ %.0218, %KINFullNewton.exit ] ; 6 uses
  %.2225561 = phi double [ %.2225.jt2, %KINFullNewton.exit.jt2 ], [ %.0223, %KINFullNewton.exit.jt4294966297 ], [ %.0223, %KINFullNewton.exit ] ; 14 uses
  %.2230559 = phi double [ %.2230.jt2, %KINFullNewton.exit.jt2 ], [ %.0228, %KINFullNewton.exit.jt4294966297 ], [ %.0228, %KINFullNewton.exit ] ; 10 uses
  %i.aii = load i32, ptr %i.hp, align 8, !tbaa !97
  %.not154 = icmp eq i32 %i.aii, 0
  br i1 %.not154, label %bb.gq, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.aij = load i32, ptr %i.hq, align 8, !tbaa !29
  switch i32 %i.aij, label %._crit_edge.i199 [
    i32 1, label %bb.gn
    i32 2, label %bb.gp
  ]

._crit_edge.i199:                                 ; preds = %bb.gm
  %.pre.i201 = load double, ptr %i.hs, align 8, !tbaa !98
  br label %KINForcingTerm.exit

bb.gn:                                            ; preds = %bb.gm
  %i.aik = load double, ptr %i.fz, align 8, !tbaa !88 ; 3 uses
  %i.ail = load double, ptr %i.he, align 8, !tbaa !120
  %i.aim = fmul double %i.ail, 2.000000e+00
  %i.ain = tail call double @llvm.fmuladd.f64(double %i.aik, double %i.aik, double %i.aim)
  %i.aio = load double, ptr %i.hd, align 8, !tbaa !121 ; 2 uses
  %i.aip = tail call double @llvm.fmuladd.f64(double %i.aio, double %i.aio, double %i.ain) ; 2 uses
  %i.aiq = fcmp ugt double %i.aip, 0.000000e+00
  br i1 %i.aiq, label %bb.go, label %.thread.i198

bb.go:                                            ; preds = %bb.gn
  %i.air = tail call double @sqrt(double noundef %i.aip) #13
  br label %.thread.i198

.thread.i198:                                     ; preds = %bb.go, %bb.gn
  %i.ais = phi double [ %i.air, %bb.go ], [ 0.000000e+00, %bb.gn ]
  %i.ait = load double, ptr %i.hs, align 8, !tbaa !98
  %i.aiu = load double, ptr %i.ht, align 8, !tbaa !30
  %i.aiv = tail call double @pow(double noundef %i.ait, double noundef %i.aiu) #13
  %i.aiw = fsub double %.2230559, %i.ais
  %i.aix = tail call double @llvm.fabs.f64(double %i.aiw)
  %i.aiy = fdiv double %i.aix, %i.aik
  br label %KINForcingTerm.exit

bb.gp:                                            ; preds = %bb.gm
  %i.aiz = load double, ptr %i.hr, align 8, !tbaa !122 ; 2 uses
  %i.aja = load double, ptr %i.hs, align 8, !tbaa !98
  %i.ajb = load double, ptr %i.ht, align 8, !tbaa !30 ; 2 uses
  %i.ajc = tail call double @pow(double noundef %i.aja, double noundef %i.ajb) #13
  %i.ajd = fmul double %i.aiz, %i.ajc
  %i.aje = load double, ptr %i.fz, align 8, !tbaa !88
  %i.ajf = fdiv double %.2230559, %i.aje
  %i.ajg = tail call double @pow(double noundef %i.ajf, double noundef %i.ajb) #13
  %i.ajh = fmul double %i.aiz, %i.ajg
  br label %KINForcingTerm.exit

KINForcingTerm.exit:                              ; preds = %._crit_edge.i199, %.thread.i198, %bb.gp
  %i.aji = phi double [ %i.ajh, %bb.gp ], [ %.pre.i201, %._crit_edge.i199 ], [ %i.aiy, %.thread.i198 ] ; 2 uses
  %.1.i196 = phi double [ %i.ajd, %bb.gp ], [ 5.000000e-01, %._crit_edge.i199 ], [ %i.aiv, %.thread.i198 ] ; 2 uses
  %i.ajj = fcmp olt double %.1.i196, 1.000000e-01
  %.2.i197 = select i1 %i.ajj, double 0.000000e+00, double %.1.i196 ; 2 uses
  %i.ajk = fcmp ogt double %i.aji, %.2.i197
  %i.ajl = select i1 %i.ajk, double %i.aji, double %.2.i197 ; 2 uses
  %i.ajm = fcmp ogt double %i.ajl, 1.000000e-04
  %i.ajn = select i1 %i.ajm, double %i.ajl, double 1.000000e-04 ; 2 uses
  %i.ajo = fcmp olt double %i.ajn, 9.000000e-01
  %i.ajp = select i1 %i.ajo, double %i.ajn, double 9.000000e-01
  store double %i.ajp, ptr %i.hs, align 8, !tbaa !98
  br label %bb.gq

bb.gq:                                            ; preds = %KINForcingTerm.exit, %bb.gl
  store double %.2230559, ptr %i.fz, align 8, !tbaa !88
  %i.ajq = icmp eq i32 %.0566, -997
  br i1 %i.ajq, label %bb.gr, label %bb.gu

bb.gr:                                            ; preds = %bb.gq
  %i.ajr = load ptr, ptr %i.gx, align 8, !tbaa !113
  %.not84.i214 = icmp eq ptr %i.ajr, null
  br i1 %.not84.i214, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ajs = load i32, ptr %i.gy, align 4, !tbaa !112
  %.not85.i = icmp eq i32 %i.ajs, 0
  br i1 %.not85.i, label %bb.do, label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.ajt = icmp eq i32 %i.aih, 0
  br i1 %i.ajt, label %KINStop.exit.thread.jt2, label %KINStop.exit.thread.jt4294967291

bb.gu:                                            ; preds = %bb.gq
  %i.aju = load ptr, ptr %i.fa, align 8, !tbaa !65
  %i.ajv = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.ajw = load ptr, ptr %i.hj, align 8, !tbaa !67
  tail call void @N_VProd(ptr noundef %i.ajv, ptr noundef %i.aju, ptr noundef %i.ajw) #13
  %i.ajx = load ptr, ptr %i.hj, align 8, !tbaa !67
  %i.ajy = tail call double @N_VMaxNorm(ptr noundef %i.ajx) #13
  %i.ajz = load double, ptr %i.fl, align 8, !tbaa !89
  %i.aka = fcmp ugt double %i.ajy, %i.ajz
  br i1 %i.aka, label %bb.gv, label %KINStop.exit.thread.jt2

bb.gv:                                            ; preds = %bb.gu
  %i.akb = load ptr, ptr %i.hb, align 8, !tbaa !66 ; 2 uses
  %i.akc = load ptr, ptr %i.ha, align 8, !tbaa !64
  %i.akd = load ptr, ptr %i.e, align 8, !tbaa !72
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.akc, double noundef -1.000000e+00, ptr noundef %i.akd, ptr noundef %i.akb) #13
  %i.ake = load ptr, ptr %i.ha, align 8, !tbaa !64
  %i.akf = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.akg = load ptr, ptr %i.hj, align 8, !tbaa !67
  tail call void @N_VInv(ptr noundef %i.akf, ptr noundef %i.akg) #13
  %i.akh = load ptr, ptr %i.hk, align 8, !tbaa !68
  tail call void @N_VAbs(ptr noundef %i.ake, ptr noundef %i.akh) #13
  %i.aki = load ptr, ptr %i.hj, align 8, !tbaa !67 ; 2 uses
  %i.akj = load ptr, ptr %i.hk, align 8, !tbaa !68
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.aki, double noundef 1.000000e+00, ptr noundef %i.akj, ptr noundef %i.aki) #13
  %i.akk = load ptr, ptr %i.hj, align 8, !tbaa !67 ; 2 uses
  tail call void @N_VDiv(ptr noundef %i.akb, ptr noundef %i.akk, ptr noundef %i.akk) #13
  %i.akl = load ptr, ptr %i.hj, align 8, !tbaa !67
  %i.akm = tail call double @N_VMaxNorm(ptr noundef %i.akl) #13 ; 2 uses
  %i.akn = load double, ptr %i.hi, align 8, !tbaa !128
  %i.ako = fcmp ugt double %i.akm, %i.akn
  br i1 %i.ako, label %bb.gy, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.akp = load ptr, ptr %i.gx, align 8, !tbaa !113
  %.not82.i203 = icmp eq ptr %i.akp, null
  br i1 %.not82.i203, label %KINStop.exit.thread.jt2, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.akq = load i32, ptr %i.gy, align 4, !tbaa !112
  %.not83.i204 = icmp eq i32 %i.akq, 0
  br i1 %.not83.i204, label %KINStop.exit.thread.jt4294966297.sink.split, label %KINStop.exit.thread.jt2

bb.gy:                                            ; preds = %bb.gv
  %i.akr = load i64, ptr %i.ev, align 8, !tbaa !78 ; 3 uses
  %i.aks = load i64, ptr %i.hw, align 8, !tbaa !22
  %.not.i205 = icmp slt i64 %i.akr, %i.aks
  br i1 %.not.i205, label %bb.gz, label %KINStop.exit.thread.jt4294967290

bb.gz:                                            ; preds = %bb.gy
  %.not72.i = icmp eq i32 %.2220564, 0
  br i1 %.not72.i, label %.thread.i213, label %bb.ha

.thread.i213:                                     ; preds = %bb.gz
  store i64 0, ptr %i.ge, align 8, !tbaa !104
  br label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.akt = load i64, ptr %i.ge, align 8, !tbaa !104
  %i.aku = add nsw i64 %i.akt, 1                  ; 2 uses
  store i64 %i.aku, ptr %i.ge, align 8, !tbaa !104
  %i.akv = icmp eq i64 %i.aku, 5
  br i1 %i.akv, label %KINStop.exit.thread.jt4294967289, label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %.thread.i213
  %i.akw = load i32, ptr %i.em, align 8, !tbaa !96
  %.not73.i = icmp eq i32 %i.akw, 0
  br i1 %.not73.i, label %bb.hc, label %KINStop.exit.thread.jt4294966297.sink.split

bb.hc:                                            ; preds = %bb.hb
  %i.akx = load i32, ptr %i.hx, align 4, !tbaa !99
  %.not74.i = icmp eq i32 %i.akx, 0
  br i1 %.not74.i, label %bb.hd, label %KINStop.exit.thread.jt4294966297

bb.hd:                                            ; preds = %bb.hc
  %i.aky = load i64, ptr %i.gz, align 8, !tbaa !115
  %i.akz = sub nsw i64 %i.akr, %i.aky
  %i.ala = load i64, ptr %i.hy, align 8, !tbaa !24
  %.not75.i = icmp slt i64 %i.akz, %i.ala
  br i1 %.not75.i, label %bb.ho, label %bb.he

bb.he:                                            ; preds = %bb.hd
  store i64 %i.akr, ptr %i.gz, align 8, !tbaa !115
  %i.alb = load i32, ptr %i.gq, align 8, !tbaa !31
  %.not79.i206 = icmp eq i32 %i.alb, 0
  %.pre.i208 = load double, ptr %i.fz, align 8, !tbaa !88 ; 3 uses
  br i1 %.not79.i206, label %._crit_edge.i210, label %bb.hf

._crit_edge.i210:                                 ; preds = %bb.he
  %.pre87.i = load double, ptr %i.gn, align 8, !tbaa !107
  br label %bb.hk

bb.hf:                                            ; preds = %bb.he
  %i.alc = load double, ptr %i.fl, align 8, !tbaa !89
  %i.ald = fdiv double %.pre.i208, %i.alc
  %i.ale = fadd double %i.ald, -1.000000e+00      ; 2 uses
  %i.alf = fcmp olt double %i.ale, 0.000000e+00
  %i.alg = select i1 %i.alf, double 0.000000e+00, double %i.ale ; 2 uses
  %i.alh = fcmp ogt double %i.alg, 1.200000e+01
  br i1 %i.alh, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.ali = load double, ptr %i.ia, align 8, !tbaa !135
  br label %bb.hj

bb.hh:                                            ; preds = %bb.hf
  %i.alj = load double, ptr %i.hz, align 8, !tbaa !136
  %i.alk = tail call double @exp(double noundef %i.alg) #13
  %i.all = fmul double %i.alj, %i.alk             ; 2 uses
  %i.alm = load double, ptr %i.ia, align 8, !tbaa !135 ; 2 uses
  %i.aln = fcmp olt double %i.all, %i.alm
  br i1 %i.aln, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh, %bb.hg
  %i.alo = phi double [ %i.ali, %bb.hg ], [ %i.all, %bb.hi ], [ %i.alm, %bb.hh ] ; 2 uses
  store double %i.alo, ptr %i.gn, align 8, !tbaa !107
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %._crit_edge.i210
  %i.alp = phi double [ %.pre87.i, %._crit_edge.i210 ], [ %i.alo, %bb.hj ]
  %i.alq = load double, ptr %i.gd, align 8, !tbaa !103
  %i.alr = fmul double %i.alp, %i.alq
  %i.als = fcmp ogt double %.pre.i208, %i.alr
  br i1 %i.als, label %bb.hl, label %bb.hn

bb.hl:                                            ; preds = %bb.hk
  %i.alt = load ptr, ptr %i.gx, align 8, !tbaa !113
  %.not80.i209 = icmp eq ptr %i.alt, null
  br i1 %.not80.i209, label %KINStop.exit.thread.jt4294966297, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.alu = load i32, ptr %i.gy, align 4, !tbaa !112
  %.not81.i = icmp eq i32 %i.alu, 0
  br i1 %.not81.i, label %KINStop.exit.thread.jt4294966297.sink.split, label %KINStop.exit.thread.jt4294966297

bb.hn:                                            ; preds = %bb.hk
  store double %.pre.i208, ptr %i.gd, align 8, !tbaa !103
  br label %KINStop.exit.thread.jt4294966297.sink.split

bb.ho:                                            ; preds = %bb.hd
  %i.alv = load i32, ptr %i.gt, align 8, !tbaa !123
  %.not76.i211 = icmp eq i32 %i.alv, 0
  %i.alw = load i32, ptr %i.gw, align 4, !tbaa !111
  %.not77.i212 = icmp eq i32 %i.alw, 0            ; 2 uses
  br i1 %.not76.i211, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  br i1 %.not77.i212, label %KINStop.exit.thread.jt4294966297.sink.split, label %.thread101.i

.thread101.i:                                     ; preds = %bb.hp
  %i.alx = load double, ptr %i.fz, align 8, !tbaa !88
  store double %i.alx, ptr %i.gd, align 8, !tbaa !103
  br label %bb.hr

bb.hq:                                            ; preds = %bb.ho
  %i.aly = load double, ptr %i.fz, align 8, !tbaa !88
  store double %i.aly, ptr %i.gd, align 8, !tbaa !103
  br i1 %.not77.i212, label %KINStop.exit.thread.jt4294966297.sink.split, label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %.thread101.i
  store i32 0, ptr %i.gw, align 4, !tbaa !111
  br label %KINStop.exit.thread.jt4294966297.sink.split

KINStop.exit.thread:                              ; preds = %KINFullNewton.exit
  %i.alz = load ptr, ptr %i.ha, align 8, !tbaa !64
  %i.ama = load ptr, ptr %i.e, align 8, !tbaa !72
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.alz, ptr noundef %i.ama) #13
  store double %.0223, ptr %i.gc, align 8, !tbaa !102
  br i1 %cond, label %bb.di, label %KINPicardAA.exit

KINStop.exit.thread.jt4294967291:                 ; preds = %bb.gt
  %i.amb = load ptr, ptr %i.ha, align 8, !tbaa !64
  %i.amc = load ptr, ptr %i.e, align 8, !tbaa !72
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.amb, ptr noundef %i.amc) #13
  store double %.2225561, ptr %i.gc, align 8, !tbaa !102
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -5, i32 noundef 747, ptr noundef nonnull @__func__.KINSol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17)
  br label %KINPicardAA.exit

KINStop.exit.thread.jt4294967289:                 ; preds = %bb.ha
  %i.amd = load ptr, ptr %i.ha, align 8, !tbaa !64
  %i.ame = load ptr, ptr %i.e, align 8, !tbaa !72
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.amd, ptr noundef %i.ame) #13
  store double %.2225561, ptr %i.gc, align 8, !tbaa !102
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -7, i32 noundef 759, ptr noundef nonnull @__func__.KINSol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19)
  br label %KINPicardAA.exit

KINStop.exit.thread.jt4294967290:                 ; preds = %bb.gy
  %i.amf = load ptr, ptr %i.ha, align 8, !tbaa !64
  %i.amg = load ptr, ptr %i.e, align 8, !tbaa !72
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.amf, ptr noundef %i.amg) #13
  store double %.2225561, ptr %i.gc, align 8, !tbaa !102
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -6, i32 noundef 755, ptr noundef nonnull @__func__.KINSol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12)
  br label %KINPicardAA.exit

KINStop.exit.thread.jt4294966297.sink.split:      ; preds = %bb.hp, %bb.hq, %bb.hr, %bb.hm, %bb.hb, %bb.gx, %bb.hn
  %.sink648 = phi double [ %i.akm, %bb.hb ], [ 2.000000e+00, %bb.gx ], [ 1.000000e+00, %bb.hn ], [ 2.000000e+00, %bb.hm ], [ 1.000000e+00, %bb.hr ], [ 1.000000e+00, %bb.hq ], [ 1.000000e+00, %bb.hp ]
  store double %.sink648, ptr %i.gh, align 8, !tbaa !26
  br label %KINStop.exit.thread.jt4294966297

KINStop.exit.thread.jt4294966297:                 ; preds = %KINStop.exit.thread.jt4294966297.sink.split, %KINFullNewton.exit.jt4294966297, %bb.hc, %bb.hl, %bb.hm
  %.2220565 = phi i32 [ %.0218, %KINFullNewton.exit.jt4294966297 ], [ %.2220564, %bb.hl ], [ %.2220564, %bb.hm ], [ %.2220564, %bb.hc ], [ %.2220564, %KINStop.exit.thread.jt4294966297.sink.split ]
  %.2225562 = phi double [ %.0223, %KINFullNewton.exit.jt4294966297 ], [ %.2225561, %bb.hl ], [ %.2225561, %bb.hm ], [ %.2225561, %bb.hc ], [ %.2225561, %KINStop.exit.thread.jt4294966297.sink.split ] ; 2 uses
  %.2230560 = phi double [ %.0228, %KINFullNewton.exit.jt4294966297 ], [ %.2230559, %bb.hl ], [ %.2230559, %bb.hm ], [ %.2230559, %bb.hc ], [ %.2230559, %KINStop.exit.thread.jt4294966297.sink.split ]
  %i.amh = load ptr, ptr %i.ha, align 8, !tbaa !64
  %i.ami = load ptr, ptr %i.e, align 8, !tbaa !72
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.amh, ptr noundef %i.ami) #13
  store double %.2225562, ptr %i.gc, align 8, !tbaa !102
  br label %bb.dh

KINStop.exit.thread.jt2:                          ; preds = %KINFullNewton.exit.jt2, %bb.gu, %bb.gw, %bb.gx, %bb.gt
  %.2225563 = phi double [ %.2225561, %bb.gt ], [ %.2225.jt2, %KINFullNewton.exit.jt2 ], [ %.2225561, %bb.gx ], [ %.2225561, %bb.gw ], [ %.2225561, %bb.gu ]
  %.3.jt2 = phi i32 [ 2, %bb.gt ], [ %.2.jt2, %KINFullNewton.exit.jt2 ], [ 2, %bb.gx ], [ 2, %bb.gw ], [ 0, %bb.gu ]
  %i.amj = load ptr, ptr %i.ha, align 8, !tbaa !64
  %i.amk = load ptr, ptr %i.e, align 8, !tbaa !72
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.amj, ptr noundef %i.amk) #13
  store double %.2225563, ptr %i.gc, align 8, !tbaa !102
  br label %KINPicardAA.exit

KINLinSolDrv.exit.thread.thread:                  ; preds = %bb.fp, %bb.gh, %bb.fs, %bb.fj, %bb.fl, %bb.fn, %bb.eh, %bb.ej, %bb.el, %bb.en, %bb.fy, %.preheader.i, %.critedge2.i, %bb.fr, %bb.ep
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -13, i32 noundef 727, ptr noundef nonnull @__func__.KINSol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11)
  br label %KINPicardAA.exit

KINLinSolDrv.exit.thread.thread272:               ; preds = %bb.fr, %bb.ep
  %.lcssa621.sink = phi double [ %i.tn, %bb.ep ], [ %i.yt, %bb.fr ]
  %i.aml = load ptr, ptr %i.hb, align 8, !tbaa !66 ; 2 uses
  tail call void @N_VScale(double noundef 5.000000e-01, ptr noundef %i.aml, ptr noundef %i.aml) #13
  %i.amm = fmul double %.lcssa621.sink, 5.000000e-01
  store double %i.amm, ptr %i.hf, align 8, !tbaa !126
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -15, i32 noundef 731, ptr noundef nonnull @__func__.KINSol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13)
  br label %KINPicardAA.exit

KINLinSolDrv.exit.thread.thread276:               ; preds = %bb.eu, %bb.ds, %.peel.next, %.peel.next468
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -11, i32 noundef 735, ptr noundef nonnull @__func__.KINSol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14)
  br label %KINPicardAA.exit

KINLinSolDrv.exit.thread.thread280:               ; preds = %bb.ew, %bb.du, %bb.fa, %bb.dy
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef %0, i32 noundef -12, i32 noundef 739, ptr noundef nonnull @__func__.KINSol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15)
  br label %KINPicardAA.exit

KINLinSolDrv.exit.thread.thread268:               ; preds = %bb.ex, %bb.ey, %bb.dv, %bb.dw, %bb.fc, %bb.fb, %bb.ea, %bb.dz
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -9, i32 noundef 743, ptr noundef nonnull @__func__.KINSol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16)
  br label %KINPicardAA.exit

.thread262:                                       ; preds = %bb.gk
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -8, i32 noundef 751, ptr noundef nonnull @__func__.KINSol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.18)
  br label %KINPicardAA.exit

KINPicardAA.exit:                                 ; preds = %KINStop.exit.thread, %bb.cz, %bb.cy, %bb.ck, %bb.cj, %bb.ci, %bb.cg, %bb.co, %bb.cn, %bb.cm, %.peel.next.i, %KINStop.exit.thread.jt2, %bb.ay, %bb.ba, %bb.bo, %bb.bl, %bb.bj, %bb.bh, %bb.av, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.u, %bb.w, %KINPicardFcnEval.exit.thread.loopexit126.split.loop.exit137.i, %bb.cv, %bb.ct, %KINLinSolDrv.exit.thread.thread, %KINLinSolDrv.exit.thread.thread272, %KINLinSolDrv.exit.thread.thread276, %KINLinSolDrv.exit.thread.thread280, %KINLinSolDrv.exit.thread.thread268, %KINStop.exit.thread.jt4294967291, %.thread262, %KINStop.exit.thread.jt4294967290, %KINStop.exit.thread.jt4294967289, %KINFP.exit, %KINFP.exit.thread242, %bb.ah, %bb.bv, %bb.o, %bb.m, %bb.j, %bb.h, %bb.d, %bb.b
  %.0123 = phi i32 [ -1, %bb.b ], [ -3, %bb.d ], [ %i.l, %bb.h ], [ %i.m, %bb.j ], [ -2, %bb.m ], [ -2, %bb.o ], [ -18, %bb.u ], [ %.3.i, %KINFP.exit ], [ -4, %bb.bv ], [ -14, %bb.bj ], [ -6, %bb.ah ], [ -13, %KINFP.exit.thread242 ], [ -7, %KINStop.exit.thread.jt4294967289 ], [ -6, %KINStop.exit.thread.jt4294967290 ], [ -8, %.thread262 ], [ -5, %KINStop.exit.thread.jt4294967291 ], [ -9, %KINLinSolDrv.exit.thread.thread268 ], [ -12, %KINLinSolDrv.exit.thread.thread280 ], [ -11, %KINLinSolDrv.exit.thread.thread276 ], [ -15, %KINLinSolDrv.exit.thread.thread272 ], [ -13, %KINLinSolDrv.exit.thread.thread ], [ %.3.jt2, %KINStop.exit.thread.jt2 ], [ -2, %bb.ao ], [ -18, %bb.ct ], [ -18, %bb.cv ], [ -2, %bb.am ], [ -2, %bb.ak ], [ -2, %bb.ai ], [ -13, %bb.bh ], [ -2, %bb.av ], [ -2, %bb.as ], [ -2, %bb.aq ], [ %.2.le.i172, %KINPicardFcnEval.exit.thread.loopexit126.split.loop.exit137.i ], [ -13, %bb.co ], [ -18, %bb.w ], [ -2, %bb.ay ], [ -2, %bb.ba ], [ -10, %bb.bo ], [ 1, %bb.bl ], [ -13, %bb.cj ], [ -13, %.peel.next.i ], [ -13, %bb.cm ], [ -13, %bb.cn ], [ -13, %bb.cg ], [ %i.mg, %bb.cy ], [ -13, %bb.ci ], [ -13, %bb.cz ], [ -13, %bb.ck ], [ %.0122, %KINStop.exit.thread ]
  ret i32 %.0123
}

declare i32 @KINInitAA(ptr noundef) local_unnamed_addr #5

declare i32 @KINInitOrth(ptr noundef) local_unnamed_addr #5

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #5

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @KINFree(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !137    ; 27 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @N_VDestroy(ptr noundef nonnull %i.d) #13
  store ptr null, ptr %i.c, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  %i.g = load <2 x i64>, ptr %i.e, align 8, !tbaa !61
  %i.h = load <2 x i64>, ptr %i.f, align 8, !tbaa !61
  %i.i = sub nsw <2 x i64> %i.h, %i.g
  store <2 x i64> %i.i, ptr %i.f, align 8, !tbaa !61
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 288 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65   ; 2 uses
  %.not55.i = icmp eq ptr %i.k, null
  br i1 %.not55.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @N_VDestroy(ptr noundef nonnull %i.k) #13
  store ptr null, ptr %i.j, align 8, !tbaa !65
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  %i.n = load <2 x i64>, ptr %i.l, align 8, !tbaa !61
  %i.o = load <2 x i64>, ptr %i.m, align 8, !tbaa !61
  %i.p = sub nsw <2 x i64> %i.o, %i.n
  store <2 x i64> %i.p, ptr %i.m, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 320 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !66   ; 2 uses
  %.not56.i = icmp eq ptr %i.r, null
  br i1 %.not56.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @N_VDestroy(ptr noundef nonnull %i.r) #13
  store ptr null, ptr %i.q, align 8, !tbaa !66
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  %i.u = load <2 x i64>, ptr %i.s, align 8, !tbaa !61
  %i.v = load <2 x i64>, ptr %i.t, align 8, !tbaa !61
  %i.w = sub nsw <2 x i64> %i.v, %i.u
  store <2 x i64> %i.w, ptr %i.t, align 8, !tbaa !61
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 336 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !67   ; 2 uses
  %.not57.i = icmp eq ptr %i.y, null
  br i1 %.not57.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @N_VDestroy(ptr noundef nonnull %i.y) #13
  store ptr null, ptr %i.x, align 8, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  %i.ab = load <2 x i64>, ptr %i.z, align 8, !tbaa !61
  %i.ac = load <2 x i64>, ptr %i.aa, align 8, !tbaa !61
  %i.ad = sub nsw <2 x i64> %i.ac, %i.ab
  store <2 x i64> %i.ad, ptr %i.aa, align 8, !tbaa !61
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 344 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !68 ; 2 uses
  %.not58.i = icmp eq ptr %i.af, null
  br i1 %.not58.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @N_VDestroy(ptr noundef nonnull %i.af) #13
  store ptr null, ptr %i.ae, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  %i.ai = load <2 x i64>, ptr %i.ag, align 8, !tbaa !61
  %i.aj = load <2 x i64>, ptr %i.ah, align 8, !tbaa !61
  %i.ak = sub nsw <2 x i64> %i.aj, %i.ai
  store <2 x i64> %i.ak, ptr %i.ah, align 8, !tbaa !61
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 296 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !108 ; 2 uses
  %.not59.i = icmp eq ptr %i.am, null
  br i1 %.not59.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @N_VDestroy(ptr noundef nonnull %i.am) #13
  store ptr null, ptr %i.al, align 8, !tbaa !108
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  %i.ap = load <2 x i64>, ptr %i.an, align 8, !tbaa !61
  %i.aq = load <2 x i64>, ptr %i.ao, align 8, !tbaa !61
  %i.ar = sub nsw <2 x i64> %i.aq, %i.ap
  store <2 x i64> %i.ar, ptr %i.ao, align 8, !tbaa !61
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 328 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !91 ; 2 uses
  %.not60.i = icmp eq ptr %i.at, null
  br i1 %.not60.i, label %KINFreeVectors.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @N_VDestroy(ptr noundef nonnull %i.at) #13
  store ptr null, ptr %i.as, align 8, !tbaa !91
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !tbaa !61
  %i.ax = load <2 x i64>, ptr %i.av, align 8, !tbaa !61
  %i.ay = sub nsw <2 x i64> %i.ax, %i.aw
  store <2 x i64> %i.ay, ptr %i.av, align 8, !tbaa !61
  br label %KINFreeVectors.exit

KINFreeVectors.exit:                              ; preds = %bb.n, %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !138 ; 2 uses
  %.not = icmp eq ptr %i.ba, null
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %KINFreeVectors.exit
  %i.bb = tail call i32 %i.ba(ptr noundef nonnull %i.a) #13 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %KINFreeVectors.exit
  tail call void @KINFreeAA(ptr noundef nonnull %i.a) #13
  tail call void @KINFreeOrth(ptr noundef nonnull %i.a) #13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.bc, align 8, !tbaa !139
  %i.bd = load ptr, ptr %0, align 8, !tbaa !137
  tail call void @free(ptr noundef %i.bd) #13
  store ptr null, ptr %0, align 8, !tbaa !137
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  ret void
}

declare void @KINFreeAA(ptr noundef) local_unnamed_addr #5

declare void @KINFreeOrth(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @KINPrintInfo(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ...) local_unnamed_addr #0 {
bb.a:
  %5 = alloca [1 x %struct.__va_list_tag], align 16 ; 9 uses
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca [40 x i8], align 16               ; 4 uses
  %i.c = alloca [30 x i8], align 16               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.va_start.p0(ptr nonnull %5)
  %i.d = icmp eq i32 %1, 1
  br i1 %i.d, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %5, align 16               ; 3 uses
  %i.f = icmp ult i32 %i.e, 41
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = load ptr, ptr %i.g, align 16
  %i.i = zext nneg i32 %i.e to i64
  %i.j = getelementptr i8, ptr %i.h, i64 %i.i
  %i.k = add nuw nsw i32 %i.e, 8
  store i32 %i.k, ptr %5, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.l, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = phi ptr [ %i.j, %bb.c ], [ %i.m, %bb.d ]
  %i.p = load i32, ptr %i.o, align 4, !tbaa !140  ; 2 uses
  switch i32 %i.p, label %bb.q [
    i32 0, label %bb.f
    i32 -13, label %bb.g
    i32 -15, label %bb.h
    i32 2, label %bb.i
    i32 -5, label %bb.j
    i32 -8, label %bb.k
    i32 -6, label %bb.l
    i32 -7, label %bb.m
    i32 -9, label %bb.n
    i32 -11, label %bb.o
    i32 -12, label %bb.p
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.c, ptr noundef nonnull align 1 dereferenceable(12) @.str.20, i64 12, i1 false)
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.c, ptr noundef nonnull align 1 dereferenceable(17) @.str.21, i64 17, i1 false)
  br label %bb.q

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(22) %i.c, ptr noundef nonnull align 1 dereferenceable(22) @.str.22, i64 22, i1 false)
  br label %bb.q

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %i.c, ptr noundef nonnull align 1 dereferenceable(19) @.str.23, i64 19, i1 false)
  br label %bb.q

bb.j:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(23) %i.c, ptr noundef nonnull align 1 dereferenceable(23) @.str.24, i64 23, i1 false)
  br label %bb.q

bb.k:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(22) %i.c, ptr noundef nonnull align 1 dereferenceable(22) @.str.25, i64 22, i1 false)
  br label %bb.q

bb.l:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.c, ptr noundef nonnull align 1 dereferenceable(20) @.str.26, i64 20, i1 false)
  br label %bb.q

bb.m:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(23) %i.c, ptr noundef nonnull align 1 dereferenceable(23) @.str.27, i64 23, i1 false)
  br label %bb.q

bb.n:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) @.str.28, i64 24, i1 false)
  br label %bb.q

bb.o:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(23) %i.c, ptr noundef nonnull align 1 dereferenceable(23) @.str.29, i64 23, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %i.c, ptr noundef nonnull align 1 dereferenceable(25) @.str.30, i64 25, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.q = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %4, i32 noundef %i.p) #13 ; 0 uses
  %i.r = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.31, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #13 ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  %i.s = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef %4, ptr noundef nonnull %5) #13 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.t = load ptr, ptr %0, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34
  %i.w = call i32 (ptr, i32, ptr, ptr, ptr, ...) @SUNLogger_QueueMsg(ptr noundef %i.v, i32 noundef 3, ptr noundef %3, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.a) #13 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #8

declare i32 @SUNLogger_QueueMsg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

declare void @SUNGlobalFallbackErrHandler(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #5

declare i32 @SUNContext_GetLastError(ptr noundef) local_unnamed_addr #5

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #5

declare double @N_VMin(ptr noundef) local_unnamed_addr #5

declare i32 @N_VConstrMask(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare double @N_VWL2Norm(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc double @KINScFNorm(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  tail call void @N_VProd(ptr noundef %2, ptr noundef %1, ptr noundef %i.b) #13
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.d = tail call double @N_VMaxNorm(ptr noundef %i.c) #13
  ret double %i.d
}

declare void @N_VProd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare double @N_VMaxNorm(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -996, 1) i32 @KINConstraint(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.b, double noundef 1.000000e+00, ptr noundef %i.d, ptr noundef %i.f) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = tail call i32 @N_VConstrMask(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.k) #13
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !67
  tail call void @N_VAbs(ptr noundef %i.m, ptr noundef %i.n) #13
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !67   ; 2 uses
  tail call void @N_VProd(ptr noundef %i.o, ptr noundef %i.p, ptr noundef %i.p) #13
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !68
  tail call void @N_VAbs(ptr noundef %i.q, ptr noundef %i.r) #13
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.u = tail call double @N_VMinQuotient(ptr noundef %i.s, ptr noundef %i.t) #13
  %i.v = fmul double %i.u, 9.000000e-01
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %i.v, ptr %i.w, align 8, !tbaa !127
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ -996, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VAbs(ptr noundef, ptr noundef) local_unnamed_addr #5

declare double @N_VMinQuotient(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

declare void @N_VInv(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VDiv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -19, 1) i32 @AndersonAcc(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef range(i64 -9223372036854775808, 9223372036854775807) %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !141  ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !142  ; 10 uses
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %1, double noundef -1.000000e+00, ptr noundef %4, ptr noundef %2) #13
  %i.f = icmp sgt i64 %5, 0
  br i1 %i.f, label %bb.b, label %bb.e

end_hunk_1
begin_hunk_2_@AndersonAccQRDelete:bb.a
  %wide.trip.count203 = zext nneg i32 %3 to i64
  br label %.lr.ph163

.lr.ph163:                                        ; preds = %.lr.ph163.preheader, %.lr.ph163
  %i.ec = phi ptr [ %i.dz, %.lr.ph163.preheader ], [ %i.ek, %.lr.ph163 ]
  %indvars.iv199 = phi i64 [ 2, %.lr.ph163.preheader ], [ %indvars.iv.next200, %.lr.ph163 ] ; 2 uses
  %i.ed = add nsw i64 %indvars.iv199, -1          ; 4 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !145
  %i.eg = mul nsw i64 %i.ed, %i.eb                ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.eg
  %i.ei = trunc nuw nsw i64 %i.ed to i32
  %i.ej = tail call i32 @N_VDotProdMulti(i32 noundef %i.ei, ptr noundef %i.ef, ptr noundef %1, ptr noundef %i.eh) #13 ; 0 uses
  %i.ek = load ptr, ptr %i.dy, align 8, !tbaa !184 ; 2 uses
  %i.el = getelementptr [8 x i8], ptr %i.ek, i64 %i.eg
  %i.em = getelementptr [8 x i8], ptr %i.el, i64 %i.ed
  store double 1.000000e+00, ptr %i.em, align 8, !tbaa !28
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next200, %wide.trip.count203
  br i1 %exitcond204.not, label %.loopexit, label %.lr.ph163

.loopexit.loopexit4.unr-lcssa:                    ; preds = %bb.f
  %lcmp.mod6.not = icmp eq i64 %xtraiter5, 0
  br i1 %lcmp.mod6.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit4.unr-lcssa, %.lr.ph160
  %indvars.iv193.epil.init = phi i64 [ 1, %.lr.ph160 ], [ %indvars.iv.next194.3, %.loopexit.loopexit4.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter5, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv193.epil = phi i64 [ %indvars.iv193.epil.init, %.epil.preheader ], [ %indvars.iv.next194.epil, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.en = trunc i64 %indvars.iv193.epil to i32
  %i.eo = add i32 %i.en, -1
  %i.ep = mul i32 %i.eo, %i.db
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.eq
  store double 1.000000e+00, ptr %i.er, align 8, !tbaa !28
  %indvars.iv.next194.epil = add nuw nsw i64 %indvars.iv193.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter5
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.h, !llvm.loop !185

.loopexit:                                        ; preds = %.loopexit.loopexit4.unr-lcssa, %bb.h, %.lr.ph163, %bb.d, %bb.g, %._crit_edge154.split
  ret void
}

declare double @N_VDotProd(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @N_VDotProdMulti(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @N_VLinearCombination(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @N_VDotProdMultiLocal(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @N_VDotProdMultiAllReduce(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"KINMemRec", !10, i64 0, !11, i64 8, !12, i64 16, !11, i64 24, !11, i64 32, !12, i64 40, !12, i64 48, !5, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !5, i64 200, !12, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !14, i64 344, !14, i64 352, !5, i64 360, !5, i64 364, !12, i64 368, !14, i64 376, !14, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !12, i64 416, !17, i64 424, !17, i64 432, !17, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !11, i64 480, !11, i64 488, !5, i64 496, !13, i64 504, !11, i64 512, !18, i64 520, !5, i64 528, !5, i64 532, !17, i64 536, !15, i64 544, !13, i64 552, !13, i64 560, !13, i64 568, !13, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !5, i64 616, !11, i64 624, !12, i64 632, !12, i64 640, !12, i64 648, !12, i64 656, !12, i64 664, !5, i64 672, !12, i64 680, !12, i64 688, !12, i64 696, !5, i64 704}
!10 = !{!"p1 _ZTS11SUNContext_", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTS17_generic_N_Vector", !11, i64 0}
!15 = !{!"p2 _ZTS17_generic_N_Vector", !16, i64 0}
!16 = !{!"any p2 pointer", !11, i64 0}
!17 = !{!"p1 double", !11, i64 0}
!18 = !{!"p1 _ZTS10_SUNQRData", !11, i64 0}
!19 = !{!9, !12, i64 16}
!20 = !{!9, !12, i64 368}
!21 = !{!9, !12, i64 416}
!22 = !{!9, !13, i64 64}
!23 = !{!9, !13, i64 72}
!24 = !{!9, !13, i64 80}
!25 = !{!9, !13, i64 88}
!26 = !{!9, !12, i64 208}
!27 = !{!9, !12, i64 144}
!28 = !{!12, !12, i64 0}
!29 = !{!9, !5, i64 96}
!30 = !{!9, !12, i64 192}
!31 = !{!9, !5, i64 672}
!32 = !{!9, !13, i64 568}
!33 = !{!9, !13, i64 576}
!34 = !{!35, !37, i64 24}
!35 = !{!"SUNContext_", !11, i64 0, !36, i64 8, !5, i64 16, !37, i64 24, !5, i64 32, !5, i64 36, !38, i64 40, !5, i64 48}
!36 = !{!"p1 _ZTS12SUNProfiler_", !11, i64 0}
!37 = !{!"p1 _ZTS10SUNLogger_", !11, i64 0}
!38 = !{!"p1 _ZTS14SUNErrHandler_", !11, i64 0}
!39 = !{!35, !5, i64 36}
!40 = !{!38, !38, i64 0}
!41 = !{!42, !11, i64 8}
!42 = !{!"SUNErrHandler_", !38, i64 0, !11, i64 8, !11, i64 16}
!43 = !{!42, !11, i64 16}
!44 = distinct !{null}
!45 = !{!46, !47, i64 8}
!46 = !{!"_generic_N_Vector", !11, i64 0, !47, i64 8, !10, i64 16}
!47 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !11, i64 0}
!48 = !{!49, !11, i64 8}
!49 = !{!"_generic_N_Vector_Ops", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440}
!50 = !{!49, !11, i64 24}
!51 = !{!49, !11, i64 88}
!52 = !{!49, !11, i64 104}
!53 = !{!49, !11, i64 112}
!54 = !{!49, !11, i64 120}
!55 = !{!49, !11, i64 128}
!56 = !{!49, !11, i64 136}
!57 = !{!49, !11, i64 160}
!58 = !{!49, !11, i64 184}
!59 = !{!49, !11, i64 192}
!60 = !{!49, !11, i64 32}
!61 = !{!13, !13, i64 0}
!62 = !{!9, !13, i64 552}
!63 = !{!9, !13, i64 560}
!64 = !{!9, !14, i64 280}
!65 = !{!9, !14, i64 288}
!66 = !{!9, !14, i64 320}
!67 = !{!9, !14, i64 336}
!68 = !{!9, !14, i64 344}
!69 = !{!9, !11, i64 24}
!70 = !{!9, !11, i64 624}
!71 = !{!9, !5, i64 704}
!72 = !{!9, !14, i64 272}
!73 = !{!9, !14, i64 304}
!74 = !{!9, !14, i64 312}
!75 = !{!9, !5, i64 56}
!76 = !{!9, !13, i64 448}
!77 = !{!9, !5, i64 104}
!78 = !{!9, !13, i64 216}
!79 = !{!9, !11, i64 32}
!80 = distinct !{null}
!81 = !{!9, !13, i64 224}
!82 = !{!9, !13, i64 464}
!83 = !{!9, !5, i64 364}
!84 = !{!9, !11, i64 480}
!85 = !{!9, !17, i64 432}
!86 = !{!9, !17, i64 424}
!87 = !{!9, !5, i64 528}
!88 = !{!9, !12, i64 632}
!89 = !{!9, !12, i64 40}
!90 = !{!9, !5, i64 360}
!91 = !{!9, !14, i64 328}
!92 = !{!49, !11, i64 224}
!93 = !{!49, !11, i64 232}
!94 = !{!9, !12, i64 136}
!95 = !{!9, !12, i64 128}
!96 = !{!9, !5, i64 616}
!97 = !{!9, !5, i64 112}
!98 = !{!9, !12, i64 176}
!99 = !{!9, !5, i64 116}
!100 = distinct !{null}
!101 = !{!9, !11, i64 584}
!102 = !{!9, !12, i64 640}
!103 = !{!9, !12, i64 664}
!104 = !{!9, !13, i64 264}
!105 = !{!9, !5, i64 200}
!106 = !{!9, !5, i64 100}
!107 = !{!9, !12, i64 680}
!108 = !{!9, !14, i64 296}
!109 = !{!9, !12, i64 168}
!110 = !{!9, !13, i64 232}
!111 = !{!9, !5, i64 124}
!112 = !{!9, !5, i64 108}
!113 = !{!9, !11, i64 592}
!114 = distinct !{null, null}
!115 = !{!9, !13, i64 240}
!116 = !{!9, !11, i64 600}
!117 = distinct !{!117, !118}
!118 = !{!"llvm.loop.peeled.count", i32 1}
!119 = distinct !{null}
!120 = !{!9, !12, i64 648}
!121 = !{!9, !12, i64 656}
!122 = !{!9, !12, i64 184}
!123 = !{!9, !5, i64 120}
!124 = distinct !{null}
!125 = distinct !{!125, !118}
!126 = !{!9, !12, i64 152}
!127 = !{!9, !12, i64 160}
!128 = !{!9, !12, i64 48}
!129 = distinct !{null}
!130 = distinct !{!130, !118}
!131 = distinct !{null}
!132 = distinct !{!132, !118}
!133 = !{!9, !13, i64 248}
!134 = !{!9, !13, i64 256}
!135 = !{!9, !12, i64 696}
!136 = !{!9, !12, i64 688}
!137 = !{!11, !11, i64 0}
!138 = !{!9, !11, i64 608}
!139 = !{!9, !11, i64 8}
!140 = !{!5, !5, i64 0}
!141 = !{!9, !17, i64 536}
!142 = !{!9, !15, i64 544}
!143 = !{!9, !13, i64 472}
!144 = !{!9, !15, i64 400}
!145 = !{!14, !14, i64 0}
!146 = !{!9, !15, i64 392}
!147 = !{!148}
!148 = distinct !{!148, !149}
!149 = distinct !{!149, !"LVerDomain"}
!150 = !{!151}
!151 = distinct !{!151, !149}
!152 = distinct !{!152, !153, !154}
!153 = !{!"llvm.loop.isvectorized", i32 1}
!154 = !{!"llvm.loop.unroll.runtime.disable"}
!155 = !{!9, !15, i64 408}
!156 = distinct !{!156, !153}
!157 = !{!9, !14, i64 384}
!158 = !{!9, !14, i64 376}
!159 = !{!9, !11, i64 512}
!160 = !{!9, !18, i64 520}
!161 = !{!9, !11, i64 488}
!162 = !{!163}
!163 = distinct !{!163, !164}
!164 = distinct !{!164, !"LVerDomain"}
!165 = !{!166}
!166 = distinct !{!166, !164}
!167 = distinct !{!167, !153, !154}
!168 = distinct !{!168, !153}
!169 = !{!170}
!170 = distinct !{!170, !171}
!171 = distinct !{!171, !"LVerDomain"}
!172 = !{!173}
!173 = distinct !{!173, !171}
!174 = !{!175}
!175 = distinct !{!175, !171}
!176 = !{!177}
!177 = distinct !{!177, !171}
!178 = distinct !{!178, !153, !154}
!179 = distinct !{!179, !153}
!180 = distinct !{!180, !153, !154}
!181 = !{!9, !5, i64 496}
!182 = distinct !{!182, !154, !153}
!183 = !{!9, !5, i64 532}
!184 = !{!9, !17, i64 440}
!185 = distinct !{!185, !186}
!186 = !{!"llvm.loop.unroll.disable"}
end_hunk_2
