Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_filmicrgb?download=true
inline.NumInlined: 325
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 80
begin_hunk_0_@dt_iop_tonecurve_draw:bb.a
  %i.mx = fmul reassoc nsz arcp contract afn float %i.mw, %i.jj
  %i.my = fsub reassoc nsz arcp contract afn float %i.jj, %i.mx
  %i.mz = fpext reassoc nsz arcp contract afn float %i.my to double
  %i.na = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.mz
  %i.nb = fmul reassoc nsz arcp contract afn double %i.na, %i.ml
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.nb) #20
  %i.nc = fmul reassoc nsz arcp contract afn float %i.ei, 1.900000e-01
  %i.nd = insertelement <2 x float> poison, float %i.ms, i64 0
  %i.ne = shufflevector <2 x float> %i.nd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nf = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.jr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.s
  %.010551330 = phi i32 [ 1, %bb.o ], [ %i.os, %bb.s ] ; 2 uses
  %i.ng = uitofp nneg i32 %.010551330 to double
  %i.nh = fmul reassoc nnan nsz arcp contract afn double %i.ng, f0x3F70101010101010
  %i.ni = fptrunc reassoc nsz arcp contract afn double %i.nh to float ; 5 uses
  %i.nj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ni
  %i.nk = insertelement <2 x float> poison, float %i.ni, i64 0
  %i.nl = insertelement <2 x float> %i.nk, float %i.nj, i64 1 ; 2 uses
  %i.nm = fmul reassoc nsz arcp contract afn <2 x float> %i.nl, %i.nl
  %i.nn = fmul reassoc nsz arcp contract afn <2 x float> %i.nm, %i.ne
  %i.no = fmul reassoc nsz arcp contract afn <2 x float> %i.nn, %i.nf ; 2 uses
  %i.np = extractelement <2 x float> %i.no, i64 0
  %i.nq = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.np)
  %i.nr = extractelement <2 x float> %i.no, i64 1
  %i.ns = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.nr)
  %i.nt = fadd reassoc nsz arcp contract afn float %i.ns, %i.nq
  %i.nu = fmul reassoc nsz arcp contract afn float %i.nt, %i.jj
  %i.nv = fsub reassoc nsz arcp contract afn float %i.jj, %i.nu
  %i.nw = load i32, ptr %i.er, align 4, !tbaa !385
  switch i32 %i.nw, label %bb.s [
    i32 1, label %bb.q
    i32 2, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.nx = load float, ptr %i.em, align 4, !tbaa !43
  %i.ny = fmul reassoc nsz arcp contract afn float %i.eo, %i.ni
  %i.nz = fadd reassoc nsz arcp contract afn float %i.nx, %i.ny
  %i.oa = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.nz)
  %i.ob = fmul reassoc nsz arcp contract afn float %i.oa, %i.ej
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.oc = load float, ptr %i.em, align 4, !tbaa !43
  %i.od = fmul reassoc nsz arcp contract afn float %i.eo, %i.ni
  %i.oe = fadd reassoc nsz arcp contract afn float %i.oc, %i.od
  %i.of = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.oe)
  %i.og = fmul reassoc nsz arcp contract afn float %i.nc, %i.of
  %i.oh = fadd reassoc nsz arcp contract afn float %i.og, 1.000000e+00
  %i.oi = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.oh)
  %i.oj = fmul reassoc nsz arcp contract afn float %i.oi, f0x3EAAE8E8
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q
  %.01056 = phi nsz float [ %i.ob, %bb.q ], [ %i.oj, %bb.r ], [ %i.ni, %bb.p ]
  %i.ok = load float, ptr %i.cu, align 4, !tbaa !460
  %i.ol = fmul reassoc nsz arcp contract afn float %i.ok, %.01056
  %i.om = fpext reassoc nsz arcp contract afn float %i.ol to double
  %i.on = load float, ptr %i.cz, align 8, !tbaa !461
  %i.oo = fpext reassoc nsz arcp contract afn float %i.on to double
  %i.op = fpext reassoc nsz arcp contract afn float %i.nv to double
  %i.oq = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.op
  %i.or = fmul reassoc nsz arcp contract afn double %i.oq, %i.oo
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.om, double noundef %i.or) #20
  %i.os = add nuw nsw i32 %.010551330, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.os, 256
  br i1 %exitcond.not, label %.loopexit, label %bb.p

