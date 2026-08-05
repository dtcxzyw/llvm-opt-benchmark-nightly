inline.NumInlined: 11
inline.NumDeleted: 7
begin_hunk_0_@doBlock:bb.a
  %.078.lcssa.i = phi double [ 0.000000e+00, %bb.g ], [ %.179.i, %bb.l ] ; 2 uses
  %.075.lcssa.i = phi i32 [ %.176.us.i, %bb.g ], [ %.176.i, %bb.l ] ; 4 uses
  switch i32 %.075.lcssa.i, label %.preheader.i [
    i32 1, label %bb.m
    i32 2, label %bb.n
  ]

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.aq = icmp sgt i32 %.075.lcssa.i, 0
  br i1 %i.aq, label %.lr.ph97.split.i, label %._crit_edge104.i

.lr.ph97.split.i:                                 ; preds = %.preheader.i
  %i.ar = add nsw i32 %.075.lcssa.i, -2
  br label %bb.o

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.l
  %.07092.i = phi i64 [ %i.aw, %bb.l ], [ 0, %.lr.ph.i ] ; 3 uses
  %.07591.i = phi i32 [ %.176.i, %bb.l ], [ 0, %.lr.ph.i ] ; 3 uses
  %.07889.i = phi double [ %.179.i, %bb.l ], [ 0.000000e+00, %.lr.ph.i ]
  %i.as = load ptr, ptr %4, align 8, !tbaa !20
  %i.at = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.07092.i) #10
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !22 ; 3 uses
  %i.aw = add nuw i64 %.07092.i, 1                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 152
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !39
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !52
  %i.bd = and i32 %i.bc, 8
  %.not.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i, label %bb.l, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.split.i
  %indvars111.i = trunc i64 %.07092.i to i32
  %i.be = uitofp nneg i32 %indvars111.i to double
  %i.bf = fmul double %i.r, %i.be
  %i.bg = sext i32 %.07591.i to i64
  %i.bh = getelementptr inbounds [56 x i8], ptr %i.h, i64 %i.bg ; 6 uses
  store ptr %i.av, ptr %i.bh, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store double %i.bf, ptr %i.bi, align 8, !tbaa !56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.preheader.i
  %.02634.i.i = phi ptr [ %.026.i.i, %bb.k ], [ %.fr.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %.033.i.i = phi i32 [ %.1.i.i, %bb.k ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %.02232.i.i = phi double [ %.123.i.i, %bb.k ], [ 0.000000e+00, %.lr.ph.i.preheader.i ] ; 2 uses
  %.02431.i.i = phi double [ %.125.i.i, %bb.k ], [ 0.000000e+00, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.bj = load ptr, ptr %.02634.i.i, align 8, !tbaa !34 ; 2 uses
  %.not28.i.i = icmp eq ptr %i.bj, null
  br i1 %.not28.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !35
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 152
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !39
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !61
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i
  %i.bq = phi ptr [ %i.bp, %bb.h ], [ null, %.lr.ph.i.i ]
  %i.br = icmp eq ptr %i.bq, %i.av
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bs = add nsw i32 %.033.i.i, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.02634.i.i, i64 24
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !33 ; 2 uses
  %i.bv = call nsz double @llvm.maxnum.f64(double %.02431.i.i, double %i.bu)
  %i.bw = call double @llvm.fmuladd.f64(double %i.bu, double 2.000000e+00, double %2)
  %i.bx = fadd double %.02232.i.i, %i.bw
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.125.i.i = phi double [ %i.bv, %bb.j ], [ %.02431.i.i, %bb.i ] ; 4 uses
  %.123.i.i = phi double [ %i.bx, %bb.j ], [ %.02232.i.i, %bb.i ] ; 2 uses
  %.1.i.i = phi i32 [ %i.bs, %bb.j ], [ %.033.i.i, %bb.i ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.02634.i.i, i64 8
  %.026.i.i = load ptr, ptr %i.by, align 8, !tbaa !16 ; 2 uses
  %.not.i.i = icmp eq ptr %.026.i.i, null
  br i1 %.not.i.i, label %getInfo.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !62

getInfo.exit.loopexit.i:                          ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store double %.123.i.i, ptr %i.bz, align 8, !tbaa !63
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store i32 %.1.i.i, ptr %i.ca, align 8, !tbaa !57
  %i.cb = fadd double %i.s, %.125.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store double %i.cb, ptr %i.cc, align 8, !tbaa !58
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store double %.125.i.i, ptr %i.cd, align 8, !tbaa !64
  %i.ce = add nsw i32 %.07591.i, 1
  br label %bb.l

bb.l:                                             ; preds = %getInfo.exit.loopexit.i, %.lr.ph.split.i
  %.179.i = phi double [ %.125.i.i, %getInfo.exit.loopexit.i ], [ %.07889.i, %.lr.ph.split.i ] ; 2 uses
  %.176.i = phi i32 [ %i.ce, %getInfo.exit.loopexit.i ], [ %.07591.i, %.lr.ph.split.i ] ; 2 uses
  %.val.i = load i64, ptr %i.e, align 8, !tbaa !24
  %i.cf = icmp ult i64 %i.aw, %.val.i
  br i1 %i.cf, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !60

bb.m:                                             ; preds = %._crit_edge.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store double 1.000000e+00, ptr %i.cg, align 8, !tbaa !65
  br label %.lr.ph103.i

bb.n:                                             ; preds = %._crit_edge.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !56
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !56
  %i.cl = fsub double %i.ci, %i.ck                ; 3 uses
  %i.cm = fcmp ogt double %i.cl, f0x400921FB54442D18
  %i.cn = fsub double f0x401921FB54442D18, %i.cl
  %.071.i = select i1 %i.cm, double %i.cn, double %i.cl
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.cp = load double, ptr %i.co, align 8, !tbaa !63
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !58 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !63
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !58 ; 2 uses
  %i.cw = fmul double %i.ct, %i.cv
  %i.cx = call double @llvm.fmuladd.f64(double %i.cp, double %i.cr, double %i.cw)
  %i.cy = fmul double %.071.i, 2.000000e+00
  %i.cz = fmul double %i.cy, %i.cv
  %i.da = fmul double %i.cr, %i.cz
  %i.db = fdiv double %i.cx, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.dd = call nsz double @llvm.maxnum.f64(double %i.db, double 1.000000e+00) ; 2 uses
  store double %i.dd, ptr %i.dc, align 8, !tbaa !65
  %i.de = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store double %i.dd, ptr %i.de, align 8, !tbaa !65
  br label %.lr.ph103.i

bb.o:                                             ; preds = %bb.o, %.lr.ph97.split.i
  %.096.i = phi i32 [ 0, %.lr.ph97.split.i ], [ %i.df, %bb.o ] ; 2 uses
  %.07395.i = phi ptr [ %i.h, %.lr.ph97.split.i ], [ %i.eg, %bb.o ] ; 10 uses
  %i.df = add nuw nsw i32 %.096.i, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.07395.i, i64 64
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !56 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.07395.i, i64 8
  %i.dj = load double, ptr %i.di, align 8, !tbaa !56
  %i.dk = fsub double %i.dh, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %.07395.i, i64 32
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !63
  %i.dn = getelementptr inbounds nuw i8, ptr %.07395.i, i64 72
  %i.do = load double, ptr %i.dn, align 8, !tbaa !58 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.07395.i, i64 88
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !63 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.07395.i, i64 16
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !58 ; 2 uses
  %i.dt = fmul double %i.dq, %i.ds
  %i.du = call double @llvm.fmuladd.f64(double %i.dm, double %i.do, double %i.dt)
  %i.dv = fmul double %i.dk, 2.000000e+00
  %i.dw = fmul double %i.dv, %i.ds
  %i.dx = fmul double %i.do, %i.dw
  %i.dy = fdiv double %i.du, %i.dx
  %i.dz = call nsz double @llvm.maxnum.f64(double %i.dy, double 1.000000e+00) ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.07395.i, i64 40 ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !65
  %i.ec = call nsz double @llvm.maxnum.f64(double %i.eb, double %i.dz)
  store double %i.ec, ptr %i.ea, align 8, !tbaa !65
  %i.ed = getelementptr inbounds nuw i8, ptr %.07395.i, i64 96 ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !65
  %i.ef = call nsz double @llvm.maxnum.f64(double %i.ee, double %i.dz) ; 2 uses
  store double %i.ef, ptr %i.ed, align 8, !tbaa !65
  %i.eg = getelementptr inbounds nuw i8, ptr %.07395.i, i64 56
  %exitcond.not.i = icmp eq i32 %.096.i, %i.ar
  br i1 %exitcond.not.i, label %.loopexit.loopexit.peel.begin.i, label %bb.o, !llvm.loop !66

.loopexit.loopexit.peel.begin.i:                  ; preds = %bb.o
  %i.eh = getelementptr inbounds nuw i8, ptr %.07395.i, i64 96
  %i.ei = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !56
  %i.ek = fsub double %i.ej, %i.dh
  %i.el = fadd double %i.ek, f0x401921FB54442D18
  %i.em = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.en = load double, ptr %i.em, align 8, !tbaa !58 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !63
  %i.eq = fmul double %i.do, %i.ep
  %i.er = call double @llvm.fmuladd.f64(double %i.dq, double %i.en, double %i.eq)
  %i.es = fmul double %i.el, 2.000000e+00
  %i.et = fmul double %i.do, %i.es
  %i.eu = fmul double %i.en, %i.et
  %i.ev = fdiv double %i.er, %i.eu
  %i.ew = call nsz double @llvm.maxnum.f64(double %i.ev, double 1.000000e+00) ; 2 uses
  %i.ex = call nsz double @llvm.maxnum.f64(double %i.ef, double %i.ew)
  store double %i.ex, ptr %i.eh, align 8, !tbaa !65
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !65
  %i.fa = call nsz double @llvm.maxnum.f64(double %i.ez, double %i.ew)
  store double %i.fa, ptr %i.ey, align 8, !tbaa !65
  %5 = zext nneg i32 %.075.lcssa.i to i64
  br label %.lr.ph103.i

.lr.ph103.i:                                      ; preds = %.loopexit.loopexit.peel.begin.i, %bb.n, %bb.m
  %.075.lcssa137.ph.i = phi i64 [ 1, %bb.m ], [ 2, %bb.n ], [ %5, %.loopexit.loopexit.peel.begin.i ]
  %i.fb = icmp eq i64 %.val, 1                    ; 4 uses
  br label %bb.p

bb.p:                                             ; preds = %positionChildren.exit.i, %.lr.ph103.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph103.i ], [ %indvars.iv.next.i, %positionChildren.exit.i ] ; 2 uses
  %.sroa.14.0100.i = phi double [ -1.000000e+00, %.lr.ph103.i ], [ %.080.lcssa.i.i, %positionChildren.exit.i ] ; 2 uses
  %.sroa.4.099.i = phi double [ %i.o, %.lr.ph103.i ], [ %i.kw, %positionChildren.exit.i ]
  %.sroa.10.098.i = phi double [ -1.000000e+00, %.lr.ph103.i ], [ %.081.lcssa.i.i, %positionChildren.exit.i ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv.i ; 11 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !65
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !58
  %i.fh = fmul double %i.fe, %i.fg                ; 3 uses
  br i1 %i.fb, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !63 ; 2 uses
  %i.fk = fdiv double %i.fj, f0x401921FB54442D18
  %i.fl = call nsz double @llvm.maxnum.f64(double %i.fh, double %i.fk) ; 3 uses
  %i.fm = fneg double %i.fj
  %i.fn = call double @llvm.fmuladd.f64(double %i.fl, double f0x401921FB54442D18, double %i.fm) ; 2 uses
  %i.fo = fcmp ogt double %i.fn, 0.000000e+00
  br i1 %i.fo, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fc, i64 48
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !57
  %i.fr = sitofp i32 %i.fq to double
  %i.fs = fdiv double %i.fn, %i.fr
  %i.ft = fadd double %2, %i.fs
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !56
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !63
  %i.fy = fmul double %i.fh, 2.000000e+00
  %i.fz = fdiv double %i.fx, %i.fy
  %i.ga = fsub double %i.fv, %i.fz
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.092.i.i = phi double [ %i.fl, %bb.r ], [ %i.fl, %bb.q ], [ %i.fh, %bb.s ] ; 4 uses
  %.086.i.i = phi double [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.q ], [ %i.ga, %bb.s ]
  %.0.i.i = phi double [ %i.ft, %bb.r ], [ %2, %bb.q ], [ %2, %bb.s ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fc, i64 48
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !57 ; 3 uses
  %i.gf = add nsw i32 %i.ge, 1
  %i.gg = sdiv i32 %i.gf, 2                       ; 2 uses
  br i1 %.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i82.i

.lr.ph.i82.i:                                     ; preds = %bb.t
  %i.gh = fdiv double %.0.i.i, %.092.i.i          ; 2 uses
  %i.gi = fmul double %i.gh, 5.000000e-01         ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %.pn100.i.i = select i1 %i.fb, double %i.gh, double %i.gi
  %i.gk = load ptr, ptr %i.fc, align 8, !tbaa !54
  %i.gl = icmp eq i32 %i.ge, 1
  %i.gm = icmp eq i32 %i.ge, 2
  %i.gn = insertelement <2 x double> poison, double %.092.i.i, i64 0
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.u

bb.u:                                             ; preds = %bb.ao, %.lr.ph.i82.i
  %.079108.i.i = phi ptr [ %.fr.i, %.lr.ph.i82.i ], [ %.079.i.i, %bb.ao ] ; 9 uses
  %.080107.i.i = phi double [ %.sroa.14.0100.i, %.lr.ph.i82.i ], [ %.2.i.i, %bb.ao ] ; 4 uses
  %.081106.i.i = phi double [ %.sroa.10.098.i, %.lr.ph.i82.i ], [ %.3.i.i, %bb.ao ] ; 6 uses
  %.084105.i.i = phi i32 [ 0, %.lr.ph.i82.i ], [ %.185.i.i, %bb.ao ] ; 3 uses
  %.187104.i.i = phi double [ %.086.i.i, %.lr.ph.i82.i ], [ %.5.i.i, %bb.ao ] ; 6 uses
  %.090103.i.i = phi double [ 0.000000e+00, %.lr.ph.i82.i ], [ %.191.i.i, %bb.ao ] ; 3 uses
  %i.gp = load ptr, ptr %.079108.i.i, align 8, !tbaa !34 ; 6 uses
  %.not98.i.i = icmp eq ptr %i.gp, null
  br i1 %.not98.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !35
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 152
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !39
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !61
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.gw = phi ptr [ %i.gv, %bb.v ], [ null, %bb.u ]
  %.not99.i.i = icmp eq ptr %i.gw, %i.gk
  br i1 %.not99.i.i, label %bb.x, label %bb.ao

bb.x:                                             ; preds = %bb.w
  %i.gx = getelementptr i8, ptr %.079108.i.i, i64 56
  %.val.i.i = load i64, ptr %i.gx, align 8, !tbaa !24 ; 2 uses
  %i.gy = icmp eq i64 %.val.i.i, 0
  br i1 %i.gy, label %bb.ao, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gz = getelementptr inbounds nuw i8, ptr %.079108.i.i, i64 24 ; 2 uses
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !33
  %i.hb = fdiv double %i.ha, %.092.i.i            ; 3 uses
  br i1 %i.fb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hc = fcmp oeq double %.187104.i.i, 0.000000e+00
  %i.hd = fadd double %.187104.i.i, %i.hb
  %.187104.i.mux.i = select i1 %i.gm, double f0x400921FB54442D18, double %i.hd
  %.288.i.i = select i1 %i.hc, double %.187104.i.i, double %.187104.i.mux.i ; 3 uses
  %i.he = fcmp olt double %.081106.i.i, 0.000000e+00
  %.182.i.i = select i1 %i.he, double %.288.i.i, double %.081106.i.i
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  br i1 %i.gl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hf = load double, ptr %i.gj, align 8, !tbaa !56
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.hg = fadd double %i.gi, %i.hb
  %i.hh = fadd double %.187104.i.i, %i.hg
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.z
  %.389.i.i = phi double [ %.288.i.i, %bb.z ], [ %i.hf, %bb.ab ], [ %i.hh, %bb.ac ] ; 7 uses
  %.283.i.i = phi double [ %.182.i.i, %bb.z ], [ %.081106.i.i, %bb.ab ], [ %.081106.i.i, %bb.ac ] ; 2 uses
  %.1.i84.i = phi double [ %.288.i.i, %bb.z ], [ %.080107.i.i, %bb.ab ], [ %.080107.i.i, %bb.ac ] ; 2 uses
  %i.hi = call double @cos(double noundef %.389.i.i) #10
  %i.hj = call double @sin(double noundef %.389.i.i) #10
  %i.hk = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.hl = insertelement <2 x double> %i.hk, double %i.hj, i64 1
  %i.hm = fmul <2 x double> %i.go, %i.hl          ; 6 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.079108.i.i, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !68 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.079108.i.i, i64 104
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !69 ; 2 uses
  %i.hr = fcmp ult double %i.hq, 0.000000e+00
  br i1 %i.hr, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hs = fsub double f0x400921FB54442D18, %i.hq
  %i.ht = fadd double %.389.i.i, %i.hs            ; 3 uses
  %i.hu = fcmp olt double %i.ht, 0.000000e+00
  %i.hv = fadd double %i.ht, f0x401921FB54442D18
  %.066.i.i.i = select i1 %i.hu, double %i.hv, double %i.ht
  br label %getRotation.exit.i.i

bb.af:                                            ; preds = %bb.ad
  %i.hw = icmp eq i64 %.val.i.i, 2
  br i1 %i.hw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hx = fadd double %.389.i.i, f0xBFF921FB54442D18
  br label %getRotation.exit.i.i

bb.ah:                                            ; preds = %bb.af
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !35
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 176
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !70
  %i.ic = load <2 x double>, ptr %i.ib, align 8, !tbaa !59
  %i.id = fadd <2 x double> %i.hm, %i.ic          ; 2 uses
  %i.ie = extractelement <2 x double> %i.id, i64 0
  %i.if = extractelement <2 x double> %i.id, i64 1
  %i.ig = call double @hypot(double noundef %i.ie, double noundef %i.if) #10
  %i.ih = call ptr @agfstnode(ptr noundef %i.ho) #10 ; 2 uses
  %.not85.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not85.i.i.i, label %getRotation.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ah, %bb.aj
  %.06888.i.i.i = phi ptr [ %i.it, %bb.aj ], [ %i.ih, %bb.ah ] ; 4 uses
  %.06987.i.i.i = phi ptr [ %.271.i.i.i, %bb.aj ], [ %i.gp, %bb.ah ] ; 2 uses
  %.07286.i.i.i = phi double [ %.274.i.i.i, %bb.aj ], [ %i.ig, %bb.ah ] ; 3 uses
  %i.ii = icmp eq ptr %.06888.i.i.i, %i.gp
  br i1 %i.ii, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %.06888.i.i.i, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !35
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 176
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !70
  %i.in = load <2 x double>, ptr %i.im, align 8, !tbaa !59
  %i.io = fadd <2 x double> %i.hm, %i.in          ; 2 uses
  %i.ip = extractelement <2 x double> %i.io, i64 0
  %i.iq = extractelement <2 x double> %i.io, i64 1
  %i.ir = call double @hypot(double noundef %i.ip, double noundef %i.iq) #10 ; 2 uses
  %i.is = fcmp olt double %i.ir, %.07286.i.i.i    ; 2 uses
  %.173.i.i.i = select i1 %i.is, double %i.ir, double %.07286.i.i.i
  %.170.i.i.i = select i1 %i.is, ptr %.06888.i.i.i, ptr %.06987.i.i.i
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i.i.i
  %.274.i.i.i = phi double [ %.07286.i.i.i, %.lr.ph.i.i.i ], [ %.173.i.i.i, %bb.ai ]
  %.271.i.i.i = phi ptr [ %.06987.i.i.i, %.lr.ph.i.i.i ], [ %.170.i.i.i, %bb.ai ] ; 2 uses
  %i.it = call ptr @agnxtnode(ptr noundef %i.ho, ptr noundef nonnull %.06888.i.i.i) #10 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !71
end_hunk_0
