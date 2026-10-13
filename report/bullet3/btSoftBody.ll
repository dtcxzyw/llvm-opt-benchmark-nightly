Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZN10btSoftBody17updateDeformationEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.ho = getelementptr inbounds nuw i8, ptr %i.l, i64 236
  %i.hp = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  %i.hq = getelementptr inbounds nuw i8, ptr %i.l, i64 244
  %i.hr = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  %i.hs = getelementptr inbounds nuw i8, ptr %i.l, i64 260
  %i.ht = getelementptr inbounds nuw i8, ptr %i.l, i64 272
  %i.hu = getelementptr inbounds nuw i8, ptr %i.l, i64 276
  %i.hv = load <12 x float>, ptr %i.ho, align 4, !tbaa !253 ; 4 uses
  %i.hw = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.0104.0.copyload, i64 0
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hy = shufflevector <12 x float> %i.hv, <12 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 poison>
  %i.hz = insertelement <4 x float> %i.hy, float 1.000000e+00, i64 3
  %i.ia = fmul <4 x float> %i.hx, %i.hz
  %i.ib = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.0108.0.copyload, i64 0
  %i.ic = shufflevector <4 x float> %i.ib, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.id = shufflevector <12 x float> %i.hv, <12 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 poison>
  %i.ie = insertelement <4 x float> %i.id, float -0.000000e+00, i64 3 ; 3 uses
  %i.if = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ic, <4 x float> %i.ie, <4 x float> %i.ia)
  %i.ig = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.0100.0.copyload, i64 0
  %i.ih = shufflevector <4 x float> %i.ig, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ii = shufflevector <12 x float> %i.hv, <12 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 poison>
  %i.ij = insertelement <4 x float> %i.ii, float -0.000000e+00, i64 3
  %i.ik = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ih, <4 x float> %i.ij, <4 x float> %i.if)
  %i.il = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.096.0.copyload, i64 0
  %i.im = shufflevector <4 x float> %i.il, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.in = shufflevector <12 x float> %i.hv, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 poison>
  %i.io = insertelement <4 x float> %i.in, float -0.000000e+00, i64 3
  %i.ip = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.im, <4 x float> %i.io, <4 x float> %i.ik)
  %i.iq = load <2 x float>, ptr %i.ht, align 8, !tbaa !253 ; 2 uses
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.is = load <2 x float>, ptr %i.hr, align 8, !tbaa !253 ; 2 uses
  %i.it = load <2 x float>, ptr %i.hp, align 8, !tbaa !253 ; 2 uses
  %i.iu = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.4105.0.copyload, i64 0
  %i.iv = shufflevector <4 x float> %i.iu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.iw = shufflevector <2 x float> %i.it, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ix = insertelement <4 x float> %i.iw, float 1.000000e+00, i64 3
  %i.iy = shufflevector <2 x float> %i.is, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.iz = shufflevector <4 x float> %i.ix, <4 x float> %i.iy, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.ja = shufflevector <2 x float> %i.iq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.jb = shufflevector <4 x float> %i.iz, <4 x float> %i.ja, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.jc = fmul <4 x float> %i.iv, %i.jb
  %i.jd = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.4109.0.copyload, i64 0
  %i.je = shufflevector <4 x float> %i.jd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.je, <4 x float> %i.ie, <4 x float> %i.jc)
  %i.jg = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.4101.0.copyload, i64 0
  %i.jh = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ji = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.iw, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.jj = shufflevector <4 x float> %i.ji, <4 x float> %i.iy, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.jk = shufflevector <4 x float> %i.jj, <4 x float> %i.ja, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.jl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jh, <4 x float> %i.jk, <4 x float> %i.jf)
  %i.jm = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.497.0.copyload, i64 0
  %i.jn = shufflevector <4 x float> %i.jm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jo = load <2 x float>, ptr %i.hu, align 4, !tbaa !253
  %i.jp = load <2 x float>, ptr %i.hs, align 4, !tbaa !253
  %i.jq = load <2 x float>, ptr %i.hq, align 4, !tbaa !253
  %i.jr = shufflevector <2 x float> %i.jq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.js = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.jr, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.jt = shufflevector <2 x float> %i.jp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ju = shufflevector <4 x float> %i.js, <4 x float> %i.jt, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.jv = shufflevector <2 x float> %i.jo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.jw = shufflevector <4 x float> %i.ju, <4 x float> %i.jv, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.jx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jn, <4 x float> %i.jw, <4 x float> %i.jl)
  %i.jy = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.5106.0.copyload, i64 0
  %i.jz = shufflevector <4 x float> %i.jy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ka = shufflevector <2 x float> %i.it, <2 x float> %i.is, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.kb = insertelement <4 x float> %i.ka, float 1.000000e+00, i64 3
  %i.kc = shufflevector <4 x float> %i.kb, <4 x float> %i.ir, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.kd = fmul <4 x float> %i.jz, %i.kc
  %i.ke = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.5110.0.copyload, i64 0
  %i.kf = shufflevector <4 x float> %i.ke, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kf, <4 x float> %i.ie, <4 x float> %i.kd)
  %i.kh = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.5102.0.copyload, i64 0
  %i.ki = shufflevector <4 x float> %i.kh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kj = insertelement <4 x float> %i.jr, float -0.000000e+00, i64 3
  %i.kk = shufflevector <4 x float> %i.kj, <4 x float> %i.jt, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.kl = shufflevector <4 x float> %i.kk, <4 x float> %i.jv, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.km = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ki, <4 x float> %i.kl, <4 x float> %i.kg)
  %i.kn = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.598.0.copyload, i64 0
  %i.ko = shufflevector <4 x float> %i.kn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ko, <4 x float> %i.jw, <4 x float> %i.km)
  store <4 x float> %i.ip, ptr %2, align 16, !tbaa !253
  store <4 x float> %i.jx, ptr %i.f, align 16, !tbaa !253
  store <4 x float> %i.kp, ptr %i.g, align 16, !tbaa !253
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %1, align 16, !tbaa !253
  call void @_ZN11btMatrix3x315extractRotationER12btQuaternionfi(ptr noundef nonnull align 4 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef f0x3C23D70A, i32 noundef 100)
  %i.kq = load float, ptr %1, align 16, !tbaa !253 ; 6 uses
  %i.kr = load float, ptr %i.h, align 4, !tbaa !253 ; 5 uses
  %i.ks = fmul float %i.kr, %i.kr
  %i.kt = call float @llvm.fmuladd.f32(float %i.kq, float %i.kq, float %i.ks)
  %i.ku = load float, ptr %i.i, align 8, !tbaa !253 ; 4 uses
  %i.kv = call float @llvm.fmuladd.f32(float %i.ku, float %i.ku, float %i.kt)
  %i.kw = load float, ptr %i.j, align 4, !tbaa !253 ; 5 uses
  %i.kx = call noundef float @llvm.fmuladd.f32(float %i.kw, float %i.kw, float %i.kv)
  %i.ky = fdiv float 2.000000e+00, %i.kx          ; 3 uses
  %i.kz = fmul float %i.kq, %i.ky                 ; 2 uses
  %i.la = fmul float %i.kr, %i.ky                 ; 3 uses
  %i.lb = fmul float %i.ku, %i.ky                 ; 4 uses
  %i.lc = fmul float %i.kw, %i.kz                 ; 2 uses
  %i.ld = fmul float %i.kw, %i.la                 ; 2 uses
  %i.le = fmul float %i.kw, %i.lb                 ; 2 uses
  %i.lf = fmul float %i.kq, %i.kz                 ; 2 uses
  %i.lg = fmul float %i.kq, %i.la                 ; 2 uses
  %i.lh = fmul float %i.kq, %i.lb                 ; 2 uses
  %i.li = fmul float %i.kr, %i.la                 ; 2 uses
  %i.lj = fmul float %i.kr, %i.lb                 ; 2 uses
  %i.lk = fmul float %i.ku, %i.lb                 ; 2 uses
  %i.ll = fadd float %i.li, %i.lk
  %i.lm = fsub float 1.000000e+00, %i.ll
  %i.ln = fsub float %i.lg, %i.le
  %i.lo = fadd float %i.lh, %i.ld
  %i.lp = fadd float %i.lg, %i.le
  %i.lq = fadd float %i.lf, %i.lk
  %i.lr = fsub float 1.000000e+00, %i.lq
  %i.ls = fsub float %i.lj, %i.lc
  %i.lt = fsub float %i.lh, %i.ld
  %i.lu = fadd float %i.lj, %i.lc
  %i.lv = fadd float %i.lf, %i.li
  %i.lw = fsub float 1.000000e+00, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.dk, i64 104
  store float %i.lm, ptr %i.lx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 108
  store float %i.ln, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 112
  store float %i.lo, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 116
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !259
  %i.ly = getelementptr inbounds nuw i8, ptr %i.dk, i64 120
  store float %i.lp, ptr %i.ly, align 4
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 124
  store float %i.lr, ptr %.sroa.9.16..sroa_idx, align 4
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 128
  store float %i.ls, ptr %.sroa.10.16..sroa_idx, align 4
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 132
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx, align 4, !tbaa !259
  %i.lz = getelementptr inbounds nuw i8, ptr %i.dk, i64 136
  store float %i.lt, ptr %i.lz, align 4
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 140
  store float %i.lu, ptr %.sroa.14.32..sroa_idx, align 4
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 144
  store float %i.lw, ptr %.sroa.15.32..sroa_idx, align 4
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 148
  store float 0.000000e+00, ptr %.sroa.16.32..sroa_idx, align 4, !tbaa !259
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ma = load i32, ptr %i.a, align 4, !tbaa !191
  %i.mb = sext i32 %i.ma to i64
  %i.mc = icmp slt i64 %indvars.iv.next, %i.mb
  br i1 %i.mc, label %bb.b, label %._crit_edge, !llvm.loop !1194
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11btMatrix3x315extractRotationER12btQuaternionfi(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef %2, i32 noundef %3) local_unnamed_addr #30 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load float, ptr %1, align 4, !tbaa !253
  %i.j = load <4 x float>, ptr %1, align 4        ; 2 uses
  %i.k = shufflevector <4 x float> %i.j, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.l = shufflevector <4 x float> %i.j, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %.pre170 = load float, ptr %i.b, align 4, !tbaa !253
  %i.m = insertelement <2 x float> %i.l, float %.pre, i64 1
  %i.n = insertelement <2 x float> %i.k, float %.pre170, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.0166 = phi i32 [ 0, %.lr.ph ], [ %i.gf, %bb.c ]
  %i.o = phi <2 x float> [ %i.m, %.lr.ph ], [ %i.gg, %bb.c ] ; 7 uses
  %i.p = phi <2 x float> [ %i.n, %.lr.ph ], [ %i.gh, %bb.c ] ; 9 uses
  %i.q = extractelement <2 x float> %i.p, i64 1   ; 4 uses
  %i.r = extractelement <2 x float> %i.p, i64 0   ; 2 uses
  %i.s = extractelement <2 x float> %i.o, i64 1   ; 5 uses
  %i.t = extractelement <2 x float> %i.o, i64 0   ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.p, %i.p
  %i.u = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.v = tail call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.u)
  %i.w = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.v)
  %i.x = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.w)
  %i.y = fdiv float 2.000000e+00, %i.x            ; 2 uses
  %i.z = load float, ptr %i.i, align 4, !tbaa !253 ; 3 uses
  %i.aa = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.o, %i.ab            ; 3 uses
  %i.ad = extractelement <2 x float> %i.ac, i64 0 ; 2 uses
  %i.ae = fmul <2 x float> %i.p, %i.ac            ; 3 uses
  %i.af = fmul <2 x float> %i.o, %i.ac            ; 3 uses
  %i.ag = extractelement <2 x float> %i.af, i64 0
  %shift = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop175 = fsub <2 x float> %i.ae, %shift ; 3 uses
  %i.ah = extractelement <2 x float> %foldExtExtBinop175, i64 0
  %i.ai = extractelement <2 x float> %i.af, i64 1
  %i.aj = load <2 x float>, ptr %i.c, align 4, !tbaa !253 ; 4 uses
  %i.ak = load float, ptr %i.f, align 4, !tbaa !253 ; 2 uses
  %i.al = extractelement <2 x float> %i.aj, i64 0
  %i.am = fneg float %i.al
  %i.an = load <2 x float>, ptr %i.d, align 4, !tbaa !253 ; 3 uses
  %i.ao = extractelement <2 x float> %i.an, i64 0 ; 2 uses
  %i.ap = fneg float %i.ao
  %i.aq = shufflevector <2 x float> %i.aj, <2 x float> %i.an, <2 x i32> <i32 0, i32 2>
  %i.ar = shufflevector <2 x float> %i.aj, <2 x float> %i.an, <2 x i32> <i32 1, i32 3>
  %i.as = load float, ptr %i.h, align 4, !tbaa !253 ; 3 uses
  %i.at = fmul float %i.r, %i.y                   ; 3 uses
  %i.au = fmul float %i.q, %i.at                  ; 2 uses
  %i.av = fmul float %i.s, %i.at                  ; 2 uses
  %i.aw = fmul float %i.r, %i.at                  ; 2 uses
  %i.ax = fmul float %i.q, %i.ad                  ; 2 uses
  %i.ay = fmul float %i.s, %i.ad                  ; 2 uses
  %i.az = fadd float %i.aw, %i.ag
  %i.ba = fsub float 1.000000e+00, %i.az          ; 3 uses
  %i.bb = fsub float %i.av, %i.ax                 ; 3 uses
  %i.bc = fadd float %i.ay, %i.au                 ; 3 uses
  %i.bd = fadd float %i.av, %i.ax                 ; 3 uses
  %i.be = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.af)
  %i.bf = fsub float 1.000000e+00, %i.be          ; 3 uses
  %i.bg = fsub float %i.ay, %i.au                 ; 3 uses
  %4 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ae) ; 3 uses
  %i.bh = fadd float %i.ai, %i.aw
  %i.bi = fsub float 1.000000e+00, %i.bh          ; 3 uses
  %i.bj = load float, ptr %0, align 4, !tbaa !253 ; 3 uses
  %i.bk = fmul float %i.bg, %i.am
  %i.bl = load <2 x float>, ptr %i.g, align 4, !tbaa !253 ; 4 uses
  %i.bm = fmul float %i.ba, %i.ap
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bj, float %i.bm)
  %i.bo = fneg float %i.bj
  %i.bp = fmul float %i.bd, %i.bo
  %i.bq = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.br = insertelement <2 x float> %i.bq, float %i.bd, i64 1
  %i.bs = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %i.bk, i64 1
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.aq, <2 x float> %i.bt)
  %i.bv = load float, ptr %i.e, align 4, !tbaa !253 ; 2 uses
  %i.bw = fneg <2 x float> %i.bl
  %i.bx = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.ak, i64 1
  %i.bz = fneg <2 x float> %i.by
  %i.ca = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %4, i64 1
  %i.cc = fmul <2 x float> %i.cb, %i.bz
  %i.cd = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %i.bf, i64 1
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.ar, <2 x float> %i.cc)
  %i.cg = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.ch = insertelement <4 x float> %i.cg, float %i.bc, i64 1
  %i.ci = insertelement <4 x float> %i.ch, float %i.bd, i64 2
  %i.cj = insertelement <4 x float> %i.ci, float %i.bf, i64 3
  %i.ck = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.cl = insertelement <4 x float> %i.ck, float %i.ak, i64 3
  %i.cm = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> %i.cl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.co = fmul <4 x float> %i.cj, %i.cn
  %i.cp = insertelement <4 x float> poison, float %4, i64 0
  %i.cq = insertelement <4 x float> %i.cp, float %i.bi, i64 1
  %i.cr = insertelement <4 x float> %i.cq, float %i.ba, i64 2
  %i.cs = insertelement <4 x float> %i.cr, float %i.bb, i64 3
  %i.ct = insertelement <4 x float> poison, float %i.bv, i64 0
  %i.cu = insertelement <4 x float> %i.ct, float %i.as, i64 1
  %i.cv = insertelement <4 x float> %i.cu, float %i.bj, i64 2
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cs, <4 x float> %i.cw, <4 x float> %i.co) ; 4 uses
  %i.cy = extractelement <4 x float> %i.cx, i64 0
  %i.cz = fadd float %i.cy, %i.bn
  %i.da = fadd <2 x float> %i.bu, %i.cf
  %i.db = insertelement <2 x float> poison, float %i.as, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %i.z, i64 1
  %i.dd = fneg <2 x float> %i.dc
  %i.de = insertelement <2 x float> %foldExtExtBinop175, float %i.bi, i64 1
  %i.df = fmul <2 x float> %i.de, %i.dd
  %i.dg = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> %foldExtExtBinop175, <2 x i32> <i32 0, i32 2>
  %i.di = insertelement <2 x float> %i.bl, float %i.z, i64 0
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.di, <2 x float> %i.df)
  %i.dk = extractelement <4 x float> %i.cx, i64 1
  %i.dl = fadd float %i.cz, %i.dk
  %i.dm = fadd <2 x float> %i.dj, %i.da
  %i.dn = extractelement <4 x float> %i.cx, i64 2
  %i.do = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.ao, float %i.dn)
  %i.dp = extractelement <4 x float> %i.cx, i64 3
  %i.dq = extractelement <2 x float> %i.bl, i64 0
  %i.dr = tail call noundef float @llvm.fmuladd.f32(float %4, float %i.dq, float %i.dp)
  %i.ds = fadd float %i.do, %i.dr
  %i.dt = fmul float %i.ah, %i.z
  %i.du = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.as, float %i.dt)
  %i.dv = extractelement <2 x float> %i.bl, i64 1
  %i.dw = tail call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.dv, float %i.du)
  %i.dx = fadd float %i.ds, %i.dw
  %i.dy = tail call noundef float @llvm.fabs.f32(float %i.dx)
  %i.dz = fdiv float 1.000000e+00, %i.dy
  %i.ea = fadd float %2, %i.dz
  %i.eb = insertelement <4 x float> poison, float %i.dl, i64 0
  %i.ec = shufflevector <2 x float> %i.dm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ed = shufflevector <4 x float> %i.eb, <4 x float> %i.ec, <4 x i32> <i32 0, i32 4, i32 5, i32 4>
  %i.ee = insertelement <4 x float> poison, float %i.ea, i64 0
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = fmul <4 x float> %i.ed, %i.ef           ; 5 uses
  %foldExtExtBinop177 = fmul <4 x float> %i.eg, %i.eg
  %i.eh = extractelement <4 x float> %foldExtExtBinop177, i64 0
  %i.ei = extractelement <4 x float> %i.eg, i64 2 ; 2 uses
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.ei, float %i.eh)
  %i.ek = extractelement <4 x float> %i.eg, i64 1 ; 2 uses
  %i.el = tail call noundef float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %i.ej)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.el) ; 3 uses
  %i.em = fcmp olt float %sqrt.i.i, %2
  br i1 %i.em, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.en = fmul float %sqrt.i.i, 5.000000e-01      ; 2 uses
  %i.eo = tail call noundef float @sinf(float noundef %i.en) #39
  %i.ep = tail call noundef float @cosf(float noundef %i.en) #39
  %i.eq = fneg float %i.s
  %i.er = fdiv float 1.000000e+00, %sqrt.i.i
  %i.es = insertelement <4 x float> poison, float %i.er, i64 0
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eu = fmul <4 x float> %i.eg, %i.et           ; 5 uses
  %foldExtExtBinop179 = fmul <4 x float> %i.eu, %i.eu
  %i.ev = extractelement <4 x float> %foldExtExtBinop179, i64 0
  %i.ew = extractelement <4 x float> %i.eu, i64 2 ; 2 uses
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.ew, float %i.ev)
  %i.ey = extractelement <4 x float> %i.eu, i64 1 ; 2 uses
  %i.ez = tail call noundef float @llvm.fmuladd.f32(float %i.ey, float %i.ey, float %i.ex)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ez)
  %i.fa = fdiv float %i.eo, %sqrt.i.i.i
  %i.fb = insertelement <4 x float> poison, float %i.fa, i64 0
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fd = fmul <4 x float> %i.eu, %i.fc           ; 3 uses
  %i.fe = fneg <4 x float> %i.fd                  ; 2 uses
  %i.ff = shufflevector <4 x float> %i.fd, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %i.fg = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fh = insertelement <4 x float> %i.fg, float %i.eq, i64 1
  %i.fi = shufflevector <4 x float> %i.fh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fj = fmul <4 x float> %i.ff, %i.fi
  %i.fk = insertelement <4 x float> poison, float %i.ep, i64 0
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fm = shufflevector <2 x float> %i.o, <2 x float> %i.p, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fl, <4 x float> %i.fm, <4 x float> %i.fj)
  %i.fo = shufflevector <4 x float> %i.fd, <4 x float> %i.fe, <4 x i32> <i32 2, i32 0, i32 1, i32 4>
  %i.fp = shufflevector <2 x float> %i.p, <2 x float> %i.o, <4 x i32> <i32 0, i32 2, i32 3, i32 0>
  %i.fq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fo, <4 x float> %i.fp, <4 x float> %i.fn)
  %i.fr = shufflevector <2 x float> %i.o, <2 x float> %i.p, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %i.fs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fe, <4 x float> %i.fr, <4 x float> %i.fq) ; 6 uses
  %foldExtExtBinop181 = fmul <4 x float> %i.fs, %i.fs
  %i.ft = extractelement <4 x float> %foldExtExtBinop181, i64 2
  %i.fu = extractelement <4 x float> %i.fs, i64 1 ; 2 uses
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.fu, float %i.ft)
  %i.fw = extractelement <4 x float> %i.fs, i64 0 ; 2 uses
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.fw, float %i.fv)
  %i.fy = extractelement <4 x float> %i.fs, i64 3 ; 2 uses
  %i.fz = tail call noundef float @llvm.fmuladd.f32(float %i.fy, float %i.fy, float %i.fx)
  %sqrt.i.i107 = tail call noundef float @llvm.sqrt.f32(float %i.fz)
  %i.ga = fdiv float 1.000000e+00, %sqrt.i.i107
  %i.gb = insertelement <4 x float> poison, float %i.ga, i64 0
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gd = fmul <4 x float> %i.fs, %i.gc           ; 3 uses
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  store <4 x float> %i.ge, ptr %1, align 4, !tbaa !253
  %i.gf = add nuw nsw i32 %.0166, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gf, %3
  %i.gg = shufflevector <4 x float> %i.gd, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gh = shufflevector <4 x float> %i.gd, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1201

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody18advanceDeformationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2064) %0) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN10btSoftBody17updateDeformationEv(ptr noundef nonnull align 8 dereferenceable(2064) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1092 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !191
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1168
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !194
  %i.g = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %indvars.iv ; 10 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !194
  %i.i = getelementptr inbounds nuw [152 x i8], ptr %i.h, i64 %indvars.iv ; 10 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(152) %i.i, ptr noundef nonnull align 4 dereferenceable(152) %i.g, i64 16, i1 false), !tbaa.struct !260
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !260
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !260
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.p = load i64, ptr %i.o, align 4
  store i64 %i.p, ptr %i.n, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.q, ptr noundef nonnull align 4 dereferenceable(48) %i.r, i64 16, i1 false), !tbaa.struct !260
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !260
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !260
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.w, ptr noundef nonnull align 4 dereferenceable(48) %i.x, i64 16, i1 false), !tbaa.struct !260
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !260
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, ptr noundef nonnull align 4 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !260
end_hunk_0
begin_hunk_1_@_ZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeE:bb.a
  %i.ho = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hh, <3 x float> %i.hn, <3 x float> %i.hl)
  %i.hp = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hj, <3 x float> zeroinitializer, <3 x float> %i.ho) ; 6 uses
  %i.hq = shufflevector <3 x float> %i.hf, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.hr = insertelement <3 x float> %i.hq, float %i.he, i64 2 ; 2 uses
  %i.hs = insertelement <3 x float> poison, float %i.gu, i64 0
  %i.ht = shufflevector <3 x float> %i.hs, <3 x float> poison, <3 x i32> zeroinitializer
  %i.hu = fmul <3 x float> %i.hr, %i.ht
  %i.hv = shufflevector <3 x float> %i.hh, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.hw = insertelement <3 x float> %i.hv, float %i.hg, i64 2 ; 2 uses
  %i.hx = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hw, <3 x float> zeroinitializer, <3 x float> %i.hu)
  %i.hy = shufflevector <3 x float> %i.hj, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.hz = insertelement <3 x float> %i.hy, float %i.hi, i64 2 ; 2 uses
  %i.ia = shufflevector <2 x float> %i.gf, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ib = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hz, <3 x float> %i.ia, <3 x float> %i.hx) ; 6 uses
  %i.ic = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gj, i64 0 ; 3 uses
  %i.id = shufflevector <3 x float> %i.ib, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ie = fmul <2 x float> %i.ic, %i.id
  %i.if = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.gu, i64 1 ; 3 uses
  %i.ig = shufflevector <3 x float> %i.ib, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ih = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.if, <2 x float> %i.ig, <2 x float> %i.ie)
  %i.ii = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ij = insertelement <2 x float> %i.ii, float %i.gy, i64 0 ; 3 uses
  %i.ik = shufflevector <3 x float> %i.ib, <3 x float> poison, <2 x i32> zeroinitializer
  %i.il = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ij, <2 x float> %i.ik, <2 x float> %i.ih)
  %i.im = extractelement <3 x float> %i.ib, i64 2
  %i.in = fmul float %i.im, %i.gw
  %i.io = extractelement <3 x float> %i.ib, i64 1
  %i.ip = call float @llvm.fmuladd.f32(float %i.gx, float %i.io, float %i.in)
  %i.iq = extractelement <3 x float> %i.ib, i64 0
  %i.ir = call noundef float @llvm.fmuladd.f32(float %i.iq, float 0.000000e+00, float %i.ip)
  %i.is = fmul <3 x float> %i.hr, zeroinitializer
  %i.it = insertelement <3 x float> poison, float %i.gj, i64 0
  %i.iu = shufflevector <3 x float> %i.it, <3 x float> poison, <3 x i32> zeroinitializer
  %i.iv = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hw, <3 x float> %i.iu, <3 x float> %i.is)
  %i.iw = insertelement <3 x float> poison, float %i.gw, i64 0
  %i.ix = shufflevector <3 x float> %i.iw, <3 x float> poison, <3 x i32> zeroinitializer
  %i.iy = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hz, <3 x float> %i.ix, <3 x float> %i.iv) ; 6 uses
  %i.iz = shufflevector <3 x float> %i.iy, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ja = fmul <2 x float> %i.ic, %i.iz
  %i.jb = shufflevector <3 x float> %i.iy, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.if, <2 x float> %i.jb, <2 x float> %i.ja)
  %i.jd = shufflevector <3 x float> %i.iy, <3 x float> poison, <2 x i32> zeroinitializer
  %i.je = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ij, <2 x float> %i.jd, <2 x float> %i.jc) ; 3 uses
  %i.jf = shufflevector <3 x float> %i.hp, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jg = fmul <2 x float> %i.ic, %i.jf
  %i.jh = shufflevector <3 x float> %i.hp, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ji = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.if, <2 x float> %i.jh, <2 x float> %i.jg)
  %i.jj = shufflevector <3 x float> %i.hp, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.jk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ij, <2 x float> %i.jj, <2 x float> %i.ji) ; 2 uses
  %i.jl = shufflevector <3 x float> %i.iy, <3 x float> %i.hp, <2 x i32> <i32 2, i32 4>
  %i.jm = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.jn = shufflevector <2 x float> %i.jm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jo = fmul <2 x float> %i.jl, %i.jn
  %i.jp = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jq = shufflevector <3 x float> %i.iy, <3 x float> %i.hp, <2 x i32> <i32 1, i32 3>
  %i.jr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jp, <2 x float> %i.jq, <2 x float> %i.jo)
  %i.js = shufflevector <3 x float> %i.iy, <3 x float> %i.hp, <2 x i32> <i32 0, i32 5>
  %i.jt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.js, <2 x float> zeroinitializer, <2 x float> %i.jr) ; 3 uses
  %i.ju = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cn, i64 0
  %i.jv = fsub <2 x float> %i.ju, %i.il           ; 3 uses
  %i.jw = fsub float 0.000000e+00, %i.ir          ; 3 uses
  br i1 %i.gt, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jw, i64 0
  %i.jx = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.cn, i64 1 ; 2 uses
  %i.jy = fsub <2 x float> %i.jx, %i.je
  %i.jz = fsub <2 x float> %i.jx, %i.jt           ; 2 uses
  %i.ka = insertelement <2 x float> %i.jz, float 0.000000e+00, i64 1
  %i.kb = fsub <2 x float> zeroinitializer, %i.jk
  %i.kc = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.jz, <2 x i32> <i32 3, i32 1>
  %i.kd = getelementptr inbounds nuw i8, ptr %4, i64 64
  store <2 x float> %i.jv, ptr %i.kd, align 8
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.589.0..sroa_idx, align 8, !tbaa !259
  %i.ke = getelementptr inbounds nuw i8, ptr %4, i64 80
  store <2 x float> %i.jy, ptr %i.ke, align 8
  %.sroa.891.16..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  store <2 x float> %i.ka, ptr %.sroa.891.16..sroa_idx, align 8, !tbaa !259
  %i.kf = getelementptr inbounds nuw i8, ptr %4, i64 96
  store <2 x float> %i.kb, ptr %i.kf, align 8
  %.sroa.1192.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 104
  store <2 x float> %i.kc, ptr %.sroa.1192.32..sroa_idx, align 8, !tbaa !259
  br label %bb.s

