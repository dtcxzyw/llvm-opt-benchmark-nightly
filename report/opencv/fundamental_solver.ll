Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fundamental_solver?download=true
inline.NumInlined: 1018
inline.NumDeleted: 484
loop-unroll.NumCompletelyUnrolled: 116
loop-unroll.NumUnrolled: 116
begin_hunk_0_@_ZNK2cv4usac32FundamentalMinimalSolver7ptsImpl8estimateERKSt6vectorIiSaIiEERS2_INS_3MatESaIS7_EE:bb.a
  %i.pz = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.qa = load <2 x double>, ptr %i.py, align 8, !tbaa !67
  store <2 x double> %i.qa, ptr %i.pz, align 16, !tbaa !67
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pk, i64 96
  %i.qc = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.qd = load <2 x double>, ptr %i.qb, align 8, !tbaa !67
  store <2 x double> %i.qd, ptr %i.qc, align 16, !tbaa !67
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pk, i64 112
  %i.qf = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.qg = load <2 x double>, ptr %i.qe, align 8, !tbaa !67
  store <2 x double> %i.qg, ptr %i.qf, align 16, !tbaa !67
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pk, i64 128
  %i.qi = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.qj = load <2 x double>, ptr %i.qh, align 8, !tbaa !67
  store <2 x double> %i.qj, ptr %i.qi, align 16, !tbaa !67
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pk, i64 144
  %i.ql = getelementptr inbounds nuw i8, ptr %7, i64 144
  %i.qm = load <2 x double>, ptr %i.qk, align 8, !tbaa !67
  store <2 x double> %i.qm, ptr %i.ql, align 16, !tbaa !67
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pk, i64 160
  %i.qo = getelementptr inbounds nuw i8, ptr %7, i64 160
  %i.qp = load <2 x double>, ptr %i.qn, align 8, !tbaa !67
  store <2 x double> %i.qp, ptr %i.qo, align 16, !tbaa !67
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pk, i64 176
  %i.qr = getelementptr inbounds nuw i8, ptr %7, i64 176
  %i.qs = load <2 x double>, ptr %i.qq, align 8, !tbaa !67
  store <2 x double> %i.qs, ptr %i.qr, align 16, !tbaa !67
  %i.qt = getelementptr inbounds nuw i8, ptr %i.pk, i64 192
  %i.qu = getelementptr inbounds nuw i8, ptr %7, i64 192
  %i.qv = load <2 x double>, ptr %i.qt, align 8, !tbaa !67
  store <2 x double> %i.qv, ptr %i.qu, align 16, !tbaa !67
  %i.qw = getelementptr inbounds nuw i8, ptr %i.pk, i64 208
  %i.qx = getelementptr inbounds nuw i8, ptr %7, i64 208
  %i.qy = load <2 x double>, ptr %i.qw, align 8, !tbaa !67
  store <2 x double> %i.qy, ptr %i.qx, align 16, !tbaa !67
  %i.qz = getelementptr inbounds nuw i8, ptr %i.pk, i64 224
  %i.ra = getelementptr inbounds nuw i8, ptr %7, i64 224
  %i.rb = load <2 x double>, ptr %i.qz, align 8, !tbaa !67
  store <2 x double> %i.rb, ptr %i.ra, align 16, !tbaa !67
  %i.rc = getelementptr inbounds nuw i8, ptr %i.pk, i64 240
  %i.rd = getelementptr inbounds nuw i8, ptr %7, i64 240
  %i.re = load <2 x double>, ptr %i.rc, align 8, !tbaa !67
  store <2 x double> %i.re, ptr %i.rd, align 16, !tbaa !67
  %i.rf = getelementptr inbounds nuw i8, ptr %i.pk, i64 256
  %i.rg = getelementptr inbounds nuw i8, ptr %7, i64 256
  %i.rh = load <2 x double>, ptr %i.rf, align 8, !tbaa !67
  store <2 x double> %i.rh, ptr %i.rg, align 16, !tbaa !67
  %i.ri = getelementptr inbounds nuw i8, ptr %i.pk, i64 272
  %i.rj = getelementptr inbounds nuw i8, ptr %7, i64 272
  %i.rk = load <2 x double>, ptr %i.ri, align 8, !tbaa !67
  store <2 x double> %i.rk, ptr %i.rj, align 16, !tbaa !67
  %i.rl = getelementptr inbounds nuw i8, ptr %i.pk, i64 288
  %i.rm = getelementptr inbounds nuw i8, ptr %7, i64 288
  %i.rn = load <2 x double>, ptr %i.rl, align 8, !tbaa !67
  store <2 x double> %i.rn, ptr %i.rm, align 16, !tbaa !67
  %i.ro = getelementptr inbounds nuw i8, ptr %i.pk, i64 304
  %i.rp = getelementptr inbounds nuw i8, ptr %7, i64 304
  %i.rq = load <2 x double>, ptr %i.ro, align 8, !tbaa !67
  store <2 x double> %i.rq, ptr %i.rp, align 16, !tbaa !67
  %i.rr = getelementptr inbounds nuw i8, ptr %i.pk, i64 320
  %i.rs = getelementptr inbounds nuw i8, ptr %7, i64 320
  %i.rt = load <2 x double>, ptr %i.rr, align 8, !tbaa !67
  store <2 x double> %i.rt, ptr %i.rs, align 16, !tbaa !67
  %i.ru = getelementptr inbounds nuw i8, ptr %i.pk, i64 336
  %i.rv = getelementptr inbounds nuw i8, ptr %7, i64 336
  %i.rw = load <2 x double>, ptr %i.ru, align 8, !tbaa !67
  store <2 x double> %i.rw, ptr %i.rv, align 16, !tbaa !67
  %i.rx = getelementptr inbounds nuw i8, ptr %i.pk, i64 352
  %i.ry = getelementptr inbounds nuw i8, ptr %7, i64 352
  %i.rz = load <2 x double>, ptr %i.rx, align 8, !tbaa !67
  store <2 x double> %i.rz, ptr %i.ry, align 16, !tbaa !67
  %i.sa = getelementptr inbounds nuw i8, ptr %i.pk, i64 368
  %i.sb = getelementptr inbounds nuw i8, ptr %7, i64 368
  %i.sc = load <2 x double>, ptr %i.sa, align 8, !tbaa !67
  store <2 x double> %i.sc, ptr %i.sb, align 16, !tbaa !67
  %i.sd = getelementptr inbounds nuw i8, ptr %i.pk, i64 384
  %i.se = getelementptr inbounds nuw i8, ptr %7, i64 384
  %i.sf = load <2 x double>, ptr %i.sd, align 8, !tbaa !67
  store <2 x double> %i.sf, ptr %i.se, align 16, !tbaa !67
  %i.sg = getelementptr inbounds nuw i8, ptr %i.pk, i64 400
  %i.sh = getelementptr inbounds nuw i8, ptr %7, i64 400
  %i.si = load <2 x double>, ptr %i.sg, align 8, !tbaa !67
  store <2 x double> %i.si, ptr %i.sh, align 16, !tbaa !67
  %i.sj = getelementptr inbounds nuw i8, ptr %i.pk, i64 416
  %i.sk = getelementptr inbounds nuw i8, ptr %7, i64 416
  %i.sl = load <2 x double>, ptr %i.sj, align 8, !tbaa !67
  store <2 x double> %i.sl, ptr %i.sk, align 16, !tbaa !67
  %i.sm = getelementptr inbounds nuw i8, ptr %i.pk, i64 432
  %i.sn = getelementptr inbounds nuw i8, ptr %7, i64 432
  %i.so = load <2 x double>, ptr %i.sm, align 8, !tbaa !67
  store <2 x double> %i.so, ptr %i.sn, align 16, !tbaa !67
  %i.sp = getelementptr inbounds nuw i8, ptr %i.pk, i64 448
  %i.sq = getelementptr inbounds nuw i8, ptr %7, i64 448
  %i.sr = load <2 x double>, ptr %i.sp, align 8, !tbaa !67
  store <2 x double> %i.sr, ptr %i.sq, align 16, !tbaa !67
  %i.ss = getelementptr inbounds nuw i8, ptr %i.pk, i64 464
  %i.st = getelementptr inbounds nuw i8, ptr %7, i64 464
  %i.su = load <2 x double>, ptr %i.ss, align 8, !tbaa !67
  store <2 x double> %i.su, ptr %i.st, align 16, !tbaa !67
  %i.sv = getelementptr inbounds nuw i8, ptr %i.pk, i64 480
  %i.sw = getelementptr inbounds nuw i8, ptr %7, i64 480
  %i.sx = load <2 x double>, ptr %i.sv, align 8, !tbaa !67
  store <2 x double> %i.sx, ptr %i.sw, align 16, !tbaa !67
  %i.sy = getelementptr inbounds nuw i8, ptr %i.pk, i64 496
  %i.sz = load double, ptr %i.sy, align 8, !tbaa !67
  %i.ta = getelementptr inbounds nuw i8, ptr %7, i64 496
  store double %i.sz, ptr %i.ta, align 16, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.tb = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 -1056833530, ptr %8, align 8, !tbaa !72
  %i.tc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %7, ptr %i.tc, align 8, !tbaa !73
  store i64 30064771081, ptr %i.tb, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.td = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.te = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.te, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !72
  store ptr %6, ptr %i.td, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.tf = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.tg = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.tg, align 8
  store i32 33619968, ptr %10, align 8, !tbaa !72
  store ptr %4, ptr %i.tf, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.th = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ti = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.ti, align 8
  store i32 33619968, ptr %11, align 8, !tbaa !72
  store ptr %5, ptr %i.th, align 8, !tbaa !73
  invoke void @_ZN2cv3SVD7computeERKNS_11_InputArrayERKNS_12_OutputArrayES6_S6_i(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 5)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.tj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !60 ; 10 uses
  %scevgep = getelementptr nuw i8, ptr %i.tk, i64 576
  %.sroa.15.0.scevgep.sroa_idx = getelementptr nuw i8, ptr %i.tk, i64 592
  %.sroa.30.0.scevgep.sroa_idx = getelementptr nuw i8, ptr %i.tk, i64 608
  %.sroa.49.0.scevgep.sroa_idx = getelementptr nuw i8, ptr %i.tk, i64 624
  %.sroa.71.0.scevgep.sroa_idx = getelementptr nuw i8, ptr %i.tk, i64 640
  %.sroa.71.0.copyload = load double, ptr %.sroa.71.0.scevgep.sroa_idx, align 8, !tbaa !67
  %scevgep182 = getelementptr nuw i8, ptr %i.tk, i64 504
  %i.tl = load <2 x double>, ptr %scevgep, align 8, !tbaa !67
  %i.tm = load <2 x double>, ptr %scevgep182, align 8, !tbaa !67
  %.sroa.13.0.scevgep182.sroa_idx = getelementptr nuw i8, ptr %i.tk, i64 520
  %i.tn = load <2 x double>, ptr %.sroa.15.0.scevgep.sroa_idx, align 8, !tbaa !67
  %i.to = load <2 x double>, ptr %.sroa.13.0.scevgep182.sroa_idx, align 8, !tbaa !67
  %.sroa.26.0.scevgep182.sroa_idx = getelementptr nuw i8, ptr %i.tk, i64 536
  %i.tp = load <2 x double>, ptr %.sroa.30.0.scevgep.sroa_idx, align 8, !tbaa !67
  %i.tq = load <2 x double>, ptr %.sroa.26.0.scevgep182.sroa_idx, align 8, !tbaa !67
  %.sroa.43.0.scevgep182.sroa_idx = getelementptr nuw i8, ptr %i.tk, i64 552
  %i.tr = load <2 x double>, ptr %.sroa.49.0.scevgep.sroa_idx, align 8, !tbaa !67
  %i.ts = load <2 x double>, ptr %.sroa.43.0.scevgep182.sroa_idx, align 8, !tbaa !67
  %.sroa.63.0.scevgep182.sroa_idx = getelementptr nuw i8, ptr %i.tk, i64 568
  %.sroa.63.0.copyload = load double, ptr %.sroa.63.0.scevgep182.sroa_idx, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.critedge154

