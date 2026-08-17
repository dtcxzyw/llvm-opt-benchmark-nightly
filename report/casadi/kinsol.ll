inline.NumInlined: 17
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@KINSol:bb.a
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bn = load i64, ptr %i.aj, align 8, !tbaa !25
  %.not.i = icmp slt i64 %i.as, %i.bn             ; 2 uses
  %i.bo = load double, ptr %i.ac, align 8, !tbaa !32
  %i.bp = fcmp ugt double %i.bh, %i.bo            ; 2 uses
  %i.bq = select i1 %i.bp, i1 %.not.i, i1 false
  br i1 %i.bq, label %bb.t, label %.thread.i

.thread.i:                                        ; preds = %bb.s
  %spec.select.le.i = select i1 %.not.i, i32 -999, i32 -6
  %.2.le.i = select i1 %i.bp, i32 %spec.select.le.i, i32 0
  %i.br = load ptr, ptr %i.ak, align 8, !tbaa !21
  %i.bs = tail call i32 @fflush(ptr noundef %i.br) ; 0 uses
  br label %.loopexit.i

bb.t:                                             ; preds = %bb.s
  %i.bt = load ptr, ptr %i.ah, align 8, !tbaa !61
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !78
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bt, ptr noundef %i.bu) #12
  %i.bv = load ptr, ptr %i.ak, align 8, !tbaa !21
  %i.bw = tail call i32 @fflush(ptr noundef %i.bv) ; 0 uses
  %i.bx = add nuw nsw i64 %i.as, 1                ; 2 uses
  %i.by = load ptr, ptr %i.ad, align 8, !tbaa !76
  %i.bz = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.ca = load ptr, ptr %i.ae, align 8, !tbaa !62
  %i.cb = load ptr, ptr %i.af, align 8, !tbaa !84
  %i.cc = tail call i32 %i.by(ptr noundef %i.bz, ptr noundef %i.ca, ptr noundef %i.cb) #12, !inline_history !85
  %i.cd = load i64, ptr %i.v, align 8, !tbaa !86
  %i.ce = add nsw i64 %i.cd, 1
  store i64 %i.ce, ptr %i.v, align 8, !tbaa !86
  %i.cf = icmp slt i32 %i.cc, 0
  br i1 %i.cf, label %.loopexit.i, label %.lr.ph

.loopexit.i:                                      ; preds = %bb.t, %bb.l, %.thread.i
  %i.cg = phi i64 [ %i.as, %.thread.i ], [ 1, %bb.l ], [ %i.bx, %bb.t ]
  %.3.i = phi i32 [ %.2.le.i, %.thread.i ], [ -13, %bb.l ], [ -13, %bb.t ] ; 3 uses
  store i64 %i.cg, ptr %i.u, align 8, !tbaa !58
  %i.ch = load i32, ptr %i.m, align 4, !tbaa !83
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %bb.u, label %KINFP.exit

bb.u:                                             ; preds = %.loopexit.i
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINPrintInfo(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.15, i32 noundef %.3.i)
  br label %KINFP.exit

KINFP.exit:                                       ; preds = %.loopexit.i, %bb.u
  switch i32 %.3.i, label %KINPicardAA.exit [
    i32 -13, label %bb.v
    i32 -6, label %bb.w
  ]

bb.v:                                             ; preds = %KINFP.exit
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.12)
  br label %KINPicardAA.exit

bb.w:                                             ; preds = %KINFP.exit
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.13)
  br label %KINPicardAA.exit

bb.x:                                             ; preds = %bb.e
  br i1 %i.j, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.9)
  br label %KINPicardAA.exit

bb.z:                                             ; preds = %bb.x
  %switch.i = icmp ult i32 %2, 4
  br i1 %switch.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44)
  br label %KINPicardAA.exit

bb.ab:                                            ; preds = %bb.z
  %i.cj = icmp eq ptr %3, null
  br i1 %i.cj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.45)
  br label %KINPicardAA.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ck = tail call double @N_VMin(ptr noundef nonnull %3) #12
  %i.cl = fcmp ugt double %i.ck, 0.000000e+00
  br i1 %i.cl, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.46)
  br label %KINPicardAA.exit

bb.af:                                            ; preds = %bb.ad
  %i.cm = load ptr, ptr %i.g, align 8, !tbaa !80  ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.47)
  br label %KINPicardAA.exit

bb.ah:                                            ; preds = %bb.af
  %i.co = tail call double @N_VMin(ptr noundef nonnull %i.cm) #12
  %i.cp = fcmp ugt double %i.co, 0.000000e+00
  br i1 %i.cp, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.48)
  br label %KINPicardAA.exit

bb.aj:                                            ; preds = %bb.ah
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !88 ; 3 uses
  %.not106.i = icmp eq ptr %i.cr, null
  br i1 %.not106.i, label %.thread.i151, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cs = load i32, ptr %i.h, align 8, !tbaa !81
  %i.ct = and i32 %i.cs, -2
  %switch114.i = icmp eq i32 %i.ct, 2
  br i1 %switch114.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.10)
  br label %KINPicardAA.exit

.thread.i151:                                     ; preds = %bb.aj
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.cu, align 4, !tbaa !82
  br label %bb.ar

bb.am:                                            ; preds = %bb.ak
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %i.cv, align 4, !tbaa !82
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !42 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 184
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !89
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 192
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !90
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.am
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.6)
  br label %KINPicardAA.exit

bb.ap:                                            ; preds = %bb.an
  %i.de = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !64
  %i.dh = tail call i32 @N_VConstrMask(ptr noundef nonnull %i.cr, ptr noundef %i.de, ptr noundef %i.dg) #12
  %.not108.i = icmp eq i32 %i.dh, 0
  br i1 %.not108.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.49)
  br label %KINPicardAA.exit

bb.ar:                                            ; preds = %bb.ap, %.thread.i151
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 19 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !83
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !31
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.do = load double, ptr %i.dn, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINPrintInfo(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.11, double noundef %i.dm, double noundef %i.do)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !91 ; 2 uses
  %i.dr = fcmp oeq double %i.dq, 0.000000e+00
  br i1 %i.dr, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ds = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.dt = load ptr, ptr %i.f, align 8, !tbaa !79
  %i.du = tail call double @N_VWL2Norm(ptr noundef %i.ds, ptr noundef %i.dt) #12
  %i.dv = fmul double %i.du, 1.000000e+03
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.sink.i = phi double [ %i.dv, %bb.au ], [ %i.dq, %bb.at ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 8 uses
  %i.dx = fcmp olt double %.sink.i, 1.000000e+00
  %storemerge.i = select i1 %i.dx, double 1.000000e+00, double %.sink.i
  store double %storemerge.i, ptr %i.dw, align 8, !tbaa !92
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 6 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !93
  %.not109.i = icmp eq i32 %i.dz, 0
  br i1 %.not109.i, label %7, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !33 ; 3 uses
  %i.ec = icmp ne i32 %i.eb, 3
  %i.ed = zext i1 %i.ec to i32
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !94
  %i.ef = icmp eq i32 %i.eb, 1
  br i1 %i.ef, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.eg = tail call double @SUNRsqrt(double noundef 5.000000e+00) #12
  %i.eh = fadd double %i.eg, 1.000000e+00
  %i.ei = fmul double %i.eh, 5.000000e-01
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double %i.ei, ptr %i.ej, align 8, !tbaa !34
  %.pre.i = load i32, ptr %i.ea, align 8, !tbaa !33
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ek = phi i32 [ %.pre.i, %bb.ax ], [ %i.eb, %bb.aw ]
  %.not110.i = icmp eq i32 %i.ek, 3
  br i1 %.not110.i, label %5, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double 5.000000e-01, ptr %i.el, align 8, !tbaa !95
  br label %5

5:                                                ; preds = %bb.az, %bb.ay
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 1, ptr %6, align 8, !tbaa !96
  br label %bb.ba

7:                                                ; preds = %bb.av
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %8, align 4, !tbaa !94
  br label %bb.ba

bb.ba:                                            ; preds = %7, %5
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 16 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 37 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.em, i8 0, i64 48, i1 false)
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !76
  %i.eq = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 35 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !62
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 17 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !84
  %i.ev = tail call i32 %i.ep(ptr noundef %i.eq, ptr noundef %i.es, ptr noundef %i.eu) #12, !inline_history !97 ; 2 uses
  %i.ew = load i64, ptr %i.en, align 8, !tbaa !86
  %i.ex = add nsw i64 %i.ew, 1
  store i64 %i.ex, ptr %i.en, align 8, !tbaa !86
  %i.ey = icmp slt i32 %i.ev, 0
  br i1 %i.ey, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.12)
  br label %KINPicardAA.exit

bb.bc:                                            ; preds = %bb.ba
  %.not111.i = icmp eq i32 %i.ev, 0
  br i1 %.not111.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.50)
  br label %KINPicardAA.exit

bb.be:                                            ; preds = %bb.bc
  %i.ez = load ptr, ptr %i.er, align 8, !tbaa !62
  %i.fa = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.fb = tail call fastcc double @KINScFNorm(ptr noundef nonnull %0, ptr noundef %i.ez, ptr noundef %i.fa) ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !32
  %i.fe = fmul double %i.fd, 1.000000e-02
  %i.ff = fcmp ugt double %i.fb, %i.fe
  br i1 %i.ff, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fg = load ptr, ptr %i.er, align 8, !tbaa !62
  %i.fh = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.fi = tail call double @N_VWL2Norm(ptr noundef %i.fg, ptr noundef %i.fh) #12
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 504
  store double %i.fi, ptr %i.fj, align 8, !tbaa !87
  br label %KINPicardAA.exit

