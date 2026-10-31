Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/camera?download=true
inline.NumInlined: 1435
inline.NumDeleted: 584
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Camera6updateEP11LocalPlayerff:bb.a
  br i1 %i.af, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  store i8 1, ptr %i.ag, align 2, !tbaa !450
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %.pre = load i8, ptr %i.ag, align 2, !tbaa !450, !range !151
  %i.ah = trunc nuw i8 %.pre to i1
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread, %bb.g
  %i.ai = fmul nsz float %2, -2.300000e+01
  %i.aj = tail call nsz noundef float @llvm.exp.f32(float %i.ai) ; 2 uses
  %i.ak = fsub nsz float 1.000000e+00, %i.aj
  %i.al = fmul nsz float %i.ak, %i.s
  %i.am = tail call nsz float @llvm.fmuladd.f32(float %.sroa.4173.0.copyload, float %i.aj, float %i.al)
  store float %i.am, ptr %i.y, align 4, !tbaa !317
  br label %bb.i

bb.i:                                             ; preds = %.thread439, %bb.h, %bb.g
  %i.an = load ptr, ptr %0, align 8, !tbaa !88    ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !68
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 224
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(218) %i.an, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.ar = load ptr, ptr %0, align 8, !tbaa !88    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.as = fneg nsz float %i.h
  store float 0.000000e+00, ptr %5, align 4, !tbaa !318
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.as, ptr %i.at, align 4, !tbaa !317
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float 0.000000e+00, ptr %i.au, align 4, !tbaa !90
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !68
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(218) %i.ar, ptr noundef nonnull align 4 dereferenceable(12) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ay = load ptr, ptr %0, align 8, !tbaa !88    ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !68
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 256
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(218) %i.ay)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 596
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !452
  %i.be = fpext nsz float %i.bd to double
  %i.bf = fadd nsz double %i.be, -7.500000e-01
  %i.bg = call nsz double @llvm.fabs.f64(double %i.bf)
  %i.bh = fadd nsz double %i.bg, -7.500000e-01
  %i.bi = fptrunc double %i.bh to float
  %i.bj = call nsz float @llvm.fabs.f32(float %i.bi) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bk = call { <2 x float>, float } @_ZNK11LocalPlayer12getEyeOffsetEv(ptr noundef nonnull align 8 dereferenceable(864) %1) ; 2 uses
  %.fca.0.extract146 = extractvalue { <2 x float>, float } %i.bk, 0 ; 3 uses
  %.fca.1.extract147 = extractvalue { <2 x float>, float } %i.bk, 1 ; 4 uses
  store <2 x float> %.fca.0.extract146, ptr %6, align 8
  %.sroa.2149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float %.fca.1.extract147, ptr %.sroa.2149.0..sroa_idx, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !74
  %i.bn = extractelement <2 x float> %.fca.0.extract146, i64 0 ; 3 uses
  %i.bo = extractelement <2 x float> %.fca.0.extract146, i64 1 ; 2 uses
  switch i32 %i.bm, label %bb.m [
    i32 3, label %bb.l
    i32 2, label %bb.k
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !318
  %i.br = fadd nsz float %i.bq, %i.bn
  store float %i.br, ptr %6, align 8, !tbaa !318
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !90
  %i.bv = fadd nsz float %.fca.1.extract147, %i.bu
  br label %.sink.split

bb.k:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !318
  %i.by = fadd nsz float %i.bx, %i.bn
  store float %i.by, ptr %6, align 8, !tbaa !318
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !90
  %i.cc = fadd nsz float %.fca.1.extract147, %i.cb
  br label %.sink.split

bb.l:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !453
  %i.cf = fadd nsz float %i.ce, %i.bn
  store float %i.cf, ptr %6, align 8, !tbaa !318
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !454
  %i.cj = fsub nsz float %.fca.1.extract147, %i.ci
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.k, %bb.l
  %.sink = phi float [ %i.cj, %bb.l ], [ %i.cc, %bb.k ], [ %i.bv, %bb.j ]
  %.pn.in = phi ptr [ %i.cg, %bb.l ], [ %i.bz, %bb.k ], [ %i.bs, %bb.j ]
  %.pn = load float, ptr %.pn.in, align 4, !tbaa !317
  %.ph = fadd nsz float %.pn, %i.bo
  store float %.sink, ptr %.sroa.2149.0..sroa_idx, align 8, !tbaa !90
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.i
  %i.ck = phi float [ %i.bo, %bb.i ], [ %.ph, %.sink.split ]
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !455
  %i.cn = fneg nsz float %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.cp = call nsz float @llvm.fmuladd.f32(float %i.bj, float %i.cn, float %i.ck)
  store float %i.cp, ptr %i.co, align 4, !tbaa !317
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !89 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !68
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 224
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(218) %i.cr, ptr noundef nonnull align 4 dereferenceable(12) %6)
  %i.cv = load ptr, ptr %i.cq, align 8, !tbaa !89 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.cw = load float, ptr %i.cl, align 8, !tbaa !455
  %i.cx = fmul nsz float %i.bj, %i.cw
  %i.cy = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.j, i64 0
  store <2 x float> %i.cy, ptr %7, align 8, !tbaa !60
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.cx, ptr %i.cz, align 8, !tbaa !90
  %i.da = load ptr, ptr %i.cv, align 8, !tbaa !68
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 208
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(218) %i.cv, ptr noundef nonnull align 4 dereferenceable(12) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.dd = load ptr, ptr %i.cq, align 8, !tbaa !89 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !68
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 256
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(218) %i.dd)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.di = load float, ptr %i.dh, align 4, !tbaa !103 ; 5 uses
  %i.dj = fcmp nsz une float %i.di, 0.000000e+00
  br i1 %i.dj, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !301 ; 3 uses
  %i.dm = fcmp nsz une float %i.dl, 0.000000e+00
  br i1 %i.dm, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dn = load i32, ptr %i.bl, align 8, !tbaa !74
  %i.do = icmp slt i32 %i.dn, 2
  br i1 %i.do, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dp = fmul nsz float %i.dl, 2.000000e+00
  %i.dq = call nsz { float, float } @llvm.modf.f32(float %i.dp)
  %i.dr = extractvalue { float, float } %i.dq, 0  ; 2 uses
  %i.ds = fcmp nsz olt float %i.dl, 5.000000e-01
  %i.dt = select i1 %i.ds, float 1.000000e+00, float -1.000000e+00
  %i.du = call nsz noundef float @llvm.pow.f32(float %i.dr, float 1.200000e+00)
  %i.dv = fpext nsz float %i.du to double
  %i.dw = fmul nsz double %i.dv, f0x400921FB54442D18
  %i.dx = call nsz double @llvm.sin.f64(double %i.dw)
  %i.dy = fptrunc nsz double %i.dx to float
  %i.dz = fpext nsz float %i.dt to double         ; 2 uses
  %i.ea = fmul nnan nsz double %i.dz, 3.000000e-01
  %i.eb = fpext nsz float %i.dr to double
  %i.ec = fmul nsz double %i.eb, f0x400921FB54442D18
  %i.ed = call nsz double @llvm.sin.f64(double %i.ec)
  %i.ee = fmul nsz double %i.ea, %i.ed
  %i.ef = fptrunc nsz double %i.ee to float
  %i.eg = fpext nsz float %i.dy to double         ; 3 uses
  %i.eh = fmul nsz double %i.eg, -2.800000e-01
  %i.ei = fmul nsz double %i.eh, %i.eg
  %i.ej = fptrunc nsz double %i.ei to float
  %i.ek = fmul nsz float %i.di, %i.ef
  %i.el = fmul nsz float %i.di, %i.ej
  %i.em = fmul nsz float %i.di, 0.000000e+00      ; 2 uses
  %i.en = fadd nsz float %i.em, 1.000000e+00
  %i.eo = fmul nnan nsz double %i.dz, -3.000000e-02
  %i.ep = fmul nsz double %i.eo, %i.eg
  %i.eq = fmul nsz double %i.ep, f0x400921FB54442D18
  %i.er = fpext nsz float %i.di to double
  %i.es = fmul nsz double %i.eq, %i.er
  %i.et = fmul nsz double %i.es, f0x3F91DF46A2529D39
  %sincos.i = call nsz { double, double } @llvm.sincos.f64(double %i.et) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0 ; 2 uses
  %cos.i = extractvalue { double, double } %sincos.i, 1 ; 2 uses
  %i.eu = fneg nsz double %sin.i
  %i.ev = insertelement <2 x double> poison, double %cos.i, i64 0
  %i.ew = insertelement <2 x double> %i.ev, double %sin.i, i64 1
  %i.ex = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %cos.i, i64 1
  %i.ez = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> zeroinitializer, <2 x double> %i.ey)
  %i.fa = fptrunc nsz <2 x double> %i.ez to <2 x float>
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.sroa.0372.0 = phi nsz float [ %i.ek, %bb.p ], [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %bb.m ] ; 4 uses
  %.sroa.7374.0 = phi nsz float [ %i.el, %bb.p ], [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %bb.m ] ; 4 uses
  %.sroa.11.0 = phi nsz float [ %i.en, %bb.p ], [ 1.000000e+00, %bb.o ], [ 1.000000e+00, %bb.n ], [ 1.000000e+00, %bb.m ]
  %.sroa.13383.0 = phi nsz float [ %i.em, %bb.p ], [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %bb.m ] ; 3 uses
  %i.fb = phi <2 x float> [ %i.fa, %bb.p ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.o ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.n ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.m ] ; 4 uses
  %i.fc = load ptr, ptr %i.cq, align 8, !tbaa !89 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !68
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 80
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = call noundef nonnull align 4 dereferenceable(64) ptr %i.ff(ptr noundef nonnull align 8 dereferenceable(218) %i.fc) ; 8 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fl = load <2 x float>, ptr %i.fg, align 4, !tbaa !60
  %i.fm = load <2 x float>, ptr %i.fi, align 4, !tbaa !60
  %i.fn = insertelement <2 x float> poison, float %.sroa.7374.0, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = fmul nsz <2 x float> %i.fo, %i.fm
  %i.fq = insertelement <2 x float> poison, float %.sroa.0372.0, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.fl, <2 x float> %i.fp)
  %i.ft = load <2 x float>, ptr %i.fj, align 4, !tbaa !60
  %i.fu = insertelement <2 x float> poison, float %.sroa.13383.0, i64 0
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> %i.ft, <2 x float> %i.fs)
  %i.fx = load <2 x float>, ptr %i.fk, align 4, !tbaa !60
  %i.fy = fadd nsz <2 x float> %i.fx, %i.fw
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !60
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !60
  %i.gd = fmul nsz float %.sroa.7374.0, %i.gc
  %i.ge = call nsz float @llvm.fmuladd.f32(float %.sroa.0372.0, float %i.ga, float %i.gd)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !60
  %i.gh = call nsz float @llvm.fmuladd.f32(float %.sroa.13383.0, float %i.gg, float %i.ge)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !60
  %i.gk = fadd nsz float %i.gj, %i.gh
  store <2 x float> %i.fy, ptr %i.fh, align 4, !tbaa !60
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 5 uses
  store float %i.gk, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !60
  %i.gl = load ptr, ptr %i.cq, align 8, !tbaa !89 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !68
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 80
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = call noundef nonnull align 4 dereferenceable(64) ptr %i.go(ptr noundef nonnull align 8 dereferenceable(218) %i.gl) ; 6 uses
  %i.gq = fsub nsz float %.sroa.0372.0, %.sroa.0372.0 ; 2 uses
  %i.gr = fsub nsz float %.sroa.7374.0, %.sroa.7374.0 ; 2 uses
  %i.gs = fsub nsz float %.sroa.11.0, %.sroa.13383.0 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gv = load <2 x float>, ptr %i.gp, align 4, !tbaa !60
  %i.gw = load <2 x float>, ptr %i.gt, align 4, !tbaa !60
  %i.gx = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = fmul nsz <2 x float> %i.gy, %i.gw
  %i.ha = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> %i.gv, <2 x float> %i.gz)
  %i.hd = load <2 x float>, ptr %i.gu, align 4, !tbaa !60
  %i.he = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hf, <2 x float> %i.hd, <2 x float> %i.hc)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !60
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !60
  %i.hl = fmul nsz float %i.gr, %i.hk
  %i.hm = call nsz float @llvm.fmuladd.f32(float %i.gq, float %i.hi, float %i.hl)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !60
  %i.hp = call nsz float @llvm.fmuladd.f32(float %i.gs, float %i.ho, float %i.hm)
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  store <2 x float> %i.hg, ptr %i.hq, align 8, !tbaa !60
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  store float %i.hp, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.hr = load ptr, ptr %i.cq, align 8, !tbaa !89 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !68
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 80
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = call noundef nonnull align 4 dereferenceable(64) ptr %i.hu(ptr noundef nonnull align 8 dereferenceable(218) %i.hr) ; 6 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.hx = extractelement <2 x float> %i.fb, i64 1
  %i.hy = extractelement <2 x float> %i.fb, i64 0
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.ia = load <2 x float>, ptr %i.hv, align 4, !tbaa !60
  %i.ib = load <2 x float>, ptr %i.hw, align 4, !tbaa !60
  %i.ic = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.id = fmul nsz <2 x float> %i.ic, %i.ib
  %i.ie = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ie, <2 x float> %i.ia, <2 x float> %i.id)
  %i.ig = load <2 x float>, ptr %i.hz, align 4, !tbaa !60
  %i.ih = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ig, <2 x float> zeroinitializer, <2 x float> %i.if)
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !60
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.il = load float, ptr %i.ik, align 4, !tbaa !60
  %i.im = fmul nsz float %i.hx, %i.il
  %i.in = call nsz float @llvm.fmuladd.f32(float %i.hy, float %i.ij, float %i.im)
  %i.io = getelementptr inbounds nuw i8, ptr %i.hv, i64 40
  %i.ip = load float, ptr %i.io, align 4, !tbaa !60
  %i.iq = call nsz float @llvm.fmuladd.f32(float %i.ip, float 0.000000e+00, float %i.in)
  store <2 x float> %i.ih, ptr %8, align 8
  %.sroa.2120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %i.iq, ptr %.sroa.2120.0..sroa_idx, align 8
  %i.ir = load i32, ptr %i.bl, align 8, !tbaa !74 ; 2 uses
  %i.is = icmp sgt i32 %i.ir, 1
  br i1 %i.is, label %bb.r, label %._crit_edge406

