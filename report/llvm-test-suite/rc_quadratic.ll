inline.NumInlined: 99
inline.NumDeleted: 3
begin_hunk_0_@updateRCModel:bb.a
  %i.bt = add i32 %i.ad, %i.bs
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bu
  store double %i.aa, ptr %i.bv, align 8, !tbaa !77
  %.not128 = icmp eq i32 %i.af, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !74 ; 2 uses
  br i1 %.not128, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = mul nsw i32 %i.bx, %i.ad
  %i.bz = add nsw i32 %i.by, %i.ag
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ca = add nsw i32 %i.bx, -1
  %i.cb = mul nsw i32 %i.ca, %i.ad
  %i.cc = add nsw i32 %i.cb, %i.ag
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.e
  %i.cd = phi ptr [ %i.r, %bb.e ], [ %i.u, %bb.n ], [ %i.u, %bb.o ]
  %.0116 = phi i32 [ %i.t, %bb.e ], [ %i.bz, %bb.n ], [ %i.cc, %bb.o ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !166
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1348
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !78
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !77 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store double %i.cm, ptr %i.cn, align 8, !tbaa !77
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 776
  store double %i.cm, ptr %i.co, align 8, !tbaa !77
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !77 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store double %i.cq, ptr %i.cr, align 8, !tbaa !77
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 944
  store double %i.cq, ptr %i.cs, align 8, !tbaa !77
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.cx = load <2 x double>, ptr %i.cv, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.cx, ptr %i.ct, align 8, !tbaa !77
  store <2 x double> %i.cx, ptr %i.cw, align 8, !tbaa !77
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.da = load <2 x double>, ptr %i.cy, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.da, ptr %i.cu, align 8, !tbaa !77
  store <2 x double> %i.da, ptr %i.cz, align 8, !tbaa !77
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.df = load <2 x double>, ptr %i.dd, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.df, ptr %i.db, align 8, !tbaa !77
  store <2 x double> %i.df, ptr %i.de, align 8, !tbaa !77
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.di = load <2 x double>, ptr %i.dg, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.di, ptr %i.dc, align 8, !tbaa !77
  store <2 x double> %i.di, ptr %i.dh, align 8, !tbaa !77
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.dn = load <2 x double>, ptr %i.dl, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.dn, ptr %i.dj, align 8, !tbaa !77
  store <2 x double> %i.dn, ptr %i.dm, align 8, !tbaa !77
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.dq = load <2 x double>, ptr %i.do, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.dq, ptr %i.dk, align 8, !tbaa !77
  store <2 x double> %i.dq, ptr %i.dp, align 8, !tbaa !77
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.dv = load <2 x double>, ptr %i.dt, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.dv, ptr %i.dr, align 8, !tbaa !77
  store <2 x double> %i.dv, ptr %i.du, align 8, !tbaa !77
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.dy = load <2 x double>, ptr %i.dw, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.dy, ptr %i.ds, align 8, !tbaa !77
  store <2 x double> %i.dy, ptr %i.dx, align 8, !tbaa !77
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.ed = load <2 x double>, ptr %i.eb, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.ed, ptr %i.dz, align 8, !tbaa !77
  store <2 x double> %i.ed, ptr %i.ec, align 8, !tbaa !77
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.eg = load <2 x double>, ptr %i.ee, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.eg, ptr %i.ea, align 8, !tbaa !77
  store <2 x double> %i.eg, ptr %i.ef, align 8, !tbaa !77
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.el = load <2 x double>, ptr %i.ej, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.el, ptr %i.eh, align 8, !tbaa !77
  store <2 x double> %i.el, ptr %i.ek, align 8, !tbaa !77
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.eo = load <2 x double>, ptr %i.em, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.eo, ptr %i.ei, align 8, !tbaa !77
  store <2 x double> %i.eo, ptr %i.en, align 8, !tbaa !77
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.et = load <2 x double>, ptr %i.er, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.et, ptr %i.ep, align 8, !tbaa !77
  store <2 x double> %i.et, ptr %i.es, align 8, !tbaa !77
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ew = load <2 x double>, ptr %i.eu, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.ew, ptr %i.eq, align 8, !tbaa !77
  store <2 x double> %i.ew, ptr %i.ev, align 8, !tbaa !77
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.fb = load <2 x double>, ptr %i.ez, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.fb, ptr %i.ex, align 8, !tbaa !77
  store <2 x double> %i.fb, ptr %i.fa, align 8, !tbaa !77
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.fe = load <2 x double>, ptr %i.fc, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.fe, ptr %i.ey, align 8, !tbaa !77
  store <2 x double> %i.fe, ptr %i.fd, align 8, !tbaa !77
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.fi = load <2 x double>, ptr %i.ch, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.fi, ptr %i.ff, align 8, !tbaa !77
  store <2 x double> %i.fi, ptr %i.fh, align 8, !tbaa !77
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.fk = load <2 x double>, ptr %i.cj, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.fk, ptr %i.fg, align 8, !tbaa !77
  store <2 x double> %i.fk, ptr %i.fj, align 8, !tbaa !77
  %i.fl = icmp slt i32 %.0116, 2
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !44
  %i.fo = tail call double @QP2Qstep(i32 noundef %i.fn) #20 ; 2 uses
  store double %i.fo, ptr %i.ch, align 8, !tbaa !77
  %i.fp = load ptr, ptr @img, align 8, !tbaa !8   ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 15404
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !92
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 15352
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !10
  %i.fu = icmp eq i32 %i.fr, %i.ft
  %i.fv = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !36 ; 4 uses
  %. = select i1 %i.fu, i64 20, i64 28
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !4
  %i.ga = sitofp i32 %i.fz to double
  %i.gb = fdiv double %i.ga, %i.fx                ; 2 uses
  store double %i.gb, ptr %i.cj, align 8, !tbaa !77
  store double %i.fo, ptr %i.ci, align 8, !tbaa !77
  store double %i.gb, ptr %i.ck, align 8, !tbaa !77
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 2 uses
  %i.ge = load <2 x double>, ptr %i.gc, align 8, !tbaa !77
  store <2 x double> %i.ge, ptr %i.gd, align 8, !tbaa !77
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !32 ; 3 uses
  %i.gi = fcmp ogt double %i.fx, %i.gh
  %i.gj = fdiv double %i.gh, %i.fx
  %i.gk = fdiv double %i.fx, %i.gh
  %.in.in = select i1 %i.gi, double %i.gj, double %i.gk
  %.in = fmul double %.in.in, 2.000000e+01
  %i.gl = fptosi double %.in to i32
  %i.gm = tail call noundef i32 @llvm.smax.i32(i32 %i.gl, i32 1)
  %i.gn = tail call noundef i32 @llvm.smin.i32(i32 %i.gm, i32 %.0116)
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 1340 ; 3 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !71
  %i.gq = add nsw i32 %i.gp, 1
  %i.gr = tail call noundef i32 @llvm.smin.i32(i32 %i.gn, i32 %i.gq)
  %i.gs = tail call noundef i32 @llvm.smin.i32(i32 %i.gr, i32 20) ; 2 uses
  store i32 %i.gs, ptr %i.go, align 4, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @updateRCModel.m_rgRejected, i8 0, i64 80, i1 false), !tbaa !4
  tail call void @RCModelEstimator(ptr noundef nonnull %0, i32 noundef %i.gs, ptr noundef nonnull @updateRCModel.m_rgRejected)
  %i.gt = load i32, ptr %i.go, align 4, !tbaa !71 ; 10 uses
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %.lr.ph, label %bb.r

