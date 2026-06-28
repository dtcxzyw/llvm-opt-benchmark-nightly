inline.NumInlined: 921
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_:bb.a
  %i.od = call float @llvm.fmuladd.f32(float %i.nh, float %i.mk, float %i.oc)
  %i.oe = call float @llvm.fmuladd.f32(float %i.ni, float %i.nr, float %i.od)
  %i.of = call float @llvm.fmuladd.f32(float %i.nl, float %i.np, float %i.oe) ; 10 uses
  %i.og = fmul float %i.nw, 0.000000e+00
  %i.oh = fadd float %i.of, %i.og
  %i.oi = fneg float %i.oa                        ; 4 uses
  %i.oj = call float @llvm.fmuladd.f32(float %i.oi, float 0.000000e+00, float %i.oh) ; 3 uses
  %i.ok = call float @llvm.fmuladd.f32(float %i.of, float 0.000000e+00, float %i.oa)
  %i.ol = fneg float %i.ns                        ; 3 uses
  %i.om = call float @llvm.fmuladd.f32(float %i.ol, float 0.000000e+00, float %i.ok) ; 3 uses
  %i.on = fmul float %i.ns, 0.000000e+00
  %i.oo = call float @llvm.fmuladd.f32(float %i.of, float 0.000000e+00, float %i.on)
  %i.op = fneg float %i.nw                        ; 2 uses
  %i.oq = fsub float %i.oo, %i.nw                 ; 3 uses
  %i.or = fmul float %i.nw, -0.000000e+00
  %i.os = fsub float %i.or, %i.ns
  %i.ot = call float @llvm.fmuladd.f32(float %i.oi, float 0.000000e+00, float %i.os) ; 3 uses
  %i.ou = fmul float %i.of, %i.oj
  %i.ov = call float @llvm.fmuladd.f32(float %i.ot, float %i.ol, float %i.ou)
  %i.ow = call float @llvm.fmuladd.f32(float %i.om, float %i.oi, float %i.ov)
  %i.ox = call float @llvm.fmuladd.f32(float %i.oq, float %i.nw, float %i.ow) ; 3 uses
  %i.oy = fmul float %i.of, %i.om
  %i.oz = call float @llvm.fmuladd.f32(float %i.ot, float %i.op, float %i.oy)
  %i.pa = call float @llvm.fmuladd.f32(float %i.oq, float %i.ol, float %i.oz)
  %i.pb = call float @llvm.fmuladd.f32(float %i.oj, float %i.oa, float %i.pa) ; 3 uses
  %i.pc = fmul float %i.of, %i.oq
  %i.pd = call float @llvm.fmuladd.f32(float %i.ot, float %i.oi, float %i.pc)
  %i.pe = call float @llvm.fmuladd.f32(float %i.oj, float %i.op, float %i.pd)
  %i.pf = call float @llvm.fmuladd.f32(float %i.om, float %i.ns, float %i.pe) ; 3 uses
  %i.pg = fmul float %i.pb, %i.pb
  %i.ph = call float @llvm.fmuladd.f32(float %i.ox, float %i.ox, float %i.pg)
  %i.pi = call noundef float @llvm.fmuladd.f32(float %i.pf, float %i.pf, float %i.ph)
  %sqrt.i.i151 = call noundef float @llvm.sqrt.f32(float %i.pi)
  %i.pj = fdiv float 1.000000e+00, %sqrt.i.i151   ; 3 uses
  %i.pk = fmul float %i.ox, %i.pj                 ; 3 uses
  %i.pl = fmul float %i.pb, %i.pj                 ; 3 uses
  %i.pm = fmul float %i.pf, %i.pj                 ; 3 uses
  %i.pn = fmul float %i.pl, 0.000000e+00
  %i.po = fadd float %i.pk, %i.pn
  %i.pp = call noundef float @llvm.fmuladd.f32(float %i.pm, float 0.000000e+00, float %i.po) ; 2 uses
  %i.pq = fcmp olt float %i.pp, f0xBF7FFFFE
  br i1 %i.pq, label %_Z15shortestArcQuatRK9btVector3S1_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.pr = fmul float %i.pk, -0.000000e+00
  %i.ps = fadd float %i.pl, %i.pr
  %i.pt = fneg float %i.pm
  %i.pu = call float @llvm.fmuladd.f32(float %i.pk, float 0.000000e+00, float %i.pt)
  %i.pv = fmul float %i.pl, -0.000000e+00
  %i.pw = call float @llvm.fmuladd.f32(float %i.pm, float 0.000000e+00, float %i.pv)
  %i.px = fadd float %i.pp, 1.000000e+00
  %i.py = fmul float %i.px, 2.000000e+00
  %i.pz = call noundef float @sqrtf(float noundef %i.py) #18, !tbaa !4 ; 2 uses
  %i.qa = fdiv float 1.000000e+00, %i.pz          ; 3 uses
  %i.qb = fmul float %i.pw, %i.qa
  %i.qc = fmul float %i.pu, %i.qa
  %i.qd = fmul float %i.ps, %i.qa
  %i.qe = fmul float %i.pz, 5.000000e-01
  %.sroa.020.0.vec.insert23.i = insertelement <2 x float> poison, float %i.qb, i64 0
  %.sroa.020.4.vec.insert25.i = insertelement <2 x float> %.sroa.020.0.vec.insert23.i, float %i.qc, i64 1
  %.sroa.526.8.vec.insert29.i = insertelement <2 x float> poison, float %i.qd, i64 0
  %.sroa.526.12.vec.insert31.i = insertelement <2 x float> %.sroa.526.8.vec.insert29.i, float %i.qe, i64 1
  br label %_Z15shortestArcQuatRK9btVector3S1_.exit

_Z15shortestArcQuatRK9btVector3S1_.exit:          ; preds = %bb.e, %bb.f
  %.sroa.020.0.i = phi <2 x float> [ %.sroa.020.4.vec.insert25.i, %bb.f ], [ <float -0.000000e+00, float 1.000000e+00>, %bb.e ] ; 2 uses
  %.sroa.526.0.i = phi <2 x float> [ %.sroa.526.12.vec.insert31.i, %bb.f ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.0387.0.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 0 ; 3 uses
  %.sroa.0387.4.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 1 ; 3 uses
  %i.qf = fmul float %.sroa.0387.4.vec.extract, %.sroa.0387.4.vec.extract
  %i.qg = call float @llvm.fmuladd.f32(float %.sroa.0387.0.vec.extract, float %.sroa.0387.0.vec.extract, float %i.qf)
  %.sroa.11.8.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 0 ; 3 uses
  %i.qh = call float @llvm.fmuladd.f32(float %.sroa.11.8.vec.extract, float %.sroa.11.8.vec.extract, float %i.qg)
  %.sroa.11.12.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 1 ; 3 uses
  %i.qi = call noundef float @llvm.fmuladd.f32(float %.sroa.11.12.vec.extract, float %.sroa.11.12.vec.extract, float %i.qh)
  %sqrt.i.i157 = call noundef float @llvm.sqrt.f32(float %i.qi)
  %i.qj = fdiv float 1.000000e+00, %sqrt.i.i157   ; 4 uses
  %i.qk = fmul float %.sroa.0387.0.vec.extract, %i.qj ; 6 uses
  %i.ql = fmul float %.sroa.0387.4.vec.extract, %i.qj ; 6 uses
  %i.qm = fmul float %.sroa.11.8.vec.extract, %i.qj ; 6 uses
  %i.qn = fmul float %.sroa.11.12.vec.extract, %i.qj ; 5 uses
  %i.qo = fneg float %i.qk                        ; 2 uses
  %i.qp = fneg float %i.ql                        ; 2 uses
  %i.qq = fneg float %i.qm                        ; 2 uses
  %i.qr = fmul float %i.of, %i.qo
  %i.qs = call float @llvm.fmuladd.f32(float %i.qn, float %i.ns, float %i.qr)
  %i.qt = call float @llvm.fmuladd.f32(float %i.qp, float %i.oa, float %i.qs)
  %i.qu = call float @llvm.fmuladd.f32(float %i.qm, float %i.nw, float %i.qt) ; 3 uses
  %i.qv = fmul float %i.of, %i.qp
  %i.qw = call float @llvm.fmuladd.f32(float %i.qn, float %i.nw, float %i.qv)
  %i.qx = call float @llvm.fmuladd.f32(float %i.qq, float %i.ns, float %i.qw)
  %i.qy = call float @llvm.fmuladd.f32(float %i.qk, float %i.oa, float %i.qx) ; 3 uses
  %i.qz = fmul float %i.of, %i.qq
  %i.ra = call float @llvm.fmuladd.f32(float %i.qn, float %i.oa, float %i.qz)
  %i.rb = call float @llvm.fmuladd.f32(float %i.qo, float %i.nw, float %i.ra)
  %i.rc = call float @llvm.fmuladd.f32(float %i.ql, float %i.ns, float %i.rb) ; 3 uses
  %i.rd = fmul float %i.ns, %i.qk
  %i.re = call float @llvm.fmuladd.f32(float %i.qn, float %i.of, float %i.rd)
  %i.rf = call float @llvm.fmuladd.f32(float %i.ql, float %i.nw, float %i.re)
  %i.rg = call float @llvm.fmuladd.f32(float %i.qm, float %i.oa, float %i.rf) ; 3 uses
  %i.rh = fmul float %i.qy, %i.qy
  %i.ri = call float @llvm.fmuladd.f32(float %i.qu, float %i.qu, float %i.rh)
  %i.rj = call float @llvm.fmuladd.f32(float %i.rc, float %i.rc, float %i.ri)
  %i.rk = call noundef float @llvm.fmuladd.f32(float %i.rg, float %i.rg, float %i.rj)
  %sqrt.i.i170 = call noundef float @llvm.sqrt.f32(float %i.rk)
  %i.rl = fdiv float 1.000000e+00, %sqrt.i.i170   ; 4 uses
  %i.rm = fmul float %i.qu, %i.rl                 ; 2 uses
  %i.rn = insertelement <2 x float> poison, float %i.rm, i64 0
  %i.ro = fmul float %i.qy, %i.rl                 ; 2 uses
  %.sroa.0371.4.vec.insert = insertelement <2 x float> %i.rn, float %i.ro, i64 1
  %i.rp = fmul float %i.rc, %i.rl                 ; 2 uses
  %i.rq = insertelement <2 x float> poison, float %i.rp, i64 0
  %i.rr = fmul float %i.rg, %i.rl                 ; 3 uses
  %.sroa.10379.12.vec.insert = insertelement <2 x float> %i.rq, float %i.rr, i64 1
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ru = load float, ptr %i.rt, align 8, !tbaa !41 ; 4 uses
  %i.rv = load <2 x float>, ptr %i.rs, align 4    ; 4 uses
  %i.rw = extractelement <2 x float> %i.rv, i64 1 ; 9 uses
  %i.rx = extractelement <2 x float> %i.rv, i64 0 ; 10 uses
  %i.ry = fcmp ult float %i.rx, %i.ru             ; 2 uses
  %i.rz = fcmp ult float %i.rw, %i.ru             ; 2 uses
  %or.cond64 = select i1 %i.ry, i1 true, i1 %i.rz
  br i1 %or.cond64, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_Z15shortestArcQuatRK9btVector3S1_.exit
  %i.sa = call noundef float @acosf(float noundef %i.qn) #18, !tbaa !4
  %i.sb = fmul float %i.sa, 2.000000e+00          ; 4 uses
  %i.sc = fcmp ogt float %i.sb, f0x34000000
  br i1 %i.sc, label %bb.h, label %_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit

bb.h:                                             ; preds = %bb.g
  %i.sd = fmul float %i.ql, %i.ql
  %i.se = call float @llvm.fmuladd.f32(float %i.qk, float %i.qk, float %i.sd)
  %i.sf = call noundef float @llvm.fmuladd.f32(float %i.qm, float %i.qm, float %i.se)
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.sf)
  %i.sg = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 3 uses
  %i.sh = fmul float %i.qk, %i.sg                 ; 2 uses
  %i.si = fmul float %i.ql, %i.sg                 ; 5 uses
  %i.sj = fmul float %i.qm, %i.sg                 ; 4 uses
  %i.sk = call noundef float @llvm.fabs.f32(float %i.si)
  %i.sl = fcmp ogt float %i.sk, f0x34000000
  br i1 %i.sl, label %bb.i, label %_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit

