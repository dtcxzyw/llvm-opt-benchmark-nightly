inline.NumInlined: 48
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL14isea_s_inverse5PJ_XYP8PJconsts:bb.a
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %i.ae = fneg double %i.ad                       ; 2 uses
  %i.af = extractelement <2 x double> %i.ac, i64 1
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.ae, double f0x3FE279A74590331D, double %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !91
  %i.aj = fmul double %i.ai, %i.ag                ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  %i.al = load double, ptr %i.ak, align 8, !tbaa !92
  %i.am = fmul double %i.al, %i.ae                ; 11 uses
  %i.an = fcmp olt double %i.aj, 0.000000e+00
  br i1 %i.an, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = fcmp ogt double %i.am, %i.aj
  %i.ap = fcmp olt double %i.aj, f0x4013FFFFFFFFD405
  %or.cond4.i = and i1 %i.ao, %i.ap
  br i1 %or.cond4.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aq = fadd double %i.aj, f0x3DA5FD7FE1796495
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.ar = fcmp ogt double %i.aj, 5.000000e+00
  br i1 %i.ar, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = fcmp olt double %i.am, %i.aj
  %i.at = fcmp ogt double %i.aj, f0x3DA5FD7FE1796495
  %or.cond6.i = and i1 %i.as, %i.at
  br i1 %or.cond6.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = fadd double %i.aj, f0xBDA5FD7FE1796495
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.099.i = phi double [ %i.aq, %bb.f ], [ %i.au, %bb.i ], [ %i.aj, %bb.h ] ; 6 uses
  %i.av = fcmp olt double %i.am, 0.000000e+00
  br i1 %i.av, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = fcmp ogt double %.099.i, %i.am
  %i.ax = fcmp olt double %i.am, f0x4017FFFFFFFFD405
  %or.cond8.i = and i1 %i.ax, %i.aw
  br i1 %or.cond8.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ay = fadd double %i.am, f0x3DA5FD7FE1796495
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.az = fcmp ogt double %i.am, 6.000000e+00
  br i1 %i.az, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = fcmp olt double %.099.i, %i.am
  %i.bb = fcmp ogt double %i.am, f0x3DA5FD7FE1796495
  %or.cond10.i = and i1 %i.bb, %i.ba
  br i1 %or.cond10.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bc = fadd double %i.am, f0xBDA5FD7FE1796495
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.0100.i = phi double [ %i.ay, %bb.l ], [ %i.bc, %bb.o ], [ %i.am, %bb.n ] ; 4 uses
  %i.bd = fcmp oge double %.099.i, 0.000000e+00
  %i.be = fcmp ole double %.099.i, 5.000000e+00
  %or.cond12.i = and i1 %i.bd, %i.be
  %i.bf = fcmp oge double %.0100.i, 0.000000e+00
  %i.bg = fcmp ole double %.0100.i, 6.000000e+00
  %i.bh = and i1 %i.bf, %i.bg
  %or.cond16.i = select i1 %or.cond12.i, i1 %i.bh, i1 false
  br i1 %or.cond16.i, label %bb.q, label %_ZN12_GLOBAL__N_120ISEAPlanarProjection14cartesianToGeoERK5PJ_XYPKNS_12pj_isea_dataERNS_8GeoPointE.exit

bb.q:                                             ; preds = %bb.p
  %i.bi = fptosi double %.099.i to i32
  %i.bj = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 0)
  %i.bk = tail call i32 @llvm.umin.i32(i32 %i.bj, i32 4) ; 4 uses
  %i.bl = fptosi double %.0100.i to i32
  %i.bm = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 0) ; 2 uses
  %i.bn = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 5) ; 3 uses
  %i.bo = icmp eq i32 %i.bm, %i.bk
  %i.bp = add nuw nsw i32 %i.bk, 1
  %i.bq = icmp eq i32 %i.bn, %i.bp
  %or.cond108.i = select i1 %i.bo, i1 true, i1 %i.bq
  br i1 %or.cond108.i, label %bb.r, label %_ZN12_GLOBAL__N_120ISEAPlanarProjection14cartesianToGeoERK5PJ_XYPKNS_12pj_isea_dataERNS_8GeoPointE.exit