.lr.ph:                                           ; preds = %bb.p
  %i.gv = load <2 x double>, ptr %i.gd, align 8, !tbaa !77 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.gt to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.gw = icmp eq i32 %i.gt, 1
  br i1 %i.gw, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.q ] ; 5 uses
  %.0117134 = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.hu, %bb.q ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.q ]
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !77 ; 3 uses
  %i.gz = fmul double %i.gy, %i.gy
  %i.ha = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.hb = insertelement <2 x double> %i.ha, double %i.gz, i64 1
  %i.hc = fdiv <2 x double> %i.gv, %i.hb          ; 2 uses
  %shift = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.hc, %shift
  %i.hd = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv
  %i.hf = load double, ptr %i.he, align 8, !tbaa !77
  %i.hg = fsub double %i.hd, %i.hf                ; 3 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr @updateRCModel.error, i64 %indvars.iv
  store double %i.hg, ptr %i.hh, align 16, !tbaa !77
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.hg, double %.0117134)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !77 ; 3 uses
  %i.hl = fmul double %i.hk, %i.hk
  %i.hm = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.hn = insertelement <2 x double> %i.hm, double %i.hl, i64 1
  %i.ho = fdiv <2 x double> %i.gv, %i.hn          ; 2 uses
  %shift.1 = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1 = fadd <2 x double> %i.ho, %shift.1
  %i.hp = extractelement <2 x double> %foldExtExtBinop.1, i64 0
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.next
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !77
  %i.hs = fsub double %i.hp, %i.hr                ; 3 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr @updateRCModel.error, i64 %indvars.iv.next
  store double %i.hs, ptr %i.ht, align 8, !tbaa !77
  %i.hu = tail call double @llvm.fmuladd.f64(double %i.hs, double %i.hs, double %i.hi) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.q, !llvm.loop !172