bb.i:                                             ; preds = %bb.h
  %i.sm = fmul float %i.sj, %i.sj
  %i.sn = fmul nnan float %i.si, %i.si
  %i.so = fdiv float %i.sm, %i.sn                 ; 2 uses
  %i.sp = fmul <2 x float> %i.rv, %i.rv
  %i.sq = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.so, i64 0
  %i.sr = fdiv <2 x float> %i.sq, %i.sp           ; 2 uses
  %shift = shufflevector <2 x float> %i.sr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop568 = fadd <2 x float> %shift, %i.sr
  %i.ss = extractelement <2 x float> %foldExtExtBinop568, i64 0
  %i.st = fadd float %i.so, 1.000000e+00
  %i.su = fdiv float %i.st, %i.ss
  %sqrt.i = call float @llvm.sqrt.f32(float %i.su)
  br label %_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit

_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.0356.0 = phi float [ %i.sh, %bb.i ], [ %i.sh, %bb.h ], [ undef, %bb.g ] ; 4 uses
  %.sroa.6358.0 = phi float [ %i.si, %bb.i ], [ %i.si, %bb.h ], [ undef, %bb.g ] ; 7 uses
  %.sroa.10360.0 = phi float [ %i.sj, %bb.i ], [ %i.sj, %bb.h ], [ undef, %bb.g ] ; 3 uses
  %.0 = phi float [ %sqrt.i, %bb.i ], [ %i.rx, %bb.h ], [ 0.000000e+00, %bb.g ] ; 4 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !58 ; 4 uses
  %i.sx = fmul float %.0, %i.sw
  %i.sy = fcmp ogt float %i.sb, %i.sx
  br i1 %i.sy, label %._crit_edge, label %bb.ab

._crit_edge:                                      ; preds = %_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit
  store i8 1, ptr %i.d, align 2, !tbaa !30
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ta = fcmp olt float %i.sb, %.0
  %i.tb = fcmp olt float %i.sw, f0x3F7FFFFE
  %or.cond541 = and i1 %i.ta, %i.tb
  %i.tc = fneg float %.0                          ; 2 uses
  %i.td = call float @llvm.fmuladd.f32(float %i.tc, float %i.sw, float %i.sb) ; 2 uses
  %i.te = call float @llvm.fmuladd.f32(float %i.tc, float %i.sw, float %.0)
  %i.tf = fdiv float %i.td, %i.te
  %storemerge = select i1 %or.cond541, float %i.tf, float 1.000000e+00
  store float %storemerge, ptr %i.sz, align 8, !tbaa !59
  store float %i.td, ptr %i.a, align 8, !tbaa !57
  %i.tg = call noundef float @llvm.fabs.f32(float %.sroa.6358.0)
  %i.th = fcmp ogt float %i.tg, f0x34000000
  br i1 %i.th, label %bb.j, label %_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3.exit

bb.j:                                             ; preds = %._crit_edge
  %i.ti = fneg float %.sroa.10360.0
  %i.tj = fdiv float %i.ti, %.sroa.6358.0
  %i.tk = fdiv float %i.rw, %i.rx
  %i.tl = fmul float %i.tk, %i.tj
  %i.tm = fcmp olt float %.sroa.10360.0, 0.000000e+00
  %i.tn = fmul float %.sroa.6358.0, %i.tl
  %i.to = call noundef float @llvm.fabs.f32(float %i.tn) ; 2 uses
  %i.tp = fneg float %i.to
  %.0.i = select i1 %i.tm, float %i.to, float %i.tp ; 3 uses
  %i.tq = fneg float %.0.i
  %i.tr = fmul nnan float %.sroa.6358.0, %.sroa.6358.0
  %i.ts = call float @llvm.fmuladd.f32(float %.sroa.0356.0, float %.sroa.0356.0, float %i.tr)
  %i.tt = call noundef float @llvm.fmuladd.f32(float %.0.i, float %.0.i, float %i.ts)
  %sqrt.i.i.i174 = call noundef float @llvm.sqrt.f32(float %i.tt)
  %i.tu = fdiv float 1.000000e+00, %sqrt.i.i.i174 ; 3 uses
  %i.tv = fmul float %.sroa.0356.0, %i.tu
  %i.tw = fmul float %.sroa.6358.0, %i.tu
  %i.tx = fmul float %i.tu, %i.tq
  br label %_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3.exit