._crit_edge406:                                   ; preds = %bb.q
  %i.it = load <2 x float>, ptr %i.fh, align 4, !tbaa !60
  %.pre410 = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !90
  br label %bb.ab

bb.r:                                             ; preds = %bb.q
  %.sroa.098.0.copyload = load <2 x float>, ptr %i.fh, align 4, !tbaa !60 ; 2 uses
  %i.iu = icmp eq i32 %i.ir, 3
  br i1 %i.iu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.iv = load <2 x float>, ptr %i.hq, align 8, !tbaa !60
  %i.iw = fneg nsz <2 x float> %i.iv
  store <2 x float> %i.iw, ptr %i.hq, align 8, !tbaa !60
  %i.ix = load float, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !90
  %i.iy = fneg nsz float %i.ix
  store float %i.iy, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !90
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.098.4.vec.extract = extractelement <2 x float> %.sroa.098.0.copyload, i64 1
  %i.iz = fadd nsz float %.sroa.098.4.vec.extract, 2.000000e+00
  %.sroa.098.4.vec.insert = insertelement <2 x float> %.sroa.098.0.copyload, float %i.iz, i64 1
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 76
  br label %bb.v

bb.u:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.jd = add nuw nsw i32 %.0215400, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.jd, 28
  br i1 %exitcond.not, label %.loopexit, label %bb.v, !llvm.loop !387

