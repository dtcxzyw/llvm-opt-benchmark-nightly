inline.NumInlined: 74
begin_hunk_0_@dfst:bb.a
vector.body395:                                   ; preds = %vector.body395, %vector.ph392
  %index396 = phi i64 [ 0, %vector.ph392 ], [ %index.next403, %vector.body395 ] ; 2 uses
  %i.ln = or disjoint i64 %index396, 1            ; 3 uses
  %i.lo = sub nsw i64 %i.le, %i.ln                ; 2 uses
  %i.lp = getelementptr [8 x i8], ptr %invariant.gep283, i64 %i.lo
  %i.lq = getelementptr i8, ptr %i.lp, i64 -8     ; 2 uses
  %wide.load397 = load <2 x double>, ptr %i.lq, align 8, !tbaa !8, !alias.scope !83
  %reverse398 = shufflevector <2 x double> %wide.load397, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep285, i64 %i.ln
  %wide.load399 = load <2 x double>, ptr %i.lr, align 8, !tbaa !8, !alias.scope !86 ; 2 uses
  %i.ls = fadd <2 x double> %reverse398, %wide.load399
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ln
  store <2 x double> %i.ls, ptr %i.lt, align 8, !tbaa !8, !alias.scope !88, !noalias !90
  %wide.load400 = load <2 x double>, ptr %i.lq, align 8, !tbaa !8, !alias.scope !83
  %i.lu = getelementptr inbounds [8 x i8], ptr %2, i64 %i.lo
  %i.lv = getelementptr inbounds i8, ptr %i.lu, i64 -8
  %i.lw = shufflevector <2 x double> %wide.load399, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse402 = fsub <2 x double> %wide.load400, %i.lw
  store <2 x double> %reverse402, ptr %i.lv, align 8, !tbaa !8, !alias.scope !92, !noalias !93
  %index.next403 = add nuw i64 %index396, 2       ; 2 uses
  %i.lx = icmp eq i64 %index.next403, %n.vec394
  br i1 %i.lx, label %middle.block404, label %vector.body395, !llvm.loop !94

middle.block404:                                  ; preds = %vector.body395
  %cmp.n405 = icmp eq i64 %i.lf, %n.vec394
  br i1 %cmp.n405, label %._crit_edge248, label %.lr.ph247.preheader407

.lr.ph247.preheader407:                           ; preds = %vector.memcheck361, %.lr.ph247.preheader, %middle.block404
  %indvars.iv263.ph = phi i64 [ 1, %vector.memcheck361 ], [ 1, %.lr.ph247.preheader ], [ %i.lm, %middle.block404 ] ; 6 uses
  %.neg = add nsw i64 %indvars.iv263.ph, 1
  %i.ly = and i64 %.pre-phi270274, 1
  %lcmp.mod416.not.not = icmp eq i64 %i.ly, 0
  br i1 %lcmp.mod416.not.not, label %.lr.ph247.prol, label %.lr.ph247.prol.loopexit

.lr.ph247.prol:                                   ; preds = %.lr.ph247.preheader407
  %i.lz = sub nsw i64 %i.le, %indvars.iv263.ph    ; 2 uses
  %gep284.prol = getelementptr [8 x i8], ptr %invariant.gep283, i64 %i.lz ; 2 uses
  %i.ma = load double, ptr %gep284.prol, align 8, !tbaa !8
  %gep286.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep285, i64 %indvars.iv263.ph
  %i.mb = load double, ptr %gep286.prol, align 8, !tbaa !8 ; 2 uses
  %i.mc = fadd double %i.ma, %i.mb
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv263.ph
  store double %i.mc, ptr %i.md, align 8, !tbaa !8
  %i.me = load double, ptr %gep284.prol, align 8, !tbaa !8
  %i.mf = fsub double %i.me, %i.mb
  %i.mg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.lz
  store double %i.mf, ptr %i.mg, align 8, !tbaa !8
  %indvars.iv.next264.prol = add nuw nsw i64 %indvars.iv263.ph, 1
  br label %.lr.ph247.prol.loopexit