._crit_edge.unr-lcssa:                            ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.0117134.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.hu, %._crit_edge.unr-lcssa ]
  %lcmp.mod175 = trunc i32 %i.gt to i1
  tail call void @llvm.assume(i1 %lcmp.mod175)
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.epil.init
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !77 ; 3 uses
  %i.hx = fmul double %i.hw, %i.hw
  %i.hy = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.hz = insertelement <2 x double> %i.hy, double %i.hx, i64 1
  %i.ia = fdiv <2 x double> %i.gv, %i.hz          ; 2 uses
  %shift.epil = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.epil = fadd <2 x double> %i.ia, %shift.epil
  %i.ib = extractelement <2 x double> %foldExtExtBinop.epil, i64 0
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.epil.init
  %i.id = load double, ptr %i.ic, align 8, !tbaa !77
  %i.ie = fsub double %i.ib, %i.id                ; 3 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr @updateRCModel.error, i64 %indvars.iv.epil.init
  store double %i.ie, ptr %i.if, align 8, !tbaa !77
  %i.ig = tail call double @llvm.fmuladd.f64(double %i.ie, double %i.ie, double %.0117134.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa = phi double [ %i.hu, %._crit_edge.unr-lcssa ], [ %i.ig, %.epil.preheader ]
  %i.ih = icmp eq i32 %i.gt, 2
  br i1 %i.ih, label %.lr.ph137.preheader, label %.thread152

.thread152:                                       ; preds = %._crit_edge
  %i.ii = uitofp nneg i32 %i.gt to double
  %i.ij = fdiv double %.lcssa, %i.ii
  %i.ik = tail call double @sqrt(double noundef %i.ij) #20, !tbaa !4
  br label %.lr.ph137.preheader

bb.r:                                             ; preds = %bb.p
  %i.il = sitofp i32 %i.gt to double
  %i.im = fdiv double 0.000000e+00, %i.il
  %i.in = tail call double @sqrt(double noundef %i.im) #20, !tbaa !4 ; 0 uses
  br label %._crit_edge138

.lr.ph137.preheader:                              ; preds = %._crit_edge, %.thread152
  %i.io = phi double [ %i.ik, %.thread152 ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  %wide.trip.count145 = zext nneg i32 %i.gt to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.gt, 4
  br i1 %min.iters.check, label %.lr.ph137.preheader173, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph137.preheader
  %n.vec = and i64 %wide.trip.count145, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.io, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue171, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue171 ] ; 6 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr @updateRCModel.error, i64 %index ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %wide.load = load <2 x double>, ptr %i.ip, align 16, !tbaa !77
  %wide.load165 = load <2 x double>, ptr %i.iq, align 16, !tbaa !77
  %i.ir = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load)
  %i.is = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load165)
  %i.it = fcmp ogt <2 x double> %i.ir, %broadcast.splat ; 2 uses
  %i.iu = fcmp ogt <2 x double> %i.is, %broadcast.splat ; 2 uses
  %i.iv = extractelement <2 x i1> %i.it, i64 0
  br i1 %i.iv, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr @updateRCModel.m_rgRejected, i64 %index
  store i32 1, ptr %i.iw, align 16, !tbaa !4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ix = extractelement <2 x i1> %i.it, i64 1
  br i1 %i.ix, label %pred.store.if166, label %pred.store.continue167

pred.store.if166:                                 ; preds = %pred.store.continue
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr @updateRCModel.m_rgRejected, i64 %index
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  store i32 1, ptr %i.iz, align 4, !tbaa !4
  br label %pred.store.continue167

pred.store.continue167:                           ; preds = %pred.store.if166, %pred.store.continue
  %i.ja = extractelement <2 x i1> %i.iu, i64 0
  br i1 %i.ja, label %pred.store.if168, label %pred.store.continue169

pred.store.if168:                                 ; preds = %pred.store.continue167
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr @updateRCModel.m_rgRejected, i64 %index
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store i32 1, ptr %i.jc, align 8, !tbaa !4
  br label %pred.store.continue169

pred.store.continue169:                           ; preds = %pred.store.if168, %pred.store.continue167
  %i.jd = extractelement <2 x i1> %i.iu, i64 1
  br i1 %i.jd, label %pred.store.if170, label %pred.store.continue171

pred.store.if170:                                 ; preds = %pred.store.continue169
  %i.je = getelementptr inbounds nuw [4 x i8], ptr @updateRCModel.m_rgRejected, i64 %index
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 12
  store i32 1, ptr %i.jf, align 4, !tbaa !4
  br label %pred.store.continue171

pred.store.continue171:                           ; preds = %pred.store.if170, %pred.store.continue169
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jg = icmp eq i64 %index.next, %n.vec
  br i1 %i.jg, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %pred.store.continue171
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count145
  br i1 %cmp.n, label %._crit_edge138, label %.lr.ph137.preheader173