bb.v:                                             ; preds = %bb.t, %bb.u
  %.sroa.098.0401 = phi <2 x float> [ %.sroa.098.4.vec.insert, %bb.t ], [ %.sroa.098.1, %bb.u ]
  %.0215400 = phi i32 [ 10, %bb.t ], [ %i.jd, %bb.u ] ; 3 uses
  %i.je = load float, ptr %i.fh, align 4, !tbaa !456
  %i.jf = load float, ptr %i.hq, align 8, !tbaa !457
  %i.jg = sub nsw i32 0, %.0215400
  %i.jh = sitofp nsz i32 %i.jg to float           ; 3 uses
  %i.ji = call nsz float @llvm.fmuladd.f32(float %i.jf, float %i.jh, float %i.je)
  %.sroa.098.0.vec.insert = insertelement <2 x float> %.sroa.098.0401, float %i.ji, i64 0 ; 2 uses
  %i.jj = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !458
  %i.jk = load float, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !459
  %i.jl = call nsz float @llvm.fmuladd.f32(float %i.jk, float %i.jh, float %i.jj) ; 3 uses
  %i.jm = icmp samesign ugt i32 %.0215400, 12
  br i1 %i.jm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jn = load float, ptr %i.jb, align 8, !tbaa !460
  %i.jo = load float, ptr %i.jc, align 4, !tbaa !320
  %i.jp = call nsz float @llvm.fmuladd.f32(float %i.jo, float %i.jh, float %i.jn)
  %.sroa.098.4.vec.insert106 = insertelement <2 x float> %.sroa.098.0.vec.insert, float %i.jp, i64 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.098.1 = phi nsz <2 x float> [ %.sroa.098.4.vec.insert106, %bb.w ], [ %.sroa.098.0.vec.insert, %bb.v ] ; 5 uses
  %i.jq = load ptr, ptr %i.ja, align 8, !tbaa !58
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !68
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = call noundef ptr %i.ju(ptr noundef nonnull align 8 dereferenceable(8) %i.jr), !inline_history !388 ; 2 uses
  %i.jw = load ptr, ptr %i.ja, align 8, !tbaa !58
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 128
  %i.jy = call noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.jx)
  %.sroa.09.0.vec.extract.i = extractelement <2 x float> %.sroa.098.1, i64 0 ; 2 uses
  %i.jz = fcmp nsz ogt float %.sroa.09.0.vec.extract.i, 0.000000e+00
  %i.ka = select nsz i1 %i.jz, float 5.000000e+00, float -5.000000e+00
  %i.kb = fadd nsz float %.sroa.09.0.vec.extract.i, %i.ka
  %i.kc = fdiv nsz float %i.kb, 1.000000e+01
  %i.kd = fptosi float %i.kc to i16
  %i.ke = shufflevector <2 x float> %.sroa.098.1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kf = insertelement <2 x float> %i.ke, float %i.jl, i64 1 ; 2 uses
  %i.kg = fcmp nsz ogt <2 x float> %i.kf, zeroinitializer
  %i.kh = select <2 x i1> %i.kg, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.ki = fadd nsz <2 x float> %i.kf, %i.kh
  %i.kj = fdiv nsz <2 x float> %i.ki, splat (float 1.000000e+01)
  %i.kk = fptosi <2 x float> %i.kj to <2 x i16>
  %i.kl = zext <2 x i16> %i.kk to <2 x i48>
  %i.km = shl nuw <2 x i48> %i.kl, <i48 16, i48 32>
  %.sroa.2.0.insert.insert.i = call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.km)
  %.sroa.0.0.insert.ext.i = zext i16 %i.kd to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %i.kn = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.jy, i48 %.sroa.0.0.insert.insert.i, ptr noundef null)
  %i.ko = and i32 %i.kn, 65535
  %i.kp = zext nneg i32 %i.ko to i64              ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !463
  %i.kt = load ptr, ptr %i.kq, align 8, !tbaa !464 ; 3 uses
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = sdiv exact i64 %i.kw, 2080
  %i.ky = icmp ugt i64 %i.kx, %i.kp
  br i1 %i.ky, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.kz = getelementptr inbounds nuw [2080 x i8], ptr %i.kt, i64 %i.kp ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !65
  %i.lc = icmp eq i64 %i.lb, 0
  br i1 %i.lc, label %bb.z, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kt, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.y, %bb.z
  %i.le = phi ptr [ %i.ld, %bb.z ], [ %i.kz, %bb.y ]
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 1412
  %i.lg = load i8, ptr %i.lf, align 4, !tbaa !490, !range !151, !noundef !152
  %i.lh = trunc nuw i8 %i.lg to i1
  br i1 %i.lh, label %.thread389, label %bb.u