.lr.ph247.prol.loopexit:                          ; preds = %.lr.ph247.prol, %.lr.ph247.preheader407
  %indvars.iv263.unr = phi i64 [ %indvars.iv263.ph, %.lr.ph247.preheader407 ], [ %indvars.iv.next264.prol, %.lr.ph247.prol ]
  %i.mh = icmp eq i64 %.pre-phi270274, %.neg
  br i1 %i.mh, label %._crit_edge248, label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247.prol.loopexit, %.lr.ph247
  %indvars.iv263 = phi i64 [ %indvars.iv.next264.1, %.lr.ph247 ], [ %indvars.iv263.unr, %.lr.ph247.prol.loopexit ] ; 5 uses
  %i.mi = sub nsw i64 %i.le, %indvars.iv263       ; 2 uses
  %gep284 = getelementptr [8 x i8], ptr %invariant.gep283, i64 %i.mi ; 2 uses
  %i.mj = load double, ptr %gep284, align 8, !tbaa !8
  %gep286 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep285, i64 %indvars.iv263
  %i.mk = load double, ptr %gep286, align 8, !tbaa !8 ; 2 uses
  %i.ml = fadd double %i.mj, %i.mk
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv263
  store double %i.ml, ptr %i.mm, align 8, !tbaa !8
  %i.mn = load double, ptr %gep284, align 8, !tbaa !8
  %i.mo = fsub double %i.mn, %i.mk
  %i.mp = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mi
  store double %i.mo, ptr %i.mp, align 8, !tbaa !8
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 1 ; 3 uses
  %i.mq = sub nsw i64 %i.le, %indvars.iv.next264  ; 2 uses
  %gep284.1 = getelementptr [8 x i8], ptr %invariant.gep283, i64 %i.mq ; 2 uses
  %i.mr = load double, ptr %gep284.1, align 8, !tbaa !8
  %gep286.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep285, i64 %indvars.iv.next264
  %i.ms = load double, ptr %gep286.1, align 8, !tbaa !8 ; 2 uses
  %i.mt = fadd double %i.mr, %i.ms
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next264
  store double %i.mt, ptr %i.mu, align 8, !tbaa !8
  %i.mv = load double, ptr %gep284.1, align 8, !tbaa !8
  %i.mw = fsub double %i.mv, %i.ms
  %i.mx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mq
  store double %i.mw, ptr %i.mx, align 8, !tbaa !8
  %indvars.iv.next264.1 = add nuw nsw i64 %indvars.iv263, 2 ; 2 uses
  %exitcond267.not.1 = icmp eq i64 %indvars.iv.next264.1, %.pre-phi270274
  br i1 %exitcond267.not.1, label %._crit_edge248, label %.lr.ph247, !llvm.loop !95

._crit_edge248:                                   ; preds = %.lr.ph247.prol.loopexit, %.lr.ph247, %middle.block404
  %i.my = add nuw nsw i32 %i.hn, %.0200249
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.mz
  %i.nb = load double, ptr %i.na, align 8, !tbaa !8
  store double %i.nb, ptr %2, align 8, !tbaa !8
  br label %bb.i, !llvm.loop !96

._crit_edge252.loopexit:                          ; preds = %._crit_edge244, %._crit_edge244.thread
  %.ph = phi i32 [ %i.kn, %._crit_edge244.thread ], [ %i.ld, %._crit_edge244 ]
  %i.nc = add nuw nsw i32 %i.hn, %.0200249
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.nd
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !8 ; 2 uses
  store double %i.nf, ptr %2, align 8, !tbaa !8
  %i.ng = sext i32 %.ph to i64
  br label %._crit_edge252

