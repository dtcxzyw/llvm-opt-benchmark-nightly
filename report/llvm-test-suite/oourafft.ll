inline.NumInlined: 15
inline.NumDeleted: 2
begin_hunk_0_@cft1st:bb.a
  %i.kg = extractelement <2 x double> %i.kf, i64 0
  store double %i.kg, ptr %i.jd, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.kh = fsub <2 x double> %i.io, %i.jr          ; 2 uses
  %i.ki = fadd <2 x double> %i.ip, %i.jq          ; 2 uses
  %i.kj = fneg <2 x double> %i.ki
  %i.kk = fmul <2 x double> %i.hi, %i.kj
  %i.kl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> %i.kh, <2 x double> %i.kk) ; 2 uses
  %i.km = extractelement <2 x double> %i.kl, i64 0
  store double %i.km, ptr %i.hu, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.kn = shufflevector <2 x double> %i.jv, <2 x double> %i.kl, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.kn, ptr %i.ic, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ko = fmul <2 x double> %i.hi, %i.kh
  %i.kp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> %i.ki, <2 x double> %i.ko) ; 2 uses
  %i.kq = extractelement <2 x double> %i.kp, i64 0
  store double %i.kq, ptr %i.ih, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.kr = shufflevector <2 x double> %i.kp, <2 x double> %i.kc, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.kr, ptr %i.ii, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ks = fadd <2 x double> %i.io, %i.jr          ; 2 uses
  %i.kt = fsub <2 x double> %i.ip, %i.jq          ; 2 uses
  %i.ku = fneg <2 x double> %i.kt
  %i.kv = fmul <2 x double> %i.hn, %i.ku
  %i.kw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.ks, <2 x double> %i.kv) ; 2 uses
  %i.kx = extractelement <2 x double> %i.kw, i64 0
  store double %i.kx, ptr %i.iw, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ky = shufflevector <2 x double> %i.kf, <2 x double> %i.kw, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.ky, ptr %i.je, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.kz = fmul <2 x double> %i.hn, %i.ks
  %i.la = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.kt, <2 x double> %i.kz) ; 2 uses
  %i.lb = extractelement <2 x double> %i.la, i64 1
  %i.lc = shufflevector <2 x double> %i.la, <2 x double> %i.fp, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.lc, ptr %i.jj, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  store double %i.lb, ptr %i.jk, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ld = icmp eq i64 %index.next, %n.vec
  br i1 %i.ld, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader315

.lr.ph.preheader315:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv300.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ci, %middle.block ]
  %indvars.iv.ph = phi i64 [ 16, %vector.memcheck ], [ 16, %.lr.ph.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader315, %.lr.ph
  %indvars.iv300 = phi i64 [ %indvars.iv.next301, %.lr.ph ], [ %indvars.iv300.ph, %.lr.ph.preheader315 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader315 ] ; 2 uses
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 2 ; 3 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next301
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv300
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  %.idx = shl nuw nsw i64 %indvars.iv.next301, 4
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 15 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 8 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 48 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lj, i64 40
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lj, i64 56 ; 2 uses
  %i.lr = load <2 x double>, ptr %i.le, align 8, !tbaa !8 ; 4 uses
  %i.ls = load double, ptr %i.lg, align 8, !tbaa !8 ; 2 uses
  %i.lt = load <2 x double>, ptr %i.lh, align 8, !tbaa !8 ; 3 uses
  %i.lu = load double, ptr %i.li, align 8, !tbaa !8 ; 2 uses
  %i.lv = fmul double %i.ls, 2.000000e+00         ; 2 uses
  %i.lw = fneg double %i.lv
  %i.lx = extractelement <2 x double> %i.lt, i64 0 ; 2 uses
  %i.ly = tail call double @llvm.fmuladd.f64(double %i.lw, double %i.lu, double %i.lx) ; 2 uses
  %i.lz = fneg double %i.lu
  %i.ma = tail call double @llvm.fmuladd.f64(double %i.lv, double %i.lx, double %i.lz) ; 2 uses
  %i.mb = load double, ptr %i.ll, align 8, !tbaa !8 ; 2 uses
  %i.mc = load double, ptr %i.lj, align 8, !tbaa !8 ; 2 uses
  %i.md = load double, ptr %i.lk, align 8, !tbaa !8 ; 2 uses
  %i.me = fadd double %i.mc, %i.md                ; 2 uses
  %i.mf = fsub double %i.mc, %i.md                ; 2 uses
  %i.mg = load double, ptr %i.lq, align 8, !tbaa !8 ; 2 uses
  %i.mh = load double, ptr %i.lm, align 8, !tbaa !8 ; 2 uses
  %i.mi = load double, ptr %i.ln, align 8, !tbaa !8 ; 2 uses
  %i.mj = load double, ptr %i.lo, align 8, !tbaa !8 ; 2 uses
  %i.mk = load double, ptr %i.lp, align 8, !tbaa !8 ; 2 uses
  %i.ml = fadd double %i.mk, %i.mg                ; 2 uses
  %i.mm = fsub double %i.mb, %i.mh                ; 2 uses
  %i.mn = fadd double %i.mi, %i.mj                ; 2 uses
  %i.mo = fadd double %i.mb, %i.mh                ; 2 uses
  %i.mp = fsub double %i.mi, %i.mj                ; 2 uses
  %i.mq = fsub double %i.mk, %i.mg                ; 2 uses
  %i.mr = fadd double %i.me, %i.mn
  store double %i.mr, ptr %i.lj, align 8, !tbaa !8
  %i.ms = fadd double %i.mo, %i.ml
  store double %i.ms, ptr %i.ll, align 8, !tbaa !8
  %i.mt = fsub double %i.me, %i.mn
  %i.mu = fsub double %i.mo, %i.ml                ; 2 uses
  %i.mv = fadd double %i.mm, %i.mp                ; 2 uses
  %i.mw = fsub double %i.mf, %i.mq
  %i.mx = insertelement <2 x double> poison, double %i.mv, i64 0
  %i.my = insertelement <2 x double> %i.mx, double %i.mu, i64 1
  %i.mz = fneg <2 x double> %i.my
  %i.na = shufflevector <2 x double> %i.lt, <2 x double> %i.lr, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.nb = shufflevector <2 x double> %i.mz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nc = insertelement <4 x double> %i.nb, double %i.mw, i64 2
  %i.nd = insertelement <4 x double> %i.nc, double %i.mt, i64 3 ; 2 uses
  %i.ne = fmul <4 x double> %i.na, %i.nd
  %i.nf = shufflevector <2 x double> %i.lt, <2 x double> %i.lr, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.ng = shufflevector <4 x double> %i.nd, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.nh = insertelement <4 x double> %i.ng, double %i.mv, i64 2
  %i.ni = insertelement <4 x double> %i.nh, double %i.mu, i64 3
  %i.nj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.nf, <4 x double> %i.ni, <4 x double> %i.ne)
  %i.nk = shufflevector <4 x double> %i.nj, <4 x double> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.nk, ptr %i.lk, align 8, !tbaa !8
  %i.nl = fadd double %i.mf, %i.mq                ; 2 uses
  %i.nm = fsub double %i.mm, %i.mp                ; 2 uses
  %i.nn = fneg double %i.nm
  %i.no = fmul double %i.ma, %i.nn
  %i.np = tail call double @llvm.fmuladd.f64(double %i.ly, double %i.nl, double %i.no)
  store double %i.np, ptr %i.lo, align 8, !tbaa !8
  %i.nq = fmul double %i.ma, %i.nl
  %i.nr = tail call double @llvm.fmuladd.f64(double %i.ly, double %i.nm, double %i.nq)
  store double %i.nr, ptr %i.lq, align 8, !tbaa !8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.nt = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.nu = extractelement <2 x double> %i.lr, i64 0
  %i.nv = fmul double %i.nu, 2.000000e+00         ; 2 uses
  %i.nw = fneg double %i.nv
  %i.nx = getelementptr inbounds nuw i8, ptr %i.lj, i64 64 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.lj, i64 80 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.lj, i64 72
  %i.oa = getelementptr inbounds nuw i8, ptr %i.lj, i64 96
  %i.ob = getelementptr inbounds nuw i8, ptr %i.lj, i64 112
  %i.oc = getelementptr inbounds nuw i8, ptr %i.lj, i64 120
  %i.od = fneg double %i.ls
  %i.oe = load <2 x double>, ptr %i.ns, align 8, !tbaa !8 ; 3 uses
  %i.of = load double, ptr %i.nt, align 8, !tbaa !8 ; 2 uses
  %i.og = extractelement <2 x double> %i.oe, i64 0 ; 2 uses
  %i.oh = tail call double @llvm.fmuladd.f64(double %i.nw, double %i.of, double %i.og) ; 2 uses
  %i.oi = fneg double %i.of
  %i.oj = tail call double @llvm.fmuladd.f64(double %i.nv, double %i.og, double %i.oi) ; 2 uses
  %i.ok = load <2 x double>, ptr %i.nx, align 8, !tbaa !8
  %i.ol = shufflevector <2 x double> %i.ok, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.om = load <2 x double>, ptr %i.ny, align 8, !tbaa !8
  %i.on = shufflevector <2 x double> %i.om, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.oo = fsub <4 x double> %i.ol, %i.on          ; 3 uses
  %i.op = fadd <4 x double> %i.ol, %i.on          ; 3 uses
  %i.oq = shufflevector <4 x double> %i.oo, <4 x double> %i.op, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.or = load <4 x double>, ptr %i.oa, align 8, !tbaa !8 ; 3 uses
  %i.os = shufflevector <4 x double> %i.or, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ot = fsub <4 x double> %i.or, %i.os          ; 3 uses
  %i.ou = fadd <4 x double> %i.or, %i.os          ; 3 uses
  %i.ov = shufflevector <4 x double> %i.ot, <4 x double> %i.ou, <4 x i32> <i32 1, i32 0, i32 6, i32 7> ; 2 uses
  %i.ow = extractelement <4 x double> %i.op, i64 2
  %i.ox = extractelement <4 x double> %i.ou, i64 2
  %i.oy = fadd double %i.ow, %i.ox
  store double %i.oy, ptr %i.nx, align 8, !tbaa !8
  %i.oz = extractelement <4 x double> %i.op, i64 3
  %i.pa = extractelement <4 x double> %i.ou, i64 3
  %i.pb = fadd double %i.oz, %i.pa
  store double %i.pb, ptr %i.nz, align 8, !tbaa !8
  %i.pc = fsub <4 x double> %i.oq, %i.ov          ; 3 uses
  %i.pd = fadd <4 x double> %i.oq, %i.ov          ; 2 uses
  %i.pe = shufflevector <4 x double> %i.pc, <4 x double> %i.pd, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.pf = shufflevector <4 x double> %i.pd, <4 x double> %i.pc, <2 x i32> <i32 1, i32 7>
  %i.pg = fneg <2 x double> %i.pf
  %i.ph = shufflevector <2 x double> %i.lr, <2 x double> %i.oe, <4 x i32> <i32 3, i32 3, i32 0, i32 0>
  %i.pi = shufflevector <4 x double> %i.pc, <4 x double> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.pj = shufflevector <2 x double> %i.pg, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.pk = shufflevector <4 x double> %i.pj, <4 x double> %i.pi, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pl = fmul <4 x double> %i.ph, %i.pk
  %i.pm = shufflevector <2 x double> %i.oe, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.pn = insertelement <4 x double> poison, double %i.od, i64 0
  %i.po = shufflevector <4 x double> %i.pn, <4 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.pp = shufflevector <4 x double> %i.pm, <4 x double> %i.po, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.pq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.pp, <4 x double> %i.pe, <4 x double> %i.pl)
  store <4 x double> %i.pq, ptr %i.ny, align 8, !tbaa !8
  %i.pr = extractelement <4 x double> %i.oo, i64 0
  %i.ps = extractelement <4 x double> %i.ot, i64 1
  %i.pt = fadd double %i.pr, %i.ps                ; 2 uses
  %i.pu = extractelement <4 x double> %i.oo, i64 1
  %i.pv = extractelement <4 x double> %i.ot, i64 0
  %i.pw = fsub double %i.pu, %i.pv                ; 2 uses
  %i.px = fneg double %i.pw
  %i.py = fmul double %i.oj, %i.px
  %i.pz = tail call double @llvm.fmuladd.f64(double %i.oh, double %i.pt, double %i.py)
  store double %i.pz, ptr %i.ob, align 8, !tbaa !8
  %i.qa = fmul double %i.oj, %i.pt
  %i.qb = tail call double @llvm.fmuladd.f64(double %i.oh, double %i.pw, double %i.qa)
  store double %i.qb, ptr %i.oc, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %i.qc = icmp samesign ult i64 %indvars.iv.next, %i.bw
  br i1 %i.qc, label %.lr.ph, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @cftmdl(i32 noundef range(i32 9, -2147483648) %0, i32 noundef %1, ptr noundef captures(none) %2, ptr noundef readonly captures(none) %3) unnamed_addr #14 {
