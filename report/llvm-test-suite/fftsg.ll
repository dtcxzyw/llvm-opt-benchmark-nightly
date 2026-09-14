Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/fftsg?download=true
inline.NumInlined: 74
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@dfst:bb.a
  br i1 %lcmp.mod416.not.not, label %.lr.ph247.prol, label %.lr.ph247.prol.loopexit

.lr.ph247.prol:                                   ; preds = %.lr.ph247.preheader407
  %i.ml = sub nuw nsw i64 %i.lq, %indvars.iv263.ph ; 2 uses
  %gep285.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep284, i64 %i.ml ; 2 uses
  %i.mm = load double, ptr %gep285.prol, align 8, !tbaa !14
  %gep287.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep286, i64 %indvars.iv263.ph
  %i.mn = load double, ptr %gep287.prol, align 8, !tbaa !14 ; 2 uses
  %i.mo = fadd double %i.mm, %i.mn
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv263.ph
  store double %i.mo, ptr %i.mp, align 8, !tbaa !14
  %i.mq = load double, ptr %gep285.prol, align 8, !tbaa !14
  %i.mr = fsub double %i.mq, %i.mn
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ml
  store double %i.mr, ptr %i.ms, align 8, !tbaa !14
  %indvars.iv.next264.prol = add nuw nsw i64 %indvars.iv263.ph, 1
  br label %.lr.ph247.prol.loopexit

.lr.ph247.prol.loopexit:                          ; preds = %.lr.ph247.prol, %.lr.ph247.preheader407
  %indvars.iv263.unr = phi i64 [ %indvars.iv263.ph, %.lr.ph247.preheader407 ], [ %indvars.iv.next264.prol, %.lr.ph247.prol ]
  %i.mt = icmp eq i64 %.pre-phi270275, %.neg
  br i1 %i.mt, label %._crit_edge248, label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247.prol.loopexit, %.lr.ph247
  %indvars.iv263 = phi i64 [ %indvars.iv.next264.1, %.lr.ph247 ], [ %indvars.iv263.unr, %.lr.ph247.prol.loopexit ] ; 5 uses
  %i.mu = sub nuw nsw i64 %i.lq, %indvars.iv263   ; 2 uses
  %gep285 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep284, i64 %i.mu ; 2 uses
  %i.mv = load double, ptr %gep285, align 8, !tbaa !14
  %gep287 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep286, i64 %indvars.iv263
  %i.mw = load double, ptr %gep287, align 8, !tbaa !14 ; 2 uses
  %i.mx = fadd double %i.mv, %i.mw
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv263
  store double %i.mx, ptr %i.my, align 8, !tbaa !14
  %i.mz = load double, ptr %gep285, align 8, !tbaa !14
  %i.na = fsub double %i.mz, %i.mw
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.mu
  store double %i.na, ptr %i.nb, align 8, !tbaa !14
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 1 ; 3 uses
  %i.nc = sub nuw nsw i64 %i.lq, %indvars.iv.next264 ; 2 uses
  %gep285.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep284, i64 %i.nc ; 2 uses
  %i.nd = load double, ptr %gep285.1, align 8, !tbaa !14
  %gep287.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep286, i64 %indvars.iv.next264
  %i.ne = load double, ptr %gep287.1, align 8, !tbaa !14 ; 2 uses
  %i.nf = fadd double %i.nd, %i.ne
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next264
  store double %i.nf, ptr %i.ng, align 8, !tbaa !14
  %i.nh = load double, ptr %gep285.1, align 8, !tbaa !14
  %i.ni = fsub double %i.nh, %i.ne
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.nc
  store double %i.ni, ptr %i.nj, align 8, !tbaa !14
  %indvars.iv.next264.1 = add nuw nsw i64 %indvars.iv263, 2 ; 2 uses
  %exitcond267.not.1 = icmp eq i64 %indvars.iv.next264.1, %.pre-phi270275
  br i1 %exitcond267.not.1, label %._crit_edge248, label %.lr.ph247, !llvm.loop !79

._crit_edge248:                                   ; preds = %.lr.ph247.prol.loopexit, %.lr.ph247, %middle.block404
  %i.nk = add nuw nsw i32 %i.ht, %.0199250
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.nl
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !14
  store double %i.nn, ptr %2, align 8, !tbaa !14
  br label %bb.i, !llvm.loop !80

._crit_edge252.loopexit:                          ; preds = %._crit_edge244, %._crit_edge244.thread
  %.ph = phi i32 [ %i.kz, %._crit_edge244.thread ], [ %i.lp, %._crit_edge244 ]
  %i.no = add nuw nsw i32 %i.ht, %.0199250
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.np
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !14 ; 2 uses
  store double %i.nr, ptr %2, align 8, !tbaa !14
  %i.ns = sext i32 %.ph to i64
  br label %._crit_edge252

