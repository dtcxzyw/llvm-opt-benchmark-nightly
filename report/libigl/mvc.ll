Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/mvc?download=true
inline.NumInlined: 8230
inline.NumDeleted: 4298
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZN3igl3mvcERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_RS2_:bb.a
  br i1 %lcmp.mod2210.not, label %.lr.ph.i.i.i.i.i.i.i.i.i247.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i247.prol

.lr.ph.i.i.i.i.i.i.i.i.i247.prol:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i247.preheader2195, %.lr.ph.i.i.i.i.i.i.i.i.i247.prol
  %.05.i.i.i.i.i.i.i.i.i248.prol = phi i64 [ %i.kv, %.lr.ph.i.i.i.i.i.i.i.i.i247.prol ], [ %.05.i.i.i.i.i.i.i.i.i248.ph, %.lr.ph.i.i.i.i.i.i.i.i.i247.preheader2195 ] ; 3 uses
  %prol.iter2211 = phi i64 [ %prol.iter2211.next, %.lr.ph.i.i.i.i.i.i.i.i.i247.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i247.preheader2195 ]
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.kc, i64 %.05.i.i.i.i.i.i.i.i.i248.prol
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %.05.i.i.i.i.i.i.i.i.i248.prol
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !21
  store double %i.ku, ptr %i.ks, align 8, !tbaa !21
  %i.kv = add nsw i64 %.05.i.i.i.i.i.i.i.i.i248.prol, 1 ; 2 uses
  %prol.iter2211.next = add i64 %prol.iter2211, 1 ; 2 uses
  %prol.iter2211.cmp.not = icmp eq i64 %prol.iter2211.next, %xtraiter2209
  br i1 %prol.iter2211.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i247.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i247.prol, !llvm.loop !222

.lr.ph.i.i.i.i.i.i.i.i.i247.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i247.prol, %.lr.ph.i.i.i.i.i.i.i.i.i247.preheader2195
  %.05.i.i.i.i.i.i.i.i.i248.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i248.ph, %.lr.ph.i.i.i.i.i.i.i.i.i247.preheader2195 ], [ %i.kv, %.lr.ph.i.i.i.i.i.i.i.i.i247.prol ]
  %i.kw = sub i64 %.05.i.i.i.i.i.i.i.i.i248.ph, %.pre-phi1632
  %i.kx = icmp ugt i64 %i.kw, -4
  br i1 %i.kx, label %.loopexit1135, label %.lr.ph.i.i.i.i.i.i.i.i.i247

.lr.ph.i.i.i.i.i.i.i.i.i247:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i247.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i247
  %.05.i.i.i.i.i.i.i.i.i248 = phi i64 [ %i.ln, %.lr.ph.i.i.i.i.i.i.i.i.i247 ], [ %.05.i.i.i.i.i.i.i.i.i248.unr, %.lr.ph.i.i.i.i.i.i.i.i.i247.prol.loopexit ] ; 6 uses
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.kc, i64 %.05.i.i.i.i.i.i.i.i.i248
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %.05.i.i.i.i.i.i.i.i.i248
  %i.la = load double, ptr %i.kz, align 8, !tbaa !21
  store double %i.la, ptr %i.ky, align 8, !tbaa !21
  %i.lb = add nsw i64 %.05.i.i.i.i.i.i.i.i.i248, 1 ; 2 uses
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.kc, i64 %i.lb
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %i.lb
  %i.le = load double, ptr %i.ld, align 8, !tbaa !21
  store double %i.le, ptr %i.lc, align 8, !tbaa !21
  %i.lf = add nsw i64 %.05.i.i.i.i.i.i.i.i.i248, 2 ; 2 uses
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.kc, i64 %i.lf
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %i.lf
  %i.li = load double, ptr %i.lh, align 8, !tbaa !21
  store double %i.li, ptr %i.lg, align 8, !tbaa !21
  %i.lj = add nsw i64 %.05.i.i.i.i.i.i.i.i.i248, 3 ; 2 uses
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.kc, i64 %i.lj
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %i.lj
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !21
  store double %i.lm, ptr %i.lk, align 8, !tbaa !21
  %i.ln = add nsw i64 %.05.i.i.i.i.i.i.i.i.i248, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i249.3 = icmp eq i64 %i.ln, %.pre-phi1632
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i249.3, label %.loopexit1135, label %.lr.ph.i.i.i.i.i.i.i.i.i247, !llvm.loop !223