_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3.exit: ; preds = %._crit_edge, %bb.j
  %.sroa.0356.1 = phi float [ %i.tv, %bb.j ], [ %.sroa.0356.0, %._crit_edge ] ; 3 uses
  %.sroa.6358.1 = phi float [ %i.tw, %bb.j ], [ %.sroa.6358.0, %._crit_edge ] ; 3 uses
  %.sroa.10360.1 = phi float [ %i.tx, %bb.j ], [ %.sroa.10360.0, %._crit_edge ] ; 3 uses
  %i.ty = fneg float %.sroa.0356.1                ; 2 uses
  %i.tz = fneg float %.sroa.6358.1                ; 2 uses
  %i.ua = fneg float %.sroa.10360.1               ; 2 uses
  %i.ub = fmul float %i.ni, %i.ua
  %i.uc = call float @llvm.fmuladd.f32(float %i.nh, float %i.ty, float %i.ub)
  %i.ud = call float @llvm.fmuladd.f32(float %i.nl, float %.sroa.6358.1, float %i.uc) ; 3 uses
  %i.ue = fmul float %i.nl, %i.ty
  %i.uf = call float @llvm.fmuladd.f32(float %i.nh, float %i.tz, float %i.ue)
  %i.ug = call float @llvm.fmuladd.f32(float %i.nf, float %.sroa.10360.1, float %i.uf) ; 3 uses
  %i.uh = fmul float %i.nf, %i.tz
  %i.ui = call float @llvm.fmuladd.f32(float %i.nh, float %i.ua, float %i.uh)
  %i.uj = call float @llvm.fmuladd.f32(float %i.ni, float %.sroa.0356.1, float %i.ui) ; 3 uses
  %i.uk = fmul float %i.ni, %.sroa.6358.1
  %i.ul = call float @llvm.fmuladd.f32(float %i.nf, float %.sroa.0356.1, float %i.uk)
  %i.um = call float @llvm.fmuladd.f32(float %i.nl, float %.sroa.10360.1, float %i.ul) ; 3 uses
  %i.un = fmul float %i.nh, %i.ud
  %i.uo = call float @llvm.fmuladd.f32(float %i.um, float %i.nk, float %i.un)
  %i.up = call float @llvm.fmuladd.f32(float %i.ug, float %i.nm, float %i.uo)
  %i.uq = call float @llvm.fmuladd.f32(float %i.uj, float %i.ni, float %i.up) ; 9 uses
  %i.ur = fmul float %i.nh, %i.ug
  %i.us = call float @llvm.fmuladd.f32(float %i.um, float %i.nj, float %i.ur)
  %i.ut = call float @llvm.fmuladd.f32(float %i.uj, float %i.nk, float %i.us)
  %i.uu = call float @llvm.fmuladd.f32(float %i.ud, float %i.nl, float %i.ut) ; 9 uses
  %i.uv = fmul float %i.nh, %i.uj
  %i.uw = call float @llvm.fmuladd.f32(float %i.um, float %i.nm, float %i.uv)
  %i.ux = call float @llvm.fmuladd.f32(float %i.ud, float %i.nj, float %i.uw)
  %i.uy = call float @llvm.fmuladd.f32(float %i.ug, float %i.nf, float %i.ux) ; 9 uses
  %.sroa.020.0.vec.insert.i180 = insertelement <2 x float> poison, float %i.uq, i64 0
  %.sroa.020.4.vec.insert.i181 = insertelement <2 x float> %.sroa.020.0.vec.insert.i180, float %i.uu, i64 1
  %.sroa.3.12.vec.insert.i182 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.uy, i64 0
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 508
  store <2 x float> %.sroa.020.4.vec.insert.i181, ptr %i.uz, align 4
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 516
  store <2 x float> %.sroa.3.12.vec.insert.i182, ptr %.sroa.428.0..sroa_idx, align 4, !tbaa !24
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 584
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.va, i8 0, i64 16, i1 false)
  %i.vb = load float, ptr %3, align 4, !tbaa !27
  %i.vc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !27
  %i.ve = fmul float %i.vd, %i.uu
  %i.vf = call float @llvm.fmuladd.f32(float %i.vb, float %i.uq, float %i.ve)
  %i.vg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !27
  %i.vi = call noundef float @llvm.fmuladd.f32(float %i.vh, float %i.uy, float %i.vf)
  %i.vj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !27
  %i.vl = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !27
  %i.vn = fmul float %i.uu, %i.vm
  %i.vo = call float @llvm.fmuladd.f32(float %i.vk, float %i.uq, float %i.vn)
  %i.vp = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.vq = load float, ptr %i.vp, align 4, !tbaa !27
  %i.vr = call noundef float @llvm.fmuladd.f32(float %i.vq, float %i.uy, float %i.vo)
  %i.vs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !27
  %i.vu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !27
  %i.vw = fmul float %i.uu, %i.vv
  %i.vx = call float @llvm.fmuladd.f32(float %i.vt, float %i.uq, float %i.vw)
  %i.vy = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !27
  %i.wa = call noundef float @llvm.fmuladd.f32(float %i.vz, float %i.uy, float %i.vx)
  %i.wb = fmul float %i.uu, %i.vr
  %i.wc = call float @llvm.fmuladd.f32(float %i.uq, float %i.vi, float %i.wb)
  %i.wd = call noundef float @llvm.fmuladd.f32(float %i.uy, float %i.wa, float %i.wc)
  %i.we = load float, ptr %4, align 4, !tbaa !27
  %i.wf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !27
  %i.wh = fmul float %i.uu, %i.wg
  %i.wi = call float @llvm.fmuladd.f32(float %i.we, float %i.uq, float %i.wh)
  %i.wj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !27
  %i.wl = call noundef float @llvm.fmuladd.f32(float %i.wk, float %i.uy, float %i.wi)
  %i.wm = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !27
  %i.wo = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !27
  %i.wq = fmul float %i.uu, %i.wp
  %i.wr = call float @llvm.fmuladd.f32(float %i.wn, float %i.uq, float %i.wq)
  %i.ws = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !27
  %i.wu = call noundef float @llvm.fmuladd.f32(float %i.wt, float %i.uy, float %i.wr)
  %i.wv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !27
  %i.wx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.wy = load float, ptr %i.wx, align 4, !tbaa !27
  %i.wz = fmul float %i.uu, %i.wy
  %i.xa = call float @llvm.fmuladd.f32(float %i.ww, float %i.uq, float %i.wz)
  %i.xb = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.xc = load float, ptr %i.xb, align 4, !tbaa !27
  %i.xd = call noundef float @llvm.fmuladd.f32(float %i.xc, float %i.uy, float %i.xa)
  %i.xe = fmul float %i.uu, %i.wu
  %i.xf = call float @llvm.fmuladd.f32(float %i.uq, float %i.wl, float %i.xe)
  %i.xg = call noundef float @llvm.fmuladd.f32(float %i.uy, float %i.xd, float %i.xf)
  %i.xh = fadd float %i.wd, %i.xg
  %i.xi = fdiv float 1.000000e+00, %i.xh
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 540
  store float %i.xi, ptr %i.xj, align 4, !tbaa !60
  br label %bb.ab

bb.k:                                             ; preds = %_Z15shortestArcQuatRK9btVector3S1_.exit
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.xm = load float, ptr %i.lo, align 4, !tbaa !27 ; 3 uses
  %i.xn = load float, ptr %i.xk, align 4, !tbaa !27 ; 3 uses
  %i.xo = load float, ptr %i.xl, align 4, !tbaa !27 ; 3 uses
  %i.xp = load float, ptr %1, align 4, !tbaa !27  ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !27 ; 3 uses
  %i.xs = fmul float %i.xn, %i.xr
  %i.xt = call float @llvm.fmuladd.f32(float %i.xp, float %i.xm, float %i.xs)
  %i.xu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !27 ; 3 uses
  %i.xw = call noundef float @llvm.fmuladd.f32(float %i.xv, float %i.xo, float %i.xt) ; 4 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !27 ; 3 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !27 ; 3 uses
  %i.yb = fmul float %i.xn, %i.ya
  %i.yc = call float @llvm.fmuladd.f32(float %i.xy, float %i.xm, float %i.yb)
  %i.yd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !27 ; 3 uses
  %i.yf = call noundef float @llvm.fmuladd.f32(float %i.ye, float %i.xo, float %i.yc) ; 4 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !27 ; 3 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !27 ; 3 uses
  %i.yk = fmul float %i.xn, %i.yj
  %i.yl = call float @llvm.fmuladd.f32(float %i.yh, float %i.xm, float %i.yk)
  %i.ym = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !27 ; 3 uses
  %i.yo = call noundef float @llvm.fmuladd.f32(float %i.yn, float %i.xo, float %i.yl) ; 4 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ys = load float, ptr %i.yp, align 8, !tbaa !27 ; 3 uses
  %i.yt = load float, ptr %i.yq, align 8, !tbaa !27 ; 3 uses
  %i.yu = load float, ptr %i.yr, align 8, !tbaa !27 ; 3 uses
  %i.yv = fmul float %i.xr, %i.yt
  %i.yw = call float @llvm.fmuladd.f32(float %i.xp, float %i.ys, float %i.yv)
  %i.yx = call noundef float @llvm.fmuladd.f32(float %i.xv, float %i.yu, float %i.yw) ; 2 uses
  %i.yy = fmul float %i.ya, %i.yt
  %i.yz = call float @llvm.fmuladd.f32(float %i.xy, float %i.ys, float %i.yy)
  %i.za = call noundef float @llvm.fmuladd.f32(float %i.ye, float %i.yu, float %i.yz) ; 2 uses
  %i.zb = fmul float %i.yj, %i.yt
  %i.zc = call float @llvm.fmuladd.f32(float %i.yh, float %i.ys, float %i.zb)
  %i.zd = call noundef float @llvm.fmuladd.f32(float %i.yn, float %i.yu, float %i.zc) ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.zh = load float, ptr %i.ze, align 4, !tbaa !27 ; 3 uses
  %i.zi = load float, ptr %i.zf, align 4, !tbaa !27 ; 3 uses
  %i.zj = load float, ptr %i.zg, align 4, !tbaa !27 ; 3 uses
  %i.zk = fmul float %i.xr, %i.zi
  %i.zl = call float @llvm.fmuladd.f32(float %i.xp, float %i.zh, float %i.zk)
  %i.zm = call noundef float @llvm.fmuladd.f32(float %i.xv, float %i.zj, float %i.zl) ; 2 uses
  %i.zn = fmul float %i.ya, %i.zi
  %i.zo = call float @llvm.fmuladd.f32(float %i.xy, float %i.zh, float %i.zn)
  %i.zp = call noundef float @llvm.fmuladd.f32(float %i.ye, float %i.zj, float %i.zo) ; 2 uses
  %i.zq = fmul float %i.yj, %i.zi
  %i.zr = call float @llvm.fmuladd.f32(float %i.yh, float %i.zh, float %i.zq)
  %i.zs = call noundef float @llvm.fmuladd.f32(float %i.yn, float %i.zj, float %i.zr) ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.zv = load float, ptr %i.ml, align 4, !tbaa !27 ; 3 uses
  %i.zw = load float, ptr %i.zt, align 4, !tbaa !27 ; 3 uses
  %i.zx = load float, ptr %i.zu, align 4, !tbaa !27 ; 3 uses
  %i.zy = load float, ptr %2, align 4, !tbaa !27
  %i.zz = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aaa = load float, ptr %i.zz, align 4, !tbaa !27
  %i.aab = fmul float %i.zw, %i.aaa
  %i.aac = call float @llvm.fmuladd.f32(float %i.zy, float %i.zv, float %i.aab)
  %i.aad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !27
  %i.aaf = call noundef float @llvm.fmuladd.f32(float %i.aae, float %i.zx, float %i.aac) ; 7 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !27
  %i.aai = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aaj = load float, ptr %i.aai, align 4, !tbaa !27
  %i.aak = fmul float %i.zw, %i.aaj
  %i.aal = call float @llvm.fmuladd.f32(float %i.aah, float %i.zv, float %i.aak)
  %i.aam = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aan = load float, ptr %i.aam, align 4, !tbaa !27
  %i.aao = call noundef float @llvm.fmuladd.f32(float %i.aan, float %i.zx, float %i.aal) ; 7 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !27
  %i.aar = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !27
  %i.aat = fmul float %i.zw, %i.aas
  %i.aau = call float @llvm.fmuladd.f32(float %i.aaq, float %i.zv, float %i.aat)
  %i.aav = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aaw = load float, ptr %i.aav, align 4, !tbaa !27
  %i.aax = call noundef float @llvm.fmuladd.f32(float %i.aaw, float %i.zx, float %i.aau) ; 7 uses
  %i.aay = fmul float %i.yf, %i.aao
  %i.aaz = call float @llvm.fmuladd.f32(float %i.aaf, float %i.xw, float %i.aay)
  %i.aba = call noundef float @llvm.fmuladd.f32(float %i.aax, float %i.yo, float %i.aaz) ; 8 uses
  %i.abb = fmul float %i.za, %i.aao
  %i.abc = call float @llvm.fmuladd.f32(float %i.aaf, float %i.yx, float %i.abb)
  %i.abd = call noundef float @llvm.fmuladd.f32(float %i.aax, float %i.zd, float %i.abc) ; 8 uses
  %i.abe = fmul float %i.zp, %i.aao
  %i.abf = call float @llvm.fmuladd.f32(float %i.aaf, float %i.zm, float %i.abe)
  %i.abg = call noundef float @llvm.fmuladd.f32(float %i.aax, float %i.zs, float %i.abf) ; 8 uses
  %i.abh = fcmp olt float %i.rx, %i.ru            ; 2 uses
  %i.abi = fcmp olt float %i.rw, %i.ru
  %or.cond67 = select i1 %i.abh, i1 %i.abi, i1 false
  br i1 %or.cond67, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.abj = call noundef float @llvm.fabs.f32(float %i.abd)
  %i.abk = fcmp olt float %i.abj, f0x34000000
  %i.abl = call float @llvm.fabs.f32(float %i.abg)
  %i.abm = fcmp olt float %i.abl, f0x34000000
  %or.cond543 = and i1 %i.abk, %i.abm
  br i1 %or.cond543, label %bb.ab, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.d, align 2, !tbaa !30
  %i.abn = fneg float %i.yf
  %i.abo = fmul float %i.aax, %i.abn
  %i.abp = call float @llvm.fmuladd.f32(float %i.aao, float %i.yo, float %i.abo)
  %i.abq = fneg float %i.yo
  %i.abr = fmul float %i.aaf, %i.abq
  %i.abs = call float @llvm.fmuladd.f32(float %i.aax, float %i.xw, float %i.abr)
  %i.abt = fneg float %i.xw
  %i.abu = fmul float %i.aao, %i.abt
  %i.abv = call float @llvm.fmuladd.f32(float %i.aaf, float %i.yf, float %i.abu)
  %i.abw = fneg float %i.abp
  %i.abx = fneg float %i.abs
  %i.aby = fneg float %i.abv
  %.sroa.0.0.vec.insert.i230 = insertelement <2 x float> poison, float %i.abw, i64 0
  %.sroa.0.4.vec.insert.i231 = insertelement <2 x float> %.sroa.0.0.vec.insert.i230, float %i.abx, i64 1
  %.sroa.3.12.vec.insert.i232 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aby, i64 0
  %i.abz = getelementptr inbounds nuw i8, ptr %0, i64 508
  store <2 x float> %.sroa.0.4.vec.insert.i231, ptr %i.abz, align 4
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 516
  store <2 x float> %.sroa.3.12.vec.insert.i232, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !24
  br label %bb.ab

