Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pnp_solver?download=true
inline.NumInlined: 753
inline.NumDeleted: 345
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZNK2cv4usac13P3PSolverImpl8estimateERKSt6vectorIiSaIiEERS2_INS_3MatESaIS7_EE:bb.a

bb.h:                                             ; preds = %bb.g
  %i.qf = fmul double %i.pp, %i.pp
  %i.qg = call double @llvm.fmuladd.f64(double %i.pn, double %i.pn, double %i.qf)
  %i.qh = fmul double %i.pn, 2.000000e+00
  %i.qi = fneg double %i.pp
  %i.qj = fmul double %i.qh, %i.qi
  %i.qk = call double @llvm.fmuladd.f64(double %i.qj, double %i.dl, double %i.qg)
  %i.ql = call double @sqrt(double noundef %i.qk) #20
  %i.qm = fsub double %i.ql, %i.bp
  %i.qn = fdiv double %i.qm, %i.bp
  %i.qo = call double @llvm.fabs.f64(double %i.qn)
  %i.qp = fcmp ogt double %i.qo, %i.qd
  br i1 %i.qp, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.qq = fmul double %i.pm, %i.pm
  %i.qr = call double @llvm.fmuladd.f64(double %i.pp, double %i.pp, double %i.qq)
  %i.qs = fmul double %i.pp, 2.000000e+00
  %i.qt = fneg double %i.pm
  %i.qu = fmul double %i.qs, %i.qt
  %i.qv = call double @llvm.fmuladd.f64(double %i.qu, double %i.dn, double %i.qr)
  %i.qw = call double @sqrt(double noundef %i.qv) #20
  %i.qx = fsub double %i.qw, %i.br
  %i.qy = fdiv double %i.qx, %i.br
  %i.qz = call double @llvm.fabs.f64(double %i.qy)
  %i.ra = fcmp ogt double %i.qz, %i.qd
  br i1 %i.ra, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.rb = fmul double %i.pm, %i.nz                ; 5 uses
  %i.rc = shufflevector <2 x double> %i.pl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rd = fmul <2 x double> %i.rc, %i.ck          ; 3 uses
  %i.re = fmul double %i.pn, %i.ct
  %i.rf = fmul double %i.pn, %i.cq
  %i.rg = fmul double %i.pn, %i.cs
  %i.rh = fmul double %i.pp, %i.oa
  %i.ri = insertelement <2 x double> poison, double %i.pp, i64 0
  %i.rj = shufflevector <2 x double> %i.ri, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rk = fmul <2 x double> %i.rj, %i.cr
  %i.rl = extractelement <2 x double> %i.rd, i64 0 ; 4 uses
  %i.rm = fsub double %i.rf, %i.rl
  %i.rn = fsub <2 x double> %i.rk, %i.rd          ; 4 uses
  %i.ro = extractelement <2 x double> %i.rd, i64 1 ; 4 uses
  %i.rp = fsub double %i.rg, %i.ro                ; 2 uses
  %i.rq = fsub double %i.re, %i.rb                ; 2 uses
  %i.rr = fsub double %i.rh, %i.rb                ; 2 uses
  %i.rs = insertelement <2 x double> poison, double %i.rr, i64 0
  %i.rt = insertelement <2 x double> %i.rs, double %i.rq, i64 1 ; 2 uses
  %i.ru = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rt, <2 x double> %i.rt, <2 x double> zeroinitializer)
  %i.rv = insertelement <2 x double> %i.rn, double %i.rm, i64 1 ; 3 uses
  %i.rw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rv, <2 x double> %i.rv, <2 x double> %i.ru)
  %i.rx = shufflevector <2 x double> %i.rn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ry = insertelement <2 x double> %i.rx, double %i.rp, i64 1 ; 2 uses
  %i.rz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ry, <2 x double> %i.ry, <2 x double> %i.rw)
  %i.sa = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.rz)
  %i.sb = fdiv <2 x double> splat (double 1.000000e+00), %i.sa ; 5 uses
  %i.sc = fmul <2 x double> %i.rv, %i.sb          ; 3 uses
  %i.sd = shufflevector <2 x double> %i.sb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.se = fmul <2 x double> %i.rn, %i.sd          ; 4 uses
  %i.sf = insertelement <2 x double> %i.rn, double %i.rq, i64 0
  %i.sg = shufflevector <2 x double> %i.sb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.sh = fmul <2 x double> %i.sf, %i.sg          ; 4 uses
  %i.si = extractelement <2 x double> %i.sb, i64 0
  %i.sj = fmul double %i.rr, %i.si                ; 4 uses
  %i.sk = extractelement <2 x double> %i.sb, i64 1
  %i.sl = fmul double %i.rp, %i.sk                ; 4 uses
  %i.sm = extractelement <2 x double> %i.se, i64 0
  %i.sn = extractelement <2 x double> %i.se, i64 1 ; 2 uses
  %i.so = fneg double %i.sn
  %i.sp = shufflevector <2 x double> %i.se, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.sq = insertelement <2 x double> %i.sp, double %i.sj, i64 0
  %i.sr = fneg <2 x double> %i.sq
  %i.ss = shufflevector <2 x double> %i.sc, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.st = insertelement <2 x double> %i.ss, double %i.sl, i64 1
  %i.su = fmul <2 x double> %i.st, %i.sr
  %i.sv = extractelement <2 x double> %i.sh, i64 0
  %i.sw = fmul double %i.sv, %i.so
  %i.sx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sc, <2 x double> %i.sh, <2 x double> %i.su) ; 4 uses
  %i.sy = insertelement <2 x double> %i.sx, double %i.sl, i64 0
  %i.sz = insertelement <2 x double> %i.sx, double %i.sj, i64 0
  %i.ta = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.sw, i64 0
  %i.tb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sy, <2 x double> %i.sz, <2 x double> %i.ta) ; 2 uses
  %i.tc = extractelement <2 x double> %i.tb, i64 0 ; 3 uses
  %i.td = extractelement <2 x double> %i.tb, i64 1
  %i.te = call double @llvm.fmuladd.f64(double %i.tc, double %i.tc, double %i.td)
  %i.tf = extractelement <2 x double> %i.sx, i64 0 ; 2 uses
  %i.tg = call noundef double @llvm.fmuladd.f64(double %i.tf, double %i.tf, double %i.te)
  %sqrt.i344 = call noundef double @llvm.sqrt.f64(double %i.tg)
  %i.th = fdiv double 1.000000e+00, %sqrt.i344    ; 2 uses
  %i.ti = insertelement <2 x double> poison, double %i.th, i64 0
  %i.tj = shufflevector <2 x double> %i.ti, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tk = fmul <2 x double> %i.sx, %i.tj          ; 6 uses
  %i.tl = fmul double %i.tc, %i.th                ; 4 uses
  %i.tm = extractelement <2 x double> %i.tk, i64 0 ; 2 uses
  %i.tn = fneg double %i.tm
  %i.to = fneg double %i.tl
  %i.tp = fmul double %i.sj, %i.tn
  %i.tq = fmul double %i.sn, %i.to
  %i.tr = insertelement <2 x double> poison, double %i.tq, i64 0
  %i.ts = insertelement <2 x double> %i.tr, double %i.tp, i64 1
  %i.tt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.se, <2 x double> %i.tk, <2 x double> %i.ts) ; 3 uses
  %i.tu = extractelement <2 x double> %i.tk, i64 1
  %i.tv = fneg double %i.tu
  %i.tw = fmul double %i.sm, %i.tv
  %i.tx = call double @llvm.fmuladd.f64(double %i.sj, double %i.tl, double %i.tw) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  br i1 %i.lm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.6.0 = phi double [ %i.lv, %bb.k ], [ 0.000000e+00, %bb.j ] ; 3 uses
  %.sroa.9364.0 = phi double [ %i.mf, %bb.k ], [ 0.000000e+00, %bb.j ] ; 3 uses
  %.sroa.12.0 = phi double [ %i.mm, %bb.k ], [ 0.000000e+00, %bb.j ] ; 3 uses
  %i.ty = phi <2 x double> [ %i.mj, %bb.k ], [ zeroinitializer, %bb.j ] ; 3 uses
  %i.tz = phi <2 x double> [ %i.mc, %bb.k ], [ zeroinitializer, %bb.j ] ; 3 uses
  %i.ua = phi <2 x double> [ %i.lt, %bb.k ], [ zeroinitializer, %bb.j ] ; 3 uses
  %i.ub = shufflevector <2 x double> %i.tk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.uc = shufflevector <2 x double> %i.tk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ud = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uc, <2 x double> %i.ua, <2 x double> zeroinitializer)
  %i.ue = shufflevector <2 x double> %i.sh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ue, <2 x double> %i.tz, <2 x double> %i.ud)
  %i.ug = shufflevector <2 x double> %i.tt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ug, <2 x double> %i.ty, <2 x double> %i.uf)
  store <2 x double> %i.uh, ptr %3, align 16, !tbaa !61, !alias.scope !126
  %i.ui = insertelement <2 x double> %i.ub, double %i.tl, i64 1
  %i.uj = shufflevector <2 x double> %i.ua, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.uk = insertelement <2 x double> %i.uj, double %.sroa.6.0, i64 0
  %i.ul = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ui, <2 x double> %i.uk, <2 x double> zeroinitializer)
  %i.um = shufflevector <2 x double> %i.sh, <2 x double> %i.sc, <2 x i32> <i32 0, i32 3>
  %i.un = shufflevector <2 x double> %i.tz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.uo = insertelement <2 x double> %i.un, double %.sroa.9364.0, i64 0
  %i.up = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.um, <2 x double> %i.uo, <2 x double> %i.ul)
  %i.uq = shufflevector <2 x double> %i.ty, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ur = insertelement <2 x double> %i.uq, double %.sroa.12.0, i64 0
  %i.us = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tt, <2 x double> %i.ur, <2 x double> %i.up)
  store <2 x double> %i.us, ptr %i.mn, align 16, !tbaa !61, !alias.scope !126
  %i.ut = insertelement <2 x double> poison, double %i.tl, i64 0
  %i.uu = shufflevector <2 x double> %i.ut, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uv = insertelement <2 x double> %i.uj, double %.sroa.6.0, i64 1
  %i.uw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uu, <2 x double> %i.uv, <2 x double> zeroinitializer)
  %i.ux = insertelement <2 x double> %i.un, double %.sroa.9364.0, i64 1
  %i.uy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ss, <2 x double> %i.ux, <2 x double> %i.uw)
  %i.uz = shufflevector <2 x double> %i.tt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.va = insertelement <2 x double> %i.uq, double %.sroa.12.0, i64 1
  %i.vb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uz, <2 x double> %i.va, <2 x double> %i.uy)
  store <2 x double> %i.vb, ptr %i.mp, align 16, !tbaa !61, !alias.scope !126
  %i.vc = shufflevector <2 x double> %i.tk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vc, <2 x double> %i.ua, <2 x double> zeroinitializer)
  %i.ve = insertelement <2 x double> poison, double %i.sl, i64 0
  %i.vf = shufflevector <2 x double> %i.ve, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vf, <2 x double> %i.tz, <2 x double> %i.vd)
  %i.vh = insertelement <2 x double> poison, double %i.tx, i64 0
  %i.vi = shufflevector <2 x double> %i.vh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vi, <2 x double> %i.ty, <2 x double> %i.vg)
  store <2 x double> %i.vj, ptr %i.mr, align 16, !tbaa !61, !alias.scope !126
  %i.vk = call double @llvm.fmuladd.f64(double %i.tm, double %.sroa.6.0, double 0.000000e+00)
  %i.vl = call double @llvm.fmuladd.f64(double %i.sl, double %.sroa.9364.0, double %i.vk)
  %i.vm = call double @llvm.fmuladd.f64(double %i.tx, double %.sroa.12.0, double %i.vl)
  store double %i.vm, ptr %i.ms, align 16, !tbaa !61, !alias.scope !126
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i32 -1056833530, ptr %5, align 8, !tbaa !88
  store ptr %3, ptr %i.mu, align 8, !tbaa !91
  store i64 12884901891, ptr %i.mt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i32 -1040056314, ptr %6, align 8, !tbaa !88
  store ptr %4, ptr %i.mv, align 8, !tbaa !91
  store i64 12884901889, ptr %i.mw, align 8
  %i.vn = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  call void @_ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.vn)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i32 -1056833530, ptr %7, align 8, !tbaa !88
  store ptr %4, ptr %i.my, align 8, !tbaa !91
  store i64 12884901889, ptr %i.mx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store i32 -1040056314, ptr %8, align 8, !tbaa !88
  store ptr %3, ptr %i.mz, align 8, !tbaa !91
  store i64 12884901891, ptr %i.na, align 8
  %i.vo = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  call void @_ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.vo)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.vp = load <2 x double>, ptr %3, align 16, !tbaa !61, !noalias !129 ; 5 uses
  %i.vq = load <2 x double>, ptr %i.mo, align 8, !tbaa !61, !noalias !129 ; 5 uses
  %i.vr = load <2 x double>, ptr %i.mr, align 16, !tbaa !61, !noalias !129 ; 5 uses
  %i.vs = load double, ptr %i.mn, align 16, !tbaa !61, !noalias !129 ; 4 uses
  %i.vt = load double, ptr %i.mq, align 8, !tbaa !61, !noalias !129 ; 4 uses
  %i.vu = load double, ptr %i.ms, align 16, !tbaa !61, !noalias !129 ; 4 uses
  %i.vv = extractelement <2 x double> %i.vp, i64 0
  %i.vw = extractelement <2 x double> %i.vq, i64 0
  %i.vx = extractelement <2 x double> %i.vr, i64 0
  %i.vy = load <4 x double>, ptr %i.nb, align 8, !tbaa !61, !noalias !129 ; 6 uses
  %15 = load <2 x double>, ptr %i.nd, align 8
  %i.vz = shufflevector <4 x double> %i.vy, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.wa = shufflevector <4 x double> %i.vy, <4 x double> poison, <2 x i32> zeroinitializer
  %i.wb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wa, <2 x double> %i.vp, <2 x double> zeroinitializer)
  %i.wc = shufflevector <4 x double> %i.vy, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.wd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wc, <2 x double> %i.vq, <2 x double> %i.wb)
  %i.we = shufflevector <4 x double> %i.vy, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.wf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.we, <2 x double> %i.vr, <2 x double> %i.wd) ; 3 uses
  store <2 x double> %i.wf, ptr %9, align 16, !tbaa !61, !alias.scope !129
  %i.wg = shufflevector <2 x double> %i.vp, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.wh = insertelement <2 x double> %i.wg, double %i.vs, i64 0
  %i.wi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vz, <2 x double> %i.wh, <2 x double> zeroinitializer)
  %i.wj = load <2 x double>, ptr %i.ne, align 8, !tbaa !61, !noalias !129 ; 2 uses
  %16 = load <2 x double>, ptr %i.nf, align 8
  %i.wk = shufflevector <2 x double> %i.wj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.wl = shufflevector <4 x double> %i.vy, <4 x double> %i.wk, <2 x i32> <i32 1, i32 4>
  %i.wm = shufflevector <2 x double> %i.vq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.wn = insertelement <2 x double> %i.wm, double %i.vt, i64 0
  %i.wo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wl, <2 x double> %i.wn, <2 x double> %i.wi)
  %i.wp = shufflevector <4 x double> %i.vy, <4 x double> %i.wk, <2 x i32> <i32 2, i32 5>
  %i.wq = shufflevector <2 x double> %i.vr, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.wr = insertelement <2 x double> %i.wq, double %i.vu, i64 0
  %i.ws = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wp, <2 x double> %i.wr, <2 x double> %i.wo) ; 3 uses
  store <2 x double> %i.ws, ptr %i.nc, align 16, !tbaa !61, !alias.scope !129
  %i.wt = extractelement <2 x double> %i.vp, i64 1
  %i.wu = extractelement <2 x double> %i.vq, i64 1
  %i.wv = extractelement <2 x double> %i.vr, i64 1
  %i.ww = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wx = insertelement <2 x double> %i.wg, double %i.vs, i64 1
  %i.wy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ww, <2 x double> %i.wx, <2 x double> zeroinitializer)
  %i.wz = shufflevector <2 x double> %i.wj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xa = insertelement <2 x double> %i.wm, double %i.vt, i64 1
  %i.xb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wz, <2 x double> %i.xa, <2 x double> %i.wy)
  %i.xc = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xd = insertelement <2 x double> %i.wq, double %i.vu, i64 1
  %i.xe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xc, <2 x double> %i.xd, <2 x double> %i.xb) ; 3 uses
  store <2 x double> %i.xe, ptr %i.ng, align 16, !tbaa !61, !alias.scope !129
  %i.xf = load double, ptr %i.nh, align 8, !tbaa !61, !noalias !129 ; 2 uses
  %i.xg = load double, ptr %i.ni, align 8, !tbaa !61, !noalias !129 ; 2 uses
  %i.xh = load double, ptr %i.nj, align 8, !tbaa !61, !noalias !129 ; 2 uses
  %i.xi = insertelement <2 x double> poison, double %i.xf, i64 0
  %i.xj = shufflevector <2 x double> %i.xi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xj, <2 x double> %i.vp, <2 x double> zeroinitializer)
  %i.xl = insertelement <2 x double> poison, double %i.xg, i64 0
  %i.xm = shufflevector <2 x double> %i.xl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xm, <2 x double> %i.vq, <2 x double> %i.xk)
  %i.xo = insertelement <2 x double> poison, double %i.xh, i64 0
  %i.xp = shufflevector <2 x double> %i.xo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xp, <2 x double> %i.vr, <2 x double> %i.xn) ; 2 uses
  store <2 x double> %i.xq, ptr %i.nk, align 16, !tbaa !61, !alias.scope !129
  %i.xr = call double @llvm.fmuladd.f64(double %i.xf, double %i.vs, double 0.000000e+00)
  %i.xs = call double @llvm.fmuladd.f64(double %i.xg, double %i.vt, double %i.xr)
  %i.xt = call double @llvm.fmuladd.f64(double %i.xh, double %i.vu, double %i.xs) ; 2 uses
  store double %i.xt, ptr %i.nl, align 16, !tbaa !61, !alias.scope !129
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %10, i8 0, i64 96, i1 false), !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store i32 -1056833530, ptr %11, align 8, !tbaa !88
  store ptr %9, ptr %i.nn, align 8, !tbaa !91
  store i64 12884901891, ptr %i.nm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.xu = fneg <2 x double> %i.xq                 ; 2 uses
  %i.xv = fneg double %i.xt
  %i.xw = call double @llvm.fmuladd.f64(double %i.vv, double %i.rb, double 0.000000e+00)
  %i.xx = call double @llvm.fmuladd.f64(double %i.vw, double %i.rl, double %i.xw)
  %i.xy = call double @llvm.fmuladd.f64(double %i.vx, double %i.ro, double %i.xx)
  %i.xz = call double @llvm.fmuladd.f64(double %i.wt, double %i.rb, double 0.000000e+00)
  %i.ya = call double @llvm.fmuladd.f64(double %i.wu, double %i.rl, double %i.xz)
  %i.yb = call double @llvm.fmuladd.f64(double %i.wv, double %i.ro, double %i.ya)
  %i.yc = call double @llvm.fmuladd.f64(double %i.vs, double %i.rb, double 0.000000e+00)
  %i.yd = call double @llvm.fmuladd.f64(double %i.vt, double %i.rl, double %i.yc)
  %i.ye = call double @llvm.fmuladd.f64(double %i.vu, double %i.ro, double %i.yd)
  %i.yf = fsub double %i.nu, %i.xy                ; 2 uses
  %i.yg = fsub double %i.nv, %i.yb                ; 2 uses
  %i.yh = fsub double %i.nt, %i.ye                ; 2 uses
  %i.yi = extractelement <2 x double> %i.xu, i64 0
  %i.yj = call double @llvm.fmuladd.f64(double %i.yi, double %i.yf, double 0.000000e+00)
  %i.yk = extractelement <2 x double> %i.xu, i64 1
  %i.yl = call double @llvm.fmuladd.f64(double %i.yk, double %i.yg, double %i.yj)
  %i.ym = call double @llvm.fmuladd.f64(double %i.xv, double %i.yh, double %i.yl)
  %i.yn = shufflevector <2 x double> %i.wf, <2 x double> %i.ws, <2 x i32> <i32 0, i32 3>
  %i.yo = fneg <2 x double> %i.yn
  %i.yp = shufflevector <2 x double> %i.wf, <2 x double> %i.xe, <2 x i32> <i32 1, i32 2>
  %i.yq = fneg <2 x double> %i.yp
  %i.yr = shufflevector <2 x double> %i.ws, <2 x double> %i.xe, <2 x i32> <i32 0, i32 3>
  %i.ys = fneg <2 x double> %i.yr
  %i.yt = insertelement <2 x double> poison, double %i.yf, i64 0
  %i.yu = shufflevector <2 x double> %i.yt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yo, <2 x double> %i.yu, <2 x double> zeroinitializer)
  %i.yw = insertelement <2 x double> poison, double %i.yg, i64 0
  %i.yx = shufflevector <2 x double> %i.yw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yq, <2 x double> %i.yx, <2 x double> %i.yv)
  %i.yz = insertelement <2 x double> poison, double %i.yh, i64 0
  %i.za = shufflevector <2 x double> %i.yz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ys, <2 x double> %i.za, <2 x double> %i.yy)
  store <2 x double> %i.zb, ptr %13, align 16, !tbaa !61, !alias.scope !132
  store double %i.ym, ptr %i.no, align 16, !tbaa !61, !alias.scope !132
  store i32 -1056833530, ptr %12, align 8, !tbaa !88
  store ptr %13, ptr %i.nq, align 8, !tbaa !91
  store i64 12884901889, ptr %i.np, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  store i32 -1040056314, ptr %14, align 8, !tbaa !88
  store ptr %10, ptr %i.nr, align 8, !tbaa !91
  store i64 12884901892, ptr %i.ns, align 8
  call void @_ZN2cv7hconcatERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.zc = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNSt6vectorIN2cv3MatESaIS1_EE12emplace_backIJRNS0_4MatxIdLi3ELi4EEEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(96) %10) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f, %bb.i, %bb.h, %bb.g, %bb.e
  %.0319.add = add nuw nsw i64 %.0319.idx595, 8   ; 2 uses
  %.not = icmp eq i64 %.0319.add, 32
  br i1 %.not, label %bb.d, label %bb.e

