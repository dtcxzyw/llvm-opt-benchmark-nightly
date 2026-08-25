Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ap3p?download=true
inline.NumInlined: 292
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv4ap3p12computePosesEPA4_KdS3_PA3_A3_dPS4_b:bb.a
  %i.kk = extractelement <2 x double> %i.ad, i64 1
  %i.kl = fmul double %i.kk, %i.ke
  %i.km = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.kn = load double, ptr %i.km, align 8, !tbaa !8 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !8 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !8 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !8
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  br i1 %i.hi, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit
  %i.kw = fcmp ogt double %i.dp, 0.000000e+00
  %wide.trip.count = zext nneg i32 %i.hh to i64
  %i.kx = insertelement <2 x double> poison, double %i.kr, i64 0
  %i.ky = shufflevector <2 x double> %i.kx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kz = shufflevector <2 x double> %i.w, <2 x double> %i.x, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.la = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.lb = shufflevector <2 x double> %i.la, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lc = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.ld = shufflevector <2 x double> %i.lc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.le = insertelement <2 x double> poison, double %i.k, i64 0
  %i.lf = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lg = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.lh = shufflevector <2 x double> %i.lg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.li = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lj = fneg <2 x double> %i.jz
  %i.lk = shufflevector <2 x double> %i.lj, <2 x double> %i.jy, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ll = insertelement <2 x double> poison, double %i.g, i64 0
  %i.lm = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ln = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lo = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.lp = shufflevector <2 x double> <double 1.000000e+00, double poison>, <2 x double> %i.fa, <2 x i32> <i32 0, i32 2>
  %i.lq = insertelement <2 x double> poison, double %i.gn, i64 0
  %i.lr = insertelement <2 x double> %i.lq, double %i.fc, i64 1
  %i.ls = shufflevector <2 x double> %i.fq, <2 x double> %i.fa, <2 x i32> <i32 0, i32 3>
  %i.lt = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.kd, i64 0
  %i.lu = extractelement <2 x double> %i.bq, i64 0
  %i.lv = shufflevector <2 x double> %i.bk, <2 x double> %i.bq, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.lw = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.lx = extractelement <2 x double> %i.fq, i64 1
  %i.ly = insertelement <2 x double> %i.lo, double %i.cq, i64 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f
  %i.lz = icmp sgt i32 %.1, 1
  %or.cond = select i1 %5, i1 %i.lz, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %._crit_edge
  %wide.trip.count542 = zext nneg i32 %.1 to i64
  br label %.preheader

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.0234531 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ] ; 3 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !8 ; 7 uses
  %i.mc = call noundef double @llvm.fabs.f64(double %i.mb)
  %i.md = fcmp ogt double %i.mc, 1.000000e+00
  br i1 %i.md, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.me = fneg double %i.mb
  %i.mf = insertelement <2 x double> %i.lw, double %i.me, i64 0
  %i.mg = insertelement <2 x double> poison, double %i.mb, i64 0
  %i.mh = shufflevector <2 x double> %i.mg, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.mi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mf, <2 x double> %i.mh, <2 x double> %i.lp) ; 2 uses
  %i.mj = extractelement <2 x double> %i.mi, i64 0
  %i.mk = call double @sqrt(double noundef %i.mj) #17 ; 2 uses
  %i.ml = fneg double %i.mk
  %i.mm = select i1 %i.kw, double %i.mk, double %i.ml ; 6 uses
  %i.mn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lr, <2 x double> %i.mh, <2 x double> %i.ls) ; 2 uses
  %i.mo = extractelement <2 x double> %i.mn, i64 1
  %i.mp = call double @llvm.fmuladd.f64(double %i.mo, double %i.mb, double %i.lx)
  %i.mq = fdiv double %i.mm, %i.mp                ; 2 uses
  %i.mr = extractelement <2 x double> %i.mi, i64 1
  %i.ms = fmul double %i.mr, %i.mq                ; 4 uses
  %i.mt = extractelement <2 x double> %i.mn, i64 0
  %i.mu = fmul double %i.mt, %i.mq                ; 3 uses
  %i.mv = fmul double %i.mm, %i.mu                ; 2 uses
  %i.mw = fmul double %i.mm, %i.ms                ; 2 uses
  %i.mx = fmul double %i.mb, %i.mu                ; 2 uses
  %i.my = fneg double %i.mm                       ; 2 uses
  %i.mz = fmul <2 x double> %i.ee, %i.mh
  %i.na = fmul double %i.ef, %i.mv
  %i.nb = fmul double %i.ef, %i.mb
  %i.nc = call double @llvm.fmuladd.f64(double %i.lu, double %i.ms, double %i.na)
  %i.nd = insertelement <2 x double> %i.cu, double %i.mx, i64 0
  %i.ne = insertelement <2 x double> poison, double %i.nc, i64 0
  %i.nf = insertelement <2 x double> %i.ne, double %i.nb, i64 1
  %i.ng = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lt, <2 x double> %i.nd, <2 x double> %i.nf) ; 2 uses
  %i.nh = extractelement <2 x double> %i.ng, i64 1
  %i.ni = fmul double %i.ef, %i.mw
  %i.nj = fneg double %i.mu
  %i.nk = fmul double %i.mb, %i.ms                ; 2 uses
  %i.nl = call double @llvm.fmuladd.f64(double %i.kd, double %i.my, double %i.nh) ; 2 uses
  %i.nm = insertelement <2 x double> poison, double %i.nj, i64 0 ; 2 uses
  %i.nn = insertelement <2 x double> %i.nm, double %i.nl, i64 1
  %i.no = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.ni, i64 0
  %i.np = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.nn, <2 x double> %i.no)
  %i.nq = shufflevector <2 x double> %i.ng, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nr = insertelement <2 x double> %i.nq, double %i.kd, i64 0
  %i.ns = insertelement <2 x double> %i.y, double %i.nk, i64 0
  %i.nt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nr, <2 x double> %i.ns, <2 x double> %i.np) ; 3 uses
  %i.nu = fmul double %i.kl, %i.mm
  %i.nv = sext i32 %.0234531 to i64               ; 3 uses
  %i.nw = getelementptr inbounds [24 x i8], ptr %4, i64 %i.nv ; 4 uses
  %i.nx = insertelement <2 x double> poison, double %i.nl, i64 0
  %i.ny = shufflevector <2 x double> %i.nx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nz = fmul <2 x double> %i.bk, %i.ny
  %i.oa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nq, <2 x double> %i.bt, <2 x double> %i.nz)
  %i.ob = shufflevector <2 x double> %i.nt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ob, <2 x double> %i.ly, <2 x double> %i.oa) ; 5 uses
  %i.od = insertelement <2 x double> poison, double %i.mm, i64 0 ; 2 uses
  %i.oe = shufflevector <2 x double> %i.od, <2 x double> poison, <2 x i32> zeroinitializer
  %i.of = fmul <2 x double> %i.kj, %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %i.nw, i64 16 ; 2 uses
  %i.oh = getelementptr inbounds [72 x i8], ptr %3, i64 %i.nv ; 7 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.ok = insertelement <2 x double> poison, double %i.mv, i64 0
  %i.ol = shufflevector <2 x double> %i.ok, <2 x double> poison, <2 x i32> zeroinitializer
  %i.om = fmul <2 x double> %i.ee, %i.ol
  %i.on = insertelement <2 x double> poison, double %i.ms, i64 0
  %i.oo = shufflevector <2 x double> %i.on, <2 x double> poison, <2 x i32> zeroinitializer
  %i.op = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.oo, <2 x double> %i.om)
  %i.oq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> zeroinitializer, <2 x double> %i.mz)
  %i.or = insertelement <2 x double> %i.od, double %i.my, i64 1
  %i.os = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jz, <2 x double> %i.or, <2 x double> %i.oq) ; 3 uses
  %i.ot = insertelement <2 x double> poison, double %i.mw, i64 0
  %i.ou = shufflevector <2 x double> %i.ot, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ov = fmul <2 x double> %i.ee, %i.ou
  %i.ow = fmul <2 x double> %i.bu, %i.os
  %i.ox = shufflevector <2 x double> %i.os, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oy = fmul <2 x double> %i.lv, %i.ox
  %i.oz = shufflevector <2 x double> %i.os, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pa = fmul <2 x double> %i.lv, %i.oz
  %i.pb = insertelement <2 x double> poison, double %i.mx, i64 0
  %i.pc = shufflevector <2 x double> %i.pb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lk, <2 x double> %i.pc, <2 x double> %i.op) ; 3 uses
  %i.pe = shufflevector <2 x double> %i.nm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.pe, <2 x double> %i.ov)
  %i.pg = insertelement <2 x double> poison, double %i.nk, i64 0
  %i.ph = shufflevector <2 x double> %i.pg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lk, <2 x double> %i.ph, <2 x double> %i.pf) ; 3 uses
  %i.pj = shufflevector <2 x double> %i.pd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pj, <2 x double> %i.kz, <2 x double> %i.oy)
  %i.pl = shufflevector <2 x double> %i.pi, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pl, <2 x double> %i.lo, <2 x double> %i.pk) ; 5 uses
  %i.pn = extractelement <2 x double> %i.pm, i64 0
  %i.po = shufflevector <2 x double> %i.pd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.po, <2 x double> %i.kz, <2 x double> %i.pa)
  %i.pq = shufflevector <2 x double> %i.pi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pq, <2 x double> %i.lo, <2 x double> %i.pp) ; 4 uses
  %i.ps = extractelement <2 x double> %i.pr, i64 0
  %i.pt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pd, <2 x double> %i.li, <2 x double> %i.ow)
  %i.pu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pi, <2 x double> %i.lh, <2 x double> %i.pt) ; 5 uses
  %i.pv = shufflevector <2 x double> %i.pr, <2 x double> %i.pu, <2 x i32> <i32 0, i32 2>
  %i.pw = fmul <2 x double> %i.ln, %i.pv
  %i.px = shufflevector <2 x double> %i.pm, <2 x double> %i.pu, <2 x i32> <i32 0, i32 3>
  %i.py = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lm, <2 x double> %i.px, <2 x double> %i.pw)
  %i.pz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lf, <2 x double> %i.oc, <2 x double> %i.py)
  %i.qa = extractelement <2 x double> %i.pr, i64 1 ; 2 uses
  %i.qb = fmul double %i.i, %i.qa
  %i.qc = insertelement <2 x double> %i.nt, double %i.g, i64 1
  %i.qd = shufflevector <2 x double> %i.bw, <2 x double> %i.pm, <2 x i32> <i32 0, i32 3>
  %i.qe = shufflevector <2 x double> %i.nt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.qf = insertelement <2 x double> %i.qe, double %i.qb, i64 1
  %i.qg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qc, <2 x double> %i.qd, <2 x double> %i.qf) ; 3 uses
  %i.qh = extractelement <2 x double> %i.qg, i64 0 ; 2 uses
  %i.qi = extractelement <2 x double> %i.qg, i64 1
  %i.qj = call double @llvm.fmuladd.f64(double %i.k, double %i.qh, double %i.qi)
  %i.qk = fsub <2 x double> %i.of, %i.pz
  store <2 x double> %i.qk, ptr %i.nw, align 8, !tbaa !8
  %i.ql = fsub double %i.nu, %i.qj
  store double %i.ql, ptr %i.og, align 8, !tbaa !8
  store double %i.pn, ptr %i.oh, align 8, !tbaa !8
  store double %i.ps, ptr %i.oj, align 8, !tbaa !8
  %i.qm = shufflevector <2 x double> %i.pu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.qm, ptr %i.oi, align 8, !tbaa !8
  %i.qn = getelementptr inbounds nuw i8, ptr %i.oh, i64 56
  store double %i.qa, ptr %i.qn, align 8, !tbaa !8
  %i.qo = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.qp = extractelement <2 x double> %i.oc, i64 0
  store double %i.qp, ptr %i.qo, align 8, !tbaa !8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.oh, i64 40
  %i.qr = shufflevector <2 x double> %i.oc, <2 x double> %i.pm, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.qr, ptr %i.qq, align 8, !tbaa !8
  %i.qs = getelementptr inbounds nuw i8, ptr %i.oh, i64 64
  store double %i.qh, ptr %i.qs, align 8, !tbaa !8
  br i1 %5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.qt = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.qu = fmul <2 x double> %i.ld, %i.pr
  %6 = load double, ptr %i.nw, align 8, !tbaa !8
  %i.qv = extractelement <2 x double> %i.pu, i64 0
  %i.qw = fmul double %i.kp, %i.qv
  %i.qx = extractelement <2 x double> %i.pu, i64 1
  %i.qy = call double @llvm.fmuladd.f64(double %i.qx, double %i.kn, double %i.qw)
  %i.qz = extractelement <2 x double> %i.oc, i64 1
  %i.ra = call double @llvm.fmuladd.f64(double %i.qz, double %i.kr, double %i.qy)
  %i.rb = load double, ptr %i.qt, align 8, !tbaa !8
  %i.rc = fadd double %i.ra, %i.rb
  %i.rd = load double, ptr %i.og, align 8, !tbaa !8
  %i.re = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pm, <2 x double> %i.lb, <2 x double> %i.qu)
  %i.rf = shufflevector <2 x double> %i.oc, <2 x double> %i.qg, <2 x i32> <i32 0, i32 2>
  %i.rg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rf, <2 x double> %i.ky, <2 x double> %i.re)
  %7 = insertelement <2 x double> poison, double %6, i64 0
  %i.rh = insertelement <2 x double> %7, double %i.rd, i64 1
  %i.ri = fadd <2 x double> %i.rg, %i.rh          ; 2 uses
  %i.rj = insertelement <2 x double> %i.ri, double %i.rc, i64 1
  %i.rk = shufflevector <2 x double> %i.ri, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rl = fdiv <2 x double> %i.rj, %i.rk          ; 2 uses
  %i.rm = extractelement <2 x double> %i.rl, i64 0
  %i.rn = fsub double %i.rm, %i.kt                ; 2 uses
  %i.ro = extractelement <2 x double> %i.rl, i64 1
  %i.rp = fsub double %i.ro, %i.kv                ; 2 uses
  %i.rq = fmul double %i.rp, %i.rp
  %i.rr = call double @llvm.fmuladd.f64(double %i.rn, double %i.rn, double %i.rq)
  %i.rs = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.nv
  store double %i.rr, ptr %i.rs, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.rt = add nsw i32 %.0234531, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.1 = phi i32 [ %i.rt, %bb.e ], [ %.0234531, %bb.b ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !35

.preheader:                                       ; preds = %.preheader.preheader, %.critedge
  %indvars.iv536 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next537, %.critedge ] ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv536
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.h
  %indvars.iv538 = phi i64 [ %indvars.iv536, %.preheader ], [ %indvars.iv.next539, %bb.h ] ; 5 uses
  %indvars.iv.next539 = add nsw i64 %indvars.iv538, -1 ; 4 uses
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next539 ; 2 uses
  %i.rv = load double, ptr %i.ru, align 8, !tbaa !8 ; 2 uses
  %i.rw = fcmp ogt double %i.rv, %.pre
  br i1 %i.rw, label %bb.h, label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.g
  %indvars.iv.next537 = add nuw nsw i64 %indvars.iv536, 1 ; 2 uses
  %exitcond543.not = icmp eq i64 %indvars.iv.next537, %wide.trip.count542
  br i1 %exitcond543.not, label %.loopexit, label %.preheader, !llvm.loop !36