.lr.ph137.preheader173:                           ; preds = %.lr.ph137.preheader, %middle.block
  %indvars.iv142.ph = phi i64 [ 0, %.lr.ph137.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader173, %bb.t
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %bb.t ], [ %indvars.iv142.ph, %.lr.ph137.preheader173 ] ; 3 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr @updateRCModel.error, i64 %indvars.iv142
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !77
  %i.jj = tail call double @llvm.fabs.f64(double %i.ji)
  %i.jk = fcmp ogt double %i.jj, %i.io
  br i1 %i.jk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph137
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr @updateRCModel.m_rgRejected, i64 %indvars.iv142
  store i32 1, ptr %i.jl, align 4, !tbaa !4
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph137, %bb.s
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count145
  br i1 %exitcond146.not, label %._crit_edge138, label %.lr.ph137, !llvm.loop !174

._crit_edge138:                                   ; preds = %bb.t, %middle.block, %bb.r
  store i32 0, ptr @updateRCModel.m_rgRejected, align 16, !tbaa !4
  tail call void @RCModelEstimator(ptr noundef %0, i32 noundef %i.gt, ptr noundef nonnull @updateRCModel.m_rgRejected)
  br i1 %i.fl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge138
  tail call void @updateMADModel(ptr noundef %0)
  br label %bb.z

bb.v:                                             ; preds = %._crit_edge138
  %i.jm = load ptr, ptr @img, align 8, !tbaa !8   ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 20
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !93
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.jq = load ptr, ptr @input, align 8, !tbaa !8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 5136
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !57
  %i.jt = icmp eq i32 %i.js, 1
  br i1 %i.jt, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ju = load i32, ptr %i.jm, align 8, !tbaa !101
  %i.jv = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %.not130 = icmp eq i32 %i.ju, %i.jv
  br i1 %.not130, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.jw = load double, ptr %i.gf, align 8, !tbaa !36
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %i.jw, ptr %i.jx, align 8, !tbaa !77
  br label %bb.z

bb.z:                                             ; preds = %bb.u, %bb.y, %bb.x, %bb.w, %bb.c, %bb.b
  ret void
}

declare double @ComputeFrameMAD() local_unnamed_addr #3