bb.g:                                             ; preds = %bb.e
  %i.tt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.q

.critedge154:                                     ; preds = %.critedge.5, %bb.f
  %.sroa.71.0 = phi double [ %.sroa.71.0.copyload, %bb.f ], [ 1.000000e+00, %.critedge.5 ]
  %.sroa.63.0 = phi double [ %.sroa.63.0.copyload, %bb.f ], [ 0.000000e+00, %.critedge.5 ] ; 6 uses
  %i.tu = phi <2 x double> [ %i.tl, %bb.f ], [ %i.nv, %.critedge.5 ]
  %i.tv = phi <2 x double> [ %i.tm, %bb.f ], [ %i.nx, %.critedge.5 ] ; 8 uses
  %i.tw = phi <2 x double> [ %i.tn, %bb.f ], [ %i.nz, %.critedge.5 ]
  %i.tx = phi <2 x double> [ %i.to, %bb.f ], [ %i.oa, %.critedge.5 ] ; 8 uses
  %i.ty = phi <2 x double> [ %i.tp, %bb.f ], [ %i.oc, %.critedge.5 ]
  %i.tz = phi <2 x double> [ %i.tq, %bb.f ], [ %i.oe, %.critedge.5 ] ; 7 uses
  %i.ua = phi <2 x double> [ %i.tr, %bb.f ], [ %i.of, %.critedge.5 ]
  %i.ub = phi <2 x double> [ %i.ts, %bb.f ], [ %i.og, %.critedge.5 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.uc = fsub <2 x double> %i.tu, %i.tv          ; 8 uses
  %i.ud = fsub <2 x double> %i.tw, %i.tx          ; 7 uses
  %i.ue = fsub <2 x double> %i.ty, %i.tz          ; 7 uses
  %i.uf = fsub <2 x double> %i.ua, %i.ub          ; 5 uses
  %i.ug = extractelement <2 x double> %i.ub, i64 1
  %i.uh = extractelement <2 x double> %i.tz, i64 1 ; 3 uses
  %i.ui = extractelement <2 x double> %i.tz, i64 0 ; 3 uses
  %i.uj = extractelement <2 x double> %i.ub, i64 0
  %i.uk = extractelement <2 x double> %i.tx, i64 1
  %i.ul = fneg <2 x double> %i.ub                 ; 5 uses
  %i.um = shufflevector <2 x double> %i.tz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.un = fmul <2 x double> %i.um, %i.ul
  %i.uo = shufflevector <2 x double> %i.tx, <2 x double> %i.tz, <2 x i32> <i32 1, i32 2>
  %i.up = insertelement <2 x double> poison, double %.sroa.63.0, i64 0
  %i.uq = shufflevector <2 x double> %i.up, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ur = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uo, <2 x double> %i.uq, <2 x double> %i.un) ; 3 uses
  %i.us = extractelement <2 x double> %i.ul, i64 0
  %i.ut = extractelement <2 x double> %i.ur, i64 0
  %i.uu = extractelement <2 x double> %i.tv, i64 1 ; 4 uses
  %i.uv = extractelement <2 x double> %i.tv, i64 0 ; 4 uses
  %i.uw = fneg double %i.ut                       ; 2 uses
  %i.ux = shufflevector <2 x double> %i.tz, <2 x double> %i.tv, <2 x i32> <i32 0, i32 3>
  %i.uy = insertelement <2 x double> %i.ul, double %i.uw, i64 1
  %i.uz = fmul <2 x double> %i.ux, %i.uy
  %i.va = shufflevector <2 x double> %i.tx, <2 x double> %i.tv, <2 x i32> <i32 1, i32 2>
  %i.vb = shufflevector <2 x double> %i.ub, <2 x double> %i.ur, <2 x i32> <i32 1, i32 3>
  %i.vc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.va, <2 x double> %i.vb, <2 x double> %i.uz) ; 3 uses
  %i.vd = extractelement <2 x double> %i.tx, i64 0 ; 4 uses
  %i.ve = extractelement <2 x double> %i.vc, i64 0
  %i.vf = extractelement <2 x double> %i.uc, i64 1
  %i.vg = fmul double %i.vf, %i.uw
  %i.vh = shufflevector <2 x double> %i.tx, <2 x double> %i.uc, <2 x i32> <i32 0, i32 2>
  %i.vi = shufflevector <2 x double> %i.vc, <2 x double> %i.ur, <2 x i32> <i32 0, i32 3>
  %i.vj = shufflevector <2 x double> %i.vc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.vk = insertelement <2 x double> %i.vj, double %i.vg, i64 1
  %i.vl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vh, <2 x double> %i.vi, <2 x double> %i.vk) ; 2 uses
  %i.vm = extractelement <2 x double> %i.ud, i64 0 ; 2 uses
  %i.vn = extractelement <2 x double> %i.vl, i64 1
  %i.vo = call double @llvm.fmuladd.f64(double %i.vm, double %i.ve, double %i.vn)
  %i.vp = extractelement <2 x double> %i.ul, i64 1 ; 2 uses
  %i.vq = fmul double %i.vd, %i.vp
  %i.vr = call double @llvm.fmuladd.f64(double %i.uu, double %.sroa.63.0, double %i.vq)
  %foldExtExtBinop = fmul <2 x double> %i.tx, %i.ul
  %i.vs = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.vt = call double @llvm.fmuladd.f64(double %i.uv, double %.sroa.63.0, double %i.vs)
  %i.vu = fmul double %i.uu, %i.us
  %i.vv = call double @llvm.fmuladd.f64(double %i.uv, double %i.ug, double %i.vu)
  %i.vw = extractelement <2 x double> %i.ue, i64 1 ; 2 uses
  %i.vx = fneg double %i.vw
  %i.vy = fneg double %i.ui
  %i.vz = fmul double %i.vd, %i.vy
  %i.wa = call double @llvm.fmuladd.f64(double %i.uu, double %i.uh, double %i.vz)
  %i.wb = extractelement <2 x double> %i.uf, i64 0 ; 2 uses
  %i.wc = fneg double %i.uk                       ; 3 uses
  %i.wd = fmul double %i.vd, %i.wc
  %i.we = call double @llvm.fmuladd.f64(double %i.uv, double %i.uh, double %i.wd)
  %i.wf = extractelement <2 x double> %i.uf, i64 1
  %i.wg = fmul double %i.uu, %i.wc
  %i.wh = call double @llvm.fmuladd.f64(double %i.uv, double %i.ui, double %i.wg)
  %i.wi = fneg double %i.wb
  %i.wj = insertelement <2 x double> poison, double %i.wi, i64 0
  %i.wk = shufflevector <2 x double> %i.wj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.wl = fmul <2 x double> %i.ue, %i.wk
  %i.wm = shufflevector <2 x double> %i.ud, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.wn = shufflevector <2 x double> %i.uf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.wo = fsub double %.sroa.71.0, %.sroa.63.0    ; 6 uses
  %13 = fneg double %i.wf                         ; 3 uses
  %14 = fmul double %i.vw, %13
  %i.wp = insertelement <2 x double> %i.wn, double %i.wo, i64 1
  %i.wq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wm, <2 x double> %i.wp, <2 x double> %i.wl) ; 2 uses
  %i.wr = extractelement <2 x double> %i.wq, i64 1
  %15 = extractelement <2 x double> %i.wq, i64 0  ; 2 uses
  %16 = shufflevector <2 x double> %i.tv, <2 x double> %i.ud, <2 x i32> <i32 1, i32 2>
  %17 = shufflevector <2 x double> %i.tv, <2 x double> %i.uc, <2 x i32> <i32 0, i32 3>
  %i.ws = shufflevector <2 x double> %i.ud, <2 x double> %i.uc, <2 x i32> <i32 0, i32 3>
  %18 = fmul <2 x double> %i.ws, %i.wk
  %19 = shufflevector <2 x double> %i.uc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %20 = insertelement <2 x double> %i.uf, double %i.wo, i64 0
  %21 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %19, <2 x double> %20, <2 x double> %18) ; 2 uses
  %22 = extractelement <2 x double> %21, i64 0
  %23 = fneg double %i.uh
  %24 = extractelement <2 x double> %21, i64 1
  %25 = shufflevector <2 x double> %i.ud, <2 x double> %i.ue, <2 x i32> <i32 1, i32 2>
  %26 = fneg <2 x double> %25                     ; 3 uses
  %27 = extractelement <2 x double> %26, i64 0
  %i.wt = call double @llvm.fmuladd.f64(double %27, double %i.vr, double %i.vo)
  %28 = shufflevector <2 x double> %i.ud, <2 x double> poison, <2 x i32> zeroinitializer
  %29 = fmul <2 x double> %28, %26
  %30 = shufflevector <2 x double> %i.ue, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %31 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uc, <2 x double> %30, <2 x double> %29) ; 2 uses
  %32 = extractelement <2 x double> %31, i64 1
  %33 = extractelement <2 x double> %31, i64 0
  %34 = extractelement <2 x double> %i.ue, i64 0  ; 2 uses
  %35 = call double @llvm.fmuladd.f64(double %34, double %i.wo, double %14) ; 2 uses
  %36 = fneg double %i.wr                         ; 2 uses
  %37 = insertelement <2 x double> poison, double %36, i64 0
  %i.wu = insertelement <2 x double> %37, double %13, i64 1
  %38 = fmul <2 x double> %16, %i.wu
  %39 = insertelement <2 x double> poison, double %35, i64 0
  %i.wv = insertelement <2 x double> %39, double %i.wo, i64 1
  %i.ww = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %i.wv, <2 x double> %38) ; 2 uses
  %i.wx = extractelement <2 x double> %i.ww, i64 0
  %i.wy = call double @llvm.fmuladd.f64(double %i.vd, double %15, double %i.wx)
  %i.wz = extractelement <2 x double> %i.ww, i64 1
  %i.xa = call double @llvm.fmuladd.f64(double %i.wc, double %i.wz, double %i.wy)
  %i.xb = call double @llvm.fmuladd.f64(double %i.ui, double %22, double %i.xa)
  %i.xc = call double @llvm.fmuladd.f64(double %23, double %24, double %i.xb)
  %i.xd = call double @llvm.fmuladd.f64(double %34, double %i.vt, double %i.wt)
  %i.xe = call double @llvm.fmuladd.f64(double %i.vx, double %i.vv, double %i.xd)
  %i.xf = call double @llvm.fmuladd.f64(double %i.wb, double %i.wa, double %i.xe)
  %i.xg = call double @llvm.fmuladd.f64(double %13, double %i.we, double %i.xf)
  %40 = call double @llvm.fmuladd.f64(double %i.wo, double %i.wh, double %i.xg)
  %i.xh = call double @llvm.fmuladd.f64(double %i.uj, double %32, double %i.xc)
  %i.xi = call double @llvm.fmuladd.f64(double %i.vp, double %33, double %i.xh)
  %41 = shufflevector <2 x double> %i.uc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.xj = insertelement <2 x double> %26, double %36, i64 1
  %42 = fmul <2 x double> %41, %i.xj
  %i.xk = insertelement <2 x double> %i.ue, double %35, i64 1
  %i.xl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %19, <2 x double> %i.xk, <2 x double> %42) ; 2 uses
  %43 = extractelement <2 x double> %i.xl, i64 0
  %44 = call double @llvm.fmuladd.f64(double %.sroa.63.0, double %43, double %i.xi)
  %i.xm = extractelement <2 x double> %i.xl, i64 1
  %i.xn = call double @llvm.fmuladd.f64(double %i.vm, double %15, double %i.xm)
  %i.xo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.xp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.xq = extractelement <2 x double> %i.vl, i64 0
  %i.xr = invoke noundef i32 @_ZN2cv10solve_deg3EddddRdS0_S0_(double noundef %i.xn, double noundef %44, double noundef %40, double noundef %i.xq, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.xo, ptr noundef nonnull align 8 dereferenceable(8) %i.xp)
          to label %bb.h unwind label %bb.i       ; 4 uses