bb.r:                                             ; preds = %bb.q
  %i.br = add nuw nsw i32 %i.bn, %i.bk
  %i.bs = uitofp nneg i32 %i.bk to double
  %i.bt = fsub double %.099.i, %i.bs
  %i.bu = uitofp nneg i32 %i.bn to double
  %i.bv = fsub double %.0100.i, %i.bu
  %i.bw = fcmp ogt double %i.bt, %i.bv            ; 10 uses
  switch i32 %i.br, label %default.unreachable [
    i32 0, label %bb.s
    i32 2, label %bb.t
    i32 4, label %bb.u
    i32 6, label %bb.v
    i32 8, label %bb.w
    i32 1, label %bb.x
    i32 3, label %bb.y
    i32 5, label %bb.z
    i32 7, label %bb.aa
    i32 9, label %bb.ab
  ]

bb.s:                                             ; preds = %bb.r
  br i1 %i.bw, label %select.unfold.i, label %.thread.i

bb.t:                                             ; preds = %bb.r
  %i.bx = select i1 %i.bw, i32 1, i32 6
  br label %.thread.i

bb.u:                                             ; preds = %bb.r
  %i.by = select i1 %i.bw, i32 2, i32 7
  br label %.thread.i

bb.v:                                             ; preds = %bb.r
  %i.bz = select i1 %i.bw, i32 3, i32 8
  br label %.thread.i

bb.w:                                             ; preds = %bb.r
  %i.ca = select i1 %i.bw, i32 4, i32 9
  br label %.thread.i

bb.x:                                             ; preds = %bb.r
  %i.cb = select i1 %i.bw, i32 10, i32 15
  br label %bb.ac

bb.y:                                             ; preds = %bb.r
  %i.cc = select i1 %i.bw, i32 11, i32 16
  br label %bb.ac

bb.z:                                             ; preds = %bb.r
  %i.cd = select i1 %i.bw, i32 12, i32 17
  br label %bb.ac

bb.aa:                                            ; preds = %bb.r
  %i.ce = select i1 %i.bw, i32 13, i32 18
  br label %bb.ac

bb.ab:                                            ; preds = %bb.r
  %i.cf = select i1 %i.bw, i32 14, i32 19
  br label %bb.ac

select.unfold.i:                                  ; preds = %bb.s
  br label %.thread.i

.thread.i:                                        ; preds = %select.unfold.i, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %.098.ph.i = phi i32 [ 0, %select.unfold.i ], [ %i.ca, %bb.w ], [ %i.bz, %bb.v ], [ %i.by, %bb.u ], [ %i.bx, %bb.t ], [ 5, %bb.s ] ; 2 uses
  %.cmp.i = icmp samesign ugt i32 %.098.ph.i, 4
  %i.cg = zext i1 %.cmp.i to i8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %.098.i = phi i32 [ %i.cf, %bb.ab ], [ %i.ce, %bb.aa ], [ %i.cb, %bb.x ], [ %i.cc, %bb.y ], [ %i.cd, %bb.z ] ; 2 uses
  %.lhs.trunc.i = trunc nuw nsw i32 %.098.i to i8
  %i.ch = udiv i8 %.lhs.trunc.i, 5
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.thread.i
  %.sink.i = phi i8 [ %i.cg, %.thread.i ], [ %i.ch, %bb.ac ] ; 2 uses
  %.098.ph.sink.i = phi i32 [ %.098.ph.i, %.thread.i ], [ %.098.i, %bb.ac ] ; 4 uses
  %i.ci = phi i32 [ 1, %.thread.i ], [ 2, %bb.ac ]
  %.zext37.i = zext nneg i8 %.sink.i to i32
  %.neg38.i = mul nsw i32 %.zext37.i, -5
  %i.cj = add nsw i32 %.neg38.i, %.098.ph.sink.i
  %i.ck = shl nsw i32 %i.cj, 1
  %i.cl = add nsw i32 %i.ck, %i.ci
  %i.cm = sitofp i32 %i.cl to double
  %i.cn = fmul double %.pre.i, %i.cm
  %i.co = fmul double %i.cn, 5.000000e-01
  %i.cp = fsub double %.sroa.070.0.i, %i.co       ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.cr = zext nneg i8 %.sink.i to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !45
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !64
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cv, double 3.000000e+00, double %i.ct)
  %i.cx = extractelement <2 x double> %i.m, i64 1
  %i.cy = fsub double %i.cx, %i.cw                ; 3 uses
  %i.cz = tail call double @atan2(double noundef %i.cp, double noundef %i.cy) #17
  %i.da = fmul double %i.cy, %i.cy
  %i.db = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.cp, double %i.da)
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.db)
  %i.dc = icmp samesign ult i32 %.098.ph.sink.i, 5
  br i1 %i.dc, label %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dd = add nsw i32 %.098.ph.sink.i, -10
  %i.de = icmp ult i32 %i.dd, 5
  %i.df = select i1 %i.de, double 0.000000e+00, double f0x400921FB54442D18
  br label %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i