bb.a:
  %i.a = shl i32 %1, 2                            ; 3 uses
  %i.b = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64                  ; 5 uses
  %i.d = zext nneg i32 %1 to i64                  ; 6 uses
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.c ; 9 uses
  %i.e = add nsw i64 %i.d, -1
  %i.f = lshr i64 %i.e, 1
  %i.g = add nuw i64 %i.f, 1                      ; 2 uses
  %min.iters.check = icmp ult i32 %1, 51
  br i1 %min.iters.check, label %.lr.ph.preheader1107, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.h = shl nuw nsw i64 %i.d, 3
  %i.i = add nsw i64 %i.h, -8                     ; 2 uses
  %i.j = and i64 %i.i, -16                        ; 4 uses
  %i.k = or i64 %i.i, 8
  %scevgep = getelementptr i8, ptr %2, i64 %i.k   ; 7 uses
  %scevgep444 = getelementptr i8, ptr %2, i64 8   ; 7 uses
  %i.l = getelementptr i8, ptr %2, i64 %i.j
  %scevgep445 = getelementptr i8, ptr %i.l, i64 16 ; 7 uses
  %i.m = shl nuw nsw i64 %i.d, 4                  ; 3 uses
  %scevgep446 = getelementptr i8, ptr %2, i64 %i.m ; 7 uses
  %i.n = add nsw i64 %i.j, %i.m                   ; 2 uses
  %i.o = getelementptr i8, ptr %2, i64 %i.n
  %scevgep447 = getelementptr i8, ptr %i.o, i64 8 ; 7 uses
  %i.p = getelementptr i8, ptr %2, i64 %i.m
  %scevgep448 = getelementptr i8, ptr %i.p, i64 8 ; 7 uses
  %i.q = getelementptr i8, ptr %2, i64 %i.n
  %scevgep449 = getelementptr i8, ptr %i.q, i64 16 ; 7 uses
  %i.r = shl nuw nsw i64 %i.d, 3                  ; 2 uses
  %i.s = add nsw i64 %i.j, %i.r                   ; 2 uses
  %i.t = getelementptr i8, ptr %2, i64 %i.s
  %scevgep450 = getelementptr i8, ptr %i.t, i64 8 ; 7 uses
  %i.u = getelementptr i8, ptr %2, i64 %i.r
  %scevgep451 = getelementptr i8, ptr %i.u, i64 8 ; 7 uses
  %i.v = getelementptr i8, ptr %2, i64 %i.s
  %scevgep452 = getelementptr i8, ptr %i.v, i64 16 ; 7 uses
  %i.w = mul nuw nsw i64 %i.d, 24                 ; 3 uses
  %scevgep453 = getelementptr i8, ptr %2, i64 %i.w ; 7 uses
  %i.x = add nsw i64 %i.w, %i.j                   ; 2 uses
  %i.y = getelementptr i8, ptr %2, i64 %i.x
  %scevgep454 = getelementptr i8, ptr %i.y, i64 8 ; 7 uses
  %i.z = getelementptr i8, ptr %2, i64 %i.w
  %scevgep455 = getelementptr i8, ptr %i.z, i64 8 ; 7 uses
  %i.aa = getelementptr i8, ptr %2, i64 %i.x
  %scevgep456 = getelementptr i8, ptr %i.aa, i64 16 ; 7 uses
  %bound0 = icmp ult ptr %2, %scevgep445
  %bound1 = icmp ult ptr %scevgep444, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0457 = icmp ult ptr %2, %scevgep447
  %bound1458 = icmp ult ptr %scevgep446, %scevgep
  %found.conflict459 = and i1 %bound0457, %bound1458
  %conflict.rdx = or i1 %found.conflict, %found.conflict459
  %bound0460 = icmp ult ptr %2, %scevgep449
  %bound1461 = icmp ult ptr %scevgep448, %scevgep
  %found.conflict462 = and i1 %bound0460, %bound1461
  %conflict.rdx463 = or i1 %conflict.rdx, %found.conflict462
  %bound0464 = icmp ult ptr %2, %scevgep450
  %bound1465 = icmp ult ptr %invariant.gep, %scevgep
  %found.conflict466 = and i1 %bound0464, %bound1465
  %conflict.rdx467 = or i1 %conflict.rdx463, %found.conflict466
  %bound0468 = icmp ult ptr %2, %scevgep452
  %bound1469 = icmp ult ptr %scevgep451, %scevgep
  %found.conflict470 = and i1 %bound0468, %bound1469
  %conflict.rdx471 = or i1 %conflict.rdx467, %found.conflict470
  %bound0472 = icmp ult ptr %2, %scevgep454
  %bound1473 = icmp ult ptr %scevgep453, %scevgep
  %found.conflict474 = and i1 %bound0472, %bound1473
  %conflict.rdx475 = or i1 %conflict.rdx471, %found.conflict474
  %bound0476 = icmp ult ptr %2, %scevgep456
  %bound1477 = icmp ult ptr %scevgep455, %scevgep
  %found.conflict478 = and i1 %bound0476, %bound1477
  %conflict.rdx479 = or i1 %conflict.rdx475, %found.conflict478
  %bound0480 = icmp ult ptr %scevgep444, %scevgep447
  %bound1481 = icmp ult ptr %scevgep446, %scevgep445
  %found.conflict482 = and i1 %bound0480, %bound1481
  %conflict.rdx483 = or i1 %conflict.rdx479, %found.conflict482
  %bound0484 = icmp ult ptr %scevgep444, %scevgep449
  %bound1485 = icmp ult ptr %scevgep448, %scevgep445
  %found.conflict486 = and i1 %bound0484, %bound1485
  %conflict.rdx487 = or i1 %conflict.rdx483, %found.conflict486
  %bound0488 = icmp ult ptr %scevgep444, %scevgep450
  %bound1489 = icmp ult ptr %invariant.gep, %scevgep445
  %found.conflict490 = and i1 %bound0488, %bound1489
  %conflict.rdx491 = or i1 %conflict.rdx487, %found.conflict490
  %bound0492 = icmp ult ptr %scevgep444, %scevgep452
  %bound1493 = icmp ult ptr %scevgep451, %scevgep445
  %found.conflict494 = and i1 %bound0492, %bound1493
  %conflict.rdx495 = or i1 %conflict.rdx491, %found.conflict494
  %bound0496 = icmp ult ptr %scevgep444, %scevgep454
  %bound1497 = icmp ult ptr %scevgep453, %scevgep445
  %found.conflict498 = and i1 %bound0496, %bound1497
  %conflict.rdx499 = or i1 %conflict.rdx495, %found.conflict498
  %bound0500 = icmp ult ptr %scevgep444, %scevgep456
  %bound1501 = icmp ult ptr %scevgep455, %scevgep445
  %found.conflict502 = and i1 %bound0500, %bound1501
  %conflict.rdx503 = or i1 %conflict.rdx499, %found.conflict502
  %bound0504 = icmp ult ptr %scevgep446, %scevgep449
  %bound1505 = icmp ult ptr %scevgep448, %scevgep447
  %found.conflict506 = and i1 %bound0504, %bound1505
  %conflict.rdx507 = or i1 %conflict.rdx503, %found.conflict506
  %bound0508 = icmp ult ptr %scevgep446, %scevgep450
  %bound1509 = icmp ult ptr %invariant.gep, %scevgep447
  %found.conflict510 = and i1 %bound0508, %bound1509
  %conflict.rdx511 = or i1 %conflict.rdx507, %found.conflict510
  %bound0512 = icmp ult ptr %scevgep446, %scevgep452
  %bound1513 = icmp ult ptr %scevgep451, %scevgep447
  %found.conflict514 = and i1 %bound0512, %bound1513
  %conflict.rdx515 = or i1 %conflict.rdx511, %found.conflict514
  %bound0516 = icmp ult ptr %scevgep446, %scevgep454
  %bound1517 = icmp ult ptr %scevgep453, %scevgep447
  %found.conflict518 = and i1 %bound0516, %bound1517
  %conflict.rdx519 = or i1 %conflict.rdx515, %found.conflict518
  %bound0520 = icmp ult ptr %scevgep446, %scevgep456
  %bound1521 = icmp ult ptr %scevgep455, %scevgep447
  %found.conflict522 = and i1 %bound0520, %bound1521
  %conflict.rdx523 = or i1 %conflict.rdx519, %found.conflict522
  %bound0524 = icmp ult ptr %scevgep448, %scevgep450
  %bound1525 = icmp ult ptr %invariant.gep, %scevgep449
  %found.conflict526 = and i1 %bound0524, %bound1525
  %conflict.rdx527 = or i1 %conflict.rdx523, %found.conflict526
  %bound0528 = icmp ult ptr %scevgep448, %scevgep452
  %bound1529 = icmp ult ptr %scevgep451, %scevgep449
  %found.conflict530 = and i1 %bound0528, %bound1529
  %conflict.rdx531 = or i1 %conflict.rdx527, %found.conflict530
  %bound0532 = icmp ult ptr %scevgep448, %scevgep454
  %bound1533 = icmp ult ptr %scevgep453, %scevgep449
  %found.conflict534 = and i1 %bound0532, %bound1533
  %conflict.rdx535 = or i1 %conflict.rdx531, %found.conflict534
  %bound0536 = icmp ult ptr %scevgep448, %scevgep456
  %bound1537 = icmp ult ptr %scevgep455, %scevgep449
  %found.conflict538 = and i1 %bound0536, %bound1537
  %conflict.rdx539 = or i1 %conflict.rdx535, %found.conflict538
  %bound0540 = icmp ult ptr %invariant.gep, %scevgep452
  %bound1541 = icmp ult ptr %scevgep451, %scevgep450
  %found.conflict542 = and i1 %bound0540, %bound1541
  %conflict.rdx543 = or i1 %conflict.rdx539, %found.conflict542
  %bound0544 = icmp ult ptr %invariant.gep, %scevgep454
  %bound1545 = icmp ult ptr %scevgep453, %scevgep450
  %found.conflict546 = and i1 %bound0544, %bound1545
  %conflict.rdx547 = or i1 %conflict.rdx543, %found.conflict546
  %bound0548 = icmp ult ptr %invariant.gep, %scevgep456
  %bound1549 = icmp ult ptr %scevgep455, %scevgep450
  %found.conflict550 = and i1 %bound0548, %bound1549
  %conflict.rdx551 = or i1 %conflict.rdx547, %found.conflict550
  %bound0552 = icmp ult ptr %scevgep451, %scevgep454
  %bound1553 = icmp ult ptr %scevgep453, %scevgep452
  %found.conflict554 = and i1 %bound0552, %bound1553
  %conflict.rdx555 = or i1 %conflict.rdx551, %found.conflict554
  %bound0556 = icmp ult ptr %scevgep451, %scevgep456
  %bound1557 = icmp ult ptr %scevgep455, %scevgep452
  %found.conflict558 = and i1 %bound0556, %bound1557
  %conflict.rdx559 = or i1 %conflict.rdx555, %found.conflict558
  %bound0560 = icmp ult ptr %scevgep453, %scevgep456
  %bound1561 = icmp ult ptr %scevgep455, %scevgep454
  %found.conflict562 = and i1 %bound0560, %bound1561
  %conflict.rdx563 = or i1 %conflict.rdx559, %found.conflict562
  br i1 %conflict.rdx563, label %.lr.ph.preheader1107, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -2                       ; 3 uses
  %i.ab = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 1                       ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, %i.c             ; 2 uses
  %i.ae = add nuw nsw i64 %i.ad, %i.c             ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.af, align 8, !tbaa !8 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec564 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ad ; 2 uses
  %wide.vec565 = load <4 x double>, ptr %i.ag, align 8, !tbaa !8 ; 2 uses
  %strided.vec566 = shufflevector <4 x double> %wide.vec565, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec567 = shufflevector <4 x double> %wide.vec565, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ah = fadd <2 x double> %strided.vec, %strided.vec566 ; 2 uses
  %i.ai = fadd <2 x double> %strided.vec564, %strided.vec567 ; 2 uses
  %i.aj = fsub <2 x double> %strided.vec, %strided.vec566 ; 2 uses
  %i.ak = fsub <2 x double> %strided.vec564, %strided.vec567 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ae ; 2 uses
  %wide.vec568 = load <4 x double>, ptr %i.al, align 8, !tbaa !8 ; 2 uses
  %strided.vec569 = shufflevector <4 x double> %wide.vec568, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec570 = shufflevector <4 x double> %wide.vec568, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ae ; 2 uses
  %wide.vec571 = load <4 x double>, ptr %i.am, align 8, !tbaa !8 ; 2 uses
  %strided.vec572 = shufflevector <4 x double> %wide.vec571, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec573 = shufflevector <4 x double> %wide.vec571, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.an = fadd <2 x double> %strided.vec569, %strided.vec572 ; 2 uses
  %i.ao = fadd <2 x double> %strided.vec570, %strided.vec573 ; 2 uses
  %i.ap = fsub <2 x double> %strided.vec569, %strided.vec572 ; 2 uses
  %i.aq = fsub <2 x double> %strided.vec570, %strided.vec573 ; 2 uses
  %i.ar = fadd <2 x double> %i.ah, %i.an
  %i.as = fadd <2 x double> %i.ai, %i.ao
  %interleaved.vec = shufflevector <2 x double> %i.ar, <2 x double> %i.as, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.af, align 8, !tbaa !8
  %i.at = fsub <2 x double> %i.ah, %i.an
  %i.au = fsub <2 x double> %i.ai, %i.ao