._crit_edge252:                                   ; preds = %.preheader.._crit_edge252_crit_edge, %._crit_edge252.loopexit
  %i.nt = phi double [ %.pre, %.preheader.._crit_edge252_crit_edge ], [ %i.nr, %._crit_edge252.loopexit ]
  %.0200.lcssa = phi i64 [ 2, %.preheader.._crit_edge252_crit_edge ], [ %i.ns, %._crit_edge252.loopexit ]
  %i.nu = getelementptr inbounds [8 x i8], ptr %1, i64 %.0200.lcssa
  store double %i.nt, ptr %i.nu, align 8, !tbaa !14
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge252, %makect.exit
  store double 0.000000e+00, ptr %1, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cftf1st(i32 noundef %0, ptr nofree noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = ashr i32 %0, 3                           ; 9 uses
  %i.b = shl nsw i32 %i.a, 1
  %i.c = shl nsw i32 %i.a, 2
  %i.d = mul nsw i32 %i.a, 6
  %i.e = load double, ptr %1, align 8, !tbaa !14  ; 2 uses
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %i.f ; 3 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.i = fadd double %i.e, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %i.l = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !14 ; 2 uses
  %i.n = fadd double %i.k, %i.m                   ; 2 uses
  %i.o = fsub double %i.e, %i.h                   ; 2 uses
  %i.p = fsub double %i.k, %i.m                   ; 2 uses
  %i.q = sext i32 %i.b to i64                     ; 8 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %1, i64 %i.q ; 3 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !14 ; 2 uses
  %i.t = sext i32 %i.d to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %1, i64 %i.t ; 3 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !14 ; 2 uses
  %i.w = fadd double %i.s, %i.v                   ; 2 uses
  %i.x = getelementptr i8, ptr %i.r, i64 8        ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !14 ; 2 uses
  %i.z = getelementptr i8, ptr %i.u, i64 8        ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !14 ; 2 uses
  %i.ab = fadd double %i.y, %i.aa                 ; 2 uses
  %i.ac = fsub double %i.s, %i.v                  ; 2 uses
  %i.ad = fsub double %i.y, %i.aa                 ; 2 uses
  %i.ae = fadd double %i.i, %i.w
  store double %i.ae, ptr %1, align 8, !tbaa !14
  %i.af = fadd double %i.n, %i.ab
  store double %i.af, ptr %i.j, align 8, !tbaa !14
  %i.ag = fsub double %i.i, %i.w
  store double %i.ag, ptr %i.r, align 8, !tbaa !14
  %i.ah = fsub double %i.n, %i.ab
  store double %i.ah, ptr %i.x, align 8, !tbaa !14
  %i.ai = fsub double %i.o, %i.ad
  store double %i.ai, ptr %i.g, align 8, !tbaa !14
  %i.aj = fadd double %i.p, %i.ac
  store double %i.aj, ptr %i.l, align 8, !tbaa !14
  %i.ak = fadd double %i.o, %i.ad
  store double %i.ak, ptr %i.u, align 8, !tbaa !14
  %i.al = fsub double %i.p, %i.ac
  store double %i.al, ptr %i.z, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load double, ptr %i.am, align 8, !tbaa !14 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !14 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !14 ; 3 uses
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
  %i.av = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv703 = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next704, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.az = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %.lr.ph.preheader ], [ %i.gg, %.lr.ph ] ; 2 uses
  %i.ba = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %.lr.ph.preheader ], [ %i.bd, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !14 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.bf = add nuw nsw i64 %indvars.iv703, %i.q    ; 2 uses
  %i.bg = add nuw nsw i64 %i.bf, %i.q             ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv703 ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bg ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bi, i64 16     ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bf ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bg ; 3 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 16     ; 2 uses
  %i.bn = getelementptr i8, ptr %gep, i64 16      ; 2 uses
  %i.bo = load <2 x double>, ptr %i.bh, align 8, !tbaa !14 ; 2 uses
  %i.bp = load <2 x double>, ptr %i.bi, align 8, !tbaa !14 ; 2 uses
  %i.bq = fadd <2 x double> %i.bo, %i.bp          ; 2 uses
  %i.br = load <2 x double>, ptr %i.bl, align 8, !tbaa !14 ; 2 uses
  %i.bs = load <2 x double>, ptr %gep, align 8, !tbaa !14 ; 2 uses
  %i.bt = fadd <2 x double> %i.br, %i.bs          ; 2 uses
  %i.bu = fadd <2 x double> %i.bq, %i.bt
  %i.bv = load <2 x double>, ptr %i.bj, align 8, !tbaa !14 ; 2 uses
  %i.bw = load <2 x double>, ptr %i.bk, align 8, !tbaa !14 ; 2 uses
  %i.bx = fadd <2 x double> %i.bv, %i.bw          ; 2 uses
  %i.by = load <2 x double>, ptr %i.bm, align 8, !tbaa !14 ; 2 uses
  %i.bz = load <2 x double>, ptr %i.bn, align 8, !tbaa !14 ; 2 uses
  %i.ca = fadd <2 x double> %i.by, %i.bz          ; 2 uses
  %i.cb = fadd <2 x double> %i.bx, %i.ca
  %i.cc = fsub <2 x double> %i.bq, %i.bt
  %i.cd = fsub <2 x double> %i.bx, %i.ca
  %i.ce = sub nsw i64 %i.q, %indvars.iv703        ; 2 uses
  %i.cf = add nuw nsw i64 %i.ce, %i.q             ; 2 uses
  %i.cg = add nuw nsw i64 %i.cf, %i.q             ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ce ; 3 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cg ; 3 uses
  %i.cj = getelementptr i8, ptr %i.ch, i64 -16    ; 2 uses
  %i.ck = getelementptr i8, ptr %i.ci, i64 -16    ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cf ; 3 uses
  %gep712 = getelementptr [8 x i8], ptr %invariant.gep711, i64 %i.cg ; 3 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 -16    ; 2 uses
  %i.cn = getelementptr i8, ptr %gep712, i64 -16  ; 2 uses
  %i.co = load <2 x double>, ptr %i.be, align 8, !tbaa !14 ; 7 uses
  %i.cp = fsub <2 x double> %i.az, %i.co
  %i.cq = fadd <2 x double> %i.az, %i.co
  %i.cr = shufflevector <2 x double> %i.cp, <2 x double> %i.cq, <2 x i32> <i32 1, i32 2>
  %i.cs = fmul <2 x double> %i.aw, %i.cr          ; 2 uses
  %i.ct = extractelement <2 x double> %i.co, i64 1
  %i.cu = fneg double %i.ct                       ; 4 uses
  store <2 x double> %i.bu, ptr %i.bh, align 8, !tbaa !14
  store <2 x double> %i.cb, ptr %i.bj, align 8, !tbaa !14
  store <2 x double> %i.cc, ptr %i.bl, align 8, !tbaa !14
  store <2 x double> %i.cd, ptr %i.bm, align 8, !tbaa !14
  %i.cv = fsub <2 x double> %i.bo, %i.bp          ; 2 uses
  %i.cw = fsub <2 x double> %i.br, %i.bs
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cy = fadd <2 x double> %i.cv, %i.cx          ; 2 uses
  %i.cz = fsub <2 x double> %i.cv, %i.cx          ; 4 uses
  %i.da = shufflevector <2 x double> %i.cy, <2 x double> %i.cz, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.db = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dc = fneg <2 x double> %i.da
  %i.dd = shufflevector <2 x double> %i.cz, <2 x double> %i.dc, <2 x i32> <i32 1, i32 2>
  %i.de = fmul <2 x double> %i.db, %i.dd
  %i.df = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.da, <2 x double> %i.de)
  %i.dh = fadd <2 x double> %i.ba, %i.bd
  %i.di = fmul <2 x double> %i.ay, %i.dh          ; 2 uses
  %i.dj = shufflevector <2 x double> %i.cz, <2 x double> %i.cy, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dk = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dl = fneg <2 x double> %i.dj
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> %i.cz, <2 x i32> <i32 1, i32 2>
  %i.dn = fmul <2 x double> %i.dk, %i.dm
  %i.do = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.dj, <2 x double> %i.dn)
  store <2 x double> %i.dp, ptr %i.bi, align 8, !tbaa !14
  %i.dq = fsub <2 x double> %i.bv, %i.bw          ; 2 uses
  %i.dr = fsub <2 x double> %i.by, %i.bz
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dt = fadd <2 x double> %i.dq, %i.ds          ; 3 uses
  %i.du = fsub <2 x double> %i.dq, %i.ds          ; 4 uses
  %i.dv = shufflevector <2 x double> %i.dt, <2 x double> %i.du, <2 x i32> <i32 0, i32 3>
  %i.dw = shufflevector <2 x double> %i.du, <2 x double> %i.dt, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dx = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dy = fneg <2 x double> %i.dw
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> %i.du, <2 x i32> <i32 1, i32 2>
  %i.ea = fmul <2 x double> %i.dx, %i.dz
  %i.eb = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.dw, <2 x double> %i.ea)
  store <2 x double> %i.ec, ptr %i.bk, align 8, !tbaa !14
  store <2 x double> %i.dg, ptr %gep, align 8, !tbaa !14
  %i.ed = shufflevector <2 x double> %i.du, <2 x double> %i.dt, <2 x i32> <i32 1, i32 2>
  %i.ee = insertelement <2 x double> %i.co, double %i.cu, i64 0
  %i.ef = fmul <2 x double> %i.ed, %i.ee
  %i.eg = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.dv, <2 x double> %i.ef)
  store <2 x double> %i.eh, ptr %i.bn, align 8, !tbaa !14
  %i.ei = load <2 x double>, ptr %i.cj, align 8, !tbaa !14 ; 2 uses
  %i.ej = load <2 x double>, ptr %i.ck, align 8, !tbaa !14 ; 2 uses
  %i.ek = fadd <2 x double> %i.ei, %i.ej          ; 2 uses
  %i.el = load <2 x double>, ptr %i.cm, align 8, !tbaa !14 ; 2 uses
  %i.em = load <2 x double>, ptr %i.cn, align 8, !tbaa !14 ; 2 uses
  %i.en = fadd <2 x double> %i.el, %i.em          ; 2 uses
  %i.eo = load <2 x double>, ptr %i.ch, align 8, !tbaa !14 ; 2 uses
  %i.ep = load <2 x double>, ptr %i.ci, align 8, !tbaa !14 ; 2 uses
  %i.eq = fadd <2 x double> %i.eo, %i.ep          ; 2 uses
  %i.er = fsub <2 x double> %i.eo, %i.ep          ; 2 uses
  %i.es = load <2 x double>, ptr %i.cl, align 8, !tbaa !14 ; 2 uses
  %i.et = load <2 x double>, ptr %gep712, align 8, !tbaa !14 ; 2 uses
  %i.eu = fadd <2 x double> %i.es, %i.et          ; 2 uses
  %i.ev = fsub <2 x double> %i.es, %i.et
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ex = fadd <2 x double> %i.eq, %i.eu
  store <2 x double> %i.ex, ptr %i.ch, align 8, !tbaa !14
  %i.ey = fadd <2 x double> %i.ek, %i.en
  store <2 x double> %i.ey, ptr %i.cj, align 8, !tbaa !14
  %i.ez = fsub <2 x double> %i.eq, %i.eu
  store <2 x double> %i.ez, ptr %i.cl, align 8, !tbaa !14
  %i.fa = fsub <2 x double> %i.ek, %i.en
  store <2 x double> %i.fa, ptr %i.cm, align 8, !tbaa !14
  %i.fb = fsub <2 x double> %i.er, %i.ew          ; 4 uses
  %i.fc = fadd <2 x double> %i.er, %i.ew          ; 2 uses
  %i.fd = shufflevector <2 x double> %i.fb, <2 x double> %i.fc, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.fe = fneg <2 x double> %i.fd
  %i.ff = shufflevector <2 x double> %i.fb, <2 x double> %i.fe, <2 x i32> <i32 0, i32 2>
  %i.fg = fmul <2 x double> %i.do, %i.ff
  %i.fh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.fd, <2 x double> %i.fg)
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.fi, ptr %i.ci, align 8, !tbaa !14
  %i.fj = shufflevector <2 x double> %i.fc, <2 x double> %i.fb, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fk = fneg <2 x double> %i.fj
  %i.fl = shufflevector <2 x double> %i.fb, <2 x double> %i.fk, <2 x i32> <i32 1, i32 2>
  %i.fm = fmul <2 x double> %i.df, %i.fl
  %i.fn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.fj, <2 x double> %i.fm)
  %i.fo = fsub <2 x double> %i.ei, %i.ej          ; 2 uses
  %i.fp = fsub <2 x double> %i.el, %i.em
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fr = fsub <2 x double> %i.fo, %i.fq          ; 4 uses
  %i.fs = fadd <2 x double> %i.fo, %i.fq          ; 2 uses
  %i.ft = shufflevector <2 x double> %i.fr, <2 x double> %i.fs, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fu = fneg <2 x double> %i.ft
  %i.fv = shufflevector <2 x double> %i.fu, <2 x double> %i.fr, <2 x i32> <i32 1, i32 2>
  %i.fw = fmul <2 x double> %i.eb, %i.fv
  %i.fx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> %i.ft, <2 x double> %i.fw)
  store <2 x double> %i.fx, ptr %i.ck, align 8, !tbaa !14
  store <2 x double> %i.fn, ptr %gep712, align 8, !tbaa !14
  %i.fy = shufflevector <2 x double> %i.fs, <2 x double> %i.fr, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fz = fneg <2 x double> %i.fy
  %i.ga = shufflevector <2 x double> %i.fr, <2 x double> %i.fz, <2 x i32> <i32 1, i32 2>
  %i.gb = fmul <2 x double> %i.eg, %i.ga
  %i.gc = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.gd = shufflevector <2 x double> %i.gc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> %i.fy, <2 x double> %i.gb)
  store <2 x double> %i.ge, ptr %i.cn, align 8, !tbaa !14
  %indvars.iv.next704 = add nuw nsw i64 %indvars.iv703, 4 ; 2 uses
  %i.gf = icmp samesign ult i64 %indvars.iv.next704, %i.au
  %i.gg = insertelement <2 x double> %i.co, double %i.cu, i64 1
  br i1 %i.gf, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !97

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.gh = extractelement <2 x double> %i.co, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.au, %._crit_edge.loopexit ]
  %.0684.lcssa = phi double [ 1.000000e+00, %.._crit_edge_crit_edge ], [ %i.gh, %._crit_edge.loopexit ]
  %.0.lcssa = phi double [ 0.000000e+00, %.._crit_edge_crit_edge ], [ %i.cu, %._crit_edge.loopexit ]
  %i.gi = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %.._crit_edge_crit_edge ], [ %i.bd, %._crit_edge.loopexit ]
  %i.gj = insertelement <2 x double> poison, double %i.an, i64 0
  %i.gk = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gl = fadd <2 x double> %i.gk, %i.gi
  %i.gm = fsub double %.0684.lcssa, %i.an
  %i.gn = fsub double %.0.lcssa, %i.an
  %i.go = mul nsw i32 %i.a, 3
  %i.gp = mul nsw i32 %i.a, 5
  %i.gq = mul nsw i32 %i.a, 7
  %i.gr = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi ; 2 uses
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !14 ; 2 uses
  %i.gt = sext i32 %i.gp to i64
  %i.gu = getelementptr [8 x i8], ptr %1, i64 %i.gt ; 5 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 -16    ; 2 uses
  %i.gw = sext i32 %i.a to i64
  %i.gx = getelementptr [8 x i8], ptr %1, i64 %i.gw ; 6 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 -8     ; 2 uses
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !14 ; 2 uses
  %i.ha = sext i32 %i.go to i64
  %i.hb = getelementptr [8 x i8], ptr %1, i64 %i.ha ; 7 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 -16    ; 2 uses
  %i.hd = sext i32 %i.gq to i64
  %i.he = getelementptr [8 x i8], ptr %1, i64 %i.hd ; 5 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 -16    ; 2 uses
  %i.hg = getelementptr i8, ptr %i.hb, i64 -8
  %i.hh = load <2 x double>, ptr %i.gv, align 8, !tbaa !14 ; 3 uses
  %i.hi = extractelement <2 x double> %i.hh, i64 0
  %i.hj = fadd double %i.gs, %i.hi                ; 2 uses
  %i.hk = extractelement <2 x double> %i.hh, i64 1
  %i.hl = fadd double %i.gz, %i.hk                ; 2 uses
  %i.hm = insertelement <2 x double> poison, double %i.gs, i64 0
  %i.hn = insertelement <2 x double> %i.hm, double %i.gz, i64 1
  %i.ho = fsub <2 x double> %i.hn, %i.hh          ; 2 uses
  %i.hp = load <2 x double>, ptr %i.hc, align 8, !tbaa !14 ; 3 uses
  %i.hq = load <2 x double>, ptr %i.hf, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop = fadd <2 x double> %i.hp, %i.hq
  %i.hr = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop717 = fadd <2 x double> %i.hp, %i.hq
  %i.hs = extractelement <2 x double> %foldExtExtBinop717, i64 1 ; 2 uses
  %i.ht = fsub <2 x double> %i.hp, %i.hq
  %i.hu = shufflevector <2 x double> %i.ht, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hv = fadd double %i.hj, %i.hr
  store double %i.hv, ptr %i.gr, align 8, !tbaa !14
  %i.hw = fadd double %i.hl, %i.hs
  store double %i.hw, ptr %i.gy, align 8, !tbaa !14
  %i.hx = fsub double %i.hj, %i.hr
  store double %i.hx, ptr %i.hc, align 8, !tbaa !14
  %i.hy = fsub double %i.hl, %i.hs
  store double %i.hy, ptr %i.hg, align 8, !tbaa !14
  %i.hz = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.ia = shufflevector <2 x double> %i.hz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = fmul <2 x double> %i.ia, %i.gl          ; 2 uses
  %i.ic = fsub <2 x double> %i.ho, %i.hu          ; 4 uses
  %i.id = fadd <2 x double> %i.ho, %i.hu          ; 3 uses
  %i.ie = shufflevector <2 x double> %i.ic, <2 x double> %i.id, <2 x i32> <i32 0, i32 3>
  %i.if = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ig = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ih = shufflevector <2 x double> %i.id, <2 x double> %i.ic, <2 x i32> <i32 0, i32 3>
  %i.ii = fneg <2 x double> %i.id
  %i.ij = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ik = shufflevector <2 x double> %i.ij, <2 x double> %i.ic, <2 x i32> <i32 0, i32 2>
  %i.il = fmul <2 x double> %i.if, %i.ik
  %i.im = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> %i.ie, <2 x double> %i.il)
  store <2 x double> %i.im, ptr %i.gv, align 8, !tbaa !14
  %i.in = shufflevector <2 x double> %i.ic, <2 x double> %i.ij, <2 x i32> <i32 1, i32 3>
  %i.io = getelementptr i8, ptr %i.gx, i64 8      ; 2 uses
  %i.ip = getelementptr i8, ptr %i.gu, i64 8      ; 2 uses
  %i.iq = load double, ptr %i.hb, align 8, !tbaa !14 ; 2 uses