bb.bg:                                            ; preds = %bb.be
  %i.fk = load i32, ptr %i.di, align 4, !tbaa !83
  %i.fl = icmp sgt i32 %i.fk, 1
  br i1 %i.fl, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINPrintInfo(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.51, double noundef %i.fb)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !98 ; 2 uses
  %.not112.i = icmp eq ptr %i.fn, null
  br i1 %.not112.i, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fo = tail call i32 %i.fn(ptr noundef nonnull %0) #12, !inline_history !97
  %.not113.i = icmp eq i32 %i.fo, 0
  br i1 %.not113.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.52)
  br label %KINPicardAA.exit

bb.bl:                                            ; preds = %bb.bj, %bb.bi
  %i.fp = load ptr, ptr %i.er, align 8, !tbaa !62
  %i.fq = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.fr = tail call double @N_VWL2Norm(ptr noundef %i.fp, ptr noundef %i.fq) #12 ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 11 uses
  store double %i.fr, ptr %i.fs, align 8, !tbaa !87
  %i.ft = fmul double %i.fr, 5.000000e-01
  %i.fu = fmul double %i.fr, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 11 uses
  store double %i.fu, ptr %i.fv, align 8, !tbaa !99
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 5 uses
  store double %i.fr, ptr %i.fw, align 8, !tbaa !100
  %i.fx = load i32, ptr %i.di, align 4, !tbaa !83
  %i.fy = icmp sgt i32 %i.fx, 0
  br i1 %i.fy, label %bb.bm, label %KINSolInit.exit

bb.bm:                                            ; preds = %bb.bl
  %i.fz = load i64, ptr %i.em, align 8, !tbaa !101
  %i.ga = load i64, ptr %i.en, align 8, !tbaa !86
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINPrintInfo(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.14, i64 noundef %i.fz, i64 noundef %i.ga, double noundef %i.fr)
  br label %KINSolInit.exit

KINSolInit.exit:                                  ; preds = %bb.bm, %bb.bl
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  store i64 0, ptr %i.gb, align 8, !tbaa !102
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !103
  %.not139 = icmp eq i32 %i.gd, 0
  %.sink = select i1 %.not139, double 2.000000e+00, double 1.000000e+00
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 16 uses
  store double %.sink, ptr %i.ge, align 8, !tbaa !29
  %i.gf = load i32, ptr %i.dy, align 8, !tbaa !93 ; 2 uses
  %.not140 = icmp eq i32 %i.gf, 0
  br i1 %.not140, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %KINSolInit.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !104
  %.not141 = icmp eq i32 %i.gh, 0
  br i1 %.not141, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.gi = load double, ptr %i.fc, align 8, !tbaa !32
  %i.gj = fmul double %i.gi, 1.000000e-02
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %KINSolInit.exit
  %.0124 = phi double [ 0.000000e+00, %bb.bn ], [ %i.gj, %bb.bo ], [ 0.000000e+00, %KINSolInit.exit ] ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !105
  %i.gm = fcmp oeq double %i.gl, 0.000000e+00
  %.sink392 = zext i1 %i.gm to i32
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  store i32 %.sink392, ptr %i.gn, align 8, !tbaa !38
  %i.go = load i32, ptr %i.h, align 8, !tbaa !81
  %i.gp = icmp eq i32 %i.go, 2
  br i1 %i.gp, label %bb.bq, label %.preheader

.preheader:                                       ; preds = %bb.bp
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 9 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 17 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 40 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 38 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 9 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 14 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 10 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 600
  br label %bb.cu

bb.bq:                                            ; preds = %bb.bp
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 6 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !61
  %i.hy = tail call ptr @N_VClone(ptr noundef %i.hx) #12 ; 8 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.hy, ptr %i.hz, align 8, !tbaa !106
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !59
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !40
  %i.ie = add nsw i64 %i.id, %i.ib
  store i64 %i.ie, ptr %i.ic, align 8, !tbaa !40
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !67
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !68
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !64
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.hy) #12
  %i.il = load i32, ptr %i.dy, align 8, !tbaa !93 ; 2 uses
  %.not.i152 = icmp eq i32 %i.il, 0
  br i1 %.not.i152, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.in = load i32, ptr %i.im, align 4, !tbaa !104
  %.not85.i = icmp eq i32 %i.in, 0
  br i1 %.not85.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.io = load double, ptr %i.fc, align 8, !tbaa !32
  %i.ip = fmul double %i.io, 1.000000e-02
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  %.0.i153 = phi double [ 0.000000e+00, %bb.br ], [ %i.ip, %bb.bs ], [ 0.000000e+00, %bb.bq ] ; 2 uses
end_hunk_0
begin_hunk_1_@KINSol:bb.a
bb.gf:                                            ; preds = %bb.ge
  %i.afz = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.aga = load ptr, ptr %i.gz, align 8, !tbaa !63
  %i.agb = load ptr, ptr %i.gy, align 8, !tbaa !61
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.afz, double noundef %i.aer, ptr noundef %i.aga, ptr noundef %i.agb) #12
  %i.agc = load ptr, ptr %i.eo, align 8, !tbaa !76
  %i.agd = load ptr, ptr %i.gy, align 8, !tbaa !61
  %i.age = load ptr, ptr %i.er, align 8, !tbaa !62
  %i.agf = load ptr, ptr %i.et, align 8, !tbaa !84
  %i.agg = tail call i32 %i.agc(ptr noundef %i.agd, ptr noundef %i.age, ptr noundef %i.agf) #12, !inline_history !125
  %i.agh = load i64, ptr %i.en, align 8, !tbaa !86
  %i.agi = add nsw i64 %i.agh, 1
  store i64 %i.agi, ptr %i.en, align 8, !tbaa !86
  %.not357.i = icmp eq i32 %i.agg, 0
  br i1 %.not357.i, label %bb.gg, label %KINLinSolDrv.exit.thread

bb.gg:                                            ; preds = %bb.gf
  %i.agj = load ptr, ptr %i.er, align 8, !tbaa !62
  %i.agk = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.agl = tail call double @N_VWL2Norm(ptr noundef %i.agj, ptr noundef %i.agk) #12 ; 3 uses
  %i.agm = fmul double %i.agl, 5.000000e-01
  %i.agn = fmul double %i.agl, %i.agm
  %i.ago = load i64, ptr %i.hj, align 8, !tbaa !130
  %i.agp = add nsw i64 %i.ago, 1
  store i64 %i.agp, ptr %i.hj, align 8, !tbaa !130
  br label %.thread495.i

.thread495.i:                                     ; preds = %bb.gg, %bb.ge, %bb.fy, %.thread.i177, %.loopexit.thread.i, %.loopexit.i180
  %.4215 = phi double [ %i.agl, %bb.gg ], [ %i.aff, %bb.ge ], [ %.7218, %bb.fy ], [ %.5216, %.thread.i177 ], [ %.10221, %.loopexit.i180 ], [ %i.xq, %.loopexit.thread.i ] ; 2 uses
  %.4210 = phi double [ %i.agn, %bb.gg ], [ %i.afh, %bb.ge ], [ %.7, %bb.fy ], [ %.5, %.thread.i177 ], [ %.10, %.loopexit.i180 ], [ %i.xs, %.loopexit.thread.i ] ; 2 uses
  %.3324.i = phi double [ %i.aer, %bb.gg ], [ %i.aer, %bb.ge ], [ %.2323.i, %bb.fy ], [ 1.000000e+00, %.thread.i177 ], [ %.0321.i, %.loopexit.i180 ], [ 1.000000e+00, %.loopexit.thread.i ] ; 2 uses
  %.4.i = phi i32 [ %i.aes, %bb.gg ], [ %i.aes, %bb.ge ], [ %.2.i, %bb.fy ], [ %.0310.lcssa473481.i, %.thread.i177 ], [ %.0310.i, %.loopexit.i180 ], [ 0, %.loopexit.thread.i ] ; 2 uses
  %i.agq = sext i32 %.4.i to i64
  %i.agr = load i64, ptr %i.hk, align 8, !tbaa !131
  %i.ags = add nsw i64 %i.agr, %i.agq
  store i64 %i.ags, ptr %i.hk, align 8, !tbaa !131
  %i.agt = load i32, ptr %i.di, align 4, !tbaa !83
  %i.agu = icmp sgt i32 %i.agt, 1
  br i1 %i.agu, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %.thread495.i
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINPrintInfo(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.63, i32 noundef %.4.i)
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %.thread495.i
  %i.agv = load <2 x double>, ptr %i.hc, align 8, !tbaa !35
  %i.agw = insertelement <2 x double> poison, double %.3324.i, i64 0
  %i.agx = shufflevector <2 x double> %i.agw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.agy = fmul <2 x double> %i.agx, %i.agv
  %i.agz = shufflevector <2 x double> %i.xn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aha = fmul <2 x double> %i.agz, %i.agy
  store <2 x double> %i.aha, ptr %i.hc, align 8, !tbaa !35
  %i.ahb = extractelement <2 x double> %i.xn, i64 1
  %i.ahc = fmul double %i.ahb, %.3324.i
  %i.ahd = load double, ptr %i.dw, align 8, !tbaa !92
  %i.ahe = fmul double %i.ahd, f0x3FEFAE147AE147AE
  %i.ahf = fcmp ogt double %i.ahc, %i.ahe
  br i1 %i.ahf, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi, %.loopexit441.i, %bb.ex
  %.12223 = phi double [ %.11222, %.loopexit441.i ], [ %.1212, %bb.ex ], [ %.4215, %bb.gj ], [ %.4215, %bb.gi ]
  %.12 = phi double [ %.11, %.loopexit441.i ], [ %.1207, %bb.ex ], [ %.4210, %bb.gj ], [ %.4210, %bb.gi ]
  %.4205 = phi i32 [ 0, %.loopexit441.i ], [ 0, %bb.ex ], [ 1, %bb.gj ], [ 0, %bb.gi ]
  %.0313.i = phi i32 [ -997, %.loopexit441.i ], [ -997, %bb.ex ], [ 0, %bb.gj ], [ 0, %bb.gi ]
  %i.ahg = load i64, ptr %i.hj, align 8, !tbaa !130
  %i.ahh = load i64, ptr %i.hl, align 8, !tbaa !28
  %i.ahi = icmp sgt i64 %i.ahg, %i.ahh
  br i1 %i.ahi, label %KINLinSolDrv.exit.thread, label %KINFullNewton.exit