end_hunk_0
begin_hunk_1_@cftmdl:bb.a
  %i.gx = sext i32 %i.gv to i64                   ; 24 uses
  %i.gy = sext i32 %1 to i64                      ; 23 uses
  %i.gz = mul i32 %1, 12
  %i.ha = sext i32 %i.a to i64                    ; 3 uses
  %i.hb = zext nneg i32 %0 to i64
  %invariant.gep440 = getelementptr [8 x i8], ptr %2, i64 %i.gy ; 2 uses
  %invariant.op = add nsw i64 %i.ha, %i.gy
  %invariant.gep442 = getelementptr [8 x i8], ptr %2, i64 %i.gy ; 2 uses
  %scevgep734 = getelementptr i8, ptr %2, i64 8
  %i.hc = add nsw i64 %i.gy, %i.gx
  %i.hd = add nsw i64 %i.hc, %i.ha
  %scevgep736 = getelementptr i8, ptr %2, i64 8
  %scevgep738 = getelementptr i8, ptr %2, i64 16
  %i.he = shl nsw i64 %i.gy, 4                    ; 3 uses
  %scevgep740 = getelementptr i8, ptr %2, i64 %i.he
  %i.hf = or disjoint i64 %i.he, 8                ; 2 uses
  %scevgep742 = getelementptr i8, ptr %2, i64 %i.hf
  %scevgep744 = getelementptr i8, ptr %2, i64 %i.hf
  %i.hg = getelementptr i8, ptr %2, i64 %i.he
  %scevgep746 = getelementptr i8, ptr %i.hg, i64 16
  %scevgep749 = getelementptr i8, ptr %2, i64 8
  %scevgep751 = getelementptr i8, ptr %2, i64 8
  %scevgep753 = getelementptr i8, ptr %2, i64 16
  %i.hh = mul nsw i64 %i.gy, 24                   ; 3 uses
  %scevgep755 = getelementptr i8, ptr %2, i64 %i.hh
  %i.hi = add nsw i64 %i.hh, 8                    ; 2 uses
  %scevgep757 = getelementptr i8, ptr %2, i64 %i.hi
  %scevgep759 = getelementptr i8, ptr %2, i64 %i.hi
  %i.hj = getelementptr i8, ptr %2, i64 %i.hh
  %scevgep761 = getelementptr i8, ptr %i.hj, i64 16
  %i.hk = add nsw i64 %i.gy, %i.gx                ; 3 uses
  %i.hl = add nsw i64 %i.hk, %i.ha
  %i.hm = or disjoint i64 %i.gx, 2
  %i.hn = xor i64 %i.gx, -1
  %i.ho = shl nsw i64 %i.gx, 3                    ; 3 uses
  %i.hp = shl nsw i64 %i.gx, 3
  %i.hq = shl nsw i64 %i.gy, 4
  %i.hr = shl nsw i64 %i.hk, 3
  %i.hs = mul nsw i64 %i.gy, 24
  %i.ht = add nsw i64 %i.hs, %i.ho                ; 2 uses
  %i.hu = shl nsw i64 %i.gx, 3                    ; 5 uses
  %i.hv = shl nsw i64 %i.gx, 3
  %i.hw = add nsw i64 %i.gy, %i.gx                ; 2 uses
  %i.hx = or disjoint i64 %i.gx, 2
  %i.hy = xor i64 %i.gx, -1
  %i.hz = shl nsw i64 %i.gy, 4
  %i.ia = add nsw i64 %i.hz, %i.hu                ; 3 uses
  %i.ib = shl nsw i64 %i.hw, 3                    ; 3 uses
  %i.ic = mul nsw i64 %i.gy, 24
  %i.id = add nsw i64 %i.ic, %i.hu                ; 3 uses
  %i.ie = add nsw i64 %i.gy, %i.gx
  %i.if = or disjoint i64 %i.gx, 2
  %i.ig = xor i64 %i.gx, -1
  %i.ih = getelementptr i8, ptr %2, i64 %i.hu
  %i.ii = getelementptr i8, ptr %2, i64 %i.hu
  %i.ij = getelementptr i8, ptr %i.ii, i64 8
  %i.ik = getelementptr i8, ptr %2, i64 %i.hu
  %i.il = getelementptr i8, ptr %i.ik, i64 16
  %i.im = getelementptr i8, ptr %2, i64 %i.ia
  %i.in = getelementptr i8, ptr %2, i64 %i.ia
  %i.io = getelementptr i8, ptr %i.in, i64 8
  %i.ip = getelementptr i8, ptr %2, i64 %i.ia
  %i.iq = getelementptr i8, ptr %i.ip, i64 16
  %i.ir = getelementptr i8, ptr %2, i64 %i.ib
  %i.is = getelementptr i8, ptr %2, i64 %i.ib
  %i.it = getelementptr i8, ptr %i.is, i64 8
  %i.iu = getelementptr i8, ptr %2, i64 %i.ib
  %i.iv = getelementptr i8, ptr %i.iu, i64 16
  %i.iw = getelementptr i8, ptr %2, i64 %i.id
  %i.ix = getelementptr i8, ptr %2, i64 %i.id
  %i.iy = getelementptr i8, ptr %i.ix, i64 8
  %i.iz = getelementptr i8, ptr %2, i64 %i.id
  %i.ja = getelementptr i8, ptr %i.iz, i64 16
  %i.jb = getelementptr i8, ptr %2, i64 %i.ho
  %i.jc = getelementptr i8, ptr %i.jb, i64 8
  %i.jd = getelementptr i8, ptr %2, i64 %i.hq
  %i.je = getelementptr i8, ptr %i.jd, i64 %i.ho
  %i.jf = getelementptr i8, ptr %i.je, i64 8
  %i.jg = getelementptr i8, ptr %2, i64 %i.hr
  %i.jh = getelementptr i8, ptr %i.jg, i64 8
  %i.ji = getelementptr i8, ptr %2, i64 %i.ht
  %i.jj = getelementptr i8, ptr %2, i64 %i.ht
  %i.jk = getelementptr i8, ptr %i.jj, i64 8
  br label %.lr.ph413