.thread389:                                       ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.li = load float, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !459
  %i.lj = fmul nsz float %i.li, 1.000000e+01
  %i.lk = fmul nsz float %i.lj, 5.000000e-01
  %i.ll = fadd nsz float %i.jl, %i.lk             ; 2 uses
  %i.lm = load <2 x float>, ptr %i.hq, align 8, !tbaa !60
  %i.ln = fmul nsz <2 x float> %i.lm, splat (float 1.000000e+01)
  %i.lo = fmul nsz <2 x float> %i.ln, splat (float 5.000000e-01)
  %i.lp = fadd nsz <2 x float> %.sroa.098.1, %i.lo ; 3 uses
  %i.lq = load float, ptr %i.y, align 4, !tbaa !317
  %i.lr = fadd nsz float %i.lq, 2.000000e+01      ; 2 uses
  %i.ls = extractelement <2 x float> %i.lp, i64 1
  %i.lt = fcmp nsz ogt float %i.ls, %i.lr
  br i1 %i.lt, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %.thread389
  %.sroa.098.4.vec.insert114 = insertelement <2 x float> %i.lp, float %i.lr, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.aa, %.thread389
  %.sroa.15.2394 = phi float [ %i.ll, %bb.aa ], [ %i.ll, %.thread389 ], [ %i.jl, %bb.u ] ; 2 uses
  %.sroa.098.4 = phi nsz <2 x float> [ %.sroa.098.4.vec.insert114, %bb.aa ], [ %i.lp, %.thread389 ], [ %.sroa.098.1, %bb.u ] ; 2 uses
  store <2 x float> %.sroa.098.4, ptr %i.fh, align 4, !tbaa !60
  store float %.sroa.15.2394, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !60
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge406, %.loopexit
  %i.lu = phi float [ %.pre410, %._crit_edge406 ], [ %.sroa.15.2394, %.loopexit ]
  %i.lv = phi <2 x float> [ %i.it, %._crit_edge406 ], [ %.sroa.098.4, %.loopexit ]
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !91 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %.sroa.081.0.copyload = load i48, ptr %i.ly, align 4, !tbaa !307 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.081.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.lz = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.ma = fmul nnan nsz float %i.lz, 1.000000e+01
  %i.mb = bitcast i48 %.sroa.081.0.copyload to <3 x i16>
  %i.mc = shufflevector <3 x i16> %i.mb, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.md = sitofp nsz <2 x i16> %i.mc to <2 x float>
  %i.me = fmul nnan nsz <2 x float> %i.md, splat (float 1.000000e+01)
  %i.mf = fsub nsz <2 x float> %i.lv, %i.me
  %i.mg = fsub nsz float %i.lu, %i.ma
  store <2 x float> %i.mf, ptr %9, align 8
  %.sroa.275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.mg, ptr %.sroa.275.0..sroa_idx, align 8
  %i.mh = load ptr, ptr %i.lx, align 8, !tbaa !68
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 224
  %i.mj = load ptr, ptr %i.mi, align 8
  call void %i.mj(ptr noundef nonnull align 8 dereferenceable(218) %i.lx, ptr noundef nonnull align 4 dereferenceable(12) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.mk = load ptr, ptr %i.lw, align 8, !tbaa !91 ; 2 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !68
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 352
  %i.mn = load ptr, ptr %i.mm, align 8
  call void %i.mn(ptr noundef nonnull align 8 dereferenceable(233) %i.mk, ptr noundef nonnull align 4 dereferenceable(12) %8)
  %i.mo = load ptr, ptr %i.lw, align 8, !tbaa !91 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !68
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 256
  %i.mr = load ptr, ptr %i.mq, align 8
  call void %i.mr(ptr noundef nonnull align 8 dereferenceable(218) %i.mo)
  %i.ms = load ptr, ptr %i.lw, align 8, !tbaa !91 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %.sroa.071.0.copyload = load i48, ptr %i.ly, align 4, !tbaa !307 ; 2 uses
  %.sroa.3.0.extract.shift.i258 = lshr i48 %.sroa.071.0.copyload, 32
  %.sroa.3.0.extract.trunc.i259 = trunc nuw i48 %.sroa.3.0.extract.shift.i258 to i16
  %i.mt = sitofp nsz i16 %.sroa.3.0.extract.trunc.i259 to float
  %i.mu = fmul nnan nsz float %i.mt, 1.000000e+01
  %i.mv = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !90
  %i.mw = fsub nsz float %i.mv, %i.mu
  %i.mx = load float, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !90
  %i.my = fmul nsz float %i.mx, 1.000000e+02
  %i.mz = bitcast i48 %.sroa.071.0.copyload to <3 x i16>
  %i.na = shufflevector <3 x i16> %i.mz, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.nb = sitofp nsz <2 x i16> %i.na to <2 x float>
  %i.nc = fmul nnan nsz <2 x float> %i.nb, splat (float 1.000000e+01)
  %i.nd = load <2 x float>, ptr %i.fh, align 4, !tbaa !60
  %i.ne = fsub nsz <2 x float> %i.nd, %i.nc
  %i.nf = load <2 x float>, ptr %i.hq, align 8, !tbaa !60
  %i.ng = fmul nsz <2 x float> %i.nf, splat (float 1.000000e+02)
  %i.nh = fadd nsz <2 x float> %i.ne, %i.ng
  %i.ni = fadd nsz float %i.mw, %i.my
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
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !491
  %i.nx = fadd nsz float %i.nw, %i.nu             ; 5 uses
  store float %i.nx, ptr %i.nv, align 4, !tbaa !491
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
  %i.sy = fpext nsz <2 x float> %i.so to <2 x double>
  %i.sz = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sx, <2 x double> <double -5.000000e+01, double 2.400000e+01>, <2 x double> %i.sy)
  %i.ta = fptrunc nsz <2 x double> %i.sz to <2 x float>
  store <2 x float> %i.ta, ptr %11, align 8, !tbaa !60
  store float 7.750000e+01, ptr %i.qz, align 8, !tbaa !90
  %sin35.i.i = extractvalue { double, double } %sincos34.i.i, 0
  %cos36.i.i = extractvalue { double, double } %sincos34.i.i, 1
  %i.tb = insertelement <2 x double> poison, double %cos36.i.i, i64 0
  %i.tc = shufflevector <2 x double> %i.tb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.td = fmul nsz <2 x double> %i.tc, <double f0xBFE8836FA4556E5A, double f0x3FE491B7506B2987> ; 3 uses
  %i.te = insertelement <2 x double> poison, double %sin35.i.i, i64 0
  %i.tf = shufflevector <2 x double> %i.te, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tg = fmul nsz <2 x double> %i.tf, <double f0x3FE491B7506B2987, double f0xBFE8836FA4556E5A> ; 3 uses
  %i.th = fmul nsz <2 x double> %i.tg, <double f0x3FE8836FA4556E5A, double f0xBFE8836FA4556E5A>
  %i.ti = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.td, <2 x double> splat (double f0x3FE491B7506B2987), <2 x double> %i.th)
  %i.tj = fptrunc nsz <2 x double> %i.ti to <2 x float> ; 3 uses
  %i.tk = extractelement <2 x float> %i.tj, i64 0 ; 2 uses
  %i.tl = extractelement <2 x float> %i.tj, i64 1 ; 2 uses
  %i.tm = shufflevector <2 x double> %i.tg, <2 x double> %i.td, <2 x i32> <i32 1, i32 2>
  %i.tn = fmul nsz <2 x double> %i.tm, <double f0xBFE491B7506B2987, double f0xBFE8836FA4556E5A>
  %i.to = shufflevector <2 x double> %i.td, <2 x double> %i.tg, <2 x i32> <i32 1, i32 2>
  %i.tp = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.to, <2 x double> <double f0xBFE8836FA4556E5A, double f0x3FE491B7506B2987>, <2 x double> %i.tn)
  %i.tq = fptrunc nsz <2 x double> %i.tp to <2 x float> ; 4 uses
  %foldExtExtBinop452 = fmul nsz <2 x float> %i.tq, %i.tq
  %i.tr = extractelement <2 x float> %foldExtExtBinop452, i64 1
  %i.ts = extractelement <2 x float> %i.tq, i64 0 ; 2 uses
  %i.tt = call nsz float @llvm.fmuladd.f32(float %i.ts, float %i.ts, float %i.tr)
  %i.tu = call nsz float @llvm.fmuladd.f32(float %i.tk, float %i.tk, float %i.tt)
  %i.tv = call nsz float @llvm.fmuladd.f32(float %i.tl, float %i.tl, float %i.tu)
  %i.tw = fpext nsz float %i.tv to double
  %i.tx = call nsz double @llvm.sqrt.f64(double %i.tw)
  %i.ty = fdiv nsz double 1.000000e+00, %i.tx
  %i.tz = fptrunc nsz double %i.ty to float
  %i.ua = insertelement <2 x float> poison, float %i.tz, i64 0
  %i.ub = shufflevector <2 x float> %i.ua, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uc = fmul nsz <2 x float> %i.ub, %i.tq       ; 4 uses
  %i.ud = fmul nsz <2 x float> %i.ub, %i.tj       ; 4 uses
  %i.ue = fmul nsz double %i.ri, f0x400921FB54442D18
  %i.uf = call nsz double @llvm.sin.f64(double %i.ue)
  %i.ug = fptrunc nsz double %i.uf to float       ; 6 uses
  %i.uh = extractelement <2 x float> %i.uc, i64 1
  %i.ui = fmul nsz float %i.uh, f0x3F1A62BD
  %i.uj = extractelement <2 x float> %i.uc, i64 0
  %i.uk = call nsz float @llvm.fmuladd.f32(float %i.uj, float f0x3E7D2632, float %i.ui)
  %i.ul = extractelement <2 x float> %i.ud, i64 0
  %i.um = call nsz float @llvm.fmuladd.f32(float %i.ul, float f0x3EEB76CD, float %i.uk)
  %i.un = extractelement <2 x float> %i.ud, i64 1
  %i.uo = call nsz noundef float @llvm.fmuladd.f32(float %i.un, float f0x3F1A62BD, float %i.um) ; 3 uses
  %i.up = fcmp nsz olt float %i.uo, 0.000000e+00  ; 3 uses
  %i.uq = fneg nsz <2 x float> %i.uc
  %i.ur = fneg nsz <2 x float> %i.ud
  %i.us = fneg nsz float %i.uo
  %.sroa.047.0.i = select nsz i1 %i.up, <2 x float> %i.uq, <2 x float> %i.uc ; 3 uses
  %.sroa.10.0.i = select nsz i1 %i.up, <2 x float> %i.ur, <2 x float> %i.ud ; 3 uses
  %.020.i = select nsz i1 %i.up, float %i.us, float %i.uo ; 2 uses
  %i.ut = fcmp nsz ugt float %.020.i, 9.990000e-01
  br i1 %i.ut, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.uu = call nsz float @llvm.acos.f32(float %.020.i) ; 3 uses
  %i.uv = call nsz float @llvm.sin.f32(float %i.uu)
  %i.uw = fdiv nsz float 1.000000e+00, %i.uv      ; 2 uses
  %i.ux = fsub nsz float 1.000000e+00, %i.ug
  %i.uy = fmul nsz float %i.ux, %i.uu
  %i.uz = call nsz float @llvm.sin.f32(float %i.uy)
  %i.va = fmul nsz float %i.uz, %i.uw
  %i.vb = fmul nsz float %i.uu, %i.ug
  %i.vc = call nsz float @llvm.sin.f32(float %i.vb)
  %i.vd = fmul nsz float %i.vc, %i.uw             ; 2 uses
  %i.ve = insertelement <2 x float> poison, float %i.va, i64 0
  %i.vf = shufflevector <2 x float> %i.ve, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vg = fmul nsz <2 x float> %.sroa.10.0.i, %i.vf
  %i.vh = insertelement <2 x float> poison, float %i.vd, i64 0
  %i.vi = shufflevector <2 x float> %i.vh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vj = fmul nsz <2 x float> %i.vi, <float f0x3EEB76CD, float f0x3F1A62BD> ; 2 uses
  %i.vk = fmul nsz <2 x float> %.sroa.047.0.i, %i.vf
  %i.vl = fmul nsz float %i.vd, f0x3E7D2632
  %i.vm = insertelement <2 x float> %i.vj, float %i.vl, i64 0
  %i.vn = fadd nsz <2 x float> %i.vk, %i.vm
  %i.vo = fadd nsz <2 x float> %i.vg, %i.vj
  br label %_ZN4core10quaternion5slerpES0_S0_ff.exit