.loopexit:                                        ; preds = %bb.s, %bb.n, %bb.i
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.ot = load i32, ptr %i.er, align 4, !tbaa !385 ; 2 uses
  %.off = add i32 %i.ot, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.loopexit
  %i.ou = load float, ptr %i.em, align 4, !tbaa !43
  %i.ov = fdiv reassoc nsz arcp contract afn float 0.000000e+00, %i.ej
  %i.ow = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.ov)
  %i.ox = fsub reassoc nsz arcp contract afn float %i.ow, %i.ou
  %i.oy = fdiv reassoc nsz arcp contract afn float %i.ox, %i.eo
  %i.oz = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.oy, float 0.000000e+00)
  %i.pa = call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.oz, float 1.000000e+00) ; 2 uses
  %i.pb = icmp eq i32 %i.ot, 2
  br i1 %i.pb, label %.thread1211, label %.thread1209

.thread1209:                                      ; preds = %bb.t
  %i.pc = getelementptr inbounds nuw i8, ptr %i.e, i64 336 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.e, i64 352 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.e, i64 368 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 2 uses
  %i.pg = load float, ptr %i.jk, align 16, !tbaa !467
  %i.ph = load float, ptr %i.jl, align 4, !tbaa !468
  %i.pi = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 2 uses
  %i.pj = call reassoc nsz arcp contract afn fastcc float @filmic_spline(float noundef %i.pa, ptr noundef nonnull %i.f, ptr noundef nonnull %i.pc, ptr noundef nonnull %i.pd, ptr noundef nonnull %i.pe, ptr noundef nonnull %i.pf, float noundef %i.pg, float noundef %i.ph, ptr noundef nonnull %i.pi)
  %i.pk = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pj, float 0.000000e+00)
  %i.pl = call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.pk, float 1.000000e+00)
  %i.pm = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !41
  %i.po = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.pl, float %i.pn)
  br label %bb.v

.thread1211:                                      ; preds = %bb.t
  %i.pp = fmul reassoc nnan nsz arcp contract afn float %i.pa, 1.900000e+01
  %i.pq = fadd reassoc nnan nsz arcp contract afn float %i.pp, 1.000000e+00
  %i.pr = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.pq)
  %i.ps = fmul reassoc nsz arcp contract afn float %i.pr, f0x3EAAE8E8
  %i.pt = getelementptr inbounds nuw i8, ptr %i.e, i64 336 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.e, i64 352 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.e, i64 368 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 2 uses
  %i.px = load float, ptr %i.jk, align 16, !tbaa !467
  %i.py = load float, ptr %i.jl, align 4, !tbaa !468
  %i.pz = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 2 uses
  %i.qa = call reassoc nsz arcp contract afn fastcc float @filmic_spline(float noundef %i.ps, ptr noundef nonnull %i.f, ptr noundef nonnull %i.pt, ptr noundef nonnull %i.pu, ptr noundef nonnull %i.pv, ptr noundef nonnull %i.pw, float noundef %i.px, float noundef %i.py, ptr noundef nonnull %i.pz)
  %i.qb = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qa, float 0.000000e+00)
  %i.qc = call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.qb, float 1.000000e+00)
  %i.qd = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !41
  %i.qf = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.qc, float %i.qe)
  %i.qg = fmul reassoc nsz arcp contract afn float %i.qf, 1.900000e+01
  %i.qh = fadd reassoc nsz arcp contract afn float %i.qg, 1.000000e+00
  %i.qi = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.qh)
  %i.qj = fmul reassoc nsz arcp contract afn float %i.qi, f0x3EAAE8E8
  br label %bb.v

