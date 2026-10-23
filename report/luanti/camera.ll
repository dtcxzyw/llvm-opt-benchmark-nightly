Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/camera?download=true
inline.NumInlined: 1435
inline.NumDeleted: 584
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Camera6updateEP11LocalPlayerff:bb.a
  store i8 0, ptr %i.nm, align 4, !tbaa !59
  store float %i.og, ptr %i.nv, align 4, !tbaa !491
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
  store float %i.ol, ptr %i.om, align 4, !tbaa !491
  br label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.oo = load i8, ptr %i.on, align 4, !tbaa !492, !range !151, !noundef !152
  %i.op = trunc nuw i8 %i.oo to i1
  br i1 %i.op, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 748
  %i.or = load float, ptr %i.oq, align 4, !tbaa !493 ; 3 uses
  %i.os = fcmp nsz ogt float %i.or, 1.000000e-03
  br i1 %i.os, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 92
  store float %i.or, ptr %i.ot, align 4, !tbaa !491
  br label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ov = load float, ptr %i.ou, align 8, !tbaa !104 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 92
  store float %i.ov, ptr %i.ow, align 4, !tbaa !491
  br label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit

_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit:           ; preds = %bb.ae, %bb.af, %bb.ag, %bb.ai, %bb.am, %bb.al
  %i.ox = phi float [ %i.nx, %bb.ae ], [ %i.nx, %bb.af ], [ %i.og, %bb.ag ], [ %i.ol, %bb.ai ], [ %i.ov, %bb.am ], [ %i.or, %bb.al ] ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.oz = fcmp nsz olt float %i.ox, 1.000000e+00
  %i.pa = fcmp nsz ogt float %i.ox, 1.600000e+02
  %..i = select nsz i1 %i.pa, float 1.600000e+02, float %i.ox
  %.0.i = select nsz i1 %i.oz, float 1.000000e+00, float %..i
  store float %.0.i, ptr %i.oy, align 4, !tbaa !491
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
  store float %i.pf, ptr %i.pg, align 8, !tbaa !494
  %i.ph = load float, ptr %i.oy, align 4, !tbaa !491
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
  %i.qw = load <2 x float>, ptr %i.qv, align 8
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !323
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
  %i.rl = insertelement <2 x float> %i.qw, float %i.rf, i64 1 ; 2 uses
  br i1 %or.cond230, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.rm = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.rn = fadd nnan nsz double %i.ri, -5.000000e-01
  %i.ro = fmul nnan nsz double %i.rn, 2.000000e+00
  %i.rp = fptrunc nsz double %i.ro to float
  %.0217 = select nsz i1 %i.rk, float %i.rp, float 1.000000e+00 ; 2 uses
  %i.rq = fsub nsz float 1.000000e+00, %3         ; 2 uses
  %sqrt = call nsz float @llvm.sqrt.f32(float %i.rq)
  %isinf = fcmp nsz oeq float %i.rq, -inf
  %i.rr = fmul nsz float %sqrt, 5.000000e-01
  %i.rs = select i1 %isinf, float +inf, float %i.rr, !prof !495 ; 5 uses
  %i.rt = fmul nsz float %i.rs, %i.rs
  %i.ru = fmul nsz float %i.rs, %i.rt
  %i.rv = call nsz float @llvm.fmuladd.f32(float %i.rs, float 6.000000e+00, float -1.500000e+01)
  %i.rw = call nsz float @llvm.fmuladd.f32(float %i.rs, float %i.rv, float 1.000000e+01)
  %i.rx = fmul nsz float %i.ru, %i.rw
  %i.ry = fmul nsz float %i.rx, 2.000000e+00      ; 3 uses
  %i.rz = call nsz noundef float @llvm.pow.f32(float %i.ry, float 1.700000e+00)
  %i.sa = insertelement <2 x float> poison, float %.0217, i64 0
  %i.sb = shufflevector <2 x float> %i.sa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sc = fmul nnan nsz <2 x float> %i.sb, <float -3.500000e+01, float -2.500000e+01>
  %i.sd = call nsz noundef float @llvm.pow.f32(float %i.ry, float 1.100000e+00)
  %i.se = insertelement <2 x float> poison, float %i.sd, i64 0
  %i.sf = insertelement <2 x float> %i.se, float %i.rz, i64 1
  %i.sg = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sc, <2 x float> %i.sf, <2 x float> %i.rl)
  %i.sh = fmul nnan nsz float %.0217, 7.000000e+01
  %i.si = call nsz noundef float @llvm.pow.f32(float %i.ry, float 1.400000e+00)
  %i.sj = call nsz float @llvm.fmuladd.f32(float %i.sh, float %i.si, float 1.200000e+02) ; 2 uses
  store float %i.sj, ptr %i.rm, align 4, !tbaa !317
  %i.sk = fmul nsz float %i.sj, f0x3C8EFA35
  %i.sl = fpext nsz float %i.sk to double
  %i.sm = fmul nsz double %i.sl, 5.000000e-01
  %i.sn = call nsz { double, double } @llvm.sincos.f64(double %i.sm)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %sincos34.i.i = phi { double, double } [ { double f0x3FEBB67AF02AD942, double f0x3FDFFFFFE4E6F746 }, %bb.ap ], [ %i.sn, %bb.aq ] ; 2 uses
  %i.so = phi <2 x float> [ %i.rl, %bb.ap ], [ %i.sg, %bb.aq ] ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !62
  %.not225 = icmp eq i32 %i.sq, -1
  br i1 %.not225, label %bb.az, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.sr = call nsz noundef float @llvm.pow.f32(float %i.rh, float 8.000000e-01)
  %i.ss = fpext nsz float %i.sr to double
  %i.st = fmul nsz double %i.ri, 1.800000e+00
  %i.su = insertelement <2 x double> poison, double %i.ss, i64 0
  %i.sv = insertelement <2 x double> %i.su, double %i.st, i64 1
  %i.sw = fmul nsz <2 x double> %i.sv, splat (double f0x400921FB54442D18)
  %i.sx = call nsz <2 x double> @llvm.sin.v2f64(<2 x double> %i.sw)
  %i.sy = fpext <2 x float> %i.so to <2 x double>
  %i.sz = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sx, <2 x double> <double -5.000000e+01, double 2.400000e+01>, <2 x double> %i.sy)
  %i.ta = fptrunc <2 x double> %i.sz to <2 x float>
  store <2 x float> %i.ta, ptr %11, align 8, !tbaa !60
  store float 7.750000e+01, ptr %i.qz, align 8, !tbaa !90
  %sin35.i.i = extractvalue { double, double } %sincos34.i.i, 0 ; 2 uses
  %cos36.i.i = extractvalue { double, double } %sincos34.i.i, 1 ; 2 uses
  %i.tb = insertelement <2 x double> poison, double %cos36.i.i, i64 0 ; 2 uses
  %i.tc = shufflevector <2 x double> %i.tb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.td = fmul nsz <2 x double> %i.tc, <double f0xBFE8836FA4556E5A, double f0x3FE491B7506B2987>
  %i.te = insertelement <2 x double> poison, double %sin35.i.i, i64 0 ; 2 uses
  %i.tf = shufflevector <2 x double> %i.te, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tg = fmul nsz <2 x double> %i.tf, <double f0x3FE491B7506B2987, double f0xBFE8836FA4556E5A>
  %i.th = fmul nsz <2 x double> %i.tg, <double f0x3FE8836FA4556E5A, double f0xBFE8836FA4556E5A>
  %i.ti = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.td, <2 x double> splat (double f0x3FE491B7506B2987), <2 x double> %i.th)
  %i.tj = fptrunc <2 x double> %i.ti to <2 x float> ; 3 uses
  %i.tk = extractelement <2 x float> %i.tj, i64 0 ; 2 uses
  %i.tl = extractelement <2 x float> %i.tj, i64 1 ; 2 uses
  %15 = insertelement <2 x double> %i.te, double %cos36.i.i, i64 1
  %16 = fmul nsz <2 x double> %15, splat (double f0xBFE8836FA4556E5A)
  %i.tm = fmul nsz <2 x double> %16, <double f0xBFE491B7506B2987, double f0xBFE8836FA4556E5A>
  %17 = insertelement <2 x double> %i.tb, double %sin35.i.i, i64 1
  %18 = fmul nsz <2 x double> %17, splat (double f0x3FE491B7506B2987)
  %i.tn = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> <double f0xBFE8836FA4556E5A, double f0x3FE491B7506B2987>, <2 x double> %i.tm)
  %i.to = fptrunc <2 x double> %i.tn to <2 x float> ; 4 uses
  %foldExtExtBinop452 = fmul nsz <2 x float> %i.to, %i.to
  %i.tp = extractelement <2 x float> %foldExtExtBinop452, i64 1
  %i.tq = extractelement <2 x float> %i.to, i64 0 ; 2 uses
  %i.tr = call nsz float @llvm.fmuladd.f32(float %i.tq, float %i.tq, float %i.tp)
  %i.ts = call nsz float @llvm.fmuladd.f32(float %i.tk, float %i.tk, float %i.tr)
  %i.tt = call nsz float @llvm.fmuladd.f32(float %i.tl, float %i.tl, float %i.ts)
  %i.tu = fpext nsz float %i.tt to double
  %i.tv = call nsz double @llvm.sqrt.f64(double %i.tu)
  %i.tw = fdiv nsz double 1.000000e+00, %i.tv
  %i.tx = fptrunc nsz double %i.tw to float
  %i.ty = insertelement <2 x float> poison, float %i.tx, i64 0
  %i.tz = shufflevector <2 x float> %i.ty, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ua = fmul nsz <2 x float> %i.tz, %i.to       ; 4 uses
  %i.ub = fmul nsz <2 x float> %i.tz, %i.tj       ; 4 uses
  %i.uc = fmul nsz double %i.ri, f0x400921FB54442D18
  %i.ud = call nsz double @llvm.sin.f64(double %i.uc)
  %i.ue = fptrunc nsz double %i.ud to float       ; 6 uses
  %i.uf = extractelement <2 x float> %i.ua, i64 1
  %i.ug = fmul nsz float %i.uf, f0x3F1A62BD
  %i.uh = extractelement <2 x float> %i.ua, i64 0
  %i.ui = call nsz float @llvm.fmuladd.f32(float %i.uh, float f0x3E7D2632, float %i.ug)
  %i.uj = extractelement <2 x float> %i.ub, i64 0
  %i.uk = call nsz float @llvm.fmuladd.f32(float %i.uj, float f0x3EEB76CD, float %i.ui)
  %i.ul = extractelement <2 x float> %i.ub, i64 1
  %i.um = call nsz noundef float @llvm.fmuladd.f32(float %i.ul, float f0x3F1A62BD, float %i.uk) ; 3 uses
  %i.un = fcmp nsz olt float %i.um, 0.000000e+00  ; 3 uses
  %i.uo = fneg nsz <2 x float> %i.ua
  %i.up = fneg nsz <2 x float> %i.ub
  %i.uq = fneg nsz float %i.um
  %.sroa.047.0.i = select nsz i1 %i.un, <2 x float> %i.uo, <2 x float> %i.ua ; 3 uses
  %.sroa.10.0.i = select nsz i1 %i.un, <2 x float> %i.up, <2 x float> %i.ub ; 3 uses
  %.020.i = select nsz i1 %i.un, float %i.uq, float %i.um ; 2 uses
  %i.ur = fcmp nsz ugt float %.020.i, 9.990000e-01
  br i1 %i.ur, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.us = call nsz float @llvm.acos.f32(float %.020.i) ; 3 uses
  %i.ut = call nsz float @llvm.sin.f32(float %i.us)
  %i.uu = fdiv nsz float 1.000000e+00, %i.ut      ; 2 uses
  %i.uv = fsub nsz float 1.000000e+00, %i.ue
  %i.uw = fmul nsz float %i.uv, %i.us
  %i.ux = call nsz float @llvm.sin.f32(float %i.uw)
  %i.uy = fmul nsz float %i.ux, %i.uu
  %i.uz = fmul nsz float %i.us, %i.ue
  %i.va = call nsz float @llvm.sin.f32(float %i.uz)
  %i.vb = fmul nsz float %i.va, %i.uu             ; 2 uses
  %i.vc = insertelement <2 x float> poison, float %i.uy, i64 0
  %i.vd = shufflevector <2 x float> %i.vc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ve = fmul nsz <2 x float> %.sroa.10.0.i, %i.vd
  %i.vf = insertelement <2 x float> poison, float %i.vb, i64 0
  %i.vg = shufflevector <2 x float> %i.vf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vh = fmul nsz <2 x float> %i.vg, <float f0x3EEB76CD, float f0x3F1A62BD> ; 2 uses
  %i.vi = fmul nsz <2 x float> %.sroa.047.0.i, %i.vd
  %i.vj = fmul nsz float %i.vb, f0x3E7D2632
  %i.vk = insertelement <2 x float> %i.vh, float %i.vj, i64 0
  %i.vl = fadd nsz <2 x float> %i.vi, %i.vk
  %i.vm = fadd nsz <2 x float> %i.ve, %i.vh
  br label %_ZN4core10quaternion5slerpES0_S0_ff.exit

