inline.NumInlined: 178
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@process:bb.a
  %i.jt = shufflevector <4 x float> %i.iw, <4 x float> %i.js, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ju = fmul reassoc nsz arcp contract afn <4 x float> %i.jr, %i.jt
  %i.jv = shufflevector <2 x float> %i.jp, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.jw = fmul reassoc nsz arcp contract afn <4 x float> %i.jv, %i.je
  %i.jx = fadd reassoc nsz arcp contract afn <4 x float> %i.jw, %i.ju
  %i.jy = shufflevector <2 x float> %i.jp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.jz = shufflevector <4 x float> %i.jy, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ka = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.io, i64 2
  %i.kb = shufflevector <4 x float> %i.iy, <4 x float> %i.ka, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.kc = fmul reassoc nsz arcp contract afn <4 x float> %i.jz, %i.kb
  %i.kd = fadd reassoc nsz arcp contract afn <4 x float> %i.jx, %i.kc
  %i.ke = load <2 x float>, ptr %i.is, align 32, !tbaa !11 ; 2 uses
  %i.kf = shufflevector <2 x float> %i.ke, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.kg = fmul reassoc nsz arcp contract afn <4 x float> %i.kf, %i.jt
  %i.kh = shufflevector <2 x float> %i.ke, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ki = shufflevector <4 x float> %i.kh, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.kj = fmul reassoc nsz arcp contract afn <4 x float> %i.ki, %i.je
  %i.kk = fadd reassoc nsz arcp contract afn <4 x float> %i.kj, %i.kg
  %i.kl = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.iu, i64 0
  %i.km = shufflevector <4 x float> %i.kl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kn = fmul reassoc nsz arcp contract afn <4 x float> %i.km, %i.kb
  %i.ko = fadd reassoc nsz arcp contract afn <4 x float> %i.kk, %i.kn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.kp = load float, ptr %i.dh, align 4, !tbaa !11
  %i.kq = load float, ptr %i.ek, align 4, !tbaa !11
  %i.kr = load float, ptr %i.ff, align 4, !tbaa !11
  %i.ks = icmp eq ptr %i.o, %.0.i103
  %i.kt = shl nsw i64 %i.t, 2
  %i.ku = mul i64 %i.kt, %i.w                     ; 2 uses
  %.not109 = icmp eq i64 %i.ku, 0
  br i1 %.not109, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_agx_get_base_profile.exit.thread
  %i.kv = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.kw = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.kx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ky = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.kz = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.la = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.lb = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.lc = load float, ptr %i.i, align 64
  %i.ld = load float, ptr %i.kz, align 16
  %i.le = load float, ptr %i.bu, align 32
  %i.lf = load float, ptr %i.lb, align 4
  %i.lg = load float, ptr %i.ky, align 4
  %i.lh = load float, ptr %i.kw, align 4
  %i.li = load float, ptr %i.la, align 8
  %i.lj = load float, ptr %i.kx, align 8
  %i.lk = load float, ptr %i.kv, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !107
  %.not.i45 = icmp eq i32 %i.lm, 0                ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.lp = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.lq = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 9 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.q, i64 60 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.q, i64 84 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 6 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.q, i64 88 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.q, i64 92 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.q, i64 68 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.q, i64 76 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.q, i64 44 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.q, i64 52 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.q, i64 28 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.q, i64 36 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.q, i64 116
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !108
  %.not26.i46 = icmp eq i32 %i.mh, 0
  %i.mi = getelementptr inbounds nuw i8, ptr %i.q, i64 100
  %i.mj = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.ml = getelementptr inbounds nuw i8, ptr %i.q, i64 108
  %i.mm = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.mn = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  br label %bb.q

._crit_edge:                                      ; preds = %_agx_tone_mapping.exit, %_agx_get_base_profile.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  br label %bb.cf