declare double @QP2Qstep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @RCModelEstimator(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.preheader107.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader165, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %i.b = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %1, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.b, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi163 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load = load <4 x i32>, ptr %i.c, align 4, !tbaa !4
  %wide.load164 = load <4 x i32>, ptr %i.d, align 4, !tbaa !4
  %i.e = icmp ne <4 x i32> %wide.load, zeroinitializer
  %i.f = icmp ne <4 x i32> %wide.load164, zeroinitializer
  %i.g = sext <4 x i1> %i.e to <4 x i32>
  %i.h = sext <4 x i1> %i.f to <4 x i32>
  %i.i = add <4 x i32> %vec.phi, %i.g             ; 2 uses
  %i.j = add <4 x i32> %vec.phi163, %i.h          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.j, %i.i
  %i.l = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph113, label %.lr.ph.preheader165

.lr.ph.preheader165:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.082109.ph = phi i32 [ %1, %.lr.ph.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader165, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader165 ] ; 2 uses
  %.082109 = phi i32 [ %spec.select, %.lr.ph ], [ %.082109.ph, %.lr.ph.preheader165 ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %.not105 = icmp ne i32 %i.n, 0
  %i.o = sext i1 %.not105 to i32
  %spec.select = add nsw i32 %.082109, %i.o       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph113, label %.lr.ph, !llvm.loop !176

.preheader107.thread:                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %._crit_edge118.thread

.lr.ph113:                                        ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.l, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.t = icmp ult i32 %1, 4
  br i1 %i.t, label %.epil.preheader, label %.lr.ph113.new

.lr.ph113.new:                                    ; preds = %.lr.ph113
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.e

.lr.ph117.unr-lcssa:                              ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph117, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph117.unr-lcssa, %.lr.ph113
  %indvars.iv136.epil.init = phi i64 [ 0, %.lr.ph113 ], [ %indvars.iv.next137.3, %.lr.ph117.unr-lcssa ]
  %.096111.epil.init = phi double [ 0.000000e+00, %.lr.ph113 ], [ %.197.3, %.lr.ph117.unr-lcssa ]
  %lcmp.mod170 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv136.epil = phi i64 [ %indvars.iv136.epil.init, %.epil.preheader ], [ %indvars.iv.next137.epil, %bb.d ] ; 3 uses
  %.096111.epil = phi double [ %.096111.epil.init, %.epil.preheader ], [ %.197.epil, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv136.epil
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %.not104.epil = icmp eq i32 %i.v, 0
  br i1 %.not104.epil, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv136.epil
  %i.x = load double, ptr %i.w, align 8, !tbaa !77
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.197.epil = phi double [ %.096111.epil, %bb.b ], [ %i.x, %bb.c ] ; 2 uses
  %indvars.iv.next137.epil = add nuw nsw i64 %indvars.iv136.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph117, label %bb.b, !llvm.loop !177

.lr.ph117:                                        ; preds = %bb.d, %.lr.ph117.unr-lcssa
  %.197.lcssa = phi double [ %.197.3, %.lr.ph117.unr-lcssa ], [ %.197.epil, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.aa = sitofp i32 %spec.select.lcssa to double
  %wide.trip.count144 = zext nneg i32 %1 to i64
  br label %._crit_edge151

bb.e:                                             ; preds = %bb.m, %.lr.ph113.new
  %indvars.iv136 = phi i64 [ 0, %.lr.ph113.new ], [ %indvars.iv.next137.3, %bb.m ] ; 6 uses
  %.096111 = phi double [ 0.000000e+00, %.lr.ph113.new ], [ %.197.3, %bb.m ]
  %niter = phi i64 [ 0, %.lr.ph113.new ], [ %niter.next.3, %bb.m ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv136
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %.not104 = icmp eq i32 %i.ac, 0
  br i1 %.not104, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv136
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !77
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.197 = phi double [ %.096111, %bb.e ], [ %i.ae, %bb.f ]
  %indvars.iv.next137 = or disjoint i64 %indvars.iv136, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@updateMADModel:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.u = load double, ptr %i.t, align 8, !tbaa !77 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 272
  store double %i.u, ptr %i.v, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 440
  store double %i.u, ptr %i.w, align 8, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.y = load double, ptr %i.x, align 8, !tbaa !77
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 608
  store double %i.y, ptr %i.z, align 8, !tbaa !77
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ad = load <2 x double>, ptr %i.ac, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.ad, ptr %i.aa, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 424
  store <2 x double> %i.ad, ptr %i.ae, align 8, !tbaa !77
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ag = load <2 x double>, ptr %i.af, align 8, !tbaa !77
  store <2 x double> %i.ag, ptr %i.ab, align 8, !tbaa !77
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ak = load <2 x double>, ptr %i.aj, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.ak, ptr %i.ah, align 8, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 408
  store <2 x double> %i.ak, ptr %i.al, align 8, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.an = load <2 x double>, ptr %i.am, align 8, !tbaa !77
  store <2 x double> %i.an, ptr %i.ai, align 8, !tbaa !77
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ar = load <2 x double>, ptr %i.aq, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.ar, ptr %i.ao, align 8, !tbaa !77
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 392
  store <2 x double> %i.ar, ptr %i.as, align 8, !tbaa !77
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.au = load <2 x double>, ptr %i.at, align 8, !tbaa !77
  store <2 x double> %i.au, ptr %i.ap, align 8, !tbaa !77
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ay = load <2 x double>, ptr %i.ax, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.ay, ptr %i.av, align 8, !tbaa !77
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 376
  store <2 x double> %i.ay, ptr %i.az, align 8, !tbaa !77
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.bb = load <2 x double>, ptr %i.ba, align 8, !tbaa !77
  store <2 x double> %i.bb, ptr %i.aw, align 8, !tbaa !77
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bf = load <2 x double>, ptr %i.be, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.bf, ptr %i.bc, align 8, !tbaa !77
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 360
  store <2 x double> %i.bf, ptr %i.bg, align 8, !tbaa !77
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.bi = load <2 x double>, ptr %i.bh, align 8, !tbaa !77
  store <2 x double> %i.bi, ptr %i.bd, align 8, !tbaa !77
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bm = load <2 x double>, ptr %i.bl, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.bm, ptr %i.bj, align 8, !tbaa !77
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 344
  store <2 x double> %i.bm, ptr %i.bn, align 8, !tbaa !77
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bp = load <2 x double>, ptr %i.bo, align 8, !tbaa !77
  store <2 x double> %i.bp, ptr %i.bk, align 8, !tbaa !77
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bt = load <2 x double>, ptr %i.bs, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.bt, ptr %i.bq, align 8, !tbaa !77
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 328
  store <2 x double> %i.bt, ptr %i.bu, align 8, !tbaa !77
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.bw = load <2 x double>, ptr %i.bv, align 8, !tbaa !77
  store <2 x double> %i.bw, ptr %i.br, align 8, !tbaa !77
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ca = load <2 x double>, ptr %i.bz, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.ca, ptr %i.bx, align 8, !tbaa !77
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 312
  store <2 x double> %i.ca, ptr %i.cb, align 8, !tbaa !77
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.cd = load <2 x double>, ptr %i.cc, align 8, !tbaa !77
  store <2 x double> %i.cd, ptr %i.by, align 8, !tbaa !77
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.cg = load <2 x double>, ptr %i.q, align 8, !tbaa !77 ; 3 uses
  store <2 x double> %i.cg, ptr %i.ce, align 8, !tbaa !77
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ci = extractelement <2 x double> %i.cg, i64 0
  store <2 x double> %i.cg, ptr %i.ch, align 8, !tbaa !77
  %i.cj = load <2 x double>, ptr %i.s, align 8, !tbaa !77
  store <2 x double> %i.cj, ptr %i.cf, align 8, !tbaa !77
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !36 ; 6 uses
  store double %i.cl, ptr %i.q, align 8, !tbaa !77
  store double %i.cl, ptr %i.r, align 8, !tbaa !77
  br i1 %i.j, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cm = load ptr, ptr @input, align 8, !tbaa !8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4704
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !94
  %i.cp = icmp eq i32 %i.co, 2
  br i1 %i.cp, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 4708
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !95
  %.not = icmp eq i32 %i.cr, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !88
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h
  %.sink117 = phi i64 [ 1472, %bb.h ], [ 1496, %bb.g ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 %.sink117
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !56
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !67
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !110
  %i.db = xor i32 %i.da, -1
  %i.dc = add i32 %i.cy, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.dd
  %i.df = load double, ptr %i.de, align 8, !tbaa !77
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.d
  %.sink = phi double [ %i.ci, %bb.d ], [ %i.df, %.sink.split ]
  store double %.sink, ptr %i.s, align 8, !tbaa !77
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dj = load <2 x double>, ptr %i.dg, align 8, !tbaa !77
  store <2 x double> %i.dj, ptr %i.dh, align 8, !tbaa !77
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1424 ; 2 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !32 ; 3 uses
  %i.dm = fcmp ogt double %i.cl, %i.dl
  %i.dn = fmul double %i.dl, 2.000000e+01
  %i.do = fdiv double %i.dn, %i.cl
  %i.dp = fmul double %i.cl, 2.000000e+01
  %i.dq = fdiv double %i.dp, %i.dl
  %.in = select i1 %i.dm, double %i.do, double %i.dq
  %i.dr = fptosi double %.in to i32
  %i.ds = add nsw i32 %.0, -1
  %i.dt = tail call noundef i32 @llvm.smax.i32(i32 %i.dr, i32 1)
  %i.du = tail call noundef i32 @llvm.smin.i32(i32 %i.dt, i32 %i.ds)
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !72
  %i.dx = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 19)
  %i.dy = add nsw i32 %i.dx, 1
  %i.dz = tail call noundef i32 @llvm.smin.i32(i32 %i.du, i32 %i.dy) ; 12 uses
  store i32 %i.dz, ptr %i.dv, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @updateMADModel.PictureRejected, i8 0, i64 80, i1 false), !tbaa !4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !93
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ed = load ptr, ptr @input, align 8, !tbaa !8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 5136
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !57
  %i.eg = icmp eq i32 %i.ef, 1
  br i1 %i.eg, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.eh = load i32, ptr %i.e, align 8, !tbaa !101
  %i.ei = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %.not84 = icmp eq i32 %i.eh, %i.ei
  br i1 %.not84, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store double %i.cl, ptr %i.dk, align 8, !tbaa !32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  tail call void @MADModelEstimator(ptr noundef nonnull %0, i32 noundef %i.dz, ptr noundef nonnull @updateMADModel.PictureRejected)
  %i.ej = icmp sgt i32 %i.dz, 0
  br i1 %i.ej, label %.lr.ph, label %bb.o

.lr.ph:                                           ; preds = %bb.m
  %i.ek = load double, ptr %i.dh, align 8, !tbaa !184 ; 3 uses
  %i.el = load double, ptr %i.di, align 8, !tbaa !185 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.dz to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.em = icmp eq i32 %i.dz, 1
  br i1 %i.em, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.n ] ; 5 uses
  %.07688 = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.fc, %bb.n ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.n ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.eo = load double, ptr %i.en, align 8, !tbaa !77
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.ek, double %i.eo, double %i.el)
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.er = load double, ptr %i.eq, align 8, !tbaa !77
  %i.es = fsub double %i.ep, %i.er                ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr @updateMADModel.error, i64 %indvars.iv
  store double %i.es, ptr %i.et, align 16, !tbaa !77
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.es, double %i.es, double %.07688)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !77
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.ek, double %i.ew, double %i.el)
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !77
  %i.fa = fsub double %i.ex, %i.ez                ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr @updateMADModel.error, i64 %indvars.iv.next
  store double %i.fa, ptr %i.fb, align 8, !tbaa !77
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.fa, double %i.fa, double %i.eu) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.n, !llvm.loop !186

