Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_agx?download=true
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
  %i.ks = icmp eq ptr %i.o, %.017.i103
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
  %.040108 = phi i64 [ 0, %.lr.ph ], [ %i.acd, %_agx_tone_mapping.exit ] ; 3 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.040108 ; 4 uses
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
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.040108
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
  %7 = fmul reassoc nsz arcp contract afn float %.sroa.071.0, f0x3E88194D
  %8 = fmul reassoc nsz arcp contract afn float %.sroa.1176.0, f0x3F193552
  %9 = fadd reassoc nsz arcp contract afn float %7, %8
  %i.ox = fmul reassoc nsz arcp contract afn float %.sroa.18.0, f0x3E0AF81D
  %10 = fadd reassoc nsz arcp contract afn float %9, %i.ox
  %11 = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.oi, float %i.oj)
  %12 = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %11, float %i.ok)
  %.neg.i = fmul reassoc nsz arcp contract afn float %i.oi, f0xBE88194D
  %.neg52.i = fmul reassoc nsz arcp contract afn float %i.oj, f0xBF193552
  %.neg54.i = fmul reassoc nsz arcp contract afn float %i.ok, f0xBE0AF81D
  %.neg53.i = fadd reassoc nsz arcp contract afn float %10, %.neg.i
  %.neg55.i = fadd reassoc nsz arcp contract afn float %.neg52.i, %.neg53.i
  %i.oy = fadd reassoc nsz arcp contract afn float %.neg54.i, %.neg55.i
  %i.oz = fadd reassoc nsz arcp contract afn float %i.oy, %12 ; 2 uses
  %i.pa = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ou, float %i.ov)
  %i.pb = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pa, float %i.ow)
  %13 = fmul reassoc nsz arcp contract afn float %i.op, f0x3E88194D
  %14 = fmul reassoc nsz arcp contract afn float %i.oq, f0x3F193552
  %15 = fadd reassoc nsz arcp contract afn float %13, %14
  %i.pc = fmul reassoc nsz arcp contract afn float %i.or, f0x3E0AF81D
  %16 = fadd reassoc nsz arcp contract afn float %i.pc, %15
  %.neg56.i = fmul reassoc nsz arcp contract afn float %i.ou, f0xBE88194D
  %.neg57.i = fmul reassoc nsz arcp contract afn float %i.ov, f0xBF193552
  %.neg59.i = fmul reassoc nsz arcp contract afn float %i.ow, f0xBE0AF81D
  %.neg58.i = fadd reassoc nsz arcp contract afn float %16, %.neg56.i
  %.neg60.i = fadd reassoc nsz arcp contract afn float %.neg57.i, %.neg58.i
  %i.pd = fadd reassoc nsz arcp contract afn float %.neg59.i, %.neg60.i
  %i.pe = fadd reassoc nsz arcp contract afn float %i.pd, %i.pb ; 3 uses
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