bb.n:                                             ; preds = %bb.a, %bb.d
  %.0321 = phi i32 [ %i.oh, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0321
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac13P3PSolverImpl13getSampleSizeEv(ptr noundef nonnull align 8 dereferenceable(504) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac13P3PSolverImpl23getMaxNumberOfSolutionsEv(ptr noundef nonnull align 8 dereferenceable(504) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 4
}

; Function Attrs: nounwind
declare void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #7

declare noundef i32 @_ZN2cv10solve_deg4EdddddRdS0_S0_S0_(double noundef, double noundef, double noundef, double noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv3MatESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 44343134792571037
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.d = load ptr, ptr %0, align 8, !tbaa !76
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 208
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit, label %bb.e

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !79
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 208
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #19 ; 4 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !76     ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !79   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i) #20
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i) #20
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 208 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 208
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !135

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split: ; preds = %.lr.ph.i.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !76
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit
  %i.t = phi ptr [ %.pr, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split ], [ %i.p, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.t, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #21
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !76
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.y, ptr %i.j, align 8, !tbaa !79
  %i.z = getelementptr inbounds nuw [208 x i8], ptr %i.o, i64 %1
  store ptr %i.z, ptr %i.b, align 8, !tbaa !80
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

declare void @_ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #7

declare void @_ZN2cv7hconcatERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZNSt6vectorIN2cv3MatESaIS1_EE12emplace_backIJRNS0_4MatxIdLi3ELi4EEEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
end_hunk_0