.lr.ph.i.i.i.i.i.i.i.i250:                        ; preds = %bb.aw, %.lr.ph.i.i.i.i.i.i.i.i250
  %.011.i.i.i.i.i.i.i.i251 = phi i64 [ %i.lr, %.lr.ph.i.i.i.i.i.i.i.i250 ], [ 0, %bb.aw ] ; 3 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %.011.i.i.i.i.i.i.i.i251
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %.011.i.i.i.i.i.i.i.i251
  %i.lq = load <2 x double>, ptr %i.lp, align 16, !tbaa !18
  store <2 x double> %i.lq, ptr %i.lo, align 16, !tbaa !18
  %i.lr = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i251, 2 ; 2 uses
  %i.ls = icmp slt i64 %i.lr, %i.kf
  br i1 %i.ls, label %.lr.ph.i.i.i.i.i.i.i.i250, label %._crit_edge.i.i.i.i.i.i.i.i246, !llvm.loop !218

.loopexit1135:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i247.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i247, %middle.block2007, %._crit_edge.i.i.i.i.i.i.i.i246, %bb.an
  %i.lt = icmp sgt i32 %i.c, 0
  %.pre = load ptr, ptr %16, align 8, !tbaa !17, !noalias !49 ; 11 uses
  br i1 %i.lt, label %.lr.ph, label %.loopexit1135.._crit_edge_crit_edge