bb.au:                                            ; preds = %bb.as
  %i.vn = fsub nsz float 1.000000e+00, %i.ue      ; 4 uses
  %.sroa.024.0.vec.extract.i.i = extractelement <2 x float> %.sroa.047.0.i, i64 0
  %i.vo = fmul nsz float %i.vn, %.sroa.024.0.vec.extract.i.i
  %.sroa.024.4.vec.extract.i.i = extractelement <2 x float> %.sroa.047.0.i, i64 1
  %i.vp = fmul nsz float %i.vn, %.sroa.024.4.vec.extract.i.i
  %.sroa.325.8.vec.extract.i.i = extractelement <2 x float> %.sroa.10.0.i, i64 0
  %i.vq = fmul nsz float %i.vn, %.sroa.325.8.vec.extract.i.i
  %.sroa.325.12.vec.extract.i.i = extractelement <2 x float> %.sroa.10.0.i, i64 1
  %i.vr = fmul nsz float %i.vn, %.sroa.325.12.vec.extract.i.i
  %i.vs = fmul nsz float %i.ue, f0x3E7D2632
  %i.vt = fmul nsz float %i.ue, f0x3F1A62BD       ; 2 uses
  %i.vu = fmul nsz float %i.ue, f0x3EEB76CD
  %i.vv = fadd nsz float %i.vs, %i.vo             ; 3 uses
  %i.vw = fadd nsz float %i.vt, %i.vp             ; 3 uses
  %i.vx = fadd nsz float %i.vu, %i.vq             ; 3 uses
  %i.vy = fadd nsz float %i.vt, %i.vr             ; 3 uses
  %i.vz = fmul nsz float %i.vw, %i.vw
  %i.wa = call nsz float @llvm.fmuladd.f32(float %i.vv, float %i.vv, float %i.vz)
  %i.wb = call nsz float @llvm.fmuladd.f32(float %i.vx, float %i.vx, float %i.wa)
  %i.wc = call nsz float @llvm.fmuladd.f32(float %i.vy, float %i.vy, float %i.wb)
  %i.wd = fpext nsz float %i.wc to double
  %i.we = call nsz double @llvm.sqrt.f64(double %i.wd)
  %i.wf = fdiv nsz double 1.000000e+00, %i.we
  %i.wg = fptrunc nsz double %i.wf to float       ; 4 uses
  %i.wh = fmul nsz float %i.vv, %i.wg
  %i.wi = insertelement <2 x float> poison, float %i.wh, i64 0
  %i.wj = fmul nsz float %i.vw, %i.wg
  %.sroa.018.4.vec.insert.i.i = insertelement <2 x float> %i.wi, float %i.wj, i64 1
  %i.wk = fmul nsz float %i.vx, %i.wg
  %i.wl = insertelement <2 x float> poison, float %i.wk, i64 0
  %i.wm = fmul nsz float %i.vy, %i.wg
  %.sroa.8.12.vec.insert.i.i = insertelement <2 x float> %i.wl, float %i.wm, i64 1
  br label %_ZN4core10quaternion5slerpES0_S0_ff.exit