bb.q:                                             ; preds = %.lr.ph, %_agx_tone_mapping.exit
  %.0108 = phi i64 [ 0, %.lr.ph ], [ %i.acd, %_agx_tone_mapping.exit ] ; 3 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0108 ; 4 uses
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !11 ; 4 uses
  %i.mq = fcmp uno float %i.mp, 0.000000e+00
  br i1 %i.mq, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.mr = fcmp reassoc nsz arcp contract afn ult float %i.mp, -1.000000e+06
  br i1 %i.mr, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ms = fcmp reassoc nsz arcp contract afn ole float %i.mp, 1.000000e+06
  %i.mt = select reassoc nsz arcp contract afn i1 %i.ms, float %i.mp, float 1.000000e+06
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.mu = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.q ], [ %i.mt, %bb.s ], [ -1.000000e+06, %bb.r ] ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !11 ; 4 uses
  %i.mx = fcmp uno float %i.mw, 0.000000e+00
  br i1 %i.mx, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.my = fcmp reassoc nsz arcp contract afn ult float %i.mw, -1.000000e+06
  br i1 %i.my, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.mz = fcmp reassoc nsz arcp contract afn ole float %i.mw, 1.000000e+06
  %i.na = select reassoc nsz arcp contract afn i1 %i.mz, float %i.mw, float 1.000000e+06
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.nb = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.t ], [ %i.na, %bb.v ], [ -1.000000e+06, %bb.u ] ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !11 ; 4 uses
  %i.ne = fcmp uno float %i.nd, 0.000000e+00
  br i1 %i.ne, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.nf = fcmp reassoc nsz arcp contract afn ult float %i.nd, -1.000000e+06
  br i1 %i.nf, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ng = fcmp reassoc nsz arcp contract afn ole float %i.nd, 1.000000e+06
  %i.nh = select reassoc nsz arcp contract afn i1 %i.ng, float %i.nd, float 1.000000e+06
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.ni = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.w ], [ %i.nh, %bb.y ], [ -1.000000e+06, %bb.x ] ; 4 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mo, i64 12
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !11 ; 4 uses
  %i.nl = fcmp uno float %i.nk, 0.000000e+00
  br i1 %i.nl, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.nm = fcmp reassoc nsz arcp contract afn ult float %i.nk, -1.000000e+06
  br i1 %i.nm, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.nn = fcmp reassoc nsz arcp contract afn ole float %i.nk, 1.000000e+06
  %i.no = select reassoc nsz arcp contract afn i1 %i.nn, float %i.nk, float 1.000000e+06
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.np = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.z ], [ %i.no, %bb.ab ], [ -1.000000e+06, %bb.aa ]
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0108
  br i1 %i.ks, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.nr = fmul reassoc nsz arcp contract afn float %i.mu, %i.lc
  %i.ns = fmul reassoc nsz arcp contract afn float %i.nb, %i.ld
  %i.nt = fadd reassoc nsz arcp contract afn float %i.ns, %i.nr
  %i.nu = fmul reassoc nsz arcp contract afn float %i.ni, %i.le
  %i.nv = fadd reassoc nsz arcp contract afn float %i.nt, %i.nu
  %i.nw = fmul reassoc nsz arcp contract afn float %i.lf, %i.mu
  %i.nx = fmul reassoc nsz arcp contract afn float %i.lg, %i.nb
  %i.ny = fadd reassoc nsz arcp contract afn float %i.nx, %i.nw
  %i.nz = fmul reassoc nsz arcp contract afn float %i.lh, %i.ni
  %i.oa = fadd reassoc nsz arcp contract afn float %i.ny, %i.nz
  %i.ob = fmul reassoc nsz arcp contract afn float %i.li, %i.mu
  %i.oc = fmul reassoc nsz arcp contract afn float %i.lj, %i.nb
  %i.od = fadd reassoc nsz arcp contract afn float %i.oc, %i.ob
  %i.oe = fmul reassoc nsz arcp contract afn float %i.lk, %i.ni
  %i.of = fadd reassoc nsz arcp contract afn float %i.od, %i.oe
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.sroa.071.0 = phi nsz float [ %i.nv, %bb.ad ], [ %i.mu, %bb.ac ] ; 5 uses
  %.sroa.1176.0 = phi nsz float [ %i.oa, %bb.ad ], [ %i.nb, %bb.ac ] ; 5 uses
  %.sroa.18.0 = phi nsz float [ %i.of, %bb.ad ], [ %i.ni, %bb.ac ] ; 5 uses
  %i.og = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.071.0, float %.sroa.1176.0)
  %i.oh = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.og, float %.sroa.18.0) ; 3 uses
  %i.oi = fsub reassoc nsz arcp contract afn float %i.oh, %.sroa.071.0 ; 2 uses
  %i.oj = fsub reassoc nsz arcp contract afn float %i.oh, %.sroa.1176.0 ; 2 uses
  %i.ok = fsub reassoc nsz arcp contract afn float %i.oh, %.sroa.18.0 ; 2 uses
  %i.ol = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.071.0, float %.sroa.1176.0)
  %i.om = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ol, float %.sroa.18.0)
  %i.on = fneg reassoc nsz arcp contract afn float %i.om
  %i.oo = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.on, float 0.000000e+00) ; 3 uses
  %i.op = fadd reassoc nsz arcp contract afn float %i.oo, %.sroa.071.0 ; 4 uses
  %i.oq = fadd reassoc nsz arcp contract afn float %i.oo, %.sroa.1176.0 ; 4 uses
  %i.or = fadd reassoc nsz arcp contract afn float %i.oo, %.sroa.18.0 ; 4 uses
  %i.os = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.op, float %i.oq)
  %i.ot = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.os, float %i.or) ; 3 uses
  %i.ou = fsub reassoc nsz arcp contract afn float %i.ot, %i.op ; 2 uses
  %i.ov = fsub reassoc nsz arcp contract afn float %i.ot, %i.oq ; 2 uses
  %i.ow = fsub reassoc nsz arcp contract afn float %i.ot, %i.or ; 2 uses
  %7 = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.oi, float %i.oj)
  %8 = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %7, float %i.ok)
  %reass.add.i = fsub reassoc nsz arcp contract afn float %.sroa.18.0, %i.ok
  %reass.mul.i = fmul reassoc nsz arcp contract afn float %reass.add.i, f0x3E0AF81D
  %reass.add57.i = fsub reassoc nsz arcp contract afn float %.sroa.1176.0, %i.oj
  %reass.mul58.i = fmul reassoc nsz arcp contract afn float %reass.add57.i, f0x3F193552
  %reass.add60.i = fsub reassoc nsz arcp contract afn float %.sroa.071.0, %i.oi
  %reass.mul61.i = fmul reassoc nsz arcp contract afn float %reass.add60.i, f0x3E88194D
  %i.ox = fadd reassoc nsz arcp contract afn float %8, %reass.mul61.i
  %i.oy = fadd reassoc nsz arcp contract afn float %i.ox, %reass.mul58.i
  %i.oz = fadd reassoc nsz arcp contract afn float %i.oy, %reass.mul.i ; 2 uses
  %i.pa = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ou, float %i.ov)
  %i.pb = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pa, float %i.ow)
  %reass.add67.i = fsub reassoc nsz arcp contract afn float %i.or, %i.ow
  %reass.mul68.i = fmul reassoc nsz arcp contract afn float %reass.add67.i, f0x3E0AF81D
  %reass.add70.i = fsub reassoc nsz arcp contract afn float %i.oq, %i.ov
  %reass.mul71.i = fmul reassoc nsz arcp contract afn float %reass.add70.i, f0x3F193552
  %reass.add73.i = fsub reassoc nsz arcp contract afn float %i.op, %i.ou
  %reass.mul74.i = fmul reassoc nsz arcp contract afn float %reass.add73.i, f0x3E88194D
  %i.pc = fadd reassoc nsz arcp contract afn float %i.pb, %reass.mul74.i
  %i.pd = fadd reassoc nsz arcp contract afn float %i.pc, %reass.mul71.i
  %i.pe = fadd reassoc nsz arcp contract afn float %i.pd, %reass.mul68.i ; 3 uses
  %i.pf = fcmp reassoc nsz arcp contract afn ogt float %i.pe, %i.oz
  %i.pg = fcmp reassoc nsz arcp contract afn ogt float %i.pe, f0x358637BD
  %or.cond.i44 = and i1 %i.pf, %i.pg
  %i.ph = fdiv reassoc nsz arcp contract afn float %i.oz, %i.pe
  %i.pi = select reassoc nsz arcp contract afn i1 %or.cond.i44, float %i.ph, float 1.000000e+00 ; 3 uses
  %i.pj = fmul reassoc nsz arcp contract afn float %i.pi, %i.op ; 3 uses
  %i.pk = fmul reassoc nsz arcp contract afn float %i.pi, %i.oq ; 3 uses
  %i.pl = fmul reassoc nsz arcp contract afn float %i.pi, %i.or ; 3 uses
  %i.pm = fmul reassoc nsz arcp contract afn float %i.pj, %i.dq
  %i.pn = fmul reassoc nsz arcp contract afn float %i.pk, %i.er
  %i.po = fadd reassoc nsz arcp contract afn float %i.pn, %i.pm
  %i.pp = fmul reassoc nsz arcp contract afn float %i.pl, %i.fm
  %i.pq = fadd reassoc nsz arcp contract afn float %i.po, %i.pp ; 6 uses
  %i.pr = fmul reassoc nsz arcp contract afn float %i.pj, %i.dy
  %i.ps = fmul reassoc nsz arcp contract afn float %i.pk, %i.ew
  %i.pt = fadd reassoc nsz arcp contract afn float %i.ps, %i.pr
  %i.pu = fmul reassoc nsz arcp contract afn float %i.pl, %i.fr
  %i.pv = fadd reassoc nsz arcp contract afn float %i.pt, %i.pu ; 6 uses
  %i.pw = fmul reassoc nsz arcp contract afn float %i.pj, %i.eg
  %i.px = fmul reassoc nsz arcp contract afn float %i.pk, %i.fb
  %i.py = fadd reassoc nsz arcp contract afn float %i.px, %i.pw
  %i.pz = fmul reassoc nsz arcp contract afn float %i.pl, %i.fw
  %i.qa = fadd reassoc nsz arcp contract afn float %i.py, %i.pz ; 5 uses
  br i1 %.not.i45, label %dt_RGB_2_HSV.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.qb = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.pq, float %i.pv)
  %i.qc = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.qb, float %i.qa)
  %i.qd = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pq, float %i.pv)
  %i.qe = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qd, float %i.qa) ; 4 uses
  %i.qf = fsub reassoc nsz arcp contract afn float %i.qe, %i.qc ; 4 uses
  %i.qg = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.qe)
  %i.qh = fcmp reassoc nsz arcp contract afn ogt float %i.qg, f0x358637BD
  %i.qi = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.qf)
  %i.qj = fcmp reassoc nsz arcp contract afn ogt float %i.qi, f0x358637BD
  %or.cond.i.i = select i1 %i.qh, i1 %i.qj, i1 false
  br i1 %or.cond.i.i, label %bb.ag, label %dt_RGB_2_HSV.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.qk = fcmp reassoc nsz arcp contract afn oeq float %i.pq, %i.qe
  br i1 %i.qk, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ql = fsub reassoc nsz arcp contract afn float %i.pv, %i.qa
  %i.qm = fdiv reassoc nsz arcp contract afn float %i.ql, %i.qf
  br label %_dt_RGB_2_Hue.exit.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.qn = fcmp reassoc nsz arcp contract afn oeq float %i.pv, %i.qe
  br i1 %i.qn, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.qo = fsub reassoc nsz arcp contract afn float %i.qa, %i.pq
  %i.qp = fdiv reassoc nsz arcp contract afn float %i.qo, %i.qf
  %i.qq = fadd reassoc nsz arcp contract afn float %i.qp, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.qr = fsub reassoc nsz arcp contract afn float %i.pq, %i.pv
  %i.qs = fdiv reassoc nsz arcp contract afn float %i.qr, %i.qf
  %i.qt = fadd reassoc nsz arcp contract afn float %i.qs, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i