bb.u:                                             ; preds = %.loopexit
  %i.qk = getelementptr inbounds nuw i8, ptr %i.e, i64 336 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.e, i64 352 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.e, i64 368 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 2 uses
  %i.qo = load float, ptr %i.jk, align 16, !tbaa !467
  %i.qp = load float, ptr %i.jl, align 4, !tbaa !468
  %i.qq = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 2 uses
  %i.qr = call reassoc nsz arcp contract afn fastcc float @filmic_spline(float noundef 0.000000e+00, ptr noundef nonnull %i.f, ptr noundef nonnull %i.qk, ptr noundef nonnull %i.ql, ptr noundef nonnull %i.qm, ptr noundef nonnull %i.qn, float noundef %i.qo, float noundef %i.qp, ptr noundef nonnull %i.qq)
  %i.qs = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qr, float 0.000000e+00)
  %i.qt = call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.qs, float 1.000000e+00)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread1211, %.thread1209
  %i.qu = phi ptr [ %i.pi, %.thread1209 ], [ %i.pz, %.thread1211 ], [ %i.qq, %bb.u ]
  %i.qv = phi ptr [ %i.pf, %.thread1209 ], [ %i.pw, %.thread1211 ], [ %i.qn, %bb.u ]
  %i.qw = phi ptr [ %i.pe, %.thread1209 ], [ %i.pv, %.thread1211 ], [ %i.qm, %bb.u ]
  %i.qx = phi ptr [ %i.pd, %.thread1209 ], [ %i.pu, %.thread1211 ], [ %i.ql, %bb.u ]
  %i.qy = phi ptr [ %i.pc, %.thread1209 ], [ %i.pt, %.thread1211 ], [ %i.qk, %bb.u ]
  %.01058 = phi nsz float [ %i.po, %.thread1209 ], [ %i.qj, %.thread1211 ], [ %i.qt, %bb.u ]
  %i.qz = load float, ptr %i.cz, align 8, !tbaa !461
  %i.ra = fpext reassoc nsz arcp contract afn float %i.qz to double
  %i.rb = fpext reassoc nsz arcp contract afn float %.01058 to double
  %i.rc = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.rb
  %i.rd = fmul reassoc nsz arcp contract afn double %i.rc, %i.ra
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.rd) #20
  %i.re = getelementptr inbounds nuw i8, ptr %i.e, i64 424 ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.e, i64 408 ; 4 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 12 uses
  %i.rh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ei
  %i.ri = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eo
  br label %bb.x

bb.w:                                             ; preds = %bb.ah
  call void @cairo_restore(ptr noundef %i.aj) #20
  call void @cairo_save(ptr noundef %i.aj) #20
  %i.rj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !320
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 1432
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !426 ; 2 uses
  %i.rm = fmul reassoc nsz arcp contract afn double %i.rl, -4.000000e+00 ; 2 uses
  %i.rn = fmul reassoc nsz arcp contract afn double %i.rl, 8.000000e+00 ; 2 uses
  %i.ro = load <2 x float>, ptr %i.cu, align 4, !tbaa !16
  %i.rp = fpext <2 x float> %i.ro to <2 x double> ; 2 uses
  %i.rq = extractelement <2 x double> %i.rp, i64 0
  %i.rr = fadd reassoc nsz arcp contract afn double %i.rn, %i.rq
  %i.rs = extractelement <2 x double> %i.rp, i64 1
  %i.rt = fadd reassoc nsz arcp contract afn double %i.rn, %i.rs
  call void @cairo_rectangle(ptr noundef %i.aj, double noundef %i.rm, double noundef %i.rm, double noundef %i.rr, double noundef %i.rt) #20
  call void @cairo_clip(ptr noundef %i.aj) #20
  %i.ru = getelementptr inbounds nuw i8, ptr %i.e, i64 428
  %i.rv = getelementptr inbounds nuw i8, ptr %i.e, i64 436
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !16 ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  %i.ry = load float, ptr %i.rx, align 32, !tbaa !16 ; 3 uses
  %i.rz = load i32, ptr %i.er, align 4, !tbaa !385
  switch i32 %i.rz, label %bb.ak [
    i32 1, label %bb.ai
    i32 2, label %bb.aj
  ]