_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i: ; preds = %bb.ae, %bb.ad
  %i.dg = phi double [ 0.000000e+00, %bb.ad ], [ %i.df, %bb.ae ] ; 3 uses
  %i.dh = fadd double %i.cz, %i.dg                ; 3 uses
  %i.di = fcmp olt double %i.dh, 0.000000e+00
  br i1 %i.di, label %.lr.ph.i.i.preheader, label %.preheader.i.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i
  %3 = insertelement <2 x double> poison, double %i.dh, i64 0
  %4 = insertelement <2 x double> %3, double %i.dg, i64 1
  br label %.lr.ph.i.i

.preheader.i.i.loopexit:                          ; preds = %.lr.ph.i.i
  %5 = extractelement <2 x double> %i.dl, i64 1
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.loopexit, %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i
  %.082.lcssa.i.i = phi double [ %i.dg, %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i ], [ %5, %.preheader.i.i.loopexit ] ; 2 uses
  %.081.lcssa.i.i = phi double [ %i.dh, %_ZN12_GLOBAL__N_120ISEAPlanarProjection15faceOrientationEi.exit.i.i ], [ %i.dm, %.preheader.i.i.loopexit ] ; 3 uses
  %i.dj = fcmp ogt double %.081.lcssa.i.i, f0x4000C152382D7365
  br i1 %i.dj, label %.lr.ph93.i.i.preheader, label %._crit_edge.i.i

.lr.ph93.i.i.preheader:                           ; preds = %.preheader.i.i
  %6 = insertelement <2 x double> poison, double %.082.lcssa.i.i, i64 0
  %7 = insertelement <2 x double> %6, double %.081.lcssa.i.i, i64 1
  br label %.lr.ph93.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.dk = phi <2 x double> [ %i.dl, %.lr.ph.i.i ], [ %4, %.lr.ph.i.i.preheader ]
  %i.dl = fadd <2 x double> %i.dk, splat (double f0x4000C152382D7365) ; 3 uses
  %i.dm = extractelement <2 x double> %i.dl, i64 0 ; 2 uses
  %i.dn = fcmp olt double %i.dm, 0.000000e+00
  br i1 %i.dn, label %.lr.ph.i.i, label %.preheader.i.i.loopexit, !llvm.loop !93

.lr.ph93.i.i:                                     ; preds = %.lr.ph93.i.i.preheader, %.lr.ph93.i.i
  %i.do = phi <2 x double> [ %i.dp, %.lr.ph93.i.i ], [ %7, %.lr.ph93.i.i.preheader ]
  %i.dp = fadd <2 x double> %i.do, splat (double f0xC000C152382D7365) ; 3 uses
  %i.dq = extractelement <2 x double> %i.dp, i64 1 ; 2 uses
  %i.dr = fcmp ogt double %i.dq, f0x4000C152382D7365
  br i1 %i.dr, label %.lr.ph93.i.i, label %._crit_edge.i.i.loopexit, !llvm.loop !94