.loopexit1135.._crit_edge_crit_edge:              ; preds = %.loopexit1135
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.pre1617.a = load i64, ptr %.phi.trans.insert, align 8, !tbaa !15 ; 3 uses
  %.pre1618 = load double, ptr %.pre, align 8, !tbaa !21
  %.phi.trans.insert1619 = getelementptr inbounds [8 x i8], ptr %.pre, i64 %.pre1617.a
  %.pre1620.a = load double, ptr %.phi.trans.insert1619, align 8, !tbaa !21
  %.pre1623 = shl nsw i64 %.pre1617.a, 4          ; 2 uses
  %.phi.trans.insert1624 = getelementptr inbounds i8, ptr %.pre, i64 %.pre1623
  %.pre1625.a = load double, ptr %.phi.trans.insert1624, align 8, !tbaa !21
  br label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit1135
  %i.lu = add i64 %i.b, 4294967295
  %i.lv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !15 ; 8 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.lw, 4 ; 7 uses
  %i.lx = and i64 %i.lu, 4294967295               ; 3 uses
  %wide.trip.count = and i64 %i.b, 2147483647     ; 2 uses
  %.not = icmp ne i64 %i.lx, 0
  %i.ly = zext i1 %.not to i64
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ly ; 3 uses
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !21
  %i.mb = load double, ptr %.pre, align 8, !tbaa !21 ; 5 uses
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.lz, i64 %i.lw
  %i.md = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.lw
  %i.me = load double, ptr %i.mc, align 8, !tbaa !21
  %i.mf = load double, ptr %i.md, align 8, !tbaa !21 ; 3 uses
  %i.mg = getelementptr inbounds i8, ptr %i.lz, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.mh = getelementptr inbounds i8, ptr %.pre, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.mi = load double, ptr %i.mg, align 8, !tbaa !21 ; 2 uses
  %i.mj = load double, ptr %i.mh, align 8, !tbaa !21 ; 4 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.lx ; 3 uses
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !21
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.mk, i64 %i.lw
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !21
  %i.mo = getelementptr inbounds i8, ptr %i.mk, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !21 ; 2 uses
  %i.mq = insertelement <2 x double> poison, double %i.mi, i64 0
  %i.mr = insertelement <2 x double> %i.mq, double %i.ma, i64 1
  %i.ms = insertelement <2 x double> poison, double %i.mj, i64 0 ; 2 uses
  %i.mt = insertelement <2 x double> %i.ms, double %i.mb, i64 1
  %i.mu = fsub <2 x double> %i.mr, %i.mt          ; 2 uses
  %i.mv = insertelement <2 x double> poison, double %i.me, i64 0
  %i.mw = insertelement <2 x double> %i.mv, double %i.ml, i64 1
  %i.mx = insertelement <2 x double> poison, double %i.mf, i64 0 ; 2 uses
  %i.my = insertelement <2 x double> %i.mx, double %i.mb, i64 1
  %i.mz = fsub <2 x double> %i.mw, %i.my          ; 3 uses
  %i.na = insertelement <2 x double> poison, double %i.mp, i64 0
  %i.nb = insertelement <2 x double> %i.na, double %i.mi, i64 1
  %i.nc = shufflevector <2 x double> %i.ms, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nd = fsub <2 x double> %i.nb, %i.nc
  %i.ne = insertelement <2 x double> poison, double %i.mn, i64 0
  %i.nf = insertelement <2 x double> %i.ne, double %i.mp, i64 1
  %i.ng = insertelement <2 x double> %i.mx, double %i.mj, i64 1 ; 2 uses
  %i.nh = fsub <2 x double> %i.nf, %i.ng          ; 2 uses
  %i.ni = fneg <2 x double> %i.nh
  %i.nj = fmul <2 x double> %i.mu, %i.ni
  %i.nk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nd, <2 x double> %i.mz, <2 x double> %i.nj)
  %i.nl = extractelement <2 x double> %i.mz, i64 1
  %i.nm = fneg double %i.nl
  %i.nn = extractelement <2 x double> %i.mz, i64 0
  %i.no = fmul double %i.nn, %i.nm
  %i.np = extractelement <2 x double> %i.mu, i64 1
  %i.nq = extractelement <2 x double> %i.nh, i64 0
  %i.nr = call double @llvm.fmuladd.f64(double %i.np, double %i.nq, double %i.no)
  %i.ns = fadd <2 x double> %i.nk, zeroinitializer ; 2 uses
  %i.nt = fadd double %i.nr, 0.000000e+00         ; 2 uses
  %exitcond.peel.not = icmp eq i64 %wide.trip.count, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %.lr.ph, %.peel.next
  %i.nu = phi double [ %i.ob, %.peel.next ], [ %i.mb, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next ], [ 1, %.lr.ph ] ; 3 uses
  %.sroa.0958.01383 = phi <2 x double> [ %i.pj, %.peel.next ], [ %i.ns, %.lr.ph ]
  %.sroa.22974.01382 = phi double [ %i.pk, %.peel.next ], [ %i.nt, %.lr.ph ]
  %i.nv = phi <2 x double> [ %i.ox, %.peel.next ], [ %i.ng, %.lr.ph ] ; 2 uses
  %i.nw = icmp samesign ult i64 %indvars.iv, %i.lx
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.nx = select i1 %i.nw, i64 %indvars.iv.next, i64 0
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.nx ; 3 uses
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv ; 3 uses
  %i.oa = load double, ptr %i.ny, align 8, !tbaa !21
  %i.ob = load double, ptr %i.nz, align 8, !tbaa !21 ; 3 uses
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.ny, i64 %i.lw
  %i.od = getelementptr inbounds [8 x i8], ptr %i.nz, i64 %i.lw
  %i.oe = load double, ptr %i.oc, align 8, !tbaa !21
  %i.of = load double, ptr %i.od, align 8, !tbaa !21
  %i.og = getelementptr inbounds i8, ptr %i.ny, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.oh = getelementptr inbounds i8, ptr %i.nz, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.oi = load double, ptr %i.og, align 8, !tbaa !21
  %i.oj = load double, ptr %i.oh, align 8, !tbaa !21 ; 2 uses
  %i.ok = insertelement <2 x double> poison, double %i.oi, i64 0 ; 2 uses
  %i.ol = insertelement <2 x double> %i.ok, double %i.oa, i64 1
  %i.om = insertelement <2 x double> poison, double %i.oj, i64 0 ; 2 uses
  %i.on = insertelement <2 x double> %i.om, double %i.ob, i64 1
  %i.oo = fsub <2 x double> %i.ol, %i.on          ; 2 uses
  %i.op = insertelement <2 x double> poison, double %i.oe, i64 0
  %i.oq = insertelement <2 x double> %i.op, double %i.nu, i64 1
  %i.or = insertelement <2 x double> poison, double %i.of, i64 0 ; 2 uses
  %i.os = insertelement <2 x double> %i.or, double %i.ob, i64 1
  %i.ot = fsub <2 x double> %i.oq, %i.os          ; 3 uses
  %i.ou = shufflevector <2 x double> %i.nv, <2 x double> %i.ok, <2 x i32> <i32 1, i32 2>
  %i.ov = shufflevector <2 x double> %i.om, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ow = fsub <2 x double> %i.ou, %i.ov
  %i.ox = insertelement <2 x double> %i.or, double %i.oj, i64 1 ; 2 uses
  %i.oy = fsub <2 x double> %i.nv, %i.ox          ; 2 uses
  %i.oz = fneg <2 x double> %i.oy
  %i.pa = fmul <2 x double> %i.oo, %i.oz
  %i.pb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ow, <2 x double> %i.ot, <2 x double> %i.pa)
  %i.pc = extractelement <2 x double> %i.ot, i64 1
  %i.pd = fneg double %i.pc
  %i.pe = extractelement <2 x double> %i.ot, i64 0
  %i.pf = fmul double %i.pe, %i.pd
  %i.pg = extractelement <2 x double> %i.oo, i64 1
  %i.ph = extractelement <2 x double> %i.oy, i64 0
  %i.pi = call double @llvm.fmuladd.f64(double %i.pg, double %i.ph, double %i.pf)
  %i.pj = fadd <2 x double> %.sroa.0958.01383, %i.pb ; 2 uses
  %i.pk = fadd double %.sroa.22974.01382, %i.pi   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !224