KINFullNewton.exit:                               ; preds = %bb.ef, %bb.ee, %bb.dr, %bb.cx, %bb.gk
  %.2213 = phi double [ %.1212, %bb.cx ], [ %.12223, %bb.gk ], [ %i.rz, %bb.ef ], [ %i.rz, %bb.ee ], [ %.1212, %bb.dr ] ; 4 uses
  %.2208 = phi double [ %.1207, %bb.cx ], [ %.12, %bb.gk ], [ %i.sb, %bb.ef ], [ %i.sb, %bb.ee ], [ %.1207, %bb.dr ] ; 3 uses
  %.2203 = phi i32 [ %.1202, %bb.cx ], [ %.4205, %bb.gk ], [ 1, %bb.ef ], [ 0, %bb.ee ], [ 0, %bb.dr ] ; 3 uses
  %.2 = phi i32 [ %.1, %bb.cx ], [ 0, %bb.gk ], [ 0, %bb.ef ], [ 0, %bb.ee ], [ 0, %bb.dr ]
  %.0 = phi i32 [ 0, %bb.cx ], [ %.0313.i, %bb.gk ], [ 0, %bb.ef ], [ 0, %bb.ee ], [ -997, %bb.dr ]
  %i.ahj = load i32, ptr %i.h, align 8, !tbaa !81
  %i.ahk = and i32 %i.ahj, -2
  %switch = icmp eq i32 %i.ahk, 2
  br i1 %switch, label %KINStop.exit.thread, label %bb.gl

bb.gl:                                            ; preds = %KINFullNewton.exit
  %i.ahl = load i32, ptr %i.hm, align 4, !tbaa !94
  %.not148 = icmp eq i32 %i.ahl, 0
  br i1 %.not148, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  tail call fastcc void @KINForcingTerm(ptr noundef %0, double noundef %.2213)
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  store double %.2213, ptr %i.fs, align 8, !tbaa !87
  %i.ahm = icmp eq i32 %.0, -997
  br i1 %i.ahm, label %bb.go, label %bb.gr

bb.go:                                            ; preds = %bb.gn
  %i.ahn = load i32, ptr %i.gv, align 8, !tbaa !37
  %.not87.i191 = icmp eq i32 %i.ahn, 0
  br i1 %.not87.i191, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.aho = load i32, ptr %i.gw, align 8, !tbaa !110
  %.not88.i192 = icmp eq i32 %i.aho, 0
  br i1 %.not88.i192, label %bb.hu, label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %i.ahp = load i32, ptr %i.h, align 8, !tbaa !81
  %i.ahq = icmp eq i32 %i.ahp, 0
  %..i = select i1 %i.ahq, i32 2, i32 -5
  br label %KINStop.exit.thread

bb.gr:                                            ; preds = %bb.gn
  %i.ahr = load ptr, ptr %i.er, align 8, !tbaa !62
  %i.ahs = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.aht = load ptr, ptr %i.hh, align 8, !tbaa !64
  tail call void @N_VProd(ptr noundef %i.ahs, ptr noundef %i.ahr, ptr noundef %i.aht) #12
  %i.ahu = load ptr, ptr %i.hh, align 8, !tbaa !64
  %i.ahv = tail call double @N_VMaxNorm(ptr noundef %i.ahu) #12 ; 2 uses
  %i.ahw = load i32, ptr %i.di, align 4, !tbaa !83
  %i.ahx = icmp sgt i32 %i.ahw, 1
  br i1 %i.ahx, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINPrintInfo(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.51, double noundef %i.ahv)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.ahy = load double, ptr %i.fc, align 8, !tbaa !32
  %i.ahz = fcmp ugt double %i.ahv, %i.ahy
  br i1 %i.ahz, label %bb.gu, label %KINStop.exit.thread

bb.gu:                                            ; preds = %bb.gt
  %i.aia = load ptr, ptr %i.gz, align 8, !tbaa !63 ; 2 uses
  %i.aib = load ptr, ptr %i.gy, align 8, !tbaa !61
  %i.aic = load ptr, ptr %i.e, align 8, !tbaa !78
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.aib, double noundef -1.000000e+00, ptr noundef %i.aic, ptr noundef %i.aia) #12
  %i.aid = load ptr, ptr %i.gy, align 8, !tbaa !61
  %i.aie = load ptr, ptr %i.f, align 8, !tbaa !79
  %i.aif = load ptr, ptr %i.hh, align 8, !tbaa !64
  tail call void @N_VInv(ptr noundef %i.aie, ptr noundef %i.aif) #12
  %i.aig = load ptr, ptr %i.hi, align 8, !tbaa !65
  tail call void @N_VAbs(ptr noundef %i.aid, ptr noundef %i.aig) #12
  %i.aih = load ptr, ptr %i.hh, align 8, !tbaa !64 ; 2 uses
  %i.aii = load ptr, ptr %i.hi, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.aih, double noundef 1.000000e+00, ptr noundef %i.aii, ptr noundef %i.aih) #12
  %i.aij = load ptr, ptr %i.hh, align 8, !tbaa !64 ; 2 uses
  tail call void @N_VDiv(ptr noundef %i.aia, ptr noundef %i.aij, ptr noundef %i.aij) #12
  %i.aik = load ptr, ptr %i.hh, align 8, !tbaa !64
  %i.ail = tail call double @N_VMaxNorm(ptr noundef %i.aik) #12 ; 2 uses
  %i.aim = load double, ptr %i.hg, align 8, !tbaa !31
  %i.ain = fcmp ugt double %i.ail, %i.aim
  br i1 %i.ain, label %bb.gy, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.aio = load i32, ptr %i.gv, align 8, !tbaa !37
  %.not85.i184 = icmp eq i32 %i.aio, 0
  br i1 %.not85.i184, label %KINStop.exit.thread, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.aip = load i32, ptr %i.gw, align 8, !tbaa !110
  %.not86.i185 = icmp eq i32 %i.aip, 0
  br i1 %.not86.i185, label %bb.gx, label %KINStop.exit.thread

bb.gx:                                            ; preds = %bb.gw
  store double 2.000000e+00, ptr %i.ge, align 8, !tbaa !29
  br label %KINStop.exit.thread

bb.gy:                                            ; preds = %bb.gu
  %i.aiq = load i64, ptr %i.em, align 8, !tbaa !101 ; 3 uses
  %i.air = load i64, ptr %i.hq, align 8, !tbaa !25
  %.not.i186 = icmp slt i64 %i.aiq, %i.air
  br i1 %.not.i186, label %bb.gz, label %KINStop.exit.thread

bb.gz:                                            ; preds = %bb.gy
  %.not75.i = icmp eq i32 %.2203, 0
  br i1 %.not75.i, label %.thread.i190, label %bb.ha

.thread.i190:                                     ; preds = %bb.gz
  store i64 0, ptr %i.gb, align 8, !tbaa !102
  br label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.ais = load i64, ptr %i.gb, align 8, !tbaa !102
  %i.ait = add nsw i64 %i.ais, 1                  ; 2 uses
  store i64 %i.ait, ptr %i.gb, align 8, !tbaa !102
  %i.aiu = icmp eq i64 %i.ait, 5
  br i1 %i.aiu, label %KINStop.exit.thread, label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %.thread.i190
  %i.aiv = load i32, ptr %i.dy, align 8, !tbaa !93
  %.not76.i = icmp eq i32 %i.aiv, 0
  br i1 %.not76.i, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  store double %i.ail, ptr %i.ge, align 8, !tbaa !29
  br label %KINStop.exit.thread

bb.hd:                                            ; preds = %bb.hb
  %i.aiw = load i32, ptr %i.hr, align 8, !tbaa !96
  %.not77.i = icmp eq i32 %i.aiw, 0
  br i1 %.not77.i, label %bb.he, label %KINStop.exit.thread

bb.he:                                            ; preds = %bb.hd
  %i.aix = load i64, ptr %i.gx, align 8, !tbaa !113
  %i.aiy = sub nsw i64 %i.aiq, %i.aix
  %i.aiz = load i64, ptr %i.hs, align 8, !tbaa !27
  %.not78.i = icmp slt i64 %i.aiy, %i.aiz
  br i1 %.not78.i, label %bb.hq, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  store i64 %i.aiq, ptr %i.gx, align 8, !tbaa !113
  %i.aja = load i32, ptr %i.gn, align 8, !tbaa !38
  %.not82.i = icmp eq i32 %i.aja, 0
  br i1 %.not82.i, label %._crit_edge.i187, label %bb.hg