bb.p:                                             ; preds = %bb.b
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.q:                                             ; preds = %bb.g
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.r:                                             ; preds = %bb.n
  %i.ki = extractelement <2 x float> %i.je, i64 0
  %i.kj = fsub float 0.000000e+00, %i.ki
  %i.kk = extractelement <2 x float> %i.je, i64 1
  %i.kl = fsub float %i.cn, %i.kk
  %i.km = extractelement <2 x float> %i.jt, i64 0
  %i.kn = fsub float 0.000000e+00, %i.km
  %i.ko = load float, ptr %i.fs, align 4, !tbaa !253, !noalias !1470
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.kr = load float, ptr %i.fu, align 4, !tbaa !253, !noalias !1470
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.ku = load <4 x float>, ptr %i.fw, align 4
  %i.kv = shufflevector <4 x float> %i.ku, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.ky = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.kz = fsub <2 x float> zeroinitializer, %i.jk
  %i.la = extractelement <2 x float> %i.jt, i64 1
  %i.lb = fsub float %i.cn, %i.la
  %i.lc = load <2 x float>, ptr %i.kp, align 8, !tbaa !253, !noalias !1470
  %i.ld = load float, ptr %i.kq, align 4, !tbaa !253, !noalias !1470 ; 2 uses
  %i.le = insertelement <2 x float> %i.lc, float %i.kr, i64 1
  %i.lf = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lg = insertelement <2 x float> %i.lf, float %i.kj, i64 1
  %i.lh = fadd <2 x float> %i.le, %i.lg           ; 6 uses
  %i.li = load <1 x float>, ptr %i.ks, align 8, !tbaa !253, !noalias !1470
  %i.lj = load float, ptr %i.kt, align 4, !tbaa !253, !noalias !1470
  %i.lk = insertelement <2 x float> %i.jv, float %i.kl, i64 1
  %i.ll = shufflevector <1 x float> %i.li, <1 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lm = insertelement <2 x float> %i.ll, float %i.ko, i64 0
  %i.ln = fadd <2 x float> %i.lk, %i.lm           ; 6 uses
  %i.lo = load float, ptr %i.kw, align 8, !tbaa !253, !noalias !1470
  %i.lp = insertelement <2 x float> %i.kv, float %i.lo, i64 1
  %i.lq = fadd <2 x float> %i.kz, %i.lp           ; 4 uses
  %i.lr = load float, ptr %i.kx, align 4, !tbaa !253, !noalias !1470
  %i.ls = fneg <2 x float> %i.lq                  ; 3 uses
  %i.lt = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lu = extractelement <2 x float> %i.ls, i64 1
  %i.lv = extractelement <2 x float> %i.ln, i64 1 ; 2 uses
  %i.lw = extractelement <2 x float> %i.lh, i64 1 ; 2 uses
  %i.lx = extractelement <2 x float> %i.lq, i64 0
  %i.ly = extractelement <2 x float> %i.lh, i64 0 ; 2 uses
  %i.lz = extractelement <2 x float> %i.ln, i64 0 ; 2 uses
  %i.ma = fmul <2 x float> %i.ln, %i.lt
  %i.mb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lh, <2 x float> %i.lq, <2 x float> %i.ma) ; 2 uses
  %i.mc = extractelement <2 x float> %i.mb, i64 1
  %i.md = fneg float %i.lw
  %i.me = fmul float %i.ly, %i.md
  %i.mf = call noundef float @llvm.fmuladd.f32(float %i.lz, float %i.lv, float %i.me)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 76
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !259
  %i.mg = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 84
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 100
  %i.mh = insertelement <2 x float> poison, float %i.ld, i64 0
  %i.mi = insertelement <2 x float> %i.mh, float %i.lj, i64 1
  %i.mj = insertelement <2 x float> poison, float %i.jw, i64 0
  %i.mk = insertelement <2 x float> %i.mj, float %i.kn, i64 1
  %i.ml = fadd <2 x float> %i.mi, %i.mk           ; 6 uses
  %i.mm = insertelement <2 x float> poison, float %i.lb, i64 0
  %i.mn = insertelement <2 x float> %i.mm, float %i.jw, i64 1
  %i.mo = insertelement <2 x float> poison, float %i.lr, i64 0
  %i.mp = insertelement <2 x float> %i.mo, float %i.ld, i64 1
  %i.mq = fadd <2 x float> %i.mn, %i.mp           ; 3 uses
  %i.mr = extractelement <2 x float> %i.ml, i64 1 ; 2 uses
  %i.ms = fmul float %i.mr, %i.lu
  %i.mt = extractelement <2 x float> %i.mq, i64 0
  %i.mu = call noundef float @llvm.fmuladd.f32(float %i.lv, float %i.mt, float %i.ms) ; 2 uses
  %i.mv = shufflevector <2 x float> %i.mq, <2 x float> %i.ln, <2 x i32> <i32 0, i32 3>
  %i.mw = fneg <2 x float> %i.mv                  ; 2 uses
  %i.mx = extractelement <2 x float> %i.mw, i64 0
  %i.my = fmul float %i.lw, %i.mx
  %i.mz = call noundef float @llvm.fmuladd.f32(float %i.mr, float %i.lx, float %i.my) ; 2 uses
  %i.na = fmul float %i.ly, %i.mz
  %i.nb = call float @llvm.fmuladd.f32(float %i.lz, float %i.mu, float %i.na)
  %i.nc = extractelement <2 x float> %i.ml, i64 0
  %i.nd = call noundef float @llvm.fmuladd.f32(float %i.nc, float %i.mc, float %i.nb)
  %i.ne = fdiv float 1.000000e+00, %i.nd          ; 4 uses
  %i.nf = fmul float %i.mu, %i.ne                 ; 3 uses
  %i.ng = shufflevector <2 x float> %i.lh, <2 x float> %i.ml, <2 x i32> <i32 0, i32 2>
  %i.nh = fmul <2 x float> %i.ng, %i.mw
  %i.ni = shufflevector <2 x float> %i.lq, <2 x float> %i.lh, <2 x i32> <i32 1, i32 2>
  %i.nj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ml, <2 x float> %i.ni, <2 x float> %i.nh)
  %i.nk = insertelement <2 x float> poison, float %i.ne, i64 0
  %i.nl = shufflevector <2 x float> %i.nk, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.nm = fmul <2 x float> %i.nj, %i.nl           ; 4 uses
  %i.nn = fmul float %i.mz, %i.ne                 ; 2 uses
  %i.no = fneg <2 x float> %i.ml
  %i.np = shufflevector <2 x float> %i.ml, <2 x float> %i.no, <2 x i32> <i32 0, i32 3>
  %i.nq = shufflevector <2 x float> %i.ls, <2 x float> %i.ln, <2 x i32> <i32 0, i32 2>
  %i.nr = fmul <2 x float> %i.np, %i.nq
  %i.ns = shufflevector <2 x float> %i.ln, <2 x float> %i.lh, <2 x i32> <i32 0, i32 3>
  %i.nt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ns, <2 x float> %i.mq, <2 x float> %i.nr)
  %i.nu = fmul <2 x float> %i.nt, %i.nl           ; 2 uses
  %i.nv = fmul <2 x float> %i.mb, %i.nl           ; 5 uses
  %i.nw = fmul float %i.mf, %i.ne                 ; 3 uses
  %i.nx = fmul float %i.nn, 0.000000e+00          ; 2 uses
  %i.ny = fadd float %i.nf, %i.nx
  %i.nz = fmul <2 x float> %i.nu, zeroinitializer ; 3 uses
  %foldExtExtBinop = fadd <2 x float> %i.nm, %i.nz
  %i.oa = insertelement <2 x float> %foldExtExtBinop, float %i.ny, i64 1
  %i.ob = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nv, <2 x float> zeroinitializer, <2 x float> %i.oa)
  %20 = extractelement <2 x float> %i.nv, i64 1
  %foldExtExtBinop116 = fadd <2 x float> %i.nm, %i.nz
  %i.oc = call float @llvm.fmuladd.f32(float %i.nf, float 0.000000e+00, float %i.nn)
  %i.od = insertelement <2 x float> %i.nv, float %i.nw, i64 0
  %i.oe = shufflevector <2 x float> %foldExtExtBinop116, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.of = insertelement <2 x float> %i.oe, float %i.oc, i64 1
  %i.og = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.od, <2 x float> zeroinitializer, <2 x float> %i.of) ; 2 uses
  %i.oh = call float @llvm.fmuladd.f32(float %i.nf, float 0.000000e+00, float %i.nx)
  %i.oi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nm, <2 x float> zeroinitializer, <2 x float> %i.nz)
  %i.oj = insertelement <2 x float> %i.nv, float %i.nw, i64 1
  %i.ok = fadd <2 x float> %i.oj, %i.oi
  %i.ol = shufflevector <2 x float> %i.ob, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ol, ptr %i.ky, align 8
  %i.om = extractelement <2 x float> %i.og, i64 0
  store float %i.om, ptr %.sroa.6.0..sroa_idx, align 8
  %i.on = extractelement <2 x float> %i.og, i64 1
  store float %i.on, ptr %i.mg, align 8
  %i.oo = fadd float %20, %i.oh
  %i.op = shufflevector <2 x float> %i.nm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.oq = shufflevector <4 x float> %i.op, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.or = shufflevector <2 x float> %i.nu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.os = insertelement <4 x float> %i.or, float 0.000000e+00, i64 2
  %i.ot = insertelement <4 x float> %i.os, float %i.oo, i64 3
  %i.ou = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oq, <4 x float> zeroinitializer, <4 x float> %i.ot)
  %i.ov = shufflevector <2 x float> %i.nv, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ow = shufflevector <4 x float> %i.ov, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 poison, i32 6, i32 7>
  %i.ox = insertelement <4 x float> %i.ow, float %i.nw, i64 1
  %i.oy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ox, <4 x float> zeroinitializer, <4 x float> %i.ou)
  store <4 x float> %i.oy, ptr %.sroa.10.16..sroa_idx, align 4
  store <2 x float> %i.ok, ptr %.sroa.15.32..sroa_idx, align 4
  %.sroa.17.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 108
  store float 0.000000e+00, ptr %.sroa.17.32..sroa_idx, align 4, !tbaa !259
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.oz = getelementptr inbounds nuw i8, ptr %4, i64 112
  store <2 x float> %i.gf, ptr %i.oz, align 8
  %.sroa.9106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 120
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.9106.0..sroa_idx, align 8, !tbaa !259
  br label %bb.an