._crit_edge252:                                   ; preds = %.preheader.._crit_edge252_crit_edge, %._crit_edge252.loopexit
  %i.nh = phi double [ %.pre, %.preheader.._crit_edge252_crit_edge ], [ %i.nf, %._crit_edge252.loopexit ]
  %.0199.lcssa = phi i64 [ 2, %.preheader.._crit_edge252_crit_edge ], [ %i.ng, %._crit_edge252.loopexit ]
  %i.ni = getelementptr inbounds [8 x i8], ptr %1, i64 %.0199.lcssa
  store double %i.nh, ptr %i.ni, align 8, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge252, %makect.exit
  store double 0.000000e+00, ptr %1, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cftf1st(i32 noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = ashr i32 %0, 3                           ; 9 uses
  %i.b = shl nsw i32 %i.a, 1
  %i.c = shl nsw i32 %i.a, 2
  %i.d = mul nsw i32 %i.a, 6
  %i.e = load double, ptr %1, align 8, !tbaa !8   ; 2 uses
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %i.f ; 3 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !8 ; 2 uses
  %i.i = fadd double %i.e, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !8 ; 2 uses
  %i.l = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !8 ; 2 uses
  %i.n = fadd double %i.k, %i.m                   ; 2 uses
  %i.o = fsub double %i.e, %i.h                   ; 2 uses
  %i.p = fsub double %i.k, %i.m                   ; 2 uses
  %i.q = sext i32 %i.b to i64                     ; 8 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %1, i64 %i.q ; 3 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !8 ; 2 uses
  %i.t = sext i32 %i.d to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %1, i64 %i.t ; 3 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !8 ; 2 uses
  %i.w = fadd double %i.s, %i.v                   ; 2 uses
  %i.x = getelementptr i8, ptr %i.r, i64 8        ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !8 ; 2 uses
  %i.z = getelementptr i8, ptr %i.u, i64 8        ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !8 ; 2 uses
  %i.ab = fadd double %i.y, %i.aa                 ; 2 uses
  %i.ac = fsub double %i.s, %i.v                  ; 2 uses
  %i.ad = fsub double %i.y, %i.aa                 ; 2 uses
  %i.ae = fadd double %i.i, %i.w
  store double %i.ae, ptr %1, align 8, !tbaa !8
  %i.af = fadd double %i.n, %i.ab
  store double %i.af, ptr %i.j, align 8, !tbaa !8
  %i.ag = fsub double %i.i, %i.w
  store double %i.ag, ptr %i.r, align 8, !tbaa !8
  %i.ah = fsub double %i.n, %i.ab
  store double %i.ah, ptr %i.x, align 8, !tbaa !8
  %i.ai = fsub double %i.o, %i.ad
  store double %i.ai, ptr %i.g, align 8, !tbaa !8
  %i.aj = fadd double %i.p, %i.ac
  store double %i.aj, ptr %i.l, align 8, !tbaa !8
  %i.ak = fadd double %i.o, %i.ad
  store double %i.ak, ptr %i.u, align 8, !tbaa !8
  %i.al = fsub double %i.p, %i.ac
  store double %i.al, ptr %i.z, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load double, ptr %i.am, align 8, !tbaa !8 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !8 ; 4 uses
  %i.as = add nsw i32 %i.a, -2                    ; 2 uses
  %i.at = icmp sgt i32 %i.a, 4
  br i1 %i.at, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sext i32 %i.as to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.au = zext nneg i32 %i.as to i64              ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.q
  %invariant.gep711 = getelementptr [8 x i8], ptr %1, i64 %i.q
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv703 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next704, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %.0685693 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.bm, %.lr.ph ]
  %.0686692 = phi double [ 1.000000e+00, %.lr.ph.preheader ], [ %i.bf, %.lr.ph ]
  %.0687691 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.bb, %.lr.ph ]
  %.0688690 = phi double [ 1.000000e+00, %.lr.ph.preheader ], [ %i.aw, %.lr.ph ]
  %indvars.iv.next704 = add nuw nsw i64 %indvars.iv703, 4 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next704
  %i.aw = load double, ptr %i.av, align 8, !tbaa !8 ; 6 uses
  %i.ax = fadd double %.0688690, %i.aw
  %i.ay = fmul double %i.ap, %i.ax                ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv703 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !8 ; 5 uses
  %i.bc = fadd double %.0687691, %i.bb
  %i.bd = fmul double %i.ap, %i.bc                ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bf = load double, ptr %i.be, align 8, !tbaa !8 ; 5 uses
  %i.bg = fadd double %.0686692, %i.bf
  %i.bh = fmul double %i.ar, %i.bg                ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !8 ; 3 uses
  %i.bk = fsub double %.0685693, %i.bj
  %i.bl = fmul double %i.ar, %i.bk                ; 3 uses
  %i.bm = fneg double %i.bj                       ; 4 uses
  %i.bn = add nuw nsw i64 %indvars.iv, %i.q       ; 2 uses
  %i.bo = add nuw nsw i64 %i.bn, %i.q             ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bo ; 4 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %i.bs = getelementptr i8, ptr %i.bq, i64 16
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bn ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bo ; 4 uses
  %i.bu = getelementptr i8, ptr %gep, i64 8
  %i.bv = getelementptr i8, ptr %i.bt, i64 16
  %i.bw = getelementptr i8, ptr %gep, i64 16
  %i.bx = load <4 x double>, ptr %i.bp, align 8, !tbaa !8 ; 4 uses
  %i.by = load <4 x double>, ptr %i.bq, align 8, !tbaa !8 ; 4 uses
  %i.bz = extractelement <4 x double> %i.bx, i64 0
  %i.ca = extractelement <4 x double> %i.by, i64 0
  %i.cb = fsub double %i.bz, %i.ca                ; 2 uses
  %i.cc = extractelement <4 x double> %i.bx, i64 1
  %i.cd = extractelement <4 x double> %i.by, i64 1
  %i.ce = fsub double %i.cc, %i.cd                ; 2 uses
  %i.cf = fadd <4 x double> %i.bx, %i.by          ; 3 uses
  %i.cg = load <4 x double>, ptr %i.bt, align 8, !tbaa !8 ; 4 uses
  %i.ch = load <4 x double>, ptr %gep, align 8, !tbaa !8 ; 4 uses
  %i.ci = extractelement <4 x double> %i.cg, i64 0
  %i.cj = extractelement <4 x double> %i.ch, i64 0
  %i.ck = fsub double %i.ci, %i.cj                ; 2 uses
  %i.cl = extractelement <4 x double> %i.cg, i64 1
  %i.cm = extractelement <4 x double> %i.ch, i64 1
  %i.cn = fsub double %i.cl, %i.cm                ; 2 uses
  %i.co = fadd <4 x double> %i.cg, %i.ch          ; 3 uses
  %i.cp = fadd <4 x double> %i.cf, %i.co
  store <4 x double> %i.cp, ptr %i.bp, align 8, !tbaa !8
  %i.cq = fsub <4 x double> %i.cf, %i.co
  %i.cr = shufflevector <4 x double> %i.cq, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %i.cr, ptr %i.bt, align 8, !tbaa !8
  %i.cs = fsub <4 x double> %i.cf, %i.co
  %i.ct = shufflevector <4 x double> %i.cs, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  store <2 x double> %i.ct, ptr %i.bv, align 8, !tbaa !8
  %i.cu = fsub double %i.cb, %i.cn                ; 2 uses
  %i.cv = fadd double %i.ce, %i.ck                ; 2 uses
  %i.cw = fneg double %i.cv
  %i.cx = fmul double %i.bd, %i.cw
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.cu, double %i.cx)
  store double %i.cy, ptr %i.bq, align 8, !tbaa !8
  %i.cz = fmul double %i.bd, %i.cu
  %i.da = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.cv, double %i.cz)
  store double %i.da, ptr %i.br, align 8, !tbaa !8
  %i.db = fadd double %i.cb, %i.cn                ; 2 uses
  %i.dc = fsub double %i.ce, %i.ck                ; 2 uses
  %i.dd = fmul double %i.bl, %i.dc
  %i.de = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.db, double %i.dd)
  %i.df = fneg double %i.db
  %i.dg = fmul double %i.bl, %i.df
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.dc, double %i.dg)
  %i.di = fsub <4 x double> %i.bx, %i.by
  %i.dj = shufflevector <4 x double> %i.di, <4 x double> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.dk = fsub <4 x double> %i.cg, %i.ch
  %i.dl = shufflevector <4 x double> %i.dk, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dn = fsub <2 x double> %i.dj, %i.dm          ; 4 uses
  %i.do = fadd <2 x double> %i.dj, %i.dm          ; 3 uses
  %i.dp = shufflevector <2 x double> %i.dn, <2 x double> %i.do, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dq = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = fneg <2 x double> %i.dp
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> %i.dn, <2 x i32> <i32 1, i32 2>
  %i.du = fmul <2 x double> %i.dr, %i.dt
  %i.dv = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.dp, <2 x double> %i.du)
  store <2 x double> %i.dx, ptr %i.bs, align 8, !tbaa !8
  store double %i.de, ptr %gep, align 8, !tbaa !8
  store double %i.dh, ptr %i.bu, align 8, !tbaa !8
  %i.dy = shufflevector <2 x double> %i.do, <2 x double> %i.dn, <2 x i32> <i32 0, i32 3>
  %i.dz = shufflevector <2 x double> %i.dn, <2 x double> %i.do, <2 x i32> <i32 1, i32 2>
  %i.ea = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.eb = insertelement <2 x double> %i.ea, double %i.bj, i64 1
  %i.ec = fmul <2 x double> %i.dz, %i.eb
  %i.ed = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> %i.dy, <2 x double> %i.ec)
  store <2 x double> %i.ef, ptr %i.bw, align 8, !tbaa !8
  %i.eg = sub nsw i64 %i.q, %indvars.iv           ; 2 uses
  %i.eh = add nsw i64 %i.eg, %i.q                 ; 2 uses
  %i.ei = add nsw i64 %i.eh, %i.q                 ; 2 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %1, i64 %i.eg
  %i.ek = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ei
  %i.el = getelementptr i8, ptr %i.ej, i64 -16    ; 2 uses
  %i.em = getelementptr i8, ptr %i.ek, i64 -16    ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %1, i64 %i.eh ; 2 uses
  %gep712 = getelementptr [8 x i8], ptr %invariant.gep711, i64 %i.ei
  %i.eo = getelementptr i8, ptr %i.en, i64 -16    ; 2 uses
  %i.ep = getelementptr i8, ptr %gep712, i64 -16  ; 2 uses
  %i.eq = load <4 x double>, ptr %i.el, align 8, !tbaa !8 ; 2 uses
  %i.er = load <4 x double>, ptr %i.em, align 8, !tbaa !8 ; 2 uses
  %i.es = fadd <4 x double> %i.eq, %i.er          ; 3 uses
  %i.et = load <4 x double>, ptr %i.eo, align 8, !tbaa !8 ; 2 uses
  %i.eu = load <4 x double>, ptr %i.ep, align 8, !tbaa !8 ; 2 uses
  %i.ev = fadd <4 x double> %i.et, %i.eu          ; 3 uses
  %i.ew = fadd <4 x double> %i.es, %i.ev
  store <4 x double> %i.ew, ptr %i.el, align 8, !tbaa !8
  %i.ex = fsub <4 x double> %i.es, %i.ev
  %i.ey = shufflevector <4 x double> %i.ex, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  store <2 x double> %i.ey, ptr %i.en, align 8, !tbaa !8
  %i.ez = fsub <4 x double> %i.es, %i.ev
  %i.fa = shufflevector <4 x double> %i.ez, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %i.fa, ptr %i.eo, align 8, !tbaa !8
  %i.fb = fsub <4 x double> %i.eq, %i.er          ; 2 uses
  %i.fc = fsub <4 x double> %i.et, %i.eu
  %i.fd = shufflevector <4 x double> %i.fc, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.fe = fsub <4 x double> %i.fb, %i.fd          ; 5 uses
  %i.ff = fadd <4 x double> %i.fb, %i.fd          ; 5 uses
  %i.fg = shufflevector <4 x double> %i.fe, <4 x double> %i.ff, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %3 = extractelement <4 x double> %i.ff, i64 3
  %4 = fneg double %3
  %i.fh = extractelement <4 x double> %i.ff, i64 1
  %i.fi = fneg double %i.fh
  %i.fj = extractelement <4 x double> %i.fe, i64 2
  %i.fk = fmul double %i.ay, %i.fj
  %i.fl = fmul double %i.ay, %4
  %5 = extractelement <4 x double> %i.fe, i64 0
  %6 = fmul double %i.aw, %5
  %7 = fmul double %i.aw, %i.fi
  %i.fm = insertelement <4 x double> poison, double %i.bb, i64 0
  %i.fn = insertelement <4 x double> %i.fm, double %i.bd, i64 2
  %i.fo = shufflevector <4 x double> %i.fn, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %8 = insertelement <4 x double> poison, double %7, i64 0
  %9 = insertelement <4 x double> %8, double %6, i64 1
  %i.fp = insertelement <4 x double> %9, double %i.fl, i64 2
  %i.fq = insertelement <4 x double> %i.fp, double %i.fk, i64 3
  %i.fr = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fo, <4 x double> %i.fg, <4 x double> %i.fq)
  store <4 x double> %i.fr, ptr %i.em, align 8, !tbaa !8
  %i.fs = shufflevector <4 x double> %i.ff, <4 x double> %i.fe, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ft = insertelement <4 x double> poison, double %i.bf, i64 0
  %i.fu = insertelement <4 x double> %i.ft, double %i.bh, i64 2
  %i.fv = shufflevector <4 x double> %i.fu, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.fw = fneg <4 x double> %i.ff
  %i.fx = shufflevector <4 x double> %i.fe, <4 x double> %i.fw, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.fy = fmul <4 x double> %i.fv, %i.fx
  %i.fz = insertelement <4 x double> poison, double %i.bm, i64 0
  %i.ga = insertelement <4 x double> %i.fz, double %i.bl, i64 2
  %i.gb = shufflevector <4 x double> %i.ga, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.gc = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gb, <4 x double> %i.fs, <4 x double> %i.fy)
  store <4 x double> %i.gc, ptr %i.ep, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.gd = icmp samesign ult i64 %indvars.iv.next, %i.au
  br i1 %i.gd, label %.lr.ph, label %._crit_edge, !llvm.loop !97