._crit_edge.i.i.loopexit:                         ; preds = %.lr.ph93.i.i
  %i.ds = extractelement <2 x double> %i.dp, i64 0
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit, %.preheader.i.i
  %.183.lcssa.i.i = phi double [ %.082.lcssa.i.i, %.preheader.i.i ], [ %i.ds, %._crit_edge.i.i.loopexit ]
  %.1.lcssa.i.i = phi double [ %.081.lcssa.i.i, %.preheader.i.i ], [ %i.dq, %._crit_edge.i.i.loopexit ] ; 3 uses
  %i.dt = tail call double @sin(double noundef %.1.lcssa.i.i) #17 ; 2 uses
  %i.du = tail call double @cos(double noundef %.1.lcssa.i.i) #17 ; 2 uses
  %i.dv = fdiv double %i.du, %i.dt
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !65
  %i.dy = fadd double %i.dv, f0x3FFBB67AE8584CAB
  %i.dz = fmul double %i.dy, 2.000000e+00
  %i.ea = fdiv double %i.dx, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !60
  %i.ed = fdiv double %i.ea, %i.ec
  %i.ee = fadd double %i.ed, f0x40041B2F769CF0E0
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %._crit_edge.i.i
  %.08596.i.i = phi double [ %.1.lcssa.i.i, %._crit_edge.i.i ], [ %i.ew, %bb.af ] ; 4 uses
  %i.ef = tail call double @sin(double noundef %.08596.i.i) #17
  %i.eg = tail call double @cos(double noundef %.08596.i.i) #17
  %i.eh = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %i.eg, i64 1 ; 2 uses
  %i.ej = fmul <2 x double> %i.ei, <double f0x3FE9E3779B97F4A8, double f0xBFE9E3779B97F4A8>
  %i.ek = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> splat (double f0x3FDDE4BD6E524E1F), <2 x double> %i.ej) ; 2 uses
  %i.em = extractelement <2 x double> %i.el, i64 1
  %i.en = tail call double @acos(double noundef %i.em) #17 ; 2 uses
  %i.eo = fsub double %i.ee, %i.en
  %i.ep = fsub double %i.eo, %.08596.i.i
  %i.eq = tail call double @sin(double noundef %i.en) #17
  %i.er = extractelement <2 x double> %i.el, i64 0
  %i.es = fdiv double %i.er, %i.eq
  %i.et = fadd double %i.es, -1.000000e+00
  %i.eu = fneg double %i.ep
  %i.ev = fdiv double %i.eu, %i.et                ; 2 uses
  %i.ew = fadd double %.08596.i.i, %i.ev          ; 4 uses
  %i.ex = tail call double @llvm.fabs.f64(double %i.ev)
  %i.ey = fcmp ogt double %i.ex, f0x3D4890361A0F3B4B
  br i1 %i.ey, label %bb.af, label %bb.ag, !llvm.loop !95

bb.ag:                                            ; preds = %bb.af
  %i.ez = tail call double @sin(double noundef %i.ew) #17
  %i.fa = tail call double @cos(double noundef %i.ew) #17
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.fc = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.dt, i64 1
  %i.fe = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.ff = insertelement <2 x double> %i.fe, double %i.du, i64 1
  %i.fg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> splat (double f0x3FFBB67AE8584CAB), <2 x double> %i.ff) ; 2 uses
  %i.fh = extractelement <2 x double> %i.fg, i64 0
  %i.fi = tail call double @atan2(double noundef f0x3FE8722191A02D61, double noundef %i.fh) #17
  %i.fj = load double, ptr %i.fb, align 8, !tbaa !63
  %i.fk = extractelement <2 x double> %i.fg, i64 1
  %i.fl = fdiv double %i.fj, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !62 ; 2 uses
  %i.fo = fmul double %i.fi, 5.000000e-01
  %i.fp = tail call double @sin(double noundef %i.fo) #17
  %i.fq = fmul double %i.fn, %i.fp
  %i.fr = fdiv double %i.fl, %i.fq
  %i.fs = fmul double %i.fn, %i.fr
  %i.ft = fdiv double %sqrt.i.i, %i.fs
  %i.fu = tail call double @asin(double noundef %i.ft) #17
  %i.fv = fmul double %i.fu, 2.000000e+00         ; 2 uses
  %i.fw = fsub double %i.ew, %.183.lcssa.i.i      ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.fy = zext nneg i32 %.098.ph.sink.i to i64    ; 2 uses
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fx, i64 %i.fy ; 2 uses
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !76 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !78
  %i.gd = tail call double @sin(double noundef %i.fv) #17
  %i.ge = tail call double @cos(double noundef %i.fv) #17 ; 2 uses
  %i.gf = fmul double %i.gc, %i.gd                ; 2 uses
  %i.gg = tail call double @cos(double noundef %i.fw) #17
  %i.gh = fmul double %i.gf, %i.gg
  %i.gi = tail call double @llvm.fmuladd.f64(double %i.ga, double %i.ge, double %i.gh) ; 4 uses
  %i.gj = tail call double @llvm.fabs.f64(double %i.gi)
  %i.gk = fcmp olt double %i.gj, 1.000000e-15
  br i1 %i.gk, label %_ZL10safeArcSind.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gl = fadd double %i.gi, -1.000000e+00
  %i.gm = tail call double @llvm.fabs.f64(double %i.gl)
  %i.gn = fcmp olt double %i.gm, 1.000000e-15
  br i1 %i.gn, label %_ZL10safeArcSind.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.go = fadd double %i.gi, 1.000000e+00
  %i.gp = tail call double @llvm.fabs.f64(double %i.go)
  %i.gq = fcmp olt double %i.gp, 1.000000e-15
  br i1 %i.gq, label %_ZL10safeArcSind.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gr = tail call double @asin(double noundef %i.gi) #17
  br label %_ZL10safeArcSind.exit.i.i