._crit_edge:                                      ; preds = %.peel.next, %.lr.ph, %.loopexit1135.._crit_edge_crit_edge
  %i.pl = phi double [ %.pre1625.a, %.loopexit1135.._crit_edge_crit_edge ], [ %i.mj, %.lr.ph ], [ %i.mj, %.peel.next ]
  %.idx.i.i.i.i.i.i.i.i.i.i260.pre-phi = phi i64 [ %.pre1623, %.loopexit1135.._crit_edge_crit_edge ], [ %.idx.i.i.i.i.i.i.i.i.i.i, %.lr.ph ], [ %.idx.i.i.i.i.i.i.i.i.i.i, %.peel.next ]
  %i.pm = phi double [ %.pre1620.a, %.loopexit1135.._crit_edge_crit_edge ], [ %i.mf, %.lr.ph ], [ %i.mf, %.peel.next ]
  %i.pn = phi double [ %.pre1618, %.loopexit1135.._crit_edge_crit_edge ], [ %i.mb, %.lr.ph ], [ %i.mb, %.peel.next ]
  %i.po = phi i64 [ %.pre1617.a, %.loopexit1135.._crit_edge_crit_edge ], [ %i.lw, %.lr.ph ], [ %i.lw, %.peel.next ]
  %.sroa.22974.0.lcssa = phi double [ 0.000000e+00, %.loopexit1135.._crit_edge_crit_edge ], [ %i.nt, %.lr.ph ], [ %i.pk, %.peel.next ]
  %.sroa.0958.0.lcssa = phi <2 x double> [ zeroinitializer, %.loopexit1135.._crit_edge_crit_edge ], [ %i.ns, %.lr.ph ], [ %i.pj, %.peel.next ]
  %i.pp = sitofp i32 %i.c to double               ; 2 uses
  %i.pq = insertelement <2 x double> poison, double %i.pp, i64 0
  %i.pr = shufflevector <2 x double> %i.pq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ps = fdiv <2 x double> %.sroa.0958.0.lcssa, %i.pr ; 3 uses
  %i.pt = fdiv double %.sroa.22974.0.lcssa, %i.pp ; 3 uses
  %i.pu = fmul <2 x double> %i.ps, %i.ps          ; 2 uses
  %shift = shufflevector <2 x double> %i.pu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.pu, %shift
  %i.pv = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.pw = fmul double %i.pt, %i.pt
  %i.px = fadd double %i.pw, %i.pv
  %sqrt = call double @sqrt(double noundef %i.px) #22 ; 2 uses
  %i.py = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.pz = shufflevector <2 x double> %i.py, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qa = fdiv <2 x double> %i.ps, %i.pz          ; 6 uses
  %i.qb = fdiv double %i.pt, %sqrt                ; 5 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.qe = load double, ptr %i.qc, align 8, !tbaa !21
  %i.qf = getelementptr inbounds [8 x i8], ptr %i.qc, i64 %i.po
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !21
  %i.qh = getelementptr inbounds i8, ptr %i.qc, i64 %.idx.i.i.i.i.i.i.i.i.i.i260.pre-phi
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !21
  %.sroa.0958.8.vec.extract973 = extractelement <2 x double> %i.qa, i64 1
  %.sroa.0958.0.vec.extract970 = extractelement <2 x double> %i.qa, i64 0
  %i.qj = insertelement <2 x double> poison, double %i.qi, i64 0
  %i.qk = insertelement <2 x double> %i.qj, double %i.qe, i64 1
  %i.ql = insertelement <2 x double> poison, double %i.pl, i64 0
  %i.qm = insertelement <2 x double> %i.ql, double %i.pn, i64 1
  %i.qn = fsub <2 x double> %i.qk, %i.qm          ; 6 uses
  %i.qo = shufflevector <2 x double> %i.qn, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.qp = fsub double %i.qg, %i.pm                ; 3 uses
  %.sroa.0819.8.vec.insert = insertelement <2 x double> %i.qo, double %i.qp, i64 1 ; 3 uses
  %i.qq = insertelement <2 x double> %i.qo, double %i.qp, i64 0
  %i.qr = fneg <2 x double> %i.qq
  %i.qs = shufflevector <2 x double> %i.qa, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.qt = insertelement <2 x double> %i.qs, double %i.qb, i64 0
  %i.qu = fmul <2 x double> %i.qt, %i.qr
  %i.qv = insertelement <2 x double> %i.qs, double %i.qb, i64 1
  %i.qw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qv, <2 x double> %i.qn, <2 x double> %i.qu) ; 3 uses
  %i.qx = extractelement <2 x double> %i.qn, i64 1
  %i.qy = fneg double %i.qx
  %i.qz = fmul double %.sroa.0958.8.vec.extract973, %i.qy
  %i.ra = fmul <2 x double> %.sroa.0819.8.vec.insert, %.sroa.0819.8.vec.insert ; 2 uses
  %shift2111 = shufflevector <2 x double> %i.ra, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2112 = fadd <2 x double> %i.ra, %shift2111
  %26 = fmul <2 x double> %i.qw, %i.qw            ; 2 uses
  %shift2114 = shufflevector <2 x double> %26, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.rb = fadd <2 x double> %26, %shift2114
  %27 = extractelement <2 x double> %i.rb, i64 0
  %28 = call double @llvm.fmuladd.f64(double %.sroa.0958.0.vec.extract970, double %i.qp, double %i.qz) ; 3 uses
  %i.rc = fmul <2 x double> %i.qn, %i.qn
  %i.rd = fadd <2 x double> %i.rc, %foldExtExtBinop2112
  %29 = extractelement <2 x double> %i.rd, i64 0
  %30 = call double @sqrt(double noundef %29) #22
  %31 = insertelement <2 x double> poison, double %30, i64 0 ; 2 uses
  %i.re = shufflevector <2 x double> %31, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rf = fdiv <2 x double> %.sroa.0819.8.vec.insert, %i.re
  %32 = fmul double %28, %28
  %33 = fadd double %32, %27
  %34 = call double @sqrt(double noundef %33) #22 ; 2 uses
  %35 = insertelement <2 x double> poison, double %34, i64 0
  %36 = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rg = fdiv <2 x double> %i.qw, %36
  %37 = insertelement <2 x double> %i.qn, double %28, i64 1
  %38 = insertelement <2 x double> %31, double %34, i64 1
  %i.rh = fdiv <2 x double> %37, %38              ; 2 uses
  %i.ri = fmul <2 x double> %i.qa, %i.qa          ; 2 uses
  %shift2112 = shufflevector <2 x double> %i.ri, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2113 = fadd <2 x double> %i.ri, %shift2112
  %i.rj = extractelement <2 x double> %foldExtExtBinop2113, i64 0
  %i.rk = fmul double %i.qb, %i.qb
  %i.rl = fadd double %i.rk, %i.rj
  %sqrt1120 = call double @sqrt(double noundef %i.rl) #22 ; 2 uses
  %i.rm = insertelement <2 x double> poison, double %sqrt1120, i64 0
  %i.rn = shufflevector <2 x double> %i.rm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ro = fdiv <2 x double> %i.qa, %i.rn
  %i.rp = fdiv double %i.qb, %sqrt1120
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.rq = extractelement <2 x double> %i.rh, i64 0
  store double %i.rq, ptr %.sroa.7, align 16, !tbaa !21
  %.sroa.7.8..07.i.i.i.i.ptr.3.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 8
  store <2 x double> %i.rg, ptr %.sroa.7.8..07.i.i.i.i.ptr.3.i.i.i.i.i.i.sroa_idx, align 8, !tbaa !18
  %i.rr = extractelement <2 x double> %i.rh, i64 1
  %.sroa.7.24..07.i.i.i.i.ptr.5.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 24
  store double %i.rr, ptr %.sroa.7.24..07.i.i.i.i.ptr.5.i.i.i.i.i.i.sroa_idx, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.rs = getelementptr inbounds nuw i8, ptr %21, i64 208
  store i8 0, ptr %i.rs, align 16, !tbaa !73, !alias.scope !297
  %i.rt = getelementptr inbounds nuw i8, ptr %21, i64 209
  store i8 0, ptr %i.rt, align 1, !tbaa !298, !alias.scope !297
  store <2 x double> %i.rf, ptr %21, align 16, !tbaa !18, !alias.scope !297
  %i.ru = getelementptr inbounds nuw i8, ptr %21, i64 16
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16. = load <2 x double>, ptr %.sroa.7, align 16, !tbaa !18, !noalias !297
  store <2 x double> %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16., ptr %i.ru, align 16, !tbaa !18, !alias.scope !297
  %i.rv = getelementptr inbounds nuw i8, ptr %21, i64 32
  %.sroa.7.16..07.i.i.i.i.ptr.4.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 16
  %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32. = load <2 x double>, ptr %.sroa.7.16..07.i.i.i.i.ptr.4.i.i.i.i.i.i.sroa_idx, align 16, !tbaa !18, !noalias !297
  store <2 x double> %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32., ptr %i.rv, align 16, !tbaa !18, !alias.scope !297
  %i.rw = getelementptr inbounds nuw i8, ptr %21, i64 48
  store <2 x double> %i.ro, ptr %i.rw, align 16, !tbaa !18, !alias.scope !297
  %i.rx = getelementptr inbounds nuw i8, ptr %21, i64 64
  store double %i.rp, ptr %i.rx, align 16, !tbaa !21, !alias.scope !297
  invoke void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14computeInPlaceEv(ptr noundef nonnull align 8 dereferenceable(248) %21)
          to label %bb.ax unwind label %bb.ba