_dt_RGB_2_Hue.exit.i.i:                           ; preds = %bb.ak, %bb.aj, %bb.ah
  %.0.i.i.i = phi nsz float [ %i.qm, %bb.ah ], [ %i.qq, %bb.aj ], [ %i.qt, %bb.ak ]
  %i.qu = fmul reassoc nsz arcp contract afn float %.0.i.i.i, f0x3E2AAAAB ; 2 uses
  %i.qv = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.qu)
  %i.qw = fsub reassoc nsz arcp contract afn float %i.qu, %i.qv
  br label %dt_RGB_2_HSV.exit.i

dt_RGB_2_HSV.exit.i:                              ; preds = %_dt_RGB_2_Hue.exit.i.i, %bb.af, %bb.ae
  %.sroa.0.0.i = phi nsz float [ 0.000000e+00, %bb.ae ], [ %i.qw, %_dt_RGB_2_Hue.exit.i.i ], [ 0.000000e+00, %bb.af ] ; 2 uses
  %i.qx = load float, ptr %i.ln, align 4, !tbaa !109 ; 3 uses
  %i.qy = load float, ptr %i.q, align 4, !tbaa !110 ; 3 uses
  %i.qz = load float, ptr %i.lo, align 4, !tbaa !111 ; 6 uses
  %i.ra = load float, ptr %i.lp, align 4, !tbaa !112 ; 12 uses
  %i.rb = fmul reassoc nsz arcp contract afn float %i.pq, f0x40B1C71C
  %i.rc = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.rb, float f0x358637BD)
  %i.rd = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.rc)
  %i.re = fsub reassoc nsz arcp contract afn float %i.rd, %i.qy
  %i.rf = fdiv reassoc nsz arcp contract afn float %i.re, %i.qx ; 3 uses
  %i.rg = fcmp reassoc nsz arcp contract afn oge float %i.rf, 0.000000e+00
  %i.rh = fcmp reassoc nsz arcp contract afn ole float %i.rf, 1.000000e+00
  %i.ri = select reassoc nsz arcp contract afn i1 %i.rh, float %i.rf, float 1.000000e+00
  %i.rj = select reassoc nsz arcp contract afn i1 %i.rg, float %i.ri, float 0.000000e+00 ; 9 uses
  %i.rk = fcmp reassoc nsz arcp contract afn olt float %i.rj, %i.qz
  br i1 %i.rk, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %dt_RGB_2_HSV.exit.i
  %i.rl = load i32, ptr %i.ma, align 4, !tbaa !113
  %.not37.i.i = icmp eq i32 %i.rl, 0
  br i1 %.not37.i.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.rm = fcmp reassoc nsz arcp contract afn olt float %i.rj, 0.000000e+00
  br i1 %i.rm, label %_fallback_toe.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.rn = load float, ptr %i.mb, align 4, !tbaa !114
  %i.ro = load float, ptr %i.mc, align 4, !tbaa !115
  %i.rp = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.rj, float %i.ro)
  %i.rq = fmul reassoc nsz arcp contract afn float %i.rp, %i.rn
  %i.rr = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.rq, float 0.000000e+00)
  %i.rs = fadd reassoc nsz arcp contract afn float %i.rr, %i.ra
  br label %_fallback_toe.exit.i.i