._crit_edge.i187:                                 ; preds = %bb.hf
  %.pre.i189 = load double, ptr %i.gk, align 8, !tbaa !105
  br label %bb.hl

bb.hg:                                            ; preds = %bb.hf
  %i.ajb = load double, ptr %i.fs, align 8, !tbaa !87
  %i.ajc = load double, ptr %i.fc, align 8, !tbaa !32
  %i.ajd = fdiv double %i.ajb, %i.ajc
  %i.aje = fadd double %i.ajd, -1.000000e+00      ; 2 uses
  %i.ajf = fcmp olt double %i.aje, 0.000000e+00
  %i.ajg = select i1 %i.ajf, double 0.000000e+00, double %i.aje ; 3 uses
  %i.ajh = fcmp ogt double %i.ajg, 1.200000e+01
  br i1 %i.ajh, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.aji = load double, ptr %i.hu, align 8, !tbaa !39
  br label %bb.hk

bb.hi:                                            ; preds = %bb.hg
  %i.ajj = load double, ptr %i.ht, align 8, !tbaa !132
  %i.ajk = tail call double @SUNRexp(double noundef %i.ajg) #12
  %i.ajl = fmul double %i.ajj, %i.ajk
  %i.ajm = load double, ptr %i.hu, align 8, !tbaa !39 ; 2 uses
  %i.ajn = fcmp olt double %i.ajl, %i.ajm
  br i1 %i.ajn, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.ajo = load double, ptr %i.ht, align 8, !tbaa !132
  %i.ajp = tail call double @SUNRexp(double noundef %i.ajg) #12
  %i.ajq = fmul double %i.ajo, %i.ajp
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi, %bb.hh
  %i.ajr = phi double [ %i.aji, %bb.hh ], [ %i.ajq, %bb.hj ], [ %i.ajm, %bb.hi ] ; 2 uses
  store double %i.ajr, ptr %i.gk, align 8, !tbaa !105
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %._crit_edge.i187
  %i.ajs = phi double [ %.pre.i189, %._crit_edge.i187 ], [ %i.ajr, %bb.hk ]
  %i.ajt = load double, ptr %i.fs, align 8, !tbaa !87 ; 2 uses
  %i.aju = load double, ptr %i.fw, align 8, !tbaa !100
  %i.ajv = fmul double %i.ajs, %i.aju
  %i.ajw = fcmp ogt double %i.ajt, %i.ajv
  br i1 %i.ajw, label %bb.hm, label %bb.hp

bb.hm:                                            ; preds = %bb.hl
  %i.ajx = load i32, ptr %i.gv, align 8, !tbaa !37
  %.not83.i = icmp eq i32 %i.ajx, 0
  br i1 %.not83.i, label %KINStop.exit.thread, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.ajy = load i32, ptr %i.gw, align 8, !tbaa !110
  %.not84.i = icmp eq i32 %i.ajy, 0
  br i1 %.not84.i, label %bb.ho, label %KINStop.exit.thread

bb.ho:                                            ; preds = %bb.hn
  store double 2.000000e+00, ptr %i.ge, align 8, !tbaa !29
  br label %KINStop.exit.thread

bb.hp:                                            ; preds = %bb.hl
  store double %i.ajt, ptr %i.fw, align 8, !tbaa !100
  store double 1.000000e+00, ptr %i.ge, align 8, !tbaa !29
  br label %KINStop.exit.thread

bb.hq:                                            ; preds = %bb.he
  %i.ajz = load i32, ptr %i.gq, align 4, !tbaa !118
  %.not79.i = icmp eq i32 %i.ajz, 0
  %i.aka = load i32, ptr %i.gt, align 8, !tbaa !109
  %.not80.i = icmp eq i32 %i.aka, 0               ; 2 uses
  br i1 %.not79.i, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  br i1 %.not80.i, label %.thread99.i, label %.thread101.i

.thread101.i:                                     ; preds = %bb.hr
  %i.akb = load double, ptr %i.fs, align 8, !tbaa !87
  store double %i.akb, ptr %i.fw, align 8, !tbaa !100
  br label %bb.ht

bb.hs:                                            ; preds = %bb.hq
  %i.akc = load double, ptr %i.fs, align 8, !tbaa !87
  store double %i.akc, ptr %i.fw, align 8, !tbaa !100
  br i1 %.not80.i, label %.thread99.i, label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %.thread101.i
  store i32 0, ptr %i.gt, align 8, !tbaa !109
  br label %.thread99.i

.thread99.i:                                      ; preds = %bb.ht, %bb.hs, %bb.hr
  store double 1.000000e+00, ptr %i.ge, align 8, !tbaa !29
  br label %KINStop.exit.thread

bb.hu:                                            ; preds = %bb.gp
  store double 2.000000e+00, ptr %i.ge, align 8, !tbaa !29
  store i32 1, ptr %i.gq, align 4, !tbaa !118
  br label %bb.cx

KINStop.exit.thread:                              ; preds = %KINFullNewton.exit, %bb.hc, %.thread99.i, %bb.hn, %bb.hm, %bb.hp, %bb.hd, %bb.gw, %bb.gy, %bb.gv, %bb.gx, %bb.gt, %bb.ha, %bb.ho, %bb.gq
  %.3 = phi i32 [ %..i, %bb.gq ], [ -999, %bb.hc ], [ -999, %.thread99.i ], [ -999, %bb.hn ], [ -999, %bb.hm ], [ -999, %bb.hp ], [ -999, %bb.hd ], [ 2, %bb.gw ], [ -6, %bb.gy ], [ 2, %bb.gv ], [ -999, %bb.gx ], [ 0, %bb.gt ], [ -7, %bb.ha ], [ -999, %bb.ho ], [ %.2, %KINFullNewton.exit ] ; 2 uses
  %i.akd = load ptr, ptr %i.gy, align 8, !tbaa !61
  %i.ake = load ptr, ptr %i.e, align 8, !tbaa !78
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.akd, ptr noundef %i.ake) #12
  store double %.2208, ptr %i.fv, align 8, !tbaa !99
  %i.akf = load i32, ptr %i.di, align 4, !tbaa !83
  %i.akg = icmp sgt i32 %i.akf, 0
  br i1 %i.akg, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %KINStop.exit.thread
  %i.akh = load i64, ptr %i.em, align 8, !tbaa !101
  %i.aki = load i64, ptr %i.en, align 8, !tbaa !86
  %i.akj = load double, ptr %i.fs, align 8, !tbaa !87
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINPrintInfo(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.14, i64 noundef %i.akh, i64 noundef %i.aki, double noundef %i.akj)
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %KINStop.exit.thread
  %.not149 = icmp eq i32 %.3, -999
  br i1 %.not149, label %bb.hx, label %KINLinSolDrv.exit.thread

bb.hx:                                            ; preds = %bb.hw
  %i.akk = load ptr, ptr %i.hv, align 8, !tbaa !21
  %i.akl = tail call i32 @fflush(ptr noundef %i.akk) ; 0 uses
  %.pre = load i32, ptr %i.dy, align 8, !tbaa !93
  br label %bb.cu

KINLinSolDrv.exit.thread.sink.split:              ; preds = %bb.fh, %bb.eb
  %.lcssa505.sink = phi double [ %i.rj, %bb.eb ], [ %i.xa, %bb.fh ]
  %i.akm = load ptr, ptr %i.gz, align 8, !tbaa !63 ; 2 uses
  tail call void @N_VScale(double noundef 5.000000e-01, ptr noundef %i.akm, ptr noundef %i.akm) #12
  %i.akn = fmul double %.lcssa505.sink, 5.000000e-01
  store double %i.akn, ptr %i.hd, align 8, !tbaa !121
  br label %KINLinSolDrv.exit.thread

KINLinSolDrv.exit.thread:                         ; preds = %bb.hw, %bb.fd, %bb.fb, %bb.ez, %bb.fl, %bb.gf, %bb.ff, %bb.dz, %bb.dx, %bb.dv, %bb.dt, %bb.gk, %bb.ei, %bb.ek, %bb.el, %bb.em, %bb.da, %bb.dc, %bb.dd, %bb.de, %bb.ep, %bb.eq, %.peel.next, %bb.eo, %bb.fs, %.preheader.i, %bb.dh, %bb.di, %.peel.next387, %bb.dg, %.critedge2.i, %KINLinSolDrv.exit.thread.sink.split, %bb.fh, %bb.eb
  %.4 = phi i32 [ -13, %bb.eb ], [ -13, %.preheader.i ], [ -15, %KINLinSolDrv.exit.thread.sink.split ], [ -13, %bb.fs ], [ -13, %.critedge2.i ], [ -9, %bb.dh ], [ -13, %bb.fh ], [ -9, %bb.ep ], [ -13, %bb.dv ], [ -9, %bb.di ], [ -11, %.peel.next387 ], [ -12, %bb.dg ], [ -9, %bb.eq ], [ -11, %.peel.next ], [ -12, %bb.eo ], [ -13, %bb.ff ], [ -13, %bb.fb ], [ -13, %bb.fd ], [ -13, %bb.ez ], [ -13, %bb.dt ], [ -12, %bb.ek ], [ -9, %bb.el ], [ -9, %bb.em ], [ -13, %bb.fl ], [ -13, %bb.dx ], [ -13, %bb.dz ], [ -12, %bb.dc ], [ -13, %bb.gf ], [ -11, %bb.ei ], [ -8, %bb.gk ], [ -11, %bb.da ], [ -9, %bb.dd ], [ -9, %bb.de ], [ %.3, %bb.hw ] ; 3 uses
  %i.ako = load i32, ptr %i.di, align 4, !tbaa !83
  %i.akp = icmp sgt i32 %i.ako, 0
  br i1 %i.akp, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %KINLinSolDrv.exit.thread
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINPrintInfo(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.15, i32 noundef %.4)
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %KINLinSolDrv.exit.thread
  switch i32 %.4, label %KINPicardAA.exit [
    i32 -13, label %bb.ia
    i32 -15, label %bb.ib
    i32 -11, label %bb.ic
    i32 -12, label %bb.id
    i32 -9, label %bb.ie
    i32 -5, label %bb.if
    i32 -8, label %bb.ig
    i32 -6, label %bb.ih
    i32 -7, label %bb.ii
  ]