._crit_edge:                                      ; preds = %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.au, %.lr.ph ]
  %.0688.lcssa = phi double [ 1.000000e+00, %.._crit_edge_crit_edge ], [ %i.aw, %.lr.ph ]
  %.0687.lcssa = phi double [ 0.000000e+00, %.._crit_edge_crit_edge ], [ %i.bb, %.lr.ph ]
  %.0686.lcssa = phi double [ 1.000000e+00, %.._crit_edge_crit_edge ], [ %i.bf, %.lr.ph ]
  %.0685.lcssa = phi double [ 0.000000e+00, %.._crit_edge_crit_edge ], [ %i.bm, %.lr.ph ]
  %i.ge = fadd double %i.an, %.0688.lcssa
  %i.gf = fmul double %i.ap, %i.ge                ; 4 uses
  %i.gg = fadd double %i.an, %.0687.lcssa
  %i.gh = fmul double %i.ap, %i.gg                ; 4 uses
  %i.gi = fsub double %.0686.lcssa, %i.an
  %i.gj = fmul double %i.ar, %i.gi                ; 4 uses
  %i.gk = fsub double %.0685.lcssa, %i.an
  %i.gl = fmul double %i.ar, %i.gk                ; 4 uses
  %i.gm = mul nsw i32 %i.a, 3
  %i.gn = mul nsw i32 %i.a, 5
  %i.go = mul nsw i32 %i.a, 7
  %i.gp = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi ; 2 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !8 ; 2 uses
  %i.gr = sext i32 %i.gn to i64
  %i.gs = getelementptr [8 x i8], ptr %1, i64 %i.gr ; 7 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 -16    ; 2 uses
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !8 ; 2 uses
  %i.gv = fadd double %i.gq, %i.gu                ; 2 uses
  %i.gw = sext i32 %i.a to i64
  %i.gx = getelementptr [8 x i8], ptr %1, i64 %i.gw ; 6 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 -8     ; 2 uses
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !8 ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gs, i64 -8     ; 2 uses
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !8 ; 2 uses
  %i.hc = fadd double %i.gz, %i.hb                ; 2 uses
  %i.hd = fsub double %i.gq, %i.gu                ; 2 uses
  %i.he = fsub double %i.gz, %i.hb                ; 2 uses
  %i.hf = sext i32 %i.gm to i64
  %i.hg = getelementptr [8 x i8], ptr %1, i64 %i.hf ; 7 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 -16    ; 2 uses
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !8 ; 2 uses
  %i.hj = sext i32 %i.go to i64
  %i.hk = getelementptr [8 x i8], ptr %1, i64 %i.hj ; 7 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 -16    ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !8 ; 2 uses
  %i.hn = fadd double %i.hi, %i.hm                ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hg, i64 -8     ; 2 uses
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !8 ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hk, i64 -8     ; 2 uses
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !8 ; 2 uses
  %i.hs = fadd double %i.hp, %i.hr                ; 2 uses
  %i.ht = fsub double %i.hi, %i.hm                ; 2 uses
  %i.hu = fsub double %i.hp, %i.hr                ; 2 uses
  %i.hv = fadd double %i.gv, %i.hn
  store double %i.hv, ptr %i.gp, align 8, !tbaa !8
  %i.hw = fadd double %i.hc, %i.hs
  store double %i.hw, ptr %i.gy, align 8, !tbaa !8
  %i.hx = fsub double %i.gv, %i.hn
  store double %i.hx, ptr %i.hh, align 8, !tbaa !8
  %i.hy = fsub double %i.hc, %i.hs
  store double %i.hy, ptr %i.ho, align 8, !tbaa !8
  %i.hz = fsub double %i.hd, %i.hu                ; 2 uses
  %i.ia = fadd double %i.he, %i.ht                ; 2 uses
  %i.ib = fneg double %i.ia
  %i.ic = fmul double %i.gh, %i.ib
  %i.id = tail call double @llvm.fmuladd.f64(double %i.gf, double %i.hz, double %i.ic)
  store double %i.id, ptr %i.gt, align 8, !tbaa !8
  %i.ie = fmul double %i.gh, %i.hz
  %i.if = tail call double @llvm.fmuladd.f64(double %i.gf, double %i.ia, double %i.ie)
  store double %i.if, ptr %i.ha, align 8, !tbaa !8
  %i.ig = fadd double %i.hd, %i.hu                ; 2 uses
  %i.ih = fsub double %i.he, %i.ht                ; 2 uses
  %i.ii = fmul double %i.gl, %i.ih
  %i.ij = tail call double @llvm.fmuladd.f64(double %i.gj, double %i.ig, double %i.ii)
  store double %i.ij, ptr %i.hl, align 8, !tbaa !8
  %i.ik = fneg double %i.ig
  %i.il = fmul double %i.gl, %i.ik
  %i.im = tail call double @llvm.fmuladd.f64(double %i.gj, double %i.ih, double %i.il)
  store double %i.im, ptr %i.hq, align 8, !tbaa !8
  %i.in = load double, ptr %i.gx, align 8, !tbaa !8 ; 2 uses
  %i.io = load double, ptr %i.gs, align 8, !tbaa !8 ; 2 uses
  %i.ip = fadd double %i.in, %i.io                ; 2 uses
  %i.iq = getelementptr i8, ptr %i.gx, i64 8      ; 2 uses
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !8 ; 2 uses
  %i.is = getelementptr i8, ptr %i.gs, i64 8      ; 2 uses
  %i.it = load double, ptr %i.is, align 8, !tbaa !8 ; 2 uses
  %i.iu = fadd double %i.ir, %i.it                ; 2 uses
  %i.iv = fsub double %i.in, %i.io                ; 2 uses
  %i.iw = fsub double %i.ir, %i.it                ; 2 uses
  %i.ix = load double, ptr %i.hg, align 8, !tbaa !8 ; 2 uses
  %i.iy = load double, ptr %i.hk, align 8, !tbaa !8 ; 2 uses
  %i.iz = fadd double %i.ix, %i.iy                ; 2 uses
  %i.ja = getelementptr i8, ptr %i.hg, i64 8      ; 2 uses
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !8 ; 2 uses
  %i.jc = getelementptr i8, ptr %i.hk, i64 8      ; 2 uses
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !8 ; 2 uses
  %i.je = fadd double %i.jb, %i.jd                ; 2 uses
  %i.jf = fsub double %i.ix, %i.iy                ; 2 uses
  %i.jg = fsub double %i.jb, %i.jd                ; 2 uses
  %i.jh = fadd double %i.ip, %i.iz
  store double %i.jh, ptr %i.gx, align 8, !tbaa !8
  %i.ji = fadd double %i.iu, %i.je
  store double %i.ji, ptr %i.iq, align 8, !tbaa !8
  %i.jj = fsub double %i.ip, %i.iz
  store double %i.jj, ptr %i.hg, align 8, !tbaa !8
  %i.jk = fsub double %i.iu, %i.je
  store double %i.jk, ptr %i.ja, align 8, !tbaa !8
  %i.jl = fsub double %i.iv, %i.jg                ; 2 uses
  %i.jm = fadd double %i.iw, %i.jf                ; 2 uses
  %i.jn = fsub double %i.jl, %i.jm
  %i.jo = fmul double %i.an, %i.jn
  store double %i.jo, ptr %i.gs, align 8, !tbaa !8
  %i.jp = fadd double %i.jm, %i.jl
  %i.jq = fmul double %i.an, %i.jp
  store double %i.jq, ptr %i.is, align 8, !tbaa !8
  %i.jr = fadd double %i.iv, %i.jg                ; 2 uses
  %i.js = fsub double %i.iw, %i.jf                ; 2 uses
  %i.jt = fneg double %i.an                       ; 2 uses
  %i.ju = fadd double %i.js, %i.jr
  %i.jv = fmul double %i.ju, %i.jt
  store double %i.jv, ptr %i.hk, align 8, !tbaa !8
  %i.jw = fsub double %i.js, %i.jr
  %i.jx = fmul double %i.jw, %i.jt
  store double %i.jx, ptr %i.jc, align 8, !tbaa !8
  %i.jy = getelementptr i8, ptr %i.gx, i64 16     ; 2 uses
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !8 ; 2 uses
  %i.ka = getelementptr i8, ptr %i.gs, i64 16     ; 2 uses
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !8 ; 2 uses
  %i.kc = fadd double %i.jz, %i.kb                ; 2 uses
  %i.kd = getelementptr i8, ptr %i.gx, i64 24     ; 2 uses
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !8 ; 2 uses
  %i.kf = getelementptr i8, ptr %i.gs, i64 24     ; 2 uses
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !8 ; 2 uses
  %i.kh = fadd double %i.ke, %i.kg                ; 2 uses
  %i.ki = fsub double %i.jz, %i.kb                ; 2 uses
  %i.kj = fsub double %i.ke, %i.kg                ; 2 uses
  %i.kk = getelementptr i8, ptr %i.hg, i64 16     ; 2 uses
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !8 ; 2 uses
  %i.km = getelementptr i8, ptr %i.hk, i64 16     ; 2 uses
  %i.kn = load double, ptr %i.km, align 8, !tbaa !8 ; 2 uses
  %i.ko = fadd double %i.kl, %i.kn                ; 2 uses
  %i.kp = getelementptr i8, ptr %i.hg, i64 24     ; 2 uses
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !8 ; 2 uses
  %i.kr = getelementptr i8, ptr %i.hk, i64 24     ; 2 uses
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !8 ; 2 uses
  %i.kt = fadd double %i.kq, %i.ks                ; 2 uses
  %i.ku = fsub double %i.kl, %i.kn                ; 2 uses
  %i.kv = fsub double %i.kq, %i.ks                ; 2 uses
  %i.kw = fadd double %i.kc, %i.ko
  store double %i.kw, ptr %i.jy, align 8, !tbaa !8
  %i.kx = fadd double %i.kh, %i.kt
  store double %i.kx, ptr %i.kd, align 8, !tbaa !8
  %i.ky = fsub double %i.kc, %i.ko
  store double %i.ky, ptr %i.kk, align 8, !tbaa !8
  %i.kz = fsub double %i.kh, %i.kt
  store double %i.kz, ptr %i.kp, align 8, !tbaa !8
  %i.la = fsub double %i.ki, %i.kv                ; 2 uses
  %i.lb = fadd double %i.kj, %i.ku                ; 2 uses
  %i.lc = fneg double %i.lb
  %i.ld = fmul double %i.gf, %i.lc
  %i.le = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.la, double %i.ld)
  store double %i.le, ptr %i.ka, align 8, !tbaa !8
  %i.lf = fmul double %i.gf, %i.la
  %i.lg = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.lb, double %i.lf)
  store double %i.lg, ptr %i.kf, align 8, !tbaa !8
  %i.lh = fadd double %i.ki, %i.kv                ; 2 uses
  %i.li = fsub double %i.kj, %i.ku                ; 2 uses
  %i.lj = fmul double %i.gj, %i.li
  %i.lk = tail call double @llvm.fmuladd.f64(double %i.gl, double %i.lh, double %i.lj)
  store double %i.lk, ptr %i.km, align 8, !tbaa !8
  %i.ll = fneg double %i.lh
  %i.lm = fmul double %i.gj, %i.ll
  %i.ln = tail call double @llvm.fmuladd.f64(double %i.gl, double %i.li, double %i.lm)
  store double %i.ln, ptr %i.kr, align 8, !tbaa !8
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cftrec1(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = ashr i32 %0, 2                           ; 2 uses
  %i.b = shl nsw i32 %i.a, 1                      ; 2 uses
  %i.c = sub nsw i32 %2, %i.b
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %3, i64 %i.d
end_hunk_0
