Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/camera?download=true
inline.NumInlined: 1435
inline.NumDeleted: 584
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Camera6updateEP11LocalPlayerff:bb.a
  store <2 x float> %i.nh, ptr %10, align 8
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store float %i.ni, ptr %.sroa.257.0..sroa_idx, align 8
  %i.nj = load ptr, ptr %i.ms, align 8, !tbaa !68
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 336
  %i.nl = load ptr, ptr %i.nk, align 8
  call void %i.nl(ptr noundef nonnull align 8 dereferenceable(233) %i.ms, ptr noundef nonnull align 4 dereferenceable(12) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.nn = load i8, ptr %i.nm, align 4, !tbaa !59, !range !151, !noundef !152
  %i.no = trunc nuw i8 %i.nn to i1
  br i1 %i.no, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.nq = load float, ptr %i.np, align 4, !tbaa !155
  %i.nr = fdiv nsz float %2, %i.nq
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.nt = load float, ptr %i.ns, align 8, !tbaa !156 ; 3 uses
  %i.nu = fmul nsz float %i.nr, %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !492
  %i.nx = fadd nsz float %i.nw, %i.nu             ; 5 uses
  store float %i.nx, ptr %i.nv, align 4, !tbaa !492
  %i.ny = fcmp nsz ogt float %i.nt, 0.000000e+00
  br i1 %i.ny, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.oa = load float, ptr %i.nz, align 8, !tbaa !154 ; 2 uses
  %i.ob = fcmp nsz ult float %i.nx, %i.oa
  br i1 %i.ob, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.oc = fcmp nsz olt float %i.nt, 0.000000e+00
  br i1 %i.oc, label %bb.af, label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit

bb.af:                                            ; preds = %bb.ae
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.oe = load float, ptr %i.od, align 8, !tbaa !154 ; 2 uses
  %i.of = fcmp nsz ugt float %i.nx, %i.oe
  br i1 %i.of, label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %i.og = phi float [ %i.oe, %bb.af ], [ %i.oa, %bb.ad ] ; 2 uses
  store i8 0, ptr %i.nm, align 4, !tbaa !59
  store float %i.og, ptr %i.nv, align 4, !tbaa !492
  br label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit

bb.ah:                                            ; preds = %bb.ab
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 91
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !153, !range !151, !noundef !152
  %i.oj = trunc nuw i8 %i.oi to i1
  br i1 %i.oj, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ol = load float, ptr %i.ok, align 8, !tbaa !154 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 92
  store float %i.ol, ptr %i.om, align 4, !tbaa !492
  br label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.oo = load i8, ptr %i.on, align 4, !tbaa !493, !range !151, !noundef !152
  %i.op = trunc nuw i8 %i.oo to i1
  br i1 %i.op, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 748
  %i.or = load float, ptr %i.oq, align 4, !tbaa !494 ; 3 uses
  %i.os = fcmp nsz ogt float %i.or, 1.000000e-03
  br i1 %i.os, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 92
  store float %i.or, ptr %i.ot, align 4, !tbaa !492
  br label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ov = load float, ptr %i.ou, align 8, !tbaa !104 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 92
  store float %i.ov, ptr %i.ow, align 4, !tbaa !492
  br label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit

_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit:           ; preds = %bb.ae, %bb.af, %bb.ag, %bb.ai, %bb.am, %bb.al
  %i.ox = phi float [ %i.nx, %bb.ae ], [ %i.nx, %bb.af ], [ %i.og, %bb.ag ], [ %i.ol, %bb.ai ], [ %i.ov, %bb.am ], [ %i.or, %bb.al ] ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.oz = fcmp nsz olt float %i.ox, 1.000000e+00
  %i.pa = fcmp nsz ogt float %i.ox, 1.600000e+02
  %..i = select nsz i1 %i.pa, float 1.600000e+02, float %i.ox
  %.0.i = select nsz i1 %i.oz, float 1.000000e+00, float %..i
  store float %.0.i, ptr %i.oy, align 4, !tbaa !492
  %i.pb = load ptr, ptr @_ZN15RenderingEngine11s_singletonE, align 8, !tbaa !321 ; 2 uses
  %.not.i = icmp eq ptr %i.pb, null
  br i1 %.not.i, label %bb.an, label %_ZN15RenderingEngine13getWindowSizeEv.exit

bb.an:                                            ; preds = %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit
  call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 95, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN15RenderingEngine13getWindowSizeEv) #29
  unreachable

_ZN15RenderingEngine13getWindowSizeEv.exit:       ; preds = %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit
  %i.pc = call i64 @_ZNK15RenderingEngine14_getWindowSizeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.pb) ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.pc to i32
  %.sroa.5.0.extract.shift = lshr i64 %i.pc, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.pd = uitofp nsz i32 %.sroa.0.0.extract.trunc to float
  %i.pe = uitofp nsz i32 %.sroa.5.0.extract.trunc to float
  %i.pf = fdiv nsz float %i.pd, %i.pe             ; 3 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 152
  store float %i.pf, ptr %i.pg, align 8, !tbaa !495
  %i.ph = load float, ptr %i.oy, align 4, !tbaa !492
  %i.pi = fpext nsz float %i.ph to double
  %i.pj = fmul nsz double %i.pi, f0x400921FB54442D18
  %i.pk = fdiv nsz double %i.pj, 1.800000e+02
  %i.pl = fptrunc nsz double %i.pk to float
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.pn = fpext nsz float %i.pf to double         ; 2 uses
  %i.po = fdiv nsz double 1.600000e+00, %i.pn
  %i.pp = call nsz double @llvm.sqrt.f64(double %i.po) ; 2 uses
  %i.pq = fcmp nsz olt double %i.pp, 1.000000e+00
  %i.pr = select i1 %i.pq, double 1.000000e+00, double %i.pp ; 2 uses
  %i.ps = fcmp nsz olt double %i.pr, 1.400000e+00
  %i.pt = select i1 %i.ps, double %i.pr, double 1.400000e+00
  %i.pu = fpext nsz float %i.pl to double
  %i.pv = fmul nsz double %i.pt, %i.pu
  %i.pw = fptrunc nsz double %i.pv to float       ; 2 uses
  store float %i.pw, ptr %i.pm, align 8, !tbaa !61
  %i.px = fpext nsz float %i.pw to double
  %i.py = fmul nsz double %i.px, 5.000000e-01
  %i.pz = call nsz double @llvm.tan.f64(double %i.py)
  %i.qa = fmul nsz double %i.pz, %i.pn
  %i.qb = call nsz double @llvm.atan.f64(double %i.qa)
  %i.qc = fmul nsz double %i.qb, 2.000000e+00
  %i.qd = fptrunc nsz double %i.qc to float
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 156
  store float %i.qd, ptr %i.qe, align 4, !tbaa !322
  %i.qf = load ptr, ptr %i.lw, align 8, !tbaa !91 ; 2 uses
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !68
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 416
  %i.qi = load ptr, ptr %i.qh, align 8
  call void %i.qi(ptr noundef nonnull align 8 dereferenceable(233) %i.qf, float noundef %i.pf)
  %i.qj = load ptr, ptr %i.lw, align 8, !tbaa !91 ; 2 uses
  %i.qk = load float, ptr %i.pm, align 8, !tbaa !61
  %i.ql = load ptr, ptr %i.qj, align 8, !tbaa !68
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 424
  %i.qn = load ptr, ptr %i.qm, align 8
  call void %i.qn(ptr noundef nonnull align 8 dereferenceable(233) %i.qj, float noundef %i.qk)
  %i.qo = load ptr, ptr %i.lw, align 8, !tbaa !91 ; 2 uses
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !68
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 472
  %i.qr = load ptr, ptr %i.qq, align 8
  call void %i.qr(ptr noundef nonnull align 8 dereferenceable(233) %i.qo)
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.qt = load i8, ptr %i.qs, align 8, !tbaa !105, !range !151, !noundef !152
  %i.qu = trunc nuw i8 %i.qt to i1
  br i1 %i.qu, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN15RenderingEngine13getWindowSizeEv.exit
  call void @_ZN6Camera13addArmInertiaEf(ptr noundef nonnull align 8 dereferenceable(536) %0, float noundef %i.h)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN15RenderingEngine13getWindowSizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.qw = load float, ptr %i.qv, align 8, !tbaa !323
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !324
  %i.qz = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store float 6.500000e+01, ptr %i.qz, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  store <2 x float> <float -1.000000e+02, float 1.200000e+02>, ptr %12, align 8, !tbaa !60
  %i.ra = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store float -1.000000e+02, ptr %i.ra, align 8, !tbaa !90
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.rc = load float, ptr %i.rb, align 8, !tbaa !63
  %i.rd = call nsz noundef float @llvm.fabs.f32(float %i.rc)
  %i.re = call nsz float @llvm.fmuladd.f32(float %i.rd, float 3.200000e+02, float -4.000000e+01)
  %i.rf = fadd nsz float %i.qy, %i.re
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.rh = load float, ptr %i.rg, align 8, !tbaa !306 ; 3 uses
  %i.ri = fpext nsz float %i.rh to double         ; 4 uses
  %i.rj = fcmp nsz olt double %i.ri, 5.000000e-02
  %i.rk = fcmp nsz ogt float %i.rh, 5.000000e-01  ; 2 uses
  %or.cond230 = or i1 %i.rk, %i.rj
  %i.rl = insertelement <2 x float> poison, float %i.qw, i64 0
  %i.rm = insertelement <2 x float> %i.rl, float %i.rf, i64 1 ; 2 uses
  br i1 %or.cond230, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.rn = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ro = fadd nnan nsz double %i.ri, -5.000000e-01
  %i.rp = fmul nnan nsz double %i.ro, 2.000000e+00
  %i.rq = fptrunc nsz double %i.rp to float
  %.0217 = select nsz i1 %i.rk, float %i.rq, float 1.000000e+00 ; 2 uses
  %i.rr = fsub nsz float 1.000000e+00, %3         ; 2 uses
  %sqrt = call nsz float @llvm.sqrt.f32(float %i.rr)
  %isinf = fcmp nsz oeq float %i.rr, -inf
  %i.rs = fmul nsz float %sqrt, 5.000000e-01
  %i.rt = select i1 %isinf, float +inf, float %i.rs, !prof !496 ; 5 uses
  %i.ru = fmul nsz float %i.rt, %i.rt
  %i.rv = fmul nsz float %i.rt, %i.ru
  %i.rw = call nsz float @llvm.fmuladd.f32(float %i.rt, float 6.000000e+00, float -1.500000e+01)
  %i.rx = call nsz float @llvm.fmuladd.f32(float %i.rt, float %i.rw, float 1.000000e+01)
  %i.ry = fmul nsz float %i.rv, %i.rx
  %i.rz = fmul nsz float %i.ry, 2.000000e+00      ; 3 uses
  %i.sa = call nsz noundef float @llvm.pow.f32(float %i.rz, float 1.700000e+00)
  %i.sb = insertelement <2 x float> poison, float %.0217, i64 0
  %i.sc = shufflevector <2 x float> %i.sb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sd = fmul nnan nsz <2 x float> %i.sc, <float -3.500000e+01, float -2.500000e+01>
  %i.se = call nsz noundef float @llvm.pow.f32(float %i.rz, float 1.100000e+00)
  %i.sf = insertelement <2 x float> poison, float %i.se, i64 0
  %i.sg = insertelement <2 x float> %i.sf, float %i.sa, i64 1
  %i.sh = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sd, <2 x float> %i.sg, <2 x float> %i.rm)
  %i.si = fmul nnan nsz float %.0217, 7.000000e+01
  %i.sj = call nsz noundef float @llvm.pow.f32(float %i.rz, float 1.400000e+00)
  %i.sk = call nsz float @llvm.fmuladd.f32(float %i.si, float %i.sj, float 1.200000e+02) ; 2 uses
  store float %i.sk, ptr %i.rn, align 4, !tbaa !317
  %i.sl = fmul nsz float %i.sk, f0x3C8EFA35
  %i.sm = fpext nsz float %i.sl to double
  %i.sn = fmul nsz double %i.sm, 5.000000e-01
  %i.so = call nsz { double, double } @llvm.sincos.f64(double %i.sn)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %sincos34.i.i = phi { double, double } [ { double f0x3FEBB67AF02AD942, double f0x3FDFFFFFE4E6F746 }, %bb.ap ], [ %i.so, %bb.aq ] ; 2 uses
  %i.sp = phi <2 x float> [ %i.rm, %bb.ap ], [ %i.sh, %bb.aq ] ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !62
  %.not225 = icmp eq i32 %i.sr, -1
  br i1 %.not225, label %bb.az, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ss = call nsz noundef float @llvm.pow.f32(float %i.rh, float 8.000000e-01)
  %i.st = fpext nsz float %i.ss to double
  %i.su = fmul nsz double %i.ri, 1.800000e+00
  %i.sv = insertelement <2 x double> poison, double %i.st, i64 0
  %i.sw = insertelement <2 x double> %i.sv, double %i.su, i64 1
  %i.sx = fmul nsz <2 x double> %i.sw, splat (double f0x400921FB54442D18)
  %i.sy = call nsz <2 x double> @llvm.sin.v2f64(<2 x double> %i.sx)
  %i.sz = fpext <2 x float> %i.sp to <2 x double>
  %i.ta = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sy, <2 x double> <double -5.000000e+01, double 2.400000e+01>, <2 x double> %i.sz)
  %i.tb = fptrunc <2 x double> %i.ta to <2 x float>
  store <2 x float> %i.tb, ptr %11, align 8, !tbaa !60
  store float 7.750000e+01, ptr %i.qz, align 8, !tbaa !90
  %sin35.i.i = extractvalue { double, double } %sincos34.i.i, 0 ; 2 uses
  %cos36.i.i = extractvalue { double, double } %sincos34.i.i, 1 ; 2 uses
  %i.tc = insertelement <2 x double> poison, double %cos36.i.i, i64 0 ; 2 uses
  %i.td = shufflevector <2 x double> %i.tc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.te = fmul nsz <2 x double> %i.td, <double f0xBFE8836FA4556E5A, double f0x3FE491B7506B2987>
  %i.tf = insertelement <2 x double> poison, double %sin35.i.i, i64 0 ; 2 uses
  %i.tg = shufflevector <2 x double> %i.tf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.th = fmul nsz <2 x double> %i.tg, <double f0x3FE491B7506B2987, double f0xBFE8836FA4556E5A>
  %i.ti = fmul nsz <2 x double> %i.th, <double f0x3FE8836FA4556E5A, double f0xBFE8836FA4556E5A>
  %i.tj = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.te, <2 x double> splat (double f0x3FE491B7506B2987), <2 x double> %i.ti)
  %i.tk = fptrunc <2 x double> %i.tj to <2 x float> ; 3 uses
  %i.tl = extractelement <2 x float> %i.tk, i64 0 ; 2 uses
  %i.tm = extractelement <2 x float> %i.tk, i64 1 ; 2 uses
  %i.tn = insertelement <2 x double> %i.tf, double %cos36.i.i, i64 1
  %i.to = fmul nsz <2 x double> %i.tn, splat (double f0xBFE8836FA4556E5A)
  %i.tp = fmul nsz <2 x double> %i.to, <double f0xBFE491B7506B2987, double f0xBFE8836FA4556E5A>
  %i.tq = insertelement <2 x double> %i.tc, double %sin35.i.i, i64 1
  %i.tr = fmul nsz <2 x double> %i.tq, splat (double f0x3FE491B7506B2987)
  %i.ts = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tr, <2 x double> <double f0xBFE8836FA4556E5A, double f0x3FE491B7506B2987>, <2 x double> %i.tp)
  %i.tt = fptrunc <2 x double> %i.ts to <2 x float> ; 4 uses
  %foldExtExtBinop452 = fmul nsz <2 x float> %i.tt, %i.tt
  %i.tu = extractelement <2 x float> %foldExtExtBinop452, i64 1
  %i.tv = extractelement <2 x float> %i.tt, i64 0 ; 2 uses
  %i.tw = call nsz float @llvm.fmuladd.f32(float %i.tv, float %i.tv, float %i.tu)
  %i.tx = call nsz float @llvm.fmuladd.f32(float %i.tl, float %i.tl, float %i.tw)
  %i.ty = call nsz float @llvm.fmuladd.f32(float %i.tm, float %i.tm, float %i.tx)
  %i.tz = fpext nsz float %i.ty to double
  %i.ua = call nsz double @llvm.sqrt.f64(double %i.tz)
  %i.ub = fdiv nsz double 1.000000e+00, %i.ua
  %i.uc = fptrunc nsz double %i.ub to float
  %i.ud = insertelement <2 x float> poison, float %i.uc, i64 0
  %i.ue = shufflevector <2 x float> %i.ud, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uf = fmul nsz <2 x float> %i.ue, %i.tt       ; 4 uses
  %i.ug = fmul nsz <2 x float> %i.ue, %i.tk       ; 4 uses
  %i.uh = fmul nsz double %i.ri, f0x400921FB54442D18
  %i.ui = call nsz double @llvm.sin.f64(double %i.uh)
  %i.uj = fptrunc nsz double %i.ui to float       ; 6 uses
  %i.uk = extractelement <2 x float> %i.uf, i64 1
  %i.ul = fmul nsz float %i.uk, f0x3F1A62BD
  %i.um = extractelement <2 x float> %i.uf, i64 0
  %i.un = call nsz float @llvm.fmuladd.f32(float %i.um, float f0x3E7D2632, float %i.ul)
  %i.uo = extractelement <2 x float> %i.ug, i64 0
  %i.up = call nsz float @llvm.fmuladd.f32(float %i.uo, float f0x3EEB76CD, float %i.un)
  %i.uq = extractelement <2 x float> %i.ug, i64 1
  %i.ur = call nsz noundef float @llvm.fmuladd.f32(float %i.uq, float f0x3F1A62BD, float %i.up) ; 3 uses
  %i.us = fcmp nsz olt float %i.ur, 0.000000e+00  ; 3 uses
  %i.ut = fneg nsz <2 x float> %i.uf
  %i.uu = fneg nsz <2 x float> %i.ug
  %i.uv = fneg nsz float %i.ur
  %.sroa.047.0.i = select nsz i1 %i.us, <2 x float> %i.ut, <2 x float> %i.uf ; 3 uses
  %.sroa.10.0.i = select nsz i1 %i.us, <2 x float> %i.uu, <2 x float> %i.ug ; 3 uses
  %.020.i = select nsz i1 %i.us, float %i.uv, float %i.ur ; 2 uses
  %i.uw = fcmp nsz ugt float %.020.i, 9.990000e-01
  br i1 %i.uw, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ux = call nsz float @llvm.acos.f32(float %.020.i) ; 3 uses
  %i.uy = call nsz float @llvm.sin.f32(float %i.ux)
  %i.uz = fdiv nsz float 1.000000e+00, %i.uy      ; 2 uses
  %i.va = fsub nsz float 1.000000e+00, %i.uj
  %i.vb = fmul nsz float %i.va, %i.ux
  %i.vc = call nsz float @llvm.sin.f32(float %i.vb)
  %i.vd = fmul nsz float %i.vc, %i.uz
  %i.ve = fmul nsz float %i.ux, %i.uj
  %i.vf = call nsz float @llvm.sin.f32(float %i.ve)
  %i.vg = fmul nsz float %i.vf, %i.uz             ; 2 uses
  %i.vh = insertelement <2 x float> poison, float %i.vd, i64 0
  %i.vi = shufflevector <2 x float> %i.vh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vj = fmul nsz <2 x float> %.sroa.10.0.i, %i.vi
  %i.vk = insertelement <2 x float> poison, float %i.vg, i64 0
  %i.vl = shufflevector <2 x float> %i.vk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vm = fmul nsz <2 x float> %i.vl, <float f0x3EEB76CD, float f0x3F1A62BD> ; 2 uses
  %i.vn = fmul nsz <2 x float> %.sroa.047.0.i, %i.vi
  %i.vo = fmul nsz float %i.vg, f0x3E7D2632
  %i.vp = insertelement <2 x float> %i.vm, float %i.vo, i64 0
  %i.vq = fadd nsz <2 x float> %i.vn, %i.vp
  %i.vr = fadd nsz <2 x float> %i.vj, %i.vm
  br label %_ZN4core10quaternion5slerpES0_S0_ff.exit

bb.au:                                            ; preds = %bb.as
  %i.vs = fsub nsz float 1.000000e+00, %i.uj      ; 4 uses
  %.sroa.024.0.vec.extract.i.i = extractelement <2 x float> %.sroa.047.0.i, i64 0
  %i.vt = fmul nsz float %i.vs, %.sroa.024.0.vec.extract.i.i
  %.sroa.024.4.vec.extract.i.i = extractelement <2 x float> %.sroa.047.0.i, i64 1
  %i.vu = fmul nsz float %i.vs, %.sroa.024.4.vec.extract.i.i
  %.sroa.325.8.vec.extract.i.i = extractelement <2 x float> %.sroa.10.0.i, i64 0
  %i.vv = fmul nsz float %i.vs, %.sroa.325.8.vec.extract.i.i
  %.sroa.325.12.vec.extract.i.i = extractelement <2 x float> %.sroa.10.0.i, i64 1
  %i.vw = fmul nsz float %i.vs, %.sroa.325.12.vec.extract.i.i
  %i.vx = fmul nsz float %i.uj, f0x3E7D2632
  %i.vy = fmul nsz float %i.uj, f0x3F1A62BD       ; 2 uses
  %i.vz = fmul nsz float %i.uj, f0x3EEB76CD
  %i.wa = fadd nsz float %i.vx, %i.vt             ; 3 uses
  %i.wb = fadd nsz float %i.vy, %i.vu             ; 3 uses
  %i.wc = fadd nsz float %i.vz, %i.vv             ; 3 uses
  %i.wd = fadd nsz float %i.vy, %i.vw             ; 3 uses
  %i.we = fmul nsz float %i.wb, %i.wb
  %i.wf = call nsz float @llvm.fmuladd.f32(float %i.wa, float %i.wa, float %i.we)
  %i.wg = call nsz float @llvm.fmuladd.f32(float %i.wc, float %i.wc, float %i.wf)
  %i.wh = call nsz float @llvm.fmuladd.f32(float %i.wd, float %i.wd, float %i.wg)
  %i.wi = fpext nsz float %i.wh to double
  %i.wj = call nsz double @llvm.sqrt.f64(double %i.wi)
  %i.wk = fdiv nsz double 1.000000e+00, %i.wj
  %i.wl = fptrunc nsz double %i.wk to float       ; 4 uses
  %i.wm = fmul nsz float %i.wa, %i.wl
  %i.wn = insertelement <2 x float> poison, float %i.wm, i64 0
  %i.wo = fmul nsz float %i.wb, %i.wl
  %.sroa.018.4.vec.insert.i.i = insertelement <2 x float> %i.wn, float %i.wo, i64 1
  %i.wp = fmul nsz float %i.wc, %i.wl
  %i.wq = insertelement <2 x float> poison, float %i.wp, i64 0
  %i.wr = fmul nsz float %i.wd, %i.wl
  %.sroa.8.12.vec.insert.i.i = insertelement <2 x float> %i.wq, float %i.wr, i64 1
  br label %_ZN4core10quaternion5slerpES0_S0_ff.exit