bb.ao:                                            ; preds = %bb.al
  %i.rt = load float, ptr %i.md, align 4, !tbaa !116 ; 2 uses
  %i.ru = load float, ptr %i.lr, align 4, !tbaa !117
  %i.rv = load float, ptr %i.me, align 4, !tbaa !118 ; 2 uses
  %i.rw = load float, ptr %i.mf, align 4, !tbaa !119
  %i.rx = fsub reassoc nsz arcp contract afn float %i.rj, %i.qz
  %i.ry = fmul reassoc nsz arcp contract afn float %i.ru, %i.rx
  %i.rz = fdiv reassoc nsz arcp contract afn float %i.ry, %i.rt ; 2 uses
  %i.sa = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.rz, float %i.rv)
  %i.sb = fadd reassoc nsz arcp contract afn float %i.sa, 1.000000e+00
  %i.sc = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.rv
  %i.sd = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.sb, float %i.sc)
  %i.se = fmul reassoc nsz arcp contract afn float %i.rz, %i.rt
  %i.sf = fmul reassoc nsz arcp contract afn float %i.se, %i.sd
  %i.sg = fadd reassoc nsz arcp contract afn float %i.sf, %i.rw
  br label %_fallback_toe.exit.i.i

bb.ap:                                            ; preds = %dt_RGB_2_HSV.exit.i
  %i.sh = load float, ptr %i.lq, align 4, !tbaa !120 ; 2 uses
  %i.si = fcmp reassoc nsz arcp contract afn ugt float %i.rj, %i.sh
  br i1 %i.si, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.sj = load float, ptr %i.lr, align 4, !tbaa !117
  %i.sk = load float, ptr %i.ls, align 4, !tbaa !121
  %i.sl = fmul reassoc nsz arcp contract afn float %i.sj, %i.rj
  %i.sm = fadd reassoc nsz arcp contract afn float %i.sl, %i.sk
  br label %_fallback_toe.exit.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.sn = load i32, ptr %i.lt, align 4, !tbaa !122
  %.not.i.i = icmp eq i32 %i.sn, 0
  br i1 %.not.i.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.so = fcmp reassoc nsz arcp contract afn ult float %i.rj, 1.000000e+00
  %i.sp = load float, ptr %i.lu, align 4, !tbaa !123 ; 2 uses
  br i1 %i.so, label %bb.at, label %_fallback_toe.exit.i.i

bb.at:                                            ; preds = %bb.as
  %i.sq = load float, ptr %i.lv, align 4, !tbaa !124
  %i.sr = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.rj
  %i.ss = load float, ptr %i.lw, align 4, !tbaa !125
  %i.st = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.sr, float %i.ss)
  %i.su = fmul reassoc nsz arcp contract afn float %i.st, %i.sq
  %i.sv = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.su, float 0.000000e+00)
  %i.sw = fsub reassoc nsz arcp contract afn float %i.sp, %i.sv
  br label %_fallback_toe.exit.i.i

bb.au:                                            ; preds = %bb.ar
  %i.sx = load float, ptr %i.lx, align 4, !tbaa !126 ; 2 uses
  %i.sy = load float, ptr %i.lr, align 4, !tbaa !117
  %i.sz = load float, ptr %i.ly, align 4, !tbaa !127 ; 2 uses
  %i.ta = load float, ptr %i.lz, align 4, !tbaa !128
  %i.tb = fsub reassoc nsz arcp contract afn float %i.rj, %i.sh
  %i.tc = fmul reassoc nsz arcp contract afn float %i.sy, %i.tb
  %i.td = fdiv reassoc nsz arcp contract afn float %i.tc, %i.sx ; 2 uses
  %i.te = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.td, float %i.sz)
  %i.tf = fadd reassoc nsz arcp contract afn float %i.te, 1.000000e+00
  %i.tg = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.sz
  %i.th = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.tf, float %i.tg)
  %i.ti = fmul reassoc nsz arcp contract afn float %i.td, %i.sx
  %i.tj = fmul reassoc nsz arcp contract afn float %i.ti, %i.th
  %i.tk = fadd reassoc nsz arcp contract afn float %i.tj, %i.ta
  br label %_fallback_toe.exit.i.i

_fallback_toe.exit.i.i:                           ; preds = %bb.au, %bb.at, %bb.as, %bb.aq, %bb.ao, %bb.an, %bb.am
  %.0.i28.i = phi nsz float [ %i.sg, %bb.ao ], [ %i.sm, %bb.aq ], [ %i.tk, %bb.au ], [ %i.ra, %bb.am ], [ %i.rs, %bb.an ], [ %i.sw, %bb.at ], [ %i.sp, %bb.as ] ; 3 uses
  %i.tl = fcmp reassoc nsz arcp contract afn ult float %.0.i28.i, %i.ra
  br i1 %i.tl, label %_apply_curve.exit.i, label %bb.av

bb.av:                                            ; preds = %_fallback_toe.exit.i.i
  %i.tm = load float, ptr %i.lu, align 4, !tbaa !123 ; 2 uses
  %.inv.i.i = fcmp reassoc nsz arcp contract afn ole float %.0.i28.i, %i.tm
  %..0.i.i = select reassoc nsz arcp contract afn i1 %.inv.i.i, float %.0.i28.i, float %i.tm
  br label %_apply_curve.exit.i