bb.n:                                             ; preds = %bb.k
  br i1 %i.abh, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.aca = call noundef float @llvm.fabs.f32(float %i.abd)
  %i.acb = fcmp olt float %i.aca, f0x34000000
  br i1 %i.acb, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.d, align 2, !tbaa !30
  br i1 %i.rz, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.acc = call noundef float @atan2f(float noundef %i.abg, float noundef %i.aba) #18, !tbaa !4 ; 2 uses
  %i.acd = fcmp ogt float %i.acc, %i.rw
  br i1 %i.acd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ace = call noundef float @cosf(float noundef %i.rw) #18, !tbaa !4
  %i.acf = call noundef float @sinf(float noundef %i.rw) #18, !tbaa !4
  br label %bb.aa

bb.s:                                             ; preds = %bb.q
  %i.acg = fneg float %i.rw
  %i.ach = fcmp olt float %i.acc, %i.acg
  br i1 %i.ach, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.aci = call noundef float @cosf(float noundef %i.rw) #18, !tbaa !4
  %i.acj = call noundef float @sinf(float noundef %i.rw) #18, !tbaa !4
  %i.ack = fneg float %i.acj
  br label %bb.aa

bb.u:                                             ; preds = %bb.n
  %i.acl = call noundef float @llvm.fabs.f32(float %i.abg)
  %i.acm = fcmp olt float %i.acl, f0x34000000
  br i1 %i.acm, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %i.d, align 2, !tbaa !30
  br i1 %i.ry, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.acn = call noundef float @atan2f(float noundef %i.abd, float noundef %i.aba) #18, !tbaa !4 ; 2 uses
  %i.aco = fcmp ogt float %i.acn, %i.rx
  br i1 %i.aco, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.acp = call noundef float @cosf(float noundef %i.rx) #18, !tbaa !4
  %i.acq = call noundef float @sinf(float noundef %i.rx) #18, !tbaa !4
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.acr = fneg float %i.rx
  %i.acs = fcmp olt float %i.acn, %i.acr
  br i1 %i.acs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.act = call noundef float @cosf(float noundef %i.rx) #18, !tbaa !4
  %i.acu = call noundef float @sinf(float noundef %i.rx) #18, !tbaa !4
  %i.acv = fneg float %i.acu
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.y, %bb.r, %bb.t, %bb.s, %bb.u, %bb.v, %bb.o, %bb.p
  %.145 = phi float [ %i.abg, %bb.o ], [ %i.abg, %bb.v ], [ %i.abg, %bb.p ], [ %i.abg, %bb.u ], [ %i.abg, %bb.s ], [ %i.acf, %bb.r ], [ %i.ack, %bb.t ], [ 0.000000e+00, %bb.y ], [ 0.000000e+00, %bb.z ], [ 0.000000e+00, %bb.x ] ; 3 uses
  %.143 = phi float [ %i.abd, %bb.o ], [ %i.abd, %bb.v ], [ %i.abd, %bb.p ], [ %i.abd, %bb.u ], [ 0.000000e+00, %bb.s ], [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.t ], [ %i.abd, %bb.y ], [ %i.acv, %bb.z ], [ %i.acq, %bb.x ] ; 3 uses
  %.2 = phi float [ %i.aba, %bb.o ], [ %i.aba, %bb.v ], [ %i.aba, %bb.p ], [ %i.aba, %bb.u ], [ %i.aba, %bb.s ], [ %i.ace, %bb.r ], [ %i.aci, %bb.t ], [ %i.aba, %bb.y ], [ %i.act, %bb.z ], [ %i.acp, %bb.x ] ; 3 uses
  %i.acw = fmul float %i.yx, %.143
  %i.acx = call float @llvm.fmuladd.f32(float %.2, float %i.xw, float %i.acw)
  %i.acy = call float @llvm.fmuladd.f32(float %.145, float %i.zm, float %i.acx) ; 3 uses
  %i.acz = fmul float %i.za, %.143
  %i.ada = call float @llvm.fmuladd.f32(float %.2, float %i.yf, float %i.acz)
  %i.adb = call float @llvm.fmuladd.f32(float %.145, float %i.zp, float %i.ada) ; 3 uses
  %i.adc = fmul float %i.zd, %.143
  %i.add = call float @llvm.fmuladd.f32(float %.2, float %i.yo, float %i.adc)
  %i.ade = call float @llvm.fmuladd.f32(float %.145, float %i.zs, float %i.add) ; 3 uses
  %i.adf = fmul float %i.adb, %i.adb
  %i.adg = call float @llvm.fmuladd.f32(float %i.acy, float %i.acy, float %i.adf)
  %i.adh = call noundef float @llvm.fmuladd.f32(float %i.ade, float %i.ade, float %i.adg)
  %sqrt.i.i235 = call noundef float @llvm.sqrt.f32(float %i.adh)
  %i.adi = fdiv float 1.000000e+00, %sqrt.i.i235  ; 3 uses
  %i.adj = fmul float %i.acy, %i.adi              ; 2 uses
  %i.adk = fmul float %i.adb, %i.adi              ; 2 uses
  %i.adl = fmul float %i.ade, %i.adi              ; 2 uses
  %i.adm = fneg float %i.adk
  %i.adn = fmul float %i.aax, %i.adm
  %i.ado = call float @llvm.fmuladd.f32(float %i.aao, float %i.adl, float %i.adn) ; 3 uses
  %i.adp = fneg float %i.adl
  %i.adq = fmul float %i.aaf, %i.adp
  %i.adr = call float @llvm.fmuladd.f32(float %i.aax, float %i.adj, float %i.adq) ; 3 uses
  %i.ads = fneg float %i.adj
  %i.adt = fmul float %i.aao, %i.ads
  %i.adu = call float @llvm.fmuladd.f32(float %i.aaf, float %i.adk, float %i.adt) ; 3 uses
  %i.adv = fneg float %i.ado
  %i.adw = fneg float %i.adr
  %i.adx = fneg float %i.adu                      ; 2 uses
  %.sroa.3.12.vec.insert.i243 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.adx, i64 0
  %i.ady = getelementptr inbounds nuw i8, ptr %0, i64 508
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 516 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i243, ptr %.sroa.44.0..sroa_idx, align 4, !tbaa !24
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.aea = fmul float %i.adr, %i.adr
  %i.aeb = call float @llvm.fmuladd.f32(float %i.ado, float %i.ado, float %i.aea)
  %i.aec = call noundef float @llvm.fmuladd.f32(float %i.adu, float %i.adu, float %i.aeb)
  %sqrt.i246 = call noundef float @llvm.sqrt.f32(float %i.aec) ; 2 uses
  store float %sqrt.i246, ptr %i.a, align 8, !tbaa !57
  %i.aed = fdiv float 1.000000e+00, %sqrt.i246    ; 3 uses
  %i.aee = fmul float %i.aed, %i.adv
  store float %i.aee, ptr %i.ady, align 4, !tbaa !27
  %i.aef = fmul float %i.aed, %i.adw
  store float %i.aef, ptr %i.adz, align 8, !tbaa !27
  %i.aeg = fmul float %i.aed, %i.adx
  store float %i.aeg, ptr %.sroa.44.0..sroa_idx, align 4, !tbaa !27
  br label %bb.ab