_ZN4core10quaternion5slerpES0_S0_ff.exit:         ; preds = %bb.at, %bb.au
  %.sroa.0.4.vec.insert.i29.sink.i = phi <2 x float> [ %.sroa.018.4.vec.insert.i.i, %bb.au ], [ %i.vl, %bb.at ] ; 7 uses
  %.sroa.3.12.vec.insert.i31.sink.i = phi <2 x float> [ %.sroa.8.12.vec.insert.i.i, %bb.au ], [ %i.vm, %bb.at ] ; 7 uses
  %.sroa.7.12.vec.extract = extractelement <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, i64 1 ; 5 uses
  %i.wn = fmul nsz float %.sroa.7.12.vec.extract, %.sroa.7.12.vec.extract
  %i.wo = fpext nsz float %i.wn to double         ; 2 uses
  %.sroa.0321.0.vec.extract = extractelement <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, i64 0 ; 3 uses
  %foldExtExtBinop454 = fmul nsz <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, %.sroa.0.4.vec.insert.i29.sink.i
  %i.wp = extractelement <2 x float> %foldExtExtBinop454, i64 0
  %i.wq = fpext nsz float %i.wp to double         ; 2 uses
  %.sroa.0321.4.vec.extract = extractelement <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, i64 1 ; 3 uses
  %i.wr = fmul nsz float %.sroa.0321.4.vec.extract, %.sroa.0321.4.vec.extract
  %i.ws = fpext nsz float %i.wr to double         ; 2 uses
  %.sroa.7.8.vec.extract = extractelement <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, i64 0
  %foldExtExtBinop456 = fmul nsz <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, %.sroa.3.12.vec.insert.i31.sink.i
  %i.wt = extractelement <2 x float> %foldExtExtBinop456, i64 0
  %i.wu = fpext nsz float %i.wt to double         ; 2 uses
  %i.wv = fneg nsz float %.sroa.7.8.vec.extract
  %i.ww = fmul nsz float %.sroa.0321.0.vec.extract, %i.wv
  %i.wx = call nsz float @llvm.fmuladd.f32(float %.sroa.0321.4.vec.extract, float %.sroa.7.12.vec.extract, float %i.ww)
  %i.wy = fpext nsz float %i.wx to double
  %i.wz = fmul nsz double %i.wy, 2.000000e+00     ; 4 uses
  %i.xa = fadd nsz double %i.wz, -1.000000e+00
  %i.xb = call nsz noundef double @llvm.fabs.f64(double %i.xa)
  %i.xc = fcmp nsz ugt double %i.xb, f0x3EB0C6F7A0B5ED8D
  br i1 %i.xc, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN4core10quaternion5slerpES0_S0_ff.exit
  %i.xd = fpext nsz float %.sroa.0321.0.vec.extract to double
  %i.xe = fpext nsz float %.sroa.7.12.vec.extract to double
  %i.xf = call nsz double @llvm.atan2.f64(double %i.xd, double %i.xe)
  %i.xg = fmul nsz double %i.xf, -2.000000e+00
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