_ZN4core10quaternion5slerpES0_S0_ff.exit:         ; preds = %bb.at, %bb.au
  %.sroa.0.4.vec.insert.i29.sink.i = phi <2 x float> [ %.sroa.018.4.vec.insert.i.i, %bb.au ], [ %i.vq, %bb.at ] ; 7 uses
  %.sroa.3.12.vec.insert.i31.sink.i = phi <2 x float> [ %.sroa.8.12.vec.insert.i.i, %bb.au ], [ %i.vr, %bb.at ] ; 7 uses
  %.sroa.7.12.vec.extract = extractelement <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, i64 1 ; 5 uses
  %i.ws = fmul nsz float %.sroa.7.12.vec.extract, %.sroa.7.12.vec.extract
  %i.wt = fpext nsz float %i.ws to double         ; 2 uses
  %.sroa.0321.0.vec.extract = extractelement <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, i64 0 ; 3 uses
  %foldExtExtBinop454 = fmul nsz <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, %.sroa.0.4.vec.insert.i29.sink.i
  %i.wu = extractelement <2 x float> %foldExtExtBinop454, i64 0
  %i.wv = fpext nsz float %i.wu to double         ; 2 uses
  %.sroa.0321.4.vec.extract = extractelement <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, i64 1 ; 3 uses
  %i.ww = fmul nsz float %.sroa.0321.4.vec.extract, %.sroa.0321.4.vec.extract
  %i.wx = fpext nsz float %i.ww to double         ; 2 uses
  %.sroa.7.8.vec.extract = extractelement <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, i64 0
  %foldExtExtBinop456 = fmul nsz <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, %.sroa.3.12.vec.insert.i31.sink.i
  %i.wy = extractelement <2 x float> %foldExtExtBinop456, i64 0
  %i.wz = fpext nsz float %i.wy to double         ; 2 uses
  %i.xa = fneg nsz float %.sroa.7.8.vec.extract
  %i.xb = fmul nsz float %.sroa.0321.0.vec.extract, %i.xa
  %i.xc = call nsz float @llvm.fmuladd.f32(float %.sroa.0321.4.vec.extract, float %.sroa.7.12.vec.extract, float %i.xb)
  %i.xd = fpext nsz float %i.xc to double
  %i.xe = fmul nsz double %i.xd, 2.000000e+00     ; 4 uses
  %i.xf = fadd nsz double %i.xe, -1.000000e+00
  %i.xg = call nsz noundef double @llvm.fabs.f64(double %i.xf)
  %i.xh = fcmp nsz ugt double %i.xg, f0x3EB0C6F7A0B5ED8D
  br i1 %i.xh, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN4core10quaternion5slerpES0_S0_ff.exit
  %i.xi = fpext nsz float %.sroa.0321.0.vec.extract to double
  %i.xj = fpext nsz float %.sroa.7.12.vec.extract to double
  %i.xk = call nsz double @llvm.atan2.f64(double %i.xi, double %i.xj)
  %i.xl = fmul nsz double %i.xk, -2.000000e+00
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

bb.aw:                                            ; preds = %_ZN4core10quaternion5slerpES0_S0_ff.exit
  %i.xm = fadd nsz double %i.xe, 1.000000e+00
  %i.xn = call nsz noundef double @llvm.fabs.f64(double %i.xm)
  %i.xo = fcmp nsz ugt double %i.xn, f0x3EB0C6F7A0B5ED8D
  br i1 %i.xo, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.xp = fpext nsz float %.sroa.0321.0.vec.extract to double
  %i.xq = fpext nsz float %.sroa.7.12.vec.extract to double
  %i.xr = call nsz double @llvm.atan2.f64(double %i.xp, double %i.xq)
  %i.xs = fmul nsz double %i.xr, 2.000000e+00
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

bb.ay:                                            ; preds = %bb.aw
  %i.xt = shufflevector <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, <2 x i32> <i32 1, i32 2>
  %i.xu = fmul nsz <2 x float> %i.xt, %.sroa.3.12.vec.insert.i31.sink.i
  %i.xv = fsub nsz double %i.wv, %i.wx
  %i.xw = fsub nsz double %i.xv, %i.wz
  %i.xx = fadd nsz double %i.xw, %i.wt
  %i.xy = shufflevector <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xz = shufflevector <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, <2 x i32> <i32 0, i32 2>
  %i.ya = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xy, <2 x float> %i.xz, <2 x float> %i.xu)
  %i.yb = fpext <2 x float> %i.ya to <2 x double>
  %i.yc = fmul nsz <2 x double> %i.yb, splat (double 2.000000e+00) ; 2 uses
  %i.yd = extractelement <2 x double> %i.yc, i64 0
  %i.ye = call nsz double @llvm.atan2.f64(double %i.yd, double %i.xx)
  %i.yf = fadd nsz double %i.wv, %i.wx
  %i.yg = fsub nsz double %i.wz, %i.yf
  %i.yh = fadd nsz double %i.yg, %i.wt
  %i.yi = extractelement <2 x double> %i.yc, i64 1
  %i.yj = call nsz double @llvm.atan2.f64(double %i.yi, double %i.yh)
  %i.yk = fcmp nsz olt double %i.xe, -1.000000e+00
  %i.yl = select i1 %i.yk, double -1.000000e+00, double %i.xe ; 2 uses
  %i.ym = fcmp nsz olt double %i.yl, 1.000000e+00
  %i.yn = select i1 %i.ym, double %i.yl, double 1.000000e+00
  %i.yo = call nsz double @llvm.asin.f64(double %i.yn)
  %i.yp = insertelement <2 x double> poison, double %i.yj, i64 0
  %i.yq = insertelement <2 x double> %i.yp, double %i.yo, i64 1
  %i.yr = fptrunc <2 x double> %i.yq to <2 x float>
  %i.ys = fmul nsz <2 x float> %i.yr, splat (float f0x42652EE0)
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit: ; preds = %bb.av, %bb.ax, %bb.ay
  %.in = phi double [ %i.xs, %bb.ax ], [ %i.ye, %bb.ay ], [ %i.xl, %bb.av ]
  %i.yt = phi <2 x float> [ <float 0.000000e+00, float -9.000000e+01>, %bb.ax ], [ %i.ys, %bb.ay ], [ <float 0.000000e+00, float 9.000000e+01>, %bb.av ]
  %i.yu = fptrunc double %.in to float
  store <2 x float> %i.yt, ptr %12, align 8, !tbaa !60
  %i.yv = fmul nsz float %i.yu, f0x42652EE0
  store float %i.yv, ptr %i.ra, align 8, !tbaa !90
  br label %bb.ba

bb.az:                                            ; preds = %bb.ar
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !301
  %i.yy = call nsz { float, float } @llvm.modf.f32(float %i.yx)
  %i.yz = extractvalue { float, float } %i.yy, 0  ; 2 uses
  %i.za = fpext nsz float %i.yz to double
  %i.zb = fmul nsz double %i.za, f0x400921FB54442D18
  %i.zc = fmul nsz double %i.zb, 2.000000e+00
  %i.zd = call nsz double @llvm.sin.f64(double %i.zc)
  %i.ze = fpext <2 x float> %i.sp to <2 x double>
  %i.zf = fneg nsz double %i.zd
  %i.zg = fmul nsz float %i.yz, 2.000000e+00
  %i.zh = call nsz { float, float } @llvm.modf.f32(float %i.zg)
  %i.zi = extractvalue { float, float } %i.zh, 0
  %i.zj = fpext nsz float %i.zi to double
  %i.zk = fmul nsz double %i.zj, f0x400921FB54442D18
  %i.zl = call nsz double @llvm.sin.f64(double %i.zk)
  %i.zm = insertelement <2 x double> poison, double %i.zf, i64 0
  %i.zn = insertelement <2 x double> %i.zm, double %i.zl, i64 1
  %i.zo = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zn, <2 x double> splat (double 3.000000e+00), <2 x double> %i.ze)
  %i.zp = fptrunc <2 x double> %i.zo to <2 x float>
  store <2 x float> %i.zp, ptr %11, align 8, !tbaa !60
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !93 ; 2 uses
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !68
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 224
  %i.zu = load ptr, ptr %i.zt, align 8
  call void %i.zu(ptr noundef nonnull align 8 dereferenceable(218) %i.zr, ptr noundef nonnull align 4 dereferenceable(12) %11)
  %i.zv = load ptr, ptr %i.zq, align 8, !tbaa !93 ; 2 uses
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !68
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 208
  %i.zy = load ptr, ptr %i.zx, align 8
  call void %i.zy(ptr noundef nonnull align 8 dereferenceable(218) %i.zv, ptr noundef nonnull align 4 dereferenceable(12) %12)
  %i.zz = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.aab = load i32, ptr %i.zz, align 8, !tbaa !157 ; 2 uses
  store i32 %i.aab, ptr %i.aaa, align 4, !tbaa !157
  %i.aac = load ptr, ptr %i.zq, align 8, !tbaa !93
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !58
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 712
  %i.aag = load float, ptr %i.aaf, align 8, !tbaa !298
  call void @_ZN18WieldMeshSceneNode25setLightColorAndAnimationEN5video6SColorEf(ptr noundef nonnull align 8 dereferenceable(352) %i.aac, i32 %i.aab, float noundef %i.aag)
  call void @_ZN6Camera18updateViewingRangeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.aah = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.sroa.01.0.copyload.i291 = load <2 x float>, ptr %i.aah, align 8, !tbaa !60 ; 2 uses
  %.sroa.22.0..sroa_idx.i292 = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.sroa.22.0.copyload.i293 = load float, ptr %.sroa.22.0..sroa_idx.i292, align 8, !tbaa !60 ; 3 uses
  %.sroa.0311.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i291, i64 0 ; 3 uses
  %i.aai = call nsz noundef float @hypotf(float noundef %.sroa.0311.0.vec.extract, float noundef %.sroa.22.0.copyload.i293) #30
  %i.aaj = fcmp nsz ogt float %i.aai, 1.000000e+01
  %.sroa.0311.4.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i291, i64 1 ; 3 uses
  %i.aak = call nsz noundef float @llvm.fabs.f32(float %.sroa.0311.4.vec.extract)
  %i.aal = fcmp nsz ogt float %i.aak, 1.000000e+01
  br i1 %i.aaj, label %.thread396, label %bb.bb

.thread396:                                       ; preds = %bb.ba
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 418
  %i.aan = load i8, ptr %i.aam, align 2, !tbaa !452, !range !151, !noundef !152
  %i.aao = trunc nuw i8 %i.aan to i1
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.aap = getelementptr inbounds nuw i8, ptr %1, i64 423
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !497, !range !151, !noundef !152
  %i.aar = trunc nuw i8 %i.aaq to i1
  br i1 %i.aar, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.thread396, %bb.bb
  %i.aas = phi i1 [ %i.aao, %.thread396 ], [ false, %bb.bb ]
  %i.aat = getelementptr inbounds nuw i8, ptr %1, i64 419
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !498, !range !151, !noundef !152
  %i.aav = trunc nuw i8 %i.aau to i1
  %i.aaw = or i1 %i.aas, %i.aav
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %or.cond = phi i1 [ false, %bb.bb ], [ %i.aaw, %bb.bc ]
  br i1 %i.aal, label %bb.be, label %._crit_edge.i.i

bb.be:                                            ; preds = %bb.bd
  %i.aax = getelementptr inbounds nuw i8, ptr %1, i64 422
  %i.aay = load i8, ptr %i.aax, align 2, !tbaa !499, !range !151, !noundef !152
  %i.aaz = trunc nuw i8 %i.aay to i1
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.be, %bb.bd
  %i.aba = phi i1 [ false, %bb.bd ], [ %i.aaz, %bb.be ]
  %i.abb = load ptr, ptr @g_settings, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.abc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.abc, ptr %13, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.abc, ptr noundef nonnull align 1 dereferenceable(9) @.str.4, i64 9, i1 false)
  %i.abd = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 9, ptr %i.abd, align 8, !tbaa !65
  %i.abe = getelementptr inbounds nuw i8, ptr %13, i64 25
  store i8 0, ptr %i.abe, align 1, !tbaa !66
  %i.abf = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.abb, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %._crit_edge.i.i
  br i1 %i.abf, label %._crit_edge.i.i296, label %.critedge232

._crit_edge.i.i296:                               ; preds = %bb.bf
  %i.abg = load ptr, ptr %i.aad, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.abh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.abh, ptr %14, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.abh, ptr noundef nonnull align 1 dereferenceable(3) @.str.5, i64 3, i1 false)
  %i.abi = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 3, ptr %i.abi, align 8, !tbaa !65
  %i.abj = getelementptr inbounds nuw i8, ptr %14, i64 19
  store i8 0, ptr %i.abj, align 1, !tbaa !66
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abg, i64 1384
  %i.abl = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.abk, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %.critedge unwind label %bb.bi

.critedge:                                        ; preds = %._crit_edge.i.i296
  %.not.i.i.i.i = icmp ne ptr %i.abl, null
  %i.abm = load ptr, ptr %14, align 8, !tbaa !94  ; 2 uses
  %i.abn = icmp eq ptr %i.abm, %i.abh
  br i1 %i.abn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.abo = load i64, ptr %i.abh, align 8, !tbaa !66
  %i.abp = add i64 %i.abo, 1
  call void @_ZdlPvm(ptr noundef %i.abm, i64 noundef %i.abp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.critedge232

.critedge232:                                     ; preds = %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.abq = phi i1 [ %.not.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.bf ]
  %i.abr = load ptr, ptr %13, align 8, !tbaa !94  ; 2 uses
  %i.abs = icmp eq ptr %i.abr, %i.abc
  br i1 %i.abs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301: ; preds = %.critedge232
  %i.abt = load i64, ptr %i.abc, align 8, !tbaa !66
  %i.abu = add i64 %i.abt, 1
  call void @_ZdlPvm(ptr noundef %i.abr, i64 noundef %i.abu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303: ; preds = %.critedge232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.aba
  %or.cond3.not = xor i1 %or.cond3, true
  %or.cond5 = or i1 %i.abq, %or.cond3.not
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  br i1 %or.cond5, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303
  store i32 1, ptr %i.abv, align 8, !tbaa !299
  %i.abw = fmul nsz float %.sroa.0311.4.vec.extract, %.sroa.0311.4.vec.extract
  %i.abx = call nsz float @llvm.fmuladd.f32(float %.sroa.0311.0.vec.extract, float %.sroa.0311.0.vec.extract, float %i.abw)
  %i.aby = call nsz float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i293, float %.sroa.22.0.copyload.i293, float %i.abx)
  %i.abz = call nsz noundef float @llvm.sqrt.f32(float %i.aby) ; 2 uses
  %i.aca = fcmp nsz olt float %i.abz, 7.000000e+01
  %i.acb = select nsz i1 %i.aca, float %i.abz, float 7.000000e+01
  br label %.sink.split444

bb.bh:                                            ; preds = %._crit_edge.i.i
  %i.acc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %._crit_edge.i.i296
  %i.acd = landingpad { ptr, i32 }
          cleanup
  %i.ace = load ptr, ptr %14, align 8, !tbaa !94  ; 2 uses
  %i.acf = icmp eq ptr %i.ace, %i.abh
  br i1 %i.acf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304: ; preds = %bb.bi
  %i.acg = load i64, ptr %i.abh, align 8, !tbaa !66
  %i.ach = add i64 %i.acg, 1
  call void @_ZdlPvm(ptr noundef %i.ace, i64 noundef %i.ach) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306, %bb.bh
  %.pn.pn = phi { ptr, i32 } [ %i.acd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306 ], [ %i.acc, %bb.bh ]
  %i.aci = load ptr, ptr %13, align 8, !tbaa !94  ; 2 uses
  %i.acj = icmp eq ptr %i.aci, %i.abc
  br i1 %i.acj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307: ; preds = %bb.bj
  %i.ack = load i64, ptr %i.abc, align 8, !tbaa !66
  %i.acl = add i64 %i.ack, 1
  call void @_ZdlPvm(ptr noundef %i.aci, i64 noundef %i.acl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn.pn

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303
  %i.acm = load i32, ptr %i.abv, align 8, !tbaa !299
  %i.acn = icmp eq i32 %i.acm, 1
  br i1 %i.acn, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 2, ptr %i.abv, align 8, !tbaa !299
  br label %.sink.split444

.sink.split444:                                   ; preds = %bb.bg, %bb.bl
  %.sink445 = phi float [ 6.000000e+01, %bb.bl ], [ %i.acb, %bb.bg ]
  %i.aco = getelementptr inbounds nuw i8, ptr %0, i64 172
  store float %.sink445, ptr %i.aco, align 4, !tbaa !300
  br label %bb.bm

bb.bm:                                            ; preds = %.sink.split444, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

declare noundef ptr @_ZNK11LocalPlayer9getParentEv(ptr noundef nonnull align 8 dereferenceable(864)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

declare { <2 x float>, float } @_ZNK11LocalPlayer12getEyeOffsetEv(ptr noundef nonnull align 8 dereferenceable(864)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sin.f64(double) #11

declare noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440)) local_unnamed_addr #3

declare i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144), i48, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.tan.f64(double) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan.f64(double) #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN6Camera13addArmInertiaEf(ptr noundef nonnull align 8 dereferenceable(536) %0, float noundef %1) local_unnamed_addr #14 comdat align 2 {
_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !500 ; 3 uses
  %i.c = fsub nsz float %i.b, %1                  ; 3 uses
  %i.d = fcmp nsz olt float %i.c, -1.000000e+02
  %i.e = fcmp nsz ogt float %i.c, 1.000000e+02
  %..i = select nsz i1 %i.e, float 1.000000e+02, float %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !501 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.j = load float, ptr %i.i, align 4, !tbaa !320 ; 4 uses
  %i.k = fsub nsz float %i.h, %i.j
  %i.l = insertelement <2 x float> poison, float %..i, i64 0
  %i.m = insertelement <2 x float> %i.l, float %i.k, i64 1
  %i.n = fdiv nsz <2 x float> %i.m, splat (float 1.600000e-02) ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = tail call float @llvm.fabs.f32(float %i.o)
  %i.q = fmul nsz float %i.p, f0x3C23D70A
  %i.r = select i1 %i.d, float f0x4279FFFE, float %i.q ; 5 uses
  store float %i.r, ptr %i.f, align 8, !tbaa !502
  %i.s = extractelement <2 x float> %i.n, i64 1
  %i.t = tail call nsz noundef float @llvm.fabs.f32(float %i.s) ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 132
  store float %i.t, ptr %i.u, align 4, !tbaa !503
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.x = load <2 x float>, ptr %i.v, align 8, !tbaa !60 ; 5 uses
  %i.y = fsub nsz <2 x float> <float 5.500000e+01, float -3.500000e+01>, %i.x
  %i.z = tail call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.y) ; 5 uses
  %i.aa = fcmp nsz ogt float %i.r, 1.000000e+00
  br i1 %i.aa, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit
  %i.ab = fcmp nsz ogt float %i.t, 1.000000e+00
  %i.ac = extractelement <2 x float> %i.x, i64 0  ; 3 uses
  br i1 %i.ab, label %bb.f, label %bb.l

bb.b:                                             ; preds = %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !504
  %i.af = fcmp nsz ogt float %i.r, %i.ae
  br i1 %i.af, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store float %i.r, ptr %i.ad, align 8, !tbaa !504
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ag = extractelement <2 x float> %i.z, i64 0
  %i.ah = fneg nsz float %i.ag
  %i.ai = tail call nsz float @llvm.fmuladd.f32(float %i.ah, float 1.000000e-01, float %i.r)
  %i.aj = fmul nsz float %i.ai, 1.200000e-01      ; 2 uses
  %i.ak = fcmp nsz olt float %i.b, %1
  %i.al = fneg nsz float %i.aj
  %i.am = select nsz i1 %i.ak, float %i.aj, float %i.al
  %i.an = extractelement <2 x float> %i.x, i64 0
  %i.ao = fadd nsz float %i.an, %i.am             ; 3 uses
  %i.ap = fcmp nsz une float %i.b, %1
  br i1 %i.ap, label %bb.e, label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit25

bb.e:                                             ; preds = %bb.d
  store float %1, ptr %i.a, align 8, !tbaa !500
  br label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit25