._crit_edge.unr-lcssa:                            ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.07688.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.fc, %._crit_edge.unr-lcssa ]
  %lcmp.mod127 = trunc i32 %i.dz to i1
  tail call void @llvm.assume(i1 %lcmp.mod127)
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.epil.init
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !77
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.ek, double %i.fe, double %i.el)
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.epil.init
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !77
  %i.fi = fsub double %i.ff, %i.fh                ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr @updateMADModel.error, i64 %indvars.iv.epil.init
  store double %i.fi, ptr %i.fj, align 8, !tbaa !77
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fi, double %i.fi, double %.07688.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa = phi double [ %i.fc, %._crit_edge.unr-lcssa ], [ %i.fk, %.epil.preheader ]
  %i.fl = icmp eq i32 %i.dz, 2
  br i1 %i.fl, label %.lr.ph91.preheader, label %.thread105

.thread105:                                       ; preds = %._crit_edge
  %i.fm = uitofp nneg i32 %i.dz to double
  %i.fn = fdiv double %.lcssa, %i.fm
  %i.fo = tail call double @sqrt(double noundef %i.fn) #20, !tbaa !4
  br label %.lr.ph91.preheader

bb.o:                                             ; preds = %bb.m
  %i.fp = sitofp i32 %i.dz to double
  %i.fq = fdiv double 0.000000e+00, %i.fp
  %i.fr = tail call double @sqrt(double noundef %i.fq) #20, !tbaa !4 ; 0 uses
  br label %._crit_edge92