bb.au:                                            ; preds = %bb.as
  %i.vp = fsub nsz float 1.000000e+00, %i.ug      ; 4 uses
  %.sroa.024.0.vec.extract.i.i = extractelement <2 x float> %.sroa.047.0.i, i64 0
  %i.vq = fmul nsz float %i.vp, %.sroa.024.0.vec.extract.i.i
  %.sroa.024.4.vec.extract.i.i = extractelement <2 x float> %.sroa.047.0.i, i64 1
  %i.vr = fmul nsz float %i.vp, %.sroa.024.4.vec.extract.i.i
  %.sroa.325.8.vec.extract.i.i = extractelement <2 x float> %.sroa.10.0.i, i64 0
  %i.vs = fmul nsz float %i.vp, %.sroa.325.8.vec.extract.i.i
  %.sroa.325.12.vec.extract.i.i = extractelement <2 x float> %.sroa.10.0.i, i64 1
  %i.vt = fmul nsz float %i.vp, %.sroa.325.12.vec.extract.i.i
  %i.vu = fmul nsz float %i.ug, f0x3E7D2632
  %i.vv = fmul nsz float %i.ug, f0x3F1A62BD       ; 2 uses
  %i.vw = fmul nsz float %i.ug, f0x3EEB76CD
  %i.vx = fadd nsz float %i.vu, %i.vq             ; 3 uses
  %i.vy = fadd nsz float %i.vv, %i.vr             ; 3 uses
  %i.vz = fadd nsz float %i.vw, %i.vs             ; 3 uses
  %i.wa = fadd nsz float %i.vv, %i.vt             ; 3 uses
  %i.wb = fmul nsz float %i.vy, %i.vy
  %i.wc = call nsz float @llvm.fmuladd.f32(float %i.vx, float %i.vx, float %i.wb)
  %i.wd = call nsz float @llvm.fmuladd.f32(float %i.vz, float %i.vz, float %i.wc)
  %i.we = call nsz float @llvm.fmuladd.f32(float %i.wa, float %i.wa, float %i.wd)
  %i.wf = fpext nsz float %i.we to double
  %i.wg = call nsz double @llvm.sqrt.f64(double %i.wf)
  %i.wh = fdiv nsz double 1.000000e+00, %i.wg
  %i.wi = fptrunc nsz double %i.wh to float       ; 4 uses
  %i.wj = fmul nsz float %i.vx, %i.wi
  %i.wk = insertelement <2 x float> poison, float %i.wj, i64 0
  %i.wl = fmul nsz float %i.vy, %i.wi
  %.sroa.018.4.vec.insert.i.i = insertelement <2 x float> %i.wk, float %i.wl, i64 1
  %i.wm = fmul nsz float %i.vz, %i.wi
  %i.wn = insertelement <2 x float> poison, float %i.wm, i64 0
  %i.wo = fmul nsz float %i.wa, %i.wi
  %.sroa.8.12.vec.insert.i.i = insertelement <2 x float> %i.wn, float %i.wo, i64 1
  br label %_ZN4core10quaternion5slerpES0_S0_ff.exit