_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit25:         ; preds = %bb.e, %bb.d
  %i.aq = fcmp nsz olt float %i.ao, 5.150000e+01
  %i.ar = fcmp nsz ogt float %i.ao, 5.850000e+01
  %..i23 = select nsz i1 %i.ar, float 5.850000e+01, float %i.ao
  %.0.i24 = select nsz i1 %i.aq, float 5.150000e+01, float %..i23 ; 2 uses
  store float %.0.i24, ptr %i.v, align 8, !tbaa !323
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit25
  %.val = phi float [ %i.ac, %bb.a ], [ %.0.i24, %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit25 ]
  %i.as = fcmp nsz ogt float %i.t, 1.000000e+00
  %i.at = extractelement <2 x float> %i.x, i64 1  ; 2 uses
  br i1 %i.as, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !505
  %i.aw = fcmp nsz ogt float %i.t, %i.av
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store float %i.t, ptr %i.au, align 4, !tbaa !505
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = extractelement <2 x float> %i.z, i64 1
  %i.ay = fneg nsz float %i.ax
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %i.ay, float 1.000000e-01, float %i.t)
  %i.ba = fmul nsz float %i.az, 1.200000e-01      ; 2 uses
  %i.bb = fcmp nsz ogt float %i.h, %i.j
  %i.bc = fneg nsz float %i.ba
  %i.bd = select nsz i1 %i.bb, float %i.ba, float %i.bc
  %i.be = fadd nsz float %i.at, %i.bd             ; 3 uses
  %i.bf = fcmp nsz une float %i.h, %i.j
  br i1 %i.bf, label %bb.j, label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit28

bb.j:                                             ; preds = %bb.i
  store float %i.j, ptr %i.g, align 4, !tbaa !501
  br label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit28

_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit28:         ; preds = %bb.j, %bb.i
  %i.bg = fcmp nsz olt float %i.be, -4.000000e+01
  %i.bh = fcmp nsz ogt float %i.be, -3.000000e+01
  %..i26 = select nsz i1 %i.bh, float -3.000000e+01, float %i.be
  %.0.i27 = select nsz i1 %i.bg, float -4.000000e+01, float %..i26 ; 2 uses
  store float %.0.i27, ptr %i.w, align 4, !tbaa !324
  br label %bb.k

bb.k:                                             ; preds = %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit28, %bb.f
  %.val22 = phi float [ %.0.i27, %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit28 ], [ %i.at, %bb.f ]
  %i.bi = insertelement <2 x float> poison, float %.val, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %.val22, i64 1
  %i.bk = fadd nsz <2 x float> %i.bj, <float -5.500000e+01, float 3.500000e+01> ; 4 uses
  %i.bl = tail call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bk) ; 3 uses
  %i.bm = extractelement <2 x float> %i.bl, i64 0 ; 3 uses
  %i.bn = extractelement <2 x float> %i.bl, i64 1 ; 3 uses
  %i.bo = fcmp nsz ult float %i.bm, %i.bn         ; 2 uses
  %i.bp = extractelement <2 x float> %i.bk, i64 0 ; 2 uses
  %i.bq = fdiv nsz float %i.bp, %i.bm
  %.018.i = select nsz i1 %i.bo, float %i.bp, float %i.bq ; 2 uses
  %i.br = fdiv nsz <2 x float> splat (float 1.000000e+00), %i.bl
  %i.bs = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bt = insertelement <2 x float> %i.bs, float %.018.i, i64 1
  %i.bu = fmul nsz <2 x float> %i.br, %i.bt       ; 2 uses
  %i.bv = extractelement <2 x float> %i.bu, i64 0
  %i.bw = extractelement <2 x float> %i.bk, i64 1
  %.0.i29 = select nsz i1 %i.bo, float %i.bw, float %i.bv ; 2 uses
  %i.bx = fcmp nsz ult float %i.bn, %i.bm         ; 2 uses
  %i.by = fdiv nsz float %.0.i29, %i.bn
  %i.bz = extractelement <2 x float> %i.bu, i64 1
  %.119.i = select nsz i1 %i.bx, float %.018.i, float %i.bz
  %.1.i = select nsz i1 %i.bx, float %.0.i29, float %i.by
  %i.ca = insertelement <2 x float> poison, float %.119.i, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %.1.i, i64 1
  %i.cc = tail call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cb)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 120
  store <2 x float> %i.cc, ptr %i.cd, align 8, !tbaa !60
  br label %bb.q

bb.l:                                             ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cg = fdiv nsz <2 x float> %i.z, <float 2.000000e+01, float 1.500000e+01> ; 2 uses
  %i.ch = extractelement <2 x float> %i.cg, i64 0
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.cj = load <2 x float>, ptr %i.ce, align 8, !tbaa !60 ; 2 uses
  %i.ck = fcmp nsz olt <2 x float> %i.cj, splat (float 1.500000e+01)
  %i.cl = select <2 x i1> %i.ck, <2 x float> %i.cj, <2 x float> splat (float 1.500000e+01) ; 2 uses
  %i.cm = load <2 x float>, ptr %i.cf, align 8, !tbaa !60
  %i.cn = fsub nsz <2 x float> splat (float 1.000000e+00), %i.cm
  %i.co = fadd nsz <2 x float> %i.cn, splat (float 1.000000e+00) ; 2 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.cl, %i.co
  %i.cp = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cq = fmul nsz float %i.cp, 3.500000e-01
  %i.cr = fmul nsz float %i.ch, %i.cq             ; 2 uses
  %foldExtExtBinop48 = fmul nsz <2 x float> %i.cl, %i.co
  %i.cs = extractelement <2 x float> %foldExtExtBinop48, i64 1
  %i.ct = fmul nsz float %i.cs, 2.500000e-01
  %i.cu = extractelement <2 x float> %i.cg, i64 1
  %i.cv = fmul nsz float %i.cu, %i.ct             ; 2 uses
  %i.cw = extractelement <2 x float> %i.z, i64 0
  %i.cx = fcmp nsz olt float %i.cw, 1.000000e-01
  br i1 %i.cx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store float 0.000000e+00, ptr %i.ce, align 8, !tbaa !504
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cy = fcmp nsz ogt float %i.ac, 5.500000e+01
  %i.cz = fneg nsz float %i.cr
  %i.da = select nsz i1 %i.cy, float %i.cr, float %i.cz
  %i.db = fsub nsz float %i.ac, %i.da
  store float %i.db, ptr %i.v, align 8, !tbaa !323
  %i.dc = extractelement <2 x float> %i.z, i64 1
  %i.dd = fcmp nsz olt float %i.dc, 1.000000e-01
  br i1 %i.dd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store float 0.000000e+00, ptr %i.ci, align 4, !tbaa !505
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.de = extractelement <2 x float> %i.x, i64 1  ; 2 uses
  %i.df = fcmp nsz ogt float %i.de, -3.500000e+01
  %i.dg = fneg nsz float %i.cv
  %i.dh = select nsz i1 %i.df, float %i.cv, float %i.dg
  %i.di = fsub nsz float %i.de, %i.dh
  store float %i.di, ptr %i.w, align 4, !tbaa !324
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k
  ret void
}

declare void @_ZN18WieldMeshSceneNode25setLightColorAndAnimationEN5video6SColorEf(ptr noundef nonnull align 8 dereferenceable(352), i32, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Camera18updateViewingRangeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(536) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr @g_settings, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.b, ptr noundef nonnull align 1 dereferenceable(13) @.str.6, i64 13, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 13, ptr %i.c, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 0, ptr %i.d, align 1, !tbaa !66
  %i.e = invoke noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.f = load ptr, ptr %1, align 8, !tbaa !94     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.b, align 8, !tbaa !66
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !91   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 400
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(233) %i.k, float noundef 1.000000e+00)
  %i.o = fptosi float %i.e to i16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.q = load float, ptr %i.p, align 4, !tbaa !322 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = load float, ptr %i.r, align 8, !tbaa !61 ; 2 uses
  %i.t = fcmp nsz ogt float %i.q, %i.s
  %..i = select nsz i1 %i.t, float %i.q, float %i.s
  %i.u = call noundef signext i16 @_Z10adjustDistsf(i16 noundef signext %i.o, float noundef %..i)
  %i.v = sitofp nsz i16 %i.u to double
  %i.w = call nsz noundef double @llvm.minnum.f64(double %i.v, double 6.000000e+03)
  %i.x = fptrunc nsz double %i.w to float         ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !506, !nonnull !152, !align !507 ; 2 uses
  store float %i.x, ptr %i.z, align 4, !tbaa !509
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !510, !range !151, !noundef !152
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !91  ; 2 uses
  %i.ae = call nnan nsz float @llvm.maxnum.f32(float %i.x, float 2.000000e+03)
  %i.af = fmul nnan nsz float %i.ae, 1.000000e+01
  %.sink = select i1 %i.ac, float 1.000000e+05, float %i.af
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 408
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(233) %i.ad, float noundef %.sink)
  ret void

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %1, align 8, !tbaa !94    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.b
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  %i.am = load i64, ptr %i.b, align 8, !tbaa !66
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.aj
}

declare noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef signext i16 @_Z10adjustDistsf(i16 noundef signext, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6Camera10setDiggingEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(536) %0, i32 noundef %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.b, align 4, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  store float 0.000000e+00, ptr %i.c, align 8, !tbaa !306
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.b, align 4, !tbaa !62
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %1, ptr %i.b, align 4, !tbaa !62
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Camera5wieldERK9ItemStackb(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(296) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !65   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = load i64, ptr %i.d, align 8, !tbaa !65
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread4, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.i = load ptr, ptr %1, align 8, !tbaa !94
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.i, ptr %i.h, i64 %i.c)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread4, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread4: ; preds = %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = getelementptr i8, ptr %i.k, i64 -80
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68
  %i.q = getelementptr i8, ptr %i.p, i64 -80
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 %i.r
  %i.t = tail call noundef zeroext i1 @_ZNK9IMetadataeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  br i1 %i.t, label %bb.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread4, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(296) %i.a, ptr noundef nonnull align 8 dereferenceable(296) %1)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i32, ptr %i.v, align 8
  store i32 %i.w, ptr %i.u, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load i8, ptr %i.x, align 8, !tbaa !69, !range !151, !noundef !152
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %i.y, ptr %i.z, align 8, !tbaa !69
  %i.aa = icmp eq ptr %1, %i.a
  br i1 %i.aa, label %_ZN9ItemStackaSERKS_.exit, label %bb.c

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSL_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %i.ac)
  br label %_ZN9ItemStackaSERKS_.exit

_ZN9ItemStackaSERKS_.exit:                        ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @_ZNSt22_Optional_payload_baseI16ToolCapabilitiesE14_M_copy_assignERKS1_(ptr noundef nonnull align 8 dereferenceable(120) %i.ad, ptr noundef nonnull align 8 dereferenceable(120) %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @_ZNSt22_Optional_payload_baseI13WearBarParamsE14_M_copy_assignERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.af, ptr noundef nonnull align 8 dereferenceable(64) %i.ag)
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN9ItemStackaSERKS_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !93
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !58
  tail call void @_ZN18WieldMeshSceneNode7setItemERK9ItemStackP6Clientb(ptr noundef nonnull align 8 dereferenceable(352) %i.ai, ptr noundef nonnull align 8 dereferenceable(296) %i.a, ptr noundef %i.ak, i1 noundef zeroext true)
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !93
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 532
  %.sroa.0.0.copyload.i = load i32, ptr %i.am, align 4, !tbaa !157
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 712
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !298
  tail call void @_ZN18WieldMeshSceneNode25setLightColorAndAnimationEN5video6SColorEf(ptr noundef nonnull align 8 dereferenceable(352) %i.al, i32 %.sroa.0.0.copyload.i, float noundef %i.ap)
  br label %bb.i

bb.e:                                             ; preds = %_ZN9ItemStackaSERKS_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !63 ; 3 uses
  %i.as = fcmp nsz ogt float %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = fneg nsz float %i.ar
  store float %i.at, ptr %i.aq, align 8, !tbaa !63
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.au = fcmp nsz oeq float %i.ar, 0.000000e+00
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store float -1.000000e-03, ptr %i.aq, align 8, !tbaa !63
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.d, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread4
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Camera15drawWieldedToolEPN4core8CMatrix4IfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(536) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %2 = alloca %"class.core::vector3d", align 8    ; 5 uses
  %3 = alloca %"class.core::vector3d", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 688
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i16 noundef zeroext 2, i32 -16777216, float noundef 1.000000e+00, i8 noundef zeroext 0)
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 22 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !91   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 384
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call nsz noundef float %i.s(ptr noundef nonnull align 8 dereferenceable(233) %i.p)
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 416
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(233) %i.n, float noundef %i.t)
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 424
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(233) %i.n, float noundef f0x3FA0D97C)
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 400
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(233) %i.n, float noundef 1.000000e+01)
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 408
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(233) %i.n, float noundef 1.000000e+03)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(218) %i.n) ; 8 uses
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.553.0.copyload = load float, ptr %.sroa.553.0..sroa_idx, align 4
  %.sroa.755.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.957.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.957.0.copyload = load float, ptr %.sroa.957.0..sroa_idx, align 4
  %.sroa.1159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.sroa.1361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %.sroa.1361.0.copyload = load float, ptr %.sroa.1361.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.ak = load <2 x float>, ptr %i.aj, align 4
  %i.al = load <2 x float>, ptr %.sroa.755.0..sroa_idx, align 4
  %i.am = load <2 x float>, ptr %.sroa.1159.0..sroa_idx, align 4
  %i.an = load <2 x float>, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %.sroa.17.0.copyload = load float, ptr %.sroa.17.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 344
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(233) %i.n) ; 2 uses
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 232
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call { <2 x float>, float } %i.au(ptr noundef nonnull align 8 dereferenceable(218) %i.n) ; 2 uses
  %.fca.0.extract13 = extractvalue { <2 x float>, float } %i.av, 0
  %.fca.1.extract14 = extractvalue { <2 x float>, float } %i.av, 1
  %i.aw = load <2 x float>, ptr %i.ar, align 4, !tbaa !60
  %i.ax = fsub nsz <2 x float> %i.aw, %.fca.0.extract13 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !90
  %i.ba = fsub nsz float %i.az, %.fca.1.extract14 ; 4 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.ax, %i.ax
  %i.bb = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bc = extractelement <2 x float> %i.ax, i64 0 ; 2 uses
  %i.bd = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float %i.bc, float %i.bb)
  %i.be = tail call nsz float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.bd) ; 2 uses
  %i.bf = fcmp nsz oeq float %i.be, 0.000000e+00
  br i1 %i.bf, label %_ZN4core8vector3dIfE9setLengthEf.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bg = fpext nsz float %i.be to double
  %i.bh = tail call nsz double @llvm.sqrt.f64(double %i.bg)
  %i.bi = fdiv nsz double 1.000000e+00, %i.bh     ; 2 uses
  %i.bj = fpext <2 x float> %i.ax to <2 x double>
  %i.bk = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fmul nsz <2 x double> %i.bl, %i.bj
  %i.bn = fptrunc <2 x double> %i.bm to <2 x float>
  %i.bo = fpext nsz float %i.ba to double
  %i.bp = fmul nsz double %i.bi, %i.bo
  %i.bq = fptrunc nsz double %i.bp to float
  br label %_ZN4core8vector3dIfE9setLengthEf.exit

_ZN4core8vector3dIfE9setLengthEf.exit:            ; preds = %bb.b, %bb.c
  %i.br = phi float [ %i.ba, %bb.b ], [ %i.bq, %bb.c ]
  %i.bs = phi <2 x float> [ %i.ax, %bb.b ], [ %i.bn, %bb.c ]
  %i.bt = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 232
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call { <2 x float>, float } %i.bv(ptr noundef nonnull align 8 dereferenceable(218) %i.n) ; 2 uses
  %.fca.0.extract5 = extractvalue { <2 x float>, float } %i.bw, 0
  %.fca.1.extract6 = extractvalue { <2 x float>, float } %i.bw, 1
  %i.bx = fadd nsz <2 x float> %i.bs, %.fca.0.extract5
  %i.by = fadd nsz float %i.br, %.fca.1.extract6
  store <2 x float> %i.bx, ptr %2, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.by, ptr %.sroa.24.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.cd = load float, ptr %i.bz, align 4, !tbaa !60, !noalias !513 ; 2 uses
  %i.ce = load float, ptr %i.ca, align 4, !tbaa !60, !noalias !513 ; 2 uses
  %i.cf = load float, ptr %i.cb, align 4, !tbaa !60, !noalias !513 ; 2 uses
  %i.cg = load float, ptr %i.cc, align 4, !tbaa !60, !noalias !513 ; 2 uses
  %i.ch = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = fmul nsz <2 x float> %i.al, %i.ci
  %i.ck = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.cl, <2 x float> %i.cj)
  %i.cn = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.co, <2 x float> %i.cm)
  %i.cq = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.cr, <2 x float> %i.cp)
  %i.ct = fmul nsz float %.sroa.957.0.copyload, %i.ce
  %i.cu = tail call nsz float @llvm.fmuladd.f32(float %.sroa.553.0.copyload, float %i.cd, float %i.ct)
  %i.cv = tail call nsz float @llvm.fmuladd.f32(float %.sroa.1361.0.copyload, float %i.cf, float %i.cu)
  %i.cw = tail call nsz float @llvm.fmuladd.f32(float %.sroa.17.0.copyload, float %i.cg, float %i.cv)
  store <2 x float> %i.cs, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.cw, ptr %.sroa.2.0..sroa_idx, align 8
  %i.cx = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 224
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(218) %i.n, ptr noundef nonnull align 4 dereferenceable(12) %3)
  %i.da = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 256
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(218) %i.n)
  %i.dd = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 336
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(233) %i.n, ptr noundef nonnull align 4 dereferenceable(12) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.d

bb.d:                                             ; preds = %_ZN4core8vector3dIfE9setLengthEf.exit, %bb.a
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !92  ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !68
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 144
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.dg)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6Camera16toggleCameraModeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(536) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.b, 2
  %switch.select = select i1 %switch.selectcmp, i32 3, i32 1
  %switch.selectcmp1 = icmp eq i32 %i.b, 1
  %switch.select2 = select i1 %switch.selectcmp1, i32 2, i32 %switch.select
  store i32 %switch.select2, ptr %i.a, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Camera12drawNametagsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(536) %0) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string.526", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string.526", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string.526", align 8 ; 8 uses
  %4 = alloca %"class.core::rect", align 8        ; 6 uses
  %5 = alloca %"class.core::string", align 8      ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string.526", align 8 ; 8 uses
  %7 = alloca %"class.core::rect", align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(233) %i.b) ; 8 uses
  %.sroa.11174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.11174.0.copyload = load float, ptr %.sroa.11174.0..sroa_idx, align 4 ; 4 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %.sroa.19.0.copyload = load float, ptr %.sroa.19.0..sroa_idx, align 4 ; 4 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %.sroa.27.0.copyload = load float, ptr %.sroa.27.0..sroa_idx, align 4 ; 4 uses
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %.sroa.35.0.copyload = load float, ptr %.sroa.35.0..sroa_idx, align 4, !tbaa !66 ; 4 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load <2 x float>, ptr %i.f, align 4      ; 4 uses
  %i.l = load <2 x float>, ptr %.sroa.13.0..sroa_idx, align 4 ; 4 uses
  %i.m = load <2 x float>, ptr %.sroa.21.0..sroa_idx, align 4 ; 4 uses
  %i.n = load <2 x float>, ptr %.sroa.29.0..sroa_idx, align 4 ; 4 uses
  %i.o = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(233) %i.g) ; 16 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !60 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !60 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !60 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.v = load float, ptr %i.u, align 4, !tbaa !60 ; 2 uses
  %i.w = insertelement <2 x float> poison, float %i.r, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fmul nsz <2 x float> %i.l, %i.x
  %i.z = insertelement <2 x float> poison, float %i.p, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.aa, <2 x float> %i.y)
  %i.ac = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.ad, <2 x float> %i.ab)
  %i.af = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.ag, <2 x float> %i.ae)
  %i.ai = fmul nsz float %.sroa.19.0.copyload, %i.r
  %i.aj = tail call nsz float @llvm.fmuladd.f32(float %.sroa.11174.0.copyload, float %i.p, float %i.ai)
  %i.ak = tail call nsz float @llvm.fmuladd.f32(float %.sroa.27.0.copyload, float %i.t, float %i.aj)
  %i.al = tail call nsz float @llvm.fmuladd.f32(float %.sroa.35.0.copyload, float %i.v, float %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.an = load float, ptr %i.am, align 4, !tbaa !60 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !60 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !60 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.at = load float, ptr %i.as, align 4, !tbaa !60 ; 2 uses
  %i.au = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fmul nsz <2 x float> %i.l, %i.av
  %i.ax = insertelement <2 x float> poison, float %i.an, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.ay, <2 x float> %i.aw)
  %i.ba = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.bb, <2 x float> %i.az)
  %i.bd = insertelement <2 x float> poison, float %i.at, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.be, <2 x float> %i.bc)
  %i.bg = fmul nsz float %.sroa.19.0.copyload, %i.ap
  %i.bh = tail call nsz float @llvm.fmuladd.f32(float %.sroa.11174.0.copyload, float %i.an, float %i.bg)
  %i.bi = tail call nsz float @llvm.fmuladd.f32(float %.sroa.27.0.copyload, float %i.ar, float %i.bh)
  %i.bj = tail call nsz float @llvm.fmuladd.f32(float %.sroa.35.0.copyload, float %i.at, float %i.bi)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !60 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !60 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !60 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.br = load float, ptr %i.bq, align 4, !tbaa !60 ; 2 uses
  %i.bs = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul nsz <2 x float> %i.l, %i.bt
  %i.bv = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.bw, <2 x float> %i.bu)
  %i.by = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.bz, <2 x float> %i.bx)
  %i.cb = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.cc, <2 x float> %i.ca)
  %i.ce = fmul nsz float %.sroa.19.0.copyload, %i.bn
  %i.cf = tail call nsz float @llvm.fmuladd.f32(float %.sroa.11174.0.copyload, float %i.bl, float %i.ce)
  %i.cg = tail call nsz float @llvm.fmuladd.f32(float %.sroa.27.0.copyload, float %i.bp, float %i.cf)
  %i.ch = tail call nsz float @llvm.fmuladd.f32(float %.sroa.35.0.copyload, float %i.br, float %i.cg)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !60 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !60 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !60 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  %i.cp = load float, ptr %i.co, align 4, !tbaa !60 ; 2 uses
  %i.cq = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul nsz <2 x float> %i.l, %i.cr
  %i.ct = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.cu, <2 x float> %i.cs)
  %i.cw = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.cx, <2 x float> %i.cv)
  %i.cz = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.da, <2 x float> %i.cy)
  %i.dc = fmul nsz float %.sroa.19.0.copyload, %i.cl
  %i.dd = tail call nsz float @llvm.fmuladd.f32(float %.sroa.11174.0.copyload, float %i.cj, float %i.dc)
  %i.de = tail call nsz float @llvm.fmuladd.f32(float %.sroa.27.0.copyload, float %i.cn, float %i.dd)
  %i.df = tail call nsz float @llvm.fmuladd.f32(float %.sroa.35.0.copyload, float %i.cp, float %i.de)
  %i.dg = load ptr, ptr @g_fontengine, align 8, !tbaa !518
  %i.dh = tail call noundef i32 @_ZN10FontEngine11getFontSizeE8FontMode(ptr noundef nonnull align 8 dereferenceable(1327) %i.dg, i8 noundef zeroext 4)
  %i.di = uitofp nsz i32 %i.dh to float
  %i.dj = fmul nnan nsz float %i.di, 6.250000e-02 ; 2 uses
  %i.dk = load ptr, ptr @_ZN15RenderingEngine11s_singletonE, align 8, !tbaa !321 ; 2 uses
  %.not.i = icmp eq ptr %i.dk, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !87 ; 3 uses
  %.not2.i = icmp eq ptr %i.dm, null
  br i1 %.not2.i, label %bb.c, label %_ZN15RenderingEngine16get_video_driverEv.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN15RenderingEngine16get_video_driverEv) #29
  unreachable