bb.ab:                                            ; preds = %bb.l, %bb.aa, %bb.m, %_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit, %_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3.exit
  %i.aeh = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.aei = load float, ptr %i.aeh, align 4, !tbaa !61 ; 5 uses
  %i.aej = fcmp ult float %i.aei, 0.000000e+00
  %i.aek = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  br i1 %i.aej, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ael = call noundef float @acosf(float noundef %i.rr) #18, !tbaa !4
  %i.aem = fmul float %i.ael, 2.000000e+00        ; 3 uses
  store float %i.aem, ptr %i.aek, align 8, !tbaa !27
  %i.aen = fcmp ogt float %i.aem, f0x40490FDB
  br i1 %i.aen, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.aeo = fneg float %i.rm
  %i.aep = fneg float %i.ro
  %i.aeq = fneg float %i.rp
  %i.aer = fneg float %i.rr                       ; 2 uses
  %.sroa.0.0.vec.insert.i.i251 = insertelement <2 x float> poison, float %i.aeo, i64 0
  %.sroa.0.4.vec.insert.i.i252 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i251, float %i.aep, i64 1
  %.sroa.3.8.vec.insert.i.i = insertelement <2 x float> poison, float %i.aeq, i64 0
  %.sroa.3.12.vec.insert.i.i253 = insertelement <2 x float> %.sroa.3.8.vec.insert.i.i, float %i.aer, i64 1
  %i.aes = call noundef float @acosf(float noundef %i.aer) #18, !tbaa !4
  %i.aet = fmul float %i.aes, 2.000000e+00        ; 2 uses
  store float %i.aet, ptr %i.aek, align 8, !tbaa !27
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.aeu = phi float [ %i.aet, %bb.ad ], [ %i.aem, %bb.ac ] ; 4 uses
  %.sroa.011.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i252, %bb.ad ], [ %.sroa.0371.4.vec.insert, %bb.ac ] ; 5 uses
  %.sroa.612.0.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i253, %bb.ad ], [ %.sroa.10379.12.vec.insert, %bb.ac ]
  %.sroa.612.8.vec.extract.i = extractelement <2 x float> %.sroa.612.0.i, i64 0 ; 4 uses
  %i.aev = fcmp ogt float %i.aeu, f0x34000000
  br i1 %i.aev, label %bb.af, label %_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit

bb.af:                                            ; preds = %bb.ae
  %.sroa.011.0.vec.extract.i = extractelement <2 x float> %.sroa.011.0.i, i64 0 ; 2 uses
  %foldExtExtBinop570 = fmul <2 x float> %.sroa.011.0.i, %.sroa.011.0.i
  %i.aew = extractelement <2 x float> %foldExtExtBinop570, i64 1
  %i.aex = call float @llvm.fmuladd.f32(float %.sroa.011.0.vec.extract.i, float %.sroa.011.0.vec.extract.i, float %i.aew)
  %i.aey = call noundef float @llvm.fmuladd.f32(float %.sroa.612.8.vec.extract.i, float %.sroa.612.8.vec.extract.i, float %i.aex)
  %sqrt.i.i.i250 = call noundef float @llvm.sqrt.f32(float %i.aey)
  %i.aez = fdiv float 1.000000e+00, %sqrt.i.i.i250 ; 2 uses
  %i.afa = insertelement <2 x float> poison, float %i.aez, i64 0
  %i.afb = shufflevector <2 x float> %i.afa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afc = fmul <2 x float> %.sroa.011.0.i, %i.afb
  %i.afd = fmul float %.sroa.612.8.vec.extract.i, %i.aez
  br label %_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit

_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit: ; preds = %bb.ae, %bb.af
  %.sroa.10.0 = phi float [ %i.afd, %bb.af ], [ %.sroa.612.8.vec.extract.i, %bb.ae ] ; 6 uses
  %i.afe = phi <2 x float> [ %i.afc, %bb.af ], [ %.sroa.011.0.i, %bb.ae ] ; 8 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !58 ; 4 uses
  %i.afh = fmul float %i.aei, %i.afg
  %i.afi = fcmp ogt float %i.aeu, %i.afh
  br i1 %i.afi, label %._crit_edge546, label %bb.ag

._crit_edge546:                                   ; preds = %_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit
  store i8 1, ptr %i.c, align 1, !tbaa !29
  %i.afj = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.afk = fcmp olt float %i.aeu, %i.aei
  %i.afl = fcmp olt float %i.afg, f0x3F7FFFFE
  %or.cond544 = and i1 %i.afk, %i.afl
  %i.afm = fneg float %i.aei                      ; 2 uses
  %i.afn = call float @llvm.fmuladd.f32(float %i.afm, float %i.afg, float %i.aeu) ; 2 uses
  %i.afo = call float @llvm.fmuladd.f32(float %i.afm, float %i.afg, float %i.aei)
  %i.afp = fdiv float %i.afn, %i.afo
  %storemerge545 = select i1 %or.cond544, float %i.afp, float 1.000000e+00
  store float %storemerge545, ptr %i.afj, align 4, !tbaa !62
  %i.afq = getelementptr inbounds nuw i8, ptr %0, i64 556
  store float %i.afn, ptr %i.afq, align 4, !tbaa !63
  %i.afr = extractelement <2 x float> %i.afe, i64 0
  %i.afs = extractelement <2 x float> %i.afe, i64 1 ; 2 uses
  %i.aft = fmul float %i.ni, %i.afs
  %i.afu = call float @llvm.fmuladd.f32(float %i.nf, float %i.afr, float %i.aft)
  %i.afv = call float @llvm.fmuladd.f32(float %i.nl, float %.sroa.10.0, float %i.afu) ; 3 uses
  %i.afw = shufflevector <2 x float> %i.afe, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.afx = insertelement <2 x float> %i.afw, float %.sroa.10.0, i64 0
  %i.afy = fneg <2 x float> %i.afx                ; 3 uses
  %i.afz = fneg float %i.afs                      ; 2 uses
  %foldExtExtBinop572 = fmul <2 x float> %i.ne, %i.afy
  %i.aga = fmul float %i.nf, %i.afz
  %foldExtExtBinop574 = fmul <2 x float> %i.ne, %i.afy
  %i.agb = extractelement <2 x float> %foldExtExtBinop574, i64 1
  %i.agc = insertelement <2 x float> poison, float %i.nh, i64 0
  %i.agd = shufflevector <2 x float> %i.agc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.age = insertelement <2 x float> poison, float %i.aga, i64 0
  %i.agf = shufflevector <2 x float> %i.age, <2 x float> %foldExtExtBinop572, <2 x i32> <i32 0, i32 2>
  %i.agg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agd, <2 x float> %i.afy, <2 x float> %i.agf)
  %i.agh = call float @llvm.fmuladd.f32(float %i.nh, float %i.afz, float %i.agb)
  %i.agi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ne, <2 x float> %i.afe, <2 x float> %i.agg) ; 3 uses
  %i.agj = call float @llvm.fmuladd.f32(float %i.nf, float %.sroa.10.0, float %i.agh) ; 3 uses
  %i.agk = fmul float %i.nh, %i.agj
  %i.agl = extractelement <2 x float> %i.agi, i64 1 ; 2 uses
  %i.agm = fmul float %i.nh, %i.agl
  %i.agn = call float @llvm.fmuladd.f32(float %i.afv, float %i.nj, float %i.agk)
  %i.ago = call float @llvm.fmuladd.f32(float %i.afv, float %i.nk, float %i.agm)
  %i.agp = extractelement <2 x float> %i.agi, i64 0 ; 2 uses
  %i.agq = call float @llvm.fmuladd.f32(float %i.agp, float %i.nk, float %i.agn)
  %i.agr = call float @llvm.fmuladd.f32(float %i.agj, float %i.nm, float %i.ago)
  %i.ags = insertelement <2 x float> poison, float %i.agr, i64 0
  %i.agt = insertelement <2 x float> %i.ags, float %i.agq, i64 1
  %i.agu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agi, <2 x float> %i.ne, <2 x float> %i.agt) ; 3 uses
  %i.agv = fmul float %i.nh, %i.agp
  %i.agw = call float @llvm.fmuladd.f32(float %i.afv, float %i.nm, float %i.agv)
  %i.agx = call float @llvm.fmuladd.f32(float %i.agl, float %i.nj, float %i.agw)
  %i.agy = call float @llvm.fmuladd.f32(float %i.agj, float %i.nf, float %i.agx) ; 9 uses
  %.sroa.3.12.vec.insert.i261 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.agy, i64 0
  %i.agz = getelementptr inbounds nuw i8, ptr %0, i64 524
  store <2 x float> %i.agu, ptr %i.agz, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 532
  store <2 x float> %.sroa.3.12.vec.insert.i261, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !24
  %i.aha = load float, ptr %3, align 4, !tbaa !27
  %i.ahb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ahc = load float, ptr %i.ahb, align 4, !tbaa !27
  %i.ahd = extractelement <2 x float> %i.agu, i64 1 ; 8 uses
  %i.ahe = fmul float %i.ahc, %i.ahd
  %i.ahf = extractelement <2 x float> %i.agu, i64 0 ; 8 uses
  %i.ahg = call float @llvm.fmuladd.f32(float %i.aha, float %i.ahf, float %i.ahe)
  %i.ahh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ahi = load float, ptr %i.ahh, align 4, !tbaa !27
  %i.ahj = call noundef float @llvm.fmuladd.f32(float %i.ahi, float %i.agy, float %i.ahg)
  %i.ahk = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ahl = load float, ptr %i.ahk, align 4, !tbaa !27
  %i.ahm = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ahn = load float, ptr %i.ahm, align 4, !tbaa !27
  %i.aho = fmul float %i.ahd, %i.ahn
  %i.ahp = call float @llvm.fmuladd.f32(float %i.ahl, float %i.ahf, float %i.aho)
  %i.ahq = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ahr = load float, ptr %i.ahq, align 4, !tbaa !27
  %i.ahs = call noundef float @llvm.fmuladd.f32(float %i.ahr, float %i.agy, float %i.ahp)
  %i.aht = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !27
  %i.ahv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ahw = load float, ptr %i.ahv, align 4, !tbaa !27
  %i.ahx = fmul float %i.ahd, %i.ahw
  %i.ahy = call float @llvm.fmuladd.f32(float %i.ahu, float %i.ahf, float %i.ahx)
  %i.ahz = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aia = load float, ptr %i.ahz, align 4, !tbaa !27
  %i.aib = call noundef float @llvm.fmuladd.f32(float %i.aia, float %i.agy, float %i.ahy)
  %i.aic = fmul float %i.ahd, %i.ahs
  %i.aid = call float @llvm.fmuladd.f32(float %i.ahf, float %i.ahj, float %i.aic)
  %i.aie = call noundef float @llvm.fmuladd.f32(float %i.agy, float %i.aib, float %i.aid)
  %i.aif = load float, ptr %4, align 4, !tbaa !27
  %i.aig = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aih = load float, ptr %i.aig, align 4, !tbaa !27
  %i.aii = fmul float %i.ahd, %i.aih
  %i.aij = call float @llvm.fmuladd.f32(float %i.aif, float %i.ahf, float %i.aii)
  %i.aik = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ail = load float, ptr %i.aik, align 4, !tbaa !27
  %i.aim = call noundef float @llvm.fmuladd.f32(float %i.ail, float %i.agy, float %i.aij)
  %i.ain = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aio = load float, ptr %i.ain, align 4, !tbaa !27
  %i.aip = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.aiq = load float, ptr %i.aip, align 4, !tbaa !27
  %i.air = fmul float %i.ahd, %i.aiq
  %i.ais = call float @llvm.fmuladd.f32(float %i.aio, float %i.ahf, float %i.air)
  %i.ait = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.aiu = load float, ptr %i.ait, align 4, !tbaa !27
  %i.aiv = call noundef float @llvm.fmuladd.f32(float %i.aiu, float %i.agy, float %i.ais)
  %i.aiw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aix = load float, ptr %i.aiw, align 4, !tbaa !27
  %i.aiy = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aiz = load float, ptr %i.aiy, align 4, !tbaa !27
  %i.aja = fmul float %i.ahd, %i.aiz
  %i.ajb = call float @llvm.fmuladd.f32(float %i.aix, float %i.ahf, float %i.aja)
  %i.ajc = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ajd = load float, ptr %i.ajc, align 4, !tbaa !27
  %i.aje = call noundef float @llvm.fmuladd.f32(float %i.ajd, float %i.agy, float %i.ajb)
  %i.ajf = fmul float %i.ahd, %i.aiv
  %i.ajg = call float @llvm.fmuladd.f32(float %i.ahf, float %i.aim, float %i.ajf)
  %i.ajh = call noundef float @llvm.fmuladd.f32(float %i.agy, float %i.aje, float %i.ajg)
  %i.aji = fadd float %i.aie, %i.ajh
  %i.ajj = fdiv float 1.000000e+00, %i.aji
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 544
  store float %i.ajj, ptr %i.ajk, align 8, !tbaa !64
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge546, %_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit
  %i.ajl = load i8, ptr %i.d, align 2, !tbaa !30, !range !32, !noundef !33
  %i.ajm = trunc nuw i8 %i.ajl to i1
  br i1 %i.ajm, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ajn = shufflevector <2 x float> %i.afe, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ajo = insertelement <2 x float> %i.ajn, float %.sroa.10.0, i64 0
  %i.ajp = fneg <2 x float> %i.ajo                ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN21btConeTwistConstraint13calcAngleInfoEv:bb.a
  %.sroa.11.8.vec.extract272 = extractelement <2 x float> %.sroa.11.0, i64 0
  %i.kv = tail call noundef float @llvm.fmuladd.f32(float %i.ks, float %.sroa.11.8.vec.extract272, float %i.ku) ; 2 uses
  %.sroa.0273.0.vec.extract279 = extractelement <2 x float> %.sroa.0273.0, i64 0
  %.sroa.0273.4.vec.extract285 = extractelement <2 x float> %.sroa.0273.0, i64 1
  %i.kw = fmul float %.sroa.0273.4.vec.extract285, %i.ko
  %i.kx = tail call float @llvm.fmuladd.f32(float %i.kk, float %.sroa.0273.0.vec.extract279, float %i.kw)
  %.sroa.11286.8.vec.extract292 = extractelement <2 x float> %.sroa.11286.0, i64 0
  %i.ky = tail call noundef float @llvm.fmuladd.f32(float %i.ks, float %.sroa.11286.8.vec.extract292, float %i.kx) ; 5 uses
  %i.kz = tail call noundef float @llvm.fabs.f32(float %i.kv) ; 4 uses
  %i.la = fcmp ult float %i.ky, 0.000000e+00
  br i1 %i.la, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_Z15shortestArcQuatRK9btVector3S1_.exit
  %i.lb = fsub float %i.ky, %i.kz
  %i.lc = fadd float %i.ky, %i.kz
  %i.ld = fdiv float %i.lb, %i.lc
  %i.le = tail call float @llvm.fmuladd.f32(float %i.ld, float f0xBF490FDB, float f0x3F490FDB)
  br label %_Z11btAtan2Fastff.exit131