bb.h:                                             ; preds = %.critedge154
  %i.xs = icmp slt i32 %i.xr, 1
  br i1 %i.xs, label %.loopexit, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i

bb.i:                                             ; preds = %.critedge154
  %i.xt = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i: ; preds = %bb.h
  %i.xu = zext nneg i32 %i.xr to i64              ; 3 uses
  %i.xv = mul nuw nsw i64 %i.xu, 208
  %i.xw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xv) #17
          to label %.lr.ph.i.i.i.i.i unwind label %bb.k ; 3 uses

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.xy, %.lr.ph.i.i.i.i.i ], [ %i.xw, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i ] ; 2 uses
  %.057.i.i.i.i.i = phi i64 [ %i.xx, %.lr.ph.i.i.i.i.i ], [ %i.xu, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i ]
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i.i.i) #18
  %i.xx = add nsw i64 %.057.i.i.i.i.i, -1         ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.xx, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !166

_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit:     ; preds = %.lr.ph.i.i.i.i.i
  %i.xz = getelementptr inbounds nuw [208 x i8], ptr %i.xw, i64 %i.xu
  %i.ya = load ptr, ptr %2, align 8, !tbaa !77    ; 5 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !78 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !79
  store ptr %i.xw, ptr %2, align 8, !tbaa !77
  store ptr %i.xy, ptr %i.yb, align 8, !tbaa !78
  store ptr %i.xz, ptr %i.yd, align 8, !tbaa !79
  %.not4.i.i.i.i.i = icmp eq ptr %i.ya, %i.yc
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i155