bb.ia:                                            ; preds = %bb.hz
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.12)
  br label %KINPicardAA.exit

bb.ib:                                            ; preds = %bb.hz
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.16)
  br label %KINPicardAA.exit

bb.ic:                                            ; preds = %bb.hz
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.17)
  br label %KINPicardAA.exit

bb.id:                                            ; preds = %bb.hz
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.18)
  br label %KINPicardAA.exit

bb.ie:                                            ; preds = %bb.hz
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.19)
  br label %KINPicardAA.exit

bb.if:                                            ; preds = %bb.hz
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.20)
  br label %KINPicardAA.exit

bb.ig:                                            ; preds = %bb.hz
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.21)
  br label %KINPicardAA.exit

bb.ih:                                            ; preds = %bb.hz
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.13)
  br label %KINPicardAA.exit

bb.ii:                                            ; preds = %bb.hz
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.22)
  br label %KINPicardAA.exit

KINPicardAA.exit:                                 ; preds = %bb.aq, %bb.ao, %bb.bk, %bb.bf, %bb.bd, %bb.bb, %bb.al, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.ct, %KINPicardFcnEval.exit.thread.i, %bb.hz, %bb.ia, %bb.ib, %bb.ic, %bb.id, %bb.ie, %bb.if, %bb.ig, %bb.ih, %bb.ii, %KINFP.exit, %bb.v, %bb.w, %bb.i, %bb.g, %bb.d, %bb.b
  %.0123 = phi i32 [ -1, %bb.b ], [ -3, %bb.d ], [ -2, %bb.g ], [ -2, %bb.i ], [ %.3.i154, %bb.ct ], [ %.3.i, %KINFP.exit ], [ %.4, %bb.hz ], [ -6, %bb.w ], [ -13, %bb.v ], [ -7, %bb.ii ], [ -6, %bb.ih ], [ -8, %bb.ig ], [ -5, %bb.if ], [ -9, %bb.ie ], [ -12, %bb.id ], [ -11, %bb.ic ], [ -15, %bb.ib ], [ -13, %bb.ia ], [ %.3.i154, %KINPicardFcnEval.exit.thread.i ], [ -2, %bb.aq ], [ -2, %bb.ao ], [ -10, %bb.bk ], [ 1, %bb.bf ], [ -14, %bb.bd ], [ -13, %bb.bb ], [ -2, %bb.al ], [ -2, %bb.ai ], [ -2, %bb.ag ], [ -2, %bb.ae ], [ -2, %bb.ac ], [ -2, %bb.aa ], [ -2, %bb.y ]
  ret i32 %.0123
}

; Function Attrs: nounwind uwtable
define void @KINPrintInfo(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ...) local_unnamed_addr #0 {
bb.a:
  %5 = alloca [1 x %struct.__va_list_tag], align 16 ; 9 uses
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca [40 x i8], align 16               ; 4 uses
  %i.c = alloca [30 x i8], align 16               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.va_start.p0(ptr nonnull %5)
  %i.d = icmp eq i32 %1, 1
  br i1 %i.d, label %bb.b, label %bb.q

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
  %i.p = load i32, ptr %i.o, align 4, !tbaa !133  ; 2 uses
  switch i32 %i.p, label %bb.p [
    i32 0, label %bb.f
    i32 -13, label %bb.g
    i32 2, label %bb.h
    i32 -5, label %bb.i
    i32 -8, label %bb.j
    i32 -6, label %bb.k
    i32 -7, label %bb.l
    i32 -9, label %bb.m
    i32 -11, label %bb.n
    i32 -12, label %bb.o
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.c, ptr noundef nonnull align 1 dereferenceable(12) @.str.23, i64 12, i1 false)
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.c, ptr noundef nonnull align 1 dereferenceable(17) @.str.24, i64 17, i1 false)
  br label %bb.p

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %i.c, ptr noundef nonnull align 1 dereferenceable(19) @.str.25, i64 19, i1 false)
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(23) %i.c, ptr noundef nonnull align 1 dereferenceable(23) @.str.26, i64 23, i1 false)
  br label %bb.p

bb.j:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(22) %i.c, ptr noundef nonnull align 1 dereferenceable(22) @.str.27, i64 22, i1 false)
  br label %bb.p

bb.k:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.c, ptr noundef nonnull align 1 dereferenceable(20) @.str.28, i64 20, i1 false)
  br label %bb.p

bb.l:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(23) %i.c, ptr noundef nonnull align 1 dereferenceable(23) @.str.29, i64 23, i1 false)
  br label %bb.p

bb.m:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) @.str.30, i64 24, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(23) %i.c, ptr noundef nonnull align 1 dereferenceable(23) @.str.31, i64 23, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %i.c, ptr noundef nonnull align 1 dereferenceable(25) @.str.32, i64 25, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.q = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %4, i32 noundef %i.p) #12 ; 0 uses
  %i.r = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.a
  %i.s = call i32 @vsprintf(ptr noundef nonnull %i.a, ptr noundef %4, ptr noundef nonnull %5) #12 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !23
  call void %i.u(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef %i.w) #12
  call void @llvm.va_end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void
}

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @KINForcingTerm(ptr nofree noundef nonnull captures(none) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !87 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.g = load double, ptr %i.f, align 8, !tbaa !126
  %i.h = fmul double %i.g, 2.000000e+00
  %i.i = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.k = load double, ptr %i.j, align 8, !tbaa !134 ; 2 uses
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %i.k, double %i.i)
  %i.m = tail call double @SUNRsqrt(double noundef %i.l) #12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !95
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.q = load double, ptr %i.p, align 8, !tbaa !34
  %i.r = tail call double @SUNRpowerR(double noundef %i.o, double noundef %i.q) #12
  %i.s = fsub double %1, %i.m
  %i.t = tail call double @SUNRabs(double noundef %i.s) #12
  %i.u = load double, ptr %i.d, align 8, !tbaa !87
  %i.v = fdiv double %i.t, %i.u
  store double %i.v, ptr %i.n, align 8, !tbaa !95
  %.pr = load i32, ptr %i.a, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.w = phi i32 [ %.pr, %bb.b ], [ %i.b, %bb.a ]
  %.0 = phi double [ %i.r, %bb.b ], [ 5.000000e-01, %bb.a ]
  %i.x = icmp eq i32 %i.w, 2
  br i1 %i.x, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !95
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !135
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !34
  %i.ae = tail call double @SUNRpowerR(double noundef %i.ab, double noundef %i.ad) #12
  %i.af = fmul double %i.z, %i.ae
  %i.ag = load double, ptr %i.y, align 8, !tbaa !135
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !87
  %i.aj = fdiv double %1, %i.ai
  %i.ak = load double, ptr %i.ac, align 8, !tbaa !34
  %i.al = tail call double @SUNRpowerR(double noundef %i.aj, double noundef %i.ak) #12
  %i.am = fmul double %i.ag, %i.al
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.an = phi double [ %i.am, %bb.d ], [ %.pre, %._crit_edge ] ; 2 uses
  %.1 = phi double [ %i.af, %bb.d ], [ %.0, %._crit_edge ] ; 2 uses
  %i.ao = fcmp olt double %.1, 1.000000e-01
  %.2 = select i1 %i.ao, double 0.000000e+00, double %.1 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aq = fcmp ogt double %i.an, %.2
  %i.ar = select i1 %i.aq, double %i.an, double %.2 ; 2 uses
  %i.as = fcmp ogt double %i.ar, 1.000000e-04
  %i.at = select i1 %i.as, double %i.ar, double 1.000000e-04 ; 2 uses
  %i.au = fcmp olt double %i.at, 9.000000e-01
  %i.av = select i1 %i.au, double %i.at, double 9.000000e-01
  store double %i.av, ptr %i.ap, align 8, !tbaa !95
  ret void
}

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @KINFree(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !136    ; 35 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @N_VDestroy(ptr noundef nonnull %i.d) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62   ; 2 uses
  %.not64.i = icmp eq ptr %i.f, null
  br i1 %.not64.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @N_VDestroy(ptr noundef nonnull %i.f) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63   ; 2 uses
  %.not65.i = icmp eq ptr %i.h, null
  br i1 %.not65.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @N_VDestroy(ptr noundef nonnull %i.h) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64   ; 2 uses
end_hunk_1
begin_hunk_2_@KINFree:bb.a
  %i.co = sub nsw i64 %i.ck, %i.cj
  store i64 %i.co, ptr %i.cd, align 8, !tbaa !41
  br label %KINFreeVectors.exit

KINFreeVectors.exit:                              ; preds = %bb.x, %bb.aa
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !137 ; 2 uses
  %.not = icmp eq ptr %i.cq, null
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %KINFreeVectors.exit
  tail call void %i.cq(ptr noundef nonnull %i.a) #12
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %KINFreeVectors.exit
  %i.cr = load ptr, ptr %0, align 8, !tbaa !136
  tail call void @free(ptr noundef %i.cr) #12
  store ptr null, ptr %0, align 8, !tbaa !136
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #8

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @vsprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #5

declare ptr @N_VCloneVectorArray(i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VDestroyVectorArray(ptr noundef, i32 noundef) local_unnamed_addr #5

declare double @N_VMin(ptr noundef) local_unnamed_addr #5

declare i32 @N_VConstrMask(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare double @N_VWL2Norm(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc double @KINScFNorm(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  tail call void @N_VProd(ptr noundef %2, ptr noundef %1, ptr noundef %i.b) #12
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.d = tail call double @N_VMaxNorm(ptr noundef %i.c) #12
  ret double %i.d
}

declare void @N_VProd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare double @N_VMaxNorm(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -996, 1) i32 @KINConstraint(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.b, double noundef 1.000000e+00, ptr noundef %i.d, ptr noundef %i.f) #12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.l = tail call i32 @N_VConstrMask(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.k) #12
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !64
  tail call void @N_VAbs(ptr noundef %i.m, ptr noundef %i.n) #12
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !64   ; 2 uses
  tail call void @N_VProd(ptr noundef %i.o, ptr noundef %i.p, ptr noundef %i.p) #12
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !65
  tail call void @N_VAbs(ptr noundef %i.q, ptr noundef %i.r) #12
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.u = tail call double @N_VMinQuotient(ptr noundef %i.s, ptr noundef %i.t) #12
  %i.v = fmul double %i.u, 9.000000e-01
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.v, ptr %i.w, align 8, !tbaa !122
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

declare double @SUNRabs(double noundef) local_unnamed_addr #5

declare void @N_VInv(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VDiv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare double @SUNRexp(double noundef) local_unnamed_addr #5

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @AndersenAcc(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 12 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = shl i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #14 ; 12 uses
  %i.e = add i32 %5, -1                           ; 3 uses
  %i.f = sext i32 %i.e to i64                     ; 4 uses
  %i.g = srem i64 %i.f, %i.b                      ; 18 uses
  %i.h = trunc nsw i64 %i.g to i32
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %1, double noundef -1.000000e+00, ptr noundef %4, ptr noundef %2) #12
  %i.i = icmp sgt i32 %5, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.g
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !138
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %1, double noundef -1.000000e+00, ptr noundef %i.k, ptr noundef %i.o) #12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !71
  %i.t = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.g
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !138
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef -1.000000e+00, ptr noundef %i.q, ptr noundef %i.u) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !70
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %1, ptr noundef %i.w) #12
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !69
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %2, ptr noundef %i.y) #12
  switch i32 %5, label %bb.f [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %1, ptr noundef %3) #12
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.g
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !138
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.g
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !138
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.ac, ptr noundef %i.ag) #12
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !71
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.g
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !138 ; 2 uses
  %i.ak = tail call double @N_VDotProd(ptr noundef %i.aj, ptr noundef %i.aj) #12
  %i.al = tail call double @sqrt(double noundef %i.ak) #12 ; 2 uses
  store double %i.al, ptr %6, align 8, !tbaa !35
  %i.am = fdiv double 1.000000e+00, %i.al
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !71
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.g
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !138
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !74
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.g
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !138
  tail call void @N_VScale(double noundef %i.am, ptr noundef %i.ap, ptr noundef %i.at) #12
  store i32 0, ptr %i.d, align 4, !tbaa !133
  br label %.loopexit219