bb.aw:                                            ; preds = %_ZN4core10quaternion5slerpES0_S0_ff.exit
  %i.xh = fadd nsz double %i.wz, 1.000000e+00
  %i.xi = call nsz noundef double @llvm.fabs.f64(double %i.xh)
  %i.xj = fcmp nsz ugt double %i.xi, f0x3EB0C6F7A0B5ED8D
  br i1 %i.xj, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.xk = fpext nsz float %.sroa.0321.0.vec.extract to double
  %i.xl = fpext nsz float %.sroa.7.12.vec.extract to double
  %i.xm = call nsz double @llvm.atan2.f64(double %i.xk, double %i.xl)
  %i.xn = fmul nsz double %i.xm, 2.000000e+00
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

bb.ay:                                            ; preds = %bb.aw
  %i.xo = shufflevector <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, <2 x i32> <i32 1, i32 2>
  %i.xp = fmul nsz <2 x float> %i.xo, %.sroa.3.12.vec.insert.i31.sink.i
  %i.xq = fsub nsz double %i.wq, %i.ws
  %i.xr = fsub nsz double %i.xq, %i.wu
  %i.xs = fadd nsz double %i.xr, %i.wo
  %i.xt = shufflevector <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xu = shufflevector <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, <2 x i32> <i32 0, i32 2>
  %i.xv = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xt, <2 x float> %i.xu, <2 x float> %i.xp)
  %i.xw = fpext <2 x float> %i.xv to <2 x double>
  %i.xx = fmul nsz <2 x double> %i.xw, splat (double 2.000000e+00) ; 2 uses
  %i.xy = extractelement <2 x double> %i.xx, i64 0
  %i.xz = call nsz double @llvm.atan2.f64(double %i.xy, double %i.xs)
  %i.ya = fadd nsz double %i.wq, %i.ws
  %i.yb = fsub nsz double %i.wu, %i.ya
  %i.yc = fadd nsz double %i.yb, %i.wo
  %i.yd = extractelement <2 x double> %i.xx, i64 1
  %i.ye = call nsz double @llvm.atan2.f64(double %i.yd, double %i.yc)
  %i.yf = fcmp nsz olt double %i.wz, -1.000000e+00
  %i.yg = select i1 %i.yf, double -1.000000e+00, double %i.wz ; 2 uses
  %i.yh = fcmp nsz olt double %i.yg, 1.000000e+00
  %i.yi = select i1 %i.yh, double %i.yg, double 1.000000e+00
  %i.yj = call nsz double @llvm.asin.f64(double %i.yi)
  %i.yk = insertelement <2 x double> poison, double %i.ye, i64 0
  %i.yl = insertelement <2 x double> %i.yk, double %i.yj, i64 1
  %i.ym = fptrunc <2 x double> %i.yl to <2 x float>
  %i.yn = fmul nsz <2 x float> %i.ym, splat (float f0x42652EE0)
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit: ; preds = %bb.av, %bb.ax, %bb.ay
  %.in = phi double [ %i.xn, %bb.ax ], [ %i.xz, %bb.ay ], [ %i.xg, %bb.av ]
  %i.yo = phi <2 x float> [ <float 0.000000e+00, float -9.000000e+01>, %bb.ax ], [ %i.yn, %bb.ay ], [ <float 0.000000e+00, float 9.000000e+01>, %bb.av ]
  %i.yp = fptrunc double %.in to float
  store <2 x float> %i.yo, ptr %12, align 8, !tbaa !60
  %i.yq = fmul nsz float %i.yp, f0x42652EE0
  store float %i.yq, ptr %i.ra, align 8, !tbaa !90
  br label %bb.ba

