inline.NumInlined: 1347
inline.NumDeleted: 467
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZL16fit_to_referencePA3_fPfS0_P5edpar:bb.a
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %indvars.iv172.i.epil
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !247
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %indvars.iv188.i
  store double 0.000000e+00, ptr %i.mu, align 8, !tbaa !250
  %indvars.iv.next173.i.epil = add nuw nsw i64 %indvars.iv172.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter90
  br i1 %epil.iter.cmp.not, label %.split.us.i, label %.preheader136.split.peel.next181.i.epil, !llvm.loop !254

.split.us.i:                                      ; preds = %.preheader136.split.us.i, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %.split.us.i.loopexit.unr-lcssa, %.preheader136.split.peel.next181.i.epil
  %i.mv = phi ptr [ %i.jt, %.split.us.i.loopexit.unr-lcssa ], [ %i.jt, %.preheader136.split.peel.next181.i.epil ], [ %i.km, %bb.h ], [ %i.km, %bb.g ], [ %i.km, %bb.f ], [ %i.km, %bb.e ], [ %i.km, %bb.d ], [ %i.km, %.preheader136.split.us.i ]
  %indvars.iv.next189.i = add nuw nsw i64 %indvars.iv188.i, 1 ; 2 uses
  %indvars.iv.next187.i = add nuw nsw i64 %indvars.iv186.i, 1
  %exitcond193.not.i = icmp eq i64 %indvars.iv.next189.i, 6
  br i1 %exitcond193.not.i, label %bb.i, label %.preheader136.i, !llvm.loop !255

bb.i:                                             ; preds = %.split.us.i
  %i.mw = load ptr, ptr %i.ea, align 8, !tbaa !249
  call void @_Z6jacobiPPdiS_S0_Pi(ptr noundef nonnull %i.mv, i32 noundef 6, ptr noundef nonnull %i.b, ptr noundef %i.mw, ptr noundef nonnull %i.a)
  %i.mx = load i32, ptr %i.a, align 4, !tbaa !219
  %i.my = icmp eq i32 %i.mx, 0
  br i1 %i.my, label %bb.j, label %.preheader135.i

bb.j:                                             ; preds = %bb.i
  %i.mz = load ptr, ptr @stderr, align 8, !tbaa !256
  %i.na = call i64 @fwrite(ptr nonnull @.str.9, i64 7, i64 1, ptr %i.mz) #24 ; 0 uses
  br label %.preheader135.i