_apply_curve.exit.i:                              ; preds = %bb.av, %_fallback_toe.exit.i.i
  %i.tn = phi reassoc nsz arcp contract afn float [ %..0.i.i, %bb.av ], [ %i.ra, %_fallback_toe.exit.i.i ] ; 2 uses
  %i.to = fmul reassoc nsz arcp contract afn float %i.pv, f0x40B1C71C
  %i.tp = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.to, float f0x358637BD)
  %i.tq = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.tp)
  %i.tr = fsub reassoc nsz arcp contract afn float %i.tq, %i.qy
  %i.ts = fdiv reassoc nsz arcp contract afn float %i.tr, %i.qx ; 3 uses
  %i.tt = fcmp reassoc nsz arcp contract afn oge float %i.ts, 0.000000e+00
  %i.tu = fcmp reassoc nsz arcp contract afn ole float %i.ts, 1.000000e+00
  %i.tv = select reassoc nsz arcp contract afn i1 %i.tu, float %i.ts, float 1.000000e+00
  %i.tw = select reassoc nsz arcp contract afn i1 %i.tt, float %i.tv, float 0.000000e+00 ; 9 uses
  %i.tx = fcmp reassoc nsz arcp contract afn olt float %i.tw, %i.qz
  br i1 %i.tx, label %bb.bc, label %bb.aw

bb.aw:                                            ; preds = %_apply_curve.exit.i
  %i.ty = load float, ptr %i.lq, align 4, !tbaa !120 ; 2 uses
  %i.tz = fcmp reassoc nsz arcp contract afn ugt float %i.tw, %i.ty