_ZN4core10quaternion5slerpES0_S0_ff.exit:         ; preds = %bb.at, %bb.au
  %.sroa.0.4.vec.insert.i29.sink.i = phi <2 x float> [ %.sroa.018.4.vec.insert.i.i, %bb.au ], [ %i.vn, %bb.at ] ; 7 uses
  %.sroa.3.12.vec.insert.i31.sink.i = phi <2 x float> [ %.sroa.8.12.vec.insert.i.i, %bb.au ], [ %i.vo, %bb.at ] ; 7 uses
  %.sroa.7.12.vec.extract = extractelement <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, i64 1 ; 5 uses
  %i.wp = fmul nsz float %.sroa.7.12.vec.extract, %.sroa.7.12.vec.extract
  %i.wq = fpext nsz float %i.wp to double         ; 2 uses
  %.sroa.0321.0.vec.extract = extractelement <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, i64 0 ; 3 uses
  %foldExtExtBinop454 = fmul nsz <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, %.sroa.0.4.vec.insert.i29.sink.i
  %i.wr = extractelement <2 x float> %foldExtExtBinop454, i64 0
  %i.ws = fpext nsz float %i.wr to double         ; 2 uses
  %.sroa.0321.4.vec.extract = extractelement <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, i64 1 ; 3 uses
  %i.wt = fmul nsz float %.sroa.0321.4.vec.extract, %.sroa.0321.4.vec.extract
  %i.wu = fpext nsz float %i.wt to double         ; 2 uses
  %.sroa.7.8.vec.extract = extractelement <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, i64 0
  %foldExtExtBinop456 = fmul nsz <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, %.sroa.3.12.vec.insert.i31.sink.i
  %i.wv = extractelement <2 x float> %foldExtExtBinop456, i64 0
  %i.ww = fpext nsz float %i.wv to double         ; 2 uses
  %i.wx = fneg nsz float %.sroa.7.8.vec.extract
  %i.wy = fmul nsz float %.sroa.0321.0.vec.extract, %i.wx
  %i.wz = call nsz float @llvm.fmuladd.f32(float %.sroa.0321.4.vec.extract, float %.sroa.7.12.vec.extract, float %i.wy)
  %i.xa = fpext nsz float %i.wz to double
  %i.xb = fmul nsz double %i.xa, 2.000000e+00     ; 4 uses
  %i.xc = fadd nsz double %i.xb, -1.000000e+00
  %i.xd = call nsz noundef double @llvm.fabs.f64(double %i.xc)
  %i.xe = fcmp nsz ugt double %i.xd, f0x3EB0C6F7A0B5ED8D
  br i1 %i.xe, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN4core10quaternion5slerpES0_S0_ff.exit
  %i.xf = fpext nsz float %.sroa.0321.0.vec.extract to double
  %i.xg = fpext nsz float %.sroa.7.12.vec.extract to double
  %i.xh = call nsz double @llvm.atan2.f64(double %i.xf, double %i.xg)
  %i.xi = fmul nsz double %i.xh, -2.000000e+00
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

bb.aw:                                            ; preds = %_ZN4core10quaternion5slerpES0_S0_ff.exit
  %i.xj = fadd nsz double %i.xb, 1.000000e+00
  %i.xk = call nsz noundef double @llvm.fabs.f64(double %i.xj)
  %i.xl = fcmp nsz ugt double %i.xk, f0x3EB0C6F7A0B5ED8D
  br i1 %i.xl, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.xm = fpext nsz float %.sroa.0321.0.vec.extract to double
  %i.xn = fpext nsz float %.sroa.7.12.vec.extract to double
  %i.xo = call nsz double @llvm.atan2.f64(double %i.xm, double %i.xn)
  %i.xp = fmul nsz double %i.xo, 2.000000e+00
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

bb.ay:                                            ; preds = %bb.aw
  %i.xq = shufflevector <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, <2 x i32> <i32 1, i32 2>
  %i.xr = fmul nsz <2 x float> %i.xq, %.sroa.3.12.vec.insert.i31.sink.i
  %i.xs = fsub nsz double %i.ws, %i.wu
  %i.xt = fsub nsz double %i.xs, %i.ww
  %i.xu = fadd nsz double %i.xt, %i.wq
  %i.xv = shufflevector <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xw = shufflevector <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, <2 x i32> <i32 0, i32 2>
  %i.xx = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xv, <2 x float> %i.xw, <2 x float> %i.xr)
  %i.xy = fpext nsz <2 x float> %i.xx to <2 x double>
  %i.xz = fmul nsz <2 x double> %i.xy, splat (double 2.000000e+00) ; 2 uses
  %i.ya = extractelement <2 x double> %i.xz, i64 0
  %i.yb = call nsz double @llvm.atan2.f64(double %i.ya, double %i.xu)
  %i.yc = fadd nsz double %i.ws, %i.wu
  %i.yd = fsub nsz double %i.ww, %i.yc
  %i.ye = fadd nsz double %i.yd, %i.wq
  %i.yf = extractelement <2 x double> %i.xz, i64 1
  %i.yg = call nsz double @llvm.atan2.f64(double %i.yf, double %i.ye)
  %i.yh = fcmp nsz olt double %i.xb, -1.000000e+00
  %i.yi = select i1 %i.yh, double -1.000000e+00, double %i.xb ; 2 uses
  %i.yj = fcmp nsz olt double %i.yi, 1.000000e+00
  %i.yk = select i1 %i.yj, double %i.yi, double 1.000000e+00
  %i.yl = call nsz double @llvm.asin.f64(double %i.yk)
  %i.ym = insertelement <2 x double> poison, double %i.yg, i64 0
  %i.yn = insertelement <2 x double> %i.ym, double %i.yl, i64 1
  %i.yo = fptrunc nsz <2 x double> %i.yn to <2 x float>
  %i.yp = fmul nsz <2 x float> %i.yo, splat (float f0x42652EE0)
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit: ; preds = %bb.av, %bb.ax, %bb.ay
  %.in = phi double [ %i.xp, %bb.ax ], [ %i.yb, %bb.ay ], [ %i.xi, %bb.av ]
  %i.yq = phi <2 x float> [ <float 0.000000e+00, float -9.000000e+01>, %bb.ax ], [ %i.yp, %bb.ay ], [ <float 0.000000e+00, float 9.000000e+01>, %bb.av ]
  %i.yr = fptrunc double %.in to float
  store <2 x float> %i.yq, ptr %12, align 8, !tbaa !60
  %i.ys = fmul nsz float %i.yr, f0x42652EE0
  store float %i.ys, ptr %i.ra, align 8, !tbaa !90
  br label %bb.ba