.preheader135.i:                                  ; preds = %bb.j, %bb.i
  %i.nb = load ptr, ptr %i.ea, align 8, !tbaa !249 ; 6 uses
  %i.nc = load double, ptr %i.b, align 16, !tbaa !250 ; 2 uses
  %i.nd = fcmp ogt double %i.nc, -1.000000e+03
  %.1115283.i = select i1 %i.nd, double %i.nc, double -1.000000e+03
  %.1115.i = fptrunc double %.1115283.i to float  ; 2 uses
  %i.ne = load double, ptr %i.eo, align 8, !tbaa !250 ; 2 uses
  %i.nf = fpext float %.1115.i to double
  %i.ng = fcmp ogt double %i.ne, %i.nf            ; 2 uses
  %i.nh = fptrunc double %i.ne to float
  %.1115.1.i = select i1 %i.ng, float %i.nh, float %.1115.i ; 2 uses
  %i.ni = load double, ptr %i.fd, align 16, !tbaa !250 ; 2 uses
  %i.nj = fpext float %.1115.1.i to double
  %i.nk = fcmp ogt double %i.ni, %i.nj            ; 2 uses
  %i.nl = fptrunc double %i.ni to float
  %.1115.2.i = select i1 %i.nk, float %i.nl, float %.1115.1.i ; 2 uses
  %i.nm = load double, ptr %i.fs, align 8, !tbaa !250 ; 2 uses
  %i.nn = fpext float %.1115.2.i to double
  %i.no = fcmp ogt double %i.nm, %i.nn            ; 2 uses
  %i.np = fptrunc double %i.nm to float
  %.1115.3.i = select i1 %i.no, float %i.np, float %.1115.2.i ; 2 uses
  %i.nq = load double, ptr %i.gh, align 16, !tbaa !250 ; 2 uses
  %i.nr = fpext float %.1115.3.i to double
  %i.ns = fcmp ogt double %i.nq, %i.nr            ; 2 uses
  %i.nt = fptrunc double %i.nq to float
  %.1115.4.i = select i1 %i.ns, float %i.nt, float %.1115.3.i
  %i.nu = load double, ptr %i.gw, align 8, !tbaa !250
  %i.nv = fpext float %.1115.4.i to double
  %i.nw = fcmp ogt double %i.nu, %i.nv
  %i.nx = zext i1 %i.ng to i64
  %i.ny = select i1 %i.nk, i64 2, i64 %i.nx
  %i.nz = select i1 %i.no, i64 3, i64 %i.ny
  %i.oa = select i1 %i.ns, i64 4, i64 %i.nz
  %i.ob = select i1 %i.nw, i64 5, i64 %i.oa       ; 8 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ob
  store double -1.000000e+04, ptr %i.oc, align 8, !tbaa !250
  %i.od = load ptr, ptr %i.nb, align 8, !tbaa !247 ; 3 uses
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %i.ob
  %i.of = load double, ptr %i.oe, align 8, !tbaa !250
  %i.og = getelementptr inbounds nuw i8, ptr %i.nb, i64 24
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !247 ; 3 uses
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %i.ob
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !250 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !247 ; 3 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %i.ob
  %i.on = load double, ptr %i.om, align 8, !tbaa !250
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nb, i64 32
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !247 ; 3 uses
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %i.ob
  %i.or = load double, ptr %i.oq, align 8, !tbaa !250
  %i.os = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !247 ; 3 uses
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %i.ob
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !250 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.nb, i64 40
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !247 ; 3 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %i.ob
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !250
  %i.pa = load double, ptr %i.b, align 16, !tbaa !250 ; 2 uses
  %i.pb = fcmp ogt double %i.pa, -1.000000e+03    ; 2 uses
  %.1115.1207284.i = select i1 %i.pb, double %i.pa, double -1.000000e+03
  %.1115.1207.i = fptrunc double %.1115.1207284.i to float ; 2 uses
  %i.pc = load double, ptr %i.eo, align 8, !tbaa !250 ; 2 uses
  %i.pd = fpext float %.1115.1207.i to double
  %i.pe = fcmp ogt double %i.pc, %i.pd            ; 2 uses
  %i.pf = fptrunc double %i.pc to float
  %.1115.1.1.i = select i1 %i.pe, float %i.pf, float %.1115.1207.i ; 2 uses
  %i.pg = load double, ptr %i.fd, align 16, !tbaa !250 ; 2 uses
  %i.ph = fpext float %.1115.1.1.i to double
  %i.pi = fcmp ogt double %i.pg, %i.ph            ; 2 uses
  %i.pj = fptrunc double %i.pg to float
  %.1115.2.1.i = select i1 %i.pi, float %i.pj, float %.1115.1.1.i ; 2 uses
  %i.pk = load double, ptr %i.fs, align 8, !tbaa !250 ; 2 uses
  %i.pl = fpext float %.1115.2.1.i to double
  %i.pm = fcmp ogt double %i.pk, %i.pl            ; 2 uses
  %i.pn = fptrunc double %i.pk to float
  %.1115.3.1.i = select i1 %i.pm, float %i.pn, float %.1115.2.1.i ; 2 uses
  %i.po = load double, ptr %i.gh, align 16, !tbaa !250 ; 2 uses
  %i.pp = fpext float %.1115.3.1.i to double
  %i.pq = fcmp ogt double %i.po, %i.pp            ; 2 uses
  %i.pr = fptrunc double %i.po to float
  %.1115.4.1.i = select i1 %i.pq, float %i.pr, float %.1115.3.1.i
  %i.ps = load double, ptr %i.gw, align 8, !tbaa !250
  %i.pt = fpext float %.1115.4.1.i to double
  %i.pu = fcmp ogt double %i.ps, %i.pt
  %i.pv = select i1 %i.pb, i64 0, i64 %i.ob
  %i.pw = select i1 %i.pe, i64 1, i64 %i.pv
  %i.px = select i1 %i.pi, i64 2, i64 %i.pw
  %i.py = select i1 %i.pm, i64 3, i64 %i.px
  %i.pz = select i1 %i.pq, i64 4, i64 %i.py
  %i.qa = select i1 %i.pu, i64 5, i64 %i.pz       ; 8 uses
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.qa
  store double -1.000000e+04, ptr %i.qb, align 8, !tbaa !250
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %i.qa
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !250
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %i.qa
  %i.qf = load double, ptr %i.qe, align 8, !tbaa !250
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %i.qa
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !250
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %i.qa
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !250
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %i.qa
  %i.ql = load double, ptr %i.qk, align 8, !tbaa !250
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %i.qa
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !250
  %i.qo = load double, ptr %i.b, align 16, !tbaa !250 ; 2 uses
  %i.qp = fcmp ogt double %i.qo, -1.000000e+03    ; 2 uses
  %.1115.2209285.i = select i1 %i.qp, double %i.qo, double -1.000000e+03
  %.1115.2209.i = fptrunc double %.1115.2209285.i to float ; 2 uses
  %i.qq = load double, ptr %i.eo, align 8, !tbaa !250 ; 2 uses
  %i.qr = fpext float %.1115.2209.i to double
  %i.qs = fcmp ogt double %i.qq, %i.qr            ; 2 uses
  %i.qt = fptrunc double %i.qq to float
  %.1115.1.2.i = select i1 %i.qs, float %i.qt, float %.1115.2209.i ; 2 uses
  %i.qu = load double, ptr %i.fd, align 16, !tbaa !250 ; 2 uses
  %i.qv = fpext float %.1115.1.2.i to double
  %i.qw = fcmp ogt double %i.qu, %i.qv            ; 2 uses
  %i.qx = fptrunc double %i.qu to float
  %.1115.2.2.i = select i1 %i.qw, float %i.qx, float %.1115.1.2.i ; 2 uses
  %i.qy = load double, ptr %i.fs, align 8, !tbaa !250 ; 2 uses
  %i.qz = fpext float %.1115.2.2.i to double
  %i.ra = fcmp ogt double %i.qy, %i.qz            ; 2 uses
  %i.rb = fptrunc double %i.qy to float
  %.1115.3.2.i = select i1 %i.ra, float %i.rb, float %.1115.2.2.i ; 2 uses
  %i.rc = load double, ptr %i.gh, align 16, !tbaa !250 ; 2 uses
  %i.rd = fpext float %.1115.3.2.i to double
  %i.re = fcmp ogt double %i.rc, %i.rd            ; 2 uses
  %i.rf = fptrunc double %i.rc to float
  %.1115.4.2.i = select i1 %i.re, float %i.rf, float %.1115.3.2.i
  %i.rg = load double, ptr %i.gw, align 8, !tbaa !250
  %i.rh = fpext float %.1115.4.2.i to double
  %i.ri = fcmp ogt double %i.rg, %i.rh
  %i.rj = select i1 %i.qp, i64 0, i64 %i.qa
  %i.rk = select i1 %i.qs, i64 1, i64 %i.rj
  %i.rl = select i1 %i.qw, i64 2, i64 %i.rk
  %i.rm = select i1 %i.ra, i64 3, i64 %i.rl
  %i.rn = select i1 %i.re, i64 4, i64 %i.rm
  %i.ro = select i1 %i.ri, i64 5, i64 %i.rn       ; 7 uses
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ro
  store double -1.000000e+04, ptr %i.rp, align 8, !tbaa !250
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %i.ro
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !250
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %i.ro
  %i.rt = load double, ptr %i.rs, align 8, !tbaa !250
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %i.ro
  %i.rv = load double, ptr %i.ru, align 8, !tbaa !250
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %i.ro
  %i.rx = load double, ptr %i.rw, align 8, !tbaa !250
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %i.ro
  %i.rz = load double, ptr %i.ry, align 8, !tbaa !250 ; 2 uses
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %i.ro
  %i.sb = load double, ptr %i.sa, align 8, !tbaa !250
  %i.sc = insertelement <4 x double> poison, double %i.of, i64 0
  %i.sd = insertelement <4 x double> %i.sc, double %i.on, i64 1
  %i.se = insertelement <4 x double> %i.sd, double %i.oj, i64 2
  %i.sf = insertelement <4 x double> %i.se, double %i.ov, i64 3
  %i.sg = fmul <4 x double> %i.sf, splat (double f0x3FF6A09E667F3BCD)
  %i.sh = insertelement <4 x double> poison, double %i.oj, i64 0
  %i.si = insertelement <4 x double> %i.sh, double %i.or, i64 1
  %i.sj = insertelement <4 x double> %i.si, double %i.oz, i64 2
  %i.sk = insertelement <4 x double> %i.sj, double %i.ov, i64 3
  %i.sl = fmul <4 x double> %i.sk, splat (double f0x3FF6A09E667F3BCD)
  %i.sm = fptrunc <4 x double> %i.sg to <4 x float>
  %i.sn = shufflevector <4 x float> %i.sm, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 3>
  %i.so = fptrunc <4 x double> %i.sl to <4 x float> ; 3 uses
  %i.sp = shufflevector <4 x float> %i.so, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 3, i32 1>
  %i.sq = insertelement <4 x double> poison, double %i.qd, i64 0
  %i.sr = insertelement <4 x double> %i.sq, double %i.qj, i64 1
  %i.ss = insertelement <4 x double> %i.sr, double %i.qf, i64 2
  %i.st = insertelement <4 x double> %i.ss, double %i.qh, i64 3
  %i.su = fmul <4 x double> %i.st, splat (double f0x3FF6A09E667F3BCD)
  %4 = fmul double %i.ql, f0x3FF6A09E667F3BCD
  %5 = fmul double %i.qn, f0x3FF6A09E667F3BCD
  %6 = fptrunc <4 x double> %i.su to <4 x float>  ; 2 uses
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 2, i32 1, i32 3, i32 2, i32 1>
  %8 = fptrunc double %4 to float                 ; 2 uses
  %9 = fptrunc double %5 to float                 ; 2 uses
  %i.sv = fmul double %i.rz, f0x3FF6A09E667F3BCD
  %i.sw = insertelement <3 x double> poison, double %i.rr, i64 0
  %i.sx = insertelement <3 x double> %i.sw, double %i.rv, i64 1
  %i.sy = insertelement <3 x double> %i.sx, double %i.rz, i64 2
  %i.sz = fmul <3 x double> %i.sy, splat (double f0x3FF6A09E667F3BCD)
  %i.ta = fptrunc double %i.sv to float           ; 3 uses
  %i.tb = fptrunc <3 x double> %i.sz to <3 x float> ; 2 uses
  %i.tc = insertelement <3 x double> poison, double %i.rt, i64 0
  %i.td = insertelement <3 x double> %i.tc, double %i.rx, i64 1
  %i.te = insertelement <3 x double> %i.td, double %i.sb, i64 2
  %i.tf = fmul <3 x double> %i.te, splat (double f0x3FF6A09E667F3BCD)
  %i.tg = fptrunc <3 x double> %i.tf to <3 x float> ; 3 uses
  %i.th = shufflevector <3 x float> %i.tg, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.ti = extractelement <3 x float> %i.tg, i64 2 ; 2 uses
  %i.tj = shufflevector <4 x float> %6, <4 x float> poison, <5 x i32> <i32 2, i32 0, i32 poison, i32 3, i32 poison>
  %10 = insertelement <5 x float> %i.tj, float %9, i64 2
  %11 = insertelement <5 x float> %10, float %8, i64 4
  %12 = shufflevector <5 x float> %11, <5 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 3, i32 2, i32 4, i32 4>
  %i.tk = fmul <8 x float> %7, %12
  %i.tl = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.sp, <8 x float> %i.sn, <8 x float> %i.tk) ; 2 uses
  %i.tm = insertelement <3 x float> poison, float %i.ta, i64 2
  %i.tn = shufflevector <3 x float> %i.tb, <3 x float> %i.tm, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 5, i32 5>
  %i.to = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.th, <8 x float> %i.tn, <8 x float> %i.tl) ; 9 uses
  store <8 x float> %i.to, ptr %2, align 4, !tbaa !177
  %13 = fmul float %8, %9
  %i.tp = extractelement <4 x float> %i.so, i64 2
  %i.tq = extractelement <4 x float> %i.so, i64 3
  %i.tr = call float @llvm.fmuladd.f32(float %i.tp, float %i.tq, float %13) ; 2 uses
  %i.ts = call float @llvm.fmuladd.f32(float %i.ti, float %i.ta, float %i.tr) ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store float %i.ts, ptr %i.tt, align 4, !tbaa !177
  %i.tu = extractelement <8 x float> %i.to, i64 5 ; 2 uses
  %i.tv = fneg float %i.tu
  %i.tw = extractelement <8 x float> %i.to, i64 7 ; 2 uses
  %i.tx = fmul float %i.tw, %i.tv
  %i.ty = extractelement <8 x float> %i.to, i64 4 ; 2 uses
  %i.tz = call float @llvm.fmuladd.f32(float %i.ty, float %i.ts, float %i.tx)
  %i.ua = extractelement <8 x float> %i.to, i64 2
  %i.ub = fneg float %i.ua                        ; 2 uses
  %i.uc = fmul float %i.tw, %i.ub
  %i.ud = extractelement <8 x float> %i.to, i64 1 ; 2 uses
  %i.ue = call float @llvm.fmuladd.f32(float %i.ud, float %i.ts, float %i.uc)
  %i.uf = fneg float %i.ue
  %i.ug = extractelement <8 x float> %i.to, i64 3
  %i.uh = fmul float %i.ug, %i.uf
  %i.ui = extractelement <8 x float> %i.to, i64 0
  %i.uj = call float @llvm.fmuladd.f32(float %i.ui, float %i.tz, float %i.uh)
  %i.uk = fmul float %i.ty, %i.ub
  %i.ul = call float @llvm.fmuladd.f32(float %i.ud, float %i.tu, float %i.uk)
  %i.um = extractelement <8 x float> %i.to, i64 6
  %i.un = call noundef float @llvm.fmuladd.f32(float %i.um, float %i.ul, float %i.uj)
  %i.uo = fcmp olt float %i.un, 0.000000e+00
  br i1 %i.uo, label %.preheader132.i, label %_ZL8do_edfitiPA3_fS0_S0_P5edpar.exit