_ZN15RenderingEngine16get_video_driverEv.exit:    ; preds = %bb.b
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !68
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = tail call noundef ptr %i.dp(ptr noundef nonnull align 8 dereferenceable(8) %i.dm), !inline_history !514 ; 4 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !68
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 488
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.dt(ptr noundef nonnull align 8 dereferenceable(8) %i.dq)
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !325 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !325 ; 2 uses
  %.not255272 = icmp eq ptr %i.dw, %i.dy
  br i1 %.not255272, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN15RenderingEngine16get_video_driverEv.exit
  %i.dz = load <2 x i32>, ptr %i.du, align 4, !tbaa !157
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ee = uitofp <2 x i32> %i.dz to <2 x float>
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.z, %_ZN15RenderingEngine16get_video_driverEv.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.z
  %.sroa.0161.0273 = phi ptr [ %i.dw, %.lr.ph ], [ %i.lm, %bb.z ] ; 2 uses
  %i.em = load ptr, ptr %.sroa.0161.0273, align 8, !tbaa !326 ; 13 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !328 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !68
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 232
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = call { <2 x float>, float } %i.eq(ptr noundef nonnull align 8 dereferenceable(218) %i.en) ; 2 uses
  %.fca.0.extract34 = extractvalue { <2 x float>, float } %i.er, 0
  %.fca.1.extract35 = extractvalue { <2 x float>, float } %i.er, 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 60
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 68
  %i.ev = load float, ptr %i.es, align 4, !tbaa !318
  %i.ew = load float, ptr %i.et, align 8, !tbaa !317
  %i.ex = load float, ptr %i.eu, align 4, !tbaa !90
  %i.ey = insertelement <3 x float> poison, float %i.ev, i64 0
  %i.ez = insertelement <3 x float> %i.ey, float %i.ew, i64 1
  %i.fa = insertelement <3 x float> %i.ez, float %i.ex, i64 2
  %i.fb = fmul nsz <3 x float> %i.fa, splat (float 1.000000e+01)
  %i.fc = shufflevector <2 x float> %.fca.0.extract34, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.fd = insertelement <3 x float> %i.fc, float %.fca.1.extract35, i64 2
  %i.fe = fadd nsz <3 x float> %i.fd, %i.fb       ; 6 uses
  %i.ff = shufflevector <3 x float> %i.fe, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fg = fmul nsz <2 x float> %i.bf, %i.ff
  %i.fh = shufflevector <3 x float> %i.fe, <3 x float> poison, <2 x i32> zeroinitializer
  %i.fi = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.fh, <2 x float> %i.fg)
  %i.fj = shufflevector <3 x float> %i.fe, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fk = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.fj, <2 x float> %i.fi)
  %i.fl = fadd nsz <2 x float> %i.db, %i.fk
  %i.fm = extractelement <3 x float> %i.fe, i64 1
  %i.fn = fmul nsz float %i.bj, %i.fm
  %i.fo = extractelement <3 x float> %i.fe, i64 0
  %i.fp = call nsz float @llvm.fmuladd.f32(float %i.al, float %i.fo, float %i.fn)
  %i.fq = extractelement <3 x float> %i.fe, i64 2
  %i.fr = call nsz float @llvm.fmuladd.f32(float %i.ch, float %i.fq, float %i.fp)
  %i.fs = fadd nsz float %i.df, %i.fr             ; 3 uses
  %i.ft = fcmp nsz ugt float %i.fs, 0.000000e+00
  br i1 %i.ft, label %bb.e, label %bb.z

bb.e:                                             ; preds = %bb.d
  %i.fu = fdiv nsz float 1.000000e+00, %i.fs      ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.em, i64 72
  %i.fw = load i8, ptr %i.fv, align 8, !tbaa !519, !range !151, !noundef !152
  %i.fx = trunc nuw i8 %i.fw to i1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.em, i64 52
  %i.fz = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  %i.ga = load i8, ptr %i.fz, align 8, !tbaa !520, !range !151, !noundef !152
  %i.gb = trunc nuw i8 %i.ga to i1                ; 2 uses
  %i.gc = load i32, ptr %i.fy, align 4            ; 2 uses
  br i1 %i.fx, label %_Z8rangelimIfijET_RKS0_RKT0_RKT1_.exit, label %bb.f

_Z8rangelimIfijET_RKS0_RKT0_RKT1_.exit:           ; preds = %bb.e
  %i.gd = fadd nsz float %i.fs, -3.000000e+01     ; 2 uses
  %i.ge = fcmp nsz olt float %i.gd, 0.000000e+00
  %.sroa.speculated = select i1 %i.ge, float 0.000000e+00, float %i.gd
  %i.gf = fadd nsz float %.sroa.speculated, 4.000000e+01
  %i.gg = fdiv nsz float 4.000000e+01, %i.gf
  %i.gh = fdiv nsz float %i.gg, 1.000000e+01
  %i.gi = uitofp nsz i32 %i.gc to float
  %i.gj = select i1 %i.gb, float %i.gi, float 5.100000e+01 ; 3 uses
  %i.gk = fmul nnan nsz float %i.gj, 1.000000e+01
  %i.gl = fmul nsz float %i.gh, %i.gk             ; 3 uses
  %i.gm = fcmp nsz olt float %i.gl, 0.000000e+00
  %i.gn = fcmp nsz ogt float %i.gl, %i.gj
  %..i82 = select nsz i1 %i.gn, float %i.gj, float %i.gl
  %.0.i83 = select nsz i1 %i.gm, float 0.000000e+00, float %..i82
  %i.go = fmul nsz float %i.dj, %.0.i83           ; 2 uses
  %i.gp = fcmp nsz olt float %i.go, 0.000000e+00
  %.v.i = select i1 %i.gp, float -5.000000e-01, float 5.000000e-01
  %i.gq = fadd nsz float %i.go, %.v.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.gr = uitofp nsz i32 %i.gc to float
  %i.gs = select i1 %i.gb, float %i.gr, float 1.600000e+01
  %i.gt = fmul nnan nsz float %i.dj, %i.gs
  %i.gu = fadd nsz float %i.gt, 5.000000e-01
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_Z8rangelimIfijET_RKS0_RKT0_RKT1_.exit
  %.064.in = phi float [ %i.gq, %_Z8rangelimIfijET_RKS0_RKT0_RKT1_.exit ], [ %i.gu, %bb.f ]
  %.064 = fptosi float %.064.in to i32            ; 5 uses
  %i.gv = icmp ult i32 %.064, 2
  br i1 %i.gv, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.gw = call i32 @llvm.umin.i32(i32 %.064, i32 256) ; 4 uses
  %i.gx = icmp ugt i32 %.064, 128
  br i1 %i.gx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.gy = and i32 %i.gw, 504
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.gz = icmp samesign ugt i32 %.064, 64
  br i1 %i.gz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ha = and i32 %i.gw, 252
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.hb = icmp samesign ugt i32 %.064, 32
  %i.hc = and i32 %i.gw, 126
  %spec.select = select i1 %i.hb, i32 %i.hc, i32 %i.gw
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %.165 = phi i32 [ %i.gy, %bb.i ], [ %i.ha, %bb.k ], [ %spec.select, %bb.l ]
  %i.hd = load ptr, ptr @g_fontengine, align 8, !tbaa !518 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1324
  %i.hf = load i16, ptr %i.he, align 4
  %i.hg = zext i16 %i.hf to i64
  %i.hh = shl nuw nsw i64 %i.hg, 40
  %.sroa.0.0.insert.ext.i = zext nneg i32 %.165 to i64
  %.sroa.5.0.insert.insert.i = or disjoint i64 %i.hh, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.insert.i, 72057611217797120
  %i.hi = call noundef ptr @_ZN10FontEngine7getFontE8FontSpec(ptr noundef nonnull align 8 dereferenceable(1327) %i.hd, i64 %.sroa.0.0.insert.insert.i) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.hj = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !94
  %i.hl = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !65
  call void @_Z12utf8_to_wideB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.526") align 8 %2, i64 %i.hm, ptr %i.hk)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.hn = load ptr, ptr %2, align 8, !tbaa !332
  %i.ho = load i64, ptr %i.ea, align 8, !tbaa !333
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25, !noalias !521
  invoke void @_Z16translate_stringB5cxx11St17basic_string_viewIwSt11char_traitsIwEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.526") align 8 %1, i64 %i.ho, ptr %i.hn)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.m
  %i.hp = load ptr, ptr %1, align 8, !tbaa !332, !noalias !521
  %i.hq = load i64, ptr %i.eb, align 8, !tbaa !333, !noalias !521
  invoke void @_Z17unescape_enrichedIwENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEESt17basic_string_viewIS2_S4_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.526") align 8 %3, i64 %i.hq, ptr %i.hp)
          to label %_Z17unescape_enrichedB5cxx11St17basic_string_viewIwSt11char_traitsIwEE.exit.i unwind label %bb.n

_Z17unescape_enrichedB5cxx11St17basic_string_viewIwSt11char_traitsIwEE.exit.i: ; preds = %.noexc
  %i.hr = load ptr, ptr %1, align 8, !tbaa !332, !noalias !521 ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.ec
  br i1 %i.hs, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %_Z17unescape_enrichedB5cxx11St17basic_string_viewIwSt11char_traitsIwEE.exit.i
  %i.ht = load i64, ptr %i.ec, align 8, !tbaa !66, !noalias !521
  %i.hu = shl i64 %i.ht, 2
  %i.hv = add i64 %i.hu, 4
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #27
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i

bb.n:                                             ; preds = %.noexc
  %i.hw = landingpad { ptr, i32 }
          cleanup
  %i.hx = load ptr, ptr %1, align 8, !tbaa !332, !noalias !521 ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.ec
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.n
  %i.hz = load i64, ptr %i.ec, align 8, !tbaa !66, !noalias !521
  %i.ia = shl i64 %i.hz, 2
  %i.ib = add i64 %i.ia, 4
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit7.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit7.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25, !noalias !521
  br label %.body

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_Z17unescape_enrichedB5cxx11St17basic_string_viewIwSt11char_traitsIwEE.exit.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25, !noalias !521
  %i.ic = load ptr, ptr %3, align 8, !tbaa !332
  %i.id = load ptr, ptr %i.hi, align 8, !tbaa !68
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = invoke i64 %i.if(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, ptr noundef %i.ic)
          to label %bb.o unwind label %bb.t       ; 4 uses

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i
  %.sroa.05.0.extract.trunc = trunc i64 %i.ig to i32 ; 2 uses
  %i.ih = load ptr, ptr %3, align 8, !tbaa !332   ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.ed
  br i1 %i.ii, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.ij = load i64, ptr %i.ed, align 8, !tbaa !66
  %i.ik = shl i64 %i.ij, 2
  %i.il = add i64 %i.ik, 4
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.il) #27
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.im = lshr i32 %.sroa.05.0.extract.trunc, 1
  %i.in = fneg nsz float %i.fu
  %sum.shift = lshr i64 %i.ig, 33
  %i.io = trunc nuw nsw i64 %sum.shift to i32
  %i.ip = uitofp nsz nneg i32 %i.im to float
  %i.iq = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.ir = insertelement <2 x float> %i.iq, float %i.in, i64 1
  %i.is = fmul nsz <2 x float> %i.fl, %i.ir
  %i.it = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.is, <2 x float> splat (float 5.000000e-01), <2 x float> splat (float 5.000000e-01))
  %i.iu = uitofp nsz nneg i32 %i.io to float
  %i.iv = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.iw = insertelement <2 x float> %i.iv, float %i.iu, i64 1
  %i.ix = fneg nsz <2 x float> %i.iw
  %i.iy = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.it, <2 x float> %i.ix)
  %i.iz = fptosi <2 x float> %i.iy to <2 x i32>   ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.jb = load i8, ptr %i.ja, align 8, !tbaa !522, !range !151, !noundef !152
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %_ZNK7Nametag10getBgColorEb.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i
  %i.jd = load i8, ptr %i.ef, align 8, !tbaa !106, !range !151, !noundef !152
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %_ZNK7Nametag10getBgColorEb.exit.thread299, label %_ZNK7Nametag10getBgColorEb.exit.thread

_ZNK7Nametag10getBgColorEb.exit.thread299:        ; preds = %bb.p
  %i.jf = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !75 ; 3 uses
  %i.jh = lshr i32 %i.jg, 16
  %i.ji = and i32 %i.jh, 255
  %i.jj = uitofp nsz nneg i32 %i.ji to float
  %i.jk = lshr i32 %i.jg, 8
  %i.jl = and i32 %i.jk, 255
  %i.jm = uitofp nsz nneg i32 %i.jl to float
  %i.jn = fmul nnan nsz float %i.jm, 5.900000e-01
  %i.jo = call nsz float @llvm.fmuladd.f32(float %i.jj, float 3.000000e-01, float %i.jn)
  %i.jp = and i32 %i.jg, 255
  %i.jq = uitofp nsz nneg i32 %i.jp to float
  %i.jr = call nsz noundef float @llvm.fmuladd.f32(float %i.jq, float 1.100000e-01, float %i.jo)
  %i.js = fcmp nsz ogt float %i.jr, 1.860000e+02
  %spec.select.i = select i1 %i.js, i32 842150450, i32 855638015
  br label %bb.q

_ZNK7Nametag10getBgColorEb.exit:                  ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.em, i64 44
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !157 ; 2 uses
  %.not = icmp ult i32 %i.ju, 16777216
  br i1 %.not, label %_ZNK7Nametag10getBgColorEb.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZNK7Nametag10getBgColorEb.exit.thread299, %_ZNK7Nametag10getBgColorEb.exit
  %.sroa.0.0.i302 = phi i32 [ %spec.select.i, %_ZNK7Nametag10getBgColorEb.exit.thread299 ], [ %i.ju, %_ZNK7Nametag10getBgColorEb.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.jv = extractelement <2 x i32> %i.iz, i64 0   ; 2 uses
  %i.jw = add nsw i32 %i.jv, -2
  %.sroa.8.8.extract.trunc.i = add i32 %.sroa.05.0.extract.trunc, 2
  %i.jx = add nsw i32 %.sroa.8.8.extract.trunc.i, %i.jv
  %.sroa.8.8.insert.ext.i = zext i32 %i.jx to i64
  %.sroa.8.12.extract.shift.i = lshr i64 %i.ig, 32
  %.sroa.8.12.extract.trunc.i = trunc nuw i64 %.sroa.8.12.extract.shift.i to i32
  %i.jy = extractelement <2 x i32> %i.iz, i64 1   ; 2 uses
  %i.jz = add nsw i32 %i.jy, %.sroa.8.12.extract.trunc.i
  %.sroa.8.12.insert.ext.i = zext i32 %i.jz to i64
  %.sroa.8.12.insert.shift.i = shl nuw i64 %.sroa.8.12.insert.ext.i, 32
  %.sroa.8.12.insert.insert.i = or disjoint i64 %.sroa.8.12.insert.shift.i, %.sroa.8.8.insert.ext.i
  %.sroa.0.sroa.6.0.insert.ext.i = zext i32 %i.jy to i64
  %.sroa.0.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.0.sroa.6.0.insert.ext.i, 32
  %.sroa.0.sroa.0.0.insert.ext.i = zext i32 %i.jw to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.6.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %4, align 8
  store i64 %.sroa.8.12.insert.insert.i, ptr %i.eg, align 8
  %i.ka = load ptr, ptr %i.dq, align 8, !tbaa !68
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 424
  %i.kc = load ptr, ptr %i.kb, align 8
  invoke void %i.kc(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, i32 %.sroa.0.0.i302, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef null)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNK7Nametag10getBgColorEb.exit.thread

bb.s:                                             ; preds = %bb.m
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i
  %i.ke = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kf = load ptr, ptr %3, align 8, !tbaa !332   ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.ed
  br i1 %i.kg, label %.body, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i92: ; preds = %bb.t
  %i.kh = load i64, ptr %i.ed, align 8, !tbaa !66
  %i.ki = shl i64 %i.kh, 2
  %i.kj = add i64 %i.ki, 4
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.kj) #27
  br label %.body

.body:                                            ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i92, %bb.s, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit7.i
  %.pn = phi { ptr, i32 } [ %i.hw, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit7.i ], [ %i.kd, %bb.s ], [ %i.ke, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i92 ], [ %i.ke, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ac

bb.u:                                             ; preds = %bb.q
  %i.kk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ac

_ZNK7Nametag10getBgColorEb.exit.thread:           ; preds = %bb.p, %bb.r, %_ZNK7Nametag10getBgColorEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.kl = load ptr, ptr %2, align 8, !tbaa !332
  %i.km = load i64, ptr %i.ea, align 8, !tbaa !333
  invoke void @_Z16translate_stringB5cxx11St17basic_string_viewIwSt11char_traitsIwEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.526") align 8 %6, i64 %i.km, ptr %i.kl)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %_ZNK7Nametag10getBgColorEb.exit.thread
  %i.kn = load ptr, ptr %6, align 8, !tbaa !332
  store ptr %i.eh, ptr %5, align 8, !tbaa !334
  store i64 0, ptr %i.ei, align 8, !tbaa !333
  store i32 0, ptr %i.eh, align 8, !tbaa !336
  %i.ko = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4core6stringIwEaSIwEERS1_PKT_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.kn)
          to label %bb.x unwind label %bb.w       ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.kp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kq = load ptr, ptr %5, align 8, !tbaa !332   ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.eh
  br i1 %i.kr, label %.body99, label %.body99.sink.split

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ks = bitcast i64 %i.ig to <2 x i32>
  %i.kt = add nsw <2 x i32> %i.iz, %i.ks
  store <2 x i32> %i.iz, ptr %7, align 8
  store <2 x i32> %i.kt, ptr %i.ej, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %.sroa.0.0.copyload = load i32, ptr %i.ku, align 8, !tbaa !157
  %i.kv = load ptr, ptr %i.hi, align 8, !tbaa !68
  %i.kw = load ptr, ptr %i.kv, align 8
  invoke void %i.kw(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 %.sroa.0.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.kx = load ptr, ptr %5, align 8, !tbaa !332   ; 2 uses
  %i.ky = icmp eq ptr %i.kx, %i.eh
  br i1 %i.ky, label %_ZN4core6stringIwED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i120

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i120: ; preds = %bb.y
  %i.kz = load i64, ptr %i.eh, align 8, !tbaa !66
  %i.la = shl i64 %i.kz, 2
  %i.lb = add i64 %i.la, 4
  call void @_ZdlPvm(ptr noundef %i.kx, i64 noundef %i.lb) #27
  br label %_ZN4core6stringIwED2Ev.exit

_ZN4core6stringIwED2Ev.exit:                      ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i120
  %i.lc = load ptr, ptr %6, align 8, !tbaa !332   ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.ek
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i123: ; preds = %_ZN4core6stringIwED2Ev.exit
  %i.le = load i64, ptr %i.ek, align 8, !tbaa !66
  %i.lf = shl i64 %i.le, 2
  %i.lg = add i64 %i.lf, 4
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lg) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit125: ; preds = %_ZN4core6stringIwED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.lh = load ptr, ptr %2, align 8, !tbaa !332   ; 2 uses
  %i.li = icmp eq ptr %i.lh, %i.el
  br i1 %i.li, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i126: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit125
  %i.lj = load i64, ptr %i.el, align 8, !tbaa !66
  %i.lk = shl i64 %i.lj, 2
  %i.ll = add i64 %i.lk, 4
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.ll) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit128: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit125, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit128, %bb.g, %bb.d
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0161.0273, i64 8 ; 2 uses
  %.not255 = icmp eq ptr %i.lm, %i.dy
  br i1 %.not255, label %._crit_edge, label %bb.d

bb.aa:                                            ; preds = %_ZNK7Nametag10getBgColorEb.exit.thread
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit135

bb.ab:                                            ; preds = %bb.x
  %i.lo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.lp = load ptr, ptr %5, align 8, !tbaa !332   ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.eh
  br i1 %i.lq, label %.body99, label %.body99.sink.split

.body99.sink.split:                               ; preds = %bb.ab, %bb.w
  %.sink = phi ptr [ %i.kq, %bb.w ], [ %i.lp, %bb.ab ]
  %.pn72.ph = phi { ptr, i32 } [ %i.kp, %bb.w ], [ %i.lo, %bb.ab ]
  %i.lr = load i64, ptr %i.eh, align 8, !tbaa !66
  %i.ls = shl i64 %i.lr, 2
  %i.lt = add i64 %i.ls, 4
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.lt) #27
  br label %.body99