.lr.ph.i.i.i.i.i155:                              ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit, %.lr.ph.i.i.i.i.i155
  %.05.i.i.i.i.i = phi ptr [ %i.yf, %.lr.ph.i.i.i.i.i155 ], [ %i.ya, %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i.i) #18
  %i.yf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i156 = icmp eq ptr %i.yf, %i.yc
  br i1 %.not.i.i.i.i.i156, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i155, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i155, %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit
  %.not.i.i1.i.i.i = icmp eq ptr %i.ya, null
  br i1 %.not.i.i1.i.i.i, label %.lr.ph178.preheader, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.yg = ptrtoint ptr %i.ye to i64
  %i.yh = ptrtoint ptr %i.ya to i64
  %i.yi = sub i64 %i.yg, %i.yh
  call void @_ZdlPvm(ptr noundef nonnull %i.ya, i64 noundef %i.yi) #19
  br label %.lr.ph178.preheader

.lr.ph178.preheader:                              ; preds = %bb.j, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %wide.trip.count = zext nneg i32 %i.xr to i64
  br label %.lr.ph178

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i
  %i.yj = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.lr.ph178:                                        ; preds = %.lr.ph178.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph178.preheader ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %12, i32 noundef 3, i32 noundef 3, i32 noundef 6)
          to label %_ZN2cv4Mat_IdEC2Eii.exit unwind label %bb.m