_ZL10safeArcSind.exit.i.i:                        ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.gs = phi double [ 0.000000e+00, %bb.ag ], [ f0x3FF921FB54442D18, %bb.ah ], [ %i.gr, %bb.aj ], [ f0xBFF921FB54442D18, %bb.ai ] ; 5 uses
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr @_ZL31facesCenterDodecahedronVertices, i64 %i.fy
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !74
  %i.gw = tail call double @sin(double noundef %i.fw) #17
  %i.gx = fmul double %i.gf, %i.gw
  %i.gy = tail call double @sin(double noundef %i.gs) #17
  %i.gz = fneg double %i.ga
  %i.ha = tail call double @llvm.fmuladd.f64(double %i.gz, double %i.gy, double %i.ge)
  %i.hb = tail call double @atan2(double noundef %i.gx, double noundef %i.ha) #17
  %i.hc = fadd double %i.gv, %i.hb
  %i.hd = tail call double @llvm.fabs.f64(double %i.gs)
  %or.cond.i.i.i = fcmp ogt double %i.hd, f0x3FF921FB256A5D67
  %i.he = select i1 %or.cond.i.i.i, double 0.000000e+00, double %i.hc ; 3 uses
  %i.hf = load double, ptr %i.d, align 8, !tbaa !96
  %i.hg = fcmp une double %i.hf, 0.000000e+00
  %i.hh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hi = load double, ptr %i.hh, align 8         ; 2 uses
  %i.hj = fcmp une double %i.hi, 0.000000e+00
  %or.cond24.i.i.i = select i1 %i.hg, i1 true, i1 %i.hj
  br i1 %or.cond24.i.i.i, label %bb.ak, label %_ZN12_GLOBAL__N_120ISEAPlanarProjection19icosahedronToSphereERKNS_13ISEAFacePointEPKNS_12pj_isea_dataERNS_8GeoPointE.exit.i

bb.ak:                                            ; preds = %_ZL10safeArcSind.exit.i.i
  %i.hk = tail call double @sin(double noundef %i.gs) #17
  %i.hl = tail call double @cos(double noundef %i.gs) #17 ; 2 uses
  %i.hm = tail call double @sin(double noundef %i.he) #17
  %i.hn = tail call double @cos(double noundef %i.he) #17
  %i.ho = fmul double %i.hl, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !98
  %i.hr = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !99 ; 2 uses
  %i.ht = fneg double %i.hs
  %i.hu = fmul double %i.hl, %i.hm
  %i.hv = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.hw = insertelement <2 x double> %i.hv, double %i.ho, i64 1 ; 2 uses
  %i.hx = insertelement <2 x double> poison, double %i.hs, i64 0
  %i.hy = insertelement <2 x double> %i.hx, double %i.ht, i64 1
  %i.hz = fmul <2 x double> %i.hw, %i.hy
  %i.ia = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ib = insertelement <2 x double> poison, double %i.hq, i64 0
  %i.ic = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> zeroinitializer
  %i.id = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %i.ic, <2 x double> %i.hz) ; 2 uses
  %i.ie = extractelement <2 x double> %i.id, i64 1
  %i.if = tail call double @asin(double noundef %i.ie) #17
  %i.ig = extractelement <2 x double> %i.id, i64 0
  %i.ih = tail call double @atan2(double noundef %i.hu, double noundef %i.ig) #17
  %i.ii = fsub double %i.ih, %i.hi
  br label %_ZN12_GLOBAL__N_120ISEAPlanarProjection19icosahedronToSphereERKNS_13ISEAFacePointEPKNS_12pj_isea_dataERNS_8GeoPointE.exit.i