end_hunk_0
begin_hunk_1_@cftf081:bb.a
  %i.bi = fadd double %i.ad, %i.ba
  store double %i.bi, ptr %i.g, align 8, !tbaa !14
  %i.bj = fadd double %i.ac, %i.bc
  store double %i.bj, ptr %i.l, align 8, !tbaa !14
  %i.bk = fsub double %i.ad, %i.ba
  store double %i.bk, ptr %i.m, align 8, !tbaa !14
  %i.bl = fadd <4 x double> %i.z, %i.aq
  %i.bm = fsub <4 x double> %i.z, %i.aq
  %i.bn = shufflevector <4 x double> %i.bm, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bo = shufflevector <4 x double> %i.bl, <4 x double> %i.bn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x double> %i.bo, ptr %0, align 8, !tbaa !14
  %i.bp = shufflevector <2 x double> %i.p, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bq = shufflevector <2 x double> %i.u, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.br = fsub <4 x double> %i.bp, %i.bq          ; 2 uses
  %i.bs = fsub <2 x double> %i.ag, %i.al
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.bu = fsub <4 x double> %i.br, %i.bt
  %i.bv = fadd <4 x double> %i.br, %i.bt
  %i.bw = shufflevector <4 x double> %i.bu, <4 x double> %i.bv, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x double> %i.bw, ptr %i.e, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @bitrv208(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load <2 x double>, ptr %i.c, align 8, !tbaa !14
  %i.f = load <2 x double>, ptr %i.d, align 8, !tbaa !14
  %i.g = load <2 x double>, ptr %i.a, align 8, !tbaa !14
  store <2 x double> %i.e, ptr %i.a, align 8, !tbaa !14
  store <2 x double> %i.g, ptr %i.c, align 8, !tbaa !14
  %i.h = load <2 x double>, ptr %i.b, align 8, !tbaa !14
  store <2 x double> %i.f, ptr %i.b, align 8, !tbaa !14
  store <2 x double> %i.h, ptr %i.d, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftf040(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !14  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %i.d = fadd double %i.a, %i.c                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !14 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.i = fadd double %i.f, %i.h                   ; 2 uses
  %i.j = fsub double %i.a, %i.c                   ; 2 uses
  %i.k = fsub double %i.f, %i.h                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !14 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !14 ; 2 uses
  %i.p = fadd double %i.m, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !14 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !14 ; 2 uses
  %i.u = fadd double %i.r, %i.t                   ; 2 uses
  %i.v = fsub double %i.m, %i.o                   ; 2 uses
  %i.w = fsub double %i.r, %i.t                   ; 2 uses
  %i.x = fadd double %i.d, %i.p
  store double %i.x, ptr %0, align 8, !tbaa !14
  %i.y = fadd double %i.i, %i.u
  store double %i.y, ptr %i.e, align 8, !tbaa !14
  %i.z = fsub double %i.d, %i.p
  store double %i.z, ptr %i.b, align 8, !tbaa !14
  %i.aa = fsub double %i.i, %i.u
  store double %i.aa, ptr %i.g, align 8, !tbaa !14
  %i.ab = fsub double %i.j, %i.w
  store double %i.ab, ptr %i.l, align 8, !tbaa !14
  %i.ac = fadd double %i.k, %i.v
  store double %i.ac, ptr %i.q, align 8, !tbaa !14
  %i.ad = fadd double %i.j, %i.w
  store double %i.ad, ptr %i.n, align 8, !tbaa !14
  %i.ae = fsub double %i.k, %i.v
  store double %i.ae, ptr %i.s, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftx020(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load <2 x double>, ptr %0, align 8, !tbaa !14 ; 2 uses
  %i.c = load <2 x double>, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %i.d = fadd <2 x double> %i.b, %i.c
  store <2 x double> %i.d, ptr %0, align 8, !tbaa !14
  %i.e = fsub <2 x double> %i.b, %i.c
  store <2 x double> %i.e, ptr %i.a, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cftb1st(i32 noundef %0, ptr nofree noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = ashr i32 %0, 3                           ; 9 uses
  %i.b = shl nsw i32 %i.a, 1
  %i.c = shl nsw i32 %i.a, 2
  %i.d = mul nsw i32 %i.a, 6
  %i.e = load double, ptr %1, align 8, !tbaa !14  ; 2 uses
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %i.f ; 3 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.i = fadd double %i.e, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %i.l = fneg double %i.k
  %i.m = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !14 ; 2 uses
  %i.o = fsub double %i.l, %i.n                   ; 2 uses
  %i.p = fsub double %i.e, %i.h                   ; 2 uses
  %i.q = fsub double %i.n, %i.k                   ; 2 uses
  %i.r = sext i32 %i.b to i64                     ; 8 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r ; 3 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !14 ; 2 uses
  %i.u = sext i32 %i.d to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %1, i64 %i.u ; 3 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !14 ; 2 uses
  %i.x = fadd double %i.t, %i.w                   ; 2 uses
  %i.y = getelementptr i8, ptr %i.s, i64 8        ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !14 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.v, i64 8       ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !14 ; 2 uses
  %i.ac = fadd double %i.z, %i.ab                 ; 2 uses
  %i.ad = fsub double %i.t, %i.w                  ; 2 uses
  %i.ae = fsub double %i.z, %i.ab                 ; 2 uses
  %i.af = fadd double %i.i, %i.x
  store double %i.af, ptr %1, align 8, !tbaa !14
  %i.ag = fsub double %i.o, %i.ac
  store double %i.ag, ptr %i.j, align 8, !tbaa !14
  %i.ah = fsub double %i.i, %i.x
  store double %i.ah, ptr %i.s, align 8, !tbaa !14
  %i.ai = fadd double %i.o, %i.ac
  store double %i.ai, ptr %i.y, align 8, !tbaa !14
  %i.aj = fadd double %i.p, %i.ae
  store double %i.aj, ptr %i.g, align 8, !tbaa !14
  %i.ak = fadd double %i.q, %i.ad
  store double %i.ak, ptr %i.m, align 8, !tbaa !14
  %i.al = fsub double %i.p, %i.ae
  store double %i.al, ptr %i.v, align 8, !tbaa !14
  %i.am = fsub double %i.q, %i.ad
  store double %i.am, ptr %i.aa, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !14 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !14 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.as = load double, ptr %i.ar, align 8, !tbaa !14 ; 3 uses
  %i.at = add nsw i32 %i.a, -2                    ; 2 uses
  %i.au = icmp sgt i32 %i.a, 4
  br i1 %i.au, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sext i32 %i.at to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.av = zext nneg i32 %i.at to i64              ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.r
  %invariant.gep711 = getelementptr [8 x i8], ptr %1, i64 %i.r
  %i.aw = insertelement <2 x double> poison, double %i.as, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv703 = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next704, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ba = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %.lr.ph.preheader ], [ %i.hq, %.lr.ph ] ; 2 uses
  %i.bb = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %.lr.ph.preheader ], [ %i.be, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.be = load <2 x double>, ptr %i.bc, align 8, !tbaa !14 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bg = add nuw nsw i64 %indvars.iv703, %i.r    ; 2 uses
  %i.bh = add nuw nsw i64 %i.bg, %i.r             ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv703 ; 5 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bh ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bj, i64 16     ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bj, i64 24
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bg ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bh ; 3 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %i.bs = getelementptr i8, ptr %i.bq, i64 16     ; 2 uses
  %i.bt = getelementptr i8, ptr %gep, i64 16      ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bq, i64 24
  %i.bv = sub nsw i64 %i.r, %indvars.iv703        ; 2 uses
  %i.bw = add nuw nsw i64 %i.bv, %i.r             ; 2 uses
  %i.bx = add nuw nsw i64 %i.bw, %i.r             ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bv ; 5 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bx ; 5 uses
  %i.ca = getelementptr i8, ptr %i.by, i64 8      ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bz, i64 8
  %i.cc = getelementptr i8, ptr %i.by, i64 -16    ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bz, i64 -16    ; 2 uses
  %i.ce = getelementptr i8, ptr %i.by, i64 -8     ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bz, i64 -8
  %i.cg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bw ; 5 uses
  %gep712 = getelementptr [8 x i8], ptr %invariant.gep711, i64 %i.bx ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %i.ci = getelementptr i8, ptr %i.cg, i64 -16    ; 2 uses
  %i.cj = getelementptr i8, ptr %gep712, i64 -16  ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cg, i64 -8
  %i.cl = load <2 x double>, ptr %i.bf, align 8, !tbaa !14 ; 7 uses
  %i.cm = fsub <2 x double> %i.ba, %i.cl
  %i.cn = fadd <2 x double> %i.ba, %i.cl
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> %i.cm, <2 x i32> <i32 0, i32 3>
  %i.cp = fmul <2 x double> %i.ax, %i.co          ; 2 uses
  %i.cq = extractelement <2 x double> %i.cl, i64 1
  %i.cr = fneg double %i.cq                       ; 4 uses
  %i.cs = load <2 x double>, ptr %i.bi, align 8, !tbaa !14 ; 3 uses
  %i.ct = load double, ptr %i.bk, align 8, !tbaa !14
  %i.cu = load <2 x double>, ptr %i.bj, align 8, !tbaa !14 ; 3 uses
  %i.cv = load double, ptr %i.bl, align 8, !tbaa !14
  %foldExtExtBinop = fadd <2 x double> %i.cs, %i.cu ; 2 uses
  %i.cw = fneg double %i.ct
  %i.cx = fsub double %i.cw, %i.cv                ; 2 uses
  %i.cy = shufflevector <2 x double> %i.cu, <2 x double> %i.cs, <2 x i32> <i32 1, i32 2>
  %i.cz = shufflevector <2 x double> %i.cs, <2 x double> %i.cu, <2 x i32> <i32 1, i32 2>
  %i.da = fsub <2 x double> %i.cy, %i.cz          ; 2 uses
  %i.db = load <2 x double>, ptr %i.bq, align 8, !tbaa !14 ; 3 uses
  %i.dc = load <2 x double>, ptr %gep, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop717 = fadd <2 x double> %i.db, %i.dc ; 2 uses
  %foldExtExtBinop719 = fadd <2 x double> %i.db, %i.dc
  %i.dd = extractelement <2 x double> %foldExtExtBinop719, i64 1 ; 2 uses
  %i.de = fsub <2 x double> %i.db, %i.dc          ; 2 uses
  %foldExtExtBinop721 = fadd <2 x double> %foldExtExtBinop, %foldExtExtBinop717
  %i.df = extractelement <2 x double> %foldExtExtBinop721, i64 0
  %i.dg = fsub double %i.cx, %i.dd
  %foldExtExtBinop723 = fsub <2 x double> %foldExtExtBinop, %foldExtExtBinop717
  %i.dh = extractelement <2 x double> %foldExtExtBinop723, i64 0
  %i.di = fadd double %i.cx, %i.dd
  %i.dj = fsub <2 x double> %i.da, %i.de          ; 3 uses
  %i.dk = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dl = fneg <2 x double> %i.dj
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> %i.dj, <2 x i32> <i32 1, i32 2>
  %i.dn = fmul <2 x double> %i.dk, %i.dm
  %i.do = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.dj, <2 x double> %i.dn)
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dr = fadd <2 x double> %i.bb, %i.be
  %i.ds = fmul <2 x double> %i.az, %i.dr          ; 2 uses
  %i.dt = load <2 x double>, ptr %i.bm, align 8, !tbaa !14 ; 3 uses
  %i.du = load double, ptr %i.bo, align 8, !tbaa !14
  %i.dv = load <2 x double>, ptr %i.bn, align 8, !tbaa !14 ; 3 uses
  %i.dw = load double, ptr %i.bp, align 8, !tbaa !14
  %foldExtExtBinop725 = fadd <2 x double> %i.dt, %i.dv ; 2 uses
  %i.dx = fneg double %i.du
  %i.dy = fsub double %i.dx, %i.dw                ; 2 uses
  %i.dz = shufflevector <2 x double> %i.dv, <2 x double> %i.dt, <2 x i32> <i32 1, i32 2>
  %i.ea = shufflevector <2 x double> %i.dt, <2 x double> %i.dv, <2 x i32> <i32 1, i32 2>
  %i.eb = fsub <2 x double> %i.dz, %i.ea          ; 2 uses
  %i.ec = load <2 x double>, ptr %i.bs, align 8, !tbaa !14 ; 3 uses
  %i.ed = load <2 x double>, ptr %i.bt, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop727 = fadd <2 x double> %i.ec, %i.ed ; 2 uses
  %foldExtExtBinop729 = fadd <2 x double> %i.ec, %i.ed
  %i.ee = extractelement <2 x double> %foldExtExtBinop729, i64 1 ; 2 uses
  %i.ef = fsub <2 x double> %i.ec, %i.ed          ; 2 uses
  %foldExtExtBinop731 = fadd <2 x double> %foldExtExtBinop725, %foldExtExtBinop727
  %i.eg = extractelement <2 x double> %foldExtExtBinop731, i64 0
  %i.eh = fsub double %i.dy, %i.ee
  %foldExtExtBinop733 = fsub <2 x double> %foldExtExtBinop725, %foldExtExtBinop727
  %i.ei = extractelement <2 x double> %foldExtExtBinop733, i64 0
  %i.ej = fadd double %i.dy, %i.ee
  %i.ek = fsub <2 x double> %i.eb, %i.ef          ; 2 uses
  store double %i.df, ptr %i.bi, align 8, !tbaa !14
  store double %i.dg, ptr %i.bk, align 8, !tbaa !14
  store double %i.eg, ptr %i.bm, align 8, !tbaa !14
  store double %i.eh, ptr %i.bo, align 8, !tbaa !14
  store double %i.dh, ptr %i.bq, align 8, !tbaa !14
  store double %i.di, ptr %i.br, align 8, !tbaa !14
  store double %i.ei, ptr %i.bs, align 8, !tbaa !14
  store double %i.ej, ptr %i.bu, align 8, !tbaa !14
  %i.el = fadd <2 x double> %i.eb, %i.ef          ; 3 uses
  %i.em = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.en = fneg <2 x double> %i.el
  %i.eo = shufflevector <2 x double> %i.el, <2 x double> %i.en, <2 x i32> <i32 1, i32 2>
  %i.ep = fmul <2 x double> %i.em, %i.eo
  %i.eq = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.el, <2 x double> %i.ep)
  %i.es = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.es, ptr %i.bn, align 8, !tbaa !14
  store <2 x double> %i.dq, ptr %gep, align 8, !tbaa !14
  %i.et = insertelement <2 x double> %i.cl, double %i.cr, i64 0
  %i.eu = fmul <2 x double> %i.ek, %i.et
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ew = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.ek, <2 x double> %i.ev)
  %i.ey = fadd <2 x double> %i.da, %i.de          ; 3 uses
  %i.ez = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fa = fneg <2 x double> %i.ey
  %i.fb = shufflevector <2 x double> %i.ey, <2 x double> %i.fa, <2 x i32> <i32 1, i32 2>
  %i.fc = fmul <2 x double> %i.ez, %i.fb
  %i.fd = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.ey, <2 x double> %i.fc)
  %i.ff = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ff, ptr %i.bj, align 8, !tbaa !14
  %i.fg = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.fg, ptr %i.bt, align 8, !tbaa !14
  %i.fh = load <2 x double>, ptr %i.by, align 8, !tbaa !14 ; 3 uses
  %i.fi = load double, ptr %i.ca, align 8, !tbaa !14
  %i.fj = load <2 x double>, ptr %i.bz, align 8, !tbaa !14 ; 3 uses
  %i.fk = load double, ptr %i.cb, align 8, !tbaa !14
  %foldExtExtBinop735 = fadd <2 x double> %i.fh, %i.fj ; 2 uses
  %i.fl = fneg double %i.fi
  %i.fm = fsub double %i.fl, %i.fk                ; 2 uses
  %i.fn = shufflevector <2 x double> %i.fj, <2 x double> %i.fh, <2 x i32> <i32 1, i32 2>
  %i.fo = shufflevector <2 x double> %i.fh, <2 x double> %i.fj, <2 x i32> <i32 1, i32 2>
  %i.fp = fsub <2 x double> %i.fn, %i.fo          ; 2 uses
  %i.fq = load <2 x double>, ptr %i.cg, align 8, !tbaa !14 ; 3 uses
  %i.fr = load <2 x double>, ptr %gep712, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop737 = fadd <2 x double> %i.fq, %i.fr ; 2 uses
  %foldExtExtBinop739 = fadd <2 x double> %i.fq, %i.fr
  %i.fs = extractelement <2 x double> %foldExtExtBinop739, i64 1 ; 2 uses
  %i.ft = fsub <2 x double> %i.fq, %i.fr          ; 2 uses
  %foldExtExtBinop741 = fadd <2 x double> %foldExtExtBinop735, %foldExtExtBinop737
  %i.fu = extractelement <2 x double> %foldExtExtBinop741, i64 0
  %i.fv = fsub double %i.fm, %i.fs
  %foldExtExtBinop743 = fsub <2 x double> %foldExtExtBinop735, %foldExtExtBinop737
  %i.fw = extractelement <2 x double> %foldExtExtBinop743, i64 0
  %i.fx = fadd double %i.fm, %i.fs
  %i.fy = fadd <2 x double> %i.fp, %i.ft          ; 3 uses
  %i.fz = fneg <2 x double> %i.fy
  %i.ga = shufflevector <2 x double> %i.fy, <2 x double> %i.fz, <2 x i32> <i32 1, i32 2>
  %i.gb = fmul <2 x double> %i.fd, %i.ga
  %i.gc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> %i.fy, <2 x double> %i.gb)
  %i.gd = fsub <2 x double> %i.fp, %i.ft          ; 3 uses
  %i.ge = fneg <2 x double> %i.gd
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> %i.gd, <2 x i32> <i32 1, i32 2>
  %i.gg = fmul <2 x double> %i.do, %i.gf
  %i.gh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.gd, <2 x double> %i.gg)
  %i.gi = load <2 x double>, ptr %i.cc, align 8, !tbaa !14 ; 3 uses
  %i.gj = load double, ptr %i.ce, align 8, !tbaa !14
  %i.gk = load <2 x double>, ptr %i.cd, align 8, !tbaa !14 ; 3 uses
  %i.gl = load double, ptr %i.cf, align 8, !tbaa !14
  %foldExtExtBinop745 = fadd <2 x double> %i.gi, %i.gk ; 2 uses
  %i.gm = fneg double %i.gj
  %i.gn = fsub double %i.gm, %i.gl                ; 2 uses
  %i.go = shufflevector <2 x double> %i.gk, <2 x double> %i.gi, <2 x i32> <i32 1, i32 2>
  %i.gp = shufflevector <2 x double> %i.gi, <2 x double> %i.gk, <2 x i32> <i32 1, i32 2>
  %i.gq = fsub <2 x double> %i.go, %i.gp          ; 2 uses
  %i.gr = load <2 x double>, ptr %i.ci, align 8, !tbaa !14 ; 3 uses
  %i.gs = load <2 x double>, ptr %i.cj, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop747 = fadd <2 x double> %i.gr, %i.gs ; 2 uses
  %foldExtExtBinop749 = fadd <2 x double> %i.gr, %i.gs
  %i.gt = extractelement <2 x double> %foldExtExtBinop749, i64 1 ; 2 uses
  %i.gu = fsub <2 x double> %i.gr, %i.gs          ; 2 uses
  store double %i.fu, ptr %i.by, align 8, !tbaa !14
  store double %i.fv, ptr %i.ca, align 8, !tbaa !14
  %foldExtExtBinop751 = fadd <2 x double> %foldExtExtBinop745, %foldExtExtBinop747
  %i.gv = extractelement <2 x double> %foldExtExtBinop751, i64 0
  store double %i.gv, ptr %i.cc, align 8, !tbaa !14
  %i.gw = fsub double %i.gn, %i.gt
  store double %i.gw, ptr %i.ce, align 8, !tbaa !14
  store double %i.fw, ptr %i.cg, align 8, !tbaa !14
  store double %i.fx, ptr %i.ch, align 8, !tbaa !14
  %foldExtExtBinop753 = fsub <2 x double> %foldExtExtBinop745, %foldExtExtBinop747
  %i.gx = extractelement <2 x double> %foldExtExtBinop753, i64 0
  store double %i.gx, ptr %i.ci, align 8, !tbaa !14
  %i.gy = fadd double %i.gn, %i.gt
  store double %i.gy, ptr %i.ck, align 8, !tbaa !14
  %i.gz = shufflevector <2 x double> %i.gc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.gz, ptr %i.bz, align 8, !tbaa !14
  %i.ha = fadd <2 x double> %i.gq, %i.gu          ; 3 uses
  %i.hb = fneg <2 x double> %i.ha
  %i.hc = shufflevector <2 x double> %i.ha, <2 x double> %i.hb, <2 x i32> <i32 1, i32 2>
  %i.hd = fmul <2 x double> %i.eq, %i.hc
  %i.he = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.ha, <2 x double> %i.hd)
  %i.hf = shufflevector <2 x double> %i.he, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.hf, ptr %i.cd, align 8, !tbaa !14
  %i.hg = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.hg, ptr %gep712, align 8, !tbaa !14
  %i.hh = fsub <2 x double> %i.gq, %i.gu          ; 3 uses
  %i.hi = fneg <2 x double> %i.hh
  %i.hj = shufflevector <2 x double> %i.hi, <2 x double> %i.hh, <2 x i32> <i32 1, i32 2>
  %i.hk = fmul <2 x double> %i.ew, %i.hj
  %i.hl = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.hm = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hm, <2 x double> %i.hh, <2 x double> %i.hk)
  %i.ho = shufflevector <2 x double> %i.hn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ho, ptr %i.cj, align 8, !tbaa !14
  %indvars.iv.next704 = add nuw nsw i64 %indvars.iv703, 4 ; 2 uses
  %i.hp = icmp samesign ult i64 %indvars.iv.next704, %i.av
  %i.hq = insertelement <2 x double> %i.cl, double %i.cr, i64 1
  br i1 %i.hp, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !110

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.hr = extractelement <2 x double> %i.cl, i64 0
  br label %._crit_edge