bb.az:                                            ; preds = %bb.ar
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !301
  %i.yv = call nsz { float, float } @llvm.modf.f32(float %i.yu)
  %i.yw = extractvalue { float, float } %i.yv, 0  ; 2 uses
  %i.yx = fpext nsz float %i.yw to double
  %i.yy = fmul nsz double %i.yx, f0x400921FB54442D18
  %i.yz = fmul nsz double %i.yy, 2.000000e+00
  %i.za = call nsz double @llvm.sin.f64(double %i.yz)
  %i.zb = fpext nsz <2 x float> %i.so to <2 x double>
  %i.zc = fneg nsz double %i.za
  %i.zd = fmul nsz float %i.yw, 2.000000e+00
  %i.ze = call nsz { float, float } @llvm.modf.f32(float %i.zd)
  %i.zf = extractvalue { float, float } %i.ze, 0
  %i.zg = fpext nsz float %i.zf to double
  %i.zh = fmul nsz double %i.zg, f0x400921FB54442D18
  %i.zi = call nsz double @llvm.sin.f64(double %i.zh)
  %i.zj = insertelement <2 x double> poison, double %i.zc, i64 0
  %i.zk = insertelement <2 x double> %i.zj, double %i.zi, i64 1
  %i.zl = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zk, <2 x double> splat (double 3.000000e+00), <2 x double> %i.zb)
  %i.zm = fptrunc nsz <2 x double> %i.zl to <2 x float>
  store <2 x float> %i.zm, ptr %11, align 8, !tbaa !60
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit
  %i.zn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !93 ; 2 uses
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !68
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 224
  %i.zr = load ptr, ptr %i.zq, align 8
  call void %i.zr(ptr noundef nonnull align 8 dereferenceable(218) %i.zo, ptr noundef nonnull align 4 dereferenceable(12) %11)
  %i.zs = load ptr, ptr %i.zn, align 8, !tbaa !93 ; 2 uses
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !68
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 208
  %i.zv = load ptr, ptr %i.zu, align 8
  call void %i.zv(ptr noundef nonnull align 8 dereferenceable(218) %i.zs, ptr noundef nonnull align 4 dereferenceable(12) %12)
  %i.zw = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.zx = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.zy = load i32, ptr %i.zw, align 8, !tbaa !157 ; 2 uses
  store i32 %i.zy, ptr %i.zx, align 4, !tbaa !157
  %i.zz = load ptr, ptr %i.zn, align 8, !tbaa !93
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !58
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 712
  %i.aad = load float, ptr %i.aac, align 8, !tbaa !298
  call void @_ZN18WieldMeshSceneNode25setLightColorAndAnimationEN5video6SColorEf(ptr noundef nonnull align 8 dereferenceable(352) %i.zz, i32 %i.zy, float noundef %i.aad)
  call void @_ZN6Camera18updateViewingRangeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.aae = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.sroa.01.0.copyload.i291 = load <2 x float>, ptr %i.aae, align 8, !tbaa !60 ; 2 uses
  %.sroa.22.0..sroa_idx.i292 = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.sroa.22.0.copyload.i293 = load float, ptr %.sroa.22.0..sroa_idx.i292, align 8, !tbaa !60 ; 3 uses
  %.sroa.0311.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i291, i64 0 ; 3 uses
  %i.aaf = call nsz noundef float @hypotf(float noundef %.sroa.0311.0.vec.extract, float noundef %.sroa.22.0.copyload.i293) #30
  %i.aag = fcmp nsz ogt float %i.aaf, 1.000000e+01
  %.sroa.0311.4.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i291, i64 1 ; 3 uses
  %i.aah = call nsz noundef float @llvm.fabs.f32(float %.sroa.0311.4.vec.extract)
  %i.aai = fcmp nsz ogt float %i.aah, 1.000000e+01
  br i1 %i.aag, label %.thread396, label %bb.bb

.thread396:                                       ; preds = %bb.ba
  %i.aaj = getelementptr inbounds nuw i8, ptr %1, i64 418
  %i.aak = load i8, ptr %i.aaj, align 2, !tbaa !451, !range !151, !noundef !152
  %i.aal = trunc nuw i8 %i.aak to i1
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 423
  %i.aan = load i8, ptr %i.aam, align 1, !tbaa !496, !range !151, !noundef !152
  %i.aao = trunc nuw i8 %i.aan to i1
  br i1 %i.aao, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.thread396, %bb.bb
  %i.aap = phi i1 [ %i.aal, %.thread396 ], [ false, %bb.bb ]
  %i.aaq = getelementptr inbounds nuw i8, ptr %1, i64 419
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !497, !range !151, !noundef !152
  %i.aas = trunc nuw i8 %i.aar to i1
  %i.aat = or i1 %i.aap, %i.aas
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %or.cond = phi i1 [ false, %bb.bb ], [ %i.aat, %bb.bc ]
  br i1 %i.aai, label %bb.be, label %._crit_edge.i.i

bb.be:                                            ; preds = %bb.bd
  %i.aau = getelementptr inbounds nuw i8, ptr %1, i64 422
  %i.aav = load i8, ptr %i.aau, align 2, !tbaa !498, !range !151, !noundef !152
  %i.aaw = trunc nuw i8 %i.aav to i1
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.be, %bb.bd
  %i.aax = phi i1 [ false, %bb.bd ], [ %i.aaw, %bb.be ]
  %i.aay = load ptr, ptr @g_settings, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.aaz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.aaz, ptr %13, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.aaz, ptr noundef nonnull align 1 dereferenceable(9) @.str.4, i64 9, i1 false)
  %i.aba = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 9, ptr %i.aba, align 8, !tbaa !65
  %i.abb = getelementptr inbounds nuw i8, ptr %13, i64 25
  store i8 0, ptr %i.abb, align 1, !tbaa !66
  %i.abc = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.aay, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %._crit_edge.i.i
  br i1 %i.abc, label %._crit_edge.i.i296, label %.critedge232

._crit_edge.i.i296:                               ; preds = %bb.bf
  %i.abd = load ptr, ptr %i.aaa, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.abe = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.abe, ptr %14, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.abe, ptr noundef nonnull align 1 dereferenceable(3) @.str.5, i64 3, i1 false)
  %i.abf = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 3, ptr %i.abf, align 8, !tbaa !65
  %i.abg = getelementptr inbounds nuw i8, ptr %14, i64 19
  store i8 0, ptr %i.abg, align 1, !tbaa !66
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abd, i64 1384
  %i.abi = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.abh, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %.critedge unwind label %bb.bi