_ZN12_GLOBAL__N_120ISEAPlanarProjection19icosahedronToSphereERKNS_13ISEAFacePointEPKNS_12pj_isea_dataERNS_8GeoPointE.exit.i: ; preds = %bb.ak, %_ZL10safeArcSind.exit.i.i
  %.sink108.i.i = phi double [ %i.gs, %_ZL10safeArcSind.exit.i.i ], [ %i.if, %bb.ak ] ; 3 uses
  %.sink.i.i = phi double [ %i.he, %_ZL10safeArcSind.exit.i.i ], [ %i.ii, %bb.ak ] ; 5 uses
  %i.ij = fcmp olt double %.sink.i.i, f0xC00921FB5444850E
  br i1 %i.ij, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN12_GLOBAL__N_120ISEAPlanarProjection19icosahedronToSphereERKNS_13ISEAFacePointEPKNS_12pj_isea_dataERNS_8GeoPointE.exit.i
  %i.ik = fadd double %.sink.i.i, f0x401921FB54442D18
  br label %_ZN12_GLOBAL__N_120ISEAPlanarProjection14cartesianToGeoERK5PJ_XYPKNS_12pj_isea_dataERNS_8GeoPointE.exit

bb.am:                                            ; preds = %_ZN12_GLOBAL__N_120ISEAPlanarProjection19icosahedronToSphereERKNS_13ISEAFacePointEPKNS_12pj_isea_dataERNS_8GeoPointE.exit.i
  %i.il = fcmp ogt double %.sink.i.i, f0x400921FB5444850E
  br i1 %i.il, label %bb.an, label %_ZN12_GLOBAL__N_120ISEAPlanarProjection14cartesianToGeoERK5PJ_XYPKNS_12pj_isea_dataERNS_8GeoPointE.exit

bb.an:                                            ; preds = %bb.am
  %i.im = fadd double %.sink.i.i, f0xC01921FB54442D18
  br label %_ZN12_GLOBAL__N_120ISEAPlanarProjection14cartesianToGeoERK5PJ_XYPKNS_12pj_isea_dataERNS_8GeoPointE.exit

default.unreachable:                              ; preds = %bb.r
  unreachable

_ZN12_GLOBAL__N_120ISEAPlanarProjection14cartesianToGeoERK5PJ_XYPKNS_12pj_isea_dataERNS_8GeoPointE.exit: ; preds = %bb.a, %bb.an, %bb.am, %bb.al, %bb.q, %bb.p
  %.sroa.09.1 = phi double [ +inf, %bb.p ], [ %i.ik, %bb.al ], [ %.sink.i.i, %bb.am ], [ %i.im, %bb.an ], [ +inf, %bb.q ], [ +inf, %bb.a ]
  %.sroa.4.1 = phi double [ +inf, %bb.p ], [ %.sink108.i.i, %bb.al ], [ %.sink108.i.i, %bb.am ], [ %.sink108.i.i, %bb.an ], [ +inf, %bb.q ], [ +inf, %bb.a ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.09.1, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.4.1, 1
  ret { double, double } %.fca.1.insert
}

declare i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare void @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #6

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare i32 @proj_errno_set(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z16proj_coord_errorv(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8) local_unnamed_addr #1

declare void @__cxa_end_catch() local_unnamed_addr
end_hunk_0