end_hunk_1
begin_hunk_2_@bitrv2conj:bb.a
  %indvars.iv265 = phi i64 [ 1, %.preheader239.preheader ], [ %indvars.iv.next266, %bb.e ] ; 4 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv265
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !12 ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %indvars.iv265.tr = trunc nuw nsw i64 %indvars.iv265 to i32
  %i.dr = shl nuw nsw i32 %indvars.iv265.tr, 1    ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader239, %bb.d
  %indvars.iv260 = phi i64 [ 0, %.preheader239 ], [ %indvars.iv.next261, %bb.d ] ; 3 uses
  %i.ds = shl nuw nsw i64 %indvars.iv260, 1
  %i.dt = add nsw i64 %i.ds, %i.dq                ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv260
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !12
  %i.dw = add nsw i32 %i.dv, %i.dr                ; 2 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dt ; 3 uses
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !14
  %i.dz = getelementptr i8, ptr %i.dx, i64 8      ; 2 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !14
  %i.eb = fneg double %i.ea
  %i.ec = sext i32 %i.dw to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ec ; 3 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !14
  %i.ef = getelementptr i8, ptr %i.ed, i64 8      ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !14
  %i.eh = fneg double %i.eg
  store double %i.ee, ptr %i.dx, align 8, !tbaa !14
  store double %i.eh, ptr %i.dz, align 8, !tbaa !14
  store double %i.dy, ptr %i.ed, align 8, !tbaa !14
  store double %i.eb, ptr %i.ef, align 8, !tbaa !14
  %i.ei = add nsw i32 %i.dw, %i.de
  %gep298 = getelementptr [8 x i8], ptr %invariant.gep297, i64 %i.dt ; 3 uses
  %i.ej = load double, ptr %gep298, align 8, !tbaa !14
  %i.ek = getelementptr i8, ptr %gep298, i64 8    ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !14
  %i.em = fneg double %i.el
  %i.en = sext i32 %i.ei to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %2, i64 %i.en ; 3 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !14
  %i.eq = getelementptr i8, ptr %i.eo, i64 8      ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !14
  %i.es = fneg double %i.er
  store double %i.ep, ptr %gep298, align 8, !tbaa !14
  store double %i.es, ptr %i.ek, align 8, !tbaa !14
  store double %i.ej, ptr %i.eo, align 8, !tbaa !14
  store double %i.em, ptr %i.eq, align 8, !tbaa !14
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %exitcond264.not = icmp eq i64 %indvars.iv.next261, %indvars.iv265
  br i1 %exitcond264.not, label %bb.e, label %bb.d, !llvm.loop !116