.lr.ph413:                                        ; preds = %.lr.ph413.preheader, %._crit_edge409
  %indvar = phi i64 [ 0, %.lr.ph413.preheader ], [ %indvar.next, %._crit_edge409 ] ; 11 uses
  %indvars.iv429 = phi i64 [ 0, %.lr.ph413.preheader ], [ %indvars.iv.next430, %._crit_edge409 ] ; 2 uses
  %indvars.iv424 = phi i32 [ %i.gz, %.lr.ph413.preheader ], [ %indvars.iv.next425, %._crit_edge409 ] ; 4 uses
  %indvars.iv419 = phi i64 [ %i.gx, %.lr.ph413.preheader ], [ %indvars.iv.next420, %._crit_edge409 ] ; 8 uses
  %i.jl = mul i64 %indvar, %i.gx                  ; 2 uses
  %i.jm = add i64 %i.ie, %i.jl
  %i.jn = add i64 %i.if, %i.jl
  %smax1065 = tail call i64 @llvm.smax.i64(i64 %i.jm, i64 %i.jn)
  %i.jo = mul i64 %indvar, %i.gx
  %i.jp = sub i64 %i.ig, %i.jo
  %i.jq = add i64 %smax1065, %i.jp                ; 2 uses
  %i.jr = lshr i64 %i.jq, 1
  %i.js = add nuw i64 %i.jr, 1                    ; 2 uses
  %i.jt = mul i64 %i.hv, %indvar                  ; 12 uses
  %scevgep933 = getelementptr i8, ptr %i.ih, i64 %i.jt ; 7 uses
  %scevgep934 = getelementptr i8, ptr %i.ij, i64 %i.jt ; 8 uses
  %i.ju = mul i64 %indvar, %i.gx                  ; 2 uses
  %i.jv = add i64 %i.hw, %i.ju
  %i.jw = add i64 %i.hx, %i.ju
  %smax935 = tail call i64 @llvm.smax.i64(i64 %i.jv, i64 %i.jw)
  %i.jx = mul i64 %indvar, %i.gx
  %i.jy = sub i64 %i.hy, %i.jx
  %i.jz = add i64 %smax935, %i.jy
  %i.ka = shl i64 %i.jz, 3
  %i.kb = and i64 %i.ka, -16                      ; 8 uses
  %scevgep936 = getelementptr i8, ptr %scevgep934, i64 %i.kb ; 7 uses
  %scevgep937 = getelementptr i8, ptr %i.il, i64 %i.jt
  %scevgep938 = getelementptr i8, ptr %scevgep937, i64 %i.kb ; 7 uses
  %scevgep939 = getelementptr i8, ptr %i.im, i64 %i.jt ; 7 uses
  %scevgep940 = getelementptr i8, ptr %i.io, i64 %i.jt ; 8 uses
  %scevgep941 = getelementptr i8, ptr %scevgep940, i64 %i.kb ; 7 uses
  %scevgep942 = getelementptr i8, ptr %i.iq, i64 %i.jt
  %scevgep943 = getelementptr i8, ptr %scevgep942, i64 %i.kb ; 7 uses
  %scevgep944 = getelementptr i8, ptr %i.ir, i64 %i.jt ; 7 uses
  %scevgep945 = getelementptr i8, ptr %i.it, i64 %i.jt ; 8 uses
  %scevgep946 = getelementptr i8, ptr %scevgep945, i64 %i.kb ; 7 uses
  %scevgep947 = getelementptr i8, ptr %i.iv, i64 %i.jt
  %scevgep948 = getelementptr i8, ptr %scevgep947, i64 %i.kb ; 7 uses
  %scevgep949 = getelementptr i8, ptr %i.iw, i64 %i.jt ; 7 uses
  %scevgep950 = getelementptr i8, ptr %i.iy, i64 %i.jt ; 8 uses
  %scevgep951 = getelementptr i8, ptr %scevgep950, i64 %i.kb ; 7 uses
  %scevgep952 = getelementptr i8, ptr %i.ja, i64 %i.jt
  %scevgep953 = getelementptr i8, ptr %scevgep952, i64 %i.kb ; 7 uses
  %i.kc = mul i64 %indvar, %i.gx                  ; 2 uses
  %i.kd = add i64 %i.hk, %i.kc
  %i.ke = add i64 %i.hm, %i.kc
  %smax914 = tail call i64 @llvm.smax.i64(i64 %i.kd, i64 %i.ke)
  %i.kf = mul i64 %indvar, %i.gx
  %i.kg = sub i64 %i.hn, %i.kf
  %i.kh = add i64 %smax914, %i.kg                 ; 2 uses
  %i.ki = lshr i64 %i.kh, 1                       ; 5 uses
  %i.kj = mul i64 %i.hp, %indvar                  ; 5 uses
  %scevgep915 = getelementptr i8, ptr %i.jc, i64 %i.kj ; 2 uses
  %scevgep916 = getelementptr i8, ptr %i.jf, i64 %i.kj ; 2 uses
  %scevgep920 = getelementptr i8, ptr %i.jh, i64 %i.kj ; 2 uses
  %scevgep924 = getelementptr i8, ptr %i.ji, i64 %i.kj ; 2 uses
  %scevgep928 = getelementptr i8, ptr %i.jk, i64 %i.kj ; 2 uses
  %i.kk = mul i64 %indvar, %i.gx
  %i.kl = add i64 %i.hl, %i.kk
  %i.km = sext i32 %indvars.iv424 to i64          ; 2 uses
  %i.kn = or disjoint i64 %i.km, 2
  %smax874 = tail call i64 @llvm.smax.i64(i64 %i.kl, i64 %i.kn)
  %i.ko = xor i64 %i.km, -1
  %i.kp = add i64 %smax874, %i.ko                 ; 2 uses
  %i.kq = lshr i64 %i.kp, 1
  %i.kr = add nuw i64 %i.kq, 1                    ; 2 uses
  %i.ks = sext i32 %indvars.iv424 to i64          ; 4 uses
  %i.kt = shl nsw i64 %i.ks, 3                    ; 7 uses
  %scevgep733 = getelementptr i8, ptr %2, i64 %i.kt ; 7 uses
  %i.ku = mul i64 %indvar, %i.gx
  %i.kv = add i64 %i.hd, %i.ku
  %i.kw = or disjoint i64 %i.ks, 2
  %smax = tail call i64 @llvm.smax.i64(i64 %i.kv, i64 %i.kw)
  %i.kx = xor i64 %i.ks, -1
  %i.ky = add i64 %smax, %i.kx
  %i.kz = shl i64 %i.ky, 3
  %i.la = and i64 %i.kz, -16                      ; 2 uses
  %i.lb = add i64 %i.la, %i.kt                    ; 6 uses
  %scevgep735 = getelementptr i8, ptr %scevgep734, i64 %i.lb ; 7 uses
  %scevgep737 = getelementptr i8, ptr %scevgep736, i64 %i.kt ; 7 uses
  %scevgep739 = getelementptr i8, ptr %scevgep738, i64 %i.lb ; 7 uses
  %scevgep741 = getelementptr i8, ptr %scevgep740, i64 %i.kt ; 7 uses
  %scevgep743 = getelementptr i8, ptr %scevgep742, i64 %i.lb ; 7 uses
  %scevgep745 = getelementptr i8, ptr %scevgep744, i64 %i.kt ; 7 uses
  %scevgep747 = getelementptr i8, ptr %scevgep746, i64 %i.lb ; 7 uses
  %i.lc = add nsw i64 %i.gy, %i.ks
  %i.ld = shl nsw i64 %i.lc, 3                    ; 3 uses
  %scevgep748 = getelementptr i8, ptr %2, i64 %i.ld ; 7 uses
  %i.le = add i64 %i.la, %i.ld                    ; 2 uses
  %scevgep750 = getelementptr i8, ptr %scevgep749, i64 %i.le ; 7 uses
  %scevgep752 = getelementptr i8, ptr %scevgep751, i64 %i.ld ; 7 uses
  %scevgep754 = getelementptr i8, ptr %scevgep753, i64 %i.le ; 7 uses
  %scevgep756 = getelementptr i8, ptr %scevgep755, i64 %i.kt ; 7 uses
  %scevgep758 = getelementptr i8, ptr %scevgep757, i64 %i.lb ; 7 uses
  %scevgep760 = getelementptr i8, ptr %scevgep759, i64 %i.kt ; 7 uses
  %scevgep762 = getelementptr i8, ptr %scevgep761, i64 %i.lb ; 7 uses
  %i.lf = sext i32 %indvars.iv424 to i64          ; 4 uses
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 2 ; 3 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next430
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !8 ; 7 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv429
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !8 ; 5 uses
  %.idx = shl nuw nsw i64 %indvars.iv.next430, 4
  %i.ll = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 4 uses
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !8 ; 5 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !8 ; 5 uses
  %i.lp = fmul double %i.lk, 2.000000e+00         ; 2 uses
  %i.lq = fneg double %i.lp
  %i.lr = tail call double @llvm.fmuladd.f64(double %i.lq, double %i.lo, double %i.lm) ; 3 uses
  %i.ls = fneg double %i.lo
  %i.lt = tail call double @llvm.fmuladd.f64(double %i.lp, double %i.lm, double %i.ls) ; 3 uses
  %i.lu = add nsw i64 %indvars.iv419, %i.gy
  br i1 %i.b, label %.lr.ph404.preheader, label %._crit_edge409

.lr.ph404.preheader:                              ; preds = %.lr.ph413
  %min.iters.check1067 = icmp ult i64 %i.jq, 22
  br i1 %min.iters.check1067, label %.lr.ph404.preheader1105, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph404.preheader
  %mul.result = shl i64 %i.ki, 4
  %i.lv = getelementptr i8, ptr %scevgep915, i64 %mul.result
  %i.lw = icmp ult ptr %i.lv, %scevgep915
  %mul.result918 = shl i64 %i.ki, 4
  %mul.overflow919 = icmp ugt i64 %i.kh, 2305843009213693951
  %i.lx = getelementptr i8, ptr %scevgep916, i64 %mul.result918
  %i.ly = icmp ult ptr %i.lx, %scevgep916
  %i.lz = or i1 %i.ly, %mul.overflow919
  %mul.result922 = shl i64 %i.ki, 4
  %i.ma = getelementptr i8, ptr %scevgep920, i64 %mul.result922
  %i.mb = icmp ult ptr %i.ma, %scevgep920
  %mul.result926 = shl i64 %i.ki, 4
  %i.mc = getelementptr i8, ptr %scevgep924, i64 %mul.result926
  %i.md = icmp ult ptr %i.mc, %scevgep924
  %mul.result930 = shl i64 %i.ki, 4
  %i.me = getelementptr i8, ptr %scevgep928, i64 %mul.result930
  %i.mf = icmp ult ptr %i.me, %scevgep928
  %i.mg = or i1 %i.lw, %i.lz
  %i.mh = or i1 %i.mb, %i.mg
  %i.mi = or i1 %i.md, %i.mh
  %i.mj = or i1 %i.mf, %i.mi
  br i1 %i.mj, label %.lr.ph404.preheader1105, label %vector.memcheck932