.preheader132.i:                                  ; preds = %.preheader135.i
  %i.up = shufflevector <3 x float> %i.tb, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.uq = fneg <3 x float> %i.tg
  %i.ur = shufflevector <3 x float> %i.uq, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.us = fneg float %i.ti
  %i.ut = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ur, <8 x float> %i.up, <8 x float> %i.tl)
  store <8 x float> %i.ut, ptr %2, align 4, !tbaa !177
  %i.uu = call float @llvm.fmuladd.f32(float %i.us, float %i.ta, float %i.tr)
  store float %i.uu, ptr %i.tt, align 4, !tbaa !177
  br label %_ZL8do_edfitiPA3_fS0_S0_P5edpar.exit

_ZL8do_edfitiPA3_fS0_S0_P5edpar.exit:             ; preds = %.preheader135.i, %.preheader132.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN12_GLOBAL__N_121project_to_eigvectorsEPA3_fPNS_8t_eigvecERK5edpar(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %2) unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !257    ; 3 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit, label %.preheader27

.preheader27:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !154  ; 5 uses
  %i.d = icmp sgt i32 %i.c, 0                     ; 2 uses
  br i1 %i.d, label %.lr.ph, label %.preheader26

.lr.ph:                                           ; preds = %.preheader27
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !258  ; 8 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.c, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.g = mul nuw nsw i64 %wide.trip.count, 12     ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.g
  %scevgep47 = getelementptr i8, ptr %i.f, i64 %i.g
  %bound0 = icmp ult ptr %0, %scevgep47
  %bound1 = icmp ult ptr %i.f, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index
  %wide.vec = load <24 x float>, ptr %i.h, align 4, !tbaa !177, !alias.scope !259, !noalias !262
  %wide.vec50 = load <24 x float>, ptr %i.i, align 4, !tbaa !177, !alias.scope !262
  %interleaved.vec = fsub <24 x float> %wide.vec, %wide.vec50
  store <24 x float> %interleaved.vec, ptr %i.h, align 4, !tbaa !177, !alias.scope !259, !noalias !262
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !264

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader26, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv.prol ; 3 uses
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %indvars.iv.prol ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !177
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !177
  %i.q = fsub float %i.n, %i.p
  %i.r = load <2 x float>, ptr %i.k, align 4, !tbaa !177
  %i.s = load <2 x float>, ptr %i.l, align 4, !tbaa !177
  %i.t = fsub <2 x float> %i.r, %i.s
  store <2 x float> %i.t, ptr %i.k, align 4, !tbaa !177
  store float %i.q, ptr %i.m, align 4, !tbaa !177
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !265

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.u = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.v = icmp ugt i64 %i.u, -4
  br i1 %i.v, label %.preheader26, label %scalar.ph