.lr.ph91.preheader:                               ; preds = %._crit_edge, %.thread105
  %i.fs = phi double [ %i.fo, %.thread105 ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  %wide.trip.count99 = zext nneg i32 %i.dz to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.dz, 4
  br i1 %min.iters.check, label %.lr.ph91.preheader125, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph91.preheader
  %n.vec = and i64 %wide.trip.count99, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fs, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue124, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue124 ] ; 6 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr @updateMADModel.error, i64 %index ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %wide.load = load <2 x double>, ptr %i.ft, align 16, !tbaa !77
  %wide.load118 = load <2 x double>, ptr %i.fu, align 16, !tbaa !77
  %i.fv = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load)
  %i.fw = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load118)
  %i.fx = fcmp ogt <2 x double> %i.fv, %broadcast.splat ; 2 uses
  %i.fy = fcmp ogt <2 x double> %i.fw, %broadcast.splat ; 2 uses
  %i.fz = extractelement <2 x i1> %i.fx, i64 0
  br i1 %i.fz, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr @updateMADModel.PictureRejected, i64 %index
  store i32 1, ptr %i.ga, align 16, !tbaa !4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.gb = extractelement <2 x i1> %i.fx, i64 1
  br i1 %i.gb, label %pred.store.if119, label %pred.store.continue120

pred.store.if119:                                 ; preds = %pred.store.continue
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr @updateMADModel.PictureRejected, i64 %index
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  store i32 1, ptr %i.gd, align 4, !tbaa !4
  br label %pred.store.continue120

pred.store.continue120:                           ; preds = %pred.store.if119, %pred.store.continue
  %i.ge = extractelement <2 x i1> %i.fy, i64 0
  br i1 %i.ge, label %pred.store.if121, label %pred.store.continue122

pred.store.if121:                                 ; preds = %pred.store.continue120
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr @updateMADModel.PictureRejected, i64 %index
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store i32 1, ptr %i.gg, align 8, !tbaa !4
  br label %pred.store.continue122

pred.store.continue122:                           ; preds = %pred.store.if121, %pred.store.continue120
  %i.gh = extractelement <2 x i1> %i.fy, i64 1
  br i1 %i.gh, label %pred.store.if123, label %pred.store.continue124

pred.store.if123:                                 ; preds = %pred.store.continue122
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr @updateMADModel.PictureRejected, i64 %index
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  store i32 1, ptr %i.gj, align 4, !tbaa !4
  br label %pred.store.continue124

pred.store.continue124:                           ; preds = %pred.store.if123, %pred.store.continue122
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gk, label %middle.block, label %vector.body, !llvm.loop !187

middle.block:                                     ; preds = %pred.store.continue124
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count99
  br i1 %cmp.n, label %._crit_edge92, label %.lr.ph91.preheader125