vector.memcheck932:                               ; preds = %vector.scevcheck
  %bound0954 = icmp ult ptr %scevgep933, %scevgep938
  %bound1955 = icmp ult ptr %scevgep934, %scevgep936
  %found.conflict956 = and i1 %bound0954, %bound1955
  %bound0957 = icmp ult ptr %scevgep933, %scevgep941
  %bound1958 = icmp ult ptr %scevgep939, %scevgep936
  %found.conflict959 = and i1 %bound0957, %bound1958
  %conflict.rdx960 = or i1 %found.conflict956, %found.conflict959
  %bound0961 = icmp ult ptr %scevgep933, %scevgep943
  %bound1962 = icmp ult ptr %scevgep940, %scevgep936
  %found.conflict963 = and i1 %bound0961, %bound1962
  %conflict.rdx964 = or i1 %conflict.rdx960, %found.conflict963
  %bound0965 = icmp ult ptr %scevgep933, %scevgep946
  %bound1966 = icmp ult ptr %scevgep944, %scevgep936
  %found.conflict967 = and i1 %bound0965, %bound1966
  %conflict.rdx968 = or i1 %conflict.rdx964, %found.conflict967
  %bound0969 = icmp ult ptr %scevgep933, %scevgep948
  %bound1970 = icmp ult ptr %scevgep945, %scevgep936
  %found.conflict971 = and i1 %bound0969, %bound1970
  %conflict.rdx972 = or i1 %conflict.rdx968, %found.conflict971
  %bound0973 = icmp ult ptr %scevgep933, %scevgep951
  %bound1974 = icmp ult ptr %scevgep949, %scevgep936
  %found.conflict975 = and i1 %bound0973, %bound1974
  %conflict.rdx976 = or i1 %conflict.rdx972, %found.conflict975
  %bound0977 = icmp ult ptr %scevgep933, %scevgep953
  %bound1978 = icmp ult ptr %scevgep950, %scevgep936
  %found.conflict979 = and i1 %bound0977, %bound1978
  %conflict.rdx980 = or i1 %conflict.rdx976, %found.conflict979
  %bound0981 = icmp ult ptr %scevgep934, %scevgep941
  %bound1982 = icmp ult ptr %scevgep939, %scevgep938
  %found.conflict983 = and i1 %bound0981, %bound1982
  %conflict.rdx984 = or i1 %conflict.rdx980, %found.conflict983
  %bound0985 = icmp ult ptr %scevgep934, %scevgep943
  %bound1986 = icmp ult ptr %scevgep940, %scevgep938
  %found.conflict987 = and i1 %bound0985, %bound1986
  %conflict.rdx988 = or i1 %conflict.rdx984, %found.conflict987
  %bound0989 = icmp ult ptr %scevgep934, %scevgep946
  %bound1990 = icmp ult ptr %scevgep944, %scevgep938
  %found.conflict991 = and i1 %bound0989, %bound1990
  %conflict.rdx992 = or i1 %conflict.rdx988, %found.conflict991
  %bound0993 = icmp ult ptr %scevgep934, %scevgep948
  %bound1994 = icmp ult ptr %scevgep945, %scevgep938
  %found.conflict995 = and i1 %bound0993, %bound1994
  %conflict.rdx996 = or i1 %conflict.rdx992, %found.conflict995
  %bound0997 = icmp ult ptr %scevgep934, %scevgep951
  %bound1998 = icmp ult ptr %scevgep949, %scevgep938
  %found.conflict999 = and i1 %bound0997, %bound1998
  %conflict.rdx1000 = or i1 %conflict.rdx996, %found.conflict999
  %bound01001 = icmp ult ptr %scevgep934, %scevgep953
  %bound11002 = icmp ult ptr %scevgep950, %scevgep938
  %found.conflict1003 = and i1 %bound01001, %bound11002
  %conflict.rdx1004 = or i1 %conflict.rdx1000, %found.conflict1003
  %bound01005 = icmp ult ptr %scevgep939, %scevgep943
  %bound11006 = icmp ult ptr %scevgep940, %scevgep941
  %found.conflict1007 = and i1 %bound01005, %bound11006
  %conflict.rdx1008 = or i1 %conflict.rdx1004, %found.conflict1007
  %bound01009 = icmp ult ptr %scevgep939, %scevgep946
  %bound11010 = icmp ult ptr %scevgep944, %scevgep941
  %found.conflict1011 = and i1 %bound01009, %bound11010
  %conflict.rdx1012 = or i1 %conflict.rdx1008, %found.conflict1011
  %bound01013 = icmp ult ptr %scevgep939, %scevgep948
  %bound11014 = icmp ult ptr %scevgep945, %scevgep941
  %found.conflict1015 = and i1 %bound01013, %bound11014
  %conflict.rdx1016 = or i1 %conflict.rdx1012, %found.conflict1015
  %bound01017 = icmp ult ptr %scevgep939, %scevgep951
  %bound11018 = icmp ult ptr %scevgep949, %scevgep941
  %found.conflict1019 = and i1 %bound01017, %bound11018
  %conflict.rdx1020 = or i1 %conflict.rdx1016, %found.conflict1019
  %bound01021 = icmp ult ptr %scevgep939, %scevgep953
  %bound11022 = icmp ult ptr %scevgep950, %scevgep941
  %found.conflict1023 = and i1 %bound01021, %bound11022
  %conflict.rdx1024 = or i1 %conflict.rdx1020, %found.conflict1023
  %bound01025 = icmp ult ptr %scevgep940, %scevgep946
  %bound11026 = icmp ult ptr %scevgep944, %scevgep943
  %found.conflict1027 = and i1 %bound01025, %bound11026
  %conflict.rdx1028 = or i1 %conflict.rdx1024, %found.conflict1027
  %bound01029 = icmp ult ptr %scevgep940, %scevgep948
  %bound11030 = icmp ult ptr %scevgep945, %scevgep943
  %found.conflict1031 = and i1 %bound01029, %bound11030
  %conflict.rdx1032 = or i1 %conflict.rdx1028, %found.conflict1031
  %bound01033 = icmp ult ptr %scevgep940, %scevgep951
  %bound11034 = icmp ult ptr %scevgep949, %scevgep943
  %found.conflict1035 = and i1 %bound01033, %bound11034
  %conflict.rdx1036 = or i1 %conflict.rdx1032, %found.conflict1035
  %bound01037 = icmp ult ptr %scevgep940, %scevgep953
  %bound11038 = icmp ult ptr %scevgep950, %scevgep943
  %found.conflict1039 = and i1 %bound01037, %bound11038
  %conflict.rdx1040 = or i1 %conflict.rdx1036, %found.conflict1039
  %bound01041 = icmp ult ptr %scevgep944, %scevgep948
  %bound11042 = icmp ult ptr %scevgep945, %scevgep946
  %found.conflict1043 = and i1 %bound01041, %bound11042
  %conflict.rdx1044 = or i1 %conflict.rdx1040, %found.conflict1043
  %bound01045 = icmp ult ptr %scevgep944, %scevgep951
  %bound11046 = icmp ult ptr %scevgep949, %scevgep946
  %found.conflict1047 = and i1 %bound01045, %bound11046
  %conflict.rdx1048 = or i1 %conflict.rdx1044, %found.conflict1047
  %bound01049 = icmp ult ptr %scevgep944, %scevgep953
  %bound11050 = icmp ult ptr %scevgep950, %scevgep946
  %found.conflict1051 = and i1 %bound01049, %bound11050
  %conflict.rdx1052 = or i1 %conflict.rdx1048, %found.conflict1051
  %bound01053 = icmp ult ptr %scevgep945, %scevgep951
  %bound11054 = icmp ult ptr %scevgep949, %scevgep948
  %found.conflict1055 = and i1 %bound01053, %bound11054
  %conflict.rdx1056 = or i1 %conflict.rdx1052, %found.conflict1055
  %bound01057 = icmp ult ptr %scevgep945, %scevgep953
  %bound11058 = icmp ult ptr %scevgep950, %scevgep948
  %found.conflict1059 = and i1 %bound01057, %bound11058
  %conflict.rdx1060 = or i1 %conflict.rdx1056, %found.conflict1059
  %bound01061 = icmp ult ptr %scevgep949, %scevgep953
  %bound11062 = icmp ult ptr %scevgep950, %scevgep951
  %found.conflict1063 = and i1 %bound01061, %bound11062
  %conflict.rdx1064 = or i1 %conflict.rdx1060, %found.conflict1063
  br i1 %conflict.rdx1064, label %.lr.ph404.preheader1105, label %vector.ph1068

vector.ph1068:                                    ; preds = %vector.memcheck932
  %n.vec1070 = and i64 %i.js, -2                  ; 3 uses
  %i.mk = shl i64 %n.vec1070, 1
  %i.ml = add i64 %indvars.iv419, %i.mk
  %broadcast.splatinsert1071 = insertelement <2 x double> poison, double %i.lk, i64 0
  %broadcast.splat1072 = shufflevector <2 x double> %broadcast.splatinsert1071, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1073 = insertelement <2 x double> poison, double %i.lh, i64 0
  %broadcast.splat1074 = shufflevector <2 x double> %broadcast.splatinsert1073, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1075 = insertelement <2 x double> poison, double %i.lo, i64 0
  %broadcast.splat1076 = shufflevector <2 x double> %broadcast.splatinsert1075, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1077 = insertelement <2 x double> poison, double %i.lm, i64 0
  %broadcast.splat1078 = shufflevector <2 x double> %broadcast.splatinsert1077, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1079 = insertelement <2 x double> poison, double %i.lt, i64 0
  %broadcast.splat1080 = shufflevector <2 x double> %broadcast.splatinsert1079, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1081 = insertelement <2 x double> poison, double %i.lr, i64 0
  %broadcast.splat1082 = shufflevector <2 x double> %broadcast.splatinsert1081, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1083