bb.ax:                                            ; preds = %._crit_edge
  %i.ry = getelementptr inbounds nuw i8, ptr %15, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  store ptr %15, ptr %23, align 8
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !15
  store ptr %21, ptr %22, align 8
  %.sroa.5758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %23, ptr %.sroa.5758.0..sroa_idx, align 8
  %i.sa = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.sb = getelementptr inbounds nuw i8, ptr %22, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sa, i8 0, i64 16, i1 false)
  store i64 %i.rz, ptr %i.sb, align 8, !tbaa !26, !alias.scope !299
  %i.sc = getelementptr inbounds nuw i8, ptr %22, i64 40
  store i64 2, ptr %i.sc, align 8, !tbaa !26, !alias.scope !299
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIKNS_9TransposeIKNS_5SolveINS_19ColPivHouseholderQRINS2_IdLi3ELi3ELi0ELi3ELi3EEEEENS5_IS3_EEEEEELin1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  store ptr %16, ptr %25, align 8
  %i.sd = load i64, ptr %i.qd, align 8, !tbaa !15
  store ptr %21, ptr %24, align 8
  %.sroa.5754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %25, ptr %.sroa.5754.0..sroa_idx, align 8
  %i.se = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.sf = getelementptr inbounds nuw i8, ptr %24, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.se, i8 0, i64 16, i1 false)
  store i64 %i.sd, ptr %i.sf, align 8, !tbaa !26, !alias.scope !300
  %i.sg = getelementptr inbounds nuw i8, ptr %24, i64 40
  store i64 2, ptr %i.sg, align 8, !tbaa !26, !alias.scope !300
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIKNS_9TransposeIKNS_5SolveINS_19ColPivHouseholderQRINS2_IdLi3ELi3ELi0ELi3ELi3EEEEENS5_IS3_EEEEEELin1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.be