bb.e:                                             ; preds = %bb.d
  %i.et = add nsw i32 %i.dp, %i.dr                ; 2 uses
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr [8 x i8], ptr %2, i64 %i.eu
  %i.ew = getelementptr i8, ptr %i.ev, i64 8      ; 2 uses
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !14
  %i.ey = fneg double %i.ex
  store double %i.ey, ptr %i.ew, align 8, !tbaa !14
  %i.ez = add nsw i32 %i.et, %i.de
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr [8 x i8], ptr %2, i64 %i.fa
  %i.fc = getelementptr i8, ptr %i.fb, i64 8      ; 2 uses
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !14
  %i.fe = fneg double %i.fd
  store double %i.fe, ptr %i.fc, align 8, !tbaa !14
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 2 uses
  %exitcond269.not = icmp eq i64 %indvars.iv.next266, %wide.trip.count268
  br i1 %exitcond269.not, label %.loopexit, label %.preheader239, !llvm.loop !117

.loopexit:                                        ; preds = %bb.e, %._crit_edge253, %bb.c, %.preheader238
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @bitrv216neg(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.p = load <2 x double>, ptr %i.o, align 8, !tbaa !14
  %i.q = load <2 x double>, ptr %i.g, align 8, !tbaa !14
  %i.r = load <2 x double>, ptr %i.k, align 8, !tbaa !14
  %i.s = load <2 x double>, ptr %i.c, align 8, !tbaa !14
  store <2 x double> %i.r, ptr %i.c, align 8, !tbaa !14
  %i.t = load <2 x double>, ptr %i.m, align 8, !tbaa !14
  %i.u = load <2 x double>, ptr %i.e, align 8, !tbaa !14
  store <2 x double> %i.t, ptr %i.e, align 8, !tbaa !14
  %i.v = load <2 x double>, ptr %i.i, align 8, !tbaa !14
  store <2 x double> %i.v, ptr %i.g, align 8, !tbaa !14
  %i.w = load <2 x double>, ptr %i.a, align 8, !tbaa !14
  store <2 x double> %i.p, ptr %i.a, align 8, !tbaa !14
  %i.x = load <2 x double>, ptr %i.n, align 8, !tbaa !14
  store <2 x double> %i.x, ptr %i.i, align 8, !tbaa !14
  %i.y = load <2 x double>, ptr %i.f, align 8, !tbaa !14
  store <2 x double> %i.u, ptr %i.f, align 8, !tbaa !14
  %i.z = load <2 x double>, ptr %i.j, align 8, !tbaa !14
  store <2 x double> %i.y, ptr %i.j, align 8, !tbaa !14
  store <2 x double> %i.z, ptr %i.k, align 8, !tbaa !14
  %i.aa = load <2 x double>, ptr %i.b, align 8, !tbaa !14
  store <2 x double> %i.q, ptr %i.b, align 8, !tbaa !14
  %i.ab = load <2 x double>, ptr %i.l, align 8, !tbaa !14
  store <2 x double> %i.aa, ptr %i.l, align 8, !tbaa !14
  store <2 x double> %i.ab, ptr %i.m, align 8, !tbaa !14
  %i.ac = load <2 x double>, ptr %i.d, align 8, !tbaa !14
  store <2 x double> %i.s, ptr %i.d, align 8, !tbaa !14
  store <2 x double> %i.ac, ptr %i.n, align 8, !tbaa !14
  %i.ad = load <2 x double>, ptr %i.h, align 8, !tbaa !14
  store <2 x double> %i.w, ptr %i.h, align 8, !tbaa !14
  store <2 x double> %i.ad, ptr %i.o, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @bitrv208neg(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !14
  %i.i = load <2 x double>, ptr %i.c, align 8, !tbaa !14
  %i.j = load <2 x double>, ptr %i.e, align 8, !tbaa !14
  store <2 x double> %i.j, ptr %i.c, align 8, !tbaa !14
  %i.k = load <2 x double>, ptr %i.a, align 8, !tbaa !14
  store <2 x double> %i.h, ptr %i.a, align 8, !tbaa !14
  %i.l = load <2 x double>, ptr %i.f, align 8, !tbaa !14
  store <2 x double> %i.l, ptr %i.e, align 8, !tbaa !14
  %i.m = load <2 x double>, ptr %i.b, align 8, !tbaa !14
  store <2 x double> %i.i, ptr %i.b, align 8, !tbaa !14
  store <2 x double> %i.m, ptr %i.f, align 8, !tbaa !14
  %i.n = load <2 x double>, ptr %i.d, align 8, !tbaa !14
  store <2 x double> %i.k, ptr %i.d, align 8, !tbaa !14
  store <2 x double> %i.n, ptr %i.g, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftb040(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !14  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %i.d = fadd double %i.a, %i.c                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !14 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.i = fadd double %i.f, %i.h                   ; 2 uses
  %i.j = fsub double %i.a, %i.c                   ; 2 uses
  %i.k = fsub double %i.f, %i.h                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !14 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !14 ; 2 uses
  %i.p = fadd double %i.m, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !14 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !14 ; 2 uses
  %i.u = fadd double %i.r, %i.t                   ; 2 uses
  %i.v = fsub double %i.m, %i.o                   ; 2 uses
  %i.w = fsub double %i.r, %i.t                   ; 2 uses
  %i.x = fadd double %i.d, %i.p
  store double %i.x, ptr %0, align 8, !tbaa !14
  %i.y = fadd double %i.i, %i.u
  store double %i.y, ptr %i.e, align 8, !tbaa !14
  %i.z = fsub double %i.d, %i.p
  store double %i.z, ptr %i.b, align 8, !tbaa !14
  %i.aa = fsub double %i.i, %i.u
  store double %i.aa, ptr %i.g, align 8, !tbaa !14
  %i.ab = fadd double %i.j, %i.w
  store double %i.ab, ptr %i.l, align 8, !tbaa !14
  %i.ac = fsub double %i.k, %i.v
  store double %i.ac, ptr %i.q, align 8, !tbaa !14
  %i.ad = fsub double %i.j, %i.w
  store double %i.ad, ptr %i.n, align 8, !tbaa !14
  %i.ae = fadd double %i.k, %i.v
  store double %i.ae, ptr %i.s, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cftmdl1(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = ashr i32 %0, 3                           ; 9 uses
  %i.b = shl nsw i32 %i.a, 1                      ; 2 uses
  %i.c = shl nsw i32 %i.a, 2
  %i.d = mul nsw i32 %i.a, 6
  %i.e = load double, ptr %1, align 8, !tbaa !14  ; 2 uses
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %i.f ; 3 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.i = fadd double %i.e, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %i.l = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !14 ; 2 uses
  %i.n = fadd double %i.k, %i.m                   ; 2 uses
  %i.o = fsub double %i.e, %i.h                   ; 2 uses
  %i.p = fsub double %i.k, %i.m                   ; 2 uses
  %i.q = sext i32 %i.b to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %1, i64 %i.q ; 3 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !14 ; 2 uses
  %i.t = sext i32 %i.d to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %1, i64 %i.t ; 3 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !14 ; 2 uses
  %i.w = fadd double %i.s, %i.v                   ; 2 uses
  %i.x = getelementptr i8, ptr %i.r, i64 8        ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !14 ; 2 uses
  %i.z = getelementptr i8, ptr %i.u, i64 8        ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !14 ; 2 uses
  %i.ab = fadd double %i.y, %i.aa                 ; 2 uses
  %i.ac = fsub double %i.s, %i.v                  ; 2 uses
  %i.ad = fsub double %i.y, %i.aa                 ; 2 uses
  %i.ae = fadd double %i.i, %i.w
  store double %i.ae, ptr %1, align 8, !tbaa !14
  %i.af = fadd double %i.n, %i.ab
  store double %i.af, ptr %i.j, align 8, !tbaa !14
  %i.ag = fsub double %i.i, %i.w
  store double %i.ag, ptr %i.r, align 8, !tbaa !14
  %i.ah = fsub double %i.n, %i.ab
  store double %i.ah, ptr %i.x, align 8, !tbaa !14
  %i.ai = fsub double %i.o, %i.ad
  store double %i.ai, ptr %i.g, align 8, !tbaa !14
  %i.aj = fadd double %i.p, %i.ac
  store double %i.aj, ptr %i.l, align 8, !tbaa !14
  %i.ak = fadd double %i.o, %i.ad
  store double %i.ak, ptr %i.u, align 8, !tbaa !14
  %i.al = fsub double %i.p, %i.ac
  store double %i.al, ptr %i.z, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load double, ptr %i.am, align 8, !tbaa !14 ; 3 uses
  %i.ao = icmp sgt i32 %i.a, 2
  br i1 %i.ao, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sext i32 %i.a to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %3 = zext nneg i32 %i.b to i64                  ; 7 uses
  %i.ap = zext nneg i32 %i.a to i64               ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  %invariant.gep344 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv338 = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next339, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load double, ptr %i.as, align 8, !tbaa !14
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.av = load double, ptr %i.au, align 8, !tbaa !14 ; 2 uses
  %i.aw = fneg double %i.av
  %i.ax = add nuw nsw i64 %indvars.iv338, %3      ; 2 uses
  %i.ay = add nuw nsw i64 %i.ax, %3               ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv338 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ay ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ay ; 2 uses
  %i.bc = load <2 x double>, ptr %i.az, align 8, !tbaa !14 ; 2 uses
  %i.bd = load <2 x double>, ptr %i.ba, align 8, !tbaa !14 ; 2 uses
  %i.be = fadd <2 x double> %i.bc, %i.bd          ; 2 uses
  %i.bf = load <2 x double>, ptr %i.bb, align 8, !tbaa !14 ; 2 uses
  %i.bg = load <2 x double>, ptr %gep, align 8, !tbaa !14 ; 2 uses
  %i.bh = fadd <2 x double> %i.bf, %i.bg          ; 2 uses
  %i.bi = fadd <2 x double> %i.be, %i.bh
  %i.bj = fsub <2 x double> %i.be, %i.bh
  %i.bk = sub nuw nsw i64 %3, %indvars.iv338      ; 2 uses
  %i.bl = add nuw nsw i64 %i.bk, %3               ; 2 uses
  %i.bm = add nuw nsw i64 %i.bl, %3               ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bk ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bm ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bl ; 2 uses
  %gep345 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep344, i64 %i.bm ; 2 uses
  %i.bq = fsub <2 x double> %i.bc, %i.bd          ; 2 uses
  %i.br = fsub <2 x double> %i.bf, %i.bg
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bt = fadd <2 x double> %i.bq, %i.bs          ; 3 uses
  %i.bu = fsub <2 x double> %i.bq, %i.bs          ; 4 uses
  %i.bv = shufflevector <2 x double> %i.bt, <2 x double> %i.bu, <2 x i32> <i32 0, i32 3>
  %i.bw = shufflevector <2 x double> %i.bu, <2 x double> %i.bt, <2 x i32> <i32 1, i32 2>
  %i.bx = insertelement <2 x double> poison, double %i.aw, i64 0 ; 2 uses
  %i.by = insertelement <2 x double> %i.bx, double %i.av, i64 1
  %i.bz = fmul <2 x double> %i.bw, %i.by
  %i.ca = insertelement <2 x double> poison, double %i.at, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.bv, <2 x double> %i.bz)
  %i.cd = load <2 x double>, ptr %i.aq, align 8, !tbaa !14 ; 3 uses
  store <2 x double> %i.bi, ptr %i.az, align 8, !tbaa !14
  store <2 x double> %i.bj, ptr %i.bb, align 8, !tbaa !14
  %i.ce = shufflevector <2 x double> %i.bu, <2 x double> %i.bt, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cf = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cg = fneg <2 x double> %i.ce
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> %i.bu, <2 x i32> <i32 1, i32 2>
  %i.ci = fmul <2 x double> %i.cf, %i.ch
  %i.cj = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.ce, <2 x double> %i.ci)
  store <2 x double> %i.ck, ptr %i.ba, align 8, !tbaa !14
  store <2 x double> %i.cc, ptr %gep, align 8, !tbaa !14
  %i.cl = load <2 x double>, ptr %i.bn, align 8, !tbaa !14 ; 2 uses
  %i.cm = load <2 x double>, ptr %i.bo, align 8, !tbaa !14 ; 2 uses
  %i.cn = fadd <2 x double> %i.cl, %i.cm          ; 2 uses
  %i.co = load <2 x double>, ptr %i.bp, align 8, !tbaa !14 ; 2 uses
  %i.cp = load <2 x double>, ptr %gep345, align 8, !tbaa !14 ; 2 uses
  %i.cq = fadd <2 x double> %i.co, %i.cp          ; 2 uses
  %i.cr = fadd <2 x double> %i.cn, %i.cq
  store <2 x double> %i.cr, ptr %i.bn, align 8, !tbaa !14
  %i.cs = fsub <2 x double> %i.cn, %i.cq
  store <2 x double> %i.cs, ptr %i.bp, align 8, !tbaa !14
  %i.ct = fsub <2 x double> %i.cl, %i.cm          ; 2 uses
  %i.cu = fsub <2 x double> %i.co, %i.cp
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cw = fsub <2 x double> %i.ct, %i.cv          ; 4 uses
  %i.cx = fadd <2 x double> %i.ct, %i.cv          ; 2 uses
  %i.cy = shufflevector <2 x double> %i.cw, <2 x double> %i.cx, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cz = fneg <2 x double> %i.cy
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> %i.cw, <2 x i32> <i32 1, i32 2>
  %i.db = fmul <2 x double> %i.cj, %i.da
  %i.dc = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.cy, <2 x double> %i.db)
  store <2 x double> %i.dd, ptr %i.bo, align 8, !tbaa !14
  %i.de = shufflevector <2 x double> %i.cx, <2 x double> %i.cw, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.df = fneg <2 x double> %i.de
  %i.dg = shufflevector <2 x double> %i.cw, <2 x double> %i.df, <2 x i32> <i32 1, i32 2>
  %i.dh = fmul <2 x double> %i.cb, %i.dg
  %i.di = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> %i.de, <2 x double> %i.dh)
  store <2 x double> %i.dj, ptr %gep345, align 8, !tbaa !14
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 2 ; 2 uses
  %i.dk = icmp samesign ult i64 %indvars.iv.next339, %i.ap
  br i1 %i.dk, label %.lr.ph, label %._crit_edge, !llvm.loop !118