vector.body1083:                                  ; preds = %vector.body1083, %vector.ph1068
  %index1084 = phi i64 [ 0, %vector.ph1068 ], [ %index.next1101, %vector.body1083 ] ; 2 uses
  %i.mm = shl i64 %index1084, 1
  %i.mn = add i64 %indvars.iv419, %i.mm           ; 2 uses
  %i.mo = add nsw i64 %i.mn, %i.gy                ; 2 uses
  %i.mp = add nsw i64 %i.mo, %i.gy                ; 2 uses
  %i.mq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mn ; 2 uses
  %wide.vec1085 = load <4 x double>, ptr %i.mq, align 8, !tbaa !8 ; 2 uses
  %strided.vec1086 = shufflevector <4 x double> %wide.vec1085, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec1087 = shufflevector <4 x double> %wide.vec1085, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.mr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mo ; 2 uses
  %wide.vec1088 = load <4 x double>, ptr %i.mr, align 8, !tbaa !8 ; 2 uses
  %strided.vec1089 = shufflevector <4 x double> %wide.vec1088, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec1090 = shufflevector <4 x double> %wide.vec1088, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ms = fadd <2 x double> %strided.vec1086, %strided.vec1089 ; 2 uses
  %i.mt = fadd <2 x double> %strided.vec1087, %strided.vec1090 ; 2 uses
  %i.mu = fsub <2 x double> %strided.vec1086, %strided.vec1089 ; 2 uses
  %i.mv = fsub <2 x double> %strided.vec1087, %strided.vec1090 ; 2 uses
  %i.mw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mp ; 2 uses
  %wide.vec1091 = load <4 x double>, ptr %i.mw, align 8, !tbaa !8 ; 2 uses
  %strided.vec1092 = shufflevector <4 x double> %wide.vec1091, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec1093 = shufflevector <4 x double> %wide.vec1091, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.mx = getelementptr [8 x i8], ptr %invariant.gep440, i64 %i.mp ; 2 uses
  %wide.vec1094 = load <4 x double>, ptr %i.mx, align 8, !tbaa !8 ; 2 uses
  %strided.vec1095 = shufflevector <4 x double> %wide.vec1094, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec1096 = shufflevector <4 x double> %wide.vec1094, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.my = fadd <2 x double> %strided.vec1092, %strided.vec1095 ; 2 uses
  %i.mz = fadd <2 x double> %strided.vec1093, %strided.vec1096 ; 2 uses
  %i.na = fsub <2 x double> %strided.vec1092, %strided.vec1095 ; 2 uses
  %i.nb = fsub <2 x double> %strided.vec1093, %strided.vec1096 ; 2 uses
  %i.nc = fadd <2 x double> %i.ms, %i.my
  %i.nd = fadd <2 x double> %i.mt, %i.mz
  %interleaved.vec1097 = shufflevector <2 x double> %i.nc, <2 x double> %i.nd, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec1097, ptr %i.mq, align 8, !tbaa !8
  %i.ne = fsub <2 x double> %i.ms, %i.my          ; 2 uses
  %i.nf = fsub <2 x double> %i.mt, %i.mz          ; 2 uses
  %i.ng = fneg <2 x double> %i.nf
  %i.nh = fmul <2 x double> %broadcast.splat1072, %i.ng
  %i.ni = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1074, <2 x double> %i.ne, <2 x double> %i.nh)
  %i.nj = fmul <2 x double> %broadcast.splat1072, %i.ne
  %i.nk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1074, <2 x double> %i.nf, <2 x double> %i.nj)
  %interleaved.vec1098 = shufflevector <2 x double> %i.ni, <2 x double> %i.nk, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec1098, ptr %i.mw, align 8, !tbaa !8
  %i.nl = fsub <2 x double> %i.mu, %i.nb          ; 2 uses
  %i.nm = fadd <2 x double> %i.mv, %i.na          ; 2 uses
  %i.nn = fneg <2 x double> %i.nm
  %i.no = fmul <2 x double> %broadcast.splat1076, %i.nn
  %i.np = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1078, <2 x double> %i.nl, <2 x double> %i.no)
  %i.nq = fmul <2 x double> %broadcast.splat1076, %i.nl
  %i.nr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1078, <2 x double> %i.nm, <2 x double> %i.nq)
  %interleaved.vec1099 = shufflevector <2 x double> %i.np, <2 x double> %i.nr, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec1099, ptr %i.mr, align 8, !tbaa !8
  %i.ns = fadd <2 x double> %i.mu, %i.nb          ; 2 uses
  %i.nt = fsub <2 x double> %i.mv, %i.na          ; 2 uses
  %i.nu = fneg <2 x double> %i.nt
  %i.nv = fmul <2 x double> %broadcast.splat1080, %i.nu
  %i.nw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1082, <2 x double> %i.ns, <2 x double> %i.nv)
  %i.nx = fmul <2 x double> %broadcast.splat1080, %i.ns
  %i.ny = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1082, <2 x double> %i.nt, <2 x double> %i.nx)
  %interleaved.vec1100 = shufflevector <2 x double> %i.nw, <2 x double> %i.ny, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec1100, ptr %i.mx, align 8, !tbaa !8
  %index.next1101 = add nuw i64 %index1084, 2     ; 2 uses
  %i.nz = icmp eq i64 %index.next1101, %n.vec1070
  br i1 %i.nz, label %middle.block1102, label %vector.body1083, !llvm.loop !62

middle.block1102:                                 ; preds = %vector.body1083
  %cmp.n1103 = icmp eq i64 %i.js, %n.vec1070
  br i1 %cmp.n1103, label %._crit_edge405, label %.lr.ph404.preheader1105

.lr.ph404.preheader1105:                          ; preds = %vector.memcheck932, %vector.scevcheck, %.lr.ph404.preheader, %middle.block1102
  %indvars.iv421.ph = phi i64 [ %indvars.iv419, %vector.memcheck932 ], [ %indvars.iv419, %vector.scevcheck ], [ %indvars.iv419, %.lr.ph404.preheader ], [ %i.ml, %middle.block1102 ]
  br label %.lr.ph404

.lr.ph404:                                        ; preds = %.lr.ph404.preheader1105, %.lr.ph404
  %indvars.iv421 = phi i64 [ %indvars.iv.next422, %.lr.ph404 ], [ %indvars.iv421.ph, %.lr.ph404.preheader1105 ] ; 3 uses
  %i.oa = add nsw i64 %indvars.iv421, %i.gy       ; 2 uses
  %i.ob = add nsw i64 %i.oa, %i.gy                ; 2 uses
  %i.oc = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv421 ; 3 uses
  %i.od = load double, ptr %i.oc, align 8, !tbaa !8 ; 2 uses
  %i.oe = getelementptr inbounds [8 x i8], ptr %2, i64 %i.oa ; 3 uses
  %i.of = load double, ptr %i.oe, align 8, !tbaa !8 ; 2 uses
  %i.og = fadd double %i.od, %i.of                ; 2 uses
  %i.oh = getelementptr i8, ptr %i.oc, i64 8      ; 2 uses
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !8 ; 2 uses
  %i.oj = getelementptr i8, ptr %i.oe, i64 8      ; 2 uses
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !8 ; 2 uses
  %i.ol = fadd double %i.oi, %i.ok                ; 2 uses
  %i.om = fsub double %i.od, %i.of                ; 2 uses
  %i.on = fsub double %i.oi, %i.ok                ; 2 uses
  %i.oo = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ob ; 3 uses
  %i.op = load double, ptr %i.oo, align 8, !tbaa !8 ; 2 uses
  %gep441 = getelementptr [8 x i8], ptr %invariant.gep440, i64 %i.ob ; 3 uses
  %i.oq = load double, ptr %gep441, align 8, !tbaa !8 ; 2 uses
  %i.or = fadd double %i.op, %i.oq                ; 2 uses
  %i.os = getelementptr i8, ptr %i.oo, i64 8      ; 2 uses
  %i.ot = load double, ptr %i.os, align 8, !tbaa !8 ; 2 uses
  %i.ou = getelementptr i8, ptr %gep441, i64 8    ; 2 uses
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !8 ; 2 uses
  %i.ow = fadd double %i.ot, %i.ov                ; 2 uses
  %i.ox = fsub double %i.op, %i.oq                ; 2 uses
  %i.oy = fsub double %i.ot, %i.ov                ; 2 uses
  %i.oz = fadd double %i.og, %i.or
  store double %i.oz, ptr %i.oc, align 8, !tbaa !8
  %i.pa = fadd double %i.ol, %i.ow
  store double %i.pa, ptr %i.oh, align 8, !tbaa !8
  %i.pb = fsub double %i.og, %i.or                ; 2 uses
  %i.pc = fsub double %i.ol, %i.ow                ; 2 uses
  %i.pd = fneg double %i.pc
  %i.pe = fmul double %i.lk, %i.pd
  %i.pf = tail call double @llvm.fmuladd.f64(double %i.lh, double %i.pb, double %i.pe)
  store double %i.pf, ptr %i.oo, align 8, !tbaa !8
  %i.pg = fmul double %i.lk, %i.pb
  %i.ph = tail call double @llvm.fmuladd.f64(double %i.lh, double %i.pc, double %i.pg)
  store double %i.ph, ptr %i.os, align 8, !tbaa !8
  %i.pi = fsub double %i.om, %i.oy                ; 2 uses
  %i.pj = fadd double %i.on, %i.ox                ; 2 uses
  %i.pk = fneg double %i.pj
  %i.pl = fmul double %i.lo, %i.pk
  %i.pm = tail call double @llvm.fmuladd.f64(double %i.lm, double %i.pi, double %i.pl)
  store double %i.pm, ptr %i.oe, align 8, !tbaa !8
  %i.pn = fmul double %i.lo, %i.pi
  %i.po = tail call double @llvm.fmuladd.f64(double %i.lm, double %i.pj, double %i.pn)
  store double %i.po, ptr %i.oj, align 8, !tbaa !8
  %i.pp = fadd double %i.om, %i.oy                ; 2 uses
  %i.pq = fsub double %i.on, %i.ox                ; 2 uses
  %i.pr = fneg double %i.pq
  %i.ps = fmul double %i.lt, %i.pr
  %i.pt = tail call double @llvm.fmuladd.f64(double %i.lr, double %i.pp, double %i.ps)
  store double %i.pt, ptr %gep441, align 8, !tbaa !8
  %i.pu = fmul double %i.lt, %i.pp
  %i.pv = tail call double @llvm.fmuladd.f64(double %i.lr, double %i.pq, double %i.pu)
  store double %i.pv, ptr %i.ou, align 8, !tbaa !8
  %indvars.iv.next422 = add nsw i64 %indvars.iv421, 2 ; 2 uses
  %i.pw = icmp slt i64 %indvars.iv.next422, %i.lu
  br i1 %i.pw, label %.lr.ph404, label %._crit_edge405, !llvm.loop !63

._crit_edge405:                                   ; preds = %.lr.ph404, %middle.block1102
  %i.px = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.py = load double, ptr %i.px, align 8, !tbaa !8 ; 5 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %i.qa = load double, ptr %i.pz, align 8, !tbaa !8 ; 5 uses
  %i.qb = fmul double %i.lh, 2.000000e+00         ; 2 uses
  %i.qc = fneg double %i.qb
  %i.qd = tail call double @llvm.fmuladd.f64(double %i.qc, double %i.qa, double %i.py) ; 3 uses
  %i.qe = fneg double %i.qa
  %i.qf = tail call double @llvm.fmuladd.f64(double %i.qb, double %i.py, double %i.qe) ; 3 uses
  %.reass = add i64 %indvars.iv419, %invariant.op
  %4 = fneg double %i.lk                          ; 3 uses
  %min.iters.check876 = icmp ult i64 %i.kp, 14
  br i1 %min.iters.check876, label %scalar.ph875.preheader, label %vector.memcheck732