bb.ba:                                            ; preds = %._crit_edge
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bb:                                            ; preds = %bb.ax
  %i.si = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ay
  %i.sj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc, %bb.ba
  %.pn160.pn = phi { ptr, i32 } [ %i.sh, %bb.ba ], [ %i.sj, %bb.bc ], [ %i.si, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %.body

bb.be:                                            ; preds = %bb.az, %bb.t
  %i.sk = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !15 ; 34 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !15 ; 9 uses
  %i.so = icmp eq i64 %i.sl, 0                    ; 2 uses
  %i.sp = icmp eq i64 %i.sn, 0
  %or.cond.i.i.i.i277 = or i1 %i.so, %i.sp        ; 3 uses
  br i1 %or.cond.i.i.i.i277, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i278, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.sq = sdiv i64 9223372036854775807, %i.sn
  %i.sr = icmp sgt i64 %i.sl, %i.sq
  br i1 %i.sr, label %.invoke1870, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i278

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i278: ; preds = %bb.bf, %bb.be
  %i.ss = mul nsw i64 %i.sn, %i.sl                ; 5 uses
  %i.st = icmp sgt i64 %i.ss, 0                   ; 2 uses
  br i1 %i.st, label %bb.bg, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit

bb.bg:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i278
  %i.su = icmp samesign ugt i64 %i.ss, 2305843009213693951
  br i1 %i.su, label %.invoke1870, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i399

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i399: ; preds = %bb.bg
  %i.sv = shl nuw i64 %i.ss, 3
  %i.sw = call noalias ptr @malloc(i64 noundef %i.sv) #23 ; 2 uses
  %i.sx = icmp eq ptr %i.sw, null
  br i1 %i.sx, label %.invoke1870, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit

.invoke1870:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i399, %bb.bg, %bb.bf
  %i.sy = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.sy, align 8, !tbaa !30
  invoke void @__cxa_throw(ptr nonnull %i.sy, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.cont1871 unwind label %bb.bh

.cont1871:                                        ; preds = %.invoke1870
  unreachable

bb.bh:                                            ; preds = %.invoke1870
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i399, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i278
  %.sroa.01038.0 = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i278 ], [ %i.sw, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i399 ] ; 9 uses
  br i1 %or.cond.i.i.i.i277, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i283, label %bb.bi

bb.bi:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit
  %i.ta = sdiv i64 9223372036854775807, %i.sn
  %i.tb = icmp sgt i64 %i.sl, %i.ta
  br i1 %i.tb, label %.invoke1872, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i283

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i283: ; preds = %bb.bi, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit
  br i1 %i.st, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i406, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit287

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i406: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i283
  %i.tc = shl nuw i64 %i.ss, 3
  %i.td = call noalias ptr @malloc(i64 noundef %i.tc) #23 ; 2 uses
  %i.te = icmp eq ptr %i.td, null
  br i1 %i.te, label %.invoke1872, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit287

.invoke1872:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i406, %bb.bi
  %i.tf = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.tf, align 8, !tbaa !30
  invoke void @__cxa_throw(ptr nonnull %i.tf, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.cont1873 unwind label %bb.bj

.cont1873:                                        ; preds = %.invoke1872
  unreachable

bb.bj:                                            ; preds = %.invoke1872
  %i.tg = landingpad { ptr, i32 }
          cleanup
  br label %.body285

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit287: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i406, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i283
  %.sroa.0725.0 = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i283 ], [ %i.td, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i406 ] ; 5 uses
  %i.th = icmp sgt i64 %i.sl, 0
  br i1 %i.th, label %.lr.ph1410, label %.preheader

.lr.ph1410:                                       ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit287
  %i.ti = add nsw i32 %i.c, -1                    ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.tk = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.tl = sext i32 %i.ti to i64
  br label %bb.bl

.loopexit1128.loopexit:                           ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit
  %.pre1622 = load i64, ptr %i.sk, align 8, !tbaa !15
  br label %.loopexit1128

.loopexit1128:                                    ; preds = %.loopexit1128.loopexit, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit
  %i.tm = phi i64 [ %i.up, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE3dotISA_EENS_20ScalarBinaryOpTraitsIdNS2_6traitsIT_E6ScalarENS2_17scalar_product_opIdSH_EEE10ReturnTypeERKNS0_ISF_EE.exit ], [ %.pre1622, %.loopexit1128.loopexit ] ; 2 uses
end_hunk_0