._crit_edge:                                      ; preds = %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.ap, %.lr.ph ]
  %i.dl = mul nsw i32 %i.a, 3
  %i.dm = mul nsw i32 %i.a, 5
  %i.dn = mul nsw i32 %i.a, 7
  %i.do = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi ; 3 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !14 ; 2 uses
  %i.dq = sext i32 %i.dm to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dq ; 3 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !14 ; 2 uses
  %i.dt = fadd double %i.dp, %i.ds                ; 2 uses
  %i.du = getelementptr i8, ptr %i.do, i64 8      ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !14 ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dr, i64 8      ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !14 ; 2 uses
  %i.dy = fadd double %i.dv, %i.dx                ; 2 uses
  %i.dz = fsub double %i.dp, %i.ds                ; 2 uses
  %i.ea = fsub double %i.dv, %i.dx                ; 2 uses
  %i.eb = sext i32 %i.dl to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %1, i64 %i.eb ; 3 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !14 ; 2 uses
  %i.ee = sext i32 %i.dn to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ee ; 3 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !14 ; 2 uses
  %i.eh = fadd double %i.ed, %i.eg                ; 2 uses
  %i.ei = getelementptr i8, ptr %i.ec, i64 8      ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !14 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ef, i64 8      ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !14 ; 2 uses
  %i.em = fadd double %i.ej, %i.el                ; 2 uses
  %i.en = fsub double %i.ed, %i.eg                ; 2 uses
  %i.eo = fsub double %i.ej, %i.el                ; 2 uses
  %i.ep = fadd double %i.dt, %i.eh
  store double %i.ep, ptr %i.do, align 8, !tbaa !14
  %i.eq = fadd double %i.dy, %i.em
  store double %i.eq, ptr %i.du, align 8, !tbaa !14
  %i.er = fsub double %i.dt, %i.eh
  store double %i.er, ptr %i.ec, align 8, !tbaa !14
  %i.es = fsub double %i.dy, %i.em
  store double %i.es, ptr %i.ei, align 8, !tbaa !14
  %i.et = fsub double %i.dz, %i.eo                ; 2 uses
  %i.eu = fadd double %i.ea, %i.en                ; 2 uses
  %i.ev = fsub double %i.et, %i.eu
  %i.ew = fmul double %i.an, %i.ev
  store double %i.ew, ptr %i.dr, align 8, !tbaa !14
  %i.ex = fadd double %i.eu, %i.et
  %i.ey = fmul double %i.an, %i.ex
  store double %i.ey, ptr %i.dw, align 8, !tbaa !14
  %i.ez = fadd double %i.dz, %i.eo                ; 2 uses
  %i.fa = fsub double %i.ea, %i.en                ; 2 uses
  %i.fb = fneg double %i.an                       ; 2 uses
  %i.fc = fadd double %i.fa, %i.ez
  %i.fd = fmul double %i.fc, %i.fb
  store double %i.fd, ptr %i.ef, align 8, !tbaa !14
  %i.fe = fsub double %i.fa, %i.ez
  %i.ff = fmul double %i.fe, %i.fb
  store double %i.ff, ptr %i.ek, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cftmdl2(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = ashr i32 %0, 3                           ; 9 uses
  %i.b = shl nsw i32 %i.a, 1                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !14 ; 4 uses
  %i.e = shl nsw i32 %i.a, 2
  %i.f = mul nsw i32 %i.a, 6
  %i.g = load double, ptr %1, align 8, !tbaa !14  ; 2 uses
  %i.h = sext i32 %i.e to i64                     ; 2 uses
  %i.i = getelementptr [8 x i8], ptr %1, i64 %i.h ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %i.l = fsub double %i.g, %i.k                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !14 ; 2 uses
  %i.o = load double, ptr %i.i, align 8, !tbaa !14 ; 2 uses
  %i.p = fadd double %i.n, %i.o                   ; 2 uses
  %i.q = fadd double %i.g, %i.k                   ; 2 uses
  %i.r = fsub double %i.n, %i.o                   ; 2 uses
  %i.s = sext i32 %i.b to i64                     ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %1, i64 %i.s ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !14 ; 2 uses
  %i.v = sext i32 %i.f to i64
  %i.w = getelementptr [8 x i8], ptr %1, i64 %i.v ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8        ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !14 ; 2 uses
  %i.z = fsub double %i.u, %i.y                   ; 2 uses
  %i.aa = sext i32 %i.b to i64
  %i.ab = getelementptr [8 x i8], ptr %1, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 8      ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !14 ; 2 uses
  %i.ae = load double, ptr %i.w, align 8, !tbaa !14 ; 2 uses
  %i.af = fadd double %i.ad, %i.ae                ; 2 uses
  %i.ag = fadd double %i.u, %i.y                  ; 2 uses
  %i.ah = fsub double %i.ad, %i.ae                ; 2 uses
  %i.ai = fsub double %i.z, %i.af
  %i.aj = fmul double %i.d, %i.ai                 ; 2 uses
  %i.ak = fadd double %i.z, %i.af
  %i.al = fmul double %i.d, %i.ak                 ; 2 uses
  %i.am = fadd double %i.l, %i.aj
  store double %i.am, ptr %1, align 8, !tbaa !14
  %i.an = fadd double %i.p, %i.al
  store double %i.an, ptr %i.m, align 8, !tbaa !14
  %i.ao = fsub double %i.l, %i.aj
  store double %i.ao, ptr %i.t, align 8, !tbaa !14
  %i.ap = fsub double %i.p, %i.al
  store double %i.ap, ptr %i.ac, align 8, !tbaa !14
  %i.aq = fsub double %i.ag, %i.ah
  %i.ar = fmul double %i.d, %i.aq                 ; 2 uses
  %i.as = fadd double %i.ag, %i.ah
  %i.at = fmul double %i.d, %i.as                 ; 2 uses
  %i.au = fsub double %i.q, %i.at
  store double %i.au, ptr %i.i, align 8, !tbaa !14
  %i.av = fadd double %i.r, %i.ar
  store double %i.av, ptr %i.j, align 8, !tbaa !14
  %i.aw = fadd double %i.q, %i.at
  store double %i.aw, ptr %i.w, align 8, !tbaa !14
  %i.ax = fsub double %i.r, %i.ar
  store double %i.ax, ptr %i.x, align 8, !tbaa !14
  %i.ay = icmp sgt i32 %i.a, 2
  br i1 %i.ay, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sext i32 %i.a to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %3 = zext nneg i32 %i.b to i64                  ; 7 uses
  %i.az = zext nneg i32 %i.a to i64               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %3
  %invariant.gep428 = getelementptr [8 x i8], ptr %1, i64 %3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv420 = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next421, %.lr.ph ] ; 4 uses
  %indvars.iv418 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next419, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %i.h, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %indvars.iv.next419 = add nuw nsw i64 %indvars.iv418, 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next419
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !14
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv418 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load double, ptr %i.bd, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !14 ; 2 uses
  %i.bj = fneg double %i.bi
  %indvars.iv.next = add nsw i64 %indvars.iv, -4  ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !14
  %i.bm = getelementptr [8 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 -24
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !14
  %i.bp = getelementptr i8, ptr %i.bm, i64 -16
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !14
  %i.br = getelementptr i8, ptr %i.bm, i64 -8
  %i.bs = load double, ptr %i.br, align 8, !tbaa !14 ; 2 uses
  %i.bt = fneg double %i.bs
  %i.bu = add nuw nsw i64 %indvars.iv420, %3      ; 2 uses
  %i.bv = add nuw nsw i64 %i.bu, %3               ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv420 ; 2 uses
  %i.bx = getelementptr [8 x i8], ptr %1, i64 %i.bv ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bu ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bv ; 2 uses
  %i.bz = load <2 x double>, ptr %i.bw, align 8, !tbaa !14 ; 2 uses
  %i.ca = load <2 x double>, ptr %i.bx, align 8, !tbaa !14
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cc = fadd <2 x double> %i.bz, %i.cb          ; 4 uses
  %i.cd = fsub <2 x double> %i.bz, %i.cb          ; 4 uses
  %i.ce = shufflevector <2 x double> %i.cc, <2 x double> %i.cd, <2 x i32> <i32 0, i32 3>
  %i.cf = load <2 x double>, ptr %i.by, align 8, !tbaa !14 ; 2 uses
  %i.cg = load <2 x double>, ptr %gep, align 8, !tbaa !14
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ci = fadd <2 x double> %i.cf, %i.ch          ; 3 uses
  %i.cj = fsub <2 x double> %i.cf, %i.ch          ; 4 uses
  %i.ck = shufflevector <2 x double> %i.ci, <2 x double> %i.cj, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cl = shufflevector <2 x double> %i.cd, <2 x double> %i.cc, <2 x i32> <i32 0, i32 3>
  %i.cm = shufflevector <2 x double> %i.cj, <2 x double> %i.ci, <2 x i32> <i32 0, i32 3>
  %i.cn = insertelement <2 x double> poison, double %i.be, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cp = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cr = shufflevector <2 x double> %i.cc, <2 x double> %i.ci, <2 x i32> <i32 1, i32 3>
  %i.cs = fneg <2 x double> %i.cr                 ; 2 uses
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> %i.cd, <2 x i32> <i32 0, i32 2>
  %i.cu = fmul <2 x double> %i.co, %i.ct
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.cl, <2 x double> %i.cu) ; 2 uses
  %i.cw = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cy = shufflevector <2 x double> %i.cs, <2 x double> %i.cj, <2 x i32> <i32 1, i32 2>
  %i.cz = fmul <2 x double> %i.cx, %i.cy
  %i.da = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.cm, <2 x double> %i.cz) ; 2 uses
  %i.dd = fadd <2 x double> %i.cv, %i.dc
  store <2 x double> %i.dd, ptr %i.bw, align 8, !tbaa !14
  %i.de = fsub <2 x double> %i.cv, %i.dc
  store <2 x double> %i.de, ptr %i.by, align 8, !tbaa !14
  %i.df = shufflevector <2 x double> %i.cd, <2 x double> %i.cc, <2 x i32> <i32 1, i32 2>
  %i.dg = insertelement <2 x double> poison, double %i.bj, i64 0 ; 2 uses
  %i.dh = insertelement <2 x double> %i.dg, double %i.bi, i64 1
  %i.di = fmul <2 x double> %i.df, %i.dh
  %i.dj = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.dk = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.ce, <2 x double> %i.di) ; 2 uses
  %i.dm = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.do = fneg <2 x double> %i.ck
  %i.dp = shufflevector <2 x double> %i.cj, <2 x double> %i.do, <2 x i32> <i32 1, i32 2>
  %i.dq = fmul <2 x double> %i.dn, %i.dp
  %i.dr = insertelement <2 x double> poison, double %i.bt, i64 0 ; 2 uses
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.ck, <2 x double> %i.dq) ; 2 uses
  %i.du = fadd <2 x double> %i.dl, %i.dt
  store <2 x double> %i.du, ptr %i.bx, align 8, !tbaa !14
  %i.dv = fsub <2 x double> %i.dl, %i.dt
  store <2 x double> %i.dv, ptr %gep, align 8, !tbaa !14
  %i.dw = sub nuw nsw i64 %3, %indvars.iv420      ; 2 uses
  %i.dx = add nuw nsw i64 %i.dw, %3               ; 2 uses
  %i.dy = add nuw nsw i64 %i.dx, %3               ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dw ; 2 uses
  %i.ea = getelementptr [8 x i8], ptr %1, i64 %i.dy ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dx ; 2 uses
  %gep429 = getelementptr [8 x i8], ptr %invariant.gep428, i64 %i.dy ; 2 uses
  %i.ec = load <2 x double>, ptr %i.dz, align 8, !tbaa !14 ; 2 uses
  %i.ed = load <2 x double>, ptr %i.ea, align 8, !tbaa !14
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ef = fadd <2 x double> %i.ec, %i.ee          ; 3 uses
  %i.eg = fsub <2 x double> %i.ec, %i.ee          ; 4 uses
  %i.eh = shufflevector <2 x double> %i.ef, <2 x double> %i.eg, <2 x i32> <i32 0, i32 3>
  %i.ei = load <2 x double>, ptr %i.eb, align 8, !tbaa !14 ; 2 uses
  %i.ej = load <2 x double>, ptr %gep429, align 8, !tbaa !14
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.el = fadd <2 x double> %i.ei, %i.ek          ; 2 uses
  %i.em = fsub <2 x double> %i.ei, %i.ek          ; 4 uses
  %i.en = shufflevector <2 x double> %i.el, <2 x double> %i.em, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.eo = shufflevector <2 x double> %i.eg, <2 x double> %i.ef, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ep = shufflevector <2 x double> %i.em, <2 x double> %i.el, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.eq = fneg <2 x double> %i.eo
  %i.er = shufflevector <2 x double> %i.eq, <2 x double> %i.eg, <2 x i32> <i32 1, i32 2>
  %i.es = fmul <2 x double> %i.db, %i.er
  %i.et = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.eo, <2 x double> %i.es) ; 2 uses
  %i.eu = fneg <2 x double> %i.ep
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> %i.em, <2 x i32> <i32 1, i32 2>
  %i.ew = fmul <2 x double> %i.cq, %i.ev
  %i.ex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.ep, <2 x double> %i.ew) ; 2 uses
  %i.ey = fadd <2 x double> %i.et, %i.ex
  store <2 x double> %i.ey, ptr %i.dz, align 8, !tbaa !14
  %i.ez = fsub <2 x double> %i.et, %i.ex
  store <2 x double> %i.ez, ptr %i.eb, align 8, !tbaa !14
  %i.fa = shufflevector <2 x double> %i.eg, <2 x double> %i.ef, <2 x i32> <i32 1, i32 2>
  %i.fb = insertelement <2 x double> %i.dr, double %i.bs, i64 1
  %i.fc = fmul <2 x double> %i.fa, %i.fb
  %i.fd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.eh, <2 x double> %i.fc) ; 2 uses
  %i.fe = fneg <2 x double> %i.en
  %i.ff = shufflevector <2 x double> %i.em, <2 x double> %i.fe, <2 x i32> <i32 1, i32 2>
  %i.fg = fmul <2 x double> %i.dk, %i.ff
  %i.fh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> %i.en, <2 x double> %i.fg) ; 2 uses
  %i.fj = fadd <2 x double> %i.fd, %i.fi
  store <2 x double> %i.fj, ptr %i.ea, align 8, !tbaa !14
  %i.fk = fsub <2 x double> %i.fd, %i.fi
  store <2 x double> %i.fk, ptr %gep429, align 8, !tbaa !14
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 2 ; 2 uses
  %i.fl = icmp samesign ult i64 %indvars.iv.next421, %i.az
  br i1 %i.fl, label %.lr.ph, label %._crit_edge, !llvm.loop !119