vector.memcheck732:                               ; preds = %._crit_edge405
  %bound0763 = icmp ult ptr %scevgep733, %scevgep739
  %bound1764 = icmp ult ptr %scevgep737, %scevgep735
  %found.conflict765 = and i1 %bound0763, %bound1764
  %bound0766 = icmp ult ptr %scevgep733, %scevgep743
  %bound1767 = icmp ult ptr %scevgep741, %scevgep735
  %found.conflict768 = and i1 %bound0766, %bound1767
  %conflict.rdx769 = or i1 %found.conflict765, %found.conflict768
  %bound0770 = icmp ult ptr %scevgep733, %scevgep747
  %bound1771 = icmp ult ptr %scevgep745, %scevgep735
  %found.conflict772 = and i1 %bound0770, %bound1771
  %conflict.rdx773 = or i1 %conflict.rdx769, %found.conflict772
  %bound0774 = icmp ult ptr %scevgep733, %scevgep750
  %bound1775 = icmp ult ptr %scevgep748, %scevgep735
  %found.conflict776 = and i1 %bound0774, %bound1775
  %conflict.rdx777 = or i1 %conflict.rdx773, %found.conflict776
  %bound0778 = icmp ult ptr %scevgep733, %scevgep754
  %bound1779 = icmp ult ptr %scevgep752, %scevgep735
  %found.conflict780 = and i1 %bound0778, %bound1779
  %conflict.rdx781 = or i1 %conflict.rdx777, %found.conflict780
  %bound0782 = icmp ult ptr %scevgep733, %scevgep758
  %bound1783 = icmp ult ptr %scevgep756, %scevgep735
  %found.conflict784 = and i1 %bound0782, %bound1783
  %conflict.rdx785 = or i1 %conflict.rdx781, %found.conflict784
  %bound0786 = icmp ult ptr %scevgep733, %scevgep762
  %bound1787 = icmp ult ptr %scevgep760, %scevgep735
  %found.conflict788 = and i1 %bound0786, %bound1787
  %conflict.rdx789 = or i1 %conflict.rdx785, %found.conflict788
  %bound0790 = icmp ult ptr %scevgep737, %scevgep743
  %bound1791 = icmp ult ptr %scevgep741, %scevgep739
  %found.conflict792 = and i1 %bound0790, %bound1791
  %conflict.rdx793 = or i1 %conflict.rdx789, %found.conflict792
  %bound0794 = icmp ult ptr %scevgep737, %scevgep747
  %bound1795 = icmp ult ptr %scevgep745, %scevgep739
  %found.conflict796 = and i1 %bound0794, %bound1795
  %conflict.rdx797 = or i1 %conflict.rdx793, %found.conflict796
  %bound0798 = icmp ult ptr %scevgep737, %scevgep750
  %bound1799 = icmp ult ptr %scevgep748, %scevgep739
  %found.conflict800 = and i1 %bound0798, %bound1799
  %conflict.rdx801 = or i1 %conflict.rdx797, %found.conflict800
  %bound0802 = icmp ult ptr %scevgep737, %scevgep754
  %bound1803 = icmp ult ptr %scevgep752, %scevgep739
  %found.conflict804 = and i1 %bound0802, %bound1803
  %conflict.rdx805 = or i1 %conflict.rdx801, %found.conflict804
  %bound0806 = icmp ult ptr %scevgep737, %scevgep758
  %bound1807 = icmp ult ptr %scevgep756, %scevgep739
  %found.conflict808 = and i1 %bound0806, %bound1807
  %conflict.rdx809 = or i1 %conflict.rdx805, %found.conflict808
  %bound0810 = icmp ult ptr %scevgep737, %scevgep762
  %bound1811 = icmp ult ptr %scevgep760, %scevgep739
  %found.conflict812 = and i1 %bound0810, %bound1811
  %conflict.rdx813 = or i1 %conflict.rdx809, %found.conflict812
  %bound0814 = icmp ult ptr %scevgep741, %scevgep747
  %bound1815 = icmp ult ptr %scevgep745, %scevgep743
  %found.conflict816 = and i1 %bound0814, %bound1815
  %conflict.rdx817 = or i1 %conflict.rdx813, %found.conflict816
  %bound0818 = icmp ult ptr %scevgep741, %scevgep750
  %bound1819 = icmp ult ptr %scevgep748, %scevgep743
  %found.conflict820 = and i1 %bound0818, %bound1819
  %conflict.rdx821 = or i1 %conflict.rdx817, %found.conflict820
  %bound0822 = icmp ult ptr %scevgep741, %scevgep754
  %bound1823 = icmp ult ptr %scevgep752, %scevgep743
  %found.conflict824 = and i1 %bound0822, %bound1823
  %conflict.rdx825 = or i1 %conflict.rdx821, %found.conflict824
  %bound0826 = icmp ult ptr %scevgep741, %scevgep758
  %bound1827 = icmp ult ptr %scevgep756, %scevgep743
  %found.conflict828 = and i1 %bound0826, %bound1827
  %conflict.rdx829 = or i1 %conflict.rdx825, %found.conflict828
  %bound0830 = icmp ult ptr %scevgep741, %scevgep762
  %bound1831 = icmp ult ptr %scevgep760, %scevgep743
  %found.conflict832 = and i1 %bound0830, %bound1831
  %conflict.rdx833 = or i1 %conflict.rdx829, %found.conflict832
  %bound0834 = icmp ult ptr %scevgep745, %scevgep750
  %bound1835 = icmp ult ptr %scevgep748, %scevgep747
  %found.conflict836 = and i1 %bound0834, %bound1835
  %conflict.rdx837 = or i1 %conflict.rdx833, %found.conflict836
  %bound0838 = icmp ult ptr %scevgep745, %scevgep754
  %bound1839 = icmp ult ptr %scevgep752, %scevgep747
  %found.conflict840 = and i1 %bound0838, %bound1839
  %conflict.rdx841 = or i1 %conflict.rdx837, %found.conflict840
  %bound0842 = icmp ult ptr %scevgep745, %scevgep758
  %bound1843 = icmp ult ptr %scevgep756, %scevgep747
  %found.conflict844 = and i1 %bound0842, %bound1843
  %conflict.rdx845 = or i1 %conflict.rdx841, %found.conflict844
  %bound0846 = icmp ult ptr %scevgep745, %scevgep762
  %bound1847 = icmp ult ptr %scevgep760, %scevgep747
  %found.conflict848 = and i1 %bound0846, %bound1847
  %conflict.rdx849 = or i1 %conflict.rdx845, %found.conflict848
  %bound0850 = icmp ult ptr %scevgep748, %scevgep754
  %bound1851 = icmp ult ptr %scevgep752, %scevgep750
  %found.conflict852 = and i1 %bound0850, %bound1851
  %conflict.rdx853 = or i1 %conflict.rdx849, %found.conflict852
  %bound0854 = icmp ult ptr %scevgep748, %scevgep758
  %bound1855 = icmp ult ptr %scevgep756, %scevgep750
  %found.conflict856 = and i1 %bound0854, %bound1855
  %conflict.rdx857 = or i1 %conflict.rdx853, %found.conflict856
  %bound0858 = icmp ult ptr %scevgep748, %scevgep762
  %bound1859 = icmp ult ptr %scevgep760, %scevgep750
  %found.conflict860 = and i1 %bound0858, %bound1859
  %conflict.rdx861 = or i1 %conflict.rdx857, %found.conflict860
  %bound0862 = icmp ult ptr %scevgep752, %scevgep758
  %bound1863 = icmp ult ptr %scevgep756, %scevgep754
  %found.conflict864 = and i1 %bound0862, %bound1863
  %conflict.rdx865 = or i1 %conflict.rdx861, %found.conflict864
  %bound0866 = icmp ult ptr %scevgep752, %scevgep762
  %bound1867 = icmp ult ptr %scevgep760, %scevgep754
  %found.conflict868 = and i1 %bound0866, %bound1867
  %conflict.rdx869 = or i1 %conflict.rdx865, %found.conflict868
  %bound0870 = icmp ult ptr %scevgep756, %scevgep762
  %bound1871 = icmp ult ptr %scevgep760, %scevgep758
  %found.conflict872 = and i1 %bound0870, %bound1871
  %conflict.rdx873 = or i1 %conflict.rdx869, %found.conflict872
  br i1 %conflict.rdx873, label %scalar.ph875.preheader, label %vector.ph877

vector.ph877:                                     ; preds = %vector.memcheck732
  %n.vec879 = and i64 %i.kr, -2                   ; 3 uses
  %i.qg = shl i64 %n.vec879, 1
  %i.qh = add i64 %i.qg, %i.lf
  %broadcast.splatinsert880 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat881 = shufflevector <2 x double> %broadcast.splatinsert880, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert882 = insertelement <2 x double> poison, double %i.lh, i64 0
  %broadcast.splat883 = shufflevector <2 x double> %broadcast.splatinsert882, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert884 = insertelement <2 x double> poison, double %i.qa, i64 0
  %broadcast.splat885 = shufflevector <2 x double> %broadcast.splatinsert884, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert886 = insertelement <2 x double> poison, double %i.py, i64 0
  %broadcast.splat887 = shufflevector <2 x double> %broadcast.splatinsert886, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert888 = insertelement <2 x double> poison, double %i.qf, i64 0
  %broadcast.splat889 = shufflevector <2 x double> %broadcast.splatinsert888, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert890 = insertelement <2 x double> poison, double %i.qd, i64 0
  %broadcast.splat891 = shufflevector <2 x double> %broadcast.splatinsert890, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body892