.body99:                                          ; preds = %.body99.sink.split, %bb.ab, %bb.w
end_hunk_0
begin_hunk_1_@_ZN6Camera12drawNametagsEv:bb.a
  %i.ma = icmp eq ptr %i.lz, %i.el
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i136: ; preds = %bb.ac
  %i.mb = load i64, ptr %i.el, align 8, !tbaa !66
  %i.mc = shl i64 %i.mb, 2
  %i.md = add i64 %i.mc, 4
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.md) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit138: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn72.pn.pn.pn.pn
}

declare noundef i32 @_ZN10FontEngine11getFontSizeE8FontMode(ptr noundef nonnull align 8 dereferenceable(1327), i8 noundef zeroext) local_unnamed_addr #3

declare void @_Z12utf8_to_wideB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string.526") align 8, i64, ptr) local_unnamed_addr #3

declare void @_Z16translate_stringB5cxx11St17basic_string_viewIwSt11char_traitsIwEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string.526") align 8, i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN6Camera10addNametagERK7Nametag(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(536) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26 ; 9 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !328
  store ptr %i.c, ptr %i.b, align 8, !tbaa !328
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !94   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !65   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.i, ptr %i.a, align 8, !tbaa !101
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.k, ptr %i.d, align 8, !tbaa !94
  %i.l = load i64, ptr %i.a, align 8, !tbaa !101
  store i64 %i.l, ptr %i.f, align 8, !tbaa !66
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !66
  store i8 %i.n, ptr %i.m, align 1, !tbaa !66
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !65
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.s, ptr noundef nonnull align 8 dereferenceable(33) %i.t, i64 33, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !98   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !102
  %.not.i = icmp eq ptr %i.w, %i.y
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.b, ptr %i.w, align 8, !tbaa !326
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.z, ptr %i.v, align 8, !tbaa !98
  br label %_ZNSt6vectorIP7NametagSaIS1_EE9push_backERKS1_.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !97  ; 4 uses
  %i.ab = ptrtoint ptr %i.w to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.g, label %_ZNKSt6vectorIP7NametagSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

_ZNKSt6vectorIP7NametagSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aj, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #26 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store ptr %i.b, ptr %i.am, align 8, !tbaa !326
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.h, label %_ZNSt6vectorIP7NametagSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIP7NametagSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIP7NametagSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP7NametagSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIP7NametagSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.not.i17.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP7NametagSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIP7NametagSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.ap = load ptr, ptr %i.x, align 8, !tbaa !102
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ar) #27
  br label %_ZNSt6vectorIP7NametagSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP7NametagSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIP7NametagSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.al, ptr %i.u, align 8, !tbaa !97
  store ptr %i.ao, ptr %i.v, align 8, !tbaa !98
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.as, ptr %i.x, align 8, !tbaa !102
  br label %_ZNSt6vectorIP7NametagSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP7NametagSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.e, %_ZNSt6vectorIP7NametagSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret ptr %i.b

bb.j:                                             ; preds = %.noexc.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 80) #27
  resume { ptr, i32 } %i.at
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6Camera13removeNametagEP7Nametag(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(536) %0, ptr noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !325  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !325  ; 7 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr i64 %i.g, 5                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.j = and i64 %i.g, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.j ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i ], [ %i.w, %bb.f ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %i.v, %bb.f ] ; 9 uses
  %i.k = load ptr, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !326
  %i.l = icmp eq ptr %i.k, %1
  br i1 %i.l, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !326
  %i.o = icmp eq ptr %i.n, %1
  br i1 %i.o, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !326
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.loopexit.split.loop.exit25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !326
  %i.u = icmp eq ptr %i.t, %1
  br i1 %i.u, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.loopexit.split.loop.exit27, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.w = add nsw i64 %.052.i.i.i, -1
  %i.x = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.x, label %bb.b, label %._crit_edge.loopexit.i.i.i, !llvm.loop !523

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.e, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.g, %bb.a ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.y = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.y, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !326
  %i.aa = icmp eq ptr %i.z, %1
  br i1 %i.aa, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.h
  %.sroa.032.1.i.i.i = phi ptr [ %i.ab, %bb.h ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ac = load ptr, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !326
  %i.ad = icmp eq ptr %i.ac, %1
  br i1 %i.ad, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.i
  %.sroa.032.2.i.i.i = phi ptr [ %i.ae, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.af = load ptr, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !326
  %i.ag = icmp eq ptr %i.af, %1
  %spec.select.i.i.i = select i1 %i.ag, ptr %.sroa.032.2.i.i.i, ptr %i.d
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.loopexit.split.loop.exit25: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.loopexit.split.loop.exit27: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit: ; preds = %bb.b, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.loopexit.split.loop.exit25, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.loopexit.split.loop.exit27, %._crit_edge.i.i.i, %bb.g, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %i.d, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.g ], [ %i.aj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.loopexit.split.loop.exit27 ], [ %i.ai, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.loopexit.split.loop.exit25 ], [ %i.ah, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.b ]
  %i.ak = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.al = sub i64 %i.ak, %i.f
  %i.am = getelementptr inbounds i8, ptr %i.b, i64 %i.al ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %.not.i.i = icmp eq ptr %i.an, %i.d
  br i1 %.not.i.i, label %_ZNSt6vectorIP7NametagSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.e, %i.ao                     ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, 8
  br i1 %i.aq, label %bb.k, label %bb.l, !prof !524

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.am, ptr nonnull align 8 %i.an, i64 %i.ap, i1 false)
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !98
  br label %_ZNSt6vectorIP7NametagSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

bb.l:                                             ; preds = %bb.j
  %i.ar = icmp eq i64 %i.ap, 8
  br i1 %i.ar, label %bb.m, label %_ZNSt6vectorIP7NametagSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !326
  store ptr %i.as, ptr %i.am, align 8, !tbaa !326
  br label %_ZNSt6vectorIP7NametagSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

_ZNSt6vectorIP7NametagSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit, %bb.k, %bb.l, %bb.m
  %i.at = phi ptr [ %i.d, %bb.m ], [ %i.d, %bb.l ], [ %.pre.i.i, %bb.k ], [ %i.d, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP7NametagSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit ]
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8
  store ptr %i.au, ptr %i.c, align 8, !tbaa !98
  %i.av = icmp eq ptr %1, null
  br i1 %i.av, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIP7NametagSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !94 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZN7NametagD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !66
  %i.bb = add i64 %i.ba, 1
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #27
  br label %_ZN7NametagD2Ev.exit

_ZN7NametagD2Ev.exit:                             ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 80) #27
  br label %bb.o

bb.o:                                             ; preds = %_ZN7NametagD2Ev.exit, %_ZNSt6vectorIP7NametagSaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK6Camera20getFrustumCullPlanesEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::array") align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(536) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(233) %i.b) ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !525
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !525
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !525
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !525
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @__cxx_global_var_init() #16 section ".text.startup" comdat($_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev, ptr nonnull @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, ptr nonnull @__dso_handle) #25 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !528    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit

_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #25, !inline_history !526
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17ItemStackMetadataD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -80
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !73, !range !151, !noundef !152
  %i.i = trunc nuw i8 %i.h to i1
  store i8 0, ptr %i.g, align 8, !tbaa !73
  br i1 %i.i, label %bb.b, label %_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !337
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef %i.l)
          to label %_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #28
  unreachable

_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !72, !range !151, !noundef !152
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.o, align 8, !tbaa !72
  br i1 %i.q, label %bb.d, label %_ZNSt14_Optional_baseI16ToolCapabilitiesLb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !337
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i.i.i.i.i: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !337
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef %i.y)
          to label %_ZNSt14_Optional_baseI16ToolCapabilitiesLb0ELb0EED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #28
  unreachable

_ZNSt14_Optional_baseI16ToolCapabilitiesLb0ELb0EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !68
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.ac, i64 -80
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.ag
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !68
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ai) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !338
  tail call void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !339  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !529

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapSt4lessIS5_ESaISt4pairIKS5_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !337
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !338
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !339  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !66
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !530

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !338
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !339  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !342  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12ToolGroupCapD2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !343
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #27
  br label %_ZN12ToolGroupCapD2Ev.exit.i.i.i

_ZN12ToolGroupCapD2Ev.exit.i.i.i:                 ; preds = %bb.b, %.lr.ph
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !94   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN12ToolGroupCapD2Ev.exit.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !66
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit: ; preds = %_ZN12ToolGroupCapD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 96) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !531

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !344  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !345 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !66
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !94   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !66
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #27
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 80) #27
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !71
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  %i.w = load i64, ptr %i.q, align 8, !tbaa !71
  %i.x = shl i64 %i.w, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !344  ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i
  %.06.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !345 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !66
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !94   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !66
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #27
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 80) #27
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i, !llvm.loop !1

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !71
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.modf.f32(float) #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7MtEventD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18SimpleTriggerEventD0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #18 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNK18SimpleTriggerEvent7getTypeEv(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !305
  ret i8 %i.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #11

; Function Attrs: noreturn
declare void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #19

declare i64 @_ZNK15RenderingEngine14_getWindowSizeEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.acos.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sin.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.asin.f64(double) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !534
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8, !tbaa !345 ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !65
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us ], [ %.sroa.06.016, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !65
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8, !tbaa !345 ; 2 uses
  %.not11.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not11.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.split.us, !llvm.loop !532

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10
  %.sroa.06.018 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !65
  %i.m = icmp eq i64 %.fr24, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !94
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.o, i64 %.fr24)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8, !tbaa !345 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.split, !llvm.loop !532

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !65
  %i.t = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #28
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !535  ; 3 uses
  %i.y = urem i64 %i.t, %i.x                      ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !536
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !346 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !345 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ad                   ; 3 uses
  %i.ae = icmp eq i64 %.fr22.i.i, 0
  %i.af = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !348 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ag = phi i64 [ %i.an, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !65
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.al = load ptr, ptr %.0.us.i.i, align 8, !tbaa !345 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !348 ; 2 uses
  %i.ao = urem i64 %i.an, %i.x
  %.not19.us.i.i = icmp eq i64 %i.ao, %i.y
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, !llvm.loop !533

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.ap = phi i64 [ %i.az, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ax, %bb.i ], [ %i.ac, %bb.e ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ar = icmp eq i64 %i.t, %i.ap
  br i1 %i.ar, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !65
  %i.au = icmp eq i64 %.fr22.i.i, %i.at
  br i1 %i.au, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !94
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.av, i64 %.fr22.i.i)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ax = load ptr, ptr %.0.i.i, align 8, !tbaa !345 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ax, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !348 ; 2 uses
  %i.ba = urem i64 %i.az, %i.x
  %.not19.i.i = icmp eq i64 %i.ba, %i.y
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, !llvm.loop !533

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i ], [ null, %bb.i ], [ %.sroa.06.018.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10 ], [ %.sroa.06.018, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #11

declare noundef zeroext i1 @_ZNK9IMetadataeqERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSL_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_ReuseOrAllocNode", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !71   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !537
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !71   ; 5 uses
  %.not = icmp eq i64 %i.b, %i.g
  %i.h = load ptr, ptr %0, align 8, !tbaa !70     ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.g, 1
  br i1 %i.i, label %bb.c, label %bb.d, !prof !349

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !350
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.k, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !349

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.l, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

.noexc7.i.i:                                      ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.d
  %i.m = shl nuw nsw i64 %i.g, 3                  ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #26 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.m, i1 false)
  %.pre = load i64, ptr %i.f, align 8, !tbaa !71
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %i.o = phi i64 [ 1, %bb.c ], [ %.pre, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i ]
  %.0.i = phi ptr [ %i.j, %bb.c ], [ %i.n, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i ]
  store ptr %.0.i, ptr %0, align 8, !tbaa !70
  store i64 %i.o, ptr %i.a, align 8, !tbaa !71
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.p = shl i64 %i.b, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %i.p, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %.0 = phi ptr [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ], [ null, %bb.f ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !538
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %i.s, align 8, !tbaa !538
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !539
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !344
  store ptr %i.v, ptr %2, align 8, !tbaa !354
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.w, align 8, !tbaa !540
  store ptr null, ptr %i.u, align 8, !tbaa !344
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSL_NSA_17_ReuseOrAllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not18 = icmp eq ptr %.0, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = icmp eq ptr %.0, %i.x
  %or.cond = select i1 %.not18, i1 true, i1 %i.y
  br i1 %or.cond, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSA_15_Hash_node_baseEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = shl i64 %i.b, 3
  call void @_ZdlPvm(ptr noundef nonnull %.0, i64 noundef %i.z) #27
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSA_15_Hash_node_baseEm.exit

bb.j:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.ac = call ptr @__cxa_begin_catch(ptr %i.ab) #25 ; 0 uses
  %.not19 = icmp eq ptr %.0, null
  %.pre21 = load ptr, ptr %0, align 8, !tbaa !70  ; 3 uses
  br i1 %.not19, label %._crit_edge, label %bb.k

._crit_edge:                                      ; preds = %bb.j
  %.pre22 = load i64, ptr %i.a, align 8, !tbaa !71
  br label %bb.n

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSA_15_Hash_node_baseEm.exit: ; preds = %bb.i, %bb.h
  %i.ad = load ptr, ptr %2, align 8, !tbaa !354   ; 2 uses
  %.not5.i.i = icmp eq ptr %i.ad, null
  br i1 %.not5.i.i, label %_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSA_15_Hash_node_baseEm.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i
  %.06.i.i = phi ptr [ %i.ae, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i ], [ %i.ad, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSA_15_Hash_node_baseEm.exit ] ; 6 uses
  %i.ae = load ptr, ptr %.06.i.i, align 8, !tbaa !345 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !94 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !66
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !94 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !66
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #27
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 80) #27
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEED2Ev.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSA_15_Hash_node_baseEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = icmp eq ptr %.pre21, %i.ar
  br i1 %i.as, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load i64, ptr %i.a, align 8, !tbaa !71
  %i.au = shl i64 %i.at, 3
  call void @_ZdlPvm(ptr noundef %.pre21, i64 noundef %i.au) #27
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.l, %bb.k
  store i64 %i.e, ptr %i.d, align 8, !tbaa !537
  store ptr %.0, ptr %0, align 8, !tbaa !70
  store i64 %i.b, ptr %i.a, align 8, !tbaa !71
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.n:                                             ; preds = %._crit_edge, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  %i.aw = phi i64 [ %i.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit ], [ %.pre22, %._crit_edge ]
  %i.ax = phi ptr [ %.0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit ], [ %.pre21, %._crit_edge ]
  %i.ay = shl i64 %i.aw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ax, i8 0, i64 %i.ay, i1 false)
  invoke void @__cxa_rethrow() #29
          to label %bb.q unwind label %bb.m

bb.o:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.av

bb.p:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #28
  unreachable

bb.q:                                             ; preds = %bb.n
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSL_NSA_17_ReuseOrAllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !70
  %.not.not = icmp eq ptr %i.a, null              ; 2 uses
  br i1 %.not.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !71   ; 4 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !349

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !350
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.f, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !349

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.g, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

.noexc7.i.i:                                      ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.d
  %i.h = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #26 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i ]
  store ptr %.0.i, ptr %0, align 8, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !344  ; 4 uses
  %.not29 = icmp eq ptr %i.k, null
  br i1 %.not29, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = invoke noundef ptr @_ZNKSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEclIJRKSA_EEEPSB_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %bb.h unwind label %bb.k       ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.p = load i64, ptr %i.o, align 8, !tbaa !348  ; 2 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !348
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.q, align 8, !tbaa !344
  %i.r = load ptr, ptr %0, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !71
  %i.u = urem i64 %i.p, %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.u
  store ptr %i.q, ptr %i.v, align 8, !tbaa !346
  %.02733 = load ptr, ptr %i.k, align 8, !tbaa !345 ; 2 uses
  %.not3034 = icmp eq ptr %.02733, null
  br i1 %.not3034, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.m
  %.02736 = phi ptr [ %.027, %bb.m ], [ %.02733, %bb.h ] ; 3 uses
  %.035 = phi ptr [ %i.x, %bb.m ], [ %i.m, %bb.h ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02736, i64 8
  %i.x = invoke noundef ptr @_ZNKSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEclIJRKSA_EEEPSB_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(64) %i.w)
          to label %bb.i unwind label %bb.l       ; 3 uses

bb.i:                                             ; preds = %.lr.ph
  store ptr %i.x, ptr %.035, align 8, !tbaa !345
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %.02736, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !348 ; 2 uses
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !348
  %i.ab = load i64, ptr %i.s, align 8, !tbaa !71
  %i.ac = urem i64 %i.aa, %i.ab
  %i.ad = load ptr, ptr %0, align 8, !tbaa !70
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !346
  %.not32 = icmp eq ptr %i.af, null
  br i1 %.not32, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  store ptr %.035, ptr %i.ae, align 8, !tbaa !346
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.i
  %.027 = load ptr, ptr %.02736, align 8, !tbaa !345 ; 2 uses
  %.not30 = icmp eq ptr %.027, null
  br i1 %.not30, label %.loopexit, label %.lr.ph, !llvm.loop !541

bb.n:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.ag, %bb.k ]
  %.026 = extractvalue { ptr, i32 } %.pn, 0
  %i.ai = tail call ptr @__cxa_begin_catch(ptr %.026) #25 ; 0 uses
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #25
  br i1 %.not.not, label %bb.o, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %0, align 8, !tbaa !70    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !71
  %i.ao = shl i64 %i.an, 3
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.ao) #27
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

bb.q:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.p, %bb.o, %bb.n
  invoke void @__cxa_rethrow() #29
          to label %bb.t unwind label %bb.q

bb.r:                                             ; preds = %bb.q
  resume { ptr, i32 } %i.ap

.loopexit:                                        ; preds = %bb.m, %bb.h, %bb.f
  ret void

bb.s:                                             ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #28
  unreachable

bb.t:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !354    ; 2 uses
  %.not5.i = icmp eq ptr %i.a, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i
  %.06.i = phi ptr [ %i.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ], [ %i.a, %bb.a ] ; 6 uses
  %i.b = load ptr, ptr %.06.i, align 8, !tbaa !345 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i, i64 56 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !66
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !66
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 80) #27
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i, !llvm.loop !1

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEclIJRKSA_EEEPSB_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !354    ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !345
  store ptr %i.b, ptr %0, align 8, !tbaa !354
  store ptr null, ptr %i.a, align 8, !tbaa !345
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !66
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !66
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE9constructISA_JRKSA_EEEvRSC_PT_DpOT0_.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #27
  invoke void @__cxa_rethrow() #29
          to label %bb.k unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.j

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.x, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  %i.s = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26 ; 4 uses
  store ptr null, ptr %i.s, align 8, !tbaa !345
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE9constructISA_JRKSA_EEEvRSC_PT_DpOT0_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 80) #27
  invoke void @__cxa_rethrow() #29
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #28
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable

_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE9constructISA_JRKSA_EEEvRSC_PT_DpOT0_.exit: ; preds = %bb.e, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %.0 = phi ptr [ %i.a, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit ], [ %i.s, %bb.e ]
  ret ptr %.0

bb.j:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EEaSERKSF_:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !361  ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !366
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !360
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !367
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !339  ; 2 uses
  %.not5.i = icmp eq ptr %i.i, null
  br i1 %.not5.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_nodeC2ERSF_.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ]
  store ptr %.sink.i, ptr %i.c, align 8, !tbaa !366
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_nodeC2ERSF_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_nodeC2ERSF_.exit: ; preds = %bb.c, %.sink.split.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !337
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !356
  store ptr %i.j, ptr %i.d, align 8, !tbaa !357
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !358
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !337  ; 2 uses
  %.not6 = icmp eq ptr %i.n, null
  br i1 %.not6, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_nodeC2ERSF_.exit
  %i.o = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE7_M_copyILb0ENSF_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.d, %.noexc
  %.0.i.i.i = phi ptr [ %i.q, %.noexc ], [ %i.o, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !339  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i, label %.noexc, !llvm.loop !2

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i: ; preds = %.noexc
  store ptr %.0.i.i.i, ptr %i.k, align 8, !tbaa !361
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i
  %.0.i.i7.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i7.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !338  ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i8.i, label %bb.f, label %bb.e, !llvm.loop !3

bb.f:                                             ; preds = %bb.e
  store ptr %.0.i.i7.i, ptr %i.d, align 8, !tbaa !361
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !358
  store i64 %i.u, ptr %i.l, align 8, !tbaa !358
  store ptr %i.o, ptr %i.a, align 8, !tbaa !361
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !368
  %.pre7 = load ptr, ptr %2, align 8, !tbaa !365
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_nodeC2ERSF_.exit
  %i.w = phi ptr [ %.pre7, %bb.f ], [ %i.b, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_nodeC2ERSF_.exit ]
  %i.x = phi ptr [ %.pre, %bb.f ], [ %0, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_nodeC2ERSF_.exit ]
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.w)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_nodeD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #28
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_nodeD2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_nodeD2Ev.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !368, !nonnull !152, !align !369
  %i.c = load ptr, ptr %0, align 8, !tbaa !365
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE7_M_copyILb0ENSF_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_nodeclIRKS9_EEPSt13_Rb_tree_nodeIS9_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.a) ; 8 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !370
  store i32 %i.c, ptr %i.b, align 8, !tbaa !370
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.e, align 8, !tbaa !367
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !338  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE7_M_copyILb0ENSF_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.h, ptr %i.i, align 8, !tbaa !338
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.a
  %.030.in35 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03036 = load ptr, ptr %.030.in35, align 8, !tbaa !339 ; 2 uses
  %.not3237 = icmp eq ptr %.03036, null
  br i1 %.not3237, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %.03039 = phi ptr [ %.030, %bb.l ], [ %.03036, %bb.e ] ; 4 uses
  %.03138 = phi ptr [ %i.l, %bb.l ], [ %i.b, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.03039, i64 32
  %i.l = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_nodeclIRKS9_EEPSt13_Rb_tree_nodeIS9_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %bb.f unwind label %bb.i       ; 7 uses

bb.f:                                             ; preds = %.lr.ph
  %i.m = load i32, ptr %.03039, align 8, !tbaa !370
  store i32 %i.m, ptr %i.l, align 8, !tbaa !370
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.03138, i64 16
  store ptr %i.l, ptr %i.o, align 8, !tbaa !339
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.03138, ptr %i.p, align 8, !tbaa !367
  %i.q = getelementptr inbounds nuw i8, ptr %.03039, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !338  ; 2 uses
  %.not33 = icmp eq ptr %i.r, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE7_M_copyILb0ENSF_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.s, ptr %i.t, align 8, !tbaa !338
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph, %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.j, %bb.d ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %.0) #25 ; 0 uses
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #29
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.030.in = getelementptr inbounds nuw i8, ptr %.03039, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !339 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !542

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.w