bb.f:                                             ; preds = %bb.c
  %i.au = sext i32 %5 to i64                      ; 7 uses
  %i.av = load i64, ptr %i.a, align 8, !tbaa !66  ; 5 uses
  %i.aw = icmp sgt i64 %i.av, %i.au
  br i1 %i.aw, label %bb.g, label %.preheader222

.preheader222:                                    ; preds = %bb.f
  %.0223 = shl nsw i64 %i.g, 32
  %sext = add i64 %.0223, 4294967296
  %i.ax = ashr exact i64 %sext, 32                ; 5 uses
  %i.ay = icmp sgt i64 %i.av, %i.ax
  br i1 %i.ay, label %.lr.ph.preheader, label %.preheader221

.lr.ph.preheader:                                 ; preds = %.preheader222
  %i.az = sub i64 %i.av, %i.ax                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.az, 8
  br i1 %min.iters.check, label %.lr.ph.preheader21, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.az, -8                      ; 5 uses
  %i.ba = add i64 %i.ax, %n.vec
  %i.bb = trunc nsw i64 %i.ax to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <4 x i32> %vec.ind, ptr %i.bc, align 4, !tbaa !133
  store <4 x i32> %step.add, ptr %i.bd, align 4, !tbaa !133
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %.preheader221, label %.lr.ph.preheader21

.lr.ph.preheader21:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv249.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.ax, %.lr.ph.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !71
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.g
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !138
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !75
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.g
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !138
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bi, ptr noundef %i.bm) #12
  %i.bn = icmp sgt i32 %5, 1
  br i1 %i.bn, label %.lr.ph237, label %._crit_edge

.lr.ph237:                                        ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph237, %bb.h
  %indvars.iv268 = phi i64 [ 0, %.lr.ph237 ], [ %indvars.iv.next269, %bb.h ] ; 6 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv268
  %i.bq = trunc nuw nsw i64 %indvars.iv268 to i32
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !133
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !74
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv268
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !138
  %i.bu = load ptr, ptr %i.bj, align 8, !tbaa !75
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.g
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !138
  %i.bx = tail call double @N_VDotProd(ptr noundef %i.bt, ptr noundef %i.bw) #12 ; 2 uses
  %i.by = load i64, ptr %i.a, align 8, !tbaa !66
  %i.bz = mul nsw i64 %i.by, %i.f
  %i.ca = getelementptr [8 x i8], ptr %6, i64 %i.bz
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %indvars.iv268
  store double %i.bx, ptr %i.cb, align 8, !tbaa !35
  %i.cc = load ptr, ptr %i.bj, align 8, !tbaa !75
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.g
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !138 ; 2 uses
  %i.cf = fneg double %i.bx
  %i.cg = load ptr, ptr %i.bo, align 8, !tbaa !74
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv268
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !138
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ce, double noundef %i.cf, ptr noundef %i.ci, ptr noundef %i.ce) #12
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next269, %wide.trip.count
  br i1 %exitcond271.not, label %._crit_edge, label %bb.h, !llvm.loop !142

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %i.cj = load ptr, ptr %i.bj, align 8, !tbaa !75
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.g
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !138 ; 2 uses
  %i.cm = tail call double @N_VDotProd(ptr noundef %i.cl, ptr noundef %i.cl) #12
  %i.cn = tail call double @sqrt(double noundef %i.cm) #12 ; 2 uses
  %i.co = load i64, ptr %i.a, align 8, !tbaa !66
  %i.cp = mul nsw i64 %i.co, %i.f
  %i.cq = getelementptr [8 x i8], ptr %6, i64 %i.cp
  %i.cr = getelementptr [8 x i8], ptr %i.cq, i64 %i.au
  %i.cs = getelementptr i8, ptr %i.cr, i64 -8
  store double %i.cn, ptr %i.cs, align 8, !tbaa !35
  %i.ct = fdiv double 1.000000e+00, %i.cn
  %i.cu = load ptr, ptr %i.bj, align 8, !tbaa !75
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.g
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !138
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !74
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.g
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !138
  tail call void @N_VScale(double noundef %i.ct, ptr noundef %i.cw, ptr noundef %i.da) #12
  %i.db = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.f
  store i32 %i.e, ptr %i.db, align 4, !tbaa !133
  br label %.loopexit219

.preheader221:                                    ; preds = %.lr.ph, %middle.block, %.preheader222
  %.1203.lcssa = phi i64 [ 0, %.preheader222 ], [ %n.vec, %middle.block ], [ %indvars.iv.next250, %.lr.ph ] ; 3 uses
  %.not226 = icmp slt i64 %i.g, 0
  br i1 %.not226, label %.preheader220, label %.lr.ph229.preheader

.lr.ph229.preheader:                              ; preds = %.preheader221
  %i.dc = and i64 %i.g, 4294967295                ; 2 uses
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check5 = icmp samesign ult i64 %i.dc, 7
  br i1 %min.iters.check5, label %.lr.ph229.preheader20, label %vector.ph6

vector.ph6:                                       ; preds = %.lr.ph229.preheader
  %n.vec7 = and i64 %i.dd, 8589934584             ; 4 uses
  %i.de = add i64 %.1203.lcssa, %n.vec7
  %i.df = trunc i64 %n.vec7 to i32
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.1203.lcssa
  br label %vector.body8

vector.body8:                                     ; preds = %vector.body8, %vector.ph6
  %index9 = phi i64 [ 0, %vector.ph6 ], [ %index.next12, %vector.body8 ] ; 2 uses
  %vec.ind10 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph6 ], [ %vec.ind.next13, %vector.body8 ] ; 3 uses
  %step.add11 = add nuw <4 x i32> %vec.ind10, splat (i32 4)
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index9 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <4 x i32> %vec.ind10, ptr %i.dh, align 4, !tbaa !133
  store <4 x i32> %step.add11, ptr %i.di, align 4, !tbaa !133
  %index.next12 = add nuw i64 %index9, 8          ; 2 uses
  %vec.ind.next13 = add nuw <4 x i32> %vec.ind10, splat (i32 8)
  %i.dj = icmp eq i64 %index.next12, %n.vec7
  br i1 %i.dj, label %middle.block14, label %vector.body8, !llvm.loop !143