end_hunk_0
begin_hunk_1_@gtk_widget_set_tooltip_text
declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_tooltip(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_soft_range(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_label_set_xalign(ptr noundef, float noundef) local_unnamed_addr #3

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gui_add_class(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_gui_new_collapsible_section(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_ui_resize_wrap(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @g_object_set_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_can_focus(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_agx_draw_curve(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct.tone_mapping_params_t, align 4 ; 45 uses
  %i.a = alloca [32 x i8], align 16               ; 8 uses
  %i.b = alloca [2 x double], align 16            ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !135 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call fastcc void @_calculate_tone_mapping_params(ptr dead_on_unwind noalias writable align 4 %3, ptr noundef %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 312
  tail call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %i.g) #22
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !137 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1432
  %i.j = load double, ptr %i.i, align 8, !tbaa !218
  %i.k = fmul reassoc nsz arcp contract afn double %i.j, 5.000000e+00
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 324 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !224
  %i.n = sitofp reassoc nsz arcp contract afn i32 %i.m to double
  %i.o = fsub reassoc nsz arcp contract afn double %i.n, %i.k
  %i.p = fptosi double %i.o to i32                ; 2 uses
  store i32 %i.p, ptr %i.l, align 4, !tbaa !224
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !225
  %i.s = sitofp reassoc nsz arcp contract afn i32 %i.r to double
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 1440
  %i.u = load double, ptr %i.t, align 8, !tbaa !226 ; 2 uses
  %i.v = fmul reassoc nsz arcp contract afn double %i.u, %i.s
  %i.w = fptosi double %i.v to i32
  %i.x = sitofp reassoc nsz arcp contract afn i32 %i.p to double
  %i.y = fmul reassoc nsz arcp contract afn double %i.u, %i.x
  %i.z = fptosi double %i.y to i32
  %i.aa = tail call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.w, i32 noundef %i.z) #22 ; 4 uses
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !137
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1440
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !226 ; 2 uses
  tail call void @cairo_surface_set_device_scale(ptr noundef %i.aa, double noundef %i.ad, double noundef %i.ad) #22
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 336
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !228
  %i.ah = tail call ptr @pango_font_description_copy_static(ptr noundef %i.ag) #22 ; 5 uses
  %i.ai = tail call ptr @cairo_create(ptr noundef %i.aa) #22 ; 78 uses
  %i.aj = tail call ptr @pango_cairo_create_layout(ptr noundef %i.ai) #22 ; 12 uses
  tail call void @pango_layout_set_font_description(ptr noundef %i.aj, ptr noundef %i.ah) #22
  %i.ak = tail call ptr @pango_layout_get_context(ptr noundef %i.aj) #22
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !137
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1424
  %i.an = load double, ptr %i.am, align 8, !tbaa !235
  tail call void @pango_cairo_context_set_resolution(ptr noundef %i.ak, double noundef %i.an) #22
  %i.ao = tail call ptr @gtk_widget_get_style_context(ptr noundef %0) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 344 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.aq = tail call i32 @pango_font_description_get_size(ptr noundef %i.ah) #25
  %i.ar = sitofp reassoc nsz arcp contract afn i32 %i.aq to double
  %i.as = fmul reassoc nnan nsz arcp contract afn double %i.ar, f0x3FEE666666666666
  %i.at = fptosi double %i.as to i32
  tail call void @pango_font_description_set_size(ptr noundef %i.ah, i32 noundef %i.at) #22
  tail call void @pango_layout_set_font_description(ptr noundef %i.aj, ptr noundef %i.ah) #22
  %i.au = call i64 @g_strlcpy(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.100, i64 noundef 32) #22 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.aj, ptr noundef nonnull %i.a, i32 noundef -1) #22
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 328 ; 4 uses
  call void @pango_layout_get_pixel_extents(ptr noundef %i.aj, ptr noundef nonnull %i.av, ptr noundef null) #22
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 340
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !237
  %i.ay = sitofp reassoc nsz arcp contract afn i32 %i.ax to float ; 3 uses
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !137
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1432
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !218
  %i.bc = fmul reassoc nsz arcp contract afn double %i.bb, 4.000000e+00
  %i.bd = fptosi double %i.bc to i32
  %i.be = fmul reassoc nnan nsz arcp contract afn float %i.ay, 3.000000e+00
  %i.bf = sitofp reassoc nsz arcp contract afn i32 %i.bd to float ; 5 uses
  %i.bg = fmul reassoc nnan nsz arcp contract afn float %i.bf, 2.000000e+00 ; 2 uses
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, %i.be ; 5 uses
  %i.bi = fmul reassoc nnan nsz arcp contract afn float %i.ay, 5.000000e-01
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bi, %i.bf ; 2 uses
  %i.bk = load i32, ptr %i.q, align 8, !tbaa !225 ; 2 uses
  %i.bl = sitofp reassoc nsz arcp contract afn i32 %i.bk to float
  %i.bm = fsub reassoc nsz arcp contract afn float %i.bl, %i.bf ; 2 uses
  %i.bn = fsub reassoc nsz arcp contract afn float %i.bm, %i.bh ; 9 uses
  %i.bo = load i32, ptr %i.l, align 4, !tbaa !224 ; 2 uses
  %i.bp = sitofp reassoc nsz arcp contract afn i32 %i.bo to float
  %.neg = fmul reassoc nnan nsz arcp contract afn float %i.ay, 2.000000e+00
  %i.bq = fadd reassoc nsz arcp contract afn float %.neg, %i.bg
  %i.br = fsub reassoc nsz arcp contract afn float %i.bp, %i.bq ; 5 uses
  %i.bs = fsub reassoc nsz arcp contract afn float %i.br, %i.bj ; 11 uses
  %i.bt = load ptr, ptr %i.ap, align 8, !tbaa !236
  %i.bu = sitofp reassoc nsz arcp contract afn i32 %i.bk to double
  %i.bv = sitofp reassoc nsz arcp contract afn i32 %i.bo to double
  call void @gtk_render_background(ptr noundef %i.bt, ptr noundef %i.ai, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.bu, double noundef %i.bv) #22
  %i.bw = fpext reassoc nsz arcp contract afn float %i.bh to double
  %i.bx = fpext reassoc nsz arcp contract afn float %i.br to double
  call void @cairo_translate(ptr noundef %i.ai, double noundef %i.bw, double noundef %i.bx) #22
  call void @cairo_scale(ptr noundef %i.ai, double noundef 1.000000e+00, double noundef -1.000000e+00) #22
  %i.by = fpext reassoc nsz arcp contract afn float %i.bn to double ; 4 uses
  %i.bz = fpext reassoc nsz arcp contract afn float %i.bs to double ; 4 uses
  call void @cairo_rectangle(ptr noundef %i.ai, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.by, double noundef %i.bz) #22
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 584
  %.sroa.0.0.copyload = load double, ptr %i.cb, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 592
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 600
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 608
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %.sroa.0.0.copyload, double noundef %.sroa.4.0.copyload, double noundef %.sroa.5.0.copyload, double noundef %.sroa.6.0.copyload) #22
  call void @cairo_fill_preserve(ptr noundef %i.ai) #22
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 648
  %.sroa.0325.0.copyload = load double, ptr %i.cd, align 8
  %.sroa.4326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 656
  %.sroa.4326.0.copyload = load double, ptr %.sroa.4326.0..sroa_idx, align 8
  %.sroa.5327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 664
  %.sroa.5327.0.copyload = load double, ptr %.sroa.5327.0..sroa_idx, align 8
  %.sroa.6328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 672
  %.sroa.6328.0.copyload = load double, ptr %.sroa.6328.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %.sroa.0325.0.copyload, double noundef %.sroa.4326.0.copyload, double noundef %.sroa.5327.0.copyload, double noundef %.sroa.6328.0.copyload) #22
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !137
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1432
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !218
  %i.ch = fmul reassoc nsz arcp contract afn double %i.cg, 5.000000e-01
  call void @cairo_set_line_width(ptr noundef %i.ai, double noundef %i.ch) #22
  call void @cairo_stroke(ptr noundef %i.ai) #22
  call void @cairo_save(ptr noundef %i.ai) #22
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 648
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !238
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 656
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !239
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 664
  %i.co = load double, ptr %i.cn, align 8, !tbaa !240
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %i.ck, double noundef %i.cm, double noundef %i.co, double noundef 5.000000e-01) #22
  call void @cairo_move_to(ptr noundef %i.ai, double noundef 0.000000e+00, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.by, double noundef %i.bz) #22
  call void @cairo_stroke(ptr noundef %i.ai) #22
  call void @cairo_restore(ptr noundef %i.ai) #22
  call void @cairo_save(ptr noundef %i.ai) #22
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 680
  %.sroa.0329.0.copyload = load double, ptr %i.cq, align 8
  %.sroa.4330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 688
  %.sroa.4330.0.copyload = load double, ptr %.sroa.4330.0..sroa_idx, align 8
  %.sroa.5331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 696
  %.sroa.5331.0.copyload = load double, ptr %.sroa.5331.0..sroa_idx, align 8
  %.sroa.6332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 704
  %.sroa.6332.0.copyload = load double, ptr %.sroa.6332.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %.sroa.0329.0.copyload, double noundef %.sroa.4330.0.copyload, double noundef %.sroa.5331.0.copyload, double noundef %.sroa.6332.0.copyload) #22
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 680
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !241
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 688
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !242
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 696
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !243
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %i.ct, double noundef %i.cv, double noundef %i.cx, double noundef 4.000000e-01) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !137
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1440
  %i.da = load double, ptr %i.cz, align 8, !tbaa !226
  %i.db = fdiv reassoc nsz arcp contract afn double 4.000000e+00, %i.da ; 2 uses
  store double %i.db, ptr %i.b, align 16, !tbaa !244
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %i.db, ptr %i.dc, align 8, !tbaa !244
  call void @cairo_set_dash(ptr noundef %i.ai, ptr noundef nonnull %i.b, i32 noundef 2, double noundef 0.000000e+00) #22
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !137
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1432
  %i.df = load double, ptr %i.de, align 8, !tbaa !218
  %i.dg = fmul reassoc nsz arcp contract afn double %i.df, 5.000000e-01
  call void @cairo_set_line_width(ptr noundef %i.ai, double noundef %i.dg) #22
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 336 ; 2 uses
  %.neg369 = fmul reassoc nnan nsz arcp contract afn float %i.bf, -5.000000e-01
  %.neg371 = fadd reassoc nsz arcp contract afn float %i.bh, %.neg369
  %i.dj = getelementptr inbounds nuw i8, ptr %i.f, i64 332
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  call void @cairo_restore(ptr noundef %i.ai) #22
  call void @cairo_save(ptr noundef %i.ai) #22
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 680
  %.sroa.0333.0.copyload = load double, ptr %i.dl, align 8
  %.sroa.4334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 688
  %.sroa.4334.0.copyload = load double, ptr %.sroa.4334.0..sroa_idx, align 8
  %.sroa.5335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 696
  %.sroa.5335.0.copyload = load double, ptr %.sroa.5335.0..sroa_idx, align 8
  %.sroa.6336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 704
  %.sroa.6336.0.copyload = load double, ptr %.sroa.6336.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %.sroa.0333.0.copyload, double noundef %.sroa.4334.0.copyload, double noundef %.sroa.5335.0.copyload, double noundef %.sroa.6336.0.copyload) #22
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 680
  %i.do = load double, ptr %i.dn, align 8, !tbaa !241
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 688
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !242
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 696
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !243
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %i.do, double noundef %i.dq, double noundef %i.ds, double noundef 4.000000e-01) #22
  call void @cairo_set_dash(ptr noundef %i.ai, ptr noundef nonnull %i.b, i32 noundef 2, double noundef 0.000000e+00) #22
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !137
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1432
  %i.dv = load double, ptr %i.du, align 8, !tbaa !218
  %i.dw = fmul reassoc nsz arcp contract afn double %i.dv, 5.000000e-01
  call void @cairo_set_line_width(ptr noundef %i.ai, double noundef %i.dw) #22
  %i.dx = load float, ptr %3, align 4, !tbaa !110 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !109 ; 2 uses
  %i.ea = fcmp reassoc nsz arcp contract afn ogt float %i.dz, f0x358637BD
  br i1 %i.ea, label %bb.d, label %.loopexit

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr @__const._agx_draw_curve.linear_y_guides, i64 %indvars.iv
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !11 ; 2 uses
  %i.ed = load float, ptr %i.dh, align 4, !tbaa !133
  %i.ee = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ed
  %i.ef = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ec, float %i.ee)
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ef, %i.bs ; 2 uses
  %i.eh = fpext reassoc nsz arcp contract afn float %i.eg to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.ai, double noundef 0.000000e+00, double noundef %i.eh) #22
  call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.by, double noundef %i.eh) #22
  call void @cairo_stroke(ptr noundef %i.ai) #22
  call void @cairo_save(ptr noundef %i.ai) #22
  call void @cairo_identity_matrix(ptr noundef %i.ai) #22
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 680
  %.sroa.0337.0.copyload = load double, ptr %i.ej, align 8
  %.sroa.4338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 688
  %.sroa.4338.0.copyload = load double, ptr %.sroa.4338.0..sroa_idx, align 8
  %.sroa.5339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 696
  %.sroa.5339.0.copyload = load double, ptr %.sroa.5339.0..sroa_idx, align 8
  %.sroa.6340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 704
  %.sroa.6340.0.copyload = load double, ptr %.sroa.6340.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %.sroa.0337.0.copyload, double noundef %.sroa.4338.0.copyload, double noundef %.sroa.5339.0.copyload, double noundef %.sroa.6340.0.copyload) #22
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ec, 1.000000e+02
  %i.el = fpext reassoc nsz arcp contract afn float %i.ek to double
  %i.em = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.101, double noundef %i.el) #22 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.aj, ptr noundef nonnull %i.a, i32 noundef -1) #22
  call void @pango_layout_get_pixel_extents(ptr noundef %i.aj, ptr noundef nonnull %i.av, ptr noundef null) #22
  %i.en = load <2 x i32>, ptr %i.di, align 8, !tbaa !20
  %i.eo = sitofp <2 x i32> %i.en to <2 x float>   ; 2 uses
  %i.ep = extractelement <2 x float> %i.eo, i64 0
  %i.eq = fsub reassoc nsz arcp contract afn float %.neg371, %i.ep
  %i.er = extractelement <2 x float> %i.eo, i64 1
  %i.es = fmul reassoc nnan nsz arcp contract afn float %i.er, 5.000000e-01 ; 2 uses
  %i.et = load i32, ptr %i.dj, align 4, !tbaa !245
  %i.eu = sitofp reassoc nsz arcp contract afn i32 %i.et to float ; 2 uses
  %i.ev = fadd reassoc nsz arcp contract afn float %i.eg, %i.es
  %i.ew = fadd reassoc nsz arcp contract afn float %i.ev, %i.eu
  %i.ex = fsub reassoc nsz arcp contract afn float %i.br, %i.ew ; 3 uses
  %i.ey = fadd reassoc nsz arcp contract afn float %i.es, %i.eu ; 2 uses
  %i.ez = fsub reassoc nsz arcp contract afn float %i.bj, %i.ey ; 2 uses
  %i.fa = fcmp reassoc nsz arcp contract afn ult float %i.ex, %i.ez
  %i.fb = fsub reassoc nsz arcp contract afn float %i.br, %i.ey ; 2 uses
  %.inv365 = fcmp reassoc nsz arcp contract afn ole float %i.ex, %i.fb
  %. = select reassoc nsz arcp contract afn i1 %.inv365, float %i.ex, float %i.fb
  %i.fc = select reassoc nsz arcp contract afn i1 %i.fa, float %i.ez, float %.
  %i.fd = fpext reassoc nsz arcp contract afn float %i.eq to double
  %i.fe = fpext reassoc nsz arcp contract afn float %i.fc to double
  call void @cairo_move_to(ptr noundef %i.ai, double noundef %i.fd, double noundef %i.fe) #22
  call void @pango_cairo_show_layout(ptr noundef %i.ai, ptr noundef %i.aj) #22
  call void @cairo_restore(ptr noundef %i.ai) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.b, label %bb.c