._crit_edge:                                      ; preds = %bb.l, %bb.e
  ret ptr %i.b

bb.o:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #28
  unreachable

bb.p:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_nodeclIRKS9_EEPSt13_Rb_tree_nodeIS9_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !366  ; 9 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_node10_M_extractEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !367  ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !366
  %.not9.i = icmp eq ptr %i.d, null
  br i1 %.not9.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !338
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8, !tbaa !338
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !339  ; 2 uses
  %.not10.i = icmp eq ptr %i.i, null
  br i1 %.not10.i, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %storemerge.i = phi ptr [ %i.k, %.preheader.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !338  ; 2 uses
  %.not11.i = icmp eq ptr %i.k, null
  br i1 %.not11.i, label %bb.e, label %.preheader.i, !llvm.loop !543

bb.e:                                             ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !339  ; 2 uses
  %.not12.i = icmp eq ptr %i.m, null
  %spec.store.select.i = select i1 %.not12.i, ptr %storemerge.i, ptr %i.m
  store ptr %spec.store.select.i, ptr %i.a, align 8, !tbaa !366
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !339
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !365
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !342  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN12ToolGroupCapD2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !343
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #27
  br label %_ZN12ToolGroupCapD2Ev.exit.i.i

_ZN12ToolGroupCapD2Ev.exit.i.i:                   ; preds = %bb.i, %bb.h
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !94   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS9_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN12ToolGroupCapD2Ev.exit.i.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !66
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS9_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS9_E.exit: ; preds = %_ZN12ToolGroupCapD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE17_M_construct_nodeIJRKS9_EEEvPSt13_Rb_tree_nodeIS9_EDpOT_.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS9_E.exit
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #27
  invoke void @__cxa_rethrow() #29
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.l

common.resume:                                    ; preds = %bb.o, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.k ], [ %i.am, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #28
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_node10_M_extractEv.exit: ; preds = %bb.a
  %i.ah = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #26 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE17_M_construct_nodeIJRKS9_EEEvPSt13_Rb_tree_nodeIS9_EDpOT_.exit unwind label %bb.n

bb.n:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_node10_M_extractEv.exit
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  %i.al = tail call ptr @__cxa_begin_catch(ptr %i.ak) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 96) #27
  invoke void @__cxa_rethrow() #29
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #28
  unreachable

bb.q:                                             ; preds = %bb.n
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE17_M_construct_nodeIJRKS9_EEEvPSt13_Rb_tree_nodeIS9_EDpOT_.exit: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_node10_M_extractEv.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS9_E.exit
  %.0 = phi ptr [ %i.b, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS9_E.exit ], [ %i.ah, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_node10_M_extractEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !64
  %i.c = load ptr, ptr %1, align 8, !tbaa !94     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !65   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.e, ptr %i.a, align 8, !tbaa !101
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !94
  %i.h = load i64, ptr %i.a, align 8, !tbaa !101
  store i64 %i.h, ptr %i.b, align 8, !tbaa !66
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !66
  store i8 %i.j, ptr %i.i, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !65
  %i.m = load ptr, ptr %0, align 8, !tbaa !94
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !545  ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !342  ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i.i.i, label %.noexc4, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = icmp ugt i64 %i.v, 9223372036854775800
  br i1 %i.w, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt4pairIifEE8allocateEmPKv.exit.i.i.i.i.i, !prof !349

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairIifEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #26
          to label %.noexc4 unwind label %bb.e

.noexc4:                                          ; preds = %_ZNSt15__new_allocatorISt4pairIifEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.x, %_ZNSt15__new_allocatorISt4pairIifEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.y, ptr %i.o, align 8, !tbaa !342
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !545
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !343
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !546 ; 2 uses
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !546 ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc4, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %.noexc4 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %.noexc4 ] ; 2 uses
  %i.ae = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 4
  store i64 %i.ae, ptr %.09.i.i.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, %i.ad
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !544

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc4
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.y, %.noexc4 ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.z, align 8, !tbaa !545
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aj = load i64, ptr %i.ai, align 8
  store i64 %i.aj, ptr %i.ah, align 8
  ret void

bb.e:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIifEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %0, align 8, !tbaa !94    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.b
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.an = load i64, ptr %i.b, align 8, !tbaa !66
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ak
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, short>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, short>>, std::less<std::__cxx11::basic_string<char>>>::_Reuse_or_alloc_node", align 8 ; 9 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !361  ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !372
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !361  ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !373
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !363
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !367
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !339  ; 2 uses
  %.not5.i = icmp eq ptr %i.i, null
  br i1 %.not5.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ]
  store ptr %.sink.i, ptr %i.c, align 8, !tbaa !373
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit: ; preds = %bb.c, %.sink.split.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !337
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !356
  store ptr %i.j, ptr %i.d, align 8, !tbaa !357
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !358
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !337  ; 2 uses
  %.not6 = icmp eq ptr %i.n, null
  br i1 %.not6, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit
  %i.o = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.d, %.noexc
  %.0.i.i.i = phi ptr [ %i.q, %.noexc ], [ %i.o, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !339  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i, label %.noexc, !llvm.loop !2

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i: ; preds = %.noexc
  store ptr %.0.i.i.i, ptr %i.k, align 8, !tbaa !361
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i
  %.0.i.i7.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i7.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !338  ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i8.i, label %bb.f, label %bb.e, !llvm.loop !3

bb.f:                                             ; preds = %bb.e
  store ptr %.0.i.i7.i, ptr %i.d, align 8, !tbaa !361
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !358
  store i64 %i.u, ptr %i.l, align 8, !tbaa !358
  store ptr %i.o, ptr %i.a, align 8, !tbaa !361
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !374
  %.pre7 = load ptr, ptr %2, align 8, !tbaa !372
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit
  %i.w = phi ptr [ %.pre7, %bb.f ], [ %i.b, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit ]
  %i.x = phi ptr [ %.pre, %bb.f ], [ %0, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit ]
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.w)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #28
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeD2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeD2Ev.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !374, !nonnull !152, !align !369
  %i.c = load ptr, ptr %0, align 8, !tbaa !372
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeclIRKS8_EEPSt13_Rb_tree_nodeIS8_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(34) %i.a) ; 8 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !370
  store i32 %i.c, ptr %i.b, align 8, !tbaa !370
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.e, align 8, !tbaa !367
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !338  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.h, ptr %i.i, align 8, !tbaa !338
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.a
  %.030.in35 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03036 = load ptr, ptr %.030.in35, align 8, !tbaa !339 ; 2 uses
  %.not3237 = icmp eq ptr %.03036, null
  br i1 %.not3237, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %.03039 = phi ptr [ %.030, %bb.l ], [ %.03036, %bb.e ] ; 4 uses
  %.03138 = phi ptr [ %i.l, %bb.l ], [ %i.b, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.03039, i64 32
  %i.l = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeclIRKS8_EEPSt13_Rb_tree_nodeIS8_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(34) %i.k)
          to label %bb.f unwind label %bb.i       ; 7 uses

bb.f:                                             ; preds = %.lr.ph
  %i.m = load i32, ptr %.03039, align 8, !tbaa !370
  store i32 %i.m, ptr %i.l, align 8, !tbaa !370
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.03138, i64 16
  store ptr %i.l, ptr %i.o, align 8, !tbaa !339
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.03138, ptr %i.p, align 8, !tbaa !367
  %i.q = getelementptr inbounds nuw i8, ptr %.03039, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !338  ; 2 uses
  %.not33 = icmp eq ptr %i.r, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.s, ptr %i.t, align 8, !tbaa !338
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph, %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.j, %bb.d ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %.0) #25 ; 0 uses
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #29
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.030.in = getelementptr inbounds nuw i8, ptr %.03039, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !339 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !547

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.w

._crit_edge:                                      ; preds = %bb.l, %bb.e
  ret ptr %i.b

bb.o:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #28
  unreachable

bb.p:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeclIRKS8_EEPSt13_Rb_tree_nodeIS8_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(34) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !373  ; 7 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_node10_M_extractEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !367  ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !373
  %.not9.i = icmp eq ptr %i.d, null
  br i1 %.not9.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !338
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8, !tbaa !338
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !339  ; 2 uses
  %.not10.i = icmp eq ptr %i.i, null
  br i1 %.not10.i, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %storemerge.i = phi ptr [ %i.k, %.preheader.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !338  ; 2 uses
  %.not11.i = icmp eq ptr %i.k, null
  br i1 %.not11.i, label %bb.e, label %.preheader.i, !llvm.loop !548

bb.e:                                             ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !339  ; 2 uses
  %.not12.i = icmp eq ptr %i.m, null
  %spec.store.select.i = select i1 %.not12.i, ptr %storemerge.i, ptr %i.m
  store ptr %spec.store.select.i, ptr %i.a, align 8, !tbaa !373
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !339
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !372
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !94   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.t = load i64, ptr %i.r, align 8, !tbaa !66
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !374, !nonnull !152, !align !369
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(34) %1)
  br label %bb.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_node10_M_extractEv.exit: ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !374, !nonnull !152, !align !369
  %i.y = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #26 ; 2 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(34) %1)
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_node10_M_extractEv.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.0 = phi ptr [ %i.b, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %i.y, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_node10_M_extractEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(34) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !64
  %i.d = load ptr, ptr %2, align 8, !tbaa !94     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !65   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.f, ptr %i.a, align 8, !tbaa !101
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(34) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !94
  %i.i = load i64, ptr %i.a, align 8, !tbaa !101
  store i64 %i.i, ptr %i.c, align 8, !tbaa !66
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !66
  store i8 %i.k, ptr %i.j, align 1, !tbaa !66
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #25 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #27
  invoke void @__cxa_rethrow() #29
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.p, ptr %i.q, align 8, !tbaa !65
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load i16, ptr %i.u, align 8, !tbaa !550
  store i16 %i.v, ptr %i.t, align 8, !tbaa !550
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #28
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE7_M_copyILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #26 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE13_M_clone_nodeILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_RT0_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = tail call ptr @__cxa_begin_catch(ptr %i.e) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #27
  invoke void @__cxa_rethrow() #29
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.d

common.resume:                                    ; preds = %bb.t, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.ak, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #28
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE13_M_clone_nodeILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_RT0_.exit: ; preds = %bb.a
  %i.j = load i32, ptr %1, align 8, !tbaa !370
  store i32 %i.j, ptr %i.b, align 8, !tbaa !370
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.l, align 8, !tbaa !367
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !338  ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE13_M_clone_nodeILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_RT0_.exit
  %i.o = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE7_M_copyILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.o, ptr %i.p, align 8, !tbaa !338
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

bb.i:                                             ; preds = %bb.g, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE13_M_clone_nodeILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_RT0_.exit
  %.030.in36 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03037 = load ptr, ptr %.030.in36, align 8, !tbaa !339 ; 2 uses
  %.not3238 = icmp eq ptr %.03037, null
  br i1 %.not3238, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.s
  %.03040 = phi ptr [ %.030, %bb.s ], [ %.03037, %bb.i ] ; 4 uses
  %.03139 = phi ptr [ %i.r, %bb.s ], [ %i.b, %bb.i ] ; 2 uses
  %i.r = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #26
          to label %.noexc unwind label %bb.q     ; 9 uses

.noexc:                                           ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.03040, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %bb.n unwind label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 96) #27
  invoke void @__cxa_rethrow() #29
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #28
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable

bb.n:                                             ; preds = %.noexc
  %i.aa = load i32, ptr %.03040, align 8, !tbaa !370
  store i32 %i.aa, ptr %i.r, align 8, !tbaa !370
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.03139, i64 16
  store ptr %i.r, ptr %i.ac, align 8, !tbaa !339
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.03139, ptr %i.ad, align 8, !tbaa !367
  %i.ae = getelementptr inbounds nuw i8, ptr %.03040, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !338 ; 2 uses
  %.not33 = icmp eq ptr %i.af, null
  br i1 %.not33, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE7_M_copyILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.af, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !338
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph, %bb.o
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.q, %bb.k, %bb.h
  %.pn = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.ai, %bb.q ], [ %i.x, %bb.k ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %.0) #25 ; 0 uses
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #29
          to label %bb.v unwind label %bb.t

bb.s:                                             ; preds = %bb.p, %bb.n
  %.030.in = getelementptr inbounds nuw i8, ptr %.03040, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !339 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !551

bb.t:                                             ; preds = %bb.r, %.body
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.u

._crit_edge:                                      ; preds = %bb.s, %bb.i
  ret ptr %i.b

bb.u:                                             ; preds = %bb.t
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #28
  unreachable

bb.v:                                             ; preds = %bb.r
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %3, align 8, !tbaa !554, !nonnull !152, !align !369
  %i.c = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #26 ; 9 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(34) %i.a)
  %i.d = load i32, ptr %1, align 8, !tbaa !370
  store i32 %i.d, ptr %i.c, align 8, !tbaa !370
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.f, align 8, !tbaa !367
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !338  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.i, ptr %i.j, align 8, !tbaa !338
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.a
  %.030.in36 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03037 = load ptr, ptr %.030.in36, align 8, !tbaa !339 ; 2 uses
  %.not3238 = icmp eq ptr %.03037, null
  br i1 %.not3238, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %.03040 = phi ptr [ %.030, %bb.l ], [ %.03037, %bb.e ] ; 4 uses
  %.03139 = phi ptr [ %i.m, %bb.l ], [ %i.c, %bb.e ] ; 2 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !554, !nonnull !152, !align !369
  %i.m = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #26
          to label %.noexc unwind label %bb.i     ; 8 uses

.noexc:                                           ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.03040, i64 32
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(34) %i.n)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %.noexc
  %i.o = load i32, ptr %.03040, align 8, !tbaa !370
  store i32 %i.o, ptr %i.m, align 8, !tbaa !370
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.03139, i64 16
  store ptr %i.m, ptr %i.q, align 8, !tbaa !339
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.03139, ptr %i.r, align 8, !tbaa !367
  %i.s = getelementptr inbounds nuw i8, ptr %.03040, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !338  ; 2 uses
  %.not33 = icmp eq ptr %i.t, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.t, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !338
  br label %bb.l

bb.i:                                             ; preds = %.noexc, %.lr.ph, %bb.g
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.k, %bb.d ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %.0) #25 ; 0 uses
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #29
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.030.in = getelementptr inbounds nuw i8, ptr %.03040, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !339 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !552

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.y

._crit_edge:                                      ; preds = %bb.l, %bb.e
  ret ptr %i.c

bb.o:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #28
  unreachable

bb.p:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseI13WearBarParamsE14_M_copy_assignERKS1_(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(57) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<float, std::pair<const float, video::SColor>, std::_Select1st<std::pair<const float, video::SColor>>, std::less<float>>::_Alloc_node", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !73, !range !151, !noundef !152
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load i8, ptr %i.d, align 8, !range !151
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EEaSERKSA_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i8, ptr %i.h, align 8, !tbaa !562
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.i, ptr %i.j, align 8, !tbaa !562
  br label %_ZNSt22_Optional_payload_baseI13WearBarParamsE8_M_resetEv.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.k, align 8, !tbaa !355
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !337
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.m, align 8, !tbaa !356
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8, !tbaa !357
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !358
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !337  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseI13WearBarParamsE12_M_constructIJRKS0_EEEvDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %0, ptr %2, align 8, !tbaa !376
  %i.r = call noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %i.q, ptr noundef nonnull %i.k, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  br label %.noexc.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %.noexc.i.i.i.i.i ], [ %i.r, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !339  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i, !llvm.loop !2

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.m, align 8, !tbaa !361
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i ], [ %i.v, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !338  ; 2 uses
  %.not.i.i8.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i, label %bb.g, label %bb.f, !llvm.loop !3

bb.g:                                             ; preds = %bb.f
  store ptr %.0.i.i7.i.i.i.i.i.i.i, ptr %i.n, align 8, !tbaa !361
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !358
  store i64 %i.x, ptr %i.o, align 8, !tbaa !358
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  store ptr %i.r, ptr %i.l, align 8, !tbaa !361
  br label %_ZNSt22_Optional_payload_baseI13WearBarParamsE12_M_constructIJRKS0_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseI13WearBarParamsE12_M_constructIJRKS0_EEEvDpOT_.exit: ; preds = %bb.d, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !562
  store i8 %i.aa, ptr %i.y, align 8, !tbaa !562
  store i8 1, ptr %i.a, align 8, !tbaa !73
  br label %_ZNSt22_Optional_payload_baseI13WearBarParamsE8_M_resetEv.exit

bb.h:                                             ; preds = %bb.c
  store i8 0, ptr %i.a, align 8, !tbaa !73
  br i1 %i.c, label %bb.i, label %_ZNSt22_Optional_payload_baseI13WearBarParamsE8_M_resetEv.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !337
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef %i.ac)
          to label %_ZNSt22_Optional_payload_baseI13WearBarParamsE8_M_resetEv.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #28
  unreachable

_ZNSt22_Optional_payload_baseI13WearBarParamsE8_M_resetEv.exit: ; preds = %bb.i, %bb.h, %_ZNSt22_Optional_payload_baseI13WearBarParamsE12_M_constructIJRKS0_EEEvDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EEaSERKSA_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<float, std::pair<const float, video::SColor>, std::_Select1st<std::pair<const float, video::SColor>>, std::less<float>>::_Reuse_or_alloc_node", align 8 ; 9 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !361  ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !378
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !361  ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !379
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !376
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !367
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !339  ; 2 uses
  %.not5.i = icmp eq ptr %i.i, null
  br i1 %.not5.i, label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ]
  store ptr %.sink.i, ptr %i.c, align 8, !tbaa !379
  br label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit: ; preds = %bb.c, %.sink.split.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !337
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !356
  store ptr %i.j, ptr %i.d, align 8, !tbaa !357
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !358
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !337  ; 2 uses
  %.not6 = icmp eq ptr %i.n, null
  br i1 %.not6, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit
  %i.o = invoke noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.d, %.noexc
  %.0.i.i.i = phi ptr [ %i.q, %.noexc ], [ %i.o, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !339  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i, label %.noexc, !llvm.loop !2

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i: ; preds = %.noexc
  store ptr %.0.i.i.i, ptr %i.k, align 8, !tbaa !361
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i
  %.0.i.i7.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i7.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !338  ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i8.i, label %bb.f, label %bb.e, !llvm.loop !3

bb.f:                                             ; preds = %bb.e
  store ptr %.0.i.i7.i, ptr %i.d, align 8, !tbaa !361
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !358
  store i64 %i.u, ptr %i.l, align 8, !tbaa !358
  store ptr %i.o, ptr %i.a, align 8, !tbaa !361
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !380
  %.pre7 = load ptr, ptr %2, align 8, !tbaa !378
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit
  %i.w = phi ptr [ %.pre7, %bb.f ], [ %i.b, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit ]
  %i.x = phi ptr [ %.pre, %bb.f ], [ %0, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit ]
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.w)
          to label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #28
  unreachable

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeD2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeD2Ev.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !380, !nonnull !152, !align !369
  %i.c = load ptr, ptr %0, align 8, !tbaa !378
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !379  ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !367  ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !379
  %.not9.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not9.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !338
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8, !tbaa !338
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !339  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i.i, label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.d, %.preheader.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.k, %.preheader.i.i.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !338  ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not11.i.i.i, label %bb.e, label %.preheader.i.i.i, !llvm.loop !563

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !339  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.m, null
  %spec.store.select.i.i.i = select i1 %.not12.i.i.i, ptr %storemerge.i.i.i, ptr %i.m
  store ptr %spec.store.select.i.i.i, ptr %i.a, align 8, !tbaa !379
  br label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !339
  br label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %3, align 8, !tbaa !378
  br label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i: ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
  br label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i
  %.sink.i.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i ], [ %i.b, %bb.d ], [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ %i.b, %bb.g ] ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 32
  %i.r = load i64, ptr %i.p, align 4
  store i64 %i.r, ptr %i.q, align 4
  %i.s = load i32, ptr %1, align 8, !tbaa !370
  store i32 %i.s, ptr %.sink.i.i, align 8, !tbaa !370
  %i.t = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  store ptr %2, ptr %i.u, align 8, !tbaa !367
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !338  ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit
  %i.x = invoke noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.w, ptr noundef nonnull %.sink.i.i, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !338
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.v

bb.k:                                             ; preds = %bb.i, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit
  %.030.in46 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03047 = load ptr, ptr %.030.in46, align 8, !tbaa !339 ; 2 uses
  %.not3248 = icmp eq ptr %.03047, null
  br i1 %.not3248, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.x
  %.03050 = phi ptr [ %.030, %bb.x ], [ %.03047, %bb.k ] ; 4 uses
  %.03149 = phi ptr [ %.sink.i.i36, %bb.x ], [ %.sink.i.i, %bb.k ] ; 2 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !379 ; 7 uses
  %.not.i.i.i34 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i34, label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !367 ; 5 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !379
  %.not9.i.i.i35 = icmp eq ptr %i.ac, null
  br i1 %.not9.i.i.i35, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.af = icmp eq ptr %i.ae, %i.aa
  br i1 %i.af, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.ad, align 8, !tbaa !338
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !339 ; 2 uses
  %.not10.i.i.i37 = icmp eq ptr %i.ah, null
  br i1 %.not10.i.i.i37, label %bb.r, label %.preheader.i.i.i38