middle.block14:                                   ; preds = %vector.body8
  %cmp.n15 = icmp eq i64 %i.dd, %n.vec7
  br i1 %cmp.n15, label %.preheader220, label %.lr.ph229.preheader20

.lr.ph229.preheader20:                            ; preds = %.lr.ph229.preheader, %middle.block14
  %indvars.iv254.ph = phi i64 [ %.1203.lcssa, %.lr.ph229.preheader ], [ %i.de, %middle.block14 ]
  %.1228.ph = phi i32 [ 0, %.lr.ph229.preheader ], [ %i.df, %middle.block14 ]
  br label %.lr.ph229

.lr.ph:                                           ; preds = %.lr.ph.preheader21, %.lr.ph
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %.lr.ph ], [ %indvars.iv249.ph, %.lr.ph.preheader21 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader21 ] ; 2 uses
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv249
  %i.dl = trunc nsw i64 %indvars.iv to i32
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !133
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.dm = icmp sgt i64 %i.av, %indvars.iv.next
  br i1 %i.dm, label %.lr.ph, label %.preheader221, !llvm.loop !144

.preheader220:                                    ; preds = %.lr.ph229, %middle.block14, %.preheader221
  %i.dn = icmp sgt i64 %i.av, 0
  br i1 %i.dn, label %.lr.ph231, label %.loopexit219

.lr.ph231:                                        ; preds = %.preheader220
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.i

.lr.ph229:                                        ; preds = %.lr.ph229.preheader20, %.lr.ph229
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %.lr.ph229 ], [ %indvars.iv254.ph, %.lr.ph229.preheader20 ] ; 2 uses
  %.1228 = phi i32 [ %i.dr, %.lr.ph229 ], [ %.1228.ph, %.lr.ph229.preheader20 ] ; 3 uses
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv254
  store i32 %.1228, ptr %i.dq, align 4, !tbaa !133
  %i.dr = add nuw i32 %.1228, 1
  %exitcond.not = icmp eq i32 %.1228, %i.h
  br i1 %exitcond.not, label %.preheader220, label %.lr.ph229, !llvm.loop !145

.preheader218:                                    ; preds = %bb.i
  %i.ds = icmp sgt i64 %i.eb, 0
  br i1 %i.ds, label %.lr.ph235, label %.loopexit219

.lr.ph235:                                        ; preds = %.preheader218
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph231, %bb.i
  %indvars.iv257 = phi i64 [ 0, %.lr.ph231 ], [ %indvars.iv.next258, %bb.i ] ; 3 uses
  %i.dv = load ptr, ptr %i.do, align 8, !tbaa !71
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv257
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !138
  %i.dy = load ptr, ptr %i.dp, align 8, !tbaa !75
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv257
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !138
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.dx, ptr noundef %i.ea) #12
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !66  ; 2 uses
  %i.ec = icmp sgt i64 %i.eb, %indvars.iv.next258
  br i1 %i.ec, label %bb.i, label %.preheader218, !llvm.loop !146

.loopexit217:                                     ; preds = %.lr.ph233
  %i.ed = icmp sgt i64 %i.fs, %indvars.iv.next266
  %indvars.iv.next261 = add i64 %indvars.iv260, 1
  br i1 %i.ed, label %bb.j, label %.loopexit219, !llvm.loop !147

bb.j:                                             ; preds = %.lr.ph235, %.loopexit217
  %indvars.iv265 = phi i64 [ 0, %.lr.ph235 ], [ %indvars.iv.next266, %.loopexit217 ] ; 4 uses
  %indvars.iv260 = phi i64 [ 1, %.lr.ph235 ], [ %indvars.iv.next261, %.loopexit217 ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv265
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !133
  %i.eg = load ptr, ptr %i.dt, align 8, !tbaa !75
  %i.eh = sext i32 %i.ef to i64                   ; 5 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !138 ; 2 uses
  %i.ek = tail call double @N_VDotProd(ptr noundef %i.ej, ptr noundef %i.ej) #12
  %i.el = tail call double @sqrt(double noundef %i.ek) #12 ; 2 uses
  %i.em = load i64, ptr %i.a, align 8, !tbaa !66
  %i.en = add i64 %i.em, 1
  %i.eo = mul i64 %i.en, %indvars.iv265
  %i.ep = getelementptr inbounds [8 x i8], ptr %6, i64 %i.eo
  store double %i.el, ptr %i.ep, align 8, !tbaa !35
  %i.eq = fdiv double 1.000000e+00, %i.el
  %i.er = load ptr, ptr %i.dt, align 8, !tbaa !75
  %i.es = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.eh
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !138
  %i.eu = load ptr, ptr %i.du, align 8, !tbaa !74
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.eh
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !138
  tail call void @N_VScale(double noundef %i.eq, ptr noundef %i.et, ptr noundef %i.ew) #12
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %6, i64 %indvars.iv265
  %i.ex = load i64, ptr %i.a, align 8, !tbaa !66
  %i.ey = icmp sgt i64 %i.ex, %indvars.iv.next266
  br i1 %i.ey, label %.lr.ph233, label %.loopexit219

.lr.ph233:                                        ; preds = %bb.j, %.lr.ph233
  %indvars.iv262 = phi i64 [ %indvars.iv.next263, %.lr.ph233 ], [ %indvars.iv260, %bb.j ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv262
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !133
  %i.fb = load ptr, ptr %i.dt, align 8, !tbaa !75
  %i.fc = sext i32 %i.fa to i64                   ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !138
  %i.ff = load ptr, ptr %i.du, align 8, !tbaa !74
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.eh
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !138
  %i.fi = tail call double @N_VDotProd(ptr noundef %i.fe, ptr noundef %i.fh) #12 ; 2 uses
  %i.fj = load i64, ptr %i.a, align 8, !tbaa !66
  %i.fk = mul nsw i64 %i.fj, %indvars.iv262
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fk
  store double %i.fi, ptr %gep, align 8, !tbaa !35
  %i.fl = load ptr, ptr %i.dt, align 8, !tbaa !75
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.fc
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !138 ; 2 uses
  %i.fo = fneg double %i.fi
  %i.fp = load ptr, ptr %i.du, align 8, !tbaa !74
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.eh
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !138
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.fn, double noundef %i.fo, ptr noundef %i.fr, ptr noundef %i.fn) #12
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %i.fs = load i64, ptr %i.a, align 8, !tbaa !66  ; 2 uses
  %i.ft = icmp sgt i64 %i.fs, %indvars.iv.next263
  br i1 %i.ft, label %.lr.ph233, label %.loopexit217, !llvm.loop !148

.loopexit219:                                     ; preds = %.loopexit217, %bb.j, %.preheader220, %.preheader218, %._crit_edge, %bb.e
  %.pre-phi = phi i64 [ %i.au, %.preheader220 ], [ %i.au, %.preheader218 ], [ %i.au, %._crit_edge ], [ 1, %bb.e ], [ %i.au, %bb.j ], [ %i.au, %.loopexit217 ]
  %i.fu = load i64, ptr %i.a, align 8, !tbaa !66
  %spec.select215 = tail call i64 @llvm.smin.i64(i64 %i.fu, i64 %.pre-phi) ; 4 uses
  %spec.select = trunc i64 %spec.select215 to i32 ; 2 uses
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %1, ptr noundef %3) #12
  %i.fv = icmp sgt i32 %spec.select, 0
  br i1 %i.fv, label %.lr.ph240, label %.loopexit

.lr.ph240:                                        ; preds = %.loopexit219
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 376
  %wide.trip.count275 = and i64 %spec.select215, 2147483647
  br label %bb.k

.preheader.lr.ph:                                 ; preds = %bb.k
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.fy = and i64 %spec.select215, 2147483647
  %i.fz = and i64 %spec.select215, 2147483647
  br label %.preheader

bb.k:                                             ; preds = %.lr.ph240, %bb.k
  %indvars.iv272 = phi i64 [ 0, %.lr.ph240 ], [ %indvars.iv.next273, %bb.k ] ; 3 uses
  %i.ga = load ptr, ptr %i.fw, align 8, !tbaa !74
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv272
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !133
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.gd
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !138
  %i.gg = tail call double @N_VDotProd(ptr noundef %2, ptr noundef %i.gf) #12
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv272
  store double %i.gg, ptr %i.gh, align 8, !tbaa !35
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %exitcond276.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count275
  br i1 %exitcond276.not, label %.preheader.lr.ph, label %bb.k, !llvm.loop !149

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge243
  %indvars.iv277 = phi i64 [ %i.fy, %.preheader.lr.ph ], [ %indvars.iv.next278, %._crit_edge243 ] ; 4 uses
  %indvars.iv.next278 = add nsw i64 %indvars.iv277, -1 ; 6 uses
  %i.gi = icmp slt i64 %indvars.iv277, %i.fz
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.next278 ; 3 uses
  br i1 %i.gi, label %.lr.ph242, label %.preheader.._crit_edge243_crit_edge

.preheader.._crit_edge243_crit_edge:              ; preds = %.preheader
  %.pre = load double, ptr %i.gj, align 8, !tbaa !35
  %.pre283 = load i64, ptr %i.a, align 8, !tbaa !66
  br label %._crit_edge243