bb.h:                                             ; preds = %bb.g
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv538
  store double %i.rv, ptr %i.rx, align 8, !tbaa !8
  store double %.pre, ptr %i.ru, align 8, !tbaa !8
  %i.ry = getelementptr inbounds nuw [72 x i8], ptr %3, i64 %indvars.iv538 ; 6 uses
  %i.rz = getelementptr inbounds nuw [72 x i8], ptr %3, i64 %indvars.iv.next539 ; 6 uses
  %i.sa = load <2 x double>, ptr %i.ry, align 8, !tbaa !8
  %i.sb = load <2 x double>, ptr %i.rz, align 8, !tbaa !8
  store <2 x double> %i.sb, ptr %i.ry, align 8, !tbaa !8
  store <2 x double> %i.sa, ptr %i.rz, align 8, !tbaa !8
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ry, i64 16 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rz, i64 16 ; 2 uses
  %i.se = load <2 x double>, ptr %i.sc, align 8, !tbaa !8
  %i.sf = load <2 x double>, ptr %i.sd, align 8, !tbaa !8
  store <2 x double> %i.sf, ptr %i.sc, align 8, !tbaa !8
  store <2 x double> %i.se, ptr %i.sd, align 8, !tbaa !8
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ry, i64 32 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rz, i64 32 ; 2 uses
  %i.si = load <2 x double>, ptr %i.sg, align 8, !tbaa !8
  %i.sj = load <2 x double>, ptr %i.sh, align 8, !tbaa !8
  store <2 x double> %i.sj, ptr %i.sg, align 8, !tbaa !8
  store <2 x double> %i.si, ptr %i.sh, align 8, !tbaa !8
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ry, i64 48 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rz, i64 48 ; 2 uses
  %i.sm = load <2 x double>, ptr %i.sk, align 8, !tbaa !8
  %i.sn = load <2 x double>, ptr %i.sl, align 8, !tbaa !8
  store <2 x double> %i.sn, ptr %i.sk, align 8, !tbaa !8
  store <2 x double> %i.sm, ptr %i.sl, align 8, !tbaa !8
  %i.so = getelementptr inbounds nuw i8, ptr %i.ry, i64 64 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rz, i64 64 ; 2 uses
  %i.sq = load double, ptr %i.so, align 8, !tbaa !8
  %i.sr = load double, ptr %i.sp, align 8, !tbaa !8
  store double %i.sr, ptr %i.so, align 8, !tbaa !8
  store double %i.sq, ptr %i.sp, align 8, !tbaa !8
  %i.ss = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv538 ; 3 uses
  %i.st = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next539 ; 3 uses
  %i.su = load <2 x double>, ptr %i.ss, align 8, !tbaa !8
  %i.sv = load <2 x double>, ptr %i.st, align 8, !tbaa !8
  store <2 x double> %i.sv, ptr %i.ss, align 8, !tbaa !8
  store <2 x double> %i.su, ptr %i.st, align 8, !tbaa !8
  %i.sw = getelementptr inbounds nuw i8, ptr %i.ss, i64 16 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.st, i64 16 ; 2 uses
  %i.sy = load double, ptr %i.sw, align 8, !tbaa !8
  %i.sz = load double, ptr %i.sx, align 8, !tbaa !8
  store double %i.sz, ptr %i.sw, align 8, !tbaa !8
  store double %i.sy, ptr %i.sx, align 8, !tbaa !8
  %i.ta = icmp sgt i64 %indvars.iv538, 1
  br i1 %i.ta, label %bb.g, label %.critedge, !llvm.loop !37