.preheader26:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader27
  %i.w = icmp sgt i32 %i.a, 0
  br i1 %i.w, label %.lr.ph32, label %.preheader

.lr.ph32:                                         ; preds = %.preheader26
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !266
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !267
  %wide.trip.count39 = zext nneg i32 %i.a to i64
  br label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !177
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !177
  %i.ai = fsub float %i.af, %i.ah
  %i.aj = load <2 x float>, ptr %i.ac, align 4, !tbaa !177
  %i.ak = load <2 x float>, ptr %i.ad, align 4, !tbaa !177
  %i.al = fsub <2 x float> %i.aj, %i.ak
  store <2 x float> %i.al, ptr %i.ac, align 4, !tbaa !177
  store float %i.ai, ptr %i.ae, align 4, !tbaa !177
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv.next ; 3 uses
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %indvars.iv.next ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !177
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !177
  %i.as = fsub float %i.ap, %i.ar
  %i.at = load <2 x float>, ptr %i.am, align 4, !tbaa !177
  %i.au = load <2 x float>, ptr %i.an, align 4, !tbaa !177
  %i.av = fsub <2 x float> %i.at, %i.au
  store <2 x float> %i.av, ptr %i.am, align 4, !tbaa !177
  store float %i.as, ptr %i.ao, align 4, !tbaa !177
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv.next.1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %indvars.iv.next.1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !177
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !177
  %i.bc = fsub float %i.az, %i.bb
  %i.bd = load <2 x float>, ptr %i.aw, align 4, !tbaa !177
  %i.be = load <2 x float>, ptr %i.ax, align 4, !tbaa !177
  %i.bf = fsub <2 x float> %i.bd, %i.be
  store <2 x float> %i.bf, ptr %i.aw, align 4, !tbaa !177
  store float %i.bc, ptr %i.ay, align 4, !tbaa !177
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv.next.2 ; 3 uses
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %indvars.iv.next.2 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !177
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !177
  %i.bm = fsub float %i.bj, %i.bl
  %i.bn = load <2 x float>, ptr %i.bg, align 4, !tbaa !177
  %i.bo = load <2 x float>, ptr %i.bh, align 4, !tbaa !177
  %i.bp = fsub <2 x float> %i.bn, %i.bo
  store <2 x float> %i.bp, ptr %i.bg, align 4, !tbaa !177
  store float %i.bm, ptr %i.bi, align 4, !tbaa !177
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader26, label %scalar.ph, !llvm.loop !268

.preheader:                                       ; preds = %_ZN12_GLOBAL__N_18projectxERK5edparPA3_fS4_.exit, %.preheader26
  br i1 %i.d, label %.lr.ph34, label %.loopexit

.lr.ph34:                                         ; preds = %.preheader
end_hunk_0