vector.body892:                                   ; preds = %vector.body892, %vector.ph877
  %index893 = phi i64 [ 0, %vector.ph877 ], [ %index.next910, %vector.body892 ] ; 2 uses
  %i.qi = shl i64 %index893, 1
  %i.qj = add i64 %i.qi, %i.lf                    ; 2 uses
  %i.qk = add nsw i64 %i.qj, %i.gy                ; 2 uses
  %i.ql = add nsw i64 %i.qk, %i.gy                ; 2 uses
  %i.qm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.qj ; 2 uses
  %wide.vec894 = load <4 x double>, ptr %i.qm, align 8, !tbaa !8 ; 2 uses
  %strided.vec895 = shufflevector <4 x double> %wide.vec894, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec896 = shufflevector <4 x double> %wide.vec894, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.qn = getelementptr inbounds [8 x i8], ptr %2, i64 %i.qk ; 2 uses
  %wide.vec897 = load <4 x double>, ptr %i.qn, align 8, !tbaa !8 ; 2 uses
  %strided.vec898 = shufflevector <4 x double> %wide.vec897, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec899 = shufflevector <4 x double> %wide.vec897, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.qo = fadd <2 x double> %strided.vec895, %strided.vec898 ; 2 uses
  %i.qp = fadd <2 x double> %strided.vec896, %strided.vec899 ; 2 uses
  %i.qq = fsub <2 x double> %strided.vec895, %strided.vec898 ; 2 uses
  %i.qr = fsub <2 x double> %strided.vec896, %strided.vec899 ; 2 uses
  %i.qs = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ql ; 2 uses
  %wide.vec900 = load <4 x double>, ptr %i.qs, align 8, !tbaa !8 ; 2 uses
  %strided.vec901 = shufflevector <4 x double> %wide.vec900, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec902 = shufflevector <4 x double> %wide.vec900, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.qt = getelementptr [8 x i8], ptr %invariant.gep442, i64 %i.ql ; 2 uses
  %wide.vec903 = load <4 x double>, ptr %i.qt, align 8, !tbaa !8 ; 2 uses
  %strided.vec904 = shufflevector <4 x double> %wide.vec903, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec905 = shufflevector <4 x double> %wide.vec903, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.qu = fadd <2 x double> %strided.vec901, %strided.vec904 ; 2 uses
  %i.qv = fadd <2 x double> %strided.vec902, %strided.vec905 ; 2 uses
  %i.qw = fsub <2 x double> %strided.vec901, %strided.vec904 ; 2 uses
  %i.qx = fsub <2 x double> %strided.vec902, %strided.vec905 ; 2 uses
  %i.qy = fadd <2 x double> %i.qo, %i.qu
  %i.qz = fadd <2 x double> %i.qp, %i.qv
  %interleaved.vec906 = shufflevector <2 x double> %i.qy, <2 x double> %i.qz, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec906, ptr %i.qm, align 8, !tbaa !8
  %i.ra = fsub <2 x double> %i.qo, %i.qu          ; 2 uses
  %i.rb = fsub <2 x double> %i.qp, %i.qv          ; 2 uses
  %i.rc = fneg <2 x double> %i.rb
  %i.rd = fmul <2 x double> %broadcast.splat883, %i.rc
  %i.re = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat881, <2 x double> %i.ra, <2 x double> %i.rd)
  %i.rf = fmul <2 x double> %broadcast.splat883, %i.ra
  %i.rg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat881, <2 x double> %i.rb, <2 x double> %i.rf)
  %interleaved.vec907 = shufflevector <2 x double> %i.re, <2 x double> %i.rg, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec907, ptr %i.qs, align 8, !tbaa !8
  %i.rh = fsub <2 x double> %i.qq, %i.qx          ; 2 uses
  %i.ri = fadd <2 x double> %i.qr, %i.qw          ; 2 uses
  %i.rj = fneg <2 x double> %i.ri
  %i.rk = fmul <2 x double> %broadcast.splat885, %i.rj
  %i.rl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat887, <2 x double> %i.rh, <2 x double> %i.rk)
  %i.rm = fmul <2 x double> %broadcast.splat885, %i.rh
  %i.rn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat887, <2 x double> %i.ri, <2 x double> %i.rm)
  %interleaved.vec908 = shufflevector <2 x double> %i.rl, <2 x double> %i.rn, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec908, ptr %i.qn, align 8, !tbaa !8
  %i.ro = fadd <2 x double> %i.qq, %i.qx          ; 2 uses
  %i.rp = fsub <2 x double> %i.qr, %i.qw          ; 2 uses
  %i.rq = fneg <2 x double> %i.rp
  %i.rr = fmul <2 x double> %broadcast.splat889, %i.rq
  %i.rs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat891, <2 x double> %i.ro, <2 x double> %i.rr)
  %i.rt = fmul <2 x double> %broadcast.splat889, %i.ro
  %i.ru = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat891, <2 x double> %i.rp, <2 x double> %i.rt)
  %interleaved.vec909 = shufflevector <2 x double> %i.rs, <2 x double> %i.ru, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec909, ptr %i.qt, align 8, !tbaa !8
  %index.next910 = add nuw i64 %index893, 2       ; 2 uses
  %i.rv = icmp eq i64 %index.next910, %n.vec879
  br i1 %i.rv, label %middle.block911, label %vector.body892, !llvm.loop !64

middle.block911:                                  ; preds = %vector.body892
  %cmp.n912 = icmp eq i64 %i.kr, %n.vec879
  br i1 %cmp.n912, label %._crit_edge409, label %scalar.ph875.preheader

scalar.ph875.preheader:                           ; preds = %vector.memcheck732, %._crit_edge405, %middle.block911
  %indvars.iv426.ph = phi i64 [ %i.lf, %vector.memcheck732 ], [ %i.lf, %._crit_edge405 ], [ %i.qh, %middle.block911 ]
  br label %scalar.ph875

scalar.ph875:                                     ; preds = %scalar.ph875.preheader, %scalar.ph875
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %scalar.ph875 ], [ %indvars.iv426.ph, %scalar.ph875.preheader ] ; 3 uses
  %i.rw = add nsw i64 %indvars.iv426, %i.gy       ; 2 uses
  %i.rx = add nsw i64 %i.rw, %i.gy                ; 2 uses
  %i.ry = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv426 ; 3 uses
  %i.rz = load double, ptr %i.ry, align 8, !tbaa !8 ; 2 uses
  %i.sa = getelementptr inbounds [8 x i8], ptr %2, i64 %i.rw ; 3 uses
  %i.sb = load double, ptr %i.sa, align 8, !tbaa !8 ; 2 uses
  %i.sc = fadd double %i.rz, %i.sb                ; 2 uses
  %i.sd = getelementptr i8, ptr %i.ry, i64 8      ; 2 uses
  %i.se = load double, ptr %i.sd, align 8, !tbaa !8 ; 2 uses
  %i.sf = getelementptr i8, ptr %i.sa, i64 8      ; 2 uses
  %i.sg = load double, ptr %i.sf, align 8, !tbaa !8 ; 2 uses
  %i.sh = fadd double %i.se, %i.sg                ; 2 uses
  %i.si = fsub double %i.rz, %i.sb                ; 2 uses
  %i.sj = fsub double %i.se, %i.sg                ; 2 uses
  %i.sk = getelementptr inbounds [8 x i8], ptr %2, i64 %i.rx ; 3 uses
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !8 ; 2 uses
  %gep443 = getelementptr [8 x i8], ptr %invariant.gep442, i64 %i.rx ; 3 uses
  %i.sm = load double, ptr %gep443, align 8, !tbaa !8 ; 2 uses
  %i.sn = fadd double %i.sl, %i.sm                ; 2 uses
  %i.so = getelementptr i8, ptr %i.sk, i64 8      ; 2 uses
  %i.sp = load double, ptr %i.so, align 8, !tbaa !8 ; 2 uses
  %i.sq = getelementptr i8, ptr %gep443, i64 8    ; 2 uses
  %i.sr = load double, ptr %i.sq, align 8, !tbaa !8 ; 2 uses
  %i.ss = fadd double %i.sp, %i.sr                ; 2 uses
  %i.st = fsub double %i.sl, %i.sm                ; 2 uses
  %i.su = fsub double %i.sp, %i.sr                ; 2 uses
  %i.sv = fadd double %i.sc, %i.sn
  store double %i.sv, ptr %i.ry, align 8, !tbaa !8
  %i.sw = fadd double %i.sh, %i.ss
  store double %i.sw, ptr %i.sd, align 8, !tbaa !8
  %i.sx = fsub double %i.sc, %i.sn                ; 2 uses
  %i.sy = fsub double %i.sh, %i.ss                ; 2 uses
  %i.sz = fneg double %i.sy
  %i.ta = fmul double %i.lh, %i.sz
  %i.tb = tail call double @llvm.fmuladd.f64(double %4, double %i.sx, double %i.ta)
  store double %i.tb, ptr %i.sk, align 8, !tbaa !8
  %i.tc = fmul double %i.lh, %i.sx
  %i.td = tail call double @llvm.fmuladd.f64(double %4, double %i.sy, double %i.tc)
  store double %i.td, ptr %i.so, align 8, !tbaa !8
  %i.te = fsub double %i.si, %i.su                ; 2 uses
  %i.tf = fadd double %i.sj, %i.st                ; 2 uses
  %i.tg = fneg double %i.tf
  %i.th = fmul double %i.qa, %i.tg
  %i.ti = tail call double @llvm.fmuladd.f64(double %i.py, double %i.te, double %i.th)
  store double %i.ti, ptr %i.sa, align 8, !tbaa !8
  %i.tj = fmul double %i.qa, %i.te
  %i.tk = tail call double @llvm.fmuladd.f64(double %i.py, double %i.tf, double %i.tj)
  store double %i.tk, ptr %i.sf, align 8, !tbaa !8
  %i.tl = fadd double %i.si, %i.su                ; 2 uses
  %i.tm = fsub double %i.sj, %i.st                ; 2 uses
  %i.tn = fneg double %i.tm
  %i.to = fmul double %i.qf, %i.tn
  %i.tp = tail call double @llvm.fmuladd.f64(double %i.qd, double %i.tl, double %i.to)
  store double %i.tp, ptr %gep443, align 8, !tbaa !8
  %i.tq = fmul double %i.qf, %i.tl
  %i.tr = tail call double @llvm.fmuladd.f64(double %i.qd, double %i.tm, double %i.tq)
  store double %i.tr, ptr %i.sq, align 8, !tbaa !8
  %indvars.iv.next427 = add nsw i64 %indvars.iv426, 2 ; 2 uses
  %i.ts = icmp slt i64 %indvars.iv.next427, %.reass
  br i1 %i.ts, label %scalar.ph875, label %._crit_edge409, !llvm.loop !65

._crit_edge409:                                   ; preds = %scalar.ph875, %middle.block911, %.lr.ph413
  %indvars.iv.next420 = add nsw i64 %indvars.iv419, %i.gx ; 2 uses
  %i.tt = icmp slt i64 %indvars.iv.next420, %i.hb
  %indvars.iv.next425 = add i32 %indvars.iv424, %i.gv
  %indvar.next = add i64 %indvar, 1
  br i1 %i.tt, label %.lr.ph413, label %._crit_edge414, !llvm.loop !66

._crit_edge414:                                   ; preds = %._crit_edge409, %._crit_edge401
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(1) }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = !{!20, !21, i64 0}
!20 = !{!"timeval", !21, i64 0, !21, i64 8}
!21 = !{!"long", !6, i64 0}
!22 = !{!20, !21, i64 8}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11, !15, !16}
!25 = distinct !{!25, !11, !16, !15}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11, !15, !16}
!33 = distinct !{!33, !11, !15, !16}
!34 = distinct !{!34, !11, !15}
!35 = distinct !{!35, !11, !15}
!36 = distinct !{!36, !11, !15, !16}
!37 = distinct !{!37, !11, !16, !15}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11, !15, !16}
!45 = distinct !{!45, !11, !15, !16}
!46 = distinct !{!46, !11, !15}
!47 = distinct !{!47, !11, !15}
!48 = !{!49}
!49 = distinct !{!49, !50}
!50 = distinct !{!50, !"LVerDomain"}
!51 = !{!52}
!52 = distinct !{!52, !50}
!53 = !{!54}
!54 = distinct !{!54, !50}
!55 = !{!52, !49}
!56 = distinct !{!56, !11, !15, !16}
!57 = distinct !{!57, !11, !15}
!58 = distinct !{!58, !11, !15, !16}
!59 = distinct !{!59, !11, !15}
!60 = distinct !{!60, !11, !15, !16}
!61 = distinct !{!61, !11, !15}
!62 = distinct !{!62, !11, !15, !16}
!63 = distinct !{!63, !11, !15}
!64 = distinct !{!64, !11, !15, !16}
!65 = distinct !{!65, !11, !15}
!66 = distinct !{!66, !11}
end_hunk_1