_ZN2cv4Mat_IdEC2Eii.exit:                         ; preds = %.lr.ph178
  %i.yk = load ptr, ptr %2, align 8, !tbaa !77
  %i.yl = getelementptr inbounds nuw [208 x i8], ptr %i.yk, i64 %indvars.iv
  %i.ym = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.yl, ptr noundef nonnull align 8 dereferenceable(208) %12)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %_ZN2cv4Mat_IdEC2Eii.exit
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.yn = load ptr, ptr %2, align 8, !tbaa !77
  %i.yo = getelementptr inbounds nuw [208 x i8], ptr %i.yn, i64 %indvars.iv
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 24
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !60 ; 5 uses
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ys = load double, ptr %i.yr, align 8, !tbaa !67 ; 3 uses
  %i.yt = call double @llvm.fmuladd.f64(double %i.wo, double %i.ys, double %.sroa.63.0) ; 2 uses
  %i.yu = call double @llvm.fabs.f64(double %i.yt)
  %i.yv = fcmp ogt double %i.yu, f0x3E80000000000000 ; 3 uses
  %i.yw = fdiv double 1.000000e+00, %i.yt         ; 2 uses
  %i.yx = fmul double %i.ys, %i.yw
  %.sink = select i1 %i.yv, double 1.000000e+00, double 0.000000e+00
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yq, i64 64
  store double %.sink, ptr %i.yy, align 8, !tbaa !67
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yq, i64 16
  %i.za = getelementptr inbounds nuw i8, ptr %i.yq, i64 32
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yq, i64 48
  %.0117 = select i1 %i.yv, double %i.yx, double %i.ys
  %.0116 = select i1 %i.yv, double %i.yw, double 1.000000e+00
  %i.zc = insertelement <2 x double> poison, double %.0116, i64 0
  %i.zd = shufflevector <2 x double> %i.zc, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ze = fmul <2 x double> %i.zd, %i.tv
  %i.zf = insertelement <2 x double> poison, double %.0117, i64 0
  %i.zg = shufflevector <2 x double> %i.zf, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.zh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uc, <2 x double> %i.zg, <2 x double> %i.ze)
  store <2 x double> %i.zh, ptr %i.yq, align 8, !tbaa !67
  %i.zi = fmul <2 x double> %i.zd, %i.tx
  %i.zj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ud, <2 x double> %i.zg, <2 x double> %i.zi)
  store <2 x double> %i.zj, ptr %i.yz, align 8, !tbaa !67
  %i.zk = fmul <2 x double> %i.zd, %i.tz
  %i.zl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ue, <2 x double> %i.zg, <2 x double> %i.zk)
  store <2 x double> %i.zl, ptr %i.za, align 8, !tbaa !67
  %i.zm = fmul <2 x double> %i.zd, %i.ub
  %i.zn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uf, <2 x double> %i.zg, <2 x double> %i.zm)
  store <2 x double> %i.zn, ptr %i.zb, align 8, !tbaa !67
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph178, !llvm.loop !167