.preheader.i.i.i38:                               ; preds = %bb.n, %.preheader.i.i.i38
  %storemerge.i.i.i39 = phi ptr [ %i.aj, %.preheader.i.i.i38 ], [ %i.ah, %bb.n ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i39, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !338 ; 2 uses
  %.not11.i.i.i40 = icmp eq ptr %i.aj, null
  br i1 %.not11.i.i.i40, label %bb.o, label %.preheader.i.i.i38, !llvm.loop !563

bb.o:                                             ; preds = %.preheader.i.i.i38
  %i.ak = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i39, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !339 ; 2 uses
  %.not12.i.i.i41 = icmp eq ptr %i.al, null
  %spec.store.select.i.i.i42 = select i1 %.not12.i.i.i41, ptr %storemerge.i.i.i39, ptr %i.al
  store ptr %spec.store.select.i.i.i42, ptr %i.a, align 8, !tbaa !379
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr null, ptr %i.am, align 8, !tbaa !339
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  store ptr null, ptr %3, align 8, !tbaa !378
  br label %bb.r

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43: ; preds = %.lr.ph
  %i.an = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43
  %.sink.i.i36 = phi ptr [ %i.aa, %bb.q ], [ %i.aa, %bb.n ], [ %i.aa, %bb.o ], [ %i.aa, %bb.p ], [ %i.an, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43 ] ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.03050, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink.i.i36, i64 32
  %i.aq = load i64, ptr %i.ao, align 4
  store i64 %i.aq, ptr %i.ap, align 4
  %i.ar = load i32, ptr %.03050, align 8, !tbaa !370
  store i32 %i.ar, ptr %.sink.i.i36, align 8, !tbaa !370
  %i.as = getelementptr inbounds nuw i8, ptr %.sink.i.i36, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.03149, i64 16
  store ptr %.sink.i.i36, ptr %i.at, align 8, !tbaa !339
  %i.au = getelementptr inbounds nuw i8, ptr %.sink.i.i36, i64 8
  store ptr %.03149, ptr %i.au, align 8, !tbaa !367
  %i.av = getelementptr inbounds nuw i8, ptr %.03050, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !338 ; 2 uses
  %.not33 = icmp eq ptr %i.aw, null
  br i1 %.not33, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = invoke noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.aw, ptr noundef nonnull %.sink.i.i36, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink.i.i36, i64 24
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !338
  br label %bb.x

bb.u:                                             ; preds = %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43, %bb.s
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.j
  %.pn = phi { ptr, i32 } [ %i.az, %bb.u ], [ %i.z, %bb.j ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.ba = tail call ptr @__cxa_begin_catch(ptr %.0) #25 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.sink.i.i)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_rethrow() #29
          to label %bb.ab unwind label %bb.y

bb.x:                                             ; preds = %bb.t, %bb.r
  %.030.in = getelementptr inbounds nuw i8, ptr %.03050, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !339 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !564

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  resume { ptr, i32 } %i.bb

._crit_edge:                                      ; preds = %bb.x, %bb.k
  ret ptr %.sink.i.i

bb.aa:                                            ; preds = %bb.y
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #28
  unreachable

bb.ab:                                            ; preds = %bb.w
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.a, align 4
  store i64 %i.d, ptr %i.c, align 4
  %i.e = load i32, ptr %1, align 8, !tbaa !370
  store i32 %i.e, ptr %i.b, align 8, !tbaa !370
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.g, align 8, !tbaa !367
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !338  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !338
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.a
  %.030.in35 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03036 = load ptr, ptr %.030.in35, align 8, !tbaa !339 ; 2 uses
  %.not3237 = icmp eq ptr %.03036, null
  br i1 %.not3237, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %.03039 = phi ptr [ %.030, %bb.l ], [ %.03036, %bb.e ] ; 4 uses
  %.03138 = phi ptr [ %i.m, %bb.l ], [ %i.b, %bb.e ] ; 2 uses
  %i.m = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %bb.f unwind label %bb.i       ; 8 uses

bb.f:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.03039, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.p = load i64, ptr %i.n, align 4
  store i64 %i.p, ptr %i.o, align 4
  %i.q = load i32, ptr %.03039, align 8, !tbaa !370
  store i32 %i.q, ptr %i.m, align 8, !tbaa !370
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.03138, i64 16
  store ptr %i.m, ptr %i.s, align 8, !tbaa !339
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.03138, ptr %i.t, align 8, !tbaa !367
  %i.u = getelementptr inbounds nuw i8, ptr %.03039, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !338  ; 2 uses
  %.not33 = icmp eq ptr %i.v, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = invoke noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.v, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !338
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph, %bb.g
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.l, %bb.d ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %.0) #25 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #29
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.030.in = getelementptr inbounds nuw i8, ptr %.03039, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !339 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !565

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.aa

._crit_edge:                                      ; preds = %bb.l, %bb.e
  ret ptr %i.b

bb.o:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #28
  unreachable

bb.p:                                             ; preds = %bb.k
  unreachable
}