bb.r:                                             ; preds = %_Z15shortestArcQuatRK9btVector3S1_.exit
  %i.lf = fadd float %i.ky, %i.kz
  %i.lg = fsub float %i.kz, %i.ky
  %i.lh = fdiv float %i.lf, %i.lg
  %i.li = tail call float @llvm.fmuladd.f32(float %i.lh, float f0xBF490FDB, float f0x4016CBE4)
  br label %_Z11btAtan2Fastff.exit131

_Z11btAtan2Fastff.exit131:                        ; preds = %bb.q, %bb.r
  %.0.i130 = phi float [ %i.le, %bb.q ], [ %i.li, %bb.r ] ; 2 uses
  %i.lj = fcmp olt float %i.kv, 0.000000e+00
  %i.lk = fneg float %.0.i130
  %i.ll = select i1 %i.lj, float %i.lk, float %.0.i130 ; 5 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 560
  store float %i.ll, ptr %i.lm, align 8, !tbaa !65
  %i.ln = fcmp ogt float %i.hi, 5.000000e-02
  %i.lo = select i1 %i.ln, float 1.000000e+00, float 0.000000e+00 ; 2 uses
  %i.lp = fneg float %i.hi
  %i.lq = fmul float %i.lo, %i.lp
  %i.lr = fcmp ugt float %i.ll, %i.lq
  br i1 %i.lr, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_Z11btAtan2Fastff.exit131
  %i.ls = fadd float %i.hi, %i.ll
  %i.lt = fneg float %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 556
  store float %i.lt, ptr %i.lu, align 4, !tbaa !63
  store i8 1, ptr %i.c, align 1, !tbaa !29
  %i.lv = fadd float %i.u, %i.bd
  %i.lw = fadd float %i.ad, %i.bm
  %i.lx = fadd float %i.am, %i.bv
  %i.ly = fmul float %i.lv, 5.000000e-01          ; 3 uses
  %i.lz = fmul float %i.lw, 5.000000e-01          ; 3 uses
  %i.ma = fmul float %i.lx, 5.000000e-01          ; 4 uses
  %.sroa.3.12.vec.insert.i139 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ma, i64 0
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 524
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i139, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !24
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.md = fmul float %i.lz, %i.lz
  %i.me = tail call float @llvm.fmuladd.f32(float %i.ly, float %i.ly, float %i.md)
  %i.mf = tail call noundef float @llvm.fmuladd.f32(float %i.ma, float %i.ma, float %i.me)
  %sqrt.i.i142 = tail call noundef float @llvm.sqrt.f32(float %i.mf)
  %i.mg = fdiv float 1.000000e+00, %sqrt.i.i142   ; 3 uses
  %i.mh = fneg float %i.mg
  %i.mi = fmul float %i.ly, %i.mh
  store float %i.mi, ptr %i.mb, align 4, !tbaa !27
  %i.mj = fneg float %i.mg
  %i.mk = fmul float %i.lz, %i.mj
  store float %i.mk, ptr %i.mc, align 8, !tbaa !27
  %i.ml = fneg float %i.mg
  %i.mm = fmul float %i.ma, %i.ml
  store float %i.mm, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !27
  br label %bb.v