bb.az:                                            ; preds = %bb.ar
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !301
  %i.yt = call nsz { float, float } @llvm.modf.f32(float %i.ys)
  %i.yu = extractvalue { float, float } %i.yt, 0  ; 2 uses
  %i.yv = fpext nsz float %i.yu to double
  %i.yw = fmul nsz double %i.yv, f0x400921FB54442D18
  %i.yx = fmul nsz double %i.yw, 2.000000e+00
  %i.yy = call nsz double @llvm.sin.f64(double %i.yx)
  %i.yz = fpext <2 x float> %i.so to <2 x double>
  %i.za = fneg nsz double %i.yy
  %i.zb = fmul nsz float %i.yu, 2.000000e+00
  %i.zc = call nsz { float, float } @llvm.modf.f32(float %i.zb)
  %i.zd = extractvalue { float, float } %i.zc, 0
  %i.ze = fpext nsz float %i.zd to double
  %i.zf = fmul nsz double %i.ze, f0x400921FB54442D18
  %i.zg = call nsz double @llvm.sin.f64(double %i.zf)
  %i.zh = insertelement <2 x double> poison, double %i.za, i64 0
  %i.zi = insertelement <2 x double> %i.zh, double %i.zg, i64 1
  %i.zj = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zi, <2 x double> splat (double 3.000000e+00), <2 x double> %i.yz)
end_hunk_0