._crit_edge:                                      ; preds = %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.az, %.lr.ph ]
  %i.fm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.s
  %i.fn = mul nsw i32 %i.a, 3
  %i.fo = mul nsw i32 %i.a, 5
  %i.fp = mul nsw i32 %i.a, 7
  %i.fq = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi ; 2 uses
  %i.fr = sext i32 %i.fo to i64
  %i.fs = getelementptr [8 x i8], ptr %1, i64 %i.fr ; 2 uses
  %i.ft = sext i32 %i.fn to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ft ; 2 uses
  %i.fv = sext i32 %i.fp to i64
  %i.fw = getelementptr [8 x i8], ptr %1, i64 %i.fv ; 3 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 8
  %i.fy = load <2 x double>, ptr %i.fm, align 8, !tbaa !14 ; 2 uses
  %i.fz = load <2 x double>, ptr %i.fq, align 8, !tbaa !14 ; 2 uses
  %i.ga = load <2 x double>, ptr %i.fs, align 8, !tbaa !14
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gc = fsub <2 x double> %i.fz, %i.gb          ; 4 uses
  %i.gd = fadd <2 x double> %i.fz, %i.gb          ; 4 uses
  %i.ge = shufflevector <2 x double> %i.gc, <2 x double> %i.gd, <2 x i32> <i32 0, i32 3>
  %i.gf = load <2 x double>, ptr %i.fu, align 8, !tbaa !14 ; 2 uses
  %i.gg = load <2 x double>, ptr %i.fw, align 8, !tbaa !14
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gi = fsub <2 x double> %i.gf, %i.gh          ; 4 uses
  %i.gj = fadd <2 x double> %i.gf, %i.gh          ; 4 uses
  %i.gk = shufflevector <2 x double> %i.gi, <2 x double> %i.gj, <2 x i32> <i32 0, i32 3>
  %i.gl = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.gm = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.gn = shufflevector <2 x double> %i.gd, <2 x double> %i.gj, <2 x i32> <i32 1, i32 3>
  %i.go = fneg <2 x double> %i.gn                 ; 2 uses
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> %i.gc, <2 x i32> <i32 0, i32 2>
  %i.gq = fmul <2 x double> %i.gl, %i.gp
  %i.gr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> %i.ge, <2 x double> %i.gq) ; 2 uses
  %i.gs = shufflevector <2 x double> %i.go, <2 x double> %i.gi, <2 x i32> <i32 1, i32 2>
  %i.gt = fmul <2 x double> %i.gm, %i.gs
  %i.gu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gl, <2 x double> %i.gk, <2 x double> %i.gt) ; 2 uses
  %i.gv = fadd <2 x double> %i.gr, %i.gu
  store <2 x double> %i.gv, ptr %i.fq, align 8, !tbaa !14
  %i.gw = fsub <2 x double> %i.gr, %i.gu
  store <2 x double> %i.gw, ptr %i.fu, align 8, !tbaa !14
  %i.gx = shufflevector <2 x double> %i.gd, <2 x double> %i.gc, <2 x i32> <i32 0, i32 3>
  %i.gy = shufflevector <2 x double> %i.gj, <2 x double> %i.gi, <2 x i32> <i32 0, i32 3>
  %i.gz = shufflevector <2 x double> %i.gc, <2 x double> %i.gi, <2 x i32> <i32 1, i32 3>
  %i.ha = fneg <2 x double> %i.gz                 ; 2 uses
  %i.hb = shufflevector <2 x double> %i.ha, <2 x double> %i.gd, <2 x i32> <i32 0, i32 2>
  %i.hc = fmul <2 x double> %i.gm, %i.hb
  %i.hd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gl, <2 x double> %i.gx, <2 x double> %i.hc) ; 2 uses
  %i.he = shufflevector <2 x double> %i.ha, <2 x double> %i.gj, <2 x i32> <i32 1, i32 2>
  %i.hf = fmul <2 x double> %i.gl, %i.he
  %i.hg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> %i.gy, <2 x double> %i.hf) ; 2 uses
  %i.hh = fsub <2 x double> %i.hd, %i.hg
  store <2 x double> %i.hh, ptr %i.fs, align 8, !tbaa !14
  %i.hi = fadd <2 x double> %i.hd, %i.hg          ; 2 uses
  %i.hj = extractelement <2 x double> %i.hi, i64 0
  store double %i.hj, ptr %i.fw, align 8, !tbaa !14
  %i.hk = extractelement <2 x double> %i.hi, i64 1
  store double %i.hk, ptr %i.fx, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cftexp2(i32 noundef %0, ptr nofree noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = ashr i32 %0, 1                           ; 12 uses
  %i.b = ashr i32 %0, 2                           ; 3 uses
  %i.c = icmp sgt i32 %i.b, 128
  br i1 %i.c, label %.preheader115.preheader, label %.preheader

.preheader115.preheader:                          ; preds = %bb.a
  %i.d = sext i32 %i.a to i64                     ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.d
  %invariant.gep171 = getelementptr [8 x i8], ptr %1, i64 %i.d
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.preheader, %._crit_edge123
  %.0124 = phi i32 [ %i.at, %._crit_edge123 ], [ %i.b, %.preheader115.preheader ] ; 13 uses
  %i.e = icmp slt i32 %.0124, %i.a
  br i1 %i.e, label %.lr.ph122, label %._crit_edge123

.lr.ph122:                                        ; preds = %.preheader115
  %i.f = lshr i32 %.0124, 1
  %i.g = sub nsw i32 %2, %i.f
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %3, i64 %i.h ; 2 uses
  %i.j = sub nsw i32 %2, %.0124
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %3, i64 %i.k ; 2 uses
  %i.m = sub nsw i32 0, %.0124
  %i.n = sext i32 %i.m to i64
  %invariant.op = add nsw i32 %.0124, %i.a
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge123, %bb.a
  %.0.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.at, %._crit_edge123 ] ; 13 uses
  %i.o = icmp slt i32 %.0.lcssa, %i.a
  br i1 %i.o, label %.lr.ph135, label %._crit_edge136