bb.d:                                             ; preds = %bb.b
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !246
  %i.fh = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.dx) ; 2 uses
  %i.fi = fptosi float %i.fh to i32               ; 2 uses
  %i.fj = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.fg) ; 3 uses
  %i.fk = sitofp reassoc nsz arcp contract afn i32 %i.fi to float ; 2 uses
  %i.fl = fcmp reassoc nsz arcp contract afn ult float %i.fj, %i.fk
  br i1 %i.fl, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.fm = fmul reassoc nnan nsz arcp contract afn float %i.bf, 5.000000e-01
  %i.fn = fadd reassoc nsz arcp contract afn float %i.br, %i.fm
  %i.fo = fpext reassoc nsz arcp contract afn float %i.fn to double
  %i.fp = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.dz
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %i.fq = phi float [ %i.fk, %.lr.ph ], [ %i.gu, %bb.g ] ; 3 uses
  %.0273378 = phi i32 [ %i.fi, %.lr.ph ], [ %i.gt, %bb.g ] ; 3 uses
  %i.fr = fsub reassoc nsz arcp contract afn float %i.fq, %i.dx
  %i.fs = fmul reassoc nsz arcp contract afn float %i.fr, %i.fp ; 3 uses
  %i.ft = fcmp reassoc nsz arcp contract afn oge float %i.fs, 0.000000e+00
  %i.fu = fcmp reassoc nsz arcp contract afn ole float %i.fs, 1.000000e+00
  %i.fv = select reassoc nsz arcp contract afn i1 %i.fu, float %i.fs, float 1.000000e+00
  %i.fw = select reassoc nsz arcp contract afn i1 %i.ft, float %i.fv, float 0.000000e+00
  %i.fx = fmul reassoc nsz arcp contract afn float %i.fw, %i.bn ; 2 uses
  %i.fy = fpext reassoc nsz arcp contract afn float %i.fx to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.ai, double noundef %i.fy, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.fy, double noundef %i.bz) #22
  call void @cairo_stroke(ptr noundef %i.ai) #22
  %i.fz = srem i32 %.0273378, 5
  %i.ga = icmp eq i32 %i.fz, 0
  %i.gb = fcmp reassoc nsz arcp contract afn oeq float %i.fh, %i.fq
  %or.cond = or i1 %i.ga, %i.gb
  %i.gc = fcmp reassoc nsz arcp contract afn oeq float %i.fj, %i.fq
  %or.cond288 = or i1 %i.gc, %or.cond
  br i1 %or.cond288, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @cairo_save(ptr noundef %i.ai) #22
  call void @cairo_identity_matrix(ptr noundef %i.ai) #22
  %i.gd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 680
  %.sroa.0341.0.copyload = load double, ptr %i.ge, align 8
  %.sroa.4342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 688
  %.sroa.4342.0.copyload = load double, ptr %.sroa.4342.0..sroa_idx, align 8
  %.sroa.5343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 696
  %.sroa.5343.0.copyload = load double, ptr %.sroa.5343.0..sroa_idx, align 8
  %.sroa.6344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 704
  %.sroa.6344.0.copyload = load double, ptr %.sroa.6344.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %.sroa.0341.0.copyload, double noundef %.sroa.4342.0.copyload, double noundef %.sroa.5343.0.copyload, double noundef %.sroa.6344.0.copyload) #22
  %i.gf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.102, i32 noundef %.0273378) #22 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.aj, ptr noundef nonnull %i.a, i32 noundef -1) #22
  call void @pango_layout_get_pixel_extents(ptr noundef %i.aj, ptr noundef nonnull %i.av, ptr noundef null) #22
  %i.gg = fadd reassoc nsz arcp contract afn float %i.fx, %i.bh
  %i.gh = load i32, ptr %i.di, align 8, !tbaa !247
  %i.gi = sitofp reassoc nsz arcp contract afn i32 %i.gh to float
  %i.gj = fmul reassoc nnan nsz arcp contract afn float %i.gi, 5.000000e-01
  %i.gk = load i32, ptr %i.av, align 8, !tbaa !248
  %i.gl = sitofp reassoc nsz arcp contract afn i32 %i.gk to float
  %i.gm = fadd reassoc nsz arcp contract afn float %i.gj, %i.gl ; 3 uses
  %i.gn = fsub reassoc nsz arcp contract afn float %i.gg, %i.gm ; 3 uses
  %i.go = fsub reassoc nsz arcp contract afn float %i.bh, %i.gm ; 2 uses
  %i.gp = fcmp reassoc nsz arcp contract afn ult float %i.gn, %i.go
  %i.gq = fsub reassoc nsz arcp contract afn float %i.bm, %i.gm ; 2 uses
  %.inv = fcmp reassoc nsz arcp contract afn ole float %i.gn, %i.gq
  %.289 = select reassoc nsz arcp contract afn i1 %.inv, float %i.gn, float %i.gq
  %i.gr = select reassoc nsz arcp contract afn i1 %i.gp, float %i.go, float %.289
  %i.gs = fpext reassoc nsz arcp contract afn float %i.gr to double
  call void @cairo_move_to(ptr noundef %i.ai, double noundef %i.gs, double noundef %i.fo) #22
  call void @pango_cairo_show_layout(ptr noundef %i.ai, ptr noundef %i.aj) #22
  call void @cairo_restore(ptr noundef %i.ai) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.gt = add nsw i32 %.0273378, 1                ; 2 uses
  %i.gu = sitofp reassoc nsz arcp contract afn i32 %i.gt to float ; 2 uses
  %i.gv = fcmp reassoc nsz arcp contract afn ult float %i.fj, %i.gu
  br i1 %i.gv, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %bb.g, %bb.d, %bb.b
  call void @cairo_restore(ptr noundef %i.ai) #22
  %i.gw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !137
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1432
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !218
  %i.gz = fmul reassoc nsz arcp contract afn double %i.gy, 2.000000e+00
  %i.ha = fptrunc reassoc nsz arcp contract afn double %i.gz to float
  %i.hb = fpext reassoc nsz arcp contract afn float %i.ha to double ; 2 uses
  call void @cairo_set_line_width(ptr noundef %i.ai, double noundef %i.hb) #22
  %i.hc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 680
  %.sroa.0345.0.copyload = load double, ptr %i.hd, align 8
  %.sroa.4346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 688
  %.sroa.4346.0.copyload = load double, ptr %.sroa.4346.0..sroa_idx, align 8
  %.sroa.5347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 696
  %.sroa.5347.0.copyload = load double, ptr %.sroa.5347.0..sroa_idx, align 8
  %.sroa.6348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 704
  %.sroa.6348.0.copyload = load double, ptr %.sroa.6348.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %.sroa.0345.0.copyload, double noundef %.sroa.4346.0.copyload, double noundef %.sroa.5347.0.copyload, double noundef %.sroa.6348.0.copyload) #22
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  %i.hf = load float, ptr %i.he, align 4, !tbaa !111 ; 2 uses
  %i.hg = fcmp reassoc nsz arcp contract afn ogt float %i.hf, 0.000000e+00
  br i1 %i.hg, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.loopexit
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !113
end_hunk_1