bb.x:                                             ; preds = %bb.v, %bb.ah
  %.010591332 = phi i32 [ 1, %bb.v ], [ %i.ub, %bb.ah ] ; 2 uses
  %i.sa = uitofp nneg i32 %.010591332 to float
  %i.sb = fmul reassoc nnan nsz arcp contract afn float %i.sa, f0x3B808081
  %i.sc = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.sb, float 2.400000e+00) ; 5 uses
  %i.sd = load i32, ptr %i.er, align 4, !tbaa !385 ; 2 uses
  %.off1122 = add i32 %i.sd, -1
  %switch1123 = icmp ult i32 %.off1122, 2
  br i1 %switch1123, label %bb.y, label %.thread1213

bb.y:                                             ; preds = %bb.x
  %i.se = load float, ptr %i.em, align 4, !tbaa !43
  %i.sf = fmul reassoc nnan nsz arcp contract afn float %i.sc, 1.000000e+02
  %i.sg = fmul reassoc nsz arcp contract afn float %i.sf, %i.rh
  %i.sh = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.sg)
  %i.si = fsub reassoc nsz arcp contract afn float %i.sh, %i.se
  %i.sj = fmul reassoc nsz arcp contract afn float %i.si, %i.ri
  %i.sk = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.sj, float 0.000000e+00)
  %i.sl = call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.sk, float 1.000000e+00) ; 2 uses
  %i.sm = icmp eq i32 %i.sd, 2
  br i1 %i.sm, label %bb.z, label %.thread1213

bb.z:                                             ; preds = %bb.y
  %i.sn = fmul reassoc nnan nsz arcp contract afn float %i.sc, 1.900000e+01
  %i.so = fadd reassoc nnan nsz arcp contract afn float %i.sn, 1.000000e+00
  %i.sp = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.so)
  %i.sq = fmul reassoc nsz arcp contract afn float %i.sp, f0x3EAAE8E8
  br label %.thread1213

.thread1213:                                      ; preds = %bb.x, %bb.z, %bb.y
  %.010611215 = phi float [ %i.sl, %bb.z ], [ %i.sl, %bb.y ], [ %i.sc, %bb.x ]
  %.01060 = phi nsz float [ %i.sq, %bb.z ], [ %i.sc, %bb.y ], [ %i.sc, %bb.x ] ; 2 uses
  %i.sr = load float, ptr %i.jk, align 16, !tbaa !467
  %i.ss = load float, ptr %i.jl, align 4, !tbaa !468
  %i.st = call reassoc nsz arcp contract afn fastcc float @filmic_spline(float noundef %.010611215, ptr noundef nonnull %i.f, ptr noundef nonnull %i.qy, ptr noundef nonnull %i.qx, ptr noundef nonnull %i.qw, ptr noundef nonnull %i.qv, float noundef %i.sr, float noundef %i.ss, ptr noundef nonnull %i.qu) ; 5 uses
  %i.su = load float, ptr %i.re, align 8, !tbaa !16
  %i.sv = fadd reassoc nsz arcp contract afn float %i.su, f0x3727C5AC
  %i.sw = fcmp reassoc nsz arcp contract afn ogt float %i.st, %i.sv
  br i1 %i.sw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.thread1213
  %i.sx = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.st, float 1.000000e+00)
  call void @cairo_set_source_rgb(ptr noundef %i.aj, double noundef 7.500000e-01, double noundef 5.000000e-01, double noundef 0.000000e+00) #20
  br label %bb.ae