.loopexit:                                        ; preds = %.critedge, %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit, %._crit_edge
  %.0234.lcssa548 = phi i32 [ 0, %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit ], [ %.1, %._crit_edge ], [ %.1, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0234.lcssa548
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

declare noundef i32 @_ZN2cv10solve_deg4EdddddRdS0_S0_S0_(double noundef, double noundef, double noundef, double noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv4ap3p5solveERNS_3MatES2_RKS1_S4_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %i.a = alloca [3 x [3 x double]], align 16      ; 6 uses
  %i.b = alloca [3 x double], align 16            ; 6 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv4ap3p5solveERNS_3MatES2_RKS1_S4_E25__cv_trace_location_fn276)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.c = load i32, ptr %3, align 8, !tbaa !10
  %i.d = and i32 %i.c, 31                         ; 2 uses
  %i.e = load i32, ptr %4, align 8, !tbaa !10
  %i.f = and i32 %i.e, 31
  %i.g = icmp eq i32 %i.d, %i.f
  %i.h = icmp eq i32 %i.d, 5                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv4ap3p14extract_pointsINS_7Point3_IfEENS_6Point_IfEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.e:                                             ; preds = %bb.b
  invoke void @_ZN2cv4ap3p14extract_pointsINS_7Point3_IdEENS_6Point_IdEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv4ap3p14extract_pointsINS_7Point3_IfEENS_6Point_IdEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %bb.d

bb.h:                                             ; preds = %bb.f
  invoke void @_ZN2cv4ap3p14extract_pointsINS_7Point3_IdEENS_6Point_IfEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.c, %bb.e
  %i.j = load ptr, ptr %6, align 8, !tbaa !38     ; 20 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.s = load double, ptr %i.r, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.u = load double, ptr %i.t, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.w = load double, ptr %i.v, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.y = load double, ptr %i.x, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.aa = load double, ptr %i.z, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.ag = load double, ptr %i.af, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.am = load double, ptr %i.al, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.ao = load double, ptr %i.an, align 8, !tbaa !8
end_hunk_0