bb.m:                                             ; preds = %.lr.ph178
  %i.zo = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZN2cv4Mat_IdEC2Eii.exit
  %i.zp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn148 = phi { ptr, i32 } [ %i.zp, %bb.n ], [ %i.zo, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.p

.loopexit:                                        ; preds = %bb.l, %bb.h
  %.3 = phi i32 [ 0, %bb.h ], [ %i.xr, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.pre = load ptr, ptr %3, align 8, !tbaa !57
  br label %.loopexit166

bb.p:                                             ; preds = %bb.o, %bb.k, %bb.i
  %.pn148.pn = phi { ptr, i32 } [ %.pn148, %bb.o ], [ %i.yj, %bb.k ], [ %i.xt, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.q

.loopexit166:                                     ; preds = %bb.c, %.loopexit
  %i.zq = phi ptr [ %.pre, %.loopexit ], [ %.pre294, %bb.c ] ; 2 uses
  %.4 = phi i32 [ %.3, %.loopexit ], [ 0, %bb.c ] ; 2 uses
  %.not.i.i.i158 = icmp eq ptr %i.zq, null
  br i1 %.not.i.i.i158, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %.loopexit166.thread

.loopexit166.thread:                              ; preds = %.critedge, %.critedge.1, %.critedge.2, %.critedge.3, %.critedge.4, %.critedge.5, %.loopexit166
  %.4307 = phi i32 [ %.4, %.loopexit166 ], [ 0, %.critedge.5 ], [ 0, %.critedge.4 ], [ 0, %.critedge.3 ], [ 0, %.critedge.2 ], [ 0, %.critedge.1 ], [ 0, %.critedge ]
  %i.zr = phi ptr [ %i.zq, %.loopexit166 ], [ %.pre294, %.critedge.5 ], [ %.pre294, %.critedge.4 ], [ %.pre294, %.critedge.3 ], [ %.pre294, %.critedge.2 ], [ %.pre294, %.critedge.1 ], [ %.pre294, %.critedge ] ; 2 uses
  %i.zs = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.zt = ptrtoint ptr %i.zs to i64
  %i.zu = ptrtoint ptr %i.zr to i64
  %i.zv = sub i64 %i.zt, %i.zu
  call void @_ZdlPvm(ptr noundef nonnull %i.zr, i64 noundef %i.zv) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.loopexit166, %.loopexit166.thread
  %.4308 = phi i32 [ %.4, %.loopexit166 ], [ %.4307, %.loopexit166.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 %.4308

bb.q:                                             ; preds = %bb.p, %bb.g, %bb.d
  %.pn148.pn.pn = phi { ptr, i32 } [ %.pn148.pn, %bb.p ], [ %i.hb, %bb.d ], [ %i.tt, %bb.g ]
  %i.zw = load ptr, ptr %3, align 8, !tbaa !57    ; 3 uses
  %.not.i.i.i159 = icmp eq ptr %i.zw, null
  br i1 %.not.i.i.i159, label %_ZNSt6vectorIdSaIdEED2Ev.exit160, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.zx = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.zy = ptrtoint ptr %i.zx to i64
  %i.zz = ptrtoint ptr %i.zw to i64
  %i.aaa = sub i64 %i.zy, %i.zz
  call void @_ZdlPvm(ptr noundef nonnull %i.zw, i64 noundef %i.aaa) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit160

_ZNSt6vectorIdSaIdEED2Ev.exit160:                 ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn148.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac32FundamentalMinimalSolver7ptsImpl13getSampleSizeEv(ptr noundef nonnull align 8 dereferenceable(217) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 7
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac32FundamentalMinimalSolver7ptsImpl23getMaxNumberOfSolutionsEv(ptr noundef nonnull align 8 dereferenceable(217) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 3
}

declare void @_ZN2cv9AlgorithmC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7
end_hunk_0