bb.ab:                                            ; preds = %.thread1213
  %i.sy = load float, ptr %i.rf, align 8, !tbaa !16
  %i.sz = fadd reassoc nsz arcp contract afn float %i.sy, f0xB727C5AC
  %i.ta = fcmp reassoc nsz arcp contract afn olt float %i.st, %i.sz
  br i1 %i.ta, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.tb = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.st, float 0.000000e+00)
  call void @cairo_set_source_rgb(ptr noundef %i.aj, double noundef 7.500000e-01, double noundef 5.000000e-01, double noundef 0.000000e+00) #20
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.tc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !410 ; 4 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 680
  %.sroa.01144.0.copyload = load double, ptr %i.td, align 8
  %.sroa.41145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tc, i64 688
  %.sroa.41145.0.copyload = load double, ptr %.sroa.41145.0..sroa_idx, align 8
  %.sroa.51146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tc, i64 696
  %.sroa.51146.0.copyload = load double, ptr %.sroa.51146.0..sroa_idx, align 8
  %.sroa.61147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tc, i64 704
  %.sroa.61147.0.copyload = load double, ptr %.sroa.61147.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01144.0.copyload, double noundef %.sroa.41145.0.copyload, double noundef %.sroa.51146.0.copyload, double noundef %.sroa.61147.0.copyload) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.aa
  %.01062 = phi nsz float [ %i.sx, %bb.aa ], [ %i.tb, %bb.ac ], [ %i.st, %bb.ad ] ; 3 uses
  %i.te = load i32, ptr %i.er, align 4, !tbaa !385
  switch i32 %i.te, label %bb.ah [
    i32 1, label %bb.af
    i32 2, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %i.tf = load float, ptr %i.rg, align 4, !tbaa !41
  %i.tg = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.01062, float %i.tf)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.th = load float, ptr %i.rg, align 4, !tbaa !41
  %i.ti = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.01062, float %i.th)
  %i.tj = fmul reassoc nsz arcp contract afn float %i.ti, 1.900000e+01
  %i.tk = fadd reassoc nsz arcp contract afn float %i.tj, 1.000000e+00
  %i.tl = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.tk)
  %i.tm = fmul reassoc nsz arcp contract afn float %i.tl, f0x3EAAE8E8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.ag, %bb.af
  %.11063 = phi nsz float [ %i.tg, %bb.af ], [ %i.tm, %bb.ag ], [ %.01062, %bb.ae ]
  %i.tn = load float, ptr %i.cu, align 4, !tbaa !460
  %i.to = fmul reassoc nsz arcp contract afn float %i.tn, %.01060
  %i.tp = fpext reassoc nsz arcp contract afn float %i.to to double
  %i.tq = load float, ptr %i.cz, align 8, !tbaa !461
  %i.tr = fpext reassoc nsz arcp contract afn float %i.tq to double
  %i.ts = fpext reassoc nsz arcp contract afn float %.11063 to double
  %i.tt = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.ts ; 2 uses
  %i.tu = fmul reassoc nsz arcp contract afn double %i.tt, %i.tr
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.tp, double noundef %i.tu) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.tv = load float, ptr %i.cu, align 4, !tbaa !460
  %i.tw = fmul reassoc nsz arcp contract afn float %i.tv, %.01060
  %i.tx = fpext reassoc nsz arcp contract afn float %i.tw to double
  %i.ty = load float, ptr %i.cz, align 8, !tbaa !461
  %i.tz = fpext reassoc nsz arcp contract afn float %i.ty to double
  %i.ua = fmul reassoc nsz arcp contract afn double %i.tt, %i.tz
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.tx, double noundef %i.ua) #20
  %i.ub = add nuw nsw i32 %.010591332, 1          ; 2 uses
  %exitcond1347.not = icmp eq i32 %i.ub, 256
  br i1 %exitcond1347.not, label %bb.w, label %bb.x