declare noundef ptr @_ZN10FontEngine7getFontE8FontSpec(ptr noundef nonnull align 8 dereferenceable(1327), i64) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z17unescape_enrichedIwENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEESt17basic_string_viewIS2_S4_E(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.526") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !334
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !333
  store i32 0, ptr %i.a, align 8, !tbaa !336
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
          to label %.preheader unwind label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not33 = icmp eq i64 %1, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph32

.lr.ph32:                                         ; preds = %.preheader, %.backedge
  %.031 = phi i64 [ %i.t, %.backedge ], [ 0, %.preheader ] ; 4 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.031
  %i.d = load i32, ptr %i.c, align 4, !tbaa !336  ; 2 uses
  %i.e = icmp eq i32 %i.d, 27
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph32
  %i.f = add nuw i64 %.031, 1                     ; 3 uses
  %i.g = icmp eq i64 %i.f, %1
  br i1 %i.g, label %._crit_edge, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.f
  %i.j = load i32, ptr %i.i, align 4, !tbaa !336
  %i.k = icmp eq i32 %i.j, 40
  br i1 %i.k, label %bb.e, label %.backedge

bb.e:                                             ; preds = %bb.d
  %i.l = add i64 %.031, 2                         ; 3 uses
  %i.m = icmp ult i64 %i.l, %1
  br i1 %i.m, label %.lr.ph, label %.backedge

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.128 = phi i64 [ %i.r, %bb.f ], [ %i.l, %bb.e ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.128
  %i.o = load i32, ptr %i.n, align 4, !tbaa !336  ; 2 uses
  %.not = icmp eq i32 %i.o, 41
  br i1 %.not, label %.backedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.p = icmp eq i32 %i.o, 92
  %i.q = zext i1 %i.p to i64
  %spec.select = add nuw i64 %.128, 1
  %i.r = add i64 %spec.select, %i.q               ; 3 uses
  %i.s = icmp ult i64 %i.r, %1
  br i1 %i.s, label %.lr.ph, label %.backedge, !llvm.loop !566

.backedge:                                        ; preds = %.lr.ph, %bb.f, %bb.d, %bb.e, %bb.i
  %.3.sink = phi i64 [ %.031, %bb.i ], [ %i.f, %bb.d ], [ %i.l, %bb.e ], [ %i.r, %bb.f ], [ %.128, %.lr.ph ]
  %i.t = add i64 %.3.sink, 1                      ; 2 uses
  %i.u = icmp ult i64 %i.t, %1
  br i1 %i.u, label %.lr.ph32, label %._crit_edge, !llvm.loop !567

bb.g:                                             ; preds = %.lr.ph32
  %i.v = load i64, ptr %i.b, align 8, !tbaa !333  ; 4 uses
  %i.w = add i64 %i.v, 1                          ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !332    ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g
  %i.z = icmp ult i64 %i.v, 4
  tail call void @llvm.assume(i1 %i.z)
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !66
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i
  %i.ab = phi i64 [ %i.aa, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i ], [ 3, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ac = icmp ugt i64 %i.w, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_mutateEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.h
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !332
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i
  %i.ad = phi ptr [ %.pre.i.i, %.noexc ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.v
  store i32 %i.d, ptr %i.ae, align 4, !tbaa !336
  store i64 %i.w, ptr %i.b, align 8, !tbaa !333
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.w
  store i32 0, ptr %i.af, align 4, !tbaa !336
  br label %.backedge

bb.j:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

._crit_edge:                                      ; preds = %bb.b, %.backedge, %.preheader
  ret void

bb.k:                                             ; preds = %bb.j, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %i.h, %bb.c ]
  %i.ah = load ptr, ptr %0, align 8, !tbaa !332   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !66
  %i.ak = shl i64 %i.aj, 2
  %i.al = add i64 %i.ak, 4
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_mutateEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4core6stringIwEaSIwEERS1_PKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %2 = alloca %"class.std::__cxx11::basic_string.526", align 8 ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !334
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !333
  store i32 0, ptr %i.b, align 8, !tbaa !336
  call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #25
  %i.d = load ptr, ptr %2, align 8, !tbaa !332    ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %_ZN4core6stringIwE5clearEb.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.b, align 8, !tbaa !66
  %i.g = shl i64 %i.f, 2
  %i.h = add i64 %i.g, 4
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZN4core6stringIwE5clearEb.exit

_ZN4core6stringIwE5clearEb.exit:                  ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !332
  %i.j = icmp eq ptr %1, %i.i
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i64 @wcslen(ptr noundef nonnull %1) #31 ; 5 uses
  %i.l = and i64 %i.k, 4294967295                 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !333
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i32 noundef signext 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = and i64 %i.k, 4294967295                 ; 2 uses
  %.not18 = icmp eq i64 %i.p, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.q = load ptr, ptr %0, align 8, !tbaa !332    ; 7 uses
  %wide.trip.count = and i64 %i.k, 4294967295     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 8
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = sub i64 %i.a, %i.r
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.k, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !336
  %wide.load24 = load <4 x i32>, ptr %i.u, align 4, !tbaa !336
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> %wide.load, ptr %i.v, align 4, !tbaa !336
  store <4 x i32> %wide.load24, ptr %i.w, align 4, !tbaa !336
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !568

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.z = load i32, ptr %i.y, align 4, !tbaa !336
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.prol
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !336
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !569

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.ph, %i.p
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.f
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !333
  %i.ae = icmp ugt i64 %i.ad, %i.l
  br i1 %i.ae, label %bb.g, label %bb.h

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !336
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !336
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !336
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !336
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.am = load i32, ptr %i.al, align 4, !tbaa !336
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.1
  store i32 %i.am, ptr %i.an, align 4, !tbaa !336
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !336
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.2
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !336
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !570

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i32 noundef signext 0)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.c, %_ZN4core6stringIwE5clearEb.exit
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #22

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sin.v2f64(<2 x double>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i48 @llvm.vector.reduce.or.v2i48(<2 x i48>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }
attributes #30 = { nounwind willreturn memory(none) }
attributes #31 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null}
!1 = distinct !{!1, !319}
!2 = distinct !{!2, !319}
!3 = distinct !{!3, !319}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTS14MapDrawControl", !13, i64 0}
!15 = !{!"p1 _ZTSN5scene10ISceneNodeE", !13, i64 0}
!16 = !{!"p1 _ZTSN5scene16ICameraSceneNodeE", !13, i64 0}
!17 = !{!"p1 _ZTSN5scene13ISceneManagerE", !13, i64 0}
!18 = !{!"p1 _ZTS18WieldMeshSceneNode", !13, i64 0}
!19 = !{!"p1 _ZTS6Client", !13, i64 0}
!20 = !{!"float", !9, i64 0}
!21 = !{!"_ZTSN4core8vector3dIfEE", !20, i64 0, !20, i64 4, !20, i64 8}
!22 = !{!"short", !9, i64 0}
!23 = !{!"_ZTSN4core8vector3dIsEE", !22, i64 0, !22, i64 2, !22, i64 4}
!24 = !{!"bool", !9, i64 0}
!25 = !{!"_ZTSN4core8vector2dIfEE", !20, i64 0, !20, i64 4}
!26 = !{!"p1 omnipotent char", !13, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !26, i64 0}
!28 = !{!"long", !9, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !28, i64 8, !9, i64 16}
!30 = !{!"any p2 pointer", !13, i64 0}
!31 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !30, i64 0}
!32 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!33 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !32, i64 0}
!34 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !20, i64 0, !28, i64 8}
!35 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !31, i64 0, !28, i64 8, !33, i64 16, !28, i64 24, !34, i64 32, !32, i64 48}
!36 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE", !35, i64 0}
!37 = !{!"_ZTS14SimpleMetadata", !24, i64 8, !36, i64 16}
!38 = !{!"_ZTSSt22_Optional_payload_baseI16ToolCapabilitiesE", !9, i64 0, !24, i64 112}
!39 = !{!"_ZTSSt17_Optional_payloadI16ToolCapabilitiesLb1ELb0ELb0EE", !38, i64 0}
!40 = !{!"_ZTSSt17_Optional_payloadI16ToolCapabilitiesLb0ELb0ELb0EE", !39, i64 0}
!41 = !{!"_ZTSSt14_Optional_baseI16ToolCapabilitiesLb0ELb0EE", !40, i64 0}
!42 = !{!"_ZTSSt8optionalI16ToolCapabilitiesE", !41, i64 0}
!43 = !{!"_ZTSSt22_Optional_payload_baseI13WearBarParamsE", !9, i64 0, !24, i64 56}
!44 = !{!"_ZTSSt17_Optional_payloadI13WearBarParamsLb1ELb0ELb0EE", !43, i64 0}
!45 = !{!"_ZTSSt17_Optional_payloadI13WearBarParamsLb0ELb0ELb0EE", !44, i64 0}
!46 = !{!"_ZTSSt14_Optional_baseI13WearBarParamsLb0ELb0EE", !45, i64 0}
!47 = !{!"_ZTSSt8optionalI13WearBarParamsE", !46, i64 0}
!48 = !{!"_ZTS17ItemStackMetadata", !37, i64 0, !42, i64 72, !47, i64 192}
!49 = !{!"_ZTS9ItemStack", !29, i64 0, !22, i64 32, !22, i64 34, !48, i64 40}
!50 = !{!"_ZTS10CameraMode", !9, i64 0}
!51 = !{!"p2 _ZTS7Nametag", !30, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIP7NametagSaIS1_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!"_ZTSNSt12_Vector_baseIP7NametagSaIS1_EE12_Vector_implE", !52, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseIP7NametagSaIS1_EE", !53, i64 0}
!55 = !{!"_ZTSSt6vectorIP7NametagSaIS1_EE", !54, i64 0}
!56 = !{!"_ZTSN5video6SColorE", !10, i64 0}
!57 = !{!"_ZTS6Camera", !15, i64 0, !15, i64 8, !16, i64 16, !17, i64 24, !18, i64 32, !14, i64 40, !19, i64 48, !20, i64 56, !21, i64 60, !21, i64 72, !23, i64 84, !24, i64 90, !24, i64 91, !20, i64 92, !20, i64 96, !24, i64 100, !20, i64 104, !20, i64 108, !25, i64 112, !25, i64 120, !25, i64 128, !25, i64 136, !25, i64 144, !20, i64 152, !20, i64 156, !20, i64 160, !20, i64 164, !10, i64 168, !20, i64 172, !20, i64 176, !10, i64 180, !20, i64 184, !49, i64 192, !50, i64 488, !20, i64 492, !24, i64 496, !55, i64 504, !24, i64 528, !56, i64 532}
!58 = !{!57, !19, i64 48}
!59 = !{!57, !24, i64 100}
!60 = !{!20, !20, i64 0}
!61 = !{!57, !20, i64 160}
!62 = !{!57, !10, i64 180}
!63 = !{!57, !20, i64 184}
!64 = !{!27, !26, i64 0}
!65 = !{!29, !28, i64 8}
!66 = !{!9, !9, i64 0}
!67 = !{!"vtable pointer", !8, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!37, !24, i64 8}
!70 = !{!35, !31, i64 0}
!71 = !{!35, !28, i64 8}
!72 = !{!38, !24, i64 112}
!73 = !{!43, !24, i64 56}
!74 = !{!57, !50, i64 488}
!75 = !{!56, !10, i64 0}
!76 = !{!"p1 _ZTS13RenderingCore", !13, i64 0}
!77 = !{!"_ZTSSt10_Head_baseILm0EP13RenderingCoreLb0EE", !76, i64 0}
!78 = !{!"_ZTSSt11_Tuple_implILm0EJP13RenderingCoreSt14default_deleteIS0_EEE", !77, i64 0}
!79 = !{!"_ZTSSt5tupleIJP13RenderingCoreSt14default_deleteIS0_EEE", !78, i64 0}
!80 = !{!"_ZTSSt15__uniq_ptr_implI13RenderingCoreSt14default_deleteIS0_EE", !79, i64 0}
!81 = !{!"_ZTSSt15__uniq_ptr_dataI13RenderingCoreSt14default_deleteIS0_ELb1ELb1EE", !80, i64 0}
!82 = !{!"_ZTSSt10unique_ptrI13RenderingCoreSt14default_deleteIS0_EE", !81, i64 0}
!83 = !{!"p1 _ZTS14IrrlichtDevice", !13, i64 0}
!84 = !{!"p1 _ZTSN5video12IVideoDriverE", !13, i64 0}
!85 = !{!"p1 _ZTS15MyEventReceiver", !13, i64 0}
!86 = !{!"_ZTS15RenderingEngine", !56, i64 0, !56, i64 4, !82, i64 8, !83, i64 16, !84, i64 24, !85, i64 32}
!87 = !{!86, !83, i64 16}
!88 = !{!57, !15, i64 0}
!89 = !{!57, !15, i64 8}
!90 = !{!21, !20, i64 8}
!91 = !{!57, !16, i64 16}
!92 = !{!57, !17, i64 24}
!93 = !{!57, !18, i64 32}
!94 = !{!29, !26, i64 0}
!95 = !{!"_ZTS17IReferenceCounted", !10, i64 8}
!96 = !{!95, !10, i64 8}
!97 = !{!52, !51, i64 0}
!98 = !{!52, !51, i64 8}
!99 = !{!"p1 _ZTS8Settings", !13, i64 0}
!100 = !{!99, !99, i64 0}
end_hunk_2
begin_hunk_3_@llvm.fabs.v2f32
!296 = !{!"_ZTS8MeshGrid", !22, i64 0}
!297 = !{!"_ZTS6Client", !158, i64 0, !159, i64 8, !160, i64 16, !24, i64 24, !24, i64 25, !24, i64 26, !20, i64 28, !20, i64 32, !20, i64 36, !20, i64 40, !10, i64 44, !144, i64 48, !161, i64 56, !162, i64 64, !163, i64 72, !164, i64 80, !165, i64 88, !166, i64 96, !167, i64 104, !168, i64 112, !175, i64 120, !150, i64 128, !182, i64 568, !189, i64 576, !29, i64 584, !190, i64 616, !191, i64 624, !198, i64 632, !9, i64 640, !22, i64 642, !24, i64 644, !24, i64 645, !205, i64 648, !20, i64 656, !10, i64 660, !209, i64 664, !20, i64 712, !10, i64 716, !23, i64 720, !217, i64 728, !10, i64 808, !20, i64 812, !226, i64 816, !10, i64 896, !28, i64 904, !29, i64 912, !29, i64 944, !29, i64 976, !227, i64 1008, !13, i64 1016, !24, i64 1024, !24, i64 1025, !29, i64 1032, !235, i64 1064, !24, i64 1144, !24, i64 1145, !24, i64 1146, !24, i64 1147, !240, i64 1152, !247, i64 1176, !252, i64 1184, !20, i64 1208, !20, i64 1212, !254, i64 1216, !254, i64 1272, !256, i64 1328, !258, i64 1384, !260, i64 1440, !36, i64 1496, !261, i64 1552, !268, i64 1560, !144, i64 1568, !22, i64 1572, !118, i64 1576, !269, i64 1584, !20, i64 1592, !274, i64 1600, !281, i64 1624, !288, i64 1632, !24, i64 1640, !28, i64 1648, !10, i64 1656, !295, i64 1664, !296, i64 1672}
!298 = !{!297, !20, i64 712}
!299 = !{!57, !10, i64 168}
!300 = !{!57, !20, i64 172}
!301 = !{!57, !20, i64 164}
!302 = !{!"_ZTS7MtEvent"}
!303 = !{!"_ZTSN7MtEvent4TypeE", !9, i64 0}
!304 = !{!"_ZTS18SimpleTriggerEvent", !302, i64 0, !303, i64 8}
!305 = !{!304, !303, i64 8}
!306 = !{!57, !20, i64 176}
!307 = !{!22, !22, i64 0}
!308 = !{!"_ZTSSt22_Optional_payload_baseIN5video6SColorEE", !9, i64 0, !24, i64 4}
!309 = !{!"_ZTSSt17_Optional_payloadIN5video6SColorELb1ELb1ELb1EE", !308, i64 0}
!310 = !{!"_ZTSSt14_Optional_baseIN5video6SColorELb1ELb1EE", !309, i64 0}
!311 = !{!"_ZTSSt8optionalIN5video6SColorEE", !310, i64 0}
!312 = !{!"_ZTSSt22_Optional_payload_baseIjE", !9, i64 0, !24, i64 4}
!313 = !{!"_ZTSSt17_Optional_payloadIjLb1ELb1ELb1EE", !312, i64 0}
!314 = !{!"_ZTSSt14_Optional_baseIjLb1ELb1EE", !313, i64 0}
!315 = !{!"_ZTSSt8optionalIjE", !314, i64 0}
!316 = !{!"p1 _ZTS7Nametag", !13, i64 0}
!317 = !{!21, !20, i64 4}
!318 = !{!21, !20, i64 0}
!319 = !{!"llvm.loop.mustprogress"}
!320 = !{!57, !20, i64 76}
!321 = !{!167, !167, i64 0}
!322 = !{!57, !20, i64 156}
!323 = !{!57, !20, i64 112}
!324 = !{!57, !20, i64 116}
!325 = !{!51, !51, i64 0}
!326 = !{!316, !316, i64 0}
!327 = !{!"_ZTS7Nametag", !15, i64 0, !29, i64 8, !56, i64 40, !311, i64 44, !315, i64 52, !21, i64 60, !24, i64 72}
!328 = !{!327, !15, i64 0}
!329 = !{!"p1 wchar_t", !13, i64 0}
!330 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !329, i64 0}
!331 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !330, i64 0, !28, i64 8, !9, i64 16}
!332 = !{!331, !329, i64 0}
!333 = !{!331, !28, i64 8}
!334 = !{!330, !329, i64 0}
!335 = !{!"wchar_t", !9, i64 0}
!336 = !{!335, !335, i64 0}
!337 = !{!124, !122, i64 8}
!338 = !{!123, !122, i64 24}
!339 = !{!123, !122, i64 16}
!340 = !{!"p1 _ZTSSt4pairIifE", !13, i64 0}
!341 = !{!"_ZTSNSt12_Vector_baseISt4pairIifESaIS1_EE17_Vector_impl_dataE", !340, i64 0, !340, i64 8, !340, i64 16}
!342 = !{!341, !340, i64 0}
!343 = !{!341, !340, i64 16}
!344 = !{!35, !32, i64 16}
!345 = !{!33, !32, i64 0}
!346 = !{!32, !32, i64 0}
!347 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !28, i64 0}
!348 = !{!347, !28, i64 0}
!349 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!350 = !{!35, !32, i64 48}
!351 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb1EEE", !13, i64 0}
!352 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEE", !13, i64 0}
!353 = !{!"_ZTSNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEE", !351, i64 0, !352, i64 8}
!354 = !{!353, !351, i64 0}
!355 = !{!124, !121, i64 0}
!356 = !{!124, !122, i64 16}
!357 = !{!124, !122, i64 24}
!358 = !{!124, !28, i64 32}
!359 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE", !13, i64 0}
!360 = !{!359, !359, i64 0}
!361 = !{!122, !122, i64 0}
!362 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !13, i64 0}
!363 = !{!362, !362, i64 0}
!364 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE20_Reuse_or_alloc_nodeE", !122, i64 0, !122, i64 8, !359, i64 16}
!365 = !{!364, !122, i64 0}
!366 = !{!364, !122, i64 8}
!367 = !{!123, !122, i64 8}
!368 = !{!364, !359, i64 16}
!369 = !{i64 8}
!370 = !{!123, !121, i64 0}
!371 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeE", !122, i64 0, !122, i64 8, !362, i64 16}
!372 = !{!371, !122, i64 0}
!373 = !{!371, !122, i64 8}
!374 = !{!371, !362, i64 16}
!375 = !{!"p1 _ZTSSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE", !13, i64 0}
!376 = !{!375, !375, i64 0}
!377 = !{!"_ZTSNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeE", !122, i64 0, !122, i64 8, !375, i64 16}
!378 = !{!377, !122, i64 0}
!379 = !{!377, !122, i64 8}
!380 = !{!377, !375, i64 16}
!381 = distinct !{null}
!382 = !{!14, !14, i64 0}
!383 = !{!49, !22, i64 32}
!384 = !{!49, !22, i64 34}
!385 = !{!34, !20, i64 0}
!386 = !{!150, !116, i64 96}
!387 = !{!24, !24, i64 0}
!388 = distinct !{!388, !319}
!389 = distinct !{null}
!390 = !{!"p2 _ZTS13InventoryList", !30, i64 0}
!391 = !{!"_ZTSNSt12_Vector_baseIP13InventoryListSaIS1_EE17_Vector_impl_dataE", !390, i64 0, !390, i64 8, !390, i64 16}
!392 = !{!"_ZTSNSt12_Vector_baseIP13InventoryListSaIS1_EE12_Vector_implE", !391, i64 0}
!393 = !{!"_ZTSSt12_Vector_baseIP13InventoryListSaIS1_EE", !392, i64 0}
!394 = !{!"_ZTSSt6vectorIP13InventoryListSaIS1_EE", !393, i64 0}
!395 = !{!"p1 _ZTS15IItemDefManager", !13, i64 0}
!396 = !{!"_ZTS9Inventory", !394, i64 0, !395, i64 24, !24, i64 32}
!397 = !{!"_ZTS13PlayerControl", !9, i64 0, !24, i64 1, !24, i64 2, !24, i64 3, !24, i64 4, !24, i64 5, !24, i64 6, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20}
!398 = !{!"_ZTS21PlayerPhysicsOverride", !20, i64 0, !20, i64 4, !20, i64 8, !24, i64 12, !24, i64 13, !24, i64 14, !20, i64 16, !20, i64 20, !20, i64 24, !20, i64 28, !20, i64 32, !20, i64 36, !20, i64 40, !20, i64 44, !20, i64 48, !20, i64 52}
!399 = !{!"_ZTS13PlayerFovSpec", !20, i64 0, !24, i64 4, !20, i64 8}
!400 = !{!"p2 _ZTS10HudElement", !30, i64 0}
!401 = !{!"_ZTSNSt12_Vector_baseIP10HudElementSaIS1_EE17_Vector_impl_dataE", !400, i64 0, !400, i64 8, !400, i64 16}
!402 = !{!"_ZTSNSt12_Vector_baseIP10HudElementSaIS1_EE12_Vector_implE", !401, i64 0}
!403 = !{!"_ZTSSt12_Vector_baseIP10HudElementSaIS1_EE", !402, i64 0}
!404 = !{!"_ZTSSt6vectorIP10HudElementSaIS1_EE", !403, i64 0}
!405 = !{!"_ZTS6Player", !50, i64 8, !21, i64 12, !21, i64 24, !21, i64 36, !396, i64 48, !20, i64 88, !20, i64 92, !20, i64 96, !20, i64 100, !20, i64 104, !20, i64 108, !20, i64 112, !20, i64 116, !20, i64 120, !20, i64 124, !20, i64 128, !20, i64 132, !9, i64 136, !20, i64 168, !29, i64 176, !29, i64 208, !397, i64 240, !398, i64 264, !10, i64 320, !10, i64 324, !29, i64 328, !21, i64 360, !22, i64 372, !399, i64 376, !404, i64 392}
!406 = !{!"_ZTS20LocalPlayerAnimation", !9, i64 0}
!407 = !{!"_ZTSN4core8aabbox3dIfEE", !21, i64 0, !21, i64 12}
!408 = !{!"p1 _ZTS10GenericCAO", !13, i64 0}
!409 = !{!"_ZTS14PlayerSettings", !24, i64 0, !24, i64 1, !24, i64 2, !24, i64 3, !24, i64 4, !24, i64 5, !24, i64 6, !24, i64 7}
!410 = !{!"_ZTS12AutoExposure", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20}
!411 = !{!"_ZTS8Lighting", !410, i64 0, !20, i64 24, !20, i64 28, !20, i64 32, !56, i64 36, !20, i64 40, !20, i64 44, !20, i64 48, !21, i64 52}
!412 = !{!"_ZTS11LocalPlayer", !405, i64 0, !22, i64 416, !24, i64 418, !24, i64 419, !24, i64 420, !9, i64 421, !24, i64 422, !24, i64 423, !24, i64 424, !20, i64 428, !21, i64 432, !21, i64 444, !20, i64 456, !20, i64 460, !10, i64 464, !9, i64 468, !9, i64 469, !24, i64 470, !20, i64 472, !20, i64 476, !20, i64 480, !24, i64 484, !406, i64 488, !20, i64 492, !29, i64 496, !29, i64 528, !29, i64 560, !56, i64 592, !20, i64 596, !20, i64 600, !21, i64 604, !23, i64 616, !23, i64 622, !407, i64 628, !24, i64 652, !24, i64 653, !20, i64 656, !24, i64 660, !23, i64 662, !29, i64 672, !24, i64 704, !24, i64 705, !24, i64 706, !22, i64 708, !20, i64 712, !20, i64 716, !407, i64 720, !20, i64 744, !20, i64 748, !24, i64 752, !20, i64 756, !21, i64 760, !408, i64 776, !19, i64 784, !409, i64 792, !411, i64 800}
!413 = !{!412, !20, i64 712}
!414 = !{!412, !20, i64 716}
!415 = !{!412, !408, i64 776}
!416 = !{!"_ZTS12ActiveObject", !22, i64 8}
!417 = !{!"p1 _ZTS17ClientEnvironment", !13, i64 0}
!418 = !{!"_ZTS18ClientActiveObject", !416, i64 0, !19, i64 16, !417, i64 24}
!419 = !{!"p1 _ZTSN5video6SColorE", !13, i64 0}
!420 = !{!"_ZTSNSt12_Vector_baseIN5video6SColorESaIS1_EE17_Vector_impl_dataE", !419, i64 0, !419, i64 8, !419, i64 16}
!421 = !{!"_ZTSNSt12_Vector_baseIN5video6SColorESaIS1_EE12_Vector_implE", !420, i64 0}
!422 = !{!"_ZTSSt12_Vector_baseIN5video6SColorESaIS1_EE", !421, i64 0}
!423 = !{!"_ZTSSt6vectorIN5video6SColorESaIS1_EE", !422, i64 0}
!424 = !{!"_ZTS12ObjectVisual", !9, i64 0}
!425 = !{!"_ZTSN4core8vector2dIsEE", !22, i64 0, !22, i64 2}
!426 = !{!"_ZTS7MapNode", !22, i64 0, !9, i64 2, !9, i64 3}
!427 = !{!"_ZTS16PointabilityType", !9, i64 0}
!428 = !{!"_ZTS10StepUpMode", !9, i64 0}
!429 = !{!"_ZTS16ObjectProperties", !240, i64 0, !423, i64 24, !407, i64 48, !407, i64 72, !424, i64 96, !29, i64 104, !29, i64 136, !29, i64 168, !29, i64 200, !29, i64 232, !21, i64 264, !56, i64 276, !311, i64 280, !425, i64 288, !425, i64 292, !20, i64 296, !20, i64 300, !20, i64 304, !20, i64 308, !20, i64 312, !20, i64 316, !315, i64 320, !426, i64 328, !22, i64 332, !22, i64 334, !9, i64 336, !427, i64 337, !24, i64 338, !24, i64 339, !24, i64 340, !24, i64 341, !24, i64 342, !24, i64 343, !24, i64 344, !24, i64 345, !24, i64 346, !24, i64 347, !24, i64 348, !24, i64 349, !428, i64 350}
!430 = !{!"p1 _ZTSN5scene14IMeshSceneNodeE", !13, i64 0}
!431 = !{!"p1 _ZTSN5scene21AnimatedMeshSceneNodeE", !13, i64 0}
!432 = !{!"p1 _ZTSN5scene19IBillboardSceneNodeE", !13, i64 0}
!433 = !{!"p1 _ZTSN5scene29IDummyTransformationSceneNodeE", !13, i64 0}
!434 = !{!"p1 _ZTS13MinimapMarker", !13, i64 0}
!435 = !{!"p1 _ZTS17MeshAnimationInfo", !13, i64 0}
!436 = !{!"_ZTSNSt12_Vector_baseI17MeshAnimationInfoSaIS0_EE17_Vector_impl_dataE", !435, i64 0, !435, i64 8, !435, i64 16}
!437 = !{!"_ZTSNSt12_Vector_baseI17MeshAnimationInfoSaIS0_EE12_Vector_implE", !436, i64 0}
!438 = !{!"_ZTSSt12_Vector_baseI17MeshAnimationInfoSaIS0_EE", !437, i64 0}
!439 = !{!"_ZTSSt6vectorI17MeshAnimationInfoSaIS0_EE", !438, i64 0}
!440 = !{!"_ZTSN5video15E_MATERIAL_TYPEE", !9, i64 0}
!441 = !{!"_ZTS16SmoothTranslatorIN4core8vector3dIfEEE", !21, i64 0, !21, i64 12, !21, i64 24, !20, i64 36, !20, i64 40, !24, i64 44}
!442 = !{!"_ZTS26SmoothTranslatorWrappedv3f", !441, i64 0}
!443 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE", !31, i64 0, !28, i64 8, !33, i64 16, !28, i64 24, !34, i64 32, !32, i64 48}
!444 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE", !443, i64 0}
!445 = !{!"_ZTSSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE", !31, i64 0, !28, i64 8, !33, i64 16, !28, i64 24, !34, i64 32, !32, i64 48}
!446 = !{!"_ZTSSt13unordered_setItSt4hashItESt8equal_toItESaItEE", !445, i64 0}
!447 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !31, i64 0, !28, i64 8, !33, i64 16, !28, i64 24, !34, i64 32, !32, i64 48}
!448 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE", !447, i64 0}
!449 = !{!"_ZTS10GenericCAO", !418, i64 0, !29, i64 32, !24, i64 64, !24, i64 65, !429, i64 72, !17, i64 424, !19, i64 432, !407, i64 440, !430, i64 464, !431, i64 472, !18, i64 480, !432, i64 488, !433, i64 496, !316, i64 504, !434, i64 512, !24, i64 520, !56, i64 524, !24, i64 528, !439, i64 536, !440, i64 560, !21, i64 564, !21, i64 576, !21, i64 588, !21, i64 600, !22, i64 612, !441, i64 616, !442, i64 664, !25, i64 712, !425, i64 720, !24, i64 724, !24, i64 725, !24, i64 726, !25, i64 728, !20, i64 736, !20, i64 740, !10, i64 744, !10, i64 748, !20, i64 752, !20, i64 756, !444, i64 760, !22, i64 816, !446, i64 824, !29, i64 880, !21, i64 912, !21, i64 924, !24, i64 936, !24, i64 937, !448, i64 944, !20, i64 1000, !29, i64 1008, !29, i64 1040, !20, i64 1072}
!450 = !{!449, !20, i64 368}
!451 = !{!57, !24, i64 90}
!452 = !{!412, !24, i64 418}
!453 = !{!412, !20, i64 596}
!454 = !{!405, !20, i64 36}
!455 = !{!405, !20, i64 44}
!456 = !{!412, !20, i64 600}
!457 = !{!57, !20, i64 60}
!458 = !{!57, !20, i64 72}
!459 = !{!57, !20, i64 68}
!460 = !{!57, !20, i64 80}
!461 = !{!57, !20, i64 64}
!462 = !{!"p1 _ZTS15ContentFeatures", !13, i64 0}
!463 = !{!"_ZTSNSt12_Vector_baseI15ContentFeaturesSaIS0_EE17_Vector_impl_dataE", !462, i64 0, !462, i64 8, !462, i64 16}
!464 = !{!463, !462, i64 8}
!465 = !{!463, !462, i64 0}
!466 = !{!"_ZTS16ContentParamType", !9, i64 0}
!467 = !{!"_ZTS17ContentParamType2", !9, i64 0}
!468 = !{!"_ZTS12NodeDrawType", !9, i64 0}
!469 = !{!"_ZTS9AlphaMode", !9, i64 0}
!470 = !{!"p1 short", !13, i64 0}
!471 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !470, i64 0, !470, i64 8, !470, i64 16}
!472 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !471, i64 0}
!473 = !{!"_ZTSSt12_Vector_baseItSaItEE", !472, i64 0}
!474 = !{!"_ZTSSt6vectorItSaItEE", !473, i64 0}
!475 = !{!"p1 _ZTS11NodeVisuals", !13, i64 0}
!476 = !{!"_ZTS10LiquidType", !9, i64 0}
!477 = !{!"_ZTS11NodeBoxType", !9, i64 0}
!478 = !{!"p1 _ZTSN4core8aabbox3dIfEE", !13, i64 0}
!479 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE17_Vector_impl_dataE", !478, i64 0, !478, i64 8, !478, i64 16}
!480 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE12_Vector_implE", !479, i64 0}
!481 = !{!"_ZTSSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE", !480, i64 0}
!482 = !{!"_ZTSSt6vectorIN4core8aabbox3dIfEESaIS2_EE", !481, i64 0}
!483 = !{!"p1 _ZTS16NodeBoxConnected", !13, i64 0}
!484 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!485 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !484, i64 0}
!486 = !{!"_ZTSSt12__shared_ptrI16NodeBoxConnectedLN9__gnu_cxx12_Lock_policyE2EE", !483, i64 0, !485, i64 8}
!487 = !{!"_ZTSSt10shared_ptrI16NodeBoxConnectedE", !486, i64 0}
!488 = !{!"_ZTS7NodeBox", !477, i64 0, !482, i64 8, !407, i64 32, !407, i64 56, !407, i64 80, !487, i64 104}
!489 = !{!"_ZTS9SoundSpec", !29, i64 0, !20, i64 32, !20, i64 36, !20, i64 40, !20, i64 44, !24, i64 48, !24, i64 49}
!490 = !{!"_ZTS15ContentFeatures", !24, i64 0, !24, i64 1, !24, i64 2, !24, i64 3, !29, i64 8, !448, i64 40, !466, i64 96, !467, i64 97, !468, i64 98, !29, i64 104, !20, i64 136, !9, i64 144, !9, i64 528, !9, i64 912, !469, i64 1296, !56, i64 1300, !29, i64 1304, !9, i64 1336, !9, i64 1337, !240, i64 1344, !474, i64 1368, !56, i64 1392, !24, i64 1396, !9, i64 1397, !9, i64 1398, !475, i64 1400, !24, i64 1408, !24, i64 1409, !9, i64 1410, !24, i64 1411, !24, i64 1412, !427, i64 1413, !24, i64 1414, !24, i64 1415, !24, i64 1416, !24, i64 1417, !10, i64 1420, !29, i64 1424, !9, i64 1456, !476, i64 1457, !24, i64 1458, !29, i64 1464, !22, i64 1496, !29, i64 1504, !22, i64 1536, !9, i64 1538, !24, i64 1539, !9, i64 1540, !9, i64 1541, !24, i64 1542, !488, i64 1544, !488, i64 1664, !488, i64 1784, !489, i64 1904, !489, i64 1960, !489, i64 2016, !24, i64 2072, !24, i64 2073}
!491 = !{!490, !24, i64 1412}
!492 = !{!57, !20, i64 92}
!493 = !{!397, !24, i64 4}
!494 = !{!412, !20, i64 748}
!495 = !{!57, !20, i64 152}
!496 = !{!"branch_weights", i32 1, i32 1048575}
!497 = !{!412, !24, i64 423}
!498 = !{!412, !24, i64 419}
!499 = !{!412, !24, i64 422}
!500 = !{!57, !20, i64 144}
!501 = !{!57, !20, i64 148}
!502 = !{!57, !20, i64 128}
!503 = !{!57, !20, i64 132}
!504 = !{!57, !20, i64 136}
!505 = !{!57, !20, i64 140}
!506 = !{!57, !14, i64 40}
!507 = !{i64 4}
!508 = !{!"_ZTS14MapDrawControl", !20, i64 0, !24, i64 4, !24, i64 5, !24, i64 6}
!509 = !{!508, !20, i64 0}
!510 = !{!508, !24, i64 4}
!511 = distinct !{!511, i1 false, !"_ZNK4core8CMatrix4IfEmlERKS1_"}
!512 = distinct !{!512, !511, !"_ZNK4core8CMatrix4IfEmlERKS1_: argument 0"}
!513 = !{!512}
!514 = distinct !{null}
!515 = distinct !{!515, i1 false, !"_Z18unescape_translateB5cxx11St17basic_string_viewIwSt11char_traitsIwEE"}
!516 = distinct !{!516, !515, !"_Z18unescape_translateB5cxx11St17basic_string_viewIwSt11char_traitsIwEE: argument 0"}
!517 = !{!"p1 _ZTS10FontEngine", !13, i64 0}
!518 = !{!517, !517, i64 0}
!519 = !{!327, !24, i64 72}
!520 = !{!312, !24, i64 4}
!521 = !{!516}
!522 = !{!308, !24, i64 4}
!523 = distinct !{!523, !319}
!524 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!525 = !{i64 0, i64 4, !60, i64 4, i64 4, !60, i64 8, i64 4, !60, i64 12, i64 4, !60}
!526 = distinct !{null}
!527 = !{!"p1 _ZTS18ClientActiveObject", !13, i64 0}
!528 = !{!527, !527, i64 0}
!529 = distinct !{!529, !319}
!530 = distinct !{!530, !319}
!531 = distinct !{!531, !319}
!532 = distinct !{!532, !319}
!533 = distinct !{!533, !319}
!534 = !{!257, !28, i64 24}
!535 = !{!257, !28, i64 8}
!536 = !{!257, !31, i64 0}
!537 = !{!34, !28, i64 8}
!538 = !{!35, !28, i64 24}
!539 = !{i64 0, i64 4, !60, i64 8, i64 8, !101}
!540 = !{!352, !352, i64 0}
!541 = distinct !{!541, !319}
!542 = distinct !{!542, !319}
!543 = distinct !{!543, !319}
!544 = distinct !{!544, !319}
!545 = !{!341, !340, i64 8}
!546 = !{!340, !340, i64 0}
!547 = distinct !{!547, !319}
!548 = distinct !{!548, !319}
!549 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsE", !29, i64 0, !22, i64 32}
!550 = !{!549, !22, i64 32}
!551 = distinct !{!551, !319}
!552 = distinct !{!552, !319}
!553 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_Alloc_nodeE", !362, i64 0}
!554 = !{!553, !362, i64 0}
!555 = !{!"_ZTSSt4lessIfE"}
!556 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIfEE", !555, i64 0}
!557 = !{!"_ZTSNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !556, i64 0, !124, i64 8}
!558 = !{!"_ZTSSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE", !557, i64 0}
!559 = !{!"_ZTSSt3mapIfN5video6SColorESt4lessIfESaISt4pairIKfS1_EEE", !558, i64 0}
!560 = !{!"_ZTSN13WearBarParams9BlendModeE", !9, i64 0}
!561 = !{!"_ZTS13WearBarParams", !559, i64 0, !560, i64 48}
!562 = !{!561, !560, i64 48}
!563 = distinct !{!563, !319}
!564 = distinct !{!564, !319}
!565 = distinct !{!565, !319}
!566 = distinct !{!566, !319}
!567 = distinct !{!567, !319}
!568 = distinct !{!568, !319, !571, !572}
!569 = distinct !{!569, !573}
!570 = distinct !{!570, !319, !571}
!571 = !{!"llvm.loop.isvectorized", i32 1}
!572 = !{!"llvm.loop.unroll.runtime.disable"}
!573 = !{!"llvm.loop.unroll.disable"}
end_hunk_3