.lr.ph91.preheader125:                            ; preds = %.lr.ph91.preheader, %middle.block
  %indvars.iv96.ph = phi i64 [ 0, %.lr.ph91.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph91

.lr.ph91:                                         ; preds = %.lr.ph91.preheader125, %bb.q
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %bb.q ], [ %indvars.iv96.ph, %.lr.ph91.preheader125 ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr @updateMADModel.error, i64 %indvars.iv96
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !77
  %i.gn = tail call double @llvm.fabs.f64(double %i.gm)
  %i.go = fcmp ogt double %i.gn, %i.fs
  br i1 %i.go, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph91
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr @updateMADModel.PictureRejected, i64 %indvars.iv96
  store i32 1, ptr %i.gp, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph91, %bb.p
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %._crit_edge92, label %.lr.ph91, !llvm.loop !188

._crit_edge92:                                    ; preds = %bb.q, %middle.block, %bb.o
  store i32 0, ptr @updateMADModel.PictureRejected, align 16, !tbaa !4
  tail call void @MADModelEstimator(ptr noundef %0, i32 noundef %i.dz, ptr noundef nonnull @updateMADModel.PictureRejected)
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge92, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @MADModelEstimator(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.preheader107.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader165, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %i.b = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %1, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.b, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi163 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load = load <4 x i32>, ptr %i.c, align 4, !tbaa !4
  %wide.load164 = load <4 x i32>, ptr %i.d, align 4, !tbaa !4
  %i.e = icmp ne <4 x i32> %wide.load, zeroinitializer
  %i.f = icmp ne <4 x i32> %wide.load164, zeroinitializer
  %i.g = sext <4 x i1> %i.e to <4 x i32>
  %i.h = sext <4 x i1> %i.f to <4 x i32>
  %i.i = add <4 x i32> %vec.phi, %i.g             ; 2 uses
  %i.j = add <4 x i32> %vec.phi163, %i.h          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !189

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.j, %i.i
  %i.l = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph113, label %.lr.ph.preheader165

.lr.ph.preheader165:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.082109.ph = phi i32 [ %1, %.lr.ph.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader165, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader165 ] ; 2 uses
  %.082109 = phi i32 [ %spec.select, %.lr.ph ], [ %.082109.ph, %.lr.ph.preheader165 ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %.not105 = icmp ne i32 %i.n, 0
  %i.o = sext i1 %.not105 to i32
  %spec.select = add nsw i32 %.082109, %i.o       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph113, label %.lr.ph, !llvm.loop !190

.preheader107.thread:                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %._crit_edge118.thread

.lr.ph113:                                        ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.l, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.t = icmp ult i32 %1, 4
  br i1 %i.t, label %.epil.preheader, label %.lr.ph113.new

.lr.ph113.new:                                    ; preds = %.lr.ph113
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.e

.lr.ph117.unr-lcssa:                              ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph117, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph117.unr-lcssa, %.lr.ph113
  %indvars.iv136.epil.init = phi i64 [ 0, %.lr.ph113 ], [ %indvars.iv.next137.3, %.lr.ph117.unr-lcssa ]
  %.096111.epil.init = phi double [ 0.000000e+00, %.lr.ph113 ], [ %.197.3, %.lr.ph117.unr-lcssa ]
  %lcmp.mod170 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv136.epil = phi i64 [ %indvars.iv136.epil.init, %.epil.preheader ], [ %indvars.iv.next137.epil, %bb.d ] ; 3 uses
  %.096111.epil = phi double [ %.096111.epil.init, %.epil.preheader ], [ %.197.epil, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv136.epil
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %.not104.epil = icmp eq i32 %i.v, 0
  br i1 %.not104.epil, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv136.epil
  %i.x = load double, ptr %i.w, align 8, !tbaa !77
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.197.epil = phi double [ %.096111.epil, %bb.b ], [ %i.x, %bb.c ] ; 2 uses
  %indvars.iv.next137.epil = add nuw nsw i64 %indvars.iv136.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph117, label %bb.b, !llvm.loop !191

.lr.ph117:                                        ; preds = %bb.d, %.lr.ph117.unr-lcssa
  %.197.lcssa = phi double [ %.197.3, %.lr.ph117.unr-lcssa ], [ %.197.epil, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.aa = sitofp i32 %spec.select.lcssa to double
  %wide.trip.count144 = zext nneg i32 %1 to i64
  br label %._crit_edge151

bb.e:                                             ; preds = %bb.m, %.lr.ph113.new
  %indvars.iv136 = phi i64 [ 0, %.lr.ph113.new ], [ %indvars.iv.next137.3, %bb.m ] ; 6 uses
  %.096111 = phi double [ 0.000000e+00, %.lr.ph113.new ], [ %.197.3, %bb.m ]
  %niter = phi i64 [ 0, %.lr.ph113.new ], [ %niter.next.3, %bb.m ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv136
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %.not104 = icmp eq i32 %i.ac, 0
  br i1 %.not104, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv136
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !77
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.197 = phi double [ %.096111, %bb.e ], [ %i.ae, %bb.f ]
  %indvars.iv.next137 = or disjoint i64 %indvars.iv136, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next137
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %.not104.1 = icmp eq i32 %i.ag, 0
  br i1 %.not104.1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next137
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !77
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.197.1 = phi double [ %.197, %bb.g ], [ %i.ai, %bb.h ]
  %indvars.iv.next137.1 = or disjoint i64 %indvars.iv136, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next137.1
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %.not104.2 = icmp eq i32 %i.ak, 0
  br i1 %.not104.2, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next137.1
  %i.am = load double, ptr %i.al, align 8, !tbaa !77
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.197.2 = phi double [ %.197.1, %bb.i ], [ %i.am, %bb.j ]
  %indvars.iv.next137.2 = or disjoint i64 %indvars.iv136, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next137.2
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %.not104.3 = icmp eq i32 %i.ao, 0
  br i1 %.not104.3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next137.2
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !77
end_hunk_1