.lr.ph242:                                        ; preds = %.preheader
  %i.gk = load i64, ptr %i.a, align 8, !tbaa !66  ; 2 uses
  %invariant.gep244 = getelementptr [8 x i8], ptr %6, i64 %indvars.iv.next278
  %.promoted = load double, ptr %i.gj, align 8, !tbaa !35
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph242, %bb.l
  %indvars.iv279 = phi i64 [ %indvars.iv277, %.lr.ph242 ], [ %indvars.iv.next280, %bb.l ] ; 3 uses
  %i.gl = phi double [ %.promoted, %.lr.ph242 ], [ %i.gr, %bb.l ]
  %i.gm = mul nsw i64 %i.gk, %indvars.iv279
  %gep245 = getelementptr [8 x i8], ptr %invariant.gep244, i64 %i.gm
  %i.gn = load double, ptr %gep245, align 8, !tbaa !35
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv279
  %i.gp = load double, ptr %i.go, align 8, !tbaa !35
  %i.gq = fneg double %i.gn
  %i.gr = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.gp, double %i.gl) ; 3 uses
  store double %i.gr, ptr %i.gj, align 8, !tbaa !35
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %i.gs = trunc nuw i64 %indvars.iv.next280 to i32
  %i.gt = icmp slt i32 %i.gs, %spec.select
  br i1 %i.gt, label %bb.l, label %._crit_edge243, !llvm.loop !150

._crit_edge243:                                   ; preds = %bb.l, %.preheader.._crit_edge243_crit_edge
  %i.gu = phi i64 [ %.pre283, %.preheader.._crit_edge243_crit_edge ], [ %i.gk, %bb.l ]
  %i.gv = phi double [ %.pre, %.preheader.._crit_edge243_crit_edge ], [ %i.gr, %bb.l ]
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.next278
  %i.gx = add i64 %i.gu, 1
  %i.gy = mul i64 %i.gx, %indvars.iv.next278
  %i.gz = getelementptr inbounds [8 x i8], ptr %6, i64 %i.gy
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !35
  %i.hb = fdiv double %i.gv, %i.ha                ; 2 uses
  store double %i.hb, ptr %i.gw, align 8, !tbaa !35
  %i.hc = fneg double %i.hb
  %i.hd = load ptr, ptr %i.fx, align 8, !tbaa !72
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next278
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !133
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.hd, i64 %i.hg
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !138
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %3, double noundef %i.hc, ptr noundef %i.hi, ptr noundef %3) #12
  %i.hj = icmp samesign ugt i64 %indvars.iv277, 1
  br i1 %i.hj, label %.preheader, label %.loopexit, !llvm.loop !151

.loopexit:                                        ; preds = %._crit_edge243, %.loopexit219, %bb.d
  tail call void @free(ptr noundef %i.d) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #10

declare double @N_VDotProd(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"KINMemRec", !10, i64 0, !11, i64 8, !11, i64 16, !10, i64 24, !10, i64 32, !5, i64 40, !5, i64 44, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !5, i64 192, !10, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !14, i64 360, !14, i64 368, !14, i64 376, !14, i64 384, !16, i64 392, !16, i64 400, !12, i64 408, !5, i64 416, !5, i64 420, !12, i64 424, !12, i64 432, !12, i64 440, !12, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !11, i64 480, !5, i64 488, !11, i64 496, !10, i64 504, !10, i64 512, !10, i64 520, !10, i64 528, !10, i64 536, !5, i64 544, !10, i64 552, !10, i64 560, !10, i64 568, !5, i64 576, !11, i64 584, !11, i64 592, !17, i64 600, !11, i64 608, !11, i64 616, !17, i64 624}
!10 = !{!"double", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"p1 _ZTS17_generic_N_Vector", !11, i64 0}
!14 = !{!"p2 _ZTS17_generic_N_Vector", !15, i64 0}
!15 = !{!"any p2 pointer", !11, i64 0}
!16 = !{!"p1 double", !11, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!18 = !{!9, !11, i64 584}
!19 = !{!9, !11, i64 592}
!20 = !{!17, !17, i64 0}
!21 = !{!9, !17, i64 600}
!22 = !{!9, !11, i64 608}
!23 = !{!9, !11, i64 616}
!24 = !{!9, !17, i64 624}
!25 = !{!9, !12, i64 48}
!26 = !{!9, !12, i64 56}
!27 = !{!9, !12, i64 64}
!28 = !{!9, !12, i64 72}
!29 = !{!9, !10, i64 200}
!30 = !{!9, !10, i64 136}
!31 = !{!9, !10, i64 32}
!32 = !{!9, !10, i64 24}
!33 = !{!9, !5, i64 80}
!34 = !{!9, !10, i64 184}
!35 = !{!10, !10, i64 0}
!36 = !{!9, !5, i64 576}
!37 = !{!9, !5, i64 88}
!38 = !{!9, !5, i64 544}
!39 = !{!9, !10, i64 568}
!40 = !{!9, !12, i64 440}
!41 = !{!9, !12, i64 448}
!42 = !{!43, !44, i64 8}
!43 = !{!"_generic_N_Vector", !11, i64 0, !44, i64 8}
!44 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !11, i64 0}
!45 = !{!46, !11, i64 0}
!46 = !{!"_generic_N_Vector_Ops", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192}
!47 = !{!46, !11, i64 16}
!48 = !{!46, !11, i64 48}
!49 = !{!46, !11, i64 64}
!50 = !{!46, !11, i64 72}
!51 = !{!46, !11, i64 80}
!52 = !{!46, !11, i64 88}
!53 = !{!46, !11, i64 96}
!54 = !{!46, !11, i64 120}
!55 = !{!46, !11, i64 144}
!56 = !{!46, !11, i64 152}
!57 = !{!46, !11, i64 24}
!58 = !{!12, !12, i64 0}
!59 = !{!9, !12, i64 424}
!60 = !{!9, !12, i64 432}
!61 = !{!9, !13, i64 272}
!62 = !{!9, !13, i64 280}
!63 = !{!9, !13, i64 312}
!64 = !{!9, !13, i64 328}
!65 = !{!9, !13, i64 336}
!66 = !{!9, !12, i64 408}
!67 = !{!9, !16, i64 400}
!68 = !{!9, !16, i64 392}
!69 = !{!9, !13, i64 344}
!70 = !{!9, !13, i64 352}
!71 = !{!9, !14, i64 360}
!72 = !{!9, !14, i64 368}
!73 = !{!9, !5, i64 416}
!74 = !{!9, !14, i64 376}
!75 = !{!9, !14, i64 384}
!76 = !{!9, !11, i64 8}
!77 = !{!9, !11, i64 496}
!78 = !{!9, !13, i64 264}
!79 = !{!9, !13, i64 296}
!80 = !{!9, !13, i64 304}
!81 = !{!9, !5, i64 40}
!82 = !{!9, !5, i64 92}
!83 = !{!9, !5, i64 44}
!84 = !{!9, !11, i64 16}
!85 = distinct !{null}
!86 = !{!9, !12, i64 216}
!87 = !{!9, !10, i64 504}
!88 = !{!9, !13, i64 320}
!89 = !{!46, !11, i64 184}
!90 = !{!46, !11, i64 192}
!91 = !{!9, !10, i64 128}
!92 = !{!9, !10, i64 120}
!93 = !{!9, !5, i64 488}
!94 = !{!9, !5, i64 100}
!95 = !{!9, !10, i64 168}
!96 = !{!9, !5, i64 104}
!97 = distinct !{null}
!98 = !{!9, !11, i64 456}
!99 = !{!9, !10, i64 512}
!100 = !{!9, !10, i64 536}
!101 = !{!9, !12, i64 208}
!102 = !{!9, !12, i64 256}
!103 = !{!9, !5, i64 192}
!104 = !{!9, !5, i64 84}
!105 = !{!9, !10, i64 552}
!106 = !{!9, !13, i64 288}
!107 = !{!9, !10, i64 160}
!108 = !{!9, !12, i64 224}
!109 = !{!9, !5, i64 112}
!110 = !{!9, !5, i64 96}
!111 = !{!9, !11, i64 464}
!112 = distinct !{null, null}
!113 = !{!9, !12, i64 232}
!114 = !{!9, !11, i64 472}
!115 = distinct !{!115, !116}
!116 = !{!"llvm.loop.peeled.count", i32 1}
!117 = distinct !{null}
!118 = !{!9, !5, i64 108}
!119 = distinct !{null}
!120 = distinct !{!120, !116}
!121 = !{!9, !10, i64 144}
!122 = !{!9, !10, i64 152}
!123 = distinct !{null}
!124 = distinct !{!124, !116}
!125 = distinct !{null}
!126 = !{!9, !10, i64 520}
!127 = distinct !{!127, !116}
!128 = distinct !{!128, !129}
!129 = !{!"llvm.loop.mustprogress"}
!130 = !{!9, !12, i64 240}
!131 = !{!9, !12, i64 248}
!132 = !{!9, !10, i64 560}
!133 = !{!5, !5, i64 0}
!134 = !{!9, !10, i64 528}
!135 = !{!9, !10, i64 176}
!136 = !{!11, !11, i64 0}
!137 = !{!9, !11, i64 480}
!138 = !{!13, !13, i64 0}
!139 = distinct !{!139, !129, !140, !141}
!140 = !{!"llvm.loop.isvectorized", i32 1}
!141 = !{!"llvm.loop.unroll.runtime.disable"}
!142 = distinct !{!142, !129}
!143 = distinct !{!143, !129, !140, !141}
!144 = distinct !{!144, !129, !141, !140}
!145 = distinct !{!145, !129, !141, !140}
!146 = distinct !{!146, !129}
!147 = distinct !{!147, !129}
!148 = distinct !{!148, !129}
!149 = distinct !{!149, !129}
!150 = distinct !{!150, !129}
!151 = distinct !{!151, !129}
end_hunk_2