bb.t:                                             ; preds = %_Z11btAtan2Fastff.exit131
  %i.mn = fmul float %i.hi, %i.lo
  %i.mo = fcmp ogt float %i.ll, %i.mn
  br i1 %i.mo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.mp = fsub float %i.ll, %i.hi
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 556
  store float %i.mp, ptr %i.mq, align 4, !tbaa !63
  store i8 1, ptr %i.c, align 1, !tbaa !29
  %i.mr = fadd float %i.u, %i.bd
  %i.ms = fadd float %i.ad, %i.bm
  %i.mt = fadd float %i.am, %i.bv
  %i.mu = fmul float %i.mr, 5.000000e-01          ; 3 uses
  %i.mv = fmul float %i.ms, 5.000000e-01          ; 3 uses
  %i.mw = fmul float %i.mt, 5.000000e-01          ; 4 uses
  %.sroa.3.12.vec.insert.i150 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.mw, i64 0
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 524
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i150, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !24
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.mz = fmul float %i.mv, %i.mv
  %i.na = tail call float @llvm.fmuladd.f32(float %i.mu, float %i.mu, float %i.mz)
  %i.nb = tail call noundef float @llvm.fmuladd.f32(float %i.mw, float %i.mw, float %i.na)
  %sqrt.i.i153 = tail call noundef float @llvm.sqrt.f32(float %i.nb)
  %i.nc = fdiv float 1.000000e+00, %sqrt.i.i153   ; 3 uses
  %i.nd = fmul float %i.mu, %i.nc
  store float %i.nd, ptr %i.mx, align 4, !tbaa !27
  %i.ne = fmul float %i.mv, %i.nc
  store float %i.ne, ptr %i.my, align 8, !tbaa !27
  %i.nf = fmul float %i.mw, %i.nc
  store float %i.nf, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !27
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u, %bb.t, %bb.k
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !27
  %i.c = tail call noundef float @acosf(float noundef %i.b) #18, !tbaa !4
  %i.d = fmul float %i.c, 2.000000e+00            ; 2 uses
  store float %i.d, ptr %2, align 4, !tbaa !27
  %i.e = fcmp ogt float %i.d, f0x34000000
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %1, align 4, !tbaa !27   ; 3 uses
  %i.i = load float, ptr %i.f, align 4, !tbaa !27 ; 3 uses
  %i.j = load float, ptr %i.g, align 4, !tbaa !27 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !24
  %i.k = fmul float %i.i, %i.i
  %i.l = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.k)
  %i.m = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.l)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.m)
  %i.n = fdiv float 1.000000e+00, %sqrt.i.i       ; 3 uses
  %i.o = fmul float %i.h, %i.n
  store float %i.o, ptr %3, align 4, !tbaa !27
  %i.p = fmul float %i.i, %i.n                    ; 4 uses
  store float %i.p, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !27
  %i.q = fmul float %i.j, %i.n                    ; 3 uses
  store float %i.q, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.s = load float, ptr %i.r, align 4, !tbaa !40 ; 3 uses
  store float %i.s, ptr %4, align 4, !tbaa !27
  %i.t = tail call noundef float @llvm.fabs.f32(float %i.p)
  %i.u = fcmp ogt float %i.t, f0x34000000
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = fmul float %i.q, %i.q
  %i.w = fmul nnan float %i.p, %i.p
  %i.x = fdiv float %i.v, %i.w                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.z = load float, ptr %i.y, align 8, !tbaa !135 ; 2 uses
  %i.aa = fmul float %i.z, %i.z
  %i.ab = fdiv float 1.000000e+00, %i.aa
  %i.ac = fmul float %i.s, %i.s
  %i.ad = fdiv float %i.x, %i.ac
  %i.ae = fadd float %i.ab, %i.ad
  %i.af = fadd float %i.x, 1.000000e+00
  %i.ag = fdiv float %i.af, %i.ae
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ag)
  store float %sqrt, ptr %4, align 4, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !27 ; 6 uses
  %i.c = tail call noundef float @llvm.fabs.f32(float %i.b)
  %i.d = fcmp ogt float %i.c, f0x34000000
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !27 ; 2 uses
  %i.g = fneg float %i.f
  %i.h = fdiv float %i.g, %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.j = load float, ptr %i.i, align 8, !tbaa !135
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.l = load float, ptr %i.k, align 4, !tbaa !40
  %i.m = fdiv float %i.j, %i.l
  %i.n = fmul float %i.h, %i.m
  %i.o = fcmp olt float %i.f, 0.000000e+00
  %i.p = fmul float %i.b, %i.n
  %i.q = tail call noundef float @llvm.fabs.f32(float %i.p) ; 2 uses
  %i.r = fneg float %i.q
  %.0 = select i1 %i.o, float %i.q, float %i.r    ; 3 uses
  %i.s = fneg float %.0
  %i.t = load float, ptr %1, align 4, !tbaa !27   ; 3 uses
  %i.u = fmul nnan float %i.b, %i.b
  %i.v = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.u)
  %i.w = tail call noundef float @llvm.fmuladd.f32(float %.0, float %.0, float %i.v)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.w)
  %i.x = fdiv float 1.000000e+00, %sqrt.i.i       ; 3 uses
  %i.y = fmul float %i.t, %i.x
  store float %i.y, ptr %1, align 4, !tbaa !27
  %i.z = fmul float %i.b, %i.x
  store float %i.z, ptr %i.a, align 4, !tbaa !27
  %i.aa = fmul float %i.x, %i.s
  store float %i.aa, ptr %i.e, align 4, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(640) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %3) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.011.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.612.0.copyload = load <2 x float>, ptr %.sroa.612.0..sroa_idx, align 4 ; 2 uses
  %i.a = extractelement <2 x float> %.sroa.612.0.copyload, i64 1
  %i.b = tail call noundef float @acosf(float noundef %i.a) #18, !tbaa !4
  %i.c = fmul float %i.b, 2.000000e+00            ; 2 uses
  store float %i.c, ptr %2, align 4, !tbaa !27
  %i.d = fcmp ogt float %i.c, f0x40490FDB
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !27
  %i.f = fneg <2 x float> %i.e
  %i.g = load <2 x float>, ptr %.sroa.612.0..sroa_idx, align 4, !tbaa !27
  %i.h = fneg <2 x float> %i.g                    ; 2 uses
  %i.i = extractelement <2 x float> %i.h, i64 1
  %i.j = tail call noundef float @acosf(float noundef %i.i) #18, !tbaa !4
  %i.k = fmul float %i.j, 2.000000e+00
  store float %i.k, ptr %2, align 4, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.011.0 = phi <2 x float> [ %i.f, %bb.b ], [ %.sroa.011.0.copyload, %bb.a ] ; 5 uses
  %.sroa.612.0 = phi <2 x float> [ %i.h, %bb.b ], [ %.sroa.612.0.copyload, %bb.a ]
  %.sroa.612.8.vec.extract = extractelement <2 x float> %.sroa.612.0, i64 0 ; 4 uses
  store <2 x float> %.sroa.011.0, ptr %3, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store float %.sroa.612.8.vec.extract, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !24
  %i.l = load float, ptr %2, align 4, !tbaa !27
  %i.m = fcmp ogt float %i.l, f0x34000000
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.011.0.vec.extract = extractelement <2 x float> %.sroa.011.0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.011.0, %.sroa.011.0
  %i.n = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.o = tail call float @llvm.fmuladd.f32(float %.sroa.011.0.vec.extract, float %.sroa.011.0.vec.extract, float %i.n)
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %.sroa.612.8.vec.extract, float %.sroa.612.8.vec.extract, float %i.o)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.p)
  %i.q = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.r = insertelement <2 x float> poison, float %i.q, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %.sroa.011.0, %i.s
  store <2 x float> %i.t, ptr %3, align 4, !tbaa !27
  %i.u = fmul float %.sroa.612.8.vec.extract, %i.q
  store float %i.u, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK21btConeTwistConstraint16GetPointForAngleEff(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, float noundef %1, float noundef %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = tail call noundef float @cosf(float noundef %1) #18, !tbaa !4 ; 6 uses
  %i.b = tail call noundef float @sinf(float noundef %1) #18, !tbaa !4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.d = load float, ptr %i.c, align 4, !tbaa !40 ; 3 uses
  %i.e = tail call noundef float @llvm.fabs.f32(float %i.a)
  %i.f = fcmp ogt float %i.e, f0x34000000
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = fmul float %i.a, %i.a
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = fmul float %i.b, %i.b
  %i.h = fmul float %i.a, %i.a                    ; 2 uses
  %i.i = fdiv float %i.g, %i.h                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.k = load float, ptr %i.j, align 8, !tbaa !135 ; 2 uses
  %i.l = fmul float %i.k, %i.k
  %i.m = fdiv float 1.000000e+00, %i.l
  %i.n = fmul float %i.d, %i.d
  %i.o = fdiv float %i.i, %i.n
  %i.p = fadd float %i.o, %i.m
  %i.q = fadd float %i.i, 1.000000e+00
  %i.r = fdiv float %i.q, %i.p
  %sqrt = tail call float @llvm.sqrt.f32(float %i.r)
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.pre-phi = phi float [ %.pre, %._crit_edge ], [ %i.h, %bb.b ]
  %.0 = phi float [ %i.d, %._crit_edge ], [ %sqrt, %bb.b ]
  %i.s = fneg float %i.b
  %i.t = tail call noundef float @llvm.fmuladd.f32(float %i.b, float %i.b, float %.pre-phi)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.t)
  %i.u = fmul float %.0, 5.000000e-01             ; 2 uses
  %i.v = tail call noundef float @sinf(float noundef %i.u) #18, !tbaa !4
  %i.w = fdiv float %i.v, %sqrt.i.i.i             ; 3 uses
  %i.x = fmul float %i.w, 0.000000e+00            ; 3 uses
  %i.y = fmul float %i.a, %i.w                    ; 4 uses
  %i.z = fmul float %i.w, %i.s                    ; 3 uses
  %i.aa = tail call noundef float @cosf(float noundef %i.u) #18, !tbaa !4 ; 6 uses
  %i.ab = fmul float %i.y, 0.000000e+00
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.aa, float %2, float %i.ab)
  %i.ad = fneg float %i.z                         ; 4 uses
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float 0.000000e+00, float %i.ac) ; 3 uses
  %i.af = fmul float %2, %i.z
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.aa, float 0.000000e+00, float %i.af)
  %i.ah = fneg float %i.x                         ; 4 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float 0.000000e+00, float %i.ag) ; 3 uses
  %i.aj = fmul ninf float %i.x, 0.000000e+00
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aa, float 0.000000e+00, float %i.aj)
  %i.al = fneg float %i.y                         ; 3 uses
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %2, float %i.ak) ; 3 uses
  %i.an = fmul float %i.y, -0.000000e+00
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.ah, float %2, float %i.an)
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ad, float 0.000000e+00, float %i.ao) ; 3 uses
  %i.aq = fmul float %i.aa, %i.ae
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ah, float %i.aq)
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ad, float %i.ar)
  %i.at = tail call float @llvm.fmuladd.f32(float %i.am, float %i.y, float %i.as)
  %i.au = fmul float %i.aa, %i.ai
  %i.av = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.al, float %i.au)
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ah, float %i.av)
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.z, float %i.aw)
  %i.ay = fmul float %i.aa, %i.am
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ad, float %i.ay)
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.al, float %i.az)
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.x, float %i.ba)
  %.sroa.020.0.vec.insert.i = insertelement <2 x float> poison, float %i.at, i64 0
  %.sroa.020.4.vec.insert.i = insertelement <2 x float> %.sroa.020.0.vec.insert.i, float %i.ax, i64 1
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bb, i64 0
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.020.4.vec.insert.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.sroa.3.12.vec.insert.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: uwtable
define dso_local void @_ZN21btConeTwistConstraint14setMotorTargetERK12btQuaternion(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %class.btQuaternion, align 8        ; 5 uses
  %3 = alloca %class.btQuaternion, align 8        ; 5 uses
  %4 = alloca %class.btQuaternion, align 4        ; 3 uses
  %5 = alloca %class.btQuaternion, align 4        ; 3 uses
  %6 = alloca %class.btTransform, align 4         ; 17 uses
  %7 = alloca %class.btTransform, align 4         ; 17 uses
  %8 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37, !nonnull !33, !align !38 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0156.0.copyload = load float, ptr %i.c, align 8 ; 7 uses
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.5158.0.copyload = load float, ptr %.sroa.5158.0..sroa_idx, align 4 ; 7 uses
  %.sroa.7160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7160.0.copyload = load float, ptr %.sroa.7160.0..sroa_idx, align 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.9163.16.copyload = load float, ptr %i.d, align 8 ; 7 uses
  %.sroa.12165.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.sroa.12165.16.copyload = load float, ptr %.sroa.12165.16..sroa_idx, align 4 ; 7 uses
  %.sroa.14167.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.14167.16.copyload = load float, ptr %.sroa.14167.16..sroa_idx, align 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.16170.32.copyload = load float, ptr %i.e, align 8 ; 7 uses
  %.sroa.19172.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %.sroa.19172.32.copyload = load float, ptr %.sroa.19172.32..sroa_idx, align 4 ; 7 uses
  %.sroa.21174.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.21174.32.copyload = load float, ptr %.sroa.21174.32..sroa_idx, align 8 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.23177.48.copyload = load float, ptr %i.f, align 8 ; 4 uses
  %.sroa.26179.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.sroa.26179.48.copyload = load float, ptr %.sroa.26179.48..sroa_idx, align 4 ; 4 uses
  %.sroa.28181.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.28181.48.copyload = load float, ptr %.sroa.28181.48..sroa_idx, align 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39, !nonnull !33, !align !38 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0135.0.copyload = load float, ptr %i.i, align 8 ; 9 uses
  %.sroa.5137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.sroa.5137.0.copyload = load float, ptr %.sroa.5137.0..sroa_idx, align 4 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 8 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.9141.16.copyload = load float, ptr %i.j, align 8 ; 9 uses
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %.sroa.12.16.copyload = load float, ptr %.sroa.12.16..sroa_idx, align 4 ; 9 uses
  %.sroa.14.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.14.16.copyload = load float, ptr %.sroa.14.16..sroa_idx, align 8 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.16146.32.copyload = load float, ptr %i.k, align 8 ; 9 uses
  %.sroa.19.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %.sroa.19.32.copyload = load float, ptr %.sroa.19.32..sroa_idx, align 4 ; 9 uses
  %.sroa.21.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.21.32.copyload = load float, ptr %.sroa.21.32..sroa_idx, align 8 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.23151.48.copyload = load float, ptr %i.l, align 8 ; 2 uses
  %.sroa.26153.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %.sroa.26153.48.copyload = load float, ptr %.sroa.26153.48..sroa_idx, align 4 ; 2 uses
  %.sroa.28.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.sroa.28.48.copyload = load float, ptr %.sroa.28.48..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.m = fneg float %.sroa.23151.48.copyload      ; 3 uses
  %i.n = fneg float %.sroa.26153.48.copyload      ; 3 uses
  %i.o = fneg float %.sroa.28.48.copyload         ; 3 uses
  %i.p = fmul float %.sroa.9141.16.copyload, %i.n
  %i.q = tail call float @llvm.fmuladd.f32(float %.sroa.0135.0.copyload, float %i.m, float %i.p)
  %i.r = tail call noundef float @llvm.fmuladd.f32(float %.sroa.16146.32.copyload, float %i.o, float %i.q)
  %i.s = fmul float %.sroa.12.16.copyload, %i.n
  %i.t = tail call float @llvm.fmuladd.f32(float %.sroa.5137.0.copyload, float %i.m, float %i.s)
  %i.u = tail call noundef float @llvm.fmuladd.f32(float %.sroa.19.32.copyload, float %i.o, float %i.t)
  %i.v = fmul float %.sroa.14.16.copyload, %i.n
  %i.w = tail call float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.m, float %i.v)
  %i.x = tail call noundef float @llvm.fmuladd.f32(float %.sroa.21.32.copyload, float %i.o, float %i.w)
  %i.y = fmul float %.sroa.9163.16.copyload, %.sroa.9141.16.copyload
  %i.z = tail call float @llvm.fmuladd.f32(float %.sroa.0156.0.copyload, float %.sroa.0135.0.copyload, float %i.y)
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %.sroa.16170.32.copyload, float %.sroa.16146.32.copyload, float %i.z)
  %i.ab = fmul float %.sroa.12165.16.copyload, %.sroa.9141.16.copyload
  %i.ac = tail call float @llvm.fmuladd.f32(float %.sroa.5158.0.copyload, float %.sroa.0135.0.copyload, float %i.ab)
  %i.ad = tail call noundef float @llvm.fmuladd.f32(float %.sroa.19172.32.copyload, float %.sroa.16146.32.copyload, float %i.ac)
  %i.ae = fmul float %.sroa.14167.16.copyload, %.sroa.9141.16.copyload
  %i.af = tail call float @llvm.fmuladd.f32(float %.sroa.7160.0.copyload, float %.sroa.0135.0.copyload, float %i.ae)
  %i.ag = tail call noundef float @llvm.fmuladd.f32(float %.sroa.21174.32.copyload, float %.sroa.16146.32.copyload, float %i.af)
  %i.ah = fmul float %.sroa.9163.16.copyload, %.sroa.12.16.copyload
  %i.ai = tail call float @llvm.fmuladd.f32(float %.sroa.0156.0.copyload, float %.sroa.5137.0.copyload, float %i.ah)
  %i.aj = tail call noundef float @llvm.fmuladd.f32(float %.sroa.16170.32.copyload, float %.sroa.19.32.copyload, float %i.ai)
  %i.ak = fmul float %.sroa.12165.16.copyload, %.sroa.12.16.copyload
  %i.al = tail call float @llvm.fmuladd.f32(float %.sroa.5158.0.copyload, float %.sroa.5137.0.copyload, float %i.ak)
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %.sroa.19172.32.copyload, float %.sroa.19.32.copyload, float %i.al)
  %i.an = fmul float %.sroa.14167.16.copyload, %.sroa.12.16.copyload
  %i.ao = tail call float @llvm.fmuladd.f32(float %.sroa.7160.0.copyload, float %.sroa.5137.0.copyload, float %i.an)
  %i.ap = tail call noundef float @llvm.fmuladd.f32(float %.sroa.21174.32.copyload, float %.sroa.19.32.copyload, float %i.ao)
  %i.aq = fmul float %.sroa.9163.16.copyload, %.sroa.14.16.copyload
  %i.ar = tail call float @llvm.fmuladd.f32(float %.sroa.0156.0.copyload, float %.sroa.7.0.copyload, float %i.aq)
  %i.as = tail call noundef float @llvm.fmuladd.f32(float %.sroa.16170.32.copyload, float %.sroa.21.32.copyload, float %i.ar)
  %i.at = fmul float %.sroa.12165.16.copyload, %.sroa.14.16.copyload
  %i.au = tail call float @llvm.fmuladd.f32(float %.sroa.5158.0.copyload, float %.sroa.7.0.copyload, float %i.at)
  %i.av = tail call noundef float @llvm.fmuladd.f32(float %.sroa.19172.32.copyload, float %.sroa.21.32.copyload, float %i.au)
  %i.aw = fmul float %.sroa.14167.16.copyload, %.sroa.14.16.copyload
  %i.ax = tail call float @llvm.fmuladd.f32(float %.sroa.7160.0.copyload, float %.sroa.7.0.copyload, float %i.aw)
  %i.ay = tail call noundef float @llvm.fmuladd.f32(float %.sroa.21174.32.copyload, float %.sroa.21.32.copyload, float %i.ax)
  %i.az = fmul float %.sroa.26179.48.copyload, %.sroa.9141.16.copyload
  %i.ba = tail call float @llvm.fmuladd.f32(float %.sroa.0135.0.copyload, float %.sroa.23177.48.copyload, float %i.az)
  %i.bb = tail call noundef float @llvm.fmuladd.f32(float %.sroa.16146.32.copyload, float %.sroa.28181.48.copyload, float %i.ba)
  %i.bc = fadd float %i.bb, %i.r
  %i.bd = fmul float %.sroa.26179.48.copyload, %.sroa.12.16.copyload
  %i.be = tail call float @llvm.fmuladd.f32(float %.sroa.5137.0.copyload, float %.sroa.23177.48.copyload, float %i.bd)
  %i.bf = tail call noundef float @llvm.fmuladd.f32(float %.sroa.19.32.copyload, float %.sroa.28181.48.copyload, float %i.be)
  %i.bg = fadd float %i.bf, %i.u
  %i.bh = fmul float %.sroa.26179.48.copyload, %.sroa.14.16.copyload
  %i.bi = tail call float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %.sroa.23177.48.copyload, float %i.bh)
  %i.bj = tail call noundef float @llvm.fmuladd.f32(float %.sroa.21.32.copyload, float %.sroa.28181.48.copyload, float %i.bi)
  %i.bk = fadd float %i.bj, %i.x
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.bc, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.bg, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bk, i64 0
  store float %i.aa, ptr %6, align 4, !alias.scope !136
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.ad, ptr %.sroa.44.0..sroa_idx.i, align 4, !alias.scope !136
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.ag, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !136
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !24, !alias.scope !136
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float %i.aj, ptr %i.bl, align 4, !alias.scope !136
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.am, ptr %.sroa.9.16..sroa_idx.i, align 4, !alias.scope !136
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.ap, ptr %.sroa.10.16..sroa_idx.i, align 4, !alias.scope !136
  %.sroa.11.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx.i, align 4, !tbaa !24, !alias.scope !136
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 32
  store float %i.as, ptr %i.bm, align 4, !alias.scope !136
  %.sroa.14.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 36
  store float %i.av, ptr %.sroa.14.32..sroa_idx.i, align 4, !alias.scope !136
  %.sroa.15.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  store float %i.ay, ptr %.sroa.15.32..sroa_idx.i, align 4, !alias.scope !136
  %.sroa.16.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 44
  store float 0.000000e+00, ptr %.sroa.16.32..sroa_idx.i, align 4, !tbaa !24, !alias.scope !136
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 48
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.bn, align 4, !alias.scope !136
  %.sroa.4.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %6, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i4, align 4, !tbaa !24, !alias.scope !136
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !27, !noalias !139 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.br = load float, ptr %i.bq, align 4, !tbaa !27, !noalias !139 ; 3 uses
  %i.bs = fmul float %.sroa.5137.0.copyload, %i.br
  %i.bt = call float @llvm.fmuladd.f32(float %i.bp, float %.sroa.0135.0.copyload, float %i.bs)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !27, !noalias !139 ; 3 uses
  %i.bw = call noundef float @llvm.fmuladd.f32(float %i.bv, float %.sroa.7.0.copyload, float %i.bt) ; 5 uses
end_hunk_1