.critedge:                                        ; preds = %._crit_edge.i.i296
  %.not.i.i.i.i = icmp ne ptr %i.abi, null
  %i.abj = load ptr, ptr %14, align 8, !tbaa !94  ; 2 uses
  %i.abk = icmp eq ptr %i.abj, %i.abe
  br i1 %i.abk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.abl = load i64, ptr %i.abe, align 8, !tbaa !66
  %i.abm = add i64 %i.abl, 1
  call void @_ZdlPvm(ptr noundef %i.abj, i64 noundef %i.abm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.critedge232

.critedge232:                                     ; preds = %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.abn = phi i1 [ %.not.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.bf ]
  %i.abo = load ptr, ptr %13, align 8, !tbaa !94  ; 2 uses
  %i.abp = icmp eq ptr %i.abo, %i.aaz
  br i1 %i.abp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301: ; preds = %.critedge232
  %i.abq = load i64, ptr %i.aaz, align 8, !tbaa !66
  %i.abr = add i64 %i.abq, 1
  call void @_ZdlPvm(ptr noundef %i.abo, i64 noundef %i.abr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303: ; preds = %.critedge232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.aax
  %or.cond3.not = xor i1 %or.cond3, true
  %or.cond5 = or i1 %i.abn, %or.cond3.not
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  br i1 %or.cond5, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303
  store i32 1, ptr %i.abs, align 8, !tbaa !299
  %i.abt = fmul nsz float %.sroa.0311.4.vec.extract, %.sroa.0311.4.vec.extract
  %i.abu = call nsz float @llvm.fmuladd.f32(float %.sroa.0311.0.vec.extract, float %.sroa.0311.0.vec.extract, float %i.abt)
  %i.abv = call nsz float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i293, float %.sroa.22.0.copyload.i293, float %i.abu)
  %i.abw = call nsz noundef float @llvm.sqrt.f32(float %i.abv) ; 2 uses
  %i.abx = fcmp nsz olt float %i.abw, 7.000000e+01
  %i.aby = select nsz i1 %i.abx, float %i.abw, float 7.000000e+01
  br label %.sink.split444

bb.bh:                                            ; preds = %._crit_edge.i.i
  %i.abz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %._crit_edge.i.i296
  %i.aca = landingpad { ptr, i32 }
          cleanup
  %i.acb = load ptr, ptr %14, align 8, !tbaa !94  ; 2 uses
  %i.acc = icmp eq ptr %i.acb, %i.abe
  br i1 %i.acc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304: ; preds = %bb.bi
  %i.acd = load i64, ptr %i.abe, align 8, !tbaa !66
  %i.ace = add i64 %i.acd, 1
  call void @_ZdlPvm(ptr noundef %i.acb, i64 noundef %i.ace) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306, %bb.bh
  %.pn.pn = phi { ptr, i32 } [ %i.aca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306 ], [ %i.abz, %bb.bh ]
  %i.acf = load ptr, ptr %13, align 8, !tbaa !94  ; 2 uses
  %i.acg = icmp eq ptr %i.acf, %i.aaz
  br i1 %i.acg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307: ; preds = %bb.bj
  %i.ach = load i64, ptr %i.aaz, align 8, !tbaa !66
  %i.aci = add i64 %i.ach, 1
  call void @_ZdlPvm(ptr noundef %i.acf, i64 noundef %i.aci) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn.pn

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303
  %i.acj = load i32, ptr %i.abs, align 8, !tbaa !299
  %i.ack = icmp eq i32 %i.acj, 1
  br i1 %i.ack, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 2, ptr %i.abs, align 8, !tbaa !299
  br label %.sink.split444

.sink.split444:                                   ; preds = %bb.bg, %bb.bl
  %.sink445 = phi float [ 6.000000e+01, %bb.bl ], [ %i.aby, %bb.bg ]
  %i.acl = getelementptr inbounds nuw i8, ptr %0, i64 172
  store float %.sink445, ptr %i.acl, align 4, !tbaa !300
end_hunk_0
begin_hunk_1_@_ZN6Camera10setDiggingEi:bb.a

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
  %i.bj = fpext nsz <2 x float> %i.ax to <2 x double>
  %i.bk = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fmul nsz <2 x double> %i.bl, %i.bj
  %i.bn = fptrunc nsz <2 x double> %i.bm to <2 x float>
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
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !324 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !324 ; 2 uses
  %.not255272 = icmp eq ptr %i.dw, %i.dy
  br i1 %.not255272, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN15RenderingEngine16get_video_driverEv.exit
  %i.dz = load <2 x i32>, ptr %i.du, align 4, !tbaa !157
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ee = uitofp nsz <2 x i32> %i.dz to <2 x float>
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
  %i.em = load ptr, ptr %.sroa.0161.0273, align 8, !tbaa !325 ; 13 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !327 ; 2 uses
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
  %i.hn = load ptr, ptr %2, align 8, !tbaa !331
  %i.ho = load i64, ptr %i.ea, align 8, !tbaa !332
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25, !noalias !521
  invoke void @_Z16translate_stringB5cxx11St17basic_string_viewIwSt11char_traitsIwEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.526") align 8 %1, i64 %i.ho, ptr %i.hn)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.m
  %i.hp = load ptr, ptr %1, align 8, !tbaa !331, !noalias !521
  %i.hq = load i64, ptr %i.eb, align 8, !tbaa !332, !noalias !521
  invoke void @_Z17unescape_enrichedIwENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEESt17basic_string_viewIS2_S4_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.526") align 8 %3, i64 %i.hq, ptr %i.hp)
          to label %_Z17unescape_enrichedB5cxx11St17basic_string_viewIwSt11char_traitsIwEE.exit.i unwind label %bb.n

_Z17unescape_enrichedB5cxx11St17basic_string_viewIwSt11char_traitsIwEE.exit.i: ; preds = %.noexc
  %i.hr = load ptr, ptr %1, align 8, !tbaa !331, !noalias !521 ; 2 uses
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
  %i.hx = load ptr, ptr %1, align 8, !tbaa !331, !noalias !521 ; 2 uses
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
  %i.ic = load ptr, ptr %3, align 8, !tbaa !331
  %i.id = load ptr, ptr %i.hi, align 8, !tbaa !68
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = invoke i64 %i.if(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, ptr noundef %i.ic)
          to label %bb.o unwind label %bb.t       ; 4 uses

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i
  %.sroa.05.0.extract.trunc = trunc i64 %i.ig to i32 ; 2 uses
  %i.ih = load ptr, ptr %3, align 8, !tbaa !331   ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.ed
  br i1 %i.ii, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.ij = load i64, ptr %i.ed, align 8, !tbaa !66
  %i.ik = shl i64 %i.ij, 2
  %i.il = add i64 %i.ik, 4
end_hunk_1