bb.t:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i64 16, i1 false), !tbaa.struct !260
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.pa = call fastcc { <2 x float>, <2 x float> } @_ZL28generateUnitOrthogonalVectorRK9btVector3(ptr noundef nonnull align 4 dereferenceable(16) %i.ez) ; 2 uses
  %i.pb = extractvalue { <2 x float>, <2 x float> } %i.pa, 0 ; 4 uses
  store <2 x float> %i.pb, ptr %6, align 8
  %i.pc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.pd = extractvalue { <2 x float>, <2 x float> } %i.pa, 1 ; 3 uses
  store <2 x float> %i.pd, ptr %i.pc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.pe = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.pf = extractelement <2 x float> %i.pd, i64 0
  %i.pg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ph = extractelement <2 x float> %i.pb, i64 1 ; 2 uses
  %i.pi = extractelement <2 x float> %i.pb, i64 0
  %i.pj = load float, ptr %5, align 8, !tbaa !253 ; 2 uses
  %i.pk = load <2 x float>, ptr %i.pe, align 4, !tbaa !253 ; 3 uses
  %i.pl = fneg float %i.ph
  %i.pm = extractelement <2 x float> %i.pk, i64 1
  %i.pn = fmul float %i.pm, %i.pl
  %i.po = fneg float %i.pf
  %i.pp = fmul float %i.pj, %i.po
  %i.pq = shufflevector <2 x float> %i.pd, <2 x float> %i.pb, <2 x i32> <i32 0, i32 2>
  %i.pr = insertelement <2 x float> poison, float %i.pn, i64 0
  %i.ps = insertelement <2 x float> %i.pr, float %i.pp, i64 1
  %i.pt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pk, <2 x float> %i.pq, <2 x float> %i.ps)
  %i.pu = fneg float %i.pi
  %i.pv = extractelement <2 x float> %i.pk, i64 0
  %i.pw = fmul float %i.pv, %i.pu
  %i.px = call float @llvm.fmuladd.f32(float %i.pj, float %i.ph, float %i.pw)
  %.sroa.3.12.vec.insert.i.i87 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.px, i64 0
  store <2 x float> %i.pt, ptr %7, align 8
  %i.py = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i87, ptr %i.py, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.pz = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 1, ptr %i.pz, align 8, !tbaa !160
  %i.qa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr null, ptr %i.qa, align 8, !tbaa !161
  %i.qb = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %i.qb, align 4, !tbaa !162
  %i.qc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.qc, align 8, !tbaa !163
  %i.qd = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i8 1, ptr %i.qd, align 8, !tbaa !160
  %i.qe = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store ptr null, ptr %i.qe, align 8, !tbaa !161
  %i.qf = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i32 0, ptr %i.qf, align 4, !tbaa !162
  %i.qg = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 0, ptr %i.qg, align 8, !tbaa !163
  %i.qh = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i8 1, ptr %i.qh, align 8, !tbaa !160
  %i.qi = getelementptr inbounds nuw i8, ptr %8, i64 80
  store ptr null, ptr %i.qi, align 8, !tbaa !161
  %i.qj = getelementptr inbounds nuw i8, ptr %8, i64 68
  store i32 0, ptr %i.qj, align 4, !tbaa !162
  %i.qk = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i32 0, ptr %i.qk, align 8, !tbaa !163
  %i.ql = getelementptr inbounds nuw i8, ptr %8, i64 120
  store i8 1, ptr %i.ql, align 8, !tbaa !160
  %i.qm = getelementptr inbounds nuw i8, ptr %8, i64 112
  store ptr null, ptr %i.qm, align 8, !tbaa !161
  %i.qn = getelementptr inbounds nuw i8, ptr %8, i64 100
  store i32 0, ptr %i.qn, align 4, !tbaa !162
  %i.qo = getelementptr inbounds nuw i8, ptr %8, i64 104
  store i32 0, ptr %i.qo, align 8, !tbaa !163
  %i.qp = getelementptr inbounds nuw i8, ptr %8, i64 152
  store i8 1, ptr %i.qp, align 8, !tbaa !156
  %i.qq = getelementptr inbounds nuw i8, ptr %8, i64 144
  store ptr null, ptr %i.qq, align 8, !tbaa !157
  %i.qr = getelementptr inbounds nuw i8, ptr %8, i64 132
  store i32 0, ptr %i.qr, align 4, !tbaa !158
  %i.qs = getelementptr inbounds nuw i8, ptr %8, i64 136
  store i32 0, ptr %i.qs, align 8, !tbaa !159
  %i.qt = getelementptr inbounds nuw i8, ptr %8, i64 184
  store i8 1, ptr %i.qt, align 8, !tbaa !336
  %i.qu = getelementptr inbounds nuw i8, ptr %8, i64 176
  store ptr null, ptr %i.qu, align 8, !tbaa !337
  %i.qv = getelementptr inbounds nuw i8, ptr %8, i64 164
  store i32 0, ptr %i.qv, align 4, !tbaa !338
  %i.qw = getelementptr inbounds nuw i8, ptr %8, i64 168
  store i32 0, ptr %i.qw, align 8, !tbaa !339
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.qx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 1, ptr %i.qx, align 8, !tbaa !160
  %i.qy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr null, ptr %i.qy, align 8, !tbaa !161
  %i.qz = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %i.qz, align 4, !tbaa !162
  %i.ra = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.ra, align 8, !tbaa !163
  %i.rb = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i8 1, ptr %i.rb, align 8, !tbaa !160
  %i.rc = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  store ptr null, ptr %i.rc, align 8, !tbaa !161
  %i.rd = getelementptr inbounds nuw i8, ptr %9, i64 36
  store i32 0, ptr %i.rd, align 4, !tbaa !162
  %i.re = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 0, ptr %i.re, align 8, !tbaa !163
  %i.rf = getelementptr inbounds nuw i8, ptr %9, i64 88
  store i8 1, ptr %i.rf, align 8, !tbaa !160
  %i.rg = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr null, ptr %i.rg, align 8, !tbaa !161
  %i.rh = getelementptr inbounds nuw i8, ptr %9, i64 68
  store i32 0, ptr %i.rh, align 4, !tbaa !162
  %i.ri = getelementptr inbounds nuw i8, ptr %9, i64 72
  store i32 0, ptr %i.ri, align 8, !tbaa !163
  %i.rj = getelementptr inbounds nuw i8, ptr %9, i64 120
  store i8 1, ptr %i.rj, align 8, !tbaa !160
  %i.rk = getelementptr inbounds nuw i8, ptr %9, i64 112
  store ptr null, ptr %i.rk, align 8, !tbaa !161
  %i.rl = getelementptr inbounds nuw i8, ptr %9, i64 100
  store i32 0, ptr %i.rl, align 4, !tbaa !162
  %i.rm = getelementptr inbounds nuw i8, ptr %9, i64 104
  store i32 0, ptr %i.rm, align 8, !tbaa !163
  %i.rn = getelementptr inbounds nuw i8, ptr %9, i64 152
  store i8 1, ptr %i.rn, align 8, !tbaa !156
  %i.ro = getelementptr inbounds nuw i8, ptr %9, i64 144
  store ptr null, ptr %i.ro, align 8, !tbaa !157
  %i.rp = getelementptr inbounds nuw i8, ptr %9, i64 132
  store i32 0, ptr %i.rp, align 4, !tbaa !158
  %i.rq = getelementptr inbounds nuw i8, ptr %9, i64 136
  store i32 0, ptr %i.rq, align 8, !tbaa !159
  %i.rr = getelementptr inbounds nuw i8, ptr %9, i64 184
  store i8 1, ptr %i.rr, align 8, !tbaa !336
  %i.rs = getelementptr inbounds nuw i8, ptr %9, i64 176
  store ptr null, ptr %i.rs, align 8, !tbaa !337
  %i.rt = getelementptr inbounds nuw i8, ptr %9, i64 164
  store i32 0, ptr %i.rt, align 4, !tbaa !338
  %i.ru = getelementptr inbounds nuw i8, ptr %9, i64 168
  store i32 0, ptr %i.ru, align 8, !tbaa !339
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  %i.rv = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i8 1, ptr %i.rv, align 8, !tbaa !160
  %i.rw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr null, ptr %i.rw, align 8, !tbaa !161
  %i.rx = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %i.rx, align 4, !tbaa !162
  %i.ry = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.ry, align 8, !tbaa !163
  %i.rz = getelementptr inbounds nuw i8, ptr %10, i64 56
  store i8 1, ptr %i.rz, align 8, !tbaa !160
  %i.sa = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  store ptr null, ptr %i.sa, align 8, !tbaa !161
  %i.sb = getelementptr inbounds nuw i8, ptr %10, i64 36
  store i32 0, ptr %i.sb, align 4, !tbaa !162
  %i.sc = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 0, ptr %i.sc, align 8, !tbaa !163
  %i.sd = getelementptr inbounds nuw i8, ptr %10, i64 88
  store i8 1, ptr %i.sd, align 8, !tbaa !160
  %i.se = getelementptr inbounds nuw i8, ptr %10, i64 80
  store ptr null, ptr %i.se, align 8, !tbaa !161
  %i.sf = getelementptr inbounds nuw i8, ptr %10, i64 68
  store i32 0, ptr %i.sf, align 4, !tbaa !162
  %i.sg = getelementptr inbounds nuw i8, ptr %10, i64 72
  store i32 0, ptr %i.sg, align 8, !tbaa !163
  %i.sh = getelementptr inbounds nuw i8, ptr %10, i64 120
  store i8 1, ptr %i.sh, align 8, !tbaa !160
  %i.si = getelementptr inbounds nuw i8, ptr %10, i64 112
end_hunk_1