bb.ai:                                            ; preds = %bb.w
  %i.uc = load float, ptr %i.em, align 4, !tbaa !43
  %i.ud = fmul reassoc nsz arcp contract afn float %i.rw, %i.eo
  %i.ue = fadd reassoc nsz arcp contract afn float %i.uc, %i.ud
  %i.uf = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ue)
  %i.ug = fmul reassoc nsz arcp contract afn float %i.uf, %i.ej
  %i.uh = load float, ptr %i.rg, align 4, !tbaa !41
  %i.ui = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ry, float %i.uh)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.w
  %i.uj = load float, ptr %i.em, align 4, !tbaa !43
  %i.uk = fmul reassoc nsz arcp contract afn float %i.rw, %i.eo
  %i.ul = fadd reassoc nsz arcp contract afn float %i.uj, %i.uk
  %i.um = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ul)
  %i.un = fmul reassoc nsz arcp contract afn float %i.ei, 1.900000e-01
  %i.uo = fmul reassoc nsz arcp contract afn float %i.un, %i.um
  %i.up = fadd reassoc nsz arcp contract afn float %i.uo, 1.000000e+00
  %i.uq = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.up)
  %i.ur = fmul reassoc nsz arcp contract afn float %i.uq, f0x3EAAE8E8
  %i.us = load float, ptr %i.rg, align 4, !tbaa !41
  %i.ut = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ry, float %i.us)
  %i.uu = fmul reassoc nsz arcp contract afn float %i.ut, 1.900000e+01
  %i.uv = fadd reassoc nsz arcp contract afn float %i.uu, 1.000000e+00
  %i.uw = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.uv)
  %i.ux = fmul reassoc nsz arcp contract afn float %i.uw, f0x3EAAE8E8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.w
  %.01065 = phi nsz float [ %i.ui, %bb.ai ], [ %i.ux, %bb.aj ], [ %i.ry, %bb.w ]
  %.01064 = phi nsz float [ %i.ug, %bb.ai ], [ %i.ur, %bb.aj ], [ %i.rw, %bb.w ] ; 2 uses
  call void @cairo_set_source_rgb(ptr noundef %i.aj, double noundef 7.500000e-01, double noundef 5.000000e-01, double noundef 0.000000e+00) #20
  %i.uy = load float, ptr %i.cu, align 4, !tbaa !460
  %i.uz = fmul reassoc nsz arcp contract afn float %i.uy, %.01064
  %i.va = fpext reassoc nsz arcp contract afn float %i.uz to double
  %i.vb = fpext reassoc nsz arcp contract afn float %.01065 to double
  %i.vc = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.vb ; 2 uses
  %i.vd = load float, ptr %i.cz, align 8, !tbaa !461
  %i.ve = fpext reassoc nsz arcp contract afn float %i.vd to double
  %i.vf = fmul reassoc nsz arcp contract afn double %i.vc, %i.ve
  %i.vg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !320
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 1432
  %i.vi = load double, ptr %i.vh, align 8, !tbaa !426
  %i.vj = fmul reassoc nsz arcp contract afn double %i.vi, 6.000000e+00
  call void @cairo_arc(ptr noundef %i.aj, double noundef %i.va, double noundef %i.vf, double noundef %i.vj, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #20
  call void @cairo_fill(ptr noundef %i.aj) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.vk = getelementptr inbounds nuw i8, ptr %i.e, i64 412
  %i.vl = call <8 x float> @llvm.masked.load.v8f32.p0(ptr nonnull align 4 %i.vk, <8 x i1> <i1 true, i1 false, i1 true, i1 false, i1 false, i1 true, i1 false, i1 true>, <8 x float> poison), !tbaa !16 ; 2 uses
  %i.vm = shufflevector <8 x float> %i.vl, <8 x float> poison, <2 x i32> <i32 2, i32 7>
  %i.vn = shufflevector <8 x float> %i.vl, <8 x float> poison, <2 x i32> <i32 0, i32 5>
  %i.vo = fsub reassoc nsz arcp contract afn <2 x float> %i.vm, %i.vn
  %i.vp = load <2 x float>, ptr %i.cu, align 4, !tbaa !16
  %i.vq = fmul reassoc nsz arcp contract afn <2 x float> %i.vo, %i.vp ; 2 uses
  %shift1449 = shufflevector <2 x float> %i.vq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1450 = fdiv reassoc nsz arcp contract afn <2 x float> %i.vq, %shift1449
  %i.vr = extractelement <2 x float> %foldExtExtBinop1450, i64 0
  %i.vs = call reassoc nsz arcp contract afn float @llvm.atan.f32(float %i.vr) ; 2 uses
  %i.vt = fadd reassoc nsz arcp contract afn float %i.vs, f0x3FC90FDB ; 2 uses
  %i.vu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !410 ; 4 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 680
  %.sroa.01148.0.copyload = load double, ptr %i.vv, align 8
  %.sroa.41149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vu, i64 688
  %.sroa.41149.0.copyload = load double, ptr %.sroa.41149.0..sroa_idx, align 8
  %.sroa.51150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vu, i64 696
  %.sroa.51150.0.copyload = load double, ptr %.sroa.51150.0..sroa_idx, align 8
  %.sroa.61151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vu, i64 704
  %.sroa.61151.0.copyload = load double, ptr %.sroa.61151.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01148.0.copyload, double noundef %.sroa.41149.0.copyload, double noundef %.sroa.51150.0.copyload, double noundef %.sroa.61151.0.copyload) #20
  %.not1117 = icmp eq i32 %i.g, 0                 ; 4 uses
  %i.vw = fadd reassoc nsz arcp contract afn float %i.vs, f0x4096CBE4 ; 2 uses
  %i.vx = fmul reassoc nsz arcp contract afn float %i.ei, 1.900000e-01 ; 4 uses
  %i.vy = load float, ptr %i.ru, align 4, !tbaa !16 ; 3 uses
  %i.vz = load float, ptr %i.rf, align 8, !tbaa !16 ; 3 uses
  %i.wa = load i32, ptr %i.er, align 4, !tbaa !385
  switch i32 %i.wa, label %bb.an [
    i32 1, label %bb.am
    i32 2, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %i.wb = load float, ptr %i.em, align 4, !tbaa !43
  %i.wc = fmul reassoc nsz arcp contract afn float %i.vy, %i.eo
  %i.wd = fadd reassoc nsz arcp contract afn float %i.wb, %i.wc
  %i.we = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.wd)
  %i.wf = fmul reassoc nsz arcp contract afn float %i.vx, %i.we
  %i.wg = fadd reassoc nsz arcp contract afn float %i.wf, 1.000000e+00
  %i.wh = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.wg)
  %i.wi = fmul reassoc nsz arcp contract afn float %i.wh, f0x3EAAE8E8
  %i.wj = load float, ptr %i.rg, align 4, !tbaa !41
  %i.wk = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.vz, float %i.wj)
  %i.wl = fmul reassoc nsz arcp contract afn float %i.wk, 1.900000e+01
  %i.wm = fadd reassoc nsz arcp contract afn float %i.wl, 1.000000e+00
  %i.wn = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.wm)
  %i.wo = fmul reassoc nsz arcp contract afn float %i.wn, f0x3EAAE8E8
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.wp = load float, ptr %i.em, align 4, !tbaa !43
  %i.wq = fmul reassoc nsz arcp contract afn float %i.vy, %i.eo
  %i.wr = fadd reassoc nsz arcp contract afn float %i.wp, %i.wq
  %i.ws = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.wr)
  %i.wt = fmul reassoc nsz arcp contract afn float %i.ws, %i.ej
  %i.wu = load float, ptr %i.rg, align 4, !tbaa !41
  %i.wv = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.vz, float %i.wu)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %.01079.peel = phi nsz float [ %i.wv, %bb.am ], [ %i.wo, %bb.al ], [ %i.vz, %bb.ak ] ; 2 uses
  %.01078.peel = phi nsz float [ %i.wt, %bb.am ], [ %i.wi, %bb.al ], [ %i.vy, %bb.ak ] ; 2 uses
  %.pre1386 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !320
end_hunk_0