.lr.ph135:                                        ; preds = %.preheader
  %i.p = ashr i32 %.0.lcssa, 1
  %i.q = sub nsw i32 %2, %i.p
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %3, i64 %i.r ; 4 uses
  %i.t = icmp eq i32 %.0.lcssa, 128               ; 2 uses
  %i.u = sext i32 %2 to i64
  %i.v = getelementptr [8 x i8], ptr %3, i64 %i.u ; 4 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -120     ; 16 uses
  %i.x = getelementptr i8, ptr %i.v, i64 -96      ; 6 uses
  %i.y = getelementptr i8, ptr %i.v, i64 -64      ; 10 uses
  %i.z = getelementptr i8, ptr %i.v, i64 -256     ; 6 uses
  %i.aa = sub nsw i32 %2, %.0.lcssa
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ab ; 4 uses
  %i.ad = sext i32 %i.a to i64                    ; 8 uses
  %invariant.gep173 = getelementptr [8 x i8], ptr %1, i64 %i.ad
  %invariant.gep175 = getelementptr [8 x i8], ptr %1, i64 %i.ad
  %invariant.gep177 = getelementptr [8 x i8], ptr %1, i64 %i.ad
  %invariant.gep179 = getelementptr [8 x i8], ptr %1, i64 %i.ad
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph122, %._crit_edge120
  %.0109121 = phi i32 [ %.0124, %.lr.ph122 ], [ %i.an, %._crit_edge120 ] ; 4 uses
  %i.ae = icmp slt i32 %.0109121, %invariant.op
  %i.af = shl i32 %.0109121, 1                    ; 2 uses
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ag = sext i32 %.0109121 to i64
  %i.ah = add nsw i64 %i.n, %i.ag
  %i.ai = sext i32 %i.af to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.ah, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  tail call void @cftmdl1(i32 noundef %.0124, ptr noundef %i.aj, ptr noundef %i.i)
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  tail call void @cftmdl1(i32 noundef %.0124, ptr noundef %gep, ptr noundef %i.i)
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.ai ; 2 uses
  %i.ak = icmp slt i64 %indvars.iv.next, %i.d
  br i1 %i.ak, label %bb.c, label %._crit_edge, !llvm.loop !120

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.al = sub nsw i32 %i.af, %.0124               ; 2 uses
  %i.am = icmp slt i32 %i.al, %i.a
  %i.an = shl i32 %.0109121, 2                    ; 3 uses
  br i1 %i.am, label %.lr.ph119, label %._crit_edge120

.lr.ph119:                                        ; preds = %._crit_edge
  %i.ao = sext i32 %i.al to i64
  %i.ap = sext i32 %i.an to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph119, %bb.d
  %indvars.iv140 = phi i64 [ %i.ao, %.lr.ph119 ], [ %indvars.iv.next141, %bb.d ] ; 3 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv140
end_hunk_2
