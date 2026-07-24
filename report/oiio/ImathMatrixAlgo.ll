inline.NumInlined: 1149
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN9Imath_3_132procrustesRotationAndTranslationIfEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb:bb.a
  %i.ip = load float, ptr %i.io, align 4, !tbaa !40
  %i.iq = fpext float %i.ip to double
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.is = load float, ptr %i.ir, align 4, !tbaa !41
  %i.it = fpext float %i.is to double
  %i.iu = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !28
  %i.iw = fpext float %i.iv to double
  %i.ix = fsub double %i.iq, %i.il                ; 2 uses
  %i.iy = fsub double %i.it, %i.im                ; 2 uses
  %i.iz = fsub double %i.iw, %i.in                ; 2 uses
  %i.ja = fmul double %i.iy, %i.iy
  %i.jb = call double @llvm.fmuladd.f64(double %i.ix, double %i.ix, double %i.ja)
  %i.jc = call noundef double @llvm.fmuladd.f64(double %i.iz, double %i.iz, double %i.jb)
  %i.jd = fsub double %i.jc, %.sroa.8.0284        ; 2 uses
  %i.je = fadd double %.sroa.0110.0285, %i.jd     ; 3 uses
  %i.jf = fsub double %i.je, %.sroa.0110.0285
  %i.jg = fsub double %i.jf, %i.jd
  %i.jh = add nuw i64 %.079286, 1                 ; 2 uses
  %exitcond343.not = icmp eq i64 %i.jh, %4
  br i1 %exitcond343.not, label %.loopexit, label %.preheader220, !llvm.loop !42

.preheader221:                                    ; preds = %.preheader221.preheader, %.preheader221
  %.078283 = phi i64 [ %i.kf, %.preheader221 ], [ 0, %.preheader221.preheader ] ; 3 uses
  %.sroa.0110.1282 = phi double [ %i.kc, %.preheader221 ], [ 0.000000e+00, %.preheader221.preheader ] ; 2 uses
  %.sroa.8.1281 = phi double [ %i.ke, %.preheader221 ], [ 0.000000e+00, %.preheader221.preheader ]
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.078283
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !26
  %i.jk = fpext float %i.jj to double
  %i.jl = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.078283 ; 3 uses
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !40
  %i.jn = fpext float %i.jm to double
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !41
  %i.jq = fpext float %i.jp to double
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.js = load float, ptr %i.jr, align 4, !tbaa !28
  %i.jt = fpext float %i.js to double
  %i.ju = fsub double %i.jn, %i.ii                ; 2 uses
  %i.jv = fsub double %i.jq, %i.ij                ; 2 uses
  %i.jw = fsub double %i.jt, %i.ik                ; 2 uses
  %i.jx = fmul double %i.jv, %i.jv
  %i.jy = call double @llvm.fmuladd.f64(double %i.ju, double %i.ju, double %i.jx)
  %i.jz = call noundef double @llvm.fmuladd.f64(double %i.jw, double %i.jw, double %i.jy)
  %i.ka = fmul double %i.jz, %i.jk
  %i.kb = fsub double %i.ka, %.sroa.8.1281        ; 2 uses
  %i.kc = fadd double %.sroa.0110.1282, %i.kb     ; 3 uses
  %i.kd = fsub double %i.kc, %.sroa.0110.1282
  %i.ke = fsub double %i.kd, %i.kb
  %i.kf = add nuw i64 %.078283, 1                 ; 2 uses
  %exitcond341.not = icmp eq i64 %i.kf, %4
  br i1 %exitcond341.not, label %.loopexit, label %.preheader221, !llvm.loop !43

.loopexit:                                        ; preds = %.preheader221, %.preheader220
  %.sroa.0110.2 = phi double [ %i.je, %.preheader220 ], [ %i.kc, %.preheader221 ]
  %i.kg = load <2 x double>, ptr %6, align 16, !tbaa !7
  %i.kh = shufflevector <2 x double> %i.hf, <2 x double> %i.hy, <2 x i32> <i32 0, i32 2>
  %i.ki = fmul <2 x double> %i.kh, %i.kg          ; 2 uses
  %i.kj = extractelement <2 x double> %i.ki, i64 0 ; 2 uses
  %i.kk = fadd double %i.kj, 0.000000e+00         ; 3 uses
  %i.kl = fsub double %i.kk, %i.kj
  %i.km = extractelement <2 x double> %i.ki, i64 1
  %i.kn = fsub double %i.km, %i.kl                ; 2 uses
  %i.ko = fadd double %i.kk, %i.kn                ; 3 uses
  %i.kp = fsub double %i.ko, %i.kk
  %i.kq = fsub double %i.kp, %i.kn
  %i.kr = load double, ptr %i.bv, align 16, !tbaa !7
  %i.ks = extractelement <2 x double> %i.ib, i64 0
  %i.kt = fmul double %i.ks, %i.kr
  %i.ku = fsub double %i.kt, %i.kq                ; 2 uses
  %i.kv = fadd double %i.ko, %i.ku                ; 3 uses
  %i.kw = fsub double %i.kv, %i.ko
  %i.kx = fsub double %i.kw, %i.ku
  %i.ky = load double, ptr %i.bw, align 8, !tbaa !7
  %i.kz = extractelement <2 x double> %i.hf, i64 1
  %i.la = fmul double %i.kz, %i.ky
  %i.lb = fsub double %i.la, %i.kx                ; 2 uses
  %i.lc = fadd double %i.kv, %i.lb                ; 3 uses
  %i.ld = fsub double %i.lc, %i.kv
  %i.le = fsub double %i.ld, %i.lb
  %i.lf = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.lg = load double, ptr %i.lf, align 16, !tbaa !7
  %i.lh = extractelement <2 x double> %i.hy, i64 1
  %i.li = fmul double %i.lh, %i.lg
  %i.lj = fsub double %i.li, %i.le                ; 2 uses
  %i.lk = fadd double %i.lc, %i.lj                ; 3 uses
  %i.ll = fsub double %i.lk, %i.lc
  %i.lm = fsub double %i.ll, %i.lj
  %i.ln = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !7
  %i.lp = extractelement <2 x double> %i.ib, i64 1
  %i.lq = fmul double %i.lp, %i.lo
  %i.lr = fsub double %i.lq, %i.lm                ; 2 uses
  %i.ls = fadd double %i.lk, %i.lr                ; 3 uses
  %i.lt = fsub double %i.ls, %i.lk
  %i.lu = fsub double %i.lt, %i.lr
  %i.lv = load double, ptr %i.by, align 16, !tbaa !7
  %i.lw = extractelement <2 x double> %i.hm, i64 0
  %i.lx = fmul double %i.lw, %i.lv
  %i.ly = fsub double %i.lx, %i.lu                ; 2 uses
  %i.lz = fadd double %i.ls, %i.ly                ; 3 uses
  %i.ma = fsub double %i.lz, %i.ls
  %i.mb = fsub double %i.ma, %i.ly
  %i.mc = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.md = load double, ptr %i.mc, align 8, !tbaa !7
  %i.me = extractelement <2 x double> %i.ie, i64 0
  %i.mf = fmul double %i.me, %i.md
  %i.mg = fsub double %i.mf, %i.mb                ; 2 uses
  %i.mh = fadd double %i.lz, %i.mg                ; 2 uses
  %i.mi = fsub double %i.mh, %i.lz
  %i.mj = fsub double %i.mi, %i.mg
  %i.mk = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ml = load double, ptr %i.mk, align 16, !tbaa !7
  %i.mm = fmul double %i.ig, %i.ml
  %i.mn = fsub double %i.mm, %i.mj
  %i.mo = fadd double %i.mh, %i.mn
  %i.mp = fdiv double %i.mo, %.sroa.0110.2
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %.loopexit224
  %.080 = phi double [ %i.mp, %.loopexit ], [ 1.000000e+00, %.loopexit224 ] ; 7 uses
  %i.mq = extractelement <2 x double> %i.bs, i64 0
  %i.mr = fmul double %i.mq, %.080                ; 2 uses
  %i.ms = extractelement <2 x double> %i.bs, i64 1
  %i.mt = fmul double %i.ms, %.080                ; 2 uses
  %i.mu = extractelement <2 x double> %i.bu, i64 1
  %i.mv = fmul double %i.mu, %.080                ; 2 uses
  %i.mw = extractelement <2 x double> %i.ie, i64 0 ; 2 uses
  %i.mx = fmul double %i.mw, %i.mt
  %i.my = extractelement <2 x double> %i.hm, i64 0 ; 2 uses
  %i.mz = call double @llvm.fmuladd.f64(double %i.mr, double %i.my, double %i.mx)
  %i.na = call double @llvm.fmuladd.f64(double %i.mv, double %i.ig, double %i.mz)
  %i.nb = extractelement <2 x double> %i.bu, i64 0
  %i.nc = fsub double %i.nb, %i.na
  %i.nd = insertelement <2 x double> poison, double %.080, i64 0
  %i.ne = shufflevector <2 x double> %i.nd, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.nf = fmul <2 x double> %i.hf, %i.ne
  %i.ng = fmul double %i.my, %.080
  %i.nh = fmul <2 x double> %i.hy, %i.ne
  %i.ni = fmul double %i.mw, %.080
  %i.nj = fmul <2 x double> %i.ib, %i.ne
  %i.nk = fmul double %i.ig, %.080
  store <2 x double> %i.nf, ptr %0, align 8, !tbaa !7
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ng, ptr %i.nl, align 8, !tbaa !7
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.nm, align 8, !tbaa !7
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.nh, ptr %i.nn, align 8, !tbaa !7
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.ni, ptr %i.no, align 8, !tbaa !7
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double 0.000000e+00, ptr %i.np, align 8, !tbaa !7
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x double> %i.nj, ptr %i.nq, align 8, !tbaa !7
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.nk, ptr %i.nr, align 8, !tbaa !7
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double 0.000000e+00, ptr %i.ns, align 8, !tbaa !7
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.nu = insertelement <2 x double> poison, double %i.mt, i64 0
  %i.nv = shufflevector <2 x double> %i.nu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nw = fmul <2 x double> %i.hy, %i.nv
  %i.nx = insertelement <2 x double> poison, double %i.mr, i64 0
  %i.ny = shufflevector <2 x double> %i.nx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ny, <2 x double> %i.hf, <2 x double> %i.nw)
  %i.oa = insertelement <2 x double> poison, double %i.mv, i64 0
  %i.ob = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ob, <2 x double> %i.ib, <2 x double> %i.nz)
  %i.od = fsub <2 x double> %i.bt, %i.oc
  store <2 x double> %i.od, ptr %i.nt, align 8, !tbaa !7
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.nc, ptr %i.oe, align 8, !tbaa !7
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double 1.000000e+00, ptr %i.of, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_19jacobiSVDIdEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, double noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !7 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load <2 x double>, ptr %0, align 8, !tbaa !7 ; 3 uses
  %i.f = extractelement <2 x double> %i.e, i64 0  ; 2 uses
  %i.g = load double, ptr %i.a, align 8, !tbaa !7 ; 2 uses
  %i.h = load <2 x double>, ptr %i.d, align 8, !tbaa !7 ; 4 uses
  %i.i = extractelement <2 x double> %i.h, i64 0  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load <2 x double>, ptr %i.j, align 8, !tbaa !7 ; 4 uses
  %i.m = extractelement <2 x double> %i.l, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load <2 x double>, ptr %i.k, align 8, !tbaa !7 ; 4 uses
  %i.p = load double, ptr %i.n, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load double, ptr %i.q, align 8, !tbaa !7 ; 2 uses
  store double 1.000000e+00, ptr %1, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.t, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.v, align 8, !tbaa !7
  store double 1.000000e+00, ptr %3, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.x, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.z, align 8, !tbaa !7
  %i.aa = tail call noundef double @llvm.fabs.f64(double %i.g) ; 2 uses
  %6 = fcmp ogt double %i.aa, 0.000000e+00
  %.sroa.speculated28.i.i = select i1 %6, double %i.aa, double 0.000000e+00 ; 2 uses
  %i.ab = tail call noundef double @llvm.fabs.f64(double %i.c) ; 2 uses
  %i.ac = fcmp olt double %.sroa.speculated28.i.i, %i.ab
  %.sroa.speculated24.i.i = select i1 %i.ac, double %i.ab, double %.sroa.speculated28.i.i ; 2 uses
  %i.ad = tail call noundef double @llvm.fabs.f64(double %i.i) ; 2 uses
  %i.ae = fcmp olt double %.sroa.speculated24.i.i, %i.ad
  %.sroa.speculated20.i.i = select i1 %i.ae, double %i.ad, double %.sroa.speculated24.i.i ; 2 uses
  %i.af = tail call noundef double @llvm.fabs.f64(double %i.m) ; 2 uses
  %i.ag = fcmp olt double %.sroa.speculated20.i.i, %i.af
  %.sroa.speculated16.i.i = select i1 %i.ag, double %i.af, double %.sroa.speculated20.i.i ; 2 uses
  %i.ah = extractelement <2 x double> %i.o, i64 0
  %i.ai = tail call noundef double @llvm.fabs.f64(double %i.ah) ; 2 uses
  %i.aj = fcmp olt double %.sroa.speculated16.i.i, %i.ai
  %.sroa.speculated12.i.i = select i1 %i.aj, double %i.ai, double %.sroa.speculated16.i.i ; 2 uses
  %i.ak = tail call noundef double @llvm.fabs.f64(double %i.p) ; 2 uses
  %i.al = fcmp olt double %.sroa.speculated12.i.i, %i.ak
  %.sroa.speculated.i.i = select i1 %i.al, double %i.ak, double %.sroa.speculated12.i.i
  %i.am = fmul double %4, %.sroa.speculated.i.i   ; 2 uses
  %i.an = fcmp une double %i.am, 0.000000e+00
  %i.ao = insertelement <2 x double> %i.h, double %i.r, i64 0
  br i1 %i.an, label %.preheader129.i, label %.loopexit130.i

.preheader129.i:                                  ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ax = insertelement <2 x double> %i.l, double %i.c, i64 0
  %i.ay = shufflevector <2 x double> %i.o, <2 x double> %i.l, <2 x i32> <i32 1, i32 2>
  %i.az = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ba = insertelement <2 x double> %i.az, double %i.c, i64 0
  %i.bb = shufflevector <2 x double> %i.l, <2 x double> %i.o, <2 x i32> <i32 0, i32 3>
  %i.bc = shufflevector <2 x double> %i.h, <2 x double> %i.e, <2 x i32> <i32 0, i32 2>
  %i.bd = shufflevector <2 x double> %i.h, <2 x double> %i.e, <2 x i32> <i32 1, i32 3>
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.preheader129.i
  %.sroa.66.1 = phi double [ %i.r, %.preheader129.i ], [ %i.sq, %bb.h ] ; 7 uses
  %.sroa.0.1 = phi double [ %i.f, %.preheader129.i ], [ %i.sr, %bb.h ] ; 5 uses
  %i.be = phi double [ %i.i, %.preheader129.i ], [ %i.si, %bb.h ] ; 3 uses
  %i.bf = phi double [ %i.g, %.preheader129.i ], [ %i.se, %bb.h ] ; 5 uses
  %.082.i = phi i32 [ 0, %.preheader129.i ], [ %i.bn, %bb.h ] ; 2 uses
  %i.bg = phi <2 x double> [ %i.ax, %.preheader129.i ], [ %i.sa, %bb.h ]
  %i.bh = phi <2 x double> [ %i.ay, %.preheader129.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %i.bi = phi <2 x double> [ %i.ba, %.preheader129.i ], [ %i.sa, %bb.h ] ; 2 uses
  %i.bj = phi <2 x double> [ %i.bb, %.preheader129.i ], [ zeroinitializer, %bb.h ]
  %i.bk = phi <2 x double> [ %i.bc, %.preheader129.i ], [ %i.ss, %bb.h ] ; 2 uses
  %i.bl = phi <2 x double> [ %i.bd, %.preheader129.i ], [ %i.st, %bb.h ] ; 3 uses
  %i.bm = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bn = add nuw nsw i32 %.082.i, 1
  %i.bo = extractelement <2 x double> %i.bl, i64 0 ; 5 uses
  %i.bp = fadd double %i.bo, %.sroa.0.1           ; 2 uses
  %i.bq = fsub double %i.bf, %i.be                ; 2 uses
  %i.br = tail call noundef double @llvm.fabs.f64(double %i.bq)
  %i.bs = tail call noundef double @llvm.fabs.f64(double %i.bp)
  %i.bt = fmul double %4, %i.bs
  %i.bu = fcmp ugt double %i.br, %i.bt
  br i1 %i.bu, label %bb.c, label %.thread134.i.i

bb.c:                                             ; preds = %bb.b
  %i.bv = fdiv double %i.bp, %i.bq                ; 4 uses
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.bv, double 1.000000e+00)
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.bw)
  %i.bx = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.by = fcmp olt double %i.bv, 0.000000e+00
  %i.bz = fneg double %i.bx
  %.0120.i.i = select i1 %i.by, double %i.bz, double %i.bx ; 5 uses
  %i.ca = fmul double %i.bv, %.0120.i.i           ; 4 uses
  %i.cb = fadd double %i.be, %i.bf
  %i.cc = fsub double %i.bo, %.sroa.0.1
  %i.cd = fmul double %i.cc, %i.ca
  %i.ce = tail call double @llvm.fmuladd.f64(double %.0120.i.i, double %i.cb, double %i.cd) ; 2 uses
  %i.cf = fneg double %i.bo
  %i.cg = fmul double %.0120.i.i, %i.cf
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.bf, double %i.cg)
  %i.ci = fmul double %i.ch, 2.000000e+00         ; 2 uses
  %i.cj = tail call noundef double @llvm.fabs.f64(double %i.ci)
  %i.ck = tail call noundef double @llvm.fabs.f64(double %i.ce)
  %i.cl = fmul double %4, %i.ck
  %i.cm = fcmp ugt double %i.cj, %i.cl
  br i1 %i.cm, label %.thread.i.i, label %bb.d

.thread134.i.i:                                   ; preds = %bb.b
  %i.cn = fsub double %i.bo, %.sroa.0.1           ; 2 uses
  %i.co = fadd double %i.be, %i.bf                ; 2 uses
  %i.cp = tail call noundef double @llvm.fabs.f64(double %i.co)
  %i.cq = tail call noundef double @llvm.fabs.f64(double %i.cn)
  %i.cr = fmul double %4, %i.cq
  %i.cs = fcmp ugt double %i.cp, %i.cr
  br i1 %i.cs, label %.thread.i.i, label %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i.i:                                      ; preds = %.thread134.i.i, %bb.c
  %.0117146.i.i = phi double [ %i.cn, %.thread134.i.i ], [ %i.ce, %bb.c ]
  %.0118145.i.i = phi double [ %i.co, %.thread134.i.i ], [ %i.ci, %bb.c ]
  %.0119144.i.i = phi double [ 1.000000e+00, %.thread134.i.i ], [ %i.ca, %bb.c ]
  %.1121141.i.i = phi double [ 0.000000e+00, %.thread134.i.i ], [ %.0120.i.i, %bb.c ]
  %i.ct = fdiv double %.0117146.i.i, %.0118145.i.i ; 4 uses
  %i.cu = tail call noundef double @llvm.fabs.f64(double %i.ct)
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.ct, double 1.000000e+00)
  %sqrt133.i.i = tail call double @llvm.sqrt.f64(double %i.cv)
  %i.cw = fadd double %i.cu, %sqrt133.i.i
  %i.cx = fdiv double 1.000000e+00, %i.cw         ; 2 uses
  %i.cy = fcmp olt double %i.ct, 0.000000e+00
  %i.cz = fneg double %i.cx
  %.0124.i.i = select i1 %i.cy, double %i.cz, double %i.cx ; 3 uses
  %i.da = tail call double @llvm.fmuladd.f64(double %.0124.i.i, double %.0124.i.i, double 1.000000e+00)
  %sqrt132.i.i = tail call double @llvm.sqrt.f64(double %i.da)
  %i.db = fdiv double 1.000000e+00, %sqrt132.i.i  ; 2 uses
  %i.dc = fmul double %.0124.i.i, %i.db
  br label %bb.d

bb.d:                                             ; preds = %.thread.i.i, %bb.c
  %.0119142.i.i = phi double [ %.0119144.i.i, %.thread.i.i ], [ %i.ca, %bb.c ] ; 2 uses
  %.1121139.i.i = phi double [ %.1121141.i.i, %.thread.i.i ], [ %.0120.i.i, %bb.c ] ; 2 uses
  %.0122129.i.i = phi double [ %i.db, %.thread.i.i ], [ 1.000000e+00, %bb.c ] ; 4 uses
  %.0123128.i.i = phi double [ %i.dc, %.thread.i.i ], [ 0.000000e+00, %bb.c ] ; 6 uses
  %i.dd = fmul double %.1121139.i.i, %.0122129.i.i
  %i.de = tail call double @llvm.fmuladd.f64(double %.0123128.i.i, double %.0119142.i.i, double %i.dd) ; 6 uses
  %i.df = fneg double %.1121139.i.i
  %i.dg = fneg double %.0123128.i.i
  %i.dh = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x double> %i.bl, %i.di
  %i.dk = insertelement <2 x double> poison, double %.0122129.i.i, i64 0 ; 4 uses
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.dl, <2 x double> %i.dj) ; 2 uses
  %i.dn = insertelement <2 x double> %i.bl, double %i.df, i64 1
  %i.do = insertelement <2 x double> %i.dk, double %.0123128.i.i, i64 1 ; 2 uses
  %i.dp = fmul <2 x double> %i.dn, %i.do
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dr = insertelement <2 x double> poison, double %.0119142.i.i, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> %i.bk, <2 x i32> <i32 0, i32 2>
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.do, <2 x double> %i.dq) ; 6 uses
  %i.du = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %i.de, i64 1
  %i.dw = fneg <2 x double> %i.dm
  %i.dx = shufflevector <2 x double> %i.dk, <2 x double> %i.dw, <2 x i32> <i32 0, i32 2>
  %i.dy = fmul <2 x double> %i.dv, %i.dx
  %i.dz = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.ea = insertelement <2 x double> %i.dz, double %.sroa.0.1, i64 0
  %i.eb = insertelement <2 x double> %i.dm, double %.0123128.i.i, i64 0
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.eb, <2 x double> %i.dy) ; 2 uses
  %shift = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %i.dt
  %i.ed = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ee = extractelement <2 x double> %i.ec, i64 0
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.de, double %i.ee, double %i.ed)
  %i.eg = fneg <2 x double> %i.bj
  %i.eh = insertelement <2 x double> poison, double %i.de, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %.0123128.i.i, i64 1
  %i.ej = fmul <2 x double> %i.ei, %i.eg
  %i.ek = insertelement <2 x double> %i.dt, double %.0122129.i.i, i64 1
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.bi, <2 x double> %i.ej)
  %i.em = shufflevector <2 x double> %i.dk, <2 x double> %i.dt, <2 x i32> <i32 0, i32 2>
  %i.en = fmul <2 x double> %i.bh, %i.em
  %i.eo = insertelement <2 x double> poison, double %.0123128.i.i, i64 0 ; 2 uses
  %i.ep = insertelement <2 x double> %i.eo, double %i.de, i64 1
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> %i.bm, <2 x double> %i.en)
  %i.er = load double, ptr %1, align 8, !tbaa !7
  %i.es = load double, ptr %i.s, align 8, !tbaa !7 ; 2 uses
  %i.et = fneg double %i.es
  %i.eu = insertelement <2 x double> %i.dz, double %i.de, i64 0 ; 3 uses
  %i.ev = insertelement <2 x double> poison, double %i.et, i64 0
  %i.ew = insertelement <2 x double> %i.ev, double %i.es, i64 1
  %i.ex = fmul <2 x double> %i.eu, %i.ew
  %i.ey = insertelement <2 x double> %i.dt, double %i.de, i64 1 ; 3 uses
  %i.ez = insertelement <2 x double> poison, double %i.er, i64 0
  %i.fa = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.fa, <2 x double> %i.ex)
  store <2 x double> %i.fb, ptr %1, align 8, !tbaa !7
  %i.fc = load double, ptr %i.ap, align 8, !tbaa !7
  %i.fd = load double, ptr %i.t, align 8, !tbaa !7 ; 2 uses
  %i.fe = fneg double %i.fd
  %i.ff = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fg = insertelement <2 x double> %i.ff, double %i.fd, i64 1
  %i.fh = fmul <2 x double> %i.eu, %i.fg
  %i.fi = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.fj = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.fj, <2 x double> %i.fh)
  store <2 x double> %i.fk, ptr %i.ap, align 8, !tbaa !7
  %i.fl = load double, ptr %i.aq, align 8, !tbaa !7
  %i.fm = load double, ptr %i.ar, align 8, !tbaa !7 ; 2 uses
  %i.fn = fneg double %i.fm
  %i.fo = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %i.fm, i64 1
  %i.fq = fmul <2 x double> %i.eu, %i.fp
  %i.fr = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ft = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.fs, <2 x double> %i.fq)
  store <2 x double> %i.ft, ptr %i.aq, align 8, !tbaa !7
  %i.fu = load double, ptr %3, align 8, !tbaa !7
  %i.fv = load double, ptr %i.w, align 8, !tbaa !7 ; 2 uses
  %i.fw = fneg double %i.fv
  %i.fx = insertelement <2 x double> %i.eo, double %.0122129.i.i, i64 1 ; 6 uses
  %i.fy = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.fz = insertelement <2 x double> %i.fy, double %i.fv, i64 1
end_hunk_0
begin_hunk_1_@_ZN9Imath_3_19jacobiSVDIdEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b:bb.a
  store <2 x double> %i.md, ptr %i.y, align 8, !tbaa !7
  %i.me = insertelement <2 x double> poison, double %i.ll, i64 0
  %i.mf = insertelement <2 x double> %i.me, double %i.lp, i64 1
  %i.mg = fmul <2 x double> %i.ln, %i.mf
  %i.mh = shufflevector <2 x double> %i.mg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mi = insertelement <2 x double> poison, double %i.ls, i64 0
  %i.mj = insertelement <2 x double> %i.mi, double %i.lh, i64 1
  %i.mk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ln, <2 x double> %i.mj, <2 x double> %i.mh) ; 2 uses
  %i.ml = extractelement <2 x double> %i.mk, i64 1
  store double %i.ml, ptr %3, align 8, !tbaa !7
  %i.mm = extractelement <2 x double> %i.mk, i64 0
  store double %i.mm, ptr %i.z, align 8, !tbaa !7
  br label %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i85.i, %bb.f
  %.1130.i87.i = phi i1 [ true, %bb.f ], [ %.1130.i.i, %.thread134.i85.i ]
  %i.mn = phi <2 x double> [ %i.kc, %bb.f ], [ zeroinitializer, %.thread134.i85.i ] ; 3 uses
  %i.mo = phi <2 x double> [ %i.ke, %bb.f ], [ %i.hd, %.thread134.i85.i ] ; 3 uses
  %i.mp = phi <2 x double> [ %i.jx, %bb.f ], [ %i.im, %.thread134.i85.i ] ; 5 uses
  %i.mq = extractelement <2 x double> %i.mp, i64 1 ; 6 uses
  %i.mr = fadd double %.sroa.33.2, %i.mq          ; 2 uses
  %i.ms = extractelement <2 x double> %i.mo, i64 0 ; 5 uses
  %i.mt = extractelement <2 x double> %i.mo, i64 1 ; 5 uses
  %i.mu = fsub double %i.mt, %i.ms                ; 2 uses
  %i.mv = tail call noundef double @llvm.fabs.f64(double %i.mu)
  %i.mw = tail call noundef double @llvm.fabs.f64(double %i.mr)
  %i.mx = fmul double %4, %i.mw
  %i.my = fcmp ugt double %i.mv, %i.mx
  br i1 %i.my, label %bb.g, label %.thread134.i102.i

bb.g:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.mz = fdiv double %i.mr, %i.mu                ; 4 uses
  %i.na = tail call double @llvm.fmuladd.f64(double %i.mz, double %i.mz, double 1.000000e+00)
  %sqrt.i117.i = tail call double @llvm.sqrt.f64(double %i.na)
  %i.nb = fdiv double 1.000000e+00, %sqrt.i117.i  ; 2 uses
  %i.nc = fcmp olt double %i.mz, 0.000000e+00
  %i.nd = fneg double %i.nb
  %.0120.i118.i = select i1 %i.nc, double %i.nd, double %i.nb ; 5 uses
  %i.ne = fmul double %i.mz, %.0120.i118.i        ; 4 uses
  %i.nf = fadd double %i.ms, %i.mt
  %i.ng = fsub double %i.mq, %.sroa.33.2
  %i.nh = fmul double %i.ng, %i.ne
  %i.ni = tail call double @llvm.fmuladd.f64(double %.0120.i118.i, double %i.nf, double %i.nh) ; 2 uses
  %i.nj = fneg double %i.mq
  %i.nk = fmul double %.0120.i118.i, %i.nj
  %i.nl = tail call double @llvm.fmuladd.f64(double %i.ne, double %i.mt, double %i.nk)
  %i.nm = fmul double %i.nl, 2.000000e+00         ; 2 uses
  %i.nn = tail call noundef double @llvm.fabs.f64(double %i.nm)
  %i.no = tail call noundef double @llvm.fabs.f64(double %i.ni)
  %i.np = fmul double %4, %i.no
  %i.nq = fcmp ugt double %i.nn, %i.np
  br i1 %i.nq, label %.thread.i105.i, label %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i

.thread134.i102.i:                                ; preds = %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.nr = fsub double %i.mq, %.sroa.33.2          ; 2 uses
  %i.ns = fadd double %i.ms, %i.mt                ; 2 uses
  %i.nt = tail call noundef double @llvm.fabs.f64(double %i.ns)
  %i.nu = tail call noundef double @llvm.fabs.f64(double %i.nr)
  %i.nv = fmul double %4, %i.nu
  %i.nw = fcmp ugt double %i.nt, %i.nv
  br i1 %i.nw, label %.thread.i105.i, label %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i105.i:                                   ; preds = %.thread134.i102.i, %bb.g
  %.0117146.i106.i = phi double [ %i.nr, %.thread134.i102.i ], [ %i.ni, %bb.g ]
  %.0118145.i107.i = phi double [ %i.ns, %.thread134.i102.i ], [ %i.nm, %bb.g ]
  %.0119144.i108.i = phi double [ 1.000000e+00, %.thread134.i102.i ], [ %i.ne, %bb.g ]
  %.1121141.i109.i = phi double [ 0.000000e+00, %.thread134.i102.i ], [ %.0120.i118.i, %bb.g ]
  %i.nx = fdiv double %.0117146.i106.i, %.0118145.i107.i ; 4 uses
  %i.ny = tail call noundef double @llvm.fabs.f64(double %i.nx)
  %i.nz = tail call double @llvm.fmuladd.f64(double %i.nx, double %i.nx, double 1.000000e+00)
  %sqrt133.i110.i = tail call double @llvm.sqrt.f64(double %i.nz)
  %i.oa = fadd double %i.ny, %sqrt133.i110.i
  %i.ob = fdiv double 1.000000e+00, %i.oa         ; 2 uses
  %i.oc = fcmp olt double %i.nx, 0.000000e+00
  %i.od = fneg double %i.ob
  %.0124.i111.i = select i1 %i.oc, double %i.od, double %i.ob ; 3 uses
  %i.oe = tail call double @llvm.fmuladd.f64(double %.0124.i111.i, double %.0124.i111.i, double 1.000000e+00)
  %sqrt132.i112.i = tail call double @llvm.sqrt.f64(double %i.oe)
  %i.of = fdiv double 1.000000e+00, %sqrt132.i112.i ; 2 uses
  %i.og = fmul double %.0124.i111.i, %i.of
  br label %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i

_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i: ; preds = %.thread.i105.i, %bb.g
  %.0119142.i113.i = phi double [ %.0119144.i108.i, %.thread.i105.i ], [ %i.ne, %bb.g ]
  %.1121139.i114.i = phi double [ %.1121141.i109.i, %.thread.i105.i ], [ %.0120.i118.i, %bb.g ] ; 2 uses
  %.0122129.i115.i = phi double [ %i.of, %.thread.i105.i ], [ 1.000000e+00, %bb.g ] ; 5 uses
  %.0123128.i116.i = phi double [ %i.og, %.thread.i105.i ], [ 0.000000e+00, %bb.g ] ; 4 uses
  %i.oh = fneg double %.1121139.i114.i
  %i.oi = fneg double %.0123128.i116.i            ; 2 uses
  %i.oj = fmul double %i.mq, %i.oi
  %i.ok = tail call double @llvm.fmuladd.f64(double %i.ms, double %.0122129.i115.i, double %i.oj)
  %i.ol = fneg double %i.ok
  %i.om = fmul double %i.mq, %.0122129.i115.i
  %i.on = fmul double %.1121139.i114.i, %.0122129.i115.i
  %i.oo = fmul double %i.mt, %i.oi
  %i.op = insertelement <2 x double> poison, double %.0119142.i113.i, i64 0
  %i.oq = insertelement <2 x double> %i.op, double %.sroa.33.2, i64 1 ; 2 uses
  %i.or = insertelement <2 x double> poison, double %.0123128.i116.i, i64 0
  %i.os = insertelement <2 x double> %i.or, double %.0122129.i115.i, i64 1 ; 9 uses
  %i.ot = insertelement <2 x double> poison, double %i.on, i64 0
  %i.ou = insertelement <2 x double> %i.ot, double %i.oo, i64 1
  %i.ov = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oq, <2 x double> %i.os, <2 x double> %i.ou) ; 4 uses
  %i.ow = insertelement <2 x double> %i.mo, double %i.oh, i64 0
  %i.ox = fmul <2 x double> %i.os, %i.ow
  %i.oy = shufflevector <2 x double> %i.os, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.oz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oq, <2 x double> %i.oy, <2 x double> %i.ox) ; 4 uses
  %i.pa = shufflevector <2 x double> %i.oz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.pb = tail call double @llvm.fmuladd.f64(double %i.ms, double %.0123128.i116.i, double %i.om)
  %i.pc = shufflevector <2 x double> %i.ov, <2 x double> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.pd = insertelement <2 x double> %i.pc, double %i.pb, i64 0
  %i.pe = insertelement <2 x double> %i.oz, double %i.ol, i64 1
  %i.pf = fmul <2 x double> %i.pd, %i.pe
  %i.pg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ov, <2 x double> %i.pa, <2 x double> %i.pf)
  %i.ph = insertelement <2 x double> %i.pc, double %.0123128.i116.i, i64 0 ; 2 uses
  %i.pi = fmul <2 x double> %i.ph, splat (double -0.000000e+00)
  %i.pj = insertelement <2 x double> %i.pa, double %.0122129.i115.i, i64 0 ; 2 uses
  %i.pk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pj, <2 x double> %i.mn, <2 x double> %i.pi)
  %i.pl = fmul <2 x double> %i.pj, zeroinitializer
  %i.pm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ph, <2 x double> %i.mn, <2 x double> %i.pl)
  %i.pn = load double, ptr %i.s, align 8, !tbaa !7
  %i.po = load double, ptr %i.av, align 8, !tbaa !7 ; 2 uses
  %i.pp = fneg double %i.po
  %i.pq = shufflevector <2 x double> %i.ov, <2 x double> %i.oz, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.pr = insertelement <2 x double> poison, double %i.pp, i64 0
  %i.ps = insertelement <2 x double> %i.pr, double %i.po, i64 1
  %i.pt = fmul <2 x double> %i.pq, %i.ps
  %i.pu = shufflevector <2 x double> %i.oz, <2 x double> %i.ov, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.pv = insertelement <2 x double> poison, double %i.pn, i64 0
  %i.pw = shufflevector <2 x double> %i.pv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.px = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pu, <2 x double> %i.pw, <2 x double> %i.pt)
  store <2 x double> %i.px, ptr %i.s, align 8, !tbaa !7
  %i.py = load double, ptr %i.t, align 8, !tbaa !7
  %i.pz = load double, ptr %i.u, align 8, !tbaa !7 ; 2 uses
  %i.qa = fneg double %i.pz
  %i.qb = insertelement <2 x double> poison, double %i.qa, i64 0
  %i.qc = insertelement <2 x double> %i.qb, double %i.pz, i64 1
  %i.qd = fmul <2 x double> %i.pq, %i.qc
  %i.qe = insertelement <2 x double> poison, double %i.py, i64 0
  %i.qf = shufflevector <2 x double> %i.qe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pu, <2 x double> %i.qf, <2 x double> %i.qd)
  store <2 x double> %i.qg, ptr %i.t, align 8, !tbaa !7
  %i.qh = load double, ptr %i.ar, align 8, !tbaa !7
  %i.qi = load double, ptr %i.v, align 8, !tbaa !7 ; 2 uses
  %i.qj = fneg double %i.qi
  %i.qk = insertelement <2 x double> poison, double %i.qj, i64 0
  %i.ql = insertelement <2 x double> %i.qk, double %i.qi, i64 1
  %i.qm = fmul <2 x double> %i.pq, %i.ql
  %i.qn = insertelement <2 x double> poison, double %i.qh, i64 0
  %i.qo = shufflevector <2 x double> %i.qn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pu, <2 x double> %i.qo, <2 x double> %i.qm)
  store <2 x double> %i.qp, ptr %i.ar, align 8, !tbaa !7
  %i.qq = load double, ptr %i.w, align 8, !tbaa !7
  %i.qr = load double, ptr %i.aw, align 8, !tbaa !7 ; 2 uses
  %i.qs = fneg double %i.qr
  %i.qt = insertelement <2 x double> poison, double %i.qs, i64 0
  %i.qu = insertelement <2 x double> %i.qt, double %i.qr, i64 1
  %i.qv = fmul <2 x double> %i.os, %i.qu
  %i.qw = shufflevector <2 x double> %i.qv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.qx = insertelement <2 x double> poison, double %i.qq, i64 0
  %i.qy = shufflevector <2 x double> %i.qx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.os, <2 x double> %i.qy, <2 x double> %i.qw)
  %i.ra = shufflevector <2 x double> %i.qz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ra, ptr %i.w, align 8, !tbaa !7
  %i.rb = load double, ptr %i.x, align 8, !tbaa !7
  %i.rc = load double, ptr %i.y, align 8, !tbaa !7 ; 2 uses
  %i.rd = fneg double %i.rc
  %i.re = insertelement <2 x double> poison, double %i.rd, i64 0
  %i.rf = insertelement <2 x double> %i.re, double %i.rc, i64 1
  %i.rg = fmul <2 x double> %i.os, %i.rf
  %i.rh = shufflevector <2 x double> %i.rg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ri = insertelement <2 x double> poison, double %i.rb, i64 0
  %i.rj = shufflevector <2 x double> %i.ri, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.os, <2 x double> %i.rj, <2 x double> %i.rh)
  %i.rl = shufflevector <2 x double> %i.rk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rl, ptr %i.x, align 8, !tbaa !7
  %i.rm = load double, ptr %i.au, align 8, !tbaa !7
  %i.rn = load double, ptr %i.z, align 8, !tbaa !7 ; 2 uses
  %i.ro = fneg double %i.rn
  %i.rp = insertelement <2 x double> poison, double %i.ro, i64 0
  %i.rq = insertelement <2 x double> %i.rp, double %i.rn, i64 1
  %i.rr = fmul <2 x double> %i.os, %i.rq
  %i.rs = shufflevector <2 x double> %i.rr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rt = insertelement <2 x double> poison, double %i.rm, i64 0
  %i.ru = shufflevector <2 x double> %i.rt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.os, <2 x double> %i.ru, <2 x double> %i.rs)
  %i.rw = shufflevector <2 x double> %i.rv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rw, ptr %i.au, align 8, !tbaa !7
  br label %bb.h

_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i102.i
  %i.rx = shufflevector <2 x double> %i.mp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ry = insertelement <2 x double> %i.rx, double %.sroa.33.2, i64 1 ; 2 uses
  br i1 %.1130.i87.i, label %bb.h, label %.loopexit130.i.loopexit.split.loop.exit

bb.h:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i, %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i
  %i.rz = phi <2 x double> [ %i.pg, %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ %i.ry, %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 3 uses
  %i.sa = phi <2 x double> [ %i.pm, %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ zeroinitializer, %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 4 uses
  %i.sb = phi <2 x double> [ %i.pk, %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ %i.mn, %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 4 uses
  %i.sc = extractelement <2 x double> %i.sa, i64 1
  %i.sd = extractelement <2 x double> %i.sa, i64 0
  %i.se = extractelement <2 x double> %i.sb, i64 0 ; 2 uses
  %i.sf = tail call noundef double @llvm.fabs.f64(double %i.se) ; 2 uses
  %7 = fcmp ogt double %i.sf, 0.000000e+00
  %.sroa.speculated28.i119.i = select i1 %7, double %i.sf, double 0.000000e+00 ; 2 uses
  %i.sg = tail call noundef double @llvm.fabs.f64(double %i.sd) ; 2 uses
  %i.sh = fcmp olt double %.sroa.speculated28.i119.i, %i.sg
  %.sroa.speculated24.i120.i = select i1 %i.sh, double %i.sg, double %.sroa.speculated28.i119.i ; 2 uses
  %i.si = extractelement <2 x double> %i.sb, i64 1 ; 2 uses
  %i.sj = tail call noundef double @llvm.fabs.f64(double %i.si) ; 2 uses
  %i.sk = fcmp olt double %.sroa.speculated24.i120.i, %i.sj
  %.sroa.speculated20.i121.i = select i1 %i.sk, double %i.sj, double %.sroa.speculated24.i120.i ; 2 uses
  %i.sl = tail call noundef double @llvm.fabs.f64(double %i.sc) ; 2 uses
  %i.sm = fcmp olt double %.sroa.speculated20.i121.i, %i.sl
  %.sroa.speculated12.i123.i = select i1 %i.sm, double %i.sl, double %.sroa.speculated20.i121.i
  %i.sn = fcmp ogt double %.sroa.speculated12.i123.i, %i.am
  %i.so = icmp samesign ult i32 %.082.i, 19
  %i.sp = select i1 %i.sn, i1 %i.so, i1 false
  %i.sq = extractelement <2 x double> %i.rz, i64 0
  %i.sr = extractelement <2 x double> %i.mp, i64 0 ; 2 uses
  %i.ss = shufflevector <2 x double> %i.sb, <2 x double> %i.mp, <2 x i32> <i32 1, i32 2>
  %i.st = shufflevector <2 x double> %i.rz, <2 x double> %i.sb, <2 x i32> <i32 1, i32 2>
  br i1 %i.sp, label %bb.b, label %.loopexit130.i, !llvm.loop !44

.loopexit130.i.loopexit.split.loop.exit:          ; preds = %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.su = extractelement <2 x double> %i.mp, i64 0
  br label %.loopexit130.i

.loopexit130.i:                                   ; preds = %.loopexit130.i.loopexit.split.loop.exit, %bb.h, %bb.a
  %.sroa.0.0 = phi double [ %i.f, %bb.a ], [ %i.su, %.loopexit130.i.loopexit.split.loop.exit ], [ %i.sr, %bb.h ] ; 3 uses
  %i.sv = phi <2 x double> [ %i.ao, %bb.a ], [ %i.ry, %.loopexit130.i.loopexit.split.loop.exit ], [ %i.rz, %bb.h ] ; 2 uses
  store double %.sroa.0.0, ptr %2, align 8, !tbaa !22
  %i.sw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.sy = shufflevector <2 x double> %i.sv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.sy, ptr %i.sw, align 8, !tbaa !7
  %i.sz = fcmp olt double %.sroa.0.0, 0.000000e+00
  %i.ta = extractelement <2 x double> %i.sv, i64 1
  br i1 %i.sz, label %.loopexit.loopexit.i, label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.loopexit130.i
  %i.tb = fneg double %.sroa.0.0
  store double %i.tb, ptr %2, align 8, !tbaa !7
  %i.tc = load double, ptr %1, align 8, !tbaa !7
  %i.td = fneg double %i.tc
  store double %i.td, ptr %1, align 8, !tbaa !7
  %gep.1.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.te = load double, ptr %gep.1.i, align 8, !tbaa !7
  %i.tf = fneg double %i.te
  store double %i.tf, ptr %gep.1.i, align 8, !tbaa !7
  %gep.2.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.tg = load double, ptr %gep.2.i, align 8, !tbaa !7
  %i.th = fneg double %i.tg
  store double %i.th, ptr %gep.2.i, align 8, !tbaa !7
  %.pre153.i = load double, ptr %i.sw, align 8, !tbaa !7
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.loopexit130.i
  %i.ti = phi double [ %.pre153.i, %.loopexit.loopexit.i ], [ %i.ta, %.loopexit130.i ] ; 2 uses
  %i.tj = fcmp olt double %i.ti, 0.000000e+00
  br i1 %i.tj, label %.loopexit.loopexit.1.i, label %.loopexit.1.i

.loopexit.loopexit.1.i:                           ; preds = %.loopexit.i
  %i.tk = fneg double %i.ti
  store double %i.tk, ptr %i.sw, align 8, !tbaa !7
  %i.tl = load double, ptr %i.s, align 8, !tbaa !7
  %i.tm = fneg double %i.tl
  store double %i.tm, ptr %i.s, align 8, !tbaa !7
  %i.tn = load double, ptr %i.t, align 8, !tbaa !7
  %i.to = fneg double %i.tn
  store double %i.to, ptr %i.t, align 8, !tbaa !7
  %gep.2.1.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.tp = load double, ptr %gep.2.1.i, align 8, !tbaa !7
  %i.tq = fneg double %i.tp
  store double %i.tq, ptr %gep.2.1.i, align 8, !tbaa !7
  br label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %.loopexit.loopexit.1.i, %.loopexit.i
  %i.tr = load double, ptr %i.sx, align 8, !tbaa !7 ; 2 uses
  %i.ts = fcmp olt double %i.tr, 0.000000e+00
  br i1 %i.ts, label %.loopexit.loopexit.2.i, label %.lr.ph.preheader.i

.loopexit.loopexit.2.i:                           ; preds = %.loopexit.1.i
  %i.tt = fneg double %i.tr
  store double %i.tt, ptr %i.sx, align 8, !tbaa !7
  %invariant.gep.2.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.tu = load double, ptr %invariant.gep.2.i, align 8, !tbaa !7
  %i.tv = fneg double %i.tu
  store double %i.tv, ptr %invariant.gep.2.i, align 8, !tbaa !7
  %i.tw = load double, ptr %i.u, align 8, !tbaa !7
  %i.tx = fneg double %i.tw
  store double %i.tx, ptr %i.u, align 8, !tbaa !7
  %i.ty = load double, ptr %i.v, align 8, !tbaa !7
  %i.tz = fneg double %i.ty
  store double %i.tz, ptr %i.v, align 8, !tbaa !7
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit.loopexit.2.i, %.loopexit.1.i
  %i.ua = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.ue = load double, ptr %2, align 8, !tbaa !7  ; 2 uses
  %i.uf = load double, ptr %i.sw, align 8, !tbaa !7 ; 3 uses
  %i.ug = fcmp olt double %i.ue, %i.uf
  br i1 %i.ug, label %bb.j, label %.lr.ph.1145.i

.lr.ph.preheader.1.i:                             ; preds = %bb.k, %.lr.ph.1145.i
  %i.uh = phi double [ %.pre, %bb.k ], [ %i.vi, %.lr.ph.1145.i ] ; 2 uses
  %i.ui = load double, ptr %2, align 8, !tbaa !7  ; 2 uses
  %i.uj = fcmp olt double %i.ui, %i.uh
  br i1 %i.uj, label %bb.i, label %._crit_edge.1.i

bb.i:                                             ; preds = %.lr.ph.preheader.1.i
  store double %i.uh, ptr %2, align 8, !tbaa !7
  store double %i.ui, ptr %i.sw, align 8, !tbaa !7
  %i.uk = load <2 x double>, ptr %1, align 8, !tbaa !7
  %i.ul = shufflevector <2 x double> %i.uk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ul, ptr %1, align 8, !tbaa !7
  %i.um = load <2 x double>, ptr %i.ua, align 8, !tbaa !7
  %i.un = shufflevector <2 x double> %i.um, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.un, ptr %i.ua, align 8, !tbaa !7
  %i.uo = load <2 x double>, ptr %i.ub, align 8, !tbaa !7
  %i.up = shufflevector <2 x double> %i.uo, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.up, ptr %i.ub, align 8, !tbaa !7
  %i.uq = load <2 x double>, ptr %3, align 8, !tbaa !7
  %i.ur = shufflevector <2 x double> %i.uq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ur, ptr %3, align 8, !tbaa !7
  %i.us = load <2 x double>, ptr %i.uc, align 8, !tbaa !7
  %i.ut = shufflevector <2 x double> %i.us, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ut, ptr %i.uc, align 8, !tbaa !7
  %i.uu = load <2 x double>, ptr %i.ud, align 8, !tbaa !7
  %i.uv = shufflevector <2 x double> %i.uu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.uv, ptr %i.ud, align 8, !tbaa !7
  br label %._crit_edge.1.i

._crit_edge.1.i:                                  ; preds = %bb.i, %.lr.ph.preheader.1.i
  br i1 %5, label %bb.l, label %_ZN9Imath_3_112_GLOBAL__N_117twoSidedJacobiSVDIdEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit

bb.j:                                             ; preds = %.lr.ph.preheader.i
  store double %i.uf, ptr %2, align 8, !tbaa !7
  store double %i.ue, ptr %i.sw, align 8, !tbaa !7
  %i.uw = load <2 x double>, ptr %1, align 8, !tbaa !7
  %i.ux = shufflevector <2 x double> %i.uw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ux, ptr %1, align 8, !tbaa !7
  %i.uy = load <2 x double>, ptr %i.ua, align 8, !tbaa !7
  %i.uz = shufflevector <2 x double> %i.uy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.uz, ptr %i.ua, align 8, !tbaa !7
  %i.va = load <2 x double>, ptr %i.ub, align 8, !tbaa !7
  %i.vb = shufflevector <2 x double> %i.va, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vb, ptr %i.ub, align 8, !tbaa !7
  %i.vc = load <2 x double>, ptr %3, align 8, !tbaa !7
  %i.vd = shufflevector <2 x double> %i.vc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vd, ptr %3, align 8, !tbaa !7
  %i.ve = load <2 x double>, ptr %i.uc, align 8, !tbaa !7
  %i.vf = shufflevector <2 x double> %i.ve, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vf, ptr %i.uc, align 8, !tbaa !7
  %i.vg = load <2 x double>, ptr %i.ud, align 8, !tbaa !7
  %i.vh = shufflevector <2 x double> %i.vg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vh, ptr %i.ud, align 8, !tbaa !7
  %.pre154.i = load double, ptr %i.sw, align 8, !tbaa !7
  br label %.lr.ph.1145.i

.lr.ph.1145.i:                                    ; preds = %bb.j, %.lr.ph.preheader.i
  %i.vi = phi double [ %i.uf, %.lr.ph.preheader.i ], [ %.pre154.i, %bb.j ] ; 3 uses
  %i.vj = load double, ptr %i.sx, align 8, !tbaa !7 ; 2 uses
  %i.vk = fcmp olt double %i.vi, %i.vj
  br i1 %i.vk, label %bb.k, label %.lr.ph.preheader.1.i

bb.k:                                             ; preds = %.lr.ph.1145.i
  store double %i.vj, ptr %i.sw, align 8, !tbaa !7
  store double %i.vi, ptr %i.sx, align 8, !tbaa !7
  %i.vl = load <2 x double>, ptr %i.s, align 8, !tbaa !7
  %i.vm = shufflevector <2 x double> %i.vl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vm, ptr %i.s, align 8, !tbaa !7
  %i.vn = load <2 x double>, ptr %i.t, align 8, !tbaa !7
  %i.vo = shufflevector <2 x double> %i.vn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vo, ptr %i.t, align 8, !tbaa !7
  %i.vp = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.vq = load <2 x double>, ptr %i.vp, align 8, !tbaa !7
  %i.vr = shufflevector <2 x double> %i.vq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vr, ptr %i.vp, align 8, !tbaa !7
  %i.vs = load <2 x double>, ptr %i.w, align 8, !tbaa !7
  %i.vt = shufflevector <2 x double> %i.vs, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vt, ptr %i.w, align 8, !tbaa !7
  %i.vu = load <2 x double>, ptr %i.x, align 8, !tbaa !7
  %i.vv = shufflevector <2 x double> %i.vu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vv, ptr %i.x, align 8, !tbaa !7
  %i.vw = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.vx = load <2 x double>, ptr %i.vw, align 8, !tbaa !7
  %i.vy = shufflevector <2 x double> %i.vx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vy, ptr %i.vw, align 8, !tbaa !7
  %.pre = load double, ptr %i.sw, align 8, !tbaa !7
  br label %.lr.ph.preheader.1.i

bb.l:                                             ; preds = %._crit_edge.1.i
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.wa = load double, ptr %i.ub, align 8, !tbaa !7 ; 2 uses
  %i.wb = load double, ptr %i.ua, align 8, !tbaa !7 ; 2 uses
  %i.wc = load <2 x double>, ptr %i.t, align 8, !tbaa !7 ; 4 uses
  %i.wd = load <2 x double>, ptr %i.vz, align 8, !tbaa !7 ; 3 uses
  %i.we = fneg <2 x double> %i.wd                 ; 2 uses
  %i.wf = shufflevector <2 x double> %i.wc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.wg = insertelement <2 x double> %i.wf, double %i.wb, i64 1
  %i.wh = fmul <2 x double> %i.wg, %i.we
  %i.wi = shufflevector <2 x double> %i.wd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.wj = insertelement <2 x double> %i.wi, double %i.wa, i64 1
  %i.wk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wc, <2 x double> %i.wj, <2 x double> %i.wh) ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.wm = load double, ptr %i.wl, align 8, !tbaa !7 ; 2 uses
  %i.wn = fneg double %i.wa
  %i.wo = load <2 x double>, ptr %1, align 8, !tbaa !7 ; 2 uses
  %i.wp = shufflevector <2 x double> %i.wo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.wq = insertelement <2 x double> %i.wp, double %i.wn, i64 1
  %i.wr = shufflevector <2 x double> %i.wk, <2 x double> %i.wc, <2 x i32> <i32 1, i32 2>
  %i.ws = fmul <2 x double> %i.wq, %i.wr
  %i.wt = insertelement <2 x double> %i.wo, double %i.wb, i64 1
  %i.wu = shufflevector <2 x double> %i.wk, <2 x double> %i.wd, <2 x i32> <i32 0, i32 2>
  %i.wv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wt, <2 x double> %i.wu, <2 x double> %i.ws) ; 2 uses
  %i.ww = extractelement <2 x double> %i.wv, i64 0
  %i.wx = extractelement <2 x double> %i.wv, i64 1
  %i.wy = tail call noundef double @llvm.fmuladd.f64(double %i.wm, double %i.wx, double %i.ww)
  %i.wz = fcmp olt double %i.wy, 0.000000e+00
  br i1 %i.wz, label %.preheader126.preheader.i, label %bb.m

.preheader126.preheader.i:                        ; preds = %bb.l
  %i.xa = fneg double %i.wm
  store double %i.xa, ptr %i.wl, align 8, !tbaa !7
  %i.xb = extractelement <2 x double> %i.wc, i64 1
  %i.xc = fneg double %i.xb
  store double %i.xc, ptr %i.u, align 8, !tbaa !7
  %i.xd = extractelement <2 x double> %i.we, i64 1
  store double %i.xd, ptr %i.v, align 8, !tbaa !7
  %i.xe = load double, ptr %i.sx, align 8, !tbaa !9
  %i.xf = fneg double %i.xe
  store double %i.xf, ptr %i.sx, align 8, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %.preheader126.preheader.i, %bb.l
  %i.xg = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.xh = load double, ptr %i.ud, align 8, !tbaa !7 ; 2 uses
  %i.xi = load double, ptr %i.uc, align 8, !tbaa !7 ; 2 uses
  %i.xj = load <2 x double>, ptr %i.x, align 8, !tbaa !7 ; 4 uses
  %i.xk = load <2 x double>, ptr %i.xg, align 8, !tbaa !7 ; 3 uses
  %i.xl = fneg <2 x double> %i.xk                 ; 2 uses
  %i.xm = shufflevector <2 x double> %i.xj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.xn = insertelement <2 x double> %i.xm, double %i.xi, i64 1
  %i.xo = fmul <2 x double> %i.xn, %i.xl
  %i.xp = shufflevector <2 x double> %i.xk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.xq = insertelement <2 x double> %i.xp, double %i.xh, i64 1
  %i.xr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xj, <2 x double> %i.xq, <2 x double> %i.xo) ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.xt = load double, ptr %i.xs, align 8, !tbaa !7 ; 2 uses
  %i.xu = fneg double %i.xh
  %i.xv = load <2 x double>, ptr %3, align 8, !tbaa !7 ; 2 uses
  %i.xw = shufflevector <2 x double> %i.xv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.xx = insertelement <2 x double> %i.xw, double %i.xu, i64 1
  %i.xy = shufflevector <2 x double> %i.xr, <2 x double> %i.xj, <2 x i32> <i32 1, i32 2>
  %i.xz = fmul <2 x double> %i.xx, %i.xy
  %i.ya = insertelement <2 x double> %i.xv, double %i.xi, i64 1
  %i.yb = shufflevector <2 x double> %i.xr, <2 x double> %i.xk, <2 x i32> <i32 0, i32 2>
  %i.yc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ya, <2 x double> %i.yb, <2 x double> %i.xz) ; 2 uses
  %i.yd = extractelement <2 x double> %i.yc, i64 0
  %i.ye = extractelement <2 x double> %i.yc, i64 1
  %i.yf = tail call noundef double @llvm.fmuladd.f64(double %i.xt, double %i.ye, double %i.yd)
  %i.yg = fcmp olt double %i.yf, 0.000000e+00
  br i1 %i.yg, label %.preheader.preheader.i, label %_ZN9Imath_3_112_GLOBAL__N_117twoSidedJacobiSVDIdEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit

.preheader.preheader.i:                           ; preds = %bb.m
  %i.yh = fneg double %i.xt
  store double %i.yh, ptr %i.xs, align 8, !tbaa !7
  %i.yi = extractelement <2 x double> %i.xj, i64 1
  %i.yj = fneg double %i.yi
  store double %i.yj, ptr %i.y, align 8, !tbaa !7
  %i.yk = extractelement <2 x double> %i.xl, i64 1
  store double %i.yk, ptr %i.z, align 8, !tbaa !7
  %i.yl = load double, ptr %i.sx, align 8, !tbaa !9
  %i.ym = fneg double %i.yl
  store double %i.ym, ptr %i.sx, align 8, !tbaa !9
  br label %_ZN9Imath_3_112_GLOBAL__N_117twoSidedJacobiSVDIdEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit

_ZN9Imath_3_112_GLOBAL__N_117twoSidedJacobiSVDIdEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit: ; preds = %._crit_edge.1.i, %bb.m, %.preheader.preheader.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_19jacobiSVDIfEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(36) %3, float noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !26   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !26 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !26 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load float, ptr %i.f, align 4, !tbaa !26 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load float, ptr %i.h, align 4, !tbaa !26 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load <2 x float>, ptr %i.j, align 4, !tbaa !26 ; 3 uses
  %i.m = extractelement <2 x float> %i.l, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load <2 x float>, ptr %i.k, align 4, !tbaa !26 ; 3 uses
  %i.p = load float, ptr %i.n, align 4, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load float, ptr %i.q, align 4, !tbaa !26 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 10 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %1, align 4, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 8 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.v, align 4, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  store float 1.000000e+00, ptr %i.z, align 4, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 8 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %3, align 4, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 6 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ad, align 4, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  store float 1.000000e+00, ptr %i.ah, align 4, !tbaa !26
  %i.ai = tail call noundef float @llvm.fabs.f32(float %i.c) ; 2 uses
  %6 = fcmp ogt float %i.ai, 0.000000e+00
  %.sroa.speculated28.i.i = select i1 %6, float %i.ai, float 0.000000e+00 ; 2 uses
  %i.aj = tail call noundef float @llvm.fabs.f32(float %i.e) ; 2 uses
  %i.ak = fcmp olt float %.sroa.speculated28.i.i, %i.aj
  %.sroa.speculated24.i.i = select i1 %i.ak, float %i.aj, float %.sroa.speculated28.i.i ; 2 uses
  %i.al = tail call noundef float @llvm.fabs.f32(float %i.g) ; 2 uses
  %i.am = fcmp olt float %.sroa.speculated24.i.i, %i.al
  %.sroa.speculated20.i.i = select i1 %i.am, float %i.al, float %.sroa.speculated24.i.i ; 2 uses
  %i.an = tail call noundef float @llvm.fabs.f32(float %i.m) ; 2 uses
  %i.ao = fcmp olt float %.sroa.speculated20.i.i, %i.an
  %.sroa.speculated16.i.i = select i1 %i.ao, float %i.an, float %.sroa.speculated20.i.i ; 2 uses
  %i.ap = extractelement <2 x float> %i.o, i64 0
  %i.aq = tail call noundef float @llvm.fabs.f32(float %i.ap) ; 2 uses
  %i.ar = fcmp olt float %.sroa.speculated16.i.i, %i.aq
  %.sroa.speculated12.i.i = select i1 %i.ar, float %i.aq, float %.sroa.speculated16.i.i ; 2 uses
  %i.as = tail call noundef float @llvm.fabs.f32(float %i.p) ; 2 uses
  %i.at = fcmp olt float %.sroa.speculated12.i.i, %i.as
  %.sroa.speculated.i.i = select i1 %i.at, float %i.as, float %.sroa.speculated12.i.i
  %i.au = fmul float %4, %.sroa.speculated.i.i    ; 2 uses
  %i.av = fcmp une float %i.au, 0.000000e+00
  %i.aw = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.i, i64 1
  br i1 %i.av, label %.preheader129.i.preheader, label %.loopexit130.i

.preheader129.i.preheader:                        ; preds = %bb.a
  %i.ay = insertelement <2 x float> %i.o, float %i.e, i64 1
  %i.az = shufflevector <2 x float> %i.o, <2 x float> %i.l, <2 x i32> <i32 1, i32 2>
  %i.ba = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bb = insertelement <2 x float> %i.ba, float %i.e, i64 1
  br label %.preheader129.i

.preheader129.i:                                  ; preds = %.preheader129.i.preheader, %bb.g
  %.sroa.66.1 = phi float [ %i.ss, %bb.g ], [ %i.r, %.preheader129.i.preheader ] ; 6 uses
  %.sroa.33.1 = phi float [ %i.st, %bb.g ], [ %i.i, %.preheader129.i.preheader ] ; 7 uses
  %.sroa.0.1 = phi float [ %i.sv, %bb.g ], [ %i.a, %.preheader129.i.preheader ] ; 6 uses
  %i.bc = phi float [ %i.sk, %bb.g ], [ %i.g, %.preheader129.i.preheader ] ; 5 uses
  %i.bd = phi float [ %i.sg, %bb.g ], [ %i.c, %.preheader129.i.preheader ] ; 6 uses
  %.082.i = phi i32 [ %i.bh, %bb.g ], [ 0, %.preheader129.i.preheader ] ; 2 uses
  %i.be = phi <2 x float> [ %i.su, %bb.g ], [ %i.bb, %.preheader129.i.preheader ]
  %i.bf = phi <2 x float> [ %i.su, %bb.g ], [ %i.ay, %.preheader129.i.preheader ] ; 2 uses
  %i.bg = phi <2 x float> [ zeroinitializer, %bb.g ], [ %i.az, %.preheader129.i.preheader ] ; 3 uses
  %i.bh = add nuw nsw i32 %.082.i, 1
  %i.bi = fadd float %.sroa.33.1, %.sroa.0.1      ; 2 uses
  %i.bj = fsub float %i.bd, %i.bc                 ; 2 uses
  %i.bk = tail call noundef float @llvm.fabs.f32(float %i.bj)
  %i.bl = tail call noundef float @llvm.fabs.f32(float %i.bi)
  %i.bm = fmul float %4, %i.bl
  %i.bn = fcmp ugt float %i.bk, %i.bm
  br i1 %i.bn, label %bb.b, label %.thread134.i.i

bb.b:                                             ; preds = %.preheader129.i
  %i.bo = fdiv float %i.bi, %i.bj                 ; 4 uses
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.bo, float 1.000000e+00)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.bp)
  %i.bq = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.br = fcmp olt float %i.bo, 0.000000e+00
  %i.bs = fneg float %i.bq
  %.0120.i.i = select i1 %i.br, float %i.bs, float %i.bq ; 5 uses
  %i.bt = fmul float %i.bo, %.0120.i.i            ; 4 uses
  %i.bu = fadd float %i.bc, %i.bd
  %i.bv = fsub float %.sroa.33.1, %.sroa.0.1
  %i.bw = fmul float %i.bv, %i.bt
  %i.bx = tail call float @llvm.fmuladd.f32(float %.0120.i.i, float %i.bu, float %i.bw) ; 2 uses
  %i.by = fneg float %.sroa.33.1
  %i.bz = fmul float %.0120.i.i, %i.by
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bd, float %i.bz)
  %i.cb = fmul float %i.ca, 2.000000e+00          ; 2 uses
  %i.cc = tail call noundef float @llvm.fabs.f32(float %i.cb)
  %i.cd = tail call noundef float @llvm.fabs.f32(float %i.bx)
  %i.ce = fmul float %4, %i.cd
  %i.cf = fcmp ugt float %i.cc, %i.ce
  br i1 %i.cf, label %.thread.i.i, label %bb.c

.thread134.i.i:                                   ; preds = %.preheader129.i
  %i.cg = fsub float %.sroa.33.1, %.sroa.0.1      ; 2 uses
  %i.ch = fadd float %i.bc, %i.bd                 ; 2 uses
  %i.ci = tail call noundef float @llvm.fabs.f32(float %i.ch)
  %i.cj = tail call noundef float @llvm.fabs.f32(float %i.cg)
  %i.ck = fmul float %4, %i.cj
  %i.cl = fcmp ugt float %i.ci, %i.ck
  br i1 %i.cl, label %.thread.i.i, label %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i.i:                                      ; preds = %.thread134.i.i, %bb.b
  %.0117146.i.i = phi float [ %i.cg, %.thread134.i.i ], [ %i.bx, %bb.b ]
  %.0118145.i.i = phi float [ %i.ch, %.thread134.i.i ], [ %i.cb, %bb.b ]
  %.0119144.i.i = phi float [ 1.000000e+00, %.thread134.i.i ], [ %i.bt, %bb.b ]
  %.1121141.i.i = phi float [ 0.000000e+00, %.thread134.i.i ], [ %.0120.i.i, %bb.b ]
  %i.cm = fdiv float %.0117146.i.i, %.0118145.i.i ; 4 uses
  %i.cn = tail call noundef float @llvm.fabs.f32(float %i.cm)
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float 1.000000e+00)
  %sqrt133.i.i = tail call float @llvm.sqrt.f32(float %i.co)
  %i.cp = fadd float %i.cn, %sqrt133.i.i
  %i.cq = fdiv float 1.000000e+00, %i.cp          ; 2 uses
  %i.cr = fcmp olt float %i.cm, 0.000000e+00
  %i.cs = fneg float %i.cq
  %.0124.i.i = select i1 %i.cr, float %i.cs, float %i.cq ; 3 uses
  %i.ct = tail call float @llvm.fmuladd.f32(float %.0124.i.i, float %.0124.i.i, float 1.000000e+00)
  %sqrt132.i.i = tail call float @llvm.sqrt.f32(float %i.ct)
  %i.cu = fdiv float 1.000000e+00, %sqrt132.i.i   ; 2 uses
  %i.cv = fmul float %.0124.i.i, %i.cu
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i, %bb.b
  %.0119142.i.i = phi float [ %.0119144.i.i, %.thread.i.i ], [ %i.bt, %bb.b ] ; 2 uses
  %.1121139.i.i = phi float [ %.1121141.i.i, %.thread.i.i ], [ %.0120.i.i, %bb.b ] ; 2 uses
  %.0122129.i.i = phi float [ %i.cu, %.thread.i.i ], [ 1.000000e+00, %bb.b ] ; 7 uses
  %.0123128.i.i = phi float [ %i.cv, %.thread.i.i ], [ 0.000000e+00, %bb.b ] ; 5 uses
  %i.cw = fmul float %.1121139.i.i, %.0122129.i.i
  %i.cx = tail call float @llvm.fmuladd.f32(float %.0123128.i.i, float %.0119142.i.i, float %i.cw) ; 5 uses
  %i.cy = fneg float %.1121139.i.i
  %i.cz = fneg float %.0123128.i.i                ; 2 uses
  %i.da = fmul float %i.bd, %i.cz
  %i.db = tail call float @llvm.fmuladd.f32(float %.sroa.0.1, float %.0122129.i.i, float %i.da)
  %i.dc = fmul float %.sroa.33.1, %i.cz
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.bc, float %.0122129.i.i, float %i.dc)
  %i.de = fneg float %i.dd
  %i.df = fmul float %i.cx, %i.de
  %i.dg = fmul float %i.bd, %.0122129.i.i
  %i.dh = tail call float @llvm.fmuladd.f32(float %.sroa.0.1, float %.0123128.i.i, float %i.dg)
  %i.di = insertelement <2 x float> poison, float %.sroa.33.1, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.cy, i64 1
  %i.dk = insertelement <2 x float> poison, float %.0122129.i.i, i64 0 ; 2 uses
  %i.dl = insertelement <2 x float> %i.dk, float %.0123128.i.i, i64 1 ; 2 uses
  %i.dm = fmul <2 x float> %i.dj, %i.dl
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.do = insertelement <2 x float> poison, float %.0119142.i.i, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.bc, i64 1
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.dl, <2 x float> %i.dn) ; 6 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 0
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dr, float %i.db, float %i.df)
  %shift = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.dq
  %i.dt = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.du = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.dh, float %i.dt)
  %i.dv = fneg <2 x float> %i.bg
  %i.dw = insertelement <2 x float> poison, float %.0123128.i.i, i64 0 ; 2 uses
  %i.dx = insertelement <2 x float> %i.dw, float %i.cx, i64 1 ; 2 uses
  %i.dy = fmul <2 x float> %i.dx, %i.dv
  %i.dz = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.ea = insertelement <2 x float> %i.dz, float %.0122129.i.i, i64 0
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> %i.bf, <2 x float> %i.dy)
  %i.ec = shufflevector <2 x float> %i.dk, <2 x float> %i.dq, <2 x i32> <i32 0, i32 2>
  %i.ed = fmul <2 x float> %i.bg, %i.ec
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.be, <2 x float> %i.ed)
  %i.ef = load float, ptr %1, align 4, !tbaa !26
  %i.eg = load float, ptr %i.s, align 4, !tbaa !26 ; 2 uses
  %i.eh = fneg float %i.eg
  %i.ei = insertelement <2 x float> %i.dz, float %i.cx, i64 0 ; 3 uses
  %i.ej = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %i.eg, i64 1
  %i.el = fmul <2 x float> %i.ei, %i.ek
  %i.em = insertelement <2 x float> %i.dq, float %i.cx, i64 1 ; 3 uses
  %i.en = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.eo, <2 x float> %i.el)
  store <2 x float> %i.ep, ptr %1, align 4, !tbaa !26
  %i.eq = load float, ptr %i.u, align 4, !tbaa !26
  %i.er = load float, ptr %i.v, align 4, !tbaa !26 ; 2 uses
  %i.es = fneg float %i.er
  %i.et = insertelement <2 x float> poison, float %i.es, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %i.er, i64 1
  %i.ev = fmul <2 x float> %i.ei, %i.eu
  %i.ew = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ey = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.ex, <2 x float> %i.ev)
  store <2 x float> %i.ey, ptr %i.u, align 4, !tbaa !26
  %i.ez = load float, ptr %i.x, align 4, !tbaa !26
  %i.fa = load float, ptr %i.y, align 4, !tbaa !26 ; 2 uses
  %i.fb = fneg float %i.fa
  %i.fc = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.fa, i64 1
  %i.fe = fmul <2 x float> %i.ei, %i.fd
  %i.ff = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.fg, <2 x float> %i.fe)
  store <2 x float> %i.fh, ptr %i.x, align 4, !tbaa !26
  %i.fi = load float, ptr %3, align 4, !tbaa !26
  %i.fj = load float, ptr %i.aa, align 4, !tbaa !26 ; 2 uses
  %i.fk = fneg float %i.fj
  %i.fl = insertelement <2 x float> %i.dw, float %.0122129.i.i, i64 1 ; 6 uses
  %i.fm = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %i.fj, i64 1
  %i.fo = fmul <2 x float> %i.fl, %i.fn
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fq = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.fr, <2 x float> %i.fp)
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ft, ptr %3, align 4, !tbaa !26
  %i.fu = load float, ptr %i.ac, align 4, !tbaa !26
  %i.fv = load float, ptr %i.ad, align 4, !tbaa !26 ; 2 uses
  %i.fw = fneg float %i.fv
  %i.fx = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.fy = insertelement <2 x float> %i.fx, float %i.fv, i64 1
  %i.fz = fmul <2 x float> %i.fl, %i.fy
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gb = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.gc, <2 x float> %i.ga)
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ge, ptr %i.ac, align 4, !tbaa !26
end_hunk_1
begin_hunk_2_@_ZN9Imath_3_19jacobiSVDIfEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b:bb.a
  %i.mf = insertelement <2 x float> %i.me, float %i.lo, i64 1
  %i.mg = fmul <2 x float> %i.ir, %i.mf
  %i.mh = shufflevector <2 x float> %i.mg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mi = insertelement <2 x float> poison, float %i.lr, i64 0
  %i.mj = insertelement <2 x float> %i.mi, float %i.lh, i64 1
  %i.mk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ir, <2 x float> %i.mj, <2 x float> %i.mh) ; 2 uses
  %i.ml = extractelement <2 x float> %i.mk, i64 1
  store float %i.ml, ptr %3, align 4, !tbaa !26
  %i.mm = extractelement <2 x float> %i.mk, i64 0
  store float %i.mm, ptr %i.ah, align 4, !tbaa !26
  br label %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i85.i, %bb.e
  %.1130.i87.i = phi i1 [ true, %bb.e ], [ %.1130.i.i, %.thread134.i85.i ]
  %i.mn = phi <2 x float> [ %i.jg, %bb.e ], [ zeroinitializer, %.thread134.i85.i ] ; 2 uses
  %i.mo = phi <2 x float> [ %i.le, %bb.e ], [ %i.hz, %.thread134.i85.i ] ; 4 uses
  %i.mp = phi <2 x float> [ %i.ji, %bb.e ], [ %i.gq, %.thread134.i85.i ] ; 3 uses
  %i.mq = shufflevector <2 x float> %i.mn, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.mr = extractelement <2 x float> %i.mo, i64 0 ; 6 uses
  %i.ms = fadd float %.sroa.33.2, %i.mr           ; 2 uses
  %i.mt = extractelement <2 x float> %i.mp, i64 0 ; 5 uses
  %i.mu = extractelement <2 x float> %i.mp, i64 1 ; 5 uses
  %i.mv = fsub float %i.mu, %i.mt                 ; 2 uses
  %i.mw = tail call noundef float @llvm.fabs.f32(float %i.mv)
  %i.mx = tail call noundef float @llvm.fabs.f32(float %i.ms)
  %i.my = fmul float %4, %i.mx
  %i.mz = fcmp ugt float %i.mw, %i.my
  br i1 %i.mz, label %bb.f, label %.thread134.i102.i

bb.f:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.na = fdiv float %i.ms, %i.mv                 ; 4 uses
  %i.nb = tail call float @llvm.fmuladd.f32(float %i.na, float %i.na, float 1.000000e+00)
  %sqrt.i117.i = tail call float @llvm.sqrt.f32(float %i.nb)
  %i.nc = fdiv float 1.000000e+00, %sqrt.i117.i   ; 2 uses
  %i.nd = fcmp olt float %i.na, 0.000000e+00
  %i.ne = fneg float %i.nc
  %.0120.i118.i = select i1 %i.nd, float %i.ne, float %i.nc ; 5 uses
  %i.nf = fmul float %i.na, %.0120.i118.i         ; 4 uses
  %i.ng = fadd float %i.mt, %i.mu
  %i.nh = fsub float %i.mr, %.sroa.33.2
  %i.ni = fmul float %i.nh, %i.nf
  %i.nj = tail call float @llvm.fmuladd.f32(float %.0120.i118.i, float %i.ng, float %i.ni) ; 2 uses
  %i.nk = fneg float %i.mr
  %i.nl = fmul float %.0120.i118.i, %i.nk
  %i.nm = tail call float @llvm.fmuladd.f32(float %i.nf, float %i.mu, float %i.nl)
  %i.nn = fmul float %i.nm, 2.000000e+00          ; 2 uses
  %i.no = tail call noundef float @llvm.fabs.f32(float %i.nn)
  %i.np = tail call noundef float @llvm.fabs.f32(float %i.nj)
  %i.nq = fmul float %4, %i.np
  %i.nr = fcmp ugt float %i.no, %i.nq
  br i1 %i.nr, label %.thread.i105.i, label %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i

.thread134.i102.i:                                ; preds = %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.ns = fsub float %i.mr, %.sroa.33.2           ; 2 uses
  %i.nt = fadd float %i.mt, %i.mu                 ; 2 uses
  %i.nu = tail call noundef float @llvm.fabs.f32(float %i.nt)
  %i.nv = tail call noundef float @llvm.fabs.f32(float %i.ns)
  %i.nw = fmul float %4, %i.nv
  %i.nx = fcmp ugt float %i.nu, %i.nw
  br i1 %i.nx, label %.thread.i105.i, label %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i105.i:                                   ; preds = %.thread134.i102.i, %bb.f
  %.0117146.i106.i = phi float [ %i.ns, %.thread134.i102.i ], [ %i.nj, %bb.f ]
  %.0118145.i107.i = phi float [ %i.nt, %.thread134.i102.i ], [ %i.nn, %bb.f ]
  %.0119144.i108.i = phi float [ 1.000000e+00, %.thread134.i102.i ], [ %i.nf, %bb.f ]
  %.1121141.i109.i = phi float [ 0.000000e+00, %.thread134.i102.i ], [ %.0120.i118.i, %bb.f ]
  %i.ny = fdiv float %.0117146.i106.i, %.0118145.i107.i ; 4 uses
  %i.nz = tail call noundef float @llvm.fabs.f32(float %i.ny)
  %i.oa = tail call float @llvm.fmuladd.f32(float %i.ny, float %i.ny, float 1.000000e+00)
  %sqrt133.i110.i = tail call float @llvm.sqrt.f32(float %i.oa)
  %i.ob = fadd float %i.nz, %sqrt133.i110.i
  %i.oc = fdiv float 1.000000e+00, %i.ob          ; 2 uses
  %i.od = fcmp olt float %i.ny, 0.000000e+00
  %i.oe = fneg float %i.oc
  %.0124.i111.i = select i1 %i.od, float %i.oe, float %i.oc ; 3 uses
  %i.of = tail call float @llvm.fmuladd.f32(float %.0124.i111.i, float %.0124.i111.i, float 1.000000e+00)
  %sqrt132.i112.i = tail call float @llvm.sqrt.f32(float %i.of)
  %i.og = fdiv float 1.000000e+00, %sqrt132.i112.i ; 2 uses
  %i.oh = fmul float %.0124.i111.i, %i.og
  br label %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i

_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i: ; preds = %.thread.i105.i, %bb.f
  %.0119142.i113.i = phi float [ %.0119144.i108.i, %.thread.i105.i ], [ %i.nf, %bb.f ]
  %.1121139.i114.i = phi float [ %.1121141.i109.i, %.thread.i105.i ], [ %.0120.i118.i, %bb.f ] ; 2 uses
  %.0122129.i115.i = phi float [ %i.og, %.thread.i105.i ], [ 1.000000e+00, %bb.f ] ; 5 uses
  %.0123128.i116.i = phi float [ %i.oh, %.thread.i105.i ], [ 0.000000e+00, %bb.f ] ; 4 uses
  %i.oi = fneg float %.1121139.i114.i
  %i.oj = fneg float %.0123128.i116.i             ; 2 uses
  %i.ok = fmul float %i.mr, %i.oj
  %i.ol = tail call float @llvm.fmuladd.f32(float %i.mt, float %.0122129.i115.i, float %i.ok)
  %i.om = fneg float %i.ol
  %i.on = fmul float %i.mr, %.0122129.i115.i
  %i.oo = fmul float %.1121139.i114.i, %.0122129.i115.i
  %i.op = fmul float %i.mu, %i.oj
  %i.oq = insertelement <2 x float> poison, float %.0119142.i113.i, i64 0
  %i.or = insertelement <2 x float> %i.oq, float %.sroa.33.2, i64 1 ; 2 uses
  %i.os = insertelement <2 x float> poison, float %.0123128.i116.i, i64 0
  %i.ot = insertelement <2 x float> %i.os, float %.0122129.i115.i, i64 1 ; 9 uses
  %i.ou = insertelement <2 x float> poison, float %i.oo, i64 0
  %i.ov = insertelement <2 x float> %i.ou, float %i.op, i64 1
  %i.ow = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.or, <2 x float> %i.ot, <2 x float> %i.ov) ; 6 uses
  %i.ox = insertelement <2 x float> %i.mp, float %i.oi, i64 0
  %i.oy = fmul <2 x float> %i.ot, %i.ox
  %i.oz = shufflevector <2 x float> %i.ot, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.or, <2 x float> %i.oz, <2 x float> %i.oy) ; 5 uses
  %i.pb = shufflevector <2 x float> %i.pa, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.pc = tail call float @llvm.fmuladd.f32(float %i.mt, float %.0123128.i116.i, float %i.on)
  %i.pd = shufflevector <2 x float> %i.ow, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.pe = insertelement <2 x float> %i.pd, float %i.pc, i64 0
  %i.pf = insertelement <2 x float> %i.pa, float %i.om, i64 1
  %i.pg = fmul <2 x float> %i.pe, %i.pf
  %i.ph = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ow, <2 x float> %i.pb, <2 x float> %i.pg)
  %i.pi = shufflevector <2 x float> %i.pa, <2 x float> %i.ow, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.pj = insertelement <4 x float> %i.pi, float %.0122129.i115.i, i64 1
  %i.pk = insertelement <4 x float> %i.pj, float %.0123128.i116.i, i64 3 ; 2 uses
  %i.pl = fmul <4 x float> %i.pk, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float -0.000000e+00>
  %i.pm = shufflevector <2 x float> %i.ow, <2 x float> %i.pa, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.pn = shufflevector <4 x float> %i.pm, <4 x float> %i.pk, <4 x i32> <i32 0, i32 7, i32 2, i32 5>
  %i.po = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pn, <4 x float> %i.mq, <4 x float> %i.pl)
  %i.pp = load float, ptr %i.s, align 4, !tbaa !26
  %i.pq = load float, ptr %i.t, align 4, !tbaa !26 ; 2 uses
  %i.pr = fneg float %i.pq
  %i.ps = shufflevector <2 x float> %i.ow, <2 x float> %i.pb, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.pt = insertelement <2 x float> poison, float %i.pr, i64 0
  %i.pu = insertelement <2 x float> %i.pt, float %i.pq, i64 1
  %i.pv = fmul <2 x float> %i.ps, %i.pu
  %i.pw = shufflevector <2 x float> %i.pa, <2 x float> %i.ow, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.px = insertelement <2 x float> poison, float %i.pp, i64 0
  %i.py = shufflevector <2 x float> %i.px, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pw, <2 x float> %i.py, <2 x float> %i.pv)
  store <2 x float> %i.pz, ptr %i.s, align 4, !tbaa !26
  %i.qa = load float, ptr %i.v, align 4, !tbaa !26
  %i.qb = load float, ptr %i.w, align 4, !tbaa !26 ; 2 uses
  %i.qc = fneg float %i.qb
  %i.qd = insertelement <2 x float> poison, float %i.qc, i64 0
  %i.qe = insertelement <2 x float> %i.qd, float %i.qb, i64 1
  %i.qf = fmul <2 x float> %i.ps, %i.qe
  %i.qg = insertelement <2 x float> poison, float %i.qa, i64 0
  %i.qh = shufflevector <2 x float> %i.qg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pw, <2 x float> %i.qh, <2 x float> %i.qf)
  store <2 x float> %i.qi, ptr %i.v, align 4, !tbaa !26
  %i.qj = load float, ptr %i.y, align 4, !tbaa !26
  %i.qk = load float, ptr %i.z, align 4, !tbaa !26 ; 2 uses
  %i.ql = fneg float %i.qk
  %i.qm = insertelement <2 x float> poison, float %i.ql, i64 0
  %i.qn = insertelement <2 x float> %i.qm, float %i.qk, i64 1
  %i.qo = fmul <2 x float> %i.ps, %i.qn
  %i.qp = insertelement <2 x float> poison, float %i.qj, i64 0
  %i.qq = shufflevector <2 x float> %i.qp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pw, <2 x float> %i.qq, <2 x float> %i.qo)
  store <2 x float> %i.qr, ptr %i.y, align 4, !tbaa !26
  %i.qs = load float, ptr %i.aa, align 4, !tbaa !26
  %i.qt = load float, ptr %i.ab, align 4, !tbaa !26 ; 2 uses
  %i.qu = fneg float %i.qt
  %i.qv = insertelement <2 x float> poison, float %i.qu, i64 0
  %i.qw = insertelement <2 x float> %i.qv, float %i.qt, i64 1
  %i.qx = fmul <2 x float> %i.ot, %i.qw
  %i.qy = shufflevector <2 x float> %i.qx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qz = insertelement <2 x float> poison, float %i.qs, i64 0
  %i.ra = shufflevector <2 x float> %i.qz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ot, <2 x float> %i.ra, <2 x float> %i.qy)
  %i.rc = shufflevector <2 x float> %i.rb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.rc, ptr %i.aa, align 4, !tbaa !26
  %i.rd = load float, ptr %i.ad, align 4, !tbaa !26
  %i.re = load float, ptr %i.ae, align 4, !tbaa !26 ; 2 uses
  %i.rf = fneg float %i.re
  %i.rg = insertelement <2 x float> poison, float %i.rf, i64 0
  %i.rh = insertelement <2 x float> %i.rg, float %i.re, i64 1
  %i.ri = fmul <2 x float> %i.ot, %i.rh
  %i.rj = shufflevector <2 x float> %i.ri, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rk = insertelement <2 x float> poison, float %i.rd, i64 0
  %i.rl = shufflevector <2 x float> %i.rk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ot, <2 x float> %i.rl, <2 x float> %i.rj)
  %i.rn = shufflevector <2 x float> %i.rm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.rn, ptr %i.ad, align 4, !tbaa !26
  %i.ro = load float, ptr %i.ag, align 4, !tbaa !26
  %i.rp = load float, ptr %i.ah, align 4, !tbaa !26 ; 2 uses
  %i.rq = fneg float %i.rp
  %i.rr = insertelement <2 x float> poison, float %i.rq, i64 0
  %i.rs = insertelement <2 x float> %i.rr, float %i.rp, i64 1
  %i.rt = fmul <2 x float> %i.ot, %i.rs
  %i.ru = shufflevector <2 x float> %i.rt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rv = insertelement <2 x float> poison, float %i.ro, i64 0
  %i.rw = shufflevector <2 x float> %i.rv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ot, <2 x float> %i.rw, <2 x float> %i.ru)
  %i.ry = shufflevector <2 x float> %i.rx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ry, ptr %i.ag, align 4, !tbaa !26
  br label %bb.g

_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i102.i
  %i.rz = insertelement <2 x float> %i.mo, float %.sroa.33.2, i64 1 ; 2 uses
  %i.sa = shufflevector <2 x float> %i.mn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.sb = shufflevector <4 x float> %i.sa, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 1, i32 0>
  br i1 %.1130.i87.i, label %bb.g, label %.loopexit130.i.loopexit.split.loop.exit

bb.g:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i, %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i
  %i.sc = phi <2 x float> [ %i.ph, %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ %i.rz, %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 3 uses
  %i.sd = phi <4 x float> [ %i.po, %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ %i.sb, %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 5 uses
  %i.se = extractelement <4 x float> %i.sd, i64 1
  %i.sf = extractelement <4 x float> %i.sd, i64 0
  %i.sg = extractelement <4 x float> %i.sd, i64 3 ; 2 uses
  %i.sh = tail call noundef float @llvm.fabs.f32(float %i.sg) ; 2 uses
  %7 = fcmp ogt float %i.sh, 0.000000e+00
  %.sroa.speculated28.i119.i = select i1 %7, float %i.sh, float 0.000000e+00 ; 2 uses
  %i.si = tail call noundef float @llvm.fabs.f32(float %i.se) ; 2 uses
  %i.sj = fcmp olt float %.sroa.speculated28.i119.i, %i.si
  %.sroa.speculated24.i120.i = select i1 %i.sj, float %i.si, float %.sroa.speculated28.i119.i ; 2 uses
  %i.sk = extractelement <4 x float> %i.sd, i64 2 ; 2 uses
  %i.sl = tail call noundef float @llvm.fabs.f32(float %i.sk) ; 2 uses
  %i.sm = fcmp olt float %.sroa.speculated24.i120.i, %i.sl
  %.sroa.speculated20.i121.i = select i1 %i.sm, float %i.sl, float %.sroa.speculated24.i120.i ; 2 uses
  %i.sn = tail call noundef float @llvm.fabs.f32(float %i.sf) ; 2 uses
  %i.so = fcmp olt float %.sroa.speculated20.i121.i, %i.sn
  %.sroa.speculated12.i123.i = select i1 %i.so, float %i.sn, float %.sroa.speculated20.i121.i
  %i.sp = fcmp ogt float %.sroa.speculated12.i123.i, %i.au
  %i.sq = icmp samesign ult i32 %.082.i, 19
  %i.sr = select i1 %i.sp, i1 %i.sq, i1 false
  %i.ss = extractelement <2 x float> %i.sc, i64 0
  %i.st = extractelement <2 x float> %i.sc, i64 1
  %i.su = shufflevector <4 x float> %i.sd, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.sv = extractelement <2 x float> %i.mo, i64 1 ; 2 uses
  br i1 %i.sr, label %.preheader129.i, label %.loopexit130.i, !llvm.loop !45

.loopexit130.i.loopexit.split.loop.exit:          ; preds = %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.sw = extractelement <2 x float> %i.mo, i64 1
  br label %.loopexit130.i

.loopexit130.i:                                   ; preds = %.loopexit130.i.loopexit.split.loop.exit, %bb.g, %bb.a
  %.sroa.0.0 = phi float [ %i.a, %bb.a ], [ %i.sw, %.loopexit130.i.loopexit.split.loop.exit ], [ %i.sv, %bb.g ] ; 3 uses
  %i.sx = phi <2 x float> [ %i.ax, %bb.a ], [ %i.rz, %.loopexit130.i.loopexit.split.loop.exit ], [ %i.sc, %bb.g ] ; 2 uses
  store float %.sroa.0.0, ptr %2, align 4, !tbaa !40
  %i.sy = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 9 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.ta = shufflevector <2 x float> %i.sx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ta, ptr %i.sy, align 4, !tbaa !26
  %i.tb = fcmp olt float %.sroa.0.0, 0.000000e+00
  %i.tc = extractelement <2 x float> %i.sx, i64 1
  br i1 %i.tb, label %.loopexit.loopexit.i, label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.loopexit130.i
  %i.td = fneg float %.sroa.0.0
  store float %i.td, ptr %2, align 4, !tbaa !26
  %i.te = load float, ptr %1, align 4, !tbaa !26
  %i.tf = fneg float %i.te
  store float %i.tf, ptr %1, align 4, !tbaa !26
  %i.tg = load float, ptr %i.u, align 4, !tbaa !26
  %i.th = fneg float %i.tg
  store float %i.th, ptr %i.u, align 4, !tbaa !26
  %i.ti = load float, ptr %i.x, align 4, !tbaa !26
  %i.tj = fneg float %i.ti
  store float %i.tj, ptr %i.x, align 4, !tbaa !26
  %.pre153.i = load float, ptr %i.sy, align 4, !tbaa !26
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.loopexit130.i
  %i.tk = phi float [ %.pre153.i, %.loopexit.loopexit.i ], [ %i.tc, %.loopexit130.i ] ; 2 uses
  %i.tl = fcmp olt float %i.tk, 0.000000e+00
  br i1 %i.tl, label %.loopexit.loopexit.1.i, label %.loopexit.1.i

.loopexit.loopexit.1.i:                           ; preds = %.loopexit.i
  %i.tm = fneg float %i.tk
  store float %i.tm, ptr %i.sy, align 4, !tbaa !26
  %i.tn = load float, ptr %i.s, align 4, !tbaa !26
  %i.to = fneg float %i.tn
  store float %i.to, ptr %i.s, align 4, !tbaa !26
  %i.tp = load float, ptr %i.v, align 4, !tbaa !26
  %i.tq = fneg float %i.tp
  store float %i.tq, ptr %i.v, align 4, !tbaa !26
  %i.tr = load float, ptr %i.y, align 4, !tbaa !26
  %i.ts = fneg float %i.tr
  store float %i.ts, ptr %i.y, align 4, !tbaa !26
  br label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %.loopexit.loopexit.1.i, %.loopexit.i
  %i.tt = load float, ptr %i.sz, align 4, !tbaa !26 ; 2 uses
  %i.tu = fcmp olt float %i.tt, 0.000000e+00
  br i1 %i.tu, label %.loopexit.loopexit.2.i, label %.lr.ph.preheader.i

.loopexit.loopexit.2.i:                           ; preds = %.loopexit.1.i
  %i.tv = fneg float %i.tt
  store float %i.tv, ptr %i.sz, align 4, !tbaa !26
  %i.tw = load float, ptr %i.t, align 4, !tbaa !26
  %i.tx = fneg float %i.tw
  store float %i.tx, ptr %i.t, align 4, !tbaa !26
  %i.ty = load float, ptr %i.w, align 4, !tbaa !26
  %i.tz = fneg float %i.ty
  store float %i.tz, ptr %i.w, align 4, !tbaa !26
  %i.ua = load float, ptr %i.z, align 4, !tbaa !26
  %i.ub = fneg float %i.ua
  store float %i.ub, ptr %i.z, align 4, !tbaa !26
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit.loopexit.2.i, %.loopexit.1.i
  %i.uc = load float, ptr %2, align 4, !tbaa !26  ; 2 uses
  %i.ud = load float, ptr %i.sy, align 4, !tbaa !26 ; 3 uses
  %i.ue = fcmp olt float %i.uc, %i.ud
  br i1 %i.ue, label %bb.i, label %.lr.ph.1145.i

.lr.ph.preheader.1.i:                             ; preds = %bb.j, %.lr.ph.1145.i
  %i.uf = phi float [ %.pre, %bb.j ], [ %i.vg, %.lr.ph.1145.i ] ; 2 uses
  %i.ug = load float, ptr %2, align 4, !tbaa !26  ; 2 uses
  %i.uh = fcmp olt float %i.ug, %i.uf
  br i1 %i.uh, label %bb.h, label %._crit_edge.1.i

bb.h:                                             ; preds = %.lr.ph.preheader.1.i
  store float %i.uf, ptr %2, align 4, !tbaa !26
  store float %i.ug, ptr %i.sy, align 4, !tbaa !26
  %i.ui = load <2 x float>, ptr %1, align 4, !tbaa !26
  %i.uj = shufflevector <2 x float> %i.ui, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.uj, ptr %1, align 4, !tbaa !26
  %i.uk = load <2 x float>, ptr %i.u, align 4, !tbaa !26
  %i.ul = shufflevector <2 x float> %i.uk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ul, ptr %i.u, align 4, !tbaa !26
  %i.um = load <2 x float>, ptr %i.x, align 4, !tbaa !26
  %i.un = shufflevector <2 x float> %i.um, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.un, ptr %i.x, align 4, !tbaa !26
  %i.uo = load <2 x float>, ptr %3, align 4, !tbaa !26
  %i.up = shufflevector <2 x float> %i.uo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.up, ptr %3, align 4, !tbaa !26
  %i.uq = load <2 x float>, ptr %i.ac, align 4, !tbaa !26
  %i.ur = shufflevector <2 x float> %i.uq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ur, ptr %i.ac, align 4, !tbaa !26
  %i.us = load <2 x float>, ptr %i.af, align 4, !tbaa !26
  %i.ut = shufflevector <2 x float> %i.us, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ut, ptr %i.af, align 4, !tbaa !26
  br label %._crit_edge.1.i

._crit_edge.1.i:                                  ; preds = %bb.h, %.lr.ph.preheader.1.i
  br i1 %5, label %bb.k, label %_ZN9Imath_3_112_GLOBAL__N_117twoSidedJacobiSVDIfEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit

bb.i:                                             ; preds = %.lr.ph.preheader.i
  store float %i.ud, ptr %2, align 4, !tbaa !26
  store float %i.uc, ptr %i.sy, align 4, !tbaa !26
  %i.uu = load <2 x float>, ptr %1, align 4, !tbaa !26
  %i.uv = shufflevector <2 x float> %i.uu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.uv, ptr %1, align 4, !tbaa !26
  %i.uw = load <2 x float>, ptr %i.u, align 4, !tbaa !26
  %i.ux = shufflevector <2 x float> %i.uw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ux, ptr %i.u, align 4, !tbaa !26
  %i.uy = load <2 x float>, ptr %i.x, align 4, !tbaa !26
  %i.uz = shufflevector <2 x float> %i.uy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.uz, ptr %i.x, align 4, !tbaa !26
  %i.va = load <2 x float>, ptr %3, align 4, !tbaa !26
  %i.vb = shufflevector <2 x float> %i.va, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.vb, ptr %3, align 4, !tbaa !26
  %i.vc = load <2 x float>, ptr %i.ac, align 4, !tbaa !26
  %i.vd = shufflevector <2 x float> %i.vc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.vd, ptr %i.ac, align 4, !tbaa !26
  %i.ve = load <2 x float>, ptr %i.af, align 4, !tbaa !26
  %i.vf = shufflevector <2 x float> %i.ve, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.vf, ptr %i.af, align 4, !tbaa !26
  %.pre154.i = load float, ptr %i.sy, align 4, !tbaa !26
  br label %.lr.ph.1145.i

.lr.ph.1145.i:                                    ; preds = %bb.i, %.lr.ph.preheader.i
  %i.vg = phi float [ %i.ud, %.lr.ph.preheader.i ], [ %.pre154.i, %bb.i ] ; 3 uses
  %i.vh = load float, ptr %i.sz, align 4, !tbaa !26 ; 2 uses
  %i.vi = fcmp olt float %i.vg, %i.vh
  br i1 %i.vi, label %bb.j, label %.lr.ph.preheader.1.i

bb.j:                                             ; preds = %.lr.ph.1145.i
  store float %i.vh, ptr %i.sy, align 4, !tbaa !26
  store float %i.vg, ptr %i.sz, align 4, !tbaa !26
  %i.vj = load <2 x float>, ptr %i.s, align 4, !tbaa !26
  %i.vk = shufflevector <2 x float> %i.vj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.vk, ptr %i.s, align 4, !tbaa !26
  %i.vl = load <2 x float>, ptr %i.v, align 4, !tbaa !26
  %i.vm = shufflevector <2 x float> %i.vl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.vm, ptr %i.v, align 4, !tbaa !26
  %i.vn = load <2 x float>, ptr %i.y, align 4, !tbaa !26
  %i.vo = shufflevector <2 x float> %i.vn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.vo, ptr %i.y, align 4, !tbaa !26
  %i.vp = load <2 x float>, ptr %i.aa, align 4, !tbaa !26
  %i.vq = shufflevector <2 x float> %i.vp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.vq, ptr %i.aa, align 4, !tbaa !26
  %i.vr = load <2 x float>, ptr %i.ad, align 4, !tbaa !26
  %i.vs = shufflevector <2 x float> %i.vr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.vs, ptr %i.ad, align 4, !tbaa !26
  %i.vt = load <2 x float>, ptr %i.ag, align 4, !tbaa !26
  %i.vu = shufflevector <2 x float> %i.vt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.vu, ptr %i.ag, align 4, !tbaa !26
  %.pre = load float, ptr %i.sy, align 4, !tbaa !26
  br label %.lr.ph.preheader.1.i

bb.k:                                             ; preds = %._crit_edge.1.i
  %i.vv = load float, ptr %1, align 4, !tbaa !26
  %i.vw = load float, ptr %i.v, align 4, !tbaa !26 ; 2 uses
  %i.vx = load float, ptr %i.z, align 4, !tbaa !26 ; 2 uses
  %i.vy = load float, ptr %i.w, align 4, !tbaa !26 ; 3 uses
  %i.vz = load float, ptr %i.y, align 4, !tbaa !26 ; 2 uses
  %i.wa = fneg float %i.vz
  %i.wb = fmul float %i.vy, %i.wa
  %i.wc = tail call float @llvm.fmuladd.f32(float %i.vw, float %i.vx, float %i.wb)
  %i.wd = load float, ptr %i.s, align 4, !tbaa !26
  %i.we = load float, ptr %i.x, align 4, !tbaa !26 ; 2 uses
  %i.wf = load float, ptr %i.u, align 4, !tbaa !26 ; 2 uses
  %i.wg = fneg float %i.vx                        ; 2 uses
  %i.wh = fmul float %i.wf, %i.wg
  %i.wi = tail call float @llvm.fmuladd.f32(float %i.vy, float %i.we, float %i.wh)
  %i.wj = fmul float %i.wd, %i.wi
  %i.wk = tail call float @llvm.fmuladd.f32(float %i.vv, float %i.wc, float %i.wj)
  %i.wl = load float, ptr %i.t, align 4, !tbaa !26 ; 2 uses
  %i.wm = fneg float %i.we
  %i.wn = fmul float %i.vw, %i.wm
  %i.wo = tail call float @llvm.fmuladd.f32(float %i.wf, float %i.vz, float %i.wn)
  %i.wp = tail call noundef float @llvm.fmuladd.f32(float %i.wl, float %i.wo, float %i.wk)
  %i.wq = fcmp olt float %i.wp, 0.000000e+00
  br i1 %i.wq, label %.preheader126.preheader.i, label %bb.l

.preheader126.preheader.i:                        ; preds = %bb.k
  %i.wr = fneg float %i.wl
  store float %i.wr, ptr %i.t, align 4, !tbaa !26
  %i.ws = fneg float %i.vy
  store float %i.ws, ptr %i.w, align 4, !tbaa !26
  store float %i.wg, ptr %i.z, align 4, !tbaa !26
  %i.wt = load float, ptr %i.sz, align 4, !tbaa !28
  %i.wu = fneg float %i.wt
  store float %i.wu, ptr %i.sz, align 4, !tbaa !28
  br label %bb.l

bb.l:                                             ; preds = %.preheader126.preheader.i, %bb.k
  %i.wv = load float, ptr %3, align 4, !tbaa !26
  %i.ww = load float, ptr %i.ad, align 4, !tbaa !26 ; 2 uses
  %i.wx = load float, ptr %i.ah, align 4, !tbaa !26 ; 2 uses
  %i.wy = load float, ptr %i.ae, align 4, !tbaa !26 ; 3 uses
  %i.wz = load float, ptr %i.ag, align 4, !tbaa !26 ; 2 uses
  %i.xa = fneg float %i.wz
  %i.xb = fmul float %i.wy, %i.xa
  %i.xc = tail call float @llvm.fmuladd.f32(float %i.ww, float %i.wx, float %i.xb)
  %i.xd = load float, ptr %i.aa, align 4, !tbaa !26
  %i.xe = load float, ptr %i.af, align 4, !tbaa !26 ; 2 uses
  %i.xf = load float, ptr %i.ac, align 4, !tbaa !26 ; 2 uses
  %i.xg = fneg float %i.wx                        ; 2 uses
  %i.xh = fmul float %i.xf, %i.xg
  %i.xi = tail call float @llvm.fmuladd.f32(float %i.wy, float %i.xe, float %i.xh)
  %i.xj = fmul float %i.xd, %i.xi
  %i.xk = tail call float @llvm.fmuladd.f32(float %i.wv, float %i.xc, float %i.xj)
  %i.xl = load float, ptr %i.ab, align 4, !tbaa !26 ; 2 uses
  %i.xm = fneg float %i.xe
  %i.xn = fmul float %i.ww, %i.xm
  %i.xo = tail call float @llvm.fmuladd.f32(float %i.xf, float %i.wz, float %i.xn)
  %i.xp = tail call noundef float @llvm.fmuladd.f32(float %i.xl, float %i.xo, float %i.xk)
  %i.xq = fcmp olt float %i.xp, 0.000000e+00
  br i1 %i.xq, label %.preheader.preheader.i, label %_ZN9Imath_3_112_GLOBAL__N_117twoSidedJacobiSVDIfEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit

.preheader.preheader.i:                           ; preds = %bb.l
  %i.xr = fneg float %i.xl
  store float %i.xr, ptr %i.ab, align 4, !tbaa !26
  %i.xs = fneg float %i.wy
  store float %i.xs, ptr %i.ae, align 4, !tbaa !26
  store float %i.xg, ptr %i.ah, align 4, !tbaa !26
  %i.xt = load float, ptr %i.sz, align 4, !tbaa !28
  %i.xu = fneg float %i.xt
  store float %i.xu, ptr %i.sz, align 4, !tbaa !28
  br label %_ZN9Imath_3_112_GLOBAL__N_117twoSidedJacobiSVDIfEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit

_ZN9Imath_3_112_GLOBAL__N_117twoSidedJacobiSVDIfEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit: ; preds = %._crit_edge.1.i, %bb.l, %.preheader.preheader.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_19jacobiSVDIfEEvRKNS_8Matrix44IT_EERS3_RNS_4Vec4IS2_EES6_S2_b(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, float noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.Imath_3_1::Matrix44.2", align 16 ; 23 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.e = load <4 x float>, ptr %0, align 4, !tbaa !26 ; 3 uses
  %i.f = load float, ptr %i.a, align 4, !tbaa !26
  store <4 x float> %i.e, ptr %6, align 16, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.m = load <4 x float>, ptr %i.g, align 4, !tbaa !26 ; 3 uses
  %i.n = load float, ptr %i.j, align 4, !tbaa !26
  store <4 x float> %i.m, ptr %i.h, align 16, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.t = load <4 x float>, ptr %i.o, align 4, !tbaa !26 ; 5 uses
  store <4 x float> %i.t, ptr %i.p, align 16, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 60
  %i.z = load <4 x float>, ptr %i.u, align 4, !tbaa !26 ; 5 uses
  store <4 x float> %i.z, ptr %i.v, align 16, !tbaa !26
  store float 1.000000e+00, ptr %1, align 4, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 9 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ab, align 4, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ad, align 4, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.af, align 4, !tbaa !26
  store float 1.000000e+00, ptr %3, align 4, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ah, align 4, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aj, align 4, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.al, align 4, !tbaa !26
  %7 = tail call noundef float @llvm.fabs.f32(float %i.f) ; 2 uses
  %8 = fcmp ogt float %7, 0.000000e+00
  %.sroa.speculated.1.i.i = select i1 %8, float %7, float 0.000000e+00 ; 2 uses
  %i.am = extractelement <4 x float> %i.e, i64 2
  %i.an = tail call noundef float @llvm.fabs.f32(float %i.am) ; 2 uses
  %i.ao = fcmp olt float %.sroa.speculated.1.i.i, %i.an
  %.sroa.speculated.2.i.i = select i1 %i.ao, float %i.an, float %.sroa.speculated.1.i.i ; 2 uses
  %i.ap = extractelement <4 x float> %i.e, i64 3
  %i.aq = tail call noundef float @llvm.fabs.f32(float %i.ap) ; 2 uses
  %i.ar = fcmp olt float %.sroa.speculated.2.i.i, %i.aq
  %.sroa.speculated.3.i.i = select i1 %i.ar, float %i.aq, float %.sroa.speculated.2.i.i ; 2 uses
  %i.as = extractelement <4 x float> %i.m, i64 0
  %i.at = tail call noundef float @llvm.fabs.f32(float %i.as) ; 2 uses
  %i.au = fcmp olt float %.sroa.speculated.3.i.i, %i.at
  %.sroa.speculated.118.i.i = select i1 %i.au, float %i.at, float %.sroa.speculated.3.i.i ; 2 uses
  %i.av = tail call noundef float @llvm.fabs.f32(float %i.n) ; 2 uses
  %i.aw = fcmp olt float %.sroa.speculated.118.i.i, %i.av
  %.sroa.speculated.2.1.i.i = select i1 %i.aw, float %i.av, float %.sroa.speculated.118.i.i ; 2 uses
  %i.ax = extractelement <4 x float> %i.m, i64 3
  %i.ay = tail call noundef float @llvm.fabs.f32(float %i.ax) ; 2 uses
  %i.az = fcmp olt float %.sroa.speculated.2.1.i.i, %i.ay
  %.sroa.speculated.3.1.i.i = select i1 %i.az, float %i.ay, float %.sroa.speculated.2.1.i.i ; 2 uses
  %i.ba = extractelement <4 x float> %i.t, i64 0
  %i.bb = tail call noundef float @llvm.fabs.f32(float %i.ba) ; 2 uses
  %i.bc = fcmp olt float %.sroa.speculated.3.1.i.i, %i.bb
  %.sroa.speculated.221.i.i = select i1 %i.bc, float %i.bb, float %.sroa.speculated.3.1.i.i ; 2 uses
  %i.bd = extractelement <4 x float> %i.t, i64 1
  %i.be = tail call noundef float @llvm.fabs.f32(float %i.bd) ; 2 uses
  %i.bf = fcmp olt float %.sroa.speculated.221.i.i, %i.be
  %.sroa.speculated.1.2.i.i = select i1 %i.bf, float %i.be, float %.sroa.speculated.221.i.i ; 2 uses
  %i.bg = extractelement <4 x float> %i.t, i64 3
  %i.bh = tail call noundef float @llvm.fabs.f32(float %i.bg) ; 2 uses
  %i.bi = fcmp olt float %.sroa.speculated.1.2.i.i, %i.bh
  %.sroa.speculated.3.2.i.i = select i1 %i.bi, float %i.bh, float %.sroa.speculated.1.2.i.i ; 2 uses
  %i.bj = extractelement <4 x float> %i.z, i64 0
  %i.bk = tail call noundef float @llvm.fabs.f32(float %i.bj) ; 2 uses
  %i.bl = fcmp olt float %.sroa.speculated.3.2.i.i, %i.bk
  %.sroa.speculated.324.i.i = select i1 %i.bl, float %i.bk, float %.sroa.speculated.3.2.i.i ; 2 uses
  %i.bm = extractelement <4 x float> %i.z, i64 1
  %i.bn = tail call noundef float @llvm.fabs.f32(float %i.bm) ; 2 uses
  %i.bo = fcmp olt float %.sroa.speculated.324.i.i, %i.bn
  %.sroa.speculated.1.3.i.i = select i1 %i.bo, float %i.bn, float %.sroa.speculated.324.i.i ; 2 uses
  %i.bp = extractelement <4 x float> %i.z, i64 2
  %i.bq = tail call noundef float @llvm.fabs.f32(float %i.bp) ; 2 uses
  %i.br = fcmp olt float %.sroa.speculated.1.3.i.i, %i.bq
  %.sroa.speculated.2.3.i.i = select i1 %i.br, float %i.bq, float %.sroa.speculated.1.3.i.i
  %i.bs = fmul float %4, %.sroa.speculated.2.3.i.i ; 2 uses
  %i.bt = fcmp une float %i.bs, 0.000000e+00
  %i.bu = extractelement <4 x float> %i.t, i64 2
  %i.bv = extractelement <4 x float> %i.z, i64 3
  br i1 %i.bt, label %.preheader163.i, label %.loopexit164.i

.preheader163.i:                                  ; preds = %bb.a, %bb.b
  %.0137.i = phi i32 [ %i.ch, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.bw = call fastcc noundef zeroext i1 @_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfEEbRNS_8Matrix44IT_EEiiS5_S5_S3_(ptr noundef nonnull align 4 dereferenceable(64) %6, i32 noundef 0, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %3, float noundef %4)
  %i.bx = call fastcc noundef zeroext i1 @_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfEEbRNS_8Matrix44IT_EEiiS5_S5_S3_(ptr noundef nonnull align 4 dereferenceable(64) %6, i32 noundef 0, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %3, float noundef %4)
  %i.by = or i1 %i.bw, %i.bx
  %i.bz = call fastcc noundef zeroext i1 @_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfEEbRNS_8Matrix44IT_EEiiS5_S5_S3_(ptr noundef nonnull align 4 dereferenceable(64) %6, i32 noundef 0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %3, float noundef %4)
  %i.ca = or i1 %i.bz, %i.by
  %i.cb = call fastcc noundef zeroext i1 @_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfEEbRNS_8Matrix44IT_EEiiS5_S5_S3_(ptr noundef nonnull align 4 dereferenceable(64) %6, i32 noundef 1, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %3, float noundef %4)
  %i.cc = or i1 %i.cb, %i.ca
  %i.cd = call fastcc noundef zeroext i1 @_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfEEbRNS_8Matrix44IT_EEiiS5_S5_S3_(ptr noundef nonnull align 4 dereferenceable(64) %6, i32 noundef 1, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %3, float noundef %4)
  %i.ce = or i1 %i.cd, %i.cc
  %i.cf = call fastcc noundef zeroext i1 @_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfEEbRNS_8Matrix44IT_EEiiS5_S5_S3_(ptr noundef nonnull align 4 dereferenceable(64) %6, i32 noundef 2, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %3, float noundef %4)
  %i.cg = or i1 %i.cf, %i.ce
  br i1 %i.cg, label %bb.b, label %.loopexit164.i.loopexit

bb.b:                                             ; preds = %.preheader163.i
  %i.ch = add nuw nsw i32 %.0137.i, 1
  %i.ci = load float, ptr %i.b, align 4, !tbaa !26
  %i.cj = load float, ptr %i.c, align 8, !tbaa !26
  %i.ck = load float, ptr %i.d, align 4, !tbaa !26
  %i.cl = load float, ptr %i.h, align 16, !tbaa !26
  %i.cm = load float, ptr %i.k, align 8, !tbaa !26
  %i.cn = load float, ptr %i.l, align 4, !tbaa !26
  %i.co = load float, ptr %i.p, align 16, !tbaa !26
  %i.cp = load float, ptr %i.q, align 4, !tbaa !26
  %i.cq = load float, ptr %i.s, align 4, !tbaa !26
  %i.cr = load float, ptr %i.v, align 16, !tbaa !26
  %i.cs = load float, ptr %i.w, align 4, !tbaa !26
  %i.ct = load float, ptr %i.x, align 8, !tbaa !26
  %9 = tail call noundef float @llvm.fabs.f32(float %i.ci) ; 2 uses
  %10 = fcmp ogt float %9, 0.000000e+00
  %.sroa.speculated.1.i146.i = select i1 %10, float %9, float 0.000000e+00 ; 2 uses
  %i.cu = tail call noundef float @llvm.fabs.f32(float %i.cj) ; 2 uses
  %i.cv = fcmp olt float %.sroa.speculated.1.i146.i, %i.cu
  %.sroa.speculated.2.i147.i = select i1 %i.cv, float %i.cu, float %.sroa.speculated.1.i146.i ; 2 uses
  %i.cw = tail call noundef float @llvm.fabs.f32(float %i.ck) ; 2 uses
  %i.cx = fcmp olt float %.sroa.speculated.2.i147.i, %i.cw
  %.sroa.speculated.3.i148.i = select i1 %i.cx, float %i.cw, float %.sroa.speculated.2.i147.i ; 2 uses
  %i.cy = tail call noundef float @llvm.fabs.f32(float %i.cl) ; 2 uses
  %i.cz = fcmp olt float %.sroa.speculated.3.i148.i, %i.cy
  %.sroa.speculated.118.i149.i = select i1 %i.cz, float %i.cy, float %.sroa.speculated.3.i148.i ; 2 uses
  %i.da = tail call noundef float @llvm.fabs.f32(float %i.cm) ; 2 uses
  %i.db = fcmp olt float %.sroa.speculated.118.i149.i, %i.da
  %.sroa.speculated.2.1.i150.i = select i1 %i.db, float %i.da, float %.sroa.speculated.118.i149.i ; 2 uses
  %i.dc = tail call noundef float @llvm.fabs.f32(float %i.cn) ; 2 uses
  %i.dd = fcmp olt float %.sroa.speculated.2.1.i150.i, %i.dc
  %.sroa.speculated.3.1.i151.i = select i1 %i.dd, float %i.dc, float %.sroa.speculated.2.1.i150.i ; 2 uses
  %i.de = tail call noundef float @llvm.fabs.f32(float %i.co) ; 2 uses
  %i.df = fcmp olt float %.sroa.speculated.3.1.i151.i, %i.de
  %.sroa.speculated.221.i152.i = select i1 %i.df, float %i.de, float %.sroa.speculated.3.1.i151.i ; 2 uses
  %i.dg = tail call noundef float @llvm.fabs.f32(float %i.cp) ; 2 uses
  %i.dh = fcmp olt float %.sroa.speculated.221.i152.i, %i.dg
  %.sroa.speculated.1.2.i153.i = select i1 %i.dh, float %i.dg, float %.sroa.speculated.221.i152.i ; 2 uses
  %i.di = tail call noundef float @llvm.fabs.f32(float %i.cq) ; 2 uses
  %i.dj = fcmp olt float %.sroa.speculated.1.2.i153.i, %i.di
  %.sroa.speculated.3.2.i154.i = select i1 %i.dj, float %i.di, float %.sroa.speculated.1.2.i153.i ; 2 uses
  %i.dk = tail call noundef float @llvm.fabs.f32(float %i.cr) ; 2 uses
  %i.dl = fcmp olt float %.sroa.speculated.3.2.i154.i, %i.dk
  %.sroa.speculated.324.i155.i = select i1 %i.dl, float %i.dk, float %.sroa.speculated.3.2.i154.i ; 2 uses
  %i.dm = tail call noundef float @llvm.fabs.f32(float %i.cs) ; 2 uses
  %i.dn = fcmp olt float %.sroa.speculated.324.i155.i, %i.dm
  %.sroa.speculated.1.3.i156.i = select i1 %i.dn, float %i.dm, float %.sroa.speculated.324.i155.i ; 2 uses
  %i.do = tail call noundef float @llvm.fabs.f32(float %i.ct) ; 2 uses
  %i.dp = fcmp olt float %.sroa.speculated.1.3.i156.i, %i.do
  %.sroa.speculated.2.3.i157.i = select i1 %i.dp, float %i.do, float %.sroa.speculated.1.3.i156.i
  %i.dq = fcmp ogt float %.sroa.speculated.2.3.i157.i, %i.bs
  %i.dr = icmp samesign ult i32 %.0137.i, 19
  %i.ds = select i1 %i.dq, i1 %i.dr, i1 false
  br i1 %i.ds, label %.preheader163.i, label %.loopexit164.i.loopexit, !llvm.loop !46

.loopexit164.i.loopexit:                          ; preds = %.preheader163.i, %bb.b
  %.pre = load float, ptr %i.r, align 8, !tbaa !26
  %.pre5 = load float, ptr %i.y, align 4, !tbaa !26
  br label %.loopexit164.i

.loopexit164.i:                                   ; preds = %.loopexit164.i.loopexit, %bb.a
  %i.dt = phi float [ %.pre5, %.loopexit164.i.loopexit ], [ %i.bv, %bb.a ]
  %i.du = phi float [ %.pre, %.loopexit164.i.loopexit ], [ %i.bu, %bb.a ]
  %i.dv = load float, ptr %6, align 16, !tbaa !26 ; 3 uses
  store float %i.dv, ptr %2, align 4, !tbaa !26
  %i.dw = load float, ptr %i.i, align 4, !tbaa !26 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 11 uses
  store float %i.dw, ptr %i.dx, align 4, !tbaa !26
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  store float %i.du, ptr %i.dy, align 4, !tbaa !26
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 9 uses
  store float %i.dt, ptr %i.dz, align 4, !tbaa !26
  %i.ea = fcmp olt float %i.dv, 0.000000e+00
  br i1 %i.ea, label %.loopexit.loopexit.i, label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.loopexit164.i
  %i.eb = fneg float %i.dv
  store float %i.eb, ptr %2, align 4, !tbaa !26
  %i.ec = load float, ptr %1, align 4, !tbaa !26
  %i.ed = fneg float %i.ec
  store float %i.ed, ptr %1, align 4, !tbaa !26
  %gep.1.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ee = load float, ptr %gep.1.i, align 4, !tbaa !26
  %i.ef = fneg float %i.ee
  store float %i.ef, ptr %gep.1.i, align 4, !tbaa !26
  %gep.2.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.eg = load float, ptr %gep.2.i, align 4, !tbaa !26
  %i.eh = fneg float %i.eg
  store float %i.eh, ptr %gep.2.i, align 4, !tbaa !26
  %gep.3.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ei = load float, ptr %gep.3.i, align 4, !tbaa !26
  %i.ej = fneg float %i.ei
  store float %i.ej, ptr %gep.3.i, align 4, !tbaa !26
  %.pre.i = load float, ptr %i.dx, align 4, !tbaa !26
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.loopexit164.i
  %i.ek = phi float [ %.pre.i, %.loopexit.loopexit.i ], [ %i.dw, %.loopexit164.i ] ; 2 uses
  %i.el = fcmp olt float %i.ek, 0.000000e+00
  br i1 %i.el, label %.loopexit.loopexit.1.i, label %.loopexit.1.i

.loopexit.loopexit.1.i:                           ; preds = %.loopexit.i
  %i.em = fneg float %i.ek
  store float %i.em, ptr %i.dx, align 4, !tbaa !26
  %i.en = load float, ptr %i.aa, align 4, !tbaa !26
  %i.eo = fneg float %i.en
  store float %i.eo, ptr %i.aa, align 4, !tbaa !26
  %i.ep = load float, ptr %i.ab, align 4, !tbaa !26
  %i.eq = fneg float %i.ep
  store float %i.eq, ptr %i.ab, align 4, !tbaa !26
  %gep.2.1.i = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.er = load float, ptr %gep.2.1.i, align 4, !tbaa !26
  %i.es = fneg float %i.er
  store float %i.es, ptr %gep.2.1.i, align 4, !tbaa !26
  %gep.3.1.i = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.et = load float, ptr %gep.3.1.i, align 4, !tbaa !26
  %i.eu = fneg float %i.et
  store float %i.eu, ptr %gep.3.1.i, align 4, !tbaa !26
  br label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %.loopexit.loopexit.1.i, %.loopexit.i
  %i.ev = load float, ptr %i.dy, align 4, !tbaa !26 ; 2 uses
  %i.ew = fcmp olt float %i.ev, 0.000000e+00
  br i1 %i.ew, label %.loopexit.loopexit.2.i, label %.loopexit.2.i

.loopexit.loopexit.2.i:                           ; preds = %.loopexit.1.i
  %i.ex = fneg float %i.ev
  store float %i.ex, ptr %i.dy, align 4, !tbaa !26
  %invariant.gep.2.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ey = load float, ptr %invariant.gep.2.i, align 4, !tbaa !26
  %i.ez = fneg float %i.ey
  store float %i.ez, ptr %invariant.gep.2.i, align 4, !tbaa !26
  %i.fa = load float, ptr %i.ac, align 4, !tbaa !26
  %i.fb = fneg float %i.fa
  store float %i.fb, ptr %i.ac, align 4, !tbaa !26
  %i.fc = load float, ptr %i.ad, align 4, !tbaa !26
  %i.fd = fneg float %i.fc
  store float %i.fd, ptr %i.ad, align 4, !tbaa !26
  %gep.3.2.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.fe = load float, ptr %gep.3.2.i, align 4, !tbaa !26
  %i.ff = fneg float %i.fe
  store float %i.ff, ptr %gep.3.2.i, align 4, !tbaa !26
  br label %.loopexit.2.i

.loopexit.2.i:                                    ; preds = %.loopexit.loopexit.2.i, %.loopexit.1.i
  %i.fg = load float, ptr %i.dz, align 4, !tbaa !26 ; 2 uses
  %i.fh = fcmp olt float %i.fg, 0.000000e+00
  br i1 %i.fh, label %.loopexit.loopexit.3.i, label %.loopexit.3.i

.loopexit.loopexit.3.i:                           ; preds = %.loopexit.2.i
  %i.fi = fneg float %i.fg
  store float %i.fi, ptr %i.dz, align 4, !tbaa !26
  %invariant.gep.3.i = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.fj = load float, ptr %invariant.gep.3.i, align 4, !tbaa !26
  %i.fk = fneg float %i.fj
  store float %i.fk, ptr %invariant.gep.3.i, align 4, !tbaa !26
  %gep.1.3.i = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.fl = load float, ptr %gep.1.3.i, align 4, !tbaa !26
  %i.fm = fneg float %i.fl
  store float %i.fm, ptr %gep.1.3.i, align 4, !tbaa !26
  %i.fn = load float, ptr %i.ae, align 4, !tbaa !26
  %i.fo = fneg float %i.fn
  store float %i.fo, ptr %i.ae, align 4, !tbaa !26
  %i.fp = load float, ptr %i.af, align 4, !tbaa !26
  %i.fq = fneg float %i.fp
  store float %i.fq, ptr %i.af, align 4, !tbaa !26
  br label %.loopexit.3.i

.loopexit.3.i:                                    ; preds = %.loopexit.loopexit.3.i, %.loopexit.2.i
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.fx = load float, ptr %i.aa, align 4, !tbaa !26
  %i.fy = load float, ptr %i.ab, align 4, !tbaa !26
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 6 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !26
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 6 uses
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !26
  %i.gd = load float, ptr %i.ag, align 4, !tbaa !26
  %i.ge = load float, ptr %i.ah, align 4, !tbaa !26
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 6 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !26
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 6 uses
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !26
  %i.gj = load float, ptr %i.dx, align 4, !tbaa !26 ; 2 uses
  %i.gk = tail call noundef float @llvm.fabs.f32(float %i.gj)
  %i.gl = load float, ptr %2, align 4, !tbaa !26
  %i.gm = tail call noundef float @llvm.fabs.f32(float %i.gl)
  %i.gn = fcmp olt float %i.gm, %i.gk
  br i1 %i.gn, label %.preheader160.i, label %.preheader161.i

.preheader160.i:                                  ; preds = %.loopexit.3.i
  %i.go = load float, ptr %1, align 4, !tbaa !26
  store float %i.go, ptr %i.aa, align 4, !tbaa !26
  %i.gp = load float, ptr %i.fr, align 4, !tbaa !26
  store float %i.gp, ptr %i.ab, align 4, !tbaa !26
  %i.gq = load float, ptr %i.fs, align 4, !tbaa !26
  store float %i.gq, ptr %i.fz, align 4, !tbaa !26
  %i.gr = load float, ptr %i.ft, align 4, !tbaa !26
  store float %i.gr, ptr %i.gb, align 4, !tbaa !26
  %i.gs = load float, ptr %3, align 4, !tbaa !26
  store float %i.gs, ptr %i.ag, align 4, !tbaa !26
  %i.gt = load float, ptr %i.fu, align 4, !tbaa !26
  store float %i.gt, ptr %i.ah, align 4, !tbaa !26
  %i.gu = load float, ptr %i.fv, align 4, !tbaa !26
  store float %i.gu, ptr %i.gf, align 4, !tbaa !26
  %i.gv = load float, ptr %i.fw, align 4, !tbaa !26
  store float %i.gv, ptr %i.gh, align 4, !tbaa !26
  %i.gw = load float, ptr %2, align 4, !tbaa !26
  store float %i.gw, ptr %i.dx, align 4, !tbaa !26
  br label %.preheader161.i

.preheader161.i:                                  ; preds = %.preheader160.i, %.loopexit.3.i
  %.1.i = phi i64 [ -1, %.preheader160.i ], [ 0, %.loopexit.3.i ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN9Imath_3_19jacobiSVDIfEEvRKNS_8Matrix44IT_EERS3_RNS_4Vec4IS2_EES6_S2_b:bb.a
  %i.iq = load float, ptr %i.fv, align 4, !tbaa !26
  store float %i.iq, ptr %i.gf, align 4, !tbaa !26
  %i.ir = load float, ptr %i.fw, align 4, !tbaa !26
  store float %i.ir, ptr %i.gh, align 4, !tbaa !26
  %i.is = load float, ptr %2, align 4, !tbaa !26
  store float %i.is, ptr %i.dx, align 4, !tbaa !26
  br label %.preheader161.1.i

.preheader161.1.i:                                ; preds = %.preheader160.1.1.i, %.preheader160.1.i, %.preheader161.i
  %.1.1.i = phi i64 [ -1, %.preheader160.1.1.i ], [ 1, %.preheader161.i ], [ 0, %.preheader160.1.i ] ; 3 uses
  %invariant.gep173.1.i = getelementptr [4 x i8], ptr %1, i64 %.1.1.i ; 4 uses
  %i.it = getelementptr i8, ptr %invariant.gep173.1.i, i64 4
  store float %i.hi, ptr %i.it, align 4, !tbaa !26
  %i.iu = getelementptr i8, ptr %invariant.gep173.1.i, i64 20
  store float %i.hj, ptr %i.iu, align 4, !tbaa !26
  %i.iv = getelementptr i8, ptr %invariant.gep173.1.i, i64 36
  store float %i.hk, ptr %i.iv, align 4, !tbaa !26
  %i.iw = getelementptr i8, ptr %invariant.gep173.1.i, i64 52
  store float %i.hm, ptr %i.iw, align 4, !tbaa !26
  %invariant.gep176.1.i = getelementptr [4 x i8], ptr %3, i64 %.1.1.i ; 4 uses
  %i.ix = getelementptr i8, ptr %invariant.gep176.1.i, i64 4
  store float %i.ho, ptr %i.ix, align 4, !tbaa !26
  %i.iy = getelementptr i8, ptr %invariant.gep176.1.i, i64 20
  store float %i.hp, ptr %i.iy, align 4, !tbaa !26
  %i.iz = getelementptr i8, ptr %invariant.gep176.1.i, i64 36
  store float %i.hq, ptr %i.iz, align 4, !tbaa !26
  %i.ja = getelementptr i8, ptr %invariant.gep176.1.i, i64 52
  store float %i.hs, ptr %i.ja, align 4, !tbaa !26
  %i.jb = getelementptr [4 x i8], ptr %2, i64 %.1.1.i
  %i.jc = getelementptr i8, ptr %i.jb, i64 4
  store float %i.ht, ptr %i.jc, align 4, !tbaa !26
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.je = load float, ptr %i.jd, align 4, !tbaa !26
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !26
  %i.jh = load float, ptr %i.ae, align 4, !tbaa !26
  %i.ji = load float, ptr %i.af, align 4, !tbaa !26
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !26
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 4 uses
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !26
  %i.jn = load float, ptr %i.ak, align 4, !tbaa !26
  %i.jo = load float, ptr %i.al, align 4, !tbaa !26
  %i.jp = load float, ptr %i.dz, align 4, !tbaa !26 ; 2 uses
  %i.jq = tail call noundef float @llvm.fabs.f32(float %i.jp) ; 3 uses
  %i.jr = load float, ptr %i.dy, align 4, !tbaa !26
  %i.js = tail call noundef float @llvm.fabs.f32(float %i.jr)
  %i.jt = fcmp olt float %i.js, %i.jq
  br i1 %i.jt, label %.preheader160.2.i, label %.preheader161.2.i

.preheader160.2.i:                                ; preds = %.preheader161.1.i
  %i.ju = load float, ptr %i.hh, align 4, !tbaa !26
  store float %i.ju, ptr %i.jd, align 4, !tbaa !26
  %i.jv = load float, ptr %i.ac, align 4, !tbaa !26
  store float %i.jv, ptr %i.jf, align 4, !tbaa !26
  %i.jw = load float, ptr %i.ad, align 4, !tbaa !26
  store float %i.jw, ptr %i.ae, align 4, !tbaa !26
  %i.jx = load float, ptr %i.hl, align 4, !tbaa !26
  store float %i.jx, ptr %i.af, align 4, !tbaa !26
  %i.jy = load float, ptr %i.hn, align 4, !tbaa !26
  store float %i.jy, ptr %i.jj, align 4, !tbaa !26
  %i.jz = load float, ptr %i.ai, align 4, !tbaa !26
  store float %i.jz, ptr %i.jl, align 4, !tbaa !26
  %i.ka = load float, ptr %i.aj, align 4, !tbaa !26
  store float %i.ka, ptr %i.ak, align 4, !tbaa !26
  %i.kb = load float, ptr %i.hr, align 4, !tbaa !26
  store float %i.kb, ptr %i.al, align 4, !tbaa !26
  %i.kc = load float, ptr %i.dy, align 4, !tbaa !26
  store float %i.kc, ptr %i.dz, align 4, !tbaa !26
  %i.kd = load float, ptr %i.dx, align 4, !tbaa !26
  %i.ke = tail call noundef float @llvm.fabs.f32(float %i.kd)
  %i.kf = fcmp olt float %i.ke, %i.jq
  br i1 %i.kf, label %.preheader160.2.1.i, label %.preheader161.2.i

.preheader160.2.1.i:                              ; preds = %.preheader160.2.i
  %i.kg = load float, ptr %i.aa, align 4, !tbaa !26
  store float %i.kg, ptr %i.hh, align 4, !tbaa !26
  %i.kh = load float, ptr %i.ab, align 4, !tbaa !26
  store float %i.kh, ptr %i.ac, align 4, !tbaa !26
  %i.ki = load float, ptr %i.fz, align 4, !tbaa !26
  store float %i.ki, ptr %i.ad, align 4, !tbaa !26
  %i.kj = load float, ptr %i.gb, align 4, !tbaa !26
  store float %i.kj, ptr %i.hl, align 4, !tbaa !26
  %i.kk = load float, ptr %i.ag, align 4, !tbaa !26
  store float %i.kk, ptr %i.hn, align 4, !tbaa !26
  %i.kl = load float, ptr %i.ah, align 4, !tbaa !26
  store float %i.kl, ptr %i.ai, align 4, !tbaa !26
  %i.km = load float, ptr %i.gf, align 4, !tbaa !26
  store float %i.km, ptr %i.aj, align 4, !tbaa !26
  %i.kn = load float, ptr %i.gh, align 4, !tbaa !26
  store float %i.kn, ptr %i.hr, align 4, !tbaa !26
  %i.ko = load float, ptr %i.dx, align 4, !tbaa !26
  store float %i.ko, ptr %i.dy, align 4, !tbaa !26
  %i.kp = load float, ptr %2, align 4, !tbaa !26
  %i.kq = tail call noundef float @llvm.fabs.f32(float %i.kp)
  %i.kr = fcmp olt float %i.kq, %i.jq
  br i1 %i.kr, label %.preheader160.2.2.i, label %.preheader161.2.i

.preheader160.2.2.i:                              ; preds = %.preheader160.2.1.i
  %i.ks = load float, ptr %1, align 4, !tbaa !26
  store float %i.ks, ptr %i.aa, align 4, !tbaa !26
  %i.kt = load float, ptr %i.fr, align 4, !tbaa !26
  store float %i.kt, ptr %i.ab, align 4, !tbaa !26
  %i.ku = load float, ptr %i.fs, align 4, !tbaa !26
  store float %i.ku, ptr %i.fz, align 4, !tbaa !26
  %i.kv = load float, ptr %i.ft, align 4, !tbaa !26
  store float %i.kv, ptr %i.gb, align 4, !tbaa !26
  %i.kw = load float, ptr %3, align 4, !tbaa !26
  store float %i.kw, ptr %i.ag, align 4, !tbaa !26
  %i.kx = load float, ptr %i.fu, align 4, !tbaa !26
  store float %i.kx, ptr %i.ah, align 4, !tbaa !26
  %i.ky = load float, ptr %i.fv, align 4, !tbaa !26
  store float %i.ky, ptr %i.gf, align 4, !tbaa !26
  %i.kz = load float, ptr %i.fw, align 4, !tbaa !26
  store float %i.kz, ptr %i.gh, align 4, !tbaa !26
  %i.la = load float, ptr %2, align 4, !tbaa !26
  store float %i.la, ptr %i.dx, align 4, !tbaa !26
  br label %.preheader161.2.i

.preheader161.2.i:                                ; preds = %.preheader160.2.2.i, %.preheader160.2.1.i, %.preheader160.2.i, %.preheader161.1.i
  %.1.2.i = phi i64 [ -1, %.preheader160.2.2.i ], [ 2, %.preheader161.1.i ], [ 1, %.preheader160.2.i ], [ 0, %.preheader160.2.1.i ] ; 3 uses
  %invariant.gep173.2.i = getelementptr [4 x i8], ptr %1, i64 %.1.2.i ; 4 uses
  %i.lb = getelementptr i8, ptr %invariant.gep173.2.i, i64 4
  store float %i.je, ptr %i.lb, align 4, !tbaa !26
  %i.lc = getelementptr i8, ptr %invariant.gep173.2.i, i64 20
  store float %i.jg, ptr %i.lc, align 4, !tbaa !26
  %i.ld = getelementptr i8, ptr %invariant.gep173.2.i, i64 36
  store float %i.jh, ptr %i.ld, align 4, !tbaa !26
  %i.le = getelementptr i8, ptr %invariant.gep173.2.i, i64 52
  store float %i.ji, ptr %i.le, align 4, !tbaa !26
  %invariant.gep176.2.i = getelementptr [4 x i8], ptr %3, i64 %.1.2.i ; 4 uses
  %i.lf = getelementptr i8, ptr %invariant.gep176.2.i, i64 4
  store float %i.jk, ptr %i.lf, align 4, !tbaa !26
  %i.lg = getelementptr i8, ptr %invariant.gep176.2.i, i64 20
  store float %i.jm, ptr %i.lg, align 4, !tbaa !26
  %i.lh = getelementptr i8, ptr %invariant.gep176.2.i, i64 36
  store float %i.jn, ptr %i.lh, align 4, !tbaa !26
  %i.li = getelementptr i8, ptr %invariant.gep176.2.i, i64 52
  store float %i.jo, ptr %i.li, align 4, !tbaa !26
  %i.lj = getelementptr [4 x i8], ptr %2, i64 %.1.2.i
  %i.lk = getelementptr i8, ptr %i.lj, i64 4
  store float %i.jp, ptr %i.lk, align 4, !tbaa !26
  br i1 %5, label %bb.c, label %_ZN9Imath_3_112_GLOBAL__N_117twoSidedJacobiSVDIfEEvNS_8Matrix44IT_EERS4_RNS_4Vec4IS3_EES5_S3_b.exit

bb.c:                                             ; preds = %.preheader161.2.i
  %i.ll = tail call noundef float @_ZNK9Imath_3_18Matrix44IfE11determinantEv(ptr noundef nonnull align 4 dereferenceable(64) %1) #7
  %i.lm = fcmp olt float %i.ll, 0.000000e+00
  br i1 %i.lm, label %.preheader158.preheader.i, label %bb.d

.preheader158.preheader.i:                        ; preds = %bb.c
  %i.ln = load float, ptr %i.jd, align 4, !tbaa !26
  %i.lo = fneg float %i.ln
  store float %i.lo, ptr %i.jd, align 4, !tbaa !26
  %i.lp = load float, ptr %i.jf, align 4, !tbaa !26
  %i.lq = fneg float %i.lp
  store float %i.lq, ptr %i.jf, align 4, !tbaa !26
  %i.lr = load float, ptr %i.ae, align 4, !tbaa !26
  %i.ls = fneg float %i.lr
  store float %i.ls, ptr %i.ae, align 4, !tbaa !26
  %i.lt = load float, ptr %i.af, align 4, !tbaa !26
  %i.lu = fneg float %i.lt
  store float %i.lu, ptr %i.af, align 4, !tbaa !26
  %i.lv = load float, ptr %i.dz, align 4, !tbaa !26
  %i.lw = fneg float %i.lv
  store float %i.lw, ptr %i.dz, align 4, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %.preheader158.preheader.i, %bb.c
  %i.lx = tail call noundef float @_ZNK9Imath_3_18Matrix44IfE11determinantEv(ptr noundef nonnull align 4 dereferenceable(64) %3) #7
  %i.ly = fcmp olt float %i.lx, 0.000000e+00
  br i1 %i.ly, label %.preheader.preheader.i, label %_ZN9Imath_3_112_GLOBAL__N_117twoSidedJacobiSVDIfEEvNS_8Matrix44IT_EERS4_RNS_4Vec4IS3_EES5_S3_b.exit

.preheader.preheader.i:                           ; preds = %bb.d
  %i.lz = load float, ptr %i.jj, align 4, !tbaa !26
  %i.ma = fneg float %i.lz
  store float %i.ma, ptr %i.jj, align 4, !tbaa !26
  %i.mb = load float, ptr %i.jl, align 4, !tbaa !26
  %i.mc = fneg float %i.mb
  store float %i.mc, ptr %i.jl, align 4, !tbaa !26
  %i.md = load float, ptr %i.ak, align 4, !tbaa !26
  %i.me = fneg float %i.md
  store float %i.me, ptr %i.ak, align 4, !tbaa !26
  %i.mf = load float, ptr %i.al, align 4, !tbaa !26
  %i.mg = fneg float %i.mf
  store float %i.mg, ptr %i.al, align 4, !tbaa !26
  %i.mh = load float, ptr %i.dz, align 4, !tbaa !26
  %i.mi = fneg float %i.mh
  store float %i.mi, ptr %i.dz, align 4, !tbaa !26
  br label %_ZN9Imath_3_112_GLOBAL__N_117twoSidedJacobiSVDIfEEvNS_8Matrix44IT_EERS4_RNS_4Vec4IS3_EES5_S3_b.exit

_ZN9Imath_3_112_GLOBAL__N_117twoSidedJacobiSVDIfEEvNS_8Matrix44IT_EERS4_RNS_4Vec4IS3_EES5_S3_b.exit: ; preds = %.preheader161.2.i, %bb.d, %.preheader.preheader.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_19jacobiSVDIdEEvRKNS_8Matrix44IT_EERS3_RNS_4Vec4IS2_EES6_S2_b(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(128) %3, double noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.Imath_3_1::Matrix44", align 16 ; 23 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load double, ptr %i.a, align 8, !tbaa !7
  %i.d = load <2 x double>, ptr %0, align 8, !tbaa !7
  store <2 x double> %i.d, ptr %6, align 16, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = load <2 x double>, ptr %i.e, align 8, !tbaa !7 ; 3 uses
  store <2 x double> %i.h, ptr %i.f, align 16, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.l = load <2 x double>, ptr %i.i, align 8, !tbaa !7 ; 2 uses
  store <2 x double> %i.l, ptr %i.j, align 16, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.p = load <2 x double>, ptr %i.m, align 8, !tbaa !7 ; 3 uses
  store <2 x double> %i.p, ptr %i.n, align 16, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.t = load <2 x double>, ptr %i.q, align 8, !tbaa !7 ; 3 uses
  store <2 x double> %i.t, ptr %i.r, align 16, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.x = load <2 x double>, ptr %i.u, align 8, !tbaa !7 ; 3 uses
  store <2 x double> %i.x, ptr %i.v, align 16, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.ab = load <2 x double>, ptr %i.y, align 8, !tbaa !7 ; 3 uses
  store <2 x double> %i.ab, ptr %i.z, align 16, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.af = load <2 x double>, ptr %i.ac, align 8, !tbaa !7 ; 3 uses
  store <2 x double> %i.af, ptr %i.ad, align 16, !tbaa !7
  store double 1.000000e+00, ptr %1, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.ah, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.aj, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.al, align 8, !tbaa !7
  store double 1.000000e+00, ptr %3, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.an, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.ap, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.ar, align 8, !tbaa !7
  %7 = tail call noundef double @llvm.fabs.f64(double %i.c) ; 2 uses
  %8 = fcmp ogt double %7, 0.000000e+00
  %.sroa.speculated.1.i.i = select i1 %8, double %7, double 0.000000e+00 ; 2 uses
  %i.as = extractelement <2 x double> %i.h, i64 0
  %i.at = tail call noundef double @llvm.fabs.f64(double %i.as) ; 2 uses
  %i.au = fcmp olt double %.sroa.speculated.1.i.i, %i.at
  %.sroa.speculated.2.i.i = select i1 %i.au, double %i.at, double %.sroa.speculated.1.i.i ; 2 uses
  %i.av = extractelement <2 x double> %i.h, i64 1
  %i.aw = tail call noundef double @llvm.fabs.f64(double %i.av) ; 2 uses
  %i.ax = fcmp olt double %.sroa.speculated.2.i.i, %i.aw
  %.sroa.speculated.3.i.i = select i1 %i.ax, double %i.aw, double %.sroa.speculated.2.i.i ; 2 uses
  %i.ay = extractelement <2 x double> %i.l, i64 0
  %i.az = tail call noundef double @llvm.fabs.f64(double %i.ay) ; 2 uses
  %i.ba = fcmp olt double %.sroa.speculated.3.i.i, %i.az
  %.sroa.speculated.118.i.i = select i1 %i.ba, double %i.az, double %.sroa.speculated.3.i.i ; 2 uses
  %i.bb = extractelement <2 x double> %i.p, i64 0
  %i.bc = tail call noundef double @llvm.fabs.f64(double %i.bb) ; 2 uses
  %i.bd = fcmp olt double %.sroa.speculated.118.i.i, %i.bc
  %.sroa.speculated.2.1.i.i = select i1 %i.bd, double %i.bc, double %.sroa.speculated.118.i.i ; 2 uses
  %i.be = extractelement <2 x double> %i.p, i64 1
  %i.bf = tail call noundef double @llvm.fabs.f64(double %i.be) ; 2 uses
  %i.bg = fcmp olt double %.sroa.speculated.2.1.i.i, %i.bf
  %.sroa.speculated.3.1.i.i = select i1 %i.bg, double %i.bf, double %.sroa.speculated.2.1.i.i ; 2 uses
  %i.bh = extractelement <2 x double> %i.t, i64 0
  %i.bi = tail call noundef double @llvm.fabs.f64(double %i.bh) ; 2 uses
  %i.bj = fcmp olt double %.sroa.speculated.3.1.i.i, %i.bi
  %.sroa.speculated.221.i.i = select i1 %i.bj, double %i.bi, double %.sroa.speculated.3.1.i.i ; 2 uses
  %i.bk = extractelement <2 x double> %i.t, i64 1
  %i.bl = tail call noundef double @llvm.fabs.f64(double %i.bk) ; 2 uses
  %i.bm = fcmp olt double %.sroa.speculated.221.i.i, %i.bl
  %.sroa.speculated.1.2.i.i = select i1 %i.bm, double %i.bl, double %.sroa.speculated.221.i.i ; 2 uses
  %i.bn = extractelement <2 x double> %i.x, i64 1
  %i.bo = tail call noundef double @llvm.fabs.f64(double %i.bn) ; 2 uses
  %i.bp = fcmp olt double %.sroa.speculated.1.2.i.i, %i.bo
  %.sroa.speculated.3.2.i.i = select i1 %i.bp, double %i.bo, double %.sroa.speculated.1.2.i.i ; 2 uses
  %i.bq = extractelement <2 x double> %i.ab, i64 0
  %i.br = tail call noundef double @llvm.fabs.f64(double %i.bq) ; 2 uses
  %i.bs = fcmp olt double %.sroa.speculated.3.2.i.i, %i.br
  %.sroa.speculated.324.i.i = select i1 %i.bs, double %i.br, double %.sroa.speculated.3.2.i.i ; 2 uses
  %i.bt = extractelement <2 x double> %i.ab, i64 1
  %i.bu = tail call noundef double @llvm.fabs.f64(double %i.bt) ; 2 uses
  %i.bv = fcmp olt double %.sroa.speculated.324.i.i, %i.bu
  %.sroa.speculated.1.3.i.i = select i1 %i.bv, double %i.bu, double %.sroa.speculated.324.i.i ; 2 uses
  %i.bw = extractelement <2 x double> %i.af, i64 0
  %i.bx = tail call noundef double @llvm.fabs.f64(double %i.bw) ; 2 uses
  %i.by = fcmp olt double %.sroa.speculated.1.3.i.i, %i.bx
  %.sroa.speculated.2.3.i.i = select i1 %i.by, double %i.bx, double %.sroa.speculated.1.3.i.i
  %i.bz = fmul double %4, %.sroa.speculated.2.3.i.i ; 2 uses
  %i.ca = fcmp une double %i.bz, 0.000000e+00
  %i.cb = extractelement <2 x double> %i.x, i64 0
  %i.cc = extractelement <2 x double> %i.af, i64 1
  br i1 %i.ca, label %.preheader163.i, label %.loopexit164.i

.preheader163.i:                                  ; preds = %bb.a, %bb.b
  %.0137.i = phi i32 [ %i.co, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.cd = call fastcc noundef zeroext i1 @_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdEEbRNS_8Matrix44IT_EEiiS5_S5_S3_(ptr noundef nonnull align 8 dereferenceable(128) %6, i32 noundef 0, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %3, double noundef %4)
  %i.ce = call fastcc noundef zeroext i1 @_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdEEbRNS_8Matrix44IT_EEiiS5_S5_S3_(ptr noundef nonnull align 8 dereferenceable(128) %6, i32 noundef 0, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %3, double noundef %4)
  %i.cf = or i1 %i.cd, %i.ce
  %i.cg = call fastcc noundef zeroext i1 @_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdEEbRNS_8Matrix44IT_EEiiS5_S5_S3_(ptr noundef nonnull align 8 dereferenceable(128) %6, i32 noundef 0, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %3, double noundef %4)
  %i.ch = or i1 %i.cg, %i.cf
  %i.ci = call fastcc noundef zeroext i1 @_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdEEbRNS_8Matrix44IT_EEiiS5_S5_S3_(ptr noundef nonnull align 8 dereferenceable(128) %6, i32 noundef 1, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %3, double noundef %4)
  %i.cj = or i1 %i.ci, %i.ch
  %i.ck = call fastcc noundef zeroext i1 @_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdEEbRNS_8Matrix44IT_EEiiS5_S5_S3_(ptr noundef nonnull align 8 dereferenceable(128) %6, i32 noundef 1, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %3, double noundef %4)
  %i.cl = or i1 %i.ck, %i.cj
  %i.cm = call fastcc noundef zeroext i1 @_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIdEEbRNS_8Matrix44IT_EEiiS5_S5_S3_(ptr noundef nonnull align 8 dereferenceable(128) %6, i32 noundef 2, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %3, double noundef %4)
  %i.cn = or i1 %i.cm, %i.cl
  br i1 %i.cn, label %bb.b, label %.loopexit164.i.loopexit

bb.b:                                             ; preds = %.preheader163.i
  %i.co = add nuw nsw i32 %.0137.i, 1
  %i.cp = load double, ptr %i.b, align 8, !tbaa !7
  %i.cq = load double, ptr %i.f, align 16, !tbaa !7
  %i.cr = load double, ptr %i.g, align 8, !tbaa !7
  %i.cs = load double, ptr %i.j, align 16, !tbaa !7
  %i.ct = load double, ptr %i.n, align 16, !tbaa !7
  %i.cu = load double, ptr %i.o, align 8, !tbaa !7
  %i.cv = load double, ptr %i.r, align 16, !tbaa !7
  %i.cw = load double, ptr %i.s, align 8, !tbaa !7
  %i.cx = load double, ptr %i.w, align 8, !tbaa !7
  %i.cy = load double, ptr %i.z, align 16, !tbaa !7
  %i.cz = load double, ptr %i.aa, align 8, !tbaa !7
  %i.da = load double, ptr %i.ad, align 16, !tbaa !7
  %9 = tail call noundef double @llvm.fabs.f64(double %i.cp) ; 2 uses
  %10 = fcmp ogt double %9, 0.000000e+00
  %.sroa.speculated.1.i146.i = select i1 %10, double %9, double 0.000000e+00 ; 2 uses
  %i.db = tail call noundef double @llvm.fabs.f64(double %i.cq) ; 2 uses
  %i.dc = fcmp olt double %.sroa.speculated.1.i146.i, %i.db
  %.sroa.speculated.2.i147.i = select i1 %i.dc, double %i.db, double %.sroa.speculated.1.i146.i ; 2 uses
  %i.dd = tail call noundef double @llvm.fabs.f64(double %i.cr) ; 2 uses
  %i.de = fcmp olt double %.sroa.speculated.2.i147.i, %i.dd
  %.sroa.speculated.3.i148.i = select i1 %i.de, double %i.dd, double %.sroa.speculated.2.i147.i ; 2 uses
  %i.df = tail call noundef double @llvm.fabs.f64(double %i.cs) ; 2 uses
  %i.dg = fcmp olt double %.sroa.speculated.3.i148.i, %i.df
  %.sroa.speculated.118.i149.i = select i1 %i.dg, double %i.df, double %.sroa.speculated.3.i148.i ; 2 uses
  %i.dh = tail call noundef double @llvm.fabs.f64(double %i.ct) ; 2 uses
  %i.di = fcmp olt double %.sroa.speculated.118.i149.i, %i.dh
  %.sroa.speculated.2.1.i150.i = select i1 %i.di, double %i.dh, double %.sroa.speculated.118.i149.i ; 2 uses
  %i.dj = tail call noundef double @llvm.fabs.f64(double %i.cu) ; 2 uses
  %i.dk = fcmp olt double %.sroa.speculated.2.1.i150.i, %i.dj
  %.sroa.speculated.3.1.i151.i = select i1 %i.dk, double %i.dj, double %.sroa.speculated.2.1.i150.i ; 2 uses
  %i.dl = tail call noundef double @llvm.fabs.f64(double %i.cv) ; 2 uses
  %i.dm = fcmp olt double %.sroa.speculated.3.1.i151.i, %i.dl
  %.sroa.speculated.221.i152.i = select i1 %i.dm, double %i.dl, double %.sroa.speculated.3.1.i151.i ; 2 uses
  %i.dn = tail call noundef double @llvm.fabs.f64(double %i.cw) ; 2 uses
  %i.do = fcmp olt double %.sroa.speculated.221.i152.i, %i.dn
  %.sroa.speculated.1.2.i153.i = select i1 %i.do, double %i.dn, double %.sroa.speculated.221.i152.i ; 2 uses
  %i.dp = tail call noundef double @llvm.fabs.f64(double %i.cx) ; 2 uses
  %i.dq = fcmp olt double %.sroa.speculated.1.2.i153.i, %i.dp
  %.sroa.speculated.3.2.i154.i = select i1 %i.dq, double %i.dp, double %.sroa.speculated.1.2.i153.i ; 2 uses
  %i.dr = tail call noundef double @llvm.fabs.f64(double %i.cy) ; 2 uses
  %i.ds = fcmp olt double %.sroa.speculated.3.2.i154.i, %i.dr
  %.sroa.speculated.324.i155.i = select i1 %i.ds, double %i.dr, double %.sroa.speculated.3.2.i154.i ; 2 uses
  %i.dt = tail call noundef double @llvm.fabs.f64(double %i.cz) ; 2 uses
  %i.du = fcmp olt double %.sroa.speculated.324.i155.i, %i.dt
  %.sroa.speculated.1.3.i156.i = select i1 %i.du, double %i.dt, double %.sroa.speculated.324.i155.i ; 2 uses
  %i.dv = tail call noundef double @llvm.fabs.f64(double %i.da) ; 2 uses
  %i.dw = fcmp olt double %.sroa.speculated.1.3.i156.i, %i.dv
  %.sroa.speculated.2.3.i157.i = select i1 %i.dw, double %i.dv, double %.sroa.speculated.1.3.i156.i
  %i.dx = fcmp ogt double %.sroa.speculated.2.3.i157.i, %i.bz
  %i.dy = icmp samesign ult i32 %.0137.i, 19
  %i.dz = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %i.dz, label %.preheader163.i, label %.loopexit164.i.loopexit, !llvm.loop !47

.loopexit164.i.loopexit:                          ; preds = %.preheader163.i, %bb.b
  %.pre = load double, ptr %i.v, align 16, !tbaa !7
  %.pre5 = load double, ptr %i.ae, align 8, !tbaa !7
  br label %.loopexit164.i

.loopexit164.i:                                   ; preds = %.loopexit164.i.loopexit, %bb.a
  %i.ea = phi double [ %.pre5, %.loopexit164.i.loopexit ], [ %i.cc, %bb.a ]
  %i.eb = phi double [ %.pre, %.loopexit164.i.loopexit ], [ %i.cb, %bb.a ]
  %i.ec = load double, ptr %6, align 16, !tbaa !7 ; 3 uses
  store double %i.ec, ptr %2, align 8, !tbaa !7
  %i.ed = load double, ptr %i.k, align 8, !tbaa !7 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  store double %i.ed, ptr %i.ee, align 8, !tbaa !7
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store double %i.eb, ptr %i.ef, align 8, !tbaa !7
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  store double %i.ea, ptr %i.eg, align 8, !tbaa !7
  %i.eh = fcmp olt double %i.ec, 0.000000e+00
  br i1 %i.eh, label %.loopexit.loopexit.i, label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.loopexit164.i
  %i.ei = fneg double %i.ec
  store double %i.ei, ptr %2, align 8, !tbaa !7
  %i.ej = load double, ptr %1, align 8, !tbaa !7
  %i.ek = fneg double %i.ej
  store double %i.ek, ptr %1, align 8, !tbaa !7
  %gep.1.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.el = load double, ptr %gep.1.i, align 8, !tbaa !7
  %i.em = fneg double %i.el
  store double %i.em, ptr %gep.1.i, align 8, !tbaa !7
  %gep.2.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.en = load double, ptr %gep.2.i, align 8, !tbaa !7
  %i.eo = fneg double %i.en
  store double %i.eo, ptr %gep.2.i, align 8, !tbaa !7
  %gep.3.i = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ep = load double, ptr %gep.3.i, align 8, !tbaa !7
  %i.eq = fneg double %i.ep
  store double %i.eq, ptr %gep.3.i, align 8, !tbaa !7
  %.pre.i = load double, ptr %i.ee, align 8, !tbaa !7
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.loopexit164.i
  %i.er = phi double [ %.pre.i, %.loopexit.loopexit.i ], [ %i.ed, %.loopexit164.i ] ; 2 uses
  %i.es = fcmp olt double %i.er, 0.000000e+00
  br i1 %i.es, label %.loopexit.loopexit.1.i, label %.loopexit.1.i

.loopexit.loopexit.1.i:                           ; preds = %.loopexit.i
  %i.et = fneg double %i.er
  store double %i.et, ptr %i.ee, align 8, !tbaa !7
  %i.eu = load double, ptr %i.ag, align 8, !tbaa !7
  %i.ev = fneg double %i.eu
  store double %i.ev, ptr %i.ag, align 8, !tbaa !7
  %i.ew = load double, ptr %i.ah, align 8, !tbaa !7
  %i.ex = fneg double %i.ew
  store double %i.ex, ptr %i.ah, align 8, !tbaa !7
  %gep.2.1.i = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ey = load double, ptr %gep.2.1.i, align 8, !tbaa !7
  %i.ez = fneg double %i.ey
  store double %i.ez, ptr %gep.2.1.i, align 8, !tbaa !7
  %gep.3.1.i = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.fa = load double, ptr %gep.3.1.i, align 8, !tbaa !7
  %i.fb = fneg double %i.fa
  store double %i.fb, ptr %gep.3.1.i, align 8, !tbaa !7
  br label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %.loopexit.loopexit.1.i, %.loopexit.i
  %i.fc = load double, ptr %i.ef, align 8, !tbaa !7 ; 2 uses
  %i.fd = fcmp olt double %i.fc, 0.000000e+00
  br i1 %i.fd, label %.loopexit.loopexit.2.i, label %.loopexit.2.i

.loopexit.loopexit.2.i:                           ; preds = %.loopexit.1.i
  %i.fe = fneg double %i.fc
  store double %i.fe, ptr %i.ef, align 8, !tbaa !7
  %invariant.gep.2.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ff = load double, ptr %invariant.gep.2.i, align 8, !tbaa !7
  %i.fg = fneg double %i.ff
  store double %i.fg, ptr %invariant.gep.2.i, align 8, !tbaa !7
  %i.fh = load double, ptr %i.ai, align 8, !tbaa !7
  %i.fi = fneg double %i.fh
  store double %i.fi, ptr %i.ai, align 8, !tbaa !7
  %i.fj = load double, ptr %i.aj, align 8, !tbaa !7
  %i.fk = fneg double %i.fj
  store double %i.fk, ptr %i.aj, align 8, !tbaa !7
  %gep.3.2.i = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.fl = load double, ptr %gep.3.2.i, align 8, !tbaa !7
  %i.fm = fneg double %i.fl
  store double %i.fm, ptr %gep.3.2.i, align 8, !tbaa !7
  br label %.loopexit.2.i

.loopexit.2.i:                                    ; preds = %.loopexit.loopexit.2.i, %.loopexit.1.i
  %i.fn = load double, ptr %i.eg, align 8, !tbaa !7 ; 2 uses
  %i.fo = fcmp olt double %i.fn, 0.000000e+00
  br i1 %i.fo, label %.loopexit.loopexit.3.i, label %.loopexit.3.i

.loopexit.loopexit.3.i:                           ; preds = %.loopexit.2.i
  %i.fp = fneg double %i.fn
  store double %i.fp, ptr %i.eg, align 8, !tbaa !7
  %invariant.gep.3.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.fq = load double, ptr %invariant.gep.3.i, align 8, !tbaa !7
  %i.fr = fneg double %i.fq
  store double %i.fr, ptr %invariant.gep.3.i, align 8, !tbaa !7
  %gep.1.3.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.fs = load double, ptr %gep.1.3.i, align 8, !tbaa !7
  %i.ft = fneg double %i.fs
  store double %i.ft, ptr %gep.1.3.i, align 8, !tbaa !7
  %i.fu = load double, ptr %i.ak, align 8, !tbaa !7
  %i.fv = fneg double %i.fu
  store double %i.fv, ptr %i.ak, align 8, !tbaa !7
  %i.fw = load double, ptr %i.al, align 8, !tbaa !7
  %i.fx = fneg double %i.fw
  store double %i.fx, ptr %i.al, align 8, !tbaa !7
  br label %.loopexit.3.i

.loopexit.3.i:                                    ; preds = %.loopexit.loopexit.3.i, %.loopexit.2.i
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.ge = load double, ptr %i.ag, align 8, !tbaa !7
  %i.gf = load double, ptr %i.ah, align 8, !tbaa !7
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !7
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 6 uses
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !7
  %i.gk = load double, ptr %i.am, align 8, !tbaa !7
  %i.gl = load double, ptr %i.an, align 8, !tbaa !7
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !7
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 6 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !7
  %i.gq = load double, ptr %i.ee, align 8, !tbaa !7 ; 2 uses
  %i.gr = tail call noundef double @llvm.fabs.f64(double %i.gq)
  %i.gs = load double, ptr %2, align 8, !tbaa !7
  %i.gt = tail call noundef double @llvm.fabs.f64(double %i.gs)
  %i.gu = fcmp olt double %i.gt, %i.gr
  br i1 %i.gu, label %.preheader160.i, label %.preheader161.i

.preheader160.i:                                  ; preds = %.loopexit.3.i
  %i.gv = load double, ptr %1, align 8, !tbaa !7
  store double %i.gv, ptr %i.ag, align 8, !tbaa !7
  %i.gw = load double, ptr %i.fy, align 8, !tbaa !7
  store double %i.gw, ptr %i.ah, align 8, !tbaa !7
  %i.gx = load double, ptr %i.fz, align 8, !tbaa !7
  store double %i.gx, ptr %i.gg, align 8, !tbaa !7
  %i.gy = load double, ptr %i.ga, align 8, !tbaa !7
  store double %i.gy, ptr %i.gi, align 8, !tbaa !7
  %i.gz = load double, ptr %3, align 8, !tbaa !7
  store double %i.gz, ptr %i.am, align 8, !tbaa !7
  %i.ha = load double, ptr %i.gb, align 8, !tbaa !7
  store double %i.ha, ptr %i.an, align 8, !tbaa !7
  %i.hb = load double, ptr %i.gc, align 8, !tbaa !7
  store double %i.hb, ptr %i.gm, align 8, !tbaa !7
  %i.hc = load double, ptr %i.gd, align 8, !tbaa !7
  store double %i.hc, ptr %i.go, align 8, !tbaa !7
  %i.hd = load double, ptr %2, align 8, !tbaa !7
  store double %i.hd, ptr %i.ee, align 8, !tbaa !7
  br label %.preheader161.i

.preheader161.i:                                  ; preds = %.preheader160.i, %.loopexit.3.i
  %.1.i = phi i64 [ -1, %.preheader160.i ], [ 0, %.loopexit.3.i ] ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN9Imath_3_19jacobiSVDIdEEvRKNS_8Matrix44IT_EERS3_RNS_4Vec4IS2_EES6_S2_b:bb.a
  %invariant.gep176.1.i = getelementptr [8 x i8], ptr %3, i64 %.1.1.i ; 4 uses
  %i.je = getelementptr i8, ptr %invariant.gep176.1.i, i64 8
  store double %i.hv, ptr %i.je, align 8, !tbaa !7
  %i.jf = getelementptr i8, ptr %invariant.gep176.1.i, i64 40
  store double %i.hw, ptr %i.jf, align 8, !tbaa !7
  %i.jg = getelementptr i8, ptr %invariant.gep176.1.i, i64 72
  store double %i.hx, ptr %i.jg, align 8, !tbaa !7
  %i.jh = getelementptr i8, ptr %invariant.gep176.1.i, i64 104
  store double %i.hz, ptr %i.jh, align 8, !tbaa !7
  %i.ji = getelementptr [8 x i8], ptr %2, i64 %.1.1.i
  %i.jj = getelementptr i8, ptr %i.ji, i64 8
  store double %i.ia, ptr %i.jj, align 8, !tbaa !7
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !7
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !7
  %i.jo = load double, ptr %i.ak, align 8, !tbaa !7
  %i.jp = load double, ptr %i.al, align 8, !tbaa !7
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !7
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.jt = load double, ptr %i.js, align 8, !tbaa !7
  %i.ju = load double, ptr %i.aq, align 8, !tbaa !7
  %i.jv = load double, ptr %i.ar, align 8, !tbaa !7
  %i.jw = load double, ptr %i.eg, align 8, !tbaa !7 ; 2 uses
  %i.jx = tail call noundef double @llvm.fabs.f64(double %i.jw) ; 3 uses
  %i.jy = load double, ptr %i.ef, align 8, !tbaa !7
  %i.jz = tail call noundef double @llvm.fabs.f64(double %i.jy)
  %i.ka = fcmp olt double %i.jz, %i.jx
  br i1 %i.ka, label %.preheader160.2.i, label %.preheader161.2.i

.preheader160.2.i:                                ; preds = %.preheader161.1.i
  %i.kb = load double, ptr %i.ho, align 8, !tbaa !7
  store double %i.kb, ptr %i.jk, align 8, !tbaa !7
  %i.kc = load double, ptr %i.ai, align 8, !tbaa !7
  store double %i.kc, ptr %i.jm, align 8, !tbaa !7
  %i.kd = load double, ptr %i.aj, align 8, !tbaa !7
  store double %i.kd, ptr %i.ak, align 8, !tbaa !7
  %i.ke = load double, ptr %i.hs, align 8, !tbaa !7
  store double %i.ke, ptr %i.al, align 8, !tbaa !7
  %i.kf = load double, ptr %i.hu, align 8, !tbaa !7
  store double %i.kf, ptr %i.jq, align 8, !tbaa !7
  %i.kg = load double, ptr %i.ao, align 8, !tbaa !7
  store double %i.kg, ptr %i.js, align 8, !tbaa !7
  %i.kh = load double, ptr %i.ap, align 8, !tbaa !7
  store double %i.kh, ptr %i.aq, align 8, !tbaa !7
  %i.ki = load double, ptr %i.hy, align 8, !tbaa !7
  store double %i.ki, ptr %i.ar, align 8, !tbaa !7
  %i.kj = load double, ptr %i.ef, align 8, !tbaa !7
  store double %i.kj, ptr %i.eg, align 8, !tbaa !7
  %i.kk = load double, ptr %i.ee, align 8, !tbaa !7
  %i.kl = tail call noundef double @llvm.fabs.f64(double %i.kk)
  %i.km = fcmp olt double %i.kl, %i.jx
  br i1 %i.km, label %.preheader160.2.1.i, label %.preheader161.2.i

.preheader160.2.1.i:                              ; preds = %.preheader160.2.i
  %i.kn = load double, ptr %i.ag, align 8, !tbaa !7
  store double %i.kn, ptr %i.ho, align 8, !tbaa !7
  %i.ko = load double, ptr %i.ah, align 8, !tbaa !7
  store double %i.ko, ptr %i.ai, align 8, !tbaa !7
  %i.kp = load double, ptr %i.gg, align 8, !tbaa !7
  store double %i.kp, ptr %i.aj, align 8, !tbaa !7
  %i.kq = load double, ptr %i.gi, align 8, !tbaa !7
  store double %i.kq, ptr %i.hs, align 8, !tbaa !7
  %i.kr = load double, ptr %i.am, align 8, !tbaa !7
  store double %i.kr, ptr %i.hu, align 8, !tbaa !7
  %i.ks = load double, ptr %i.an, align 8, !tbaa !7
  store double %i.ks, ptr %i.ao, align 8, !tbaa !7
  %i.kt = load double, ptr %i.gm, align 8, !tbaa !7
  store double %i.kt, ptr %i.ap, align 8, !tbaa !7
  %i.ku = load double, ptr %i.go, align 8, !tbaa !7
  store double %i.ku, ptr %i.hy, align 8, !tbaa !7
  %i.kv = load double, ptr %i.ee, align 8, !tbaa !7
  store double %i.kv, ptr %i.ef, align 8, !tbaa !7
  %i.kw = load double, ptr %2, align 8, !tbaa !7
  %i.kx = tail call noundef double @llvm.fabs.f64(double %i.kw)
  %i.ky = fcmp olt double %i.kx, %i.jx
  br i1 %i.ky, label %.preheader160.2.2.i, label %.preheader161.2.i

.preheader160.2.2.i:                              ; preds = %.preheader160.2.1.i
  %i.kz = load double, ptr %1, align 8, !tbaa !7
  store double %i.kz, ptr %i.ag, align 8, !tbaa !7
  %i.la = load double, ptr %i.fy, align 8, !tbaa !7
  store double %i.la, ptr %i.ah, align 8, !tbaa !7
  %i.lb = load double, ptr %i.fz, align 8, !tbaa !7
  store double %i.lb, ptr %i.gg, align 8, !tbaa !7
  %i.lc = load double, ptr %i.ga, align 8, !tbaa !7
  store double %i.lc, ptr %i.gi, align 8, !tbaa !7
  %i.ld = load double, ptr %3, align 8, !tbaa !7
  store double %i.ld, ptr %i.am, align 8, !tbaa !7
  %i.le = load double, ptr %i.gb, align 8, !tbaa !7
  store double %i.le, ptr %i.an, align 8, !tbaa !7
  %i.lf = load double, ptr %i.gc, align 8, !tbaa !7
  store double %i.lf, ptr %i.gm, align 8, !tbaa !7
  %i.lg = load double, ptr %i.gd, align 8, !tbaa !7
  store double %i.lg, ptr %i.go, align 8, !tbaa !7
  %i.lh = load double, ptr %2, align 8, !tbaa !7
  store double %i.lh, ptr %i.ee, align 8, !tbaa !7
  br label %.preheader161.2.i

.preheader161.2.i:                                ; preds = %.preheader160.2.2.i, %.preheader160.2.1.i, %.preheader160.2.i, %.preheader161.1.i
  %.1.2.i = phi i64 [ -1, %.preheader160.2.2.i ], [ 2, %.preheader161.1.i ], [ 1, %.preheader160.2.i ], [ 0, %.preheader160.2.1.i ] ; 3 uses
  %invariant.gep173.2.i = getelementptr [8 x i8], ptr %1, i64 %.1.2.i ; 4 uses
  %i.li = getelementptr i8, ptr %invariant.gep173.2.i, i64 8
  store double %i.jl, ptr %i.li, align 8, !tbaa !7
  %i.lj = getelementptr i8, ptr %invariant.gep173.2.i, i64 40
  store double %i.jn, ptr %i.lj, align 8, !tbaa !7
  %i.lk = getelementptr i8, ptr %invariant.gep173.2.i, i64 72
  store double %i.jo, ptr %i.lk, align 8, !tbaa !7
  %i.ll = getelementptr i8, ptr %invariant.gep173.2.i, i64 104
  store double %i.jp, ptr %i.ll, align 8, !tbaa !7
  %invariant.gep176.2.i = getelementptr [8 x i8], ptr %3, i64 %.1.2.i ; 4 uses
  %i.lm = getelementptr i8, ptr %invariant.gep176.2.i, i64 8
  store double %i.jr, ptr %i.lm, align 8, !tbaa !7
  %i.ln = getelementptr i8, ptr %invariant.gep176.2.i, i64 40
  store double %i.jt, ptr %i.ln, align 8, !tbaa !7
  %i.lo = getelementptr i8, ptr %invariant.gep176.2.i, i64 72
  store double %i.ju, ptr %i.lo, align 8, !tbaa !7
  %i.lp = getelementptr i8, ptr %invariant.gep176.2.i, i64 104
  store double %i.jv, ptr %i.lp, align 8, !tbaa !7
  %i.lq = getelementptr [8 x i8], ptr %2, i64 %.1.2.i
  %i.lr = getelementptr i8, ptr %i.lq, i64 8
  store double %i.jw, ptr %i.lr, align 8, !tbaa !7
  br i1 %5, label %bb.c, label %_ZN9Imath_3_112_GLOBAL__N_117twoSidedJacobiSVDIdEEvNS_8Matrix44IT_EERS4_RNS_4Vec4IS3_EES5_S3_b.exit

bb.c:                                             ; preds = %.preheader161.2.i
  %i.ls = tail call noundef double @_ZNK9Imath_3_18Matrix44IdE11determinantEv(ptr noundef nonnull align 8 dereferenceable(128) %1) #7
  %i.lt = fcmp olt double %i.ls, 0.000000e+00
  br i1 %i.lt, label %.preheader158.preheader.i, label %bb.d

.preheader158.preheader.i:                        ; preds = %bb.c
  %i.lu = load double, ptr %i.jk, align 8, !tbaa !7
  %i.lv = fneg double %i.lu
  store double %i.lv, ptr %i.jk, align 8, !tbaa !7
  %i.lw = load double, ptr %i.jm, align 8, !tbaa !7
  %i.lx = fneg double %i.lw
  store double %i.lx, ptr %i.jm, align 8, !tbaa !7
  %i.ly = load double, ptr %i.ak, align 8, !tbaa !7
  %i.lz = fneg double %i.ly
  store double %i.lz, ptr %i.ak, align 8, !tbaa !7
  %i.ma = load double, ptr %i.al, align 8, !tbaa !7
  %i.mb = fneg double %i.ma
  store double %i.mb, ptr %i.al, align 8, !tbaa !7
  %i.mc = load double, ptr %i.eg, align 8, !tbaa !7
  %i.md = fneg double %i.mc
  store double %i.md, ptr %i.eg, align 8, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %.preheader158.preheader.i, %bb.c
  %i.me = tail call noundef double @_ZNK9Imath_3_18Matrix44IdE11determinantEv(ptr noundef nonnull align 8 dereferenceable(128) %3) #7
  %i.mf = fcmp olt double %i.me, 0.000000e+00
  br i1 %i.mf, label %.preheader.preheader.i, label %_ZN9Imath_3_112_GLOBAL__N_117twoSidedJacobiSVDIdEEvNS_8Matrix44IT_EERS4_RNS_4Vec4IS3_EES5_S3_b.exit

.preheader.preheader.i:                           ; preds = %bb.d
  %i.mg = load double, ptr %i.jq, align 8, !tbaa !7
  %i.mh = fneg double %i.mg
  store double %i.mh, ptr %i.jq, align 8, !tbaa !7
  %i.mi = load double, ptr %i.js, align 8, !tbaa !7
  %i.mj = fneg double %i.mi
  store double %i.mj, ptr %i.js, align 8, !tbaa !7
  %i.mk = load double, ptr %i.aq, align 8, !tbaa !7
  %i.ml = fneg double %i.mk
  store double %i.ml, ptr %i.aq, align 8, !tbaa !7
  %i.mm = load double, ptr %i.ar, align 8, !tbaa !7
  %i.mn = fneg double %i.mm
  store double %i.mn, ptr %i.ar, align 8, !tbaa !7
  %i.mo = load double, ptr %i.eg, align 8, !tbaa !7
  %i.mp = fneg double %i.mo
  store double %i.mp, ptr %i.eg, align 8, !tbaa !7
  br label %_ZN9Imath_3_112_GLOBAL__N_117twoSidedJacobiSVDIdEEvNS_8Matrix44IT_EERS4_RNS_4Vec4IS3_EES5_S3_b.exit

_ZN9Imath_3_112_GLOBAL__N_117twoSidedJacobiSVDIdEEvNS_8Matrix44IT_EERS4_RNS_4Vec4IS3_EES5_S3_b.exit: ; preds = %.preheader161.2.i, %bb.d, %.preheader.preheader.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_117jacobiEigenSolverIfEEvRNS_8Matrix33IT_EERNS_4Vec3IS2_EES4_S2_(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(36) %2, float noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %2, align 4, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.d, align 4, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store float 1.000000e+00, ptr %i.h, align 4, !tbaa !26
  %i.i = load float, ptr %0, align 4, !tbaa !26
  store float %i.i, ptr %1, align 4, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  store float %i.k, ptr %i.l, align 4, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !26 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store float %i.n, ptr %i.o, align 4, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 8 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !26 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !26 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !26 ; 2 uses
  %4 = tail call noundef float @llvm.fabs.f32(float %i.q) ; 2 uses
  %5 = fcmp ogt float %4, 0.000000e+00
  %.sroa.speculated.i = select i1 %5, float %4, float 0.000000e+00 ; 2 uses
  %i.v = tail call noundef float @llvm.fabs.f32(float %i.s) ; 2 uses
  %i.w = fcmp olt float %.sroa.speculated.i, %i.v
  %.sroa.speculated.121.i = select i1 %i.w, float %i.v, float %.sroa.speculated.i ; 2 uses
  %i.x = tail call noundef float @llvm.fabs.f32(float %i.u) ; 2 uses
  %i.y = fcmp olt float %.sroa.speculated.121.i, %i.x
  %.sroa.speculated.1.i = select i1 %i.y, float %i.x, float %.sroa.speculated.121.i
  %i.z = fmul float %3, %.sroa.speculated.1.i     ; 2 uses
  %i.aa = fcmp une float %i.z, 0.000000e+00
  br i1 %i.aa, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.i
  %i.ad = phi float [ %i.gj, %bb.i ], [ %i.n, %.preheader ]
  %i.ae = phi float [ %i.gn, %bb.i ], [ %i.u, %.preheader ] ; 3 uses
  %i.af = phi float [ %i.gm, %bb.i ], [ %i.s, %.preheader ] ; 4 uses
  %i.ag = phi float [ %i.gl, %bb.i ], [ %i.q, %.preheader ] ; 2 uses
  %.036 = phi i32 [ %i.ah, %bb.i ], [ 0, %.preheader ] ; 2 uses
  %i.ah = add nuw nsw i32 %.036, 1
  %i.ai = load float, ptr %0, align 4, !tbaa !26  ; 3 uses
  %i.aj = load float, ptr %i.ab, align 4, !tbaa !26 ; 2 uses
  %i.ak = fsub float %i.aj, %i.ai                 ; 2 uses
  %i.al = fmul float %i.ag, 2.000000e+00          ; 2 uses
  %i.am = tail call noundef float @llvm.fabs.f32(float %i.al)
  %i.an = tail call noundef float @llvm.fabs.f32(float %i.ak)
  %i.ao = fmul float %3, %i.an
  %i.ap = fcmp ugt float %i.am, %i.ao             ; 2 uses
  br i1 %i.ap, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 0.000000e+00, ptr %i.p, align 4, !tbaa !26
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi1ELi2EfEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.aq = fdiv float %i.ak, %i.al                 ; 4 uses
  %i.ar = fcmp olt float %i.aq, 0.000000e+00
  %i.as = select i1 %i.ar, float -1.000000e+00, float 1.000000e+00
  %i.at = tail call noundef float @llvm.fabs.f32(float %i.aq)
  %i.au = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float 1.000000e+00)
  %sqrt53.i = tail call float @llvm.sqrt.f32(float %i.au)
  %i.av = fadd float %i.at, %sqrt53.i
  %i.aw = fdiv float %i.as, %i.av                 ; 4 uses
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.aw, float 1.000000e+00)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.ax)
  %i.ay = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.az = fmul float %i.aw, %i.ay                 ; 4 uses
  %i.ba = fadd float %i.ay, 1.000000e+00
  %i.bb = fdiv float %i.az, %i.ba                 ; 3 uses
  %i.bc = fmul float %i.ag, %i.aw                 ; 4 uses
  %i.bd = fsub float 0.000000e+00, %i.bc
  %i.be = fadd float %i.bc, 0.000000e+00
  %i.bf = fsub float %i.ai, %i.bc
  store float %i.bf, ptr %0, align 4, !tbaa !26
  %i.bg = fadd float %i.aj, %i.bc
  store float %i.bg, ptr %i.ab, align 4, !tbaa !26
  store float 0.000000e+00, ptr %i.p, align 4, !tbaa !26
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.af, float %i.ae)
  %i.bi = fneg float %i.az                        ; 2 uses
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.bh, float %i.af)
  store float %i.bj, ptr %i.r, align 4, !tbaa !26
  %i.bk = fneg float %i.bb                        ; 2 uses
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.ae, float %i.af)
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.az, float %i.bl, float %i.ae)
  store float %i.bm, ptr %i.t, align 4, !tbaa !26
  %i.bn = load <2 x float>, ptr %2, align 4, !tbaa !26 ; 3 uses
  %i.bo = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.bk, i64 1 ; 3 uses
  %i.bq = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bn, <2 x float> %i.bq)
  %i.bs = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %i.az, i64 1 ; 3 uses
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.br, <2 x float> %i.bn)
  store <2 x float> %i.bu, ptr %2, align 4, !tbaa !26
  %i.bv = load <2 x float>, ptr %i.c, align 4, !tbaa !26 ; 3 uses
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bv, <2 x float> %i.bw)
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.bx, <2 x float> %i.bv)
  store <2 x float> %i.by, ptr %i.c, align 4, !tbaa !26
  %i.bz = load <2 x float>, ptr %i.f, align 4, !tbaa !26 ; 3 uses
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bz, <2 x float> %i.ca)
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.cb, <2 x float> %i.bz)
  store <2 x float> %i.cc, ptr %i.f, align 4, !tbaa !26
  %.pre = load float, ptr %0, align 4, !tbaa !26
  %.pre51 = load float, ptr %i.r, align 4, !tbaa !26
  %.pre52 = load float, ptr %i.ac, align 4, !tbaa !26
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi1ELi2EfEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit

_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi1ELi2EfEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit: ; preds = %bb.c, %bb.d
  %i.cd = phi float [ %.pre52, %bb.d ], [ %i.ad, %bb.c ] ; 3 uses
  %i.ce = phi float [ %.pre51, %bb.d ], [ %i.af, %bb.c ] ; 2 uses
  %i.cf = phi float [ %.pre, %bb.d ], [ %i.ai, %bb.c ] ; 2 uses
  %.sroa.6.0 = phi float [ %i.be, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %.sroa.0.0 = phi float [ %i.bd, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.cg = fsub float %i.cd, %i.cf                 ; 2 uses
  %i.ch = fmul float %i.ce, 2.000000e+00          ; 2 uses
  %i.ci = tail call noundef float @llvm.fabs.f32(float %i.ch)
  %i.cj = tail call noundef float @llvm.fabs.f32(float %i.cg)
  %i.ck = fmul float %3, %i.cj
  %i.cl = fcmp ugt float %i.ci, %i.ck             ; 2 uses
  br i1 %i.cl, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi1ELi2EfEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit
  store float 0.000000e+00, ptr %i.r, align 4, !tbaa !26
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi2ELi1EfEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit

bb.f:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi1ELi2EfEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit
  %i.cm = fdiv float %i.cg, %i.ch                 ; 4 uses
  %i.cn = fcmp olt float %i.cm, 0.000000e+00
  %i.co = select i1 %i.cn, float -1.000000e+00, float 1.000000e+00
  %i.cp = tail call noundef float @llvm.fabs.f32(float %i.cm)
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float 1.000000e+00)
  %sqrt53.i40 = tail call float @llvm.sqrt.f32(float %i.cq)
  %i.cr = fadd float %i.cp, %sqrt53.i40
  %i.cs = fdiv float %i.co, %i.cr                 ; 4 uses
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float 1.000000e+00)
  %sqrt.i41 = tail call float @llvm.sqrt.f32(float %i.ct)
  %i.cu = fdiv float 1.000000e+00, %sqrt.i41      ; 2 uses
  %i.cv = fmul float %i.cs, %i.cu                 ; 5 uses
  %i.cw = fadd float %i.cu, 1.000000e+00
  %i.cx = fdiv float %i.cv, %i.cw                 ; 4 uses
  %i.cy = fmul float %i.ce, %i.cs                 ; 4 uses
  %i.cz = fsub float %.sroa.0.0, %i.cy
  %i.da = fadd float %i.cy, 0.000000e+00
  %i.db = fsub float %i.cf, %i.cy
  store float %i.db, ptr %0, align 4, !tbaa !26
  %i.dc = fadd float %i.cd, %i.cy
  store float %i.dc, ptr %i.ac, align 4, !tbaa !26
  store float 0.000000e+00, ptr %i.r, align 4, !tbaa !26
  %i.dd = load float, ptr %i.p, align 4, !tbaa !26 ; 3 uses
  %i.de = load float, ptr %i.t, align 4, !tbaa !26 ; 3 uses
  %i.df = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.dd, float %i.de)
  %i.dg = fneg float %i.cv                        ; 3 uses
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.df, float %i.dd)
  store float %i.dh, ptr %i.p, align 4, !tbaa !26
  %i.di = fneg float %i.cx                        ; 3 uses
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.di, float %i.de, float %i.dd)
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.dj, float %i.de)
  store float %i.dk, ptr %i.t, align 4, !tbaa !26
  %i.dl = load float, ptr %2, align 4, !tbaa !26  ; 3 uses
  %i.dm = load <2 x float>, ptr %i.b, align 4, !tbaa !26 ; 4 uses
  %i.dn = extractelement <2 x float> %i.dm, i64 0
  %i.do = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.dl, float %i.dn)
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.do, float %i.dl)
  store float %i.dp, ptr %2, align 4, !tbaa !26
  %i.dq = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %i.cx, i64 1 ; 2 uses
  %i.ds = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dt = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.dg, i64 1 ; 2 uses
  %i.dv = load float, ptr %i.h, align 4, !tbaa !26 ; 3 uses
  %i.dw = load <2 x float>, ptr %i.e, align 4, !tbaa !26 ; 4 uses
  %i.dx = shufflevector <2 x float> %i.ds, <2 x float> %i.dw, <2 x i32> <i32 0, i32 2>
  %i.dy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.dm, <2 x float> %i.dx)
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.dy, <2 x float> %i.dm)
  store <2 x float> %i.dz, ptr %i.b, align 4, !tbaa !26
  %i.ea = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.eb = insertelement <2 x float> %i.ea, float %i.dv, i64 1
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.dw, <2 x float> %i.eb)
  %i.ed = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.ec, <2 x float> %i.dw)
  store <2 x float> %i.ed, ptr %i.e, align 4, !tbaa !26
  %i.ee = extractelement <2 x float> %i.dw, i64 1
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.di, float %i.dv, float %i.ee)
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.ef, float %i.dv)
  store float %i.eg, ptr %i.h, align 4, !tbaa !26
  %.pre53 = load float, ptr %i.ac, align 4, !tbaa !26
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi2ELi1EfEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit

_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi2ELi1EfEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit: ; preds = %bb.e, %bb.f
  %i.eh = phi float [ %.pre53, %bb.f ], [ %i.cd, %bb.e ] ; 2 uses
  %.sroa.10.0 = phi float [ %i.da, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %.sroa.0.1 = phi float [ %i.cz, %bb.f ], [ %.sroa.0.0, %bb.e ]
  %i.ei = or i1 %i.ap, %i.cl
  %i.ej = load float, ptr %i.ab, align 4, !tbaa !26 ; 2 uses
  %i.ek = load float, ptr %i.t, align 4, !tbaa !26 ; 2 uses
  %i.el = fsub float %i.eh, %i.ej                 ; 2 uses
  %i.em = fmul float %i.ek, 2.000000e+00          ; 2 uses
  %i.en = tail call noundef float @llvm.fabs.f32(float %i.em)
  %i.eo = tail call noundef float @llvm.fabs.f32(float %i.el)
  %i.ep = fmul float %3, %i.eo
  %i.eq = fcmp ugt float %i.en, %i.ep             ; 2 uses
  br i1 %i.eq, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi2ELi1EfEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit
  store float 0.000000e+00, ptr %i.t, align 4, !tbaa !26
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi2ELi0EfEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit

bb.h:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi2ELi1EfEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit
  %i.er = fdiv float %i.el, %i.em                 ; 4 uses
  %i.es = fcmp olt float %i.er, 0.000000e+00
  %i.et = select i1 %i.es, float -1.000000e+00, float 1.000000e+00
  %i.eu = tail call noundef float @llvm.fabs.f32(float %i.er)
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.er, float %i.er, float 1.000000e+00)
  %sqrt53.i42 = tail call float @llvm.sqrt.f32(float %i.ev)
  %i.ew = fadd float %i.eu, %sqrt53.i42
  %i.ex = fdiv float %i.et, %i.ew                 ; 4 uses
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.ex, float 1.000000e+00)
  %sqrt.i43 = tail call float @llvm.sqrt.f32(float %i.ey)
  %i.ez = fdiv float 1.000000e+00, %sqrt.i43      ; 2 uses
  %i.fa = fmul float %i.ex, %i.ez                 ; 3 uses
  %i.fb = fadd float %i.ez, 1.000000e+00
  %i.fc = fdiv float %i.fa, %i.fb                 ; 2 uses
  %i.fd = fmul float %i.ek, %i.ex                 ; 4 uses
  %i.fe = fsub float %.sroa.6.0, %i.fd
  %i.ff = fadd float %.sroa.10.0, %i.fd
  %i.fg = fsub float %i.ej, %i.fd
  store float %i.fg, ptr %i.ab, align 4, !tbaa !26
  %i.fh = fadd float %i.eh, %i.fd
  store float %i.fh, ptr %i.ac, align 4, !tbaa !26
  store float 0.000000e+00, ptr %i.t, align 4, !tbaa !26
  %i.fi = fneg float %i.fa
  %i.fj = fneg float %i.fc
  %i.fk = load <2 x float>, ptr %i.p, align 4, !tbaa !26 ; 3 uses
  %i.fl = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.fm = insertelement <2 x float> %i.fl, float %i.fj, i64 1 ; 4 uses
  %i.fn = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fk, <2 x float> %i.fn)
  %i.fp = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.fq = insertelement <2 x float> %i.fp, float %i.fa, i64 1 ; 4 uses
  %i.fr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fo, <2 x float> %i.fk)
  store <2 x float> %i.fr, ptr %i.p, align 4, !tbaa !26
  %i.fs = load <2 x float>, ptr %i.a, align 4, !tbaa !26 ; 3 uses
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fs, <2 x float> %i.ft)
  %i.fv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fu, <2 x float> %i.fs)
  store <2 x float> %i.fv, ptr %i.a, align 4, !tbaa !26
  %i.fw = load <2 x float>, ptr %i.d, align 4, !tbaa !26 ; 3 uses
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fw, <2 x float> %i.fx)
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fy, <2 x float> %i.fw)
  store <2 x float> %i.fz, ptr %i.d, align 4, !tbaa !26
  %i.ga = load <2 x float>, ptr %i.g, align 4, !tbaa !26 ; 3 uses
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.ga, <2 x float> %i.gb)
  %i.gd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.gc, <2 x float> %i.ga)
  store <2 x float> %i.gd, ptr %i.g, align 4, !tbaa !26
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi2ELi0EfEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit

_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi2ELi0EfEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit: ; preds = %bb.g, %bb.h
  %.sroa.10.1 = phi float [ %i.ff, %bb.h ], [ %.sroa.10.0, %bb.g ]
  %.sroa.6.1 = phi float [ %i.fe, %bb.h ], [ %.sroa.6.0, %bb.g ]
  %i.ge = load float, ptr %1, align 4, !tbaa !26
  %i.gf = fadd float %.sroa.0.1, %i.ge            ; 2 uses
  store float %i.gf, ptr %1, align 4, !tbaa !26
  store float %i.gf, ptr %0, align 4, !tbaa !26
  %i.gg = load float, ptr %i.l, align 4, !tbaa !26
  %i.gh = fadd float %.sroa.6.1, %i.gg            ; 2 uses
  store float %i.gh, ptr %i.l, align 4, !tbaa !26
  store float %i.gh, ptr %i.j, align 4, !tbaa !26
  %i.gi = load float, ptr %i.o, align 4, !tbaa !26
  %i.gj = fadd float %.sroa.10.1, %i.gi           ; 3 uses
  store float %i.gj, ptr %i.o, align 4, !tbaa !26
  store float %i.gj, ptr %i.m, align 4, !tbaa !26
  %i.gk = or i1 %i.ei, %i.eq
  br i1 %i.gk, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi2ELi0EfEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit
  %i.gl = load float, ptr %i.p, align 4, !tbaa !26 ; 2 uses
  %i.gm = load float, ptr %i.r, align 4, !tbaa !26 ; 2 uses
  %i.gn = load float, ptr %i.t, align 4, !tbaa !26 ; 2 uses
  %6 = tail call noundef float @llvm.fabs.f32(float %i.gl) ; 2 uses
  %7 = fcmp ogt float %6, 0.000000e+00
  %.sroa.speculated.i44 = select i1 %7, float %6, float 0.000000e+00 ; 2 uses
  %i.go = tail call noundef float @llvm.fabs.f32(float %i.gm) ; 2 uses
  %i.gp = fcmp olt float %.sroa.speculated.i44, %i.go
  %.sroa.speculated.121.i45 = select i1 %i.gp, float %i.go, float %.sroa.speculated.i44 ; 2 uses
  %i.gq = tail call noundef float @llvm.fabs.f32(float %i.gn) ; 2 uses
  %i.gr = fcmp olt float %.sroa.speculated.121.i45, %i.gq
  %.sroa.speculated.1.i46 = select i1 %i.gr, float %i.gq, float %.sroa.speculated.121.i45
  %i.gs = fcmp ogt float %.sroa.speculated.1.i46, %i.z
  %i.gt = icmp samesign ult i32 %.036, 19
  %i.gu = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %i.gu, label %bb.b, label %.loopexit, !llvm.loop !48

.loopexit:                                        ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi2ELi0EfEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_117jacobiEigenSolverIdEEvRNS_8Matrix33IT_EERNS_4Vec3IS2_EES4_S2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, double noundef %3) local_unnamed_addr #0 {
bb.a:
  store double 1.000000e+00, ptr %2, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !7
  %i.e = load double, ptr %0, align 8, !tbaa !7
  store double %i.e, ptr %1, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store double %i.g, ptr %i.h, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !7 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store double %i.j, ptr %i.k, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !7 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !7 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !7 ; 2 uses
  %4 = tail call noundef double @llvm.fabs.f64(double %i.m) ; 2 uses
  %5 = fcmp ogt double %4, 0.000000e+00
  %.sroa.speculated.i = select i1 %5, double %4, double 0.000000e+00 ; 2 uses
  %i.r = tail call noundef double @llvm.fabs.f64(double %i.o) ; 2 uses
  %i.s = fcmp olt double %.sroa.speculated.i, %i.r
  %.sroa.speculated.121.i = select i1 %i.s, double %i.r, double %.sroa.speculated.i ; 2 uses
  %i.t = tail call noundef double @llvm.fabs.f64(double %i.q) ; 2 uses
  %i.u = fcmp olt double %.sroa.speculated.121.i, %i.t
  %.sroa.speculated.1.i = select i1 %i.u, double %i.t, double %.sroa.speculated.121.i
  %i.v = fmul double %3, %.sroa.speculated.1.i    ; 2 uses
  %i.w = fcmp une double %i.v, 0.000000e+00
  br i1 %i.w, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.i
  %i.ad = phi double [ %i.gn, %bb.i ], [ %i.j, %.preheader ]
  %i.ae = phi double [ %i.gr, %bb.i ], [ %i.q, %.preheader ] ; 3 uses
  %i.af = phi double [ %i.gq, %bb.i ], [ %i.o, %.preheader ] ; 3 uses
  %i.ag = phi double [ %i.gp, %bb.i ], [ %i.m, %.preheader ] ; 2 uses
  %.036 = phi i32 [ %i.ah, %bb.i ], [ 0, %.preheader ] ; 2 uses
  %i.ah = add nuw nsw i32 %.036, 1
  %i.ai = load double, ptr %0, align 8, !tbaa !7  ; 3 uses
  %i.aj = load double, ptr %i.x, align 8, !tbaa !7 ; 2 uses
  %i.ak = fsub double %i.aj, %i.ai                ; 2 uses
  %i.al = fmul double %i.ag, 2.000000e+00         ; 2 uses
  %i.am = tail call noundef double @llvm.fabs.f64(double %i.al)
  %i.an = tail call noundef double @llvm.fabs.f64(double %i.ak)
  %i.ao = fmul double %3, %i.an
  %i.ap = fcmp ugt double %i.am, %i.ao            ; 2 uses
  br i1 %i.ap, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.l, align 8, !tbaa !7
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi1ELi2EdEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.aq = fdiv double %i.ak, %i.al                ; 4 uses
  %i.ar = fcmp olt double %i.aq, 0.000000e+00
  %i.as = select i1 %i.ar, double -1.000000e+00, double 1.000000e+00
  %i.at = tail call noundef double @llvm.fabs.f64(double %i.aq)
  %i.au = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.aq, double 1.000000e+00)
  %sqrt53.i = tail call double @llvm.sqrt.f64(double %i.au)
  %i.av = fadd double %i.at, %sqrt53.i
  %i.aw = fdiv double %i.as, %i.av                ; 4 uses
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.aw, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.ax)
  %i.ay = fdiv double 1.000000e+00, %sqrt.i       ; 2 uses
  %i.az = fadd double %i.ay, 1.000000e+00
  %i.ba = fmul double %i.ag, %i.aw                ; 4 uses
  %i.bb = fsub double 0.000000e+00, %i.ba
  %i.bc = fadd double %i.ba, 0.000000e+00
  %i.bd = fsub double %i.ai, %i.ba
  store double %i.bd, ptr %0, align 8, !tbaa !7
  %i.be = fadd double %i.aj, %i.ba
  store double %i.be, ptr %i.x, align 8, !tbaa !7
  store double 0.000000e+00, ptr %i.l, align 8, !tbaa !7
  %i.bf = fmul double %i.aw, %i.ay                ; 4 uses
  %i.bg = fdiv double %i.bf, %i.az                ; 3 uses
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.af, double %i.ae)
  %i.bi = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.bg, i64 1
  %i.bk = fneg <2 x double> %i.bj                 ; 3 uses
  %i.bl = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.ae, i64 1
  %i.bn = insertelement <2 x double> poison, double %i.af, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.bm, <2 x double> %i.bo) ; 2 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 0
  store double %i.bq, ptr %i.n, align 8, !tbaa !7
  %i.br = extractelement <2 x double> %i.bp, i64 1
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.br, double %i.ae)
  store double %i.bs, ptr %i.p, align 8, !tbaa !7
  %i.bt = load <2 x double>, ptr %2, align 8, !tbaa !7 ; 3 uses
  %i.bu = insertelement <2 x double> %i.bk, double %i.bg, i64 0 ; 3 uses
  %i.bv = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.bt, <2 x double> %i.bv)
  %i.bx = insertelement <2 x double> %i.bk, double %i.bf, i64 1 ; 3 uses
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.bw, <2 x double> %i.bt)
  store <2 x double> %i.by, ptr %2, align 8, !tbaa !7
  %i.bz = load <2 x double>, ptr %i.z, align 8, !tbaa !7 ; 3 uses
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.bz, <2 x double> %i.ca)
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.cb, <2 x double> %i.bz)
  store <2 x double> %i.cc, ptr %i.z, align 8, !tbaa !7
  %i.cd = load <2 x double>, ptr %i.aa, align 8, !tbaa !7 ; 3 uses
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.cd, <2 x double> %i.ce)
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.cf, <2 x double> %i.cd)
  store <2 x double> %i.cg, ptr %i.aa, align 8, !tbaa !7
  %.pre = load double, ptr %0, align 8, !tbaa !7
  %.pre51 = load double, ptr %i.n, align 8, !tbaa !7
  %.pre52 = load double, ptr %i.y, align 8, !tbaa !7
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi1ELi2EdEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit

_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi1ELi2EdEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit: ; preds = %bb.c, %bb.d
  %i.ch = phi double [ %.pre52, %bb.d ], [ %i.ad, %bb.c ] ; 3 uses
  %i.ci = phi double [ %.pre51, %bb.d ], [ %i.af, %bb.c ] ; 2 uses
  %i.cj = phi double [ %.pre, %bb.d ], [ %i.ai, %bb.c ] ; 2 uses
  %.sroa.6.0 = phi double [ %i.bc, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %.sroa.0.0 = phi double [ %i.bb, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.ck = fsub double %i.ch, %i.cj                ; 2 uses
  %i.cl = fmul double %i.ci, 2.000000e+00         ; 2 uses
  %i.cm = tail call noundef double @llvm.fabs.f64(double %i.cl)
  %i.cn = tail call noundef double @llvm.fabs.f64(double %i.ck)
  %i.co = fmul double %3, %i.cn
  %i.cp = fcmp ugt double %i.cm, %i.co            ; 2 uses
  br i1 %i.cp, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi1ELi2EdEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit
  store double 0.000000e+00, ptr %i.n, align 8, !tbaa !7
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi2ELi1EdEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit

bb.f:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi1ELi2EdEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit
  %i.cq = fdiv double %i.ck, %i.cl                ; 4 uses
  %i.cr = fcmp olt double %i.cq, 0.000000e+00
  %i.cs = select i1 %i.cr, double -1.000000e+00, double 1.000000e+00
  %i.ct = tail call noundef double @llvm.fabs.f64(double %i.cq)
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cq, double 1.000000e+00)
  %sqrt53.i40 = tail call double @llvm.sqrt.f64(double %i.cu)
  %i.cv = fadd double %i.ct, %sqrt53.i40
  %i.cw = fdiv double %i.cs, %i.cv                ; 4 uses
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cw, double 1.000000e+00)
  %sqrt.i41 = tail call double @llvm.sqrt.f64(double %i.cx)
  %i.cy = fdiv double 1.000000e+00, %sqrt.i41     ; 2 uses
  %i.cz = fmul double %i.cw, %i.cy                ; 5 uses
  %i.da = fadd double %i.cy, 1.000000e+00
  %i.db = fdiv double %i.cz, %i.da                ; 4 uses
  %i.dc = fmul double %i.ci, %i.cw                ; 4 uses
  %i.dd = fsub double %.sroa.0.0, %i.dc
  %i.de = fadd double %i.dc, 0.000000e+00
  %i.df = fsub double %i.cj, %i.dc
  store double %i.df, ptr %0, align 8, !tbaa !7
  %i.dg = fadd double %i.ch, %i.dc
  store double %i.dg, ptr %i.y, align 8, !tbaa !7
  store double 0.000000e+00, ptr %i.n, align 8, !tbaa !7
  %i.dh = load double, ptr %i.l, align 8, !tbaa !7 ; 3 uses
  %i.di = load double, ptr %i.p, align 8, !tbaa !7 ; 3 uses
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.db, double %i.dh, double %i.di)
  %i.dk = fneg double %i.cz                       ; 3 uses
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.dj, double %i.dh)
  store double %i.dl, ptr %i.l, align 8, !tbaa !7
  %i.dm = fneg double %i.db                       ; 3 uses
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.di, double %i.dh)
  %i.do = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.dn, double %i.di)
  store double %i.do, ptr %i.p, align 8, !tbaa !7
  %i.dp = load double, ptr %2, align 8, !tbaa !7  ; 3 uses
  %i.dq = load <2 x double>, ptr %i.ac, align 8, !tbaa !7 ; 4 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 0
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.db, double %i.dp, double %i.dr)
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.ds, double %i.dp)
  store double %i.dt, ptr %2, align 8, !tbaa !7
  %i.du = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %i.db, i64 1 ; 2 uses
  %i.dw = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.dx = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dy = insertelement <2 x double> %i.dx, double %i.dk, i64 1 ; 2 uses
  %i.dz = load double, ptr %i.d, align 8, !tbaa !7 ; 3 uses
  %i.ea = load <2 x double>, ptr %i.c, align 8, !tbaa !7 ; 4 uses
  %i.eb = shufflevector <2 x double> %i.dw, <2 x double> %i.ea, <2 x i32> <i32 0, i32 2>
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.dq, <2 x double> %i.eb)
  %i.ed = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.ec, <2 x double> %i.dq)
  store <2 x double> %i.ed, ptr %i.ac, align 8, !tbaa !7
  %i.ee = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ef = insertelement <2 x double> %i.ee, double %i.dz, i64 1
  %i.eg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.ea, <2 x double> %i.ef)
  %i.eh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.eg, <2 x double> %i.ea)
  store <2 x double> %i.eh, ptr %i.c, align 8, !tbaa !7
  %i.ei = extractelement <2 x double> %i.ea, i64 1
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dz, double %i.ei)
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.ej, double %i.dz)
  store double %i.ek, ptr %i.d, align 8, !tbaa !7
  %.pre53 = load double, ptr %i.y, align 8, !tbaa !7
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi2ELi1EdEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit

_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi2ELi1EdEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit: ; preds = %bb.e, %bb.f
  %i.el = phi double [ %.pre53, %bb.f ], [ %i.ch, %bb.e ] ; 2 uses
  %.sroa.10.0 = phi double [ %i.de, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %.sroa.0.1 = phi double [ %i.dd, %bb.f ], [ %.sroa.0.0, %bb.e ]
  %i.em = or i1 %i.ap, %i.cp
  %i.en = load double, ptr %i.x, align 8, !tbaa !7 ; 2 uses
  %i.eo = load double, ptr %i.p, align 8, !tbaa !7 ; 2 uses
  %i.ep = fsub double %i.el, %i.en                ; 2 uses
  %i.eq = fmul double %i.eo, 2.000000e+00         ; 2 uses
  %i.er = tail call noundef double @llvm.fabs.f64(double %i.eq)
  %i.es = tail call noundef double @llvm.fabs.f64(double %i.ep)
  %i.et = fmul double %3, %i.es
  %i.eu = fcmp ugt double %i.er, %i.et            ; 2 uses
  br i1 %i.eu, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi2ELi1EdEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !7
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi2ELi0EdEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit

bb.h:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi2ELi1EdEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit
  %i.ev = fdiv double %i.ep, %i.eq                ; 4 uses
  %i.ew = fcmp olt double %i.ev, 0.000000e+00
  %i.ex = select i1 %i.ew, double -1.000000e+00, double 1.000000e+00
  %i.ey = tail call noundef double @llvm.fabs.f64(double %i.ev)
  %i.ez = tail call double @llvm.fmuladd.f64(double %i.ev, double %i.ev, double 1.000000e+00)
  %sqrt53.i42 = tail call double @llvm.sqrt.f64(double %i.ez)
  %i.fa = fadd double %i.ey, %sqrt53.i42
  %i.fb = fdiv double %i.ex, %i.fa                ; 4 uses
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.fb, double %i.fb, double 1.000000e+00)
  %sqrt.i43 = tail call double @llvm.sqrt.f64(double %i.fc)
  %i.fd = fdiv double 1.000000e+00, %sqrt.i43     ; 2 uses
  %i.fe = fmul double %i.fb, %i.fd                ; 3 uses
  %i.ff = fadd double %i.fd, 1.000000e+00
  %i.fg = fdiv double %i.fe, %i.ff                ; 2 uses
  %i.fh = fmul double %i.eo, %i.fb                ; 4 uses
  %i.fi = fsub double %.sroa.6.0, %i.fh
  %i.fj = fadd double %.sroa.10.0, %i.fh
  %i.fk = fsub double %i.en, %i.fh
  store double %i.fk, ptr %i.x, align 8, !tbaa !7
  %i.fl = fadd double %i.el, %i.fh
  store double %i.fl, ptr %i.y, align 8, !tbaa !7
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !7
  %i.fm = fneg double %i.fe
  %i.fn = fneg double %i.fg
  %i.fo = load <2 x double>, ptr %i.l, align 8, !tbaa !7 ; 3 uses
  %i.fp = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.fq = insertelement <2 x double> %i.fp, double %i.fn, i64 1 ; 4 uses
  %i.fr = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.fo, <2 x double> %i.fr)
  %i.ft = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fe, i64 1 ; 4 uses
  %i.fv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> %i.fs, <2 x double> %i.fo)
  store <2 x double> %i.fv, ptr %i.l, align 8, !tbaa !7
  %i.fw = load <2 x double>, ptr %i.a, align 8, !tbaa !7 ; 3 uses
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.fw, <2 x double> %i.fx)
  %i.fz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> %i.fy, <2 x double> %i.fw)
  store <2 x double> %i.fz, ptr %i.a, align 8, !tbaa !7
  %i.ga = load <2 x double>, ptr %i.b, align 8, !tbaa !7 ; 3 uses
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.ga, <2 x double> %i.gb)
  %i.gd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> %i.gc, <2 x double> %i.ga)
  store <2 x double> %i.gd, ptr %i.b, align 8, !tbaa !7
  %i.ge = load <2 x double>, ptr %i.ab, align 8, !tbaa !7 ; 3 uses
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.ge, <2 x double> %i.gf)
  %i.gh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> %i.gg, <2 x double> %i.ge)
  store <2 x double> %i.gh, ptr %i.ab, align 8, !tbaa !7
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi2ELi0EdEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit

_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi2ELi0EdEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit: ; preds = %bb.g, %bb.h
  %.sroa.10.1 = phi double [ %i.fj, %bb.h ], [ %.sroa.10.0, %bb.g ]
  %.sroa.6.1 = phi double [ %i.fi, %bb.h ], [ %.sroa.6.0, %bb.g ]
  %i.gi = load double, ptr %1, align 8, !tbaa !7
  %i.gj = fadd double %.sroa.0.1, %i.gi           ; 2 uses
  store double %i.gj, ptr %1, align 8, !tbaa !7
  store double %i.gj, ptr %0, align 8, !tbaa !7
  %i.gk = load double, ptr %i.h, align 8, !tbaa !7
  %i.gl = fadd double %.sroa.6.1, %i.gk           ; 2 uses
  store double %i.gl, ptr %i.h, align 8, !tbaa !7
  store double %i.gl, ptr %i.f, align 8, !tbaa !7
  %i.gm = load double, ptr %i.k, align 8, !tbaa !7
  %i.gn = fadd double %.sroa.10.1, %i.gm          ; 3 uses
  store double %i.gn, ptr %i.k, align 8, !tbaa !7
  store double %i.gn, ptr %i.i, align 8, !tbaa !7
  %i.go = or i1 %i.em, %i.eu
  br i1 %i.go, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi2ELi0EdEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit
  %i.gp = load double, ptr %i.l, align 8, !tbaa !7 ; 2 uses
  %i.gq = load double, ptr %i.n, align 8, !tbaa !7 ; 2 uses
  %i.gr = load double, ptr %i.p, align 8, !tbaa !7 ; 2 uses
  %6 = tail call noundef double @llvm.fabs.f64(double %i.gp) ; 2 uses
  %7 = fcmp ogt double %6, 0.000000e+00
  %.sroa.speculated.i44 = select i1 %7, double %6, double 0.000000e+00 ; 2 uses
  %i.gs = tail call noundef double @llvm.fabs.f64(double %i.gq) ; 2 uses
  %i.gt = fcmp olt double %.sroa.speculated.i44, %i.gs
  %.sroa.speculated.121.i45 = select i1 %i.gt, double %i.gs, double %.sroa.speculated.i44 ; 2 uses
  %i.gu = tail call noundef double @llvm.fabs.f64(double %i.gr) ; 2 uses
  %i.gv = fcmp olt double %.sroa.speculated.121.i45, %i.gu
  %.sroa.speculated.1.i46 = select i1 %i.gv, double %i.gu, double %.sroa.speculated.121.i45
  %i.gw = fcmp ogt double %.sroa.speculated.1.i46, %i.v
  %i.gx = icmp samesign ult i32 %.036, 19
  %i.gy = select i1 %i.gw, i1 %i.gx, i1 false
  br i1 %i.gy, label %bb.b, label %.loopexit, !llvm.loop !49

.loopexit:                                        ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi2ELi0EdEEbRNS_8Matrix33IT2_EES5_RNS_4Vec3IS3_EES3_.exit, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_117jacobiEigenSolverIfEEvRNS_8Matrix44IT_EERNS_4Vec4IS2_EES4_S2_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, float noundef %3) local_unnamed_addr #0 {
bb.a:
  store float 1.000000e+00, ptr %2, align 4, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 4, !tbaa !26
  %i.g = load float, ptr %0, align 4, !tbaa !26
  store float %i.g, ptr %1, align 4, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  store float %i.i, ptr %i.j, align 4, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store float %i.l, ptr %i.m, align 4, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  store float %i.o, ptr %i.p, align 4, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 12 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !26 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  %i.w = load <2 x float>, ptr %i.s, align 4, !tbaa !26 ; 3 uses
  %i.x = extractelement <2 x float> %i.w, i64 1
  %i.y = extractelement <2 x float> %i.w, i64 0   ; 2 uses
  %i.z = load <2 x float>, ptr %i.u, align 4, !tbaa !26 ; 3 uses
  %i.aa = extractelement <2 x float> %i.z, i64 1
  %i.ab = extractelement <2 x float> %i.z, i64 0
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 13 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !26
  %4 = tail call noundef float @llvm.fabs.f32(float %i.r) ; 2 uses
  %5 = fcmp ogt float %4, 0.000000e+00
  %.sroa.speculated.i = select i1 %5, float %4, float 0.000000e+00 ; 2 uses
  %i.ae = tail call noundef float @llvm.fabs.f32(float %i.y) ; 2 uses
  %i.af = fcmp olt float %.sroa.speculated.i, %i.ae
  %.sroa.speculated.121.i = select i1 %i.af, float %i.ae, float %.sroa.speculated.i ; 2 uses
  %i.ag = tail call noundef float @llvm.fabs.f32(float %i.x) ; 2 uses
  %i.ah = fcmp olt float %.sroa.speculated.121.i, %i.ag
  %.sroa.speculated.222.i = select i1 %i.ah, float %i.ag, float %.sroa.speculated.121.i ; 2 uses
  %i.ai = tail call noundef float @llvm.fabs.f32(float %i.ab) ; 2 uses
  %i.aj = fcmp olt float %.sroa.speculated.222.i, %i.ai
  %.sroa.speculated.1.i = select i1 %i.aj, float %i.ai, float %.sroa.speculated.222.i ; 2 uses
  %i.ak = tail call noundef float @llvm.fabs.f32(float %i.aa) ; 2 uses
  %i.al = fcmp olt float %.sroa.speculated.1.i, %i.ak
  %.sroa.speculated.1.1.i = select i1 %i.al, float %i.ak, float %.sroa.speculated.1.i ; 2 uses
  %i.am = tail call noundef float @llvm.fabs.f32(float %i.ad) ; 2 uses
  %i.an = fcmp olt float %.sroa.speculated.1.1.i, %i.am
  %.sroa.speculated.2.i = select i1 %i.an, float %i.am, float %.sroa.speculated.1.1.i
  %i.ao = fmul float %3, %.sroa.speculated.2.i    ; 2 uses
  %i.ap = fcmp une float %i.ao, 0.000000e+00
  br i1 %i.ap, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi2ELi3ELi0ELi1EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit
  %i.bc = phi float [ %i.py, %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi2ELi3ELi0ELi1EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit ], [ %i.y, %.preheader ]
  %i.bd = phi float [ %i.pv, %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi2ELi3ELi0ELi1EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit ], [ %i.r, %.preheader ] ; 2 uses
  %.048 = phi i32 [ %i.bg, %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi2ELi3ELi0ELi1EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit ], [ 0, %.preheader ] ; 2 uses
  %i.be = phi <2 x float> [ %i.pz, %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi2ELi3ELi0ELi1EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit ], [ %i.z, %.preheader ] ; 3 uses
  %i.bf = phi <2 x float> [ %i.pw, %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi2ELi3ELi0ELi1EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit ], [ %i.w, %.preheader ] ; 3 uses
  %i.bg = add nuw nsw i32 %.048, 1
  %i.bh = load float, ptr %0, align 4, !tbaa !26  ; 3 uses
  %i.bi = load float, ptr %i.aq, align 4, !tbaa !26 ; 2 uses
  %i.bj = fsub float %i.bi, %i.bh                 ; 2 uses
  %i.bk = fmul float %i.bd, 2.000000e+00          ; 2 uses
  %i.bl = tail call noundef float @llvm.fabs.f32(float %i.bk)
  %i.bm = tail call noundef float @llvm.fabs.f32(float %i.bj)
  %i.bn = fmul float %3, %i.bm
  %i.bo = fcmp ugt float %i.bl, %i.bn
  br i1 %i.bo, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 0.000000e+00, ptr %i.q, align 4, !tbaa !26
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi1ELi2ELi3EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.bp = fdiv float %i.bj, %i.bk                 ; 4 uses
  %i.bq = fcmp olt float %i.bp, 0.000000e+00
  %i.br = select i1 %i.bq, float -1.000000e+00, float 1.000000e+00
  %i.bs = tail call noundef float @llvm.fabs.f32(float %i.bp)
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float 1.000000e+00)
  %sqrt65.i = tail call float @llvm.sqrt.f32(float %i.bt)
  %i.bu = fadd float %i.bs, %sqrt65.i
  %i.bv = fdiv float %i.br, %i.bu                 ; 4 uses
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float 1.000000e+00)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.bw)
  %i.bx = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.by = fmul float %i.bv, %i.bx                 ; 4 uses
  %i.bz = fadd float %i.bx, 1.000000e+00
  %i.ca = fdiv float %i.by, %i.bz                 ; 2 uses
  %i.cb = fmul float %i.bd, %i.bv                 ; 4 uses
  %i.cc = fsub float 0.000000e+00, %i.cb
  %i.cd = fadd float %i.cb, 0.000000e+00
  %i.ce = fsub float %i.bh, %i.cb
  store float %i.ce, ptr %0, align 4, !tbaa !26
  %i.cf = fadd float %i.bi, %i.cb
  store float %i.cf, ptr %i.aq, align 4, !tbaa !26
  store float 0.000000e+00, ptr %i.q, align 4, !tbaa !26
  %i.cg = fneg float %i.by
  %i.ch = fneg float %i.ca                        ; 2 uses
  %i.ci = insertelement <2 x float> poison, float %i.ca, i64 0 ; 2 uses
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.bf, <2 x float> %i.be)
  %i.cl = insertelement <2 x float> poison, float %i.cg, i64 0 ; 2 uses
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.ck, <2 x float> %i.bf)
  store <2 x float> %i.cn, ptr %i.s, align 4, !tbaa !26
  %i.co = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.be, <2 x float> %i.bf)
  %i.cr = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.cq, <2 x float> %i.be)
  store <2 x float> %i.ct, ptr %i.u, align 4, !tbaa !26
  %i.cu = load <2 x float>, ptr %2, align 4, !tbaa !26 ; 3 uses
  %i.cv = insertelement <2 x float> %i.ci, float %i.ch, i64 1 ; 4 uses
  %i.cw = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.cu, <2 x float> %i.cw)
  %i.cy = insertelement <2 x float> %i.cl, float %i.by, i64 1 ; 4 uses
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.cx, <2 x float> %i.cu)
  store <2 x float> %i.cz, ptr %2, align 4, !tbaa !26
  %i.da = load <2 x float>, ptr %i.at, align 4, !tbaa !26 ; 3 uses
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.da, <2 x float> %i.db)
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.dc, <2 x float> %i.da)
  store <2 x float> %i.dd, ptr %i.at, align 4, !tbaa !26
  %i.de = load <2 x float>, ptr %i.au, align 4, !tbaa !26 ; 3 uses
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.de, <2 x float> %i.df)
  %i.dh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.dg, <2 x float> %i.de)
  store <2 x float> %i.dh, ptr %i.au, align 4, !tbaa !26
  %i.di = load <2 x float>, ptr %i.aw, align 4, !tbaa !26 ; 3 uses
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.di, <2 x float> %i.dj)
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.dk, <2 x float> %i.di)
  store <2 x float> %i.dl, ptr %i.aw, align 4, !tbaa !26
  %.pre = load float, ptr %0, align 4, !tbaa !26
  %.pre72 = load float, ptr %i.s, align 4, !tbaa !26
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi1ELi2ELi3EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit

_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi1ELi2ELi3EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit: ; preds = %bb.c, %bb.d
  %i.dm = phi float [ %.pre72, %bb.d ], [ %i.bc, %bb.c ] ; 2 uses
  %i.dn = phi float [ %.pre, %bb.d ], [ %i.bh, %bb.c ] ; 3 uses
  %.sroa.7.0 = phi float [ %i.cd, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %.sroa.0.0 = phi float [ %i.cc, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.do = load float, ptr %i.ar, align 4, !tbaa !26 ; 2 uses
  %i.dp = fsub float %i.do, %i.dn                 ; 2 uses
  %i.dq = fmul float %i.dm, 2.000000e+00          ; 2 uses
  %i.dr = tail call noundef float @llvm.fabs.f32(float %i.dq)
  %i.ds = tail call noundef float @llvm.fabs.f32(float %i.dp)
  %i.dt = fmul float %3, %i.ds
  %i.du = fcmp ugt float %i.dr, %i.dt
  br i1 %i.du, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi1ELi2ELi3EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !26
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi2ELi1ELi3EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit

bb.f:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi1ELi2ELi3EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit
  %i.dv = fdiv float %i.dp, %i.dq                 ; 4 uses
  %i.dw = fcmp olt float %i.dv, 0.000000e+00
  %i.dx = select i1 %i.dw, float -1.000000e+00, float 1.000000e+00
  %i.dy = tail call noundef float @llvm.fabs.f32(float %i.dv)
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float 1.000000e+00)
  %sqrt65.i52 = tail call float @llvm.sqrt.f32(float %i.dz)
  %i.ea = fadd float %i.dy, %sqrt65.i52
  %i.eb = fdiv float %i.dx, %i.ea                 ; 4 uses
  %i.ec = tail call float @llvm.fmuladd.f32(float %i.eb, float %i.eb, float 1.000000e+00)
  %sqrt.i53 = tail call float @llvm.sqrt.f32(float %i.ec)
  %i.ed = fdiv float 1.000000e+00, %sqrt.i53      ; 2 uses
  %i.ee = fmul float %i.eb, %i.ed                 ; 8 uses
  %i.ef = fadd float %i.ed, 1.000000e+00
  %i.eg = fdiv float %i.ee, %i.ef                 ; 7 uses
  %i.eh = fmul float %i.dm, %i.eb                 ; 4 uses
  %i.ei = fsub float %.sroa.0.0, %i.eh
  %i.ej = fadd float %i.eh, 0.000000e+00
  %i.ek = fsub float %i.dn, %i.eh
  store float %i.ek, ptr %0, align 4, !tbaa !26
  %i.el = fadd float %i.do, %i.eh
  store float %i.el, ptr %i.ar, align 4, !tbaa !26
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !26
  %i.em = load float, ptr %i.q, align 4, !tbaa !26 ; 3 uses
  %i.en = load float, ptr %i.u, align 4, !tbaa !26 ; 3 uses
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.eg, float %i.em, float %i.en)
  %i.ep = fneg float %i.ee                        ; 6 uses
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.eo, float %i.em)
  store float %i.eq, ptr %i.q, align 4, !tbaa !26
  %i.er = fneg float %i.eg                        ; 6 uses
  %i.es = tail call float @llvm.fmuladd.f32(float %i.er, float %i.en, float %i.em)
  %i.et = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.es, float %i.en)
  store float %i.et, ptr %i.u, align 4, !tbaa !26
  %i.eu = load float, ptr %i.t, align 4, !tbaa !26 ; 3 uses
  %i.ev = load float, ptr %i.ac, align 4, !tbaa !26 ; 3 uses
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.eg, float %i.eu, float %i.ev)
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.ew, float %i.eu)
  store float %i.ex, ptr %i.t, align 4, !tbaa !26
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.er, float %i.ev, float %i.eu)
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.ey, float %i.ev)
  store float %i.ez, ptr %i.ac, align 4, !tbaa !26
  %i.fa = load float, ptr %2, align 4, !tbaa !26  ; 3 uses
  %i.fb = load float, ptr %i.ay, align 4, !tbaa !26 ; 3 uses
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.eg, float %i.fa, float %i.fb)
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.fc, float %i.fa)
  store float %i.fd, ptr %2, align 4, !tbaa !26
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.er, float %i.fb, float %i.fa)
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.fe, float %i.fb)
  store float %i.ff, ptr %i.ay, align 4, !tbaa !26
  %i.fg = load float, ptr %i.at, align 4, !tbaa !26 ; 3 uses
  %i.fh = load float, ptr %i.c, align 4, !tbaa !26 ; 3 uses
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.eg, float %i.fg, float %i.fh)
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.fi, float %i.fg)
  store float %i.fj, ptr %i.at, align 4, !tbaa !26
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.er, float %i.fh, float %i.fg)
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.fk, float %i.fh)
  store float %i.fl, ptr %i.c, align 4, !tbaa !26
  %i.fm = load float, ptr %i.au, align 4, !tbaa !26 ; 3 uses
  %i.fn = load float, ptr %i.d, align 4, !tbaa !26 ; 3 uses
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.eg, float %i.fm, float %i.fn)
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.fo, float %i.fm)
  store float %i.fp, ptr %i.au, align 4, !tbaa !26
end_hunk_4
begin_hunk_5_@_ZN9Imath_3_117jacobiEigenSolverIfEEvRNS_8Matrix44IT_EERNS_4Vec4IS2_EES4_S2_:bb.a
  %i.kt = load <2 x float>, ptr %i.ax, align 4, !tbaa !26 ; 3 uses
  %i.ku = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jv, <2 x float> %i.kt, <2 x float> %i.ku)
  %i.kw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jz, <2 x float> %i.kv, <2 x float> %i.kt)
  store <2 x float> %i.kw, ptr %i.ax, align 4, !tbaa !26
  %.pre74 = load float, ptr %i.aq, align 4, !tbaa !26
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi2ELi0ELi3EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit

_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi2ELi0ELi3EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit: ; preds = %bb.i, %bb.j
  %i.kx = phi float [ %.pre74, %bb.j ], [ %i.ir, %bb.i ] ; 2 uses
  %.sroa.12.1 = phi float [ %i.jo, %bb.j ], [ %.sroa.12.0, %bb.i ] ; 2 uses
  %.sroa.7.1 = phi float [ %i.jn, %bb.j ], [ %.sroa.7.0, %bb.i ] ; 2 uses
  %i.ky = load float, ptr %i.v, align 4, !tbaa !26 ; 2 uses
  %i.kz = load float, ptr %i.as, align 4, !tbaa !26 ; 3 uses
  %i.la = fsub float %i.kz, %i.kx                 ; 2 uses
  %i.lb = fmul float %i.ky, 2.000000e+00          ; 2 uses
  %i.lc = tail call noundef float @llvm.fabs.f32(float %i.lb)
  %i.ld = tail call noundef float @llvm.fabs.f32(float %i.la)
  %i.le = fmul float %3, %i.ld
  %i.lf = fcmp ugt float %i.lc, %i.le
  br i1 %i.lf, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi2ELi0ELi3EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit
  store float 0.000000e+00, ptr %i.v, align 4, !tbaa !26
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi3ELi0ELi2EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit

bb.l:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi2ELi0ELi3EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit
  %i.lg = fdiv float %i.la, %i.lb                 ; 4 uses
  %i.lh = fcmp olt float %i.lg, 0.000000e+00
  %i.li = select i1 %i.lh, float -1.000000e+00, float 1.000000e+00
  %i.lj = tail call noundef float @llvm.fabs.f32(float %i.lg)
  %i.lk = tail call float @llvm.fmuladd.f32(float %i.lg, float %i.lg, float 1.000000e+00)
  %sqrt65.i58 = tail call float @llvm.sqrt.f32(float %i.lk)
  %i.ll = fadd float %i.lj, %sqrt65.i58
  %i.lm = fdiv float %i.li, %i.ll                 ; 4 uses
  %i.ln = tail call float @llvm.fmuladd.f32(float %i.lm, float %i.lm, float 1.000000e+00)
  %sqrt.i59 = tail call float @llvm.sqrt.f32(float %i.ln)
  %i.lo = fdiv float 1.000000e+00, %sqrt.i59      ; 2 uses
  %i.lp = fmul float %i.lm, %i.lo                 ; 8 uses
  %i.lq = fadd float %i.lo, 1.000000e+00
  %i.lr = fdiv float %i.lp, %i.lq                 ; 7 uses
  %i.ls = fmul float %i.ky, %i.lm                 ; 4 uses
  %i.lt = fsub float %.sroa.7.1, %i.ls
  %i.lu = fadd float %.sroa.17.0, %i.ls
  %i.lv = fsub float %i.kx, %i.ls
  store float %i.lv, ptr %i.aq, align 4, !tbaa !26
  %i.lw = fadd float %i.kz, %i.ls
  store float %i.lw, ptr %i.as, align 4, !tbaa !26
  store float 0.000000e+00, ptr %i.v, align 4, !tbaa !26
  %i.lx = load float, ptr %i.q, align 4, !tbaa !26 ; 3 uses
  %i.ly = load float, ptr %i.t, align 4, !tbaa !26 ; 3 uses
  %i.lz = tail call float @llvm.fmuladd.f32(float %i.lr, float %i.lx, float %i.ly)
  %i.ma = fneg float %i.lp                        ; 6 uses
  %i.mb = tail call float @llvm.fmuladd.f32(float %i.ma, float %i.lz, float %i.lx)
  store float %i.mb, ptr %i.q, align 4, !tbaa !26
  %i.mc = fneg float %i.lr                        ; 6 uses
  %i.md = tail call float @llvm.fmuladd.f32(float %i.mc, float %i.ly, float %i.lx)
  %i.me = tail call float @llvm.fmuladd.f32(float %i.lp, float %i.md, float %i.ly)
  store float %i.me, ptr %i.t, align 4, !tbaa !26
  %i.mf = load float, ptr %i.u, align 4, !tbaa !26 ; 3 uses
  %i.mg = load float, ptr %i.ac, align 4, !tbaa !26 ; 3 uses
  %i.mh = tail call float @llvm.fmuladd.f32(float %i.lr, float %i.mf, float %i.mg)
  %i.mi = tail call float @llvm.fmuladd.f32(float %i.ma, float %i.mh, float %i.mf)
  store float %i.mi, ptr %i.u, align 4, !tbaa !26
  %i.mj = tail call float @llvm.fmuladd.f32(float %i.mc, float %i.mg, float %i.mf)
  %i.mk = tail call float @llvm.fmuladd.f32(float %i.lp, float %i.mj, float %i.mg)
  store float %i.mk, ptr %i.ac, align 4, !tbaa !26
  %i.ml = load float, ptr %i.a, align 4, !tbaa !26 ; 3 uses
  %i.mm = load float, ptr %i.ba, align 4, !tbaa !26 ; 3 uses
  %i.mn = tail call float @llvm.fmuladd.f32(float %i.lr, float %i.ml, float %i.mm)
  %i.mo = tail call float @llvm.fmuladd.f32(float %i.ma, float %i.mn, float %i.ml)
  store float %i.mo, ptr %i.a, align 4, !tbaa !26
  %i.mp = tail call float @llvm.fmuladd.f32(float %i.mc, float %i.mm, float %i.ml)
  %i.mq = tail call float @llvm.fmuladd.f32(float %i.lp, float %i.mp, float %i.mm)
  store float %i.mq, ptr %i.ba, align 4, !tbaa !26
  %i.mr = load float, ptr %i.b, align 4, !tbaa !26 ; 3 uses
  %i.ms = load float, ptr %i.bb, align 4, !tbaa !26 ; 3 uses
  %i.mt = tail call float @llvm.fmuladd.f32(float %i.lr, float %i.mr, float %i.ms)
  %i.mu = tail call float @llvm.fmuladd.f32(float %i.ma, float %i.mt, float %i.mr)
  store float %i.mu, ptr %i.b, align 4, !tbaa !26
  %i.mv = tail call float @llvm.fmuladd.f32(float %i.mc, float %i.ms, float %i.mr)
  %i.mw = tail call float @llvm.fmuladd.f32(float %i.lp, float %i.mv, float %i.ms)
  store float %i.mw, ptr %i.bb, align 4, !tbaa !26
  %i.mx = load float, ptr %i.av, align 4, !tbaa !26 ; 3 uses
  %i.my = load float, ptr %i.e, align 4, !tbaa !26 ; 3 uses
  %i.mz = tail call float @llvm.fmuladd.f32(float %i.lr, float %i.mx, float %i.my)
  %i.na = tail call float @llvm.fmuladd.f32(float %i.ma, float %i.mz, float %i.mx)
  store float %i.na, ptr %i.av, align 4, !tbaa !26
  %i.nb = tail call float @llvm.fmuladd.f32(float %i.mc, float %i.my, float %i.mx)
  %i.nc = tail call float @llvm.fmuladd.f32(float %i.lp, float %i.nb, float %i.my)
  store float %i.nc, ptr %i.e, align 4, !tbaa !26
  %i.nd = load float, ptr %i.ax, align 4, !tbaa !26 ; 3 uses
  %i.ne = load float, ptr %i.f, align 4, !tbaa !26 ; 3 uses
  %i.nf = tail call float @llvm.fmuladd.f32(float %i.lr, float %i.nd, float %i.ne)
  %i.ng = tail call float @llvm.fmuladd.f32(float %i.ma, float %i.nf, float %i.nd)
  store float %i.ng, ptr %i.ax, align 4, !tbaa !26
  %i.nh = tail call float @llvm.fmuladd.f32(float %i.mc, float %i.ne, float %i.nd)
  %i.ni = tail call float @llvm.fmuladd.f32(float %i.lp, float %i.nh, float %i.ne)
  store float %i.ni, ptr %i.f, align 4, !tbaa !26
  %.pre75 = load float, ptr %i.as, align 4, !tbaa !26
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi3ELi0ELi2EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit

_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi3ELi0ELi2EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit: ; preds = %bb.k, %bb.l
  %i.nj = phi float [ %.pre75, %bb.l ], [ %i.kz, %bb.k ] ; 2 uses
  %.sroa.17.1 = phi float [ %i.lu, %bb.l ], [ %.sroa.17.0, %bb.k ] ; 2 uses
  %.sroa.7.2 = phi float [ %i.lt, %bb.l ], [ %.sroa.7.1, %bb.k ]
  %i.nk = load float, ptr %i.ar, align 4, !tbaa !26 ; 2 uses
  %i.nl = load float, ptr %i.ac, align 4, !tbaa !26 ; 2 uses
  %i.nm = fsub float %i.nj, %i.nk                 ; 2 uses
  %i.nn = fmul float %i.nl, 2.000000e+00          ; 2 uses
  %i.no = tail call noundef float @llvm.fabs.f32(float %i.nn)
  %i.np = tail call noundef float @llvm.fabs.f32(float %i.nm)
  %i.nq = fmul float %3, %i.np
  %i.nr = fcmp ugt float %i.no, %i.nq
  br i1 %i.nr, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi3ELi0ELi2EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit
  store float 0.000000e+00, ptr %i.ac, align 4, !tbaa !26
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi2ELi3ELi0ELi1EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit

bb.n:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi3ELi0ELi2EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit
  %i.ns = fdiv float %i.nm, %i.nn                 ; 4 uses
  %i.nt = fcmp olt float %i.ns, 0.000000e+00
  %i.nu = select i1 %i.nt, float -1.000000e+00, float 1.000000e+00
  %i.nv = tail call noundef float @llvm.fabs.f32(float %i.ns)
  %i.nw = tail call float @llvm.fmuladd.f32(float %i.ns, float %i.ns, float 1.000000e+00)
  %sqrt65.i60 = tail call float @llvm.sqrt.f32(float %i.nw)
  %i.nx = fadd float %i.nv, %sqrt65.i60
  %i.ny = fdiv float %i.nu, %i.nx                 ; 4 uses
  %i.nz = tail call float @llvm.fmuladd.f32(float %i.ny, float %i.ny, float 1.000000e+00)
  %sqrt.i61 = tail call float @llvm.sqrt.f32(float %i.nz)
  %i.oa = fdiv float 1.000000e+00, %sqrt.i61      ; 2 uses
  %i.ob = fmul float %i.ny, %i.oa                 ; 3 uses
  %i.oc = fadd float %i.oa, 1.000000e+00
  %i.od = fdiv float %i.ob, %i.oc                 ; 2 uses
  %i.oe = fmul float %i.nl, %i.ny                 ; 4 uses
  %i.of = fsub float %.sroa.12.1, %i.oe
  %i.og = fadd float %.sroa.17.1, %i.oe
  %i.oh = fsub float %i.nk, %i.oe
  store float %i.oh, ptr %i.ar, align 4, !tbaa !26
  %i.oi = fadd float %i.nj, %i.oe
  store float %i.oi, ptr %i.as, align 4, !tbaa !26
  store float 0.000000e+00, ptr %i.ac, align 4, !tbaa !26
  %i.oj = fneg float %i.ob
  %i.ok = fneg float %i.od
  %i.ol = load <2 x float>, ptr %i.s, align 4, !tbaa !26 ; 3 uses
  %i.om = insertelement <2 x float> poison, float %i.od, i64 0
  %i.on = insertelement <2 x float> %i.om, float %i.ok, i64 1 ; 6 uses
  %i.oo = shufflevector <2 x float> %i.ol, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.op = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.on, <2 x float> %i.ol, <2 x float> %i.oo)
  %i.oq = insertelement <2 x float> poison, float %i.oj, i64 0
  %i.or = insertelement <2 x float> %i.oq, float %i.ob, i64 1 ; 6 uses
  %i.os = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.or, <2 x float> %i.op, <2 x float> %i.ol)
  store <2 x float> %i.os, ptr %i.s, align 4, !tbaa !26
  %i.ot = load <2 x float>, ptr %i.u, align 4, !tbaa !26 ; 3 uses
  %i.ou = shufflevector <2 x float> %i.ot, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ov = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.on, <2 x float> %i.ot, <2 x float> %i.ou)
  %i.ow = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.or, <2 x float> %i.ov, <2 x float> %i.ot)
  store <2 x float> %i.ow, ptr %i.u, align 4, !tbaa !26
  %i.ox = load <2 x float>, ptr %i.ay, align 4, !tbaa !26 ; 3 uses
  %i.oy = shufflevector <2 x float> %i.ox, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.oz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.on, <2 x float> %i.ox, <2 x float> %i.oy)
  %i.pa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.or, <2 x float> %i.oz, <2 x float> %i.ox)
  store <2 x float> %i.pa, ptr %i.ay, align 4, !tbaa !26
  %i.pb = load <2 x float>, ptr %i.c, align 4, !tbaa !26 ; 3 uses
  %i.pc = shufflevector <2 x float> %i.pb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.on, <2 x float> %i.pb, <2 x float> %i.pc)
  %i.pe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.or, <2 x float> %i.pd, <2 x float> %i.pb)
  store <2 x float> %i.pe, ptr %i.c, align 4, !tbaa !26
  %i.pf = load <2 x float>, ptr %i.d, align 4, !tbaa !26 ; 3 uses
  %i.pg = shufflevector <2 x float> %i.pf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ph = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.on, <2 x float> %i.pf, <2 x float> %i.pg)
  %i.pi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.or, <2 x float> %i.ph, <2 x float> %i.pf)
  store <2 x float> %i.pi, ptr %i.d, align 4, !tbaa !26
  %i.pj = load <2 x float>, ptr %i.az, align 4, !tbaa !26 ; 3 uses
  %i.pk = shufflevector <2 x float> %i.pj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.on, <2 x float> %i.pj, <2 x float> %i.pk)
  %i.pm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.or, <2 x float> %i.pl, <2 x float> %i.pj)
  store <2 x float> %i.pm, ptr %i.az, align 4, !tbaa !26
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi2ELi3ELi0ELi1EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit

_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi2ELi3ELi0ELi1EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit: ; preds = %bb.m, %bb.n
  %.sroa.17.2 = phi float [ %i.og, %bb.n ], [ %.sroa.17.1, %bb.m ]
  %.sroa.12.2 = phi float [ %i.of, %bb.n ], [ %.sroa.12.1, %bb.m ]
  %i.pn = load float, ptr %1, align 4, !tbaa !26
  %i.po = fadd float %.sroa.0.2, %i.pn            ; 2 uses
  store float %i.po, ptr %1, align 4, !tbaa !26
  store float %i.po, ptr %0, align 4, !tbaa !26
  %i.pp = load float, ptr %i.j, align 4, !tbaa !26
  %i.pq = fadd float %.sroa.7.2, %i.pp            ; 2 uses
  store float %i.pq, ptr %i.j, align 4, !tbaa !26
  store float %i.pq, ptr %i.h, align 4, !tbaa !26
  %i.pr = load float, ptr %i.m, align 4, !tbaa !26
  %i.ps = fadd float %.sroa.12.2, %i.pr           ; 2 uses
  store float %i.ps, ptr %i.m, align 4, !tbaa !26
  store float %i.ps, ptr %i.k, align 4, !tbaa !26
  %i.pt = load float, ptr %i.p, align 4, !tbaa !26
  %i.pu = fadd float %.sroa.17.2, %i.pt           ; 2 uses
  store float %i.pu, ptr %i.p, align 4, !tbaa !26
  store float %i.pu, ptr %i.n, align 4, !tbaa !26
  %i.pv = load float, ptr %i.q, align 4, !tbaa !26 ; 2 uses
  %i.pw = load <2 x float>, ptr %i.s, align 4, !tbaa !26 ; 3 uses
  %i.px = extractelement <2 x float> %i.pw, i64 1
  %i.py = extractelement <2 x float> %i.pw, i64 0 ; 2 uses
  %i.pz = load <2 x float>, ptr %i.u, align 4, !tbaa !26 ; 3 uses
  %i.qa = extractelement <2 x float> %i.pz, i64 1
  %i.qb = extractelement <2 x float> %i.pz, i64 0
  %i.qc = load float, ptr %i.ac, align 4, !tbaa !26
  %6 = tail call noundef float @llvm.fabs.f32(float %i.pv) ; 2 uses
  %7 = fcmp ogt float %6, 0.000000e+00
  %.sroa.speculated.i62 = select i1 %7, float %6, float 0.000000e+00 ; 2 uses
  %i.qd = tail call noundef float @llvm.fabs.f32(float %i.py) ; 2 uses
  %i.qe = fcmp olt float %.sroa.speculated.i62, %i.qd
  %.sroa.speculated.121.i63 = select i1 %i.qe, float %i.qd, float %.sroa.speculated.i62 ; 2 uses
  %i.qf = tail call noundef float @llvm.fabs.f32(float %i.px) ; 2 uses
  %i.qg = fcmp olt float %.sroa.speculated.121.i63, %i.qf
  %.sroa.speculated.222.i64 = select i1 %i.qg, float %i.qf, float %.sroa.speculated.121.i63 ; 2 uses
  %i.qh = tail call noundef float @llvm.fabs.f32(float %i.qb) ; 2 uses
  %i.qi = fcmp olt float %.sroa.speculated.222.i64, %i.qh
  %.sroa.speculated.1.i65 = select i1 %i.qi, float %i.qh, float %.sroa.speculated.222.i64 ; 2 uses
  %i.qj = tail call noundef float @llvm.fabs.f32(float %i.qa) ; 2 uses
  %i.qk = fcmp olt float %.sroa.speculated.1.i65, %i.qj
  %.sroa.speculated.1.1.i66 = select i1 %i.qk, float %i.qj, float %.sroa.speculated.1.i65 ; 2 uses
  %i.ql = tail call noundef float @llvm.fabs.f32(float %i.qc) ; 2 uses
  %i.qm = fcmp olt float %.sroa.speculated.1.1.i66, %i.ql
  %.sroa.speculated.2.i67 = select i1 %i.qm, float %i.ql, float %.sroa.speculated.1.1.i66
  %i.qn = fcmp ogt float %.sroa.speculated.2.i67, %i.ao
  %i.qo = icmp samesign ult i32 %.048, 19
  %i.qp = select i1 %i.qn, i1 %i.qo, i1 false
  br i1 %i.qp, label %bb.b, label %.loopexit, !llvm.loop !50

.loopexit:                                        ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi2ELi3ELi0ELi1EfEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_117jacobiEigenSolverIdEEvRNS_8Matrix44IT_EERNS_4Vec4IS2_EES4_S2_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, double noundef %3) local_unnamed_addr #0 {
bb.a:
  store double 1.000000e+00, ptr %2, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !7
  %i.g = load double, ptr %0, align 8, !tbaa !7
  store double %i.g, ptr %1, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store double %i.i, ptr %i.j, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store double %i.l, ptr %i.m, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store double %i.o, ptr %i.p, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !7 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.w = load <2 x double>, ptr %i.s, align 8, !tbaa !7 ; 3 uses
  %i.x = extractelement <2 x double> %i.w, i64 1
  %i.y = extractelement <2 x double> %i.w, i64 0  ; 2 uses
  %i.z = load <2 x double>, ptr %i.u, align 8, !tbaa !7 ; 3 uses
  %i.aa = extractelement <2 x double> %i.z, i64 1
  %i.ab = extractelement <2 x double> %i.z, i64 0
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 13 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !7
  %4 = tail call noundef double @llvm.fabs.f64(double %i.r) ; 2 uses
  %5 = fcmp ogt double %4, 0.000000e+00
  %.sroa.speculated.i = select i1 %5, double %4, double 0.000000e+00 ; 2 uses
  %i.ae = tail call noundef double @llvm.fabs.f64(double %i.y) ; 2 uses
  %i.af = fcmp olt double %.sroa.speculated.i, %i.ae
  %.sroa.speculated.121.i = select i1 %i.af, double %i.ae, double %.sroa.speculated.i ; 2 uses
  %i.ag = tail call noundef double @llvm.fabs.f64(double %i.x) ; 2 uses
  %i.ah = fcmp olt double %.sroa.speculated.121.i, %i.ag
  %.sroa.speculated.222.i = select i1 %i.ah, double %i.ag, double %.sroa.speculated.121.i ; 2 uses
  %i.ai = tail call noundef double @llvm.fabs.f64(double %i.ab) ; 2 uses
  %i.aj = fcmp olt double %.sroa.speculated.222.i, %i.ai
  %.sroa.speculated.1.i = select i1 %i.aj, double %i.ai, double %.sroa.speculated.222.i ; 2 uses
  %i.ak = tail call noundef double @llvm.fabs.f64(double %i.aa) ; 2 uses
  %i.al = fcmp olt double %.sroa.speculated.1.i, %i.ak
  %.sroa.speculated.1.1.i = select i1 %i.al, double %i.ak, double %.sroa.speculated.1.i ; 2 uses
  %i.am = tail call noundef double @llvm.fabs.f64(double %i.ad) ; 2 uses
  %i.an = fcmp olt double %.sroa.speculated.1.1.i, %i.am
  %.sroa.speculated.2.i = select i1 %i.an, double %i.am, double %.sroa.speculated.1.1.i
  %i.ao = fmul double %3, %.sroa.speculated.2.i   ; 2 uses
  %i.ap = fcmp une double %i.ao, 0.000000e+00
  br i1 %i.ap, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi2ELi3ELi0ELi1EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit
  %i.bc = phi double [ %i.qf, %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi2ELi3ELi0ELi1EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit ], [ %i.y, %.preheader ]
  %i.bd = phi double [ %i.qc, %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi2ELi3ELi0ELi1EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit ], [ %i.r, %.preheader ] ; 2 uses
  %.048 = phi i32 [ %i.bg, %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi2ELi3ELi0ELi1EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit ], [ 0, %.preheader ] ; 2 uses
  %i.be = phi <2 x double> [ %i.qg, %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi2ELi3ELi0ELi1EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit ], [ %i.z, %.preheader ] ; 3 uses
  %i.bf = phi <2 x double> [ %i.qd, %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi2ELi3ELi0ELi1EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit ], [ %i.w, %.preheader ] ; 3 uses
  %i.bg = add nuw nsw i32 %.048, 1
  %i.bh = load double, ptr %0, align 8, !tbaa !7  ; 3 uses
  %i.bi = load double, ptr %i.aq, align 8, !tbaa !7 ; 2 uses
  %i.bj = fsub double %i.bi, %i.bh                ; 2 uses
  %i.bk = fmul double %i.bd, 2.000000e+00         ; 2 uses
  %i.bl = tail call noundef double @llvm.fabs.f64(double %i.bk)
  %i.bm = tail call noundef double @llvm.fabs.f64(double %i.bj)
  %i.bn = fmul double %3, %i.bm
  %i.bo = fcmp ugt double %i.bl, %i.bn
  br i1 %i.bo, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !7
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi1ELi2ELi3EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.bp = fdiv double %i.bj, %i.bk                ; 4 uses
  %i.bq = fcmp olt double %i.bp, 0.000000e+00
  %i.br = select i1 %i.bq, double -1.000000e+00, double 1.000000e+00
  %i.bs = tail call noundef double @llvm.fabs.f64(double %i.bp)
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bp, double 1.000000e+00)
  %sqrt65.i = tail call double @llvm.sqrt.f64(double %i.bt)
  %i.bu = fadd double %i.bs, %sqrt65.i
  %i.bv = fdiv double %i.br, %i.bu                ; 4 uses
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.bv, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.bw)
  %i.bx = fdiv double 1.000000e+00, %sqrt.i       ; 2 uses
  %i.by = fmul double %i.bv, %i.bx                ; 4 uses
  %i.bz = fadd double %i.bx, 1.000000e+00
  %i.ca = fdiv double %i.by, %i.bz                ; 2 uses
  %i.cb = fmul double %i.bd, %i.bv                ; 4 uses
  %i.cc = fsub double 0.000000e+00, %i.cb
  %i.cd = fadd double %i.cb, 0.000000e+00
  %i.ce = fsub double %i.bh, %i.cb
  store double %i.ce, ptr %0, align 8, !tbaa !7
  %i.cf = fadd double %i.bi, %i.cb
  store double %i.cf, ptr %i.aq, align 8, !tbaa !7
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !7
  %i.cg = fneg double %i.by
  %i.ch = fneg double %i.ca                       ; 2 uses
  %i.ci = insertelement <2 x double> poison, double %i.ca, i64 0 ; 2 uses
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.bf, <2 x double> %i.be)
  %i.cl = insertelement <2 x double> poison, double %i.cg, i64 0 ; 2 uses
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.ck, <2 x double> %i.bf)
  store <2 x double> %i.cn, ptr %i.s, align 8, !tbaa !7
  %i.co = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.be, <2 x double> %i.bf)
  %i.cr = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.cq, <2 x double> %i.be)
  store <2 x double> %i.ct, ptr %i.u, align 8, !tbaa !7
  %i.cu = load <2 x double>, ptr %2, align 8, !tbaa !7 ; 3 uses
  %i.cv = insertelement <2 x double> %i.ci, double %i.ch, i64 1 ; 4 uses
  %i.cw = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> %i.cu, <2 x double> %i.cw)
  %i.cy = insertelement <2 x double> %i.cl, double %i.by, i64 1 ; 4 uses
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.cx, <2 x double> %i.cu)
  store <2 x double> %i.cz, ptr %2, align 8, !tbaa !7
  %i.da = load <2 x double>, ptr %i.at, align 8, !tbaa !7 ; 3 uses
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> %i.da, <2 x double> %i.db)
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.dc, <2 x double> %i.da)
  store <2 x double> %i.dd, ptr %i.at, align 8, !tbaa !7
  %i.de = load <2 x double>, ptr %i.au, align 8, !tbaa !7 ; 3 uses
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> %i.de, <2 x double> %i.df)
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.dg, <2 x double> %i.de)
  store <2 x double> %i.dh, ptr %i.au, align 8, !tbaa !7
  %i.di = load <2 x double>, ptr %i.aw, align 8, !tbaa !7 ; 3 uses
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> %i.di, <2 x double> %i.dj)
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.dk, <2 x double> %i.di)
  store <2 x double> %i.dl, ptr %i.aw, align 8, !tbaa !7
  %.pre = load double, ptr %0, align 8, !tbaa !7
  %.pre72 = load double, ptr %i.s, align 8, !tbaa !7
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi1ELi2ELi3EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit

_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi1ELi2ELi3EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit: ; preds = %bb.c, %bb.d
  %i.dm = phi double [ %.pre72, %bb.d ], [ %i.bc, %bb.c ] ; 2 uses
  %i.dn = phi double [ %.pre, %bb.d ], [ %i.bh, %bb.c ] ; 3 uses
  %.sroa.7.0 = phi double [ %i.cd, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %.sroa.0.0 = phi double [ %i.cc, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.do = load double, ptr %i.ar, align 8, !tbaa !7 ; 2 uses
  %i.dp = fsub double %i.do, %i.dn                ; 2 uses
  %i.dq = fmul double %i.dm, 2.000000e+00         ; 2 uses
  %i.dr = tail call noundef double @llvm.fabs.f64(double %i.dq)
  %i.ds = tail call noundef double @llvm.fabs.f64(double %i.dp)
  %i.dt = fmul double %3, %i.ds
  %i.du = fcmp ugt double %i.dr, %i.dt
  br i1 %i.du, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi1ELi2ELi3EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !7
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi2ELi1ELi3EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit

bb.f:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi0ELi1ELi2ELi3EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit
  %i.dv = fdiv double %i.dp, %i.dq                ; 4 uses
  %i.dw = fcmp olt double %i.dv, 0.000000e+00
  %i.dx = select i1 %i.dw, double -1.000000e+00, double 1.000000e+00
  %i.dy = tail call noundef double @llvm.fabs.f64(double %i.dv)
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.dv, double %i.dv, double 1.000000e+00)
  %sqrt65.i52 = tail call double @llvm.sqrt.f64(double %i.dz)
  %i.ea = fadd double %i.dy, %sqrt65.i52
  %i.eb = fdiv double %i.dx, %i.ea                ; 4 uses
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.eb, double 1.000000e+00)
  %sqrt.i53 = tail call double @llvm.sqrt.f64(double %i.ec)
  %i.ed = fdiv double 1.000000e+00, %sqrt.i53     ; 2 uses
  %i.ee = fmul double %i.eb, %i.ed                ; 8 uses
  %i.ef = fadd double %i.ed, 1.000000e+00
  %i.eg = fdiv double %i.ee, %i.ef                ; 7 uses
  %i.eh = fmul double %i.dm, %i.eb                ; 4 uses
  %i.ei = fsub double %.sroa.0.0, %i.eh
  %i.ej = fadd double %i.eh, 0.000000e+00
  %i.ek = fsub double %i.dn, %i.eh
  store double %i.ek, ptr %0, align 8, !tbaa !7
  %i.el = fadd double %i.do, %i.eh
  store double %i.el, ptr %i.ar, align 8, !tbaa !7
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !7
  %i.em = load double, ptr %i.q, align 8, !tbaa !7 ; 3 uses
  %i.en = load double, ptr %i.u, align 8, !tbaa !7 ; 3 uses
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.em, double %i.en)
  %i.ep = fneg double %i.ee                       ; 6 uses
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.eo, double %i.em)
  store double %i.eq, ptr %i.q, align 8, !tbaa !7
  %i.er = fneg double %i.eg                       ; 6 uses
  %i.es = tail call double @llvm.fmuladd.f64(double %i.er, double %i.en, double %i.em)
  %i.et = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.es, double %i.en)
  store double %i.et, ptr %i.u, align 8, !tbaa !7
  %i.eu = load double, ptr %i.t, align 8, !tbaa !7 ; 3 uses
  %i.ev = load double, ptr %i.ac, align 8, !tbaa !7 ; 3 uses
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.eu, double %i.ev)
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.ew, double %i.eu)
  store double %i.ex, ptr %i.t, align 8, !tbaa !7
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.er, double %i.ev, double %i.eu)
  %i.ez = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.ey, double %i.ev)
  store double %i.ez, ptr %i.ac, align 8, !tbaa !7
  %i.fa = load double, ptr %2, align 8, !tbaa !7  ; 3 uses
  %i.fb = load double, ptr %i.ay, align 8, !tbaa !7 ; 3 uses
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.fa, double %i.fb)
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.fc, double %i.fa)
  store double %i.fd, ptr %2, align 8, !tbaa !7
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.er, double %i.fb, double %i.fa)
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.fe, double %i.fb)
  store double %i.ff, ptr %i.ay, align 8, !tbaa !7
  %i.fg = load double, ptr %i.at, align 8, !tbaa !7 ; 3 uses
  %i.fh = load double, ptr %i.c, align 8, !tbaa !7 ; 3 uses
  %i.fi = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.fg, double %i.fh)
  %i.fj = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.fi, double %i.fg)
  store double %i.fj, ptr %i.at, align 8, !tbaa !7
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.er, double %i.fh, double %i.fg)
  %i.fl = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.fk, double %i.fh)
  store double %i.fl, ptr %i.c, align 8, !tbaa !7
  %i.fm = load double, ptr %i.au, align 8, !tbaa !7 ; 3 uses
  %i.fn = load double, ptr %i.d, align 8, !tbaa !7 ; 3 uses
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.fm, double %i.fn)
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.fo, double %i.fm)
  store double %i.fp, ptr %i.au, align 8, !tbaa !7
end_hunk_5
begin_hunk_6_@_ZN9Imath_3_117jacobiEigenSolverIdEEvRNS_8Matrix44IT_EERNS_4Vec4IS2_EES4_S2_:bb.a
  %i.la = load <2 x double>, ptr %i.ax, align 8, !tbaa !7 ; 3 uses
  %i.lb = shufflevector <2 x double> %i.la, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> %i.la, <2 x double> %i.lb)
  %i.ld = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kg, <2 x double> %i.lc, <2 x double> %i.la)
  store <2 x double> %i.ld, ptr %i.ax, align 8, !tbaa !7
  %.pre74 = load double, ptr %i.aq, align 8, !tbaa !7
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi2ELi0ELi3EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit

_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi2ELi0ELi3EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit: ; preds = %bb.i, %bb.j
  %i.le = phi double [ %.pre74, %bb.j ], [ %i.iy, %bb.i ] ; 2 uses
  %.sroa.12.1 = phi double [ %i.jv, %bb.j ], [ %.sroa.12.0, %bb.i ] ; 2 uses
  %.sroa.7.1 = phi double [ %i.ju, %bb.j ], [ %.sroa.7.0, %bb.i ] ; 2 uses
  %i.lf = load double, ptr %i.v, align 8, !tbaa !7 ; 2 uses
  %i.lg = load double, ptr %i.as, align 8, !tbaa !7 ; 3 uses
  %i.lh = fsub double %i.lg, %i.le                ; 2 uses
  %i.li = fmul double %i.lf, 2.000000e+00         ; 2 uses
  %i.lj = tail call noundef double @llvm.fabs.f64(double %i.li)
  %i.lk = tail call noundef double @llvm.fabs.f64(double %i.lh)
  %i.ll = fmul double %3, %i.lk
  %i.lm = fcmp ugt double %i.lj, %i.ll
  br i1 %i.lm, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi2ELi0ELi3EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit
  store double 0.000000e+00, ptr %i.v, align 8, !tbaa !7
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi3ELi0ELi2EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit

bb.l:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi2ELi0ELi3EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit
  %i.ln = fdiv double %i.lh, %i.li                ; 4 uses
  %i.lo = fcmp olt double %i.ln, 0.000000e+00
  %i.lp = select i1 %i.lo, double -1.000000e+00, double 1.000000e+00
  %i.lq = tail call noundef double @llvm.fabs.f64(double %i.ln)
  %i.lr = tail call double @llvm.fmuladd.f64(double %i.ln, double %i.ln, double 1.000000e+00)
  %sqrt65.i58 = tail call double @llvm.sqrt.f64(double %i.lr)
  %i.ls = fadd double %i.lq, %sqrt65.i58
  %i.lt = fdiv double %i.lp, %i.ls                ; 4 uses
  %i.lu = tail call double @llvm.fmuladd.f64(double %i.lt, double %i.lt, double 1.000000e+00)
  %sqrt.i59 = tail call double @llvm.sqrt.f64(double %i.lu)
  %i.lv = fdiv double 1.000000e+00, %sqrt.i59     ; 2 uses
  %i.lw = fmul double %i.lt, %i.lv                ; 8 uses
  %i.lx = fadd double %i.lv, 1.000000e+00
  %i.ly = fdiv double %i.lw, %i.lx                ; 7 uses
  %i.lz = fmul double %i.lf, %i.lt                ; 4 uses
  %i.ma = fsub double %.sroa.7.1, %i.lz
  %i.mb = fadd double %.sroa.17.0, %i.lz
  %i.mc = fsub double %i.le, %i.lz
  store double %i.mc, ptr %i.aq, align 8, !tbaa !7
  %i.md = fadd double %i.lg, %i.lz
  store double %i.md, ptr %i.as, align 8, !tbaa !7
  store double 0.000000e+00, ptr %i.v, align 8, !tbaa !7
  %i.me = load double, ptr %i.q, align 8, !tbaa !7 ; 3 uses
  %i.mf = load double, ptr %i.t, align 8, !tbaa !7 ; 3 uses
  %i.mg = tail call double @llvm.fmuladd.f64(double %i.ly, double %i.me, double %i.mf)
  %i.mh = fneg double %i.lw                       ; 6 uses
  %i.mi = tail call double @llvm.fmuladd.f64(double %i.mh, double %i.mg, double %i.me)
  store double %i.mi, ptr %i.q, align 8, !tbaa !7
  %i.mj = fneg double %i.ly                       ; 6 uses
  %i.mk = tail call double @llvm.fmuladd.f64(double %i.mj, double %i.mf, double %i.me)
  %i.ml = tail call double @llvm.fmuladd.f64(double %i.lw, double %i.mk, double %i.mf)
  store double %i.ml, ptr %i.t, align 8, !tbaa !7
  %i.mm = load double, ptr %i.u, align 8, !tbaa !7 ; 3 uses
  %i.mn = load double, ptr %i.ac, align 8, !tbaa !7 ; 3 uses
  %i.mo = tail call double @llvm.fmuladd.f64(double %i.ly, double %i.mm, double %i.mn)
  %i.mp = tail call double @llvm.fmuladd.f64(double %i.mh, double %i.mo, double %i.mm)
  store double %i.mp, ptr %i.u, align 8, !tbaa !7
  %i.mq = tail call double @llvm.fmuladd.f64(double %i.mj, double %i.mn, double %i.mm)
  %i.mr = tail call double @llvm.fmuladd.f64(double %i.lw, double %i.mq, double %i.mn)
  store double %i.mr, ptr %i.ac, align 8, !tbaa !7
  %i.ms = load double, ptr %i.a, align 8, !tbaa !7 ; 3 uses
  %i.mt = load double, ptr %i.ba, align 8, !tbaa !7 ; 3 uses
  %i.mu = tail call double @llvm.fmuladd.f64(double %i.ly, double %i.ms, double %i.mt)
  %i.mv = tail call double @llvm.fmuladd.f64(double %i.mh, double %i.mu, double %i.ms)
  store double %i.mv, ptr %i.a, align 8, !tbaa !7
  %i.mw = tail call double @llvm.fmuladd.f64(double %i.mj, double %i.mt, double %i.ms)
  %i.mx = tail call double @llvm.fmuladd.f64(double %i.lw, double %i.mw, double %i.mt)
  store double %i.mx, ptr %i.ba, align 8, !tbaa !7
  %i.my = load double, ptr %i.b, align 8, !tbaa !7 ; 3 uses
  %i.mz = load double, ptr %i.bb, align 8, !tbaa !7 ; 3 uses
  %i.na = tail call double @llvm.fmuladd.f64(double %i.ly, double %i.my, double %i.mz)
  %i.nb = tail call double @llvm.fmuladd.f64(double %i.mh, double %i.na, double %i.my)
  store double %i.nb, ptr %i.b, align 8, !tbaa !7
  %i.nc = tail call double @llvm.fmuladd.f64(double %i.mj, double %i.mz, double %i.my)
  %i.nd = tail call double @llvm.fmuladd.f64(double %i.lw, double %i.nc, double %i.mz)
  store double %i.nd, ptr %i.bb, align 8, !tbaa !7
  %i.ne = load double, ptr %i.av, align 8, !tbaa !7 ; 3 uses
  %i.nf = load double, ptr %i.e, align 8, !tbaa !7 ; 3 uses
  %i.ng = tail call double @llvm.fmuladd.f64(double %i.ly, double %i.ne, double %i.nf)
  %i.nh = tail call double @llvm.fmuladd.f64(double %i.mh, double %i.ng, double %i.ne)
  store double %i.nh, ptr %i.av, align 8, !tbaa !7
  %i.ni = tail call double @llvm.fmuladd.f64(double %i.mj, double %i.nf, double %i.ne)
  %i.nj = tail call double @llvm.fmuladd.f64(double %i.lw, double %i.ni, double %i.nf)
  store double %i.nj, ptr %i.e, align 8, !tbaa !7
  %i.nk = load double, ptr %i.ax, align 8, !tbaa !7 ; 3 uses
  %i.nl = load double, ptr %i.f, align 8, !tbaa !7 ; 3 uses
  %i.nm = tail call double @llvm.fmuladd.f64(double %i.ly, double %i.nk, double %i.nl)
  %i.nn = tail call double @llvm.fmuladd.f64(double %i.mh, double %i.nm, double %i.nk)
  store double %i.nn, ptr %i.ax, align 8, !tbaa !7
  %i.no = tail call double @llvm.fmuladd.f64(double %i.mj, double %i.nl, double %i.nk)
  %i.np = tail call double @llvm.fmuladd.f64(double %i.lw, double %i.no, double %i.nl)
  store double %i.np, ptr %i.f, align 8, !tbaa !7
  %.pre75 = load double, ptr %i.as, align 8, !tbaa !7
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi3ELi0ELi2EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit

_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi3ELi0ELi2EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit: ; preds = %bb.k, %bb.l
  %i.nq = phi double [ %.pre75, %bb.l ], [ %i.lg, %bb.k ] ; 2 uses
  %.sroa.17.1 = phi double [ %i.mb, %bb.l ], [ %.sroa.17.0, %bb.k ] ; 2 uses
  %.sroa.7.2 = phi double [ %i.ma, %bb.l ], [ %.sroa.7.1, %bb.k ]
  %i.nr = load double, ptr %i.ar, align 8, !tbaa !7 ; 2 uses
  %i.ns = load double, ptr %i.ac, align 8, !tbaa !7 ; 2 uses
  %i.nt = fsub double %i.nq, %i.nr                ; 2 uses
  %i.nu = fmul double %i.ns, 2.000000e+00         ; 2 uses
  %i.nv = tail call noundef double @llvm.fabs.f64(double %i.nu)
  %i.nw = tail call noundef double @llvm.fabs.f64(double %i.nt)
  %i.nx = fmul double %3, %i.nw
  %i.ny = fcmp ugt double %i.nv, %i.nx
  br i1 %i.ny, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi3ELi0ELi2EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit
  store double 0.000000e+00, ptr %i.ac, align 8, !tbaa !7
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi2ELi3ELi0ELi1EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit

bb.n:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi1ELi3ELi0ELi2EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit
  %i.nz = fdiv double %i.nt, %i.nu                ; 4 uses
  %i.oa = fcmp olt double %i.nz, 0.000000e+00
  %i.ob = select i1 %i.oa, double -1.000000e+00, double 1.000000e+00
  %i.oc = tail call noundef double @llvm.fabs.f64(double %i.nz)
  %i.od = tail call double @llvm.fmuladd.f64(double %i.nz, double %i.nz, double 1.000000e+00)
  %sqrt65.i60 = tail call double @llvm.sqrt.f64(double %i.od)
  %i.oe = fadd double %i.oc, %sqrt65.i60
  %i.of = fdiv double %i.ob, %i.oe                ; 4 uses
  %i.og = tail call double @llvm.fmuladd.f64(double %i.of, double %i.of, double 1.000000e+00)
  %sqrt.i61 = tail call double @llvm.sqrt.f64(double %i.og)
  %i.oh = fdiv double 1.000000e+00, %sqrt.i61     ; 2 uses
  %i.oi = fmul double %i.of, %i.oh                ; 3 uses
  %i.oj = fadd double %i.oh, 1.000000e+00
  %i.ok = fdiv double %i.oi, %i.oj                ; 2 uses
  %i.ol = fmul double %i.ns, %i.of                ; 4 uses
  %i.om = fsub double %.sroa.12.1, %i.ol
  %i.on = fadd double %.sroa.17.1, %i.ol
  %i.oo = fsub double %i.nr, %i.ol
  store double %i.oo, ptr %i.ar, align 8, !tbaa !7
  %i.op = fadd double %i.nq, %i.ol
  store double %i.op, ptr %i.as, align 8, !tbaa !7
  store double 0.000000e+00, ptr %i.ac, align 8, !tbaa !7
  %i.oq = fneg double %i.oi
  %i.or = fneg double %i.ok
  %i.os = load <2 x double>, ptr %i.s, align 8, !tbaa !7 ; 3 uses
  %i.ot = insertelement <2 x double> poison, double %i.ok, i64 0
  %i.ou = insertelement <2 x double> %i.ot, double %i.or, i64 1 ; 6 uses
  %i.ov = shufflevector <2 x double> %i.os, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ow = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ou, <2 x double> %i.os, <2 x double> %i.ov)
  %i.ox = insertelement <2 x double> poison, double %i.oq, i64 0
  %i.oy = insertelement <2 x double> %i.ox, double %i.oi, i64 1 ; 6 uses
  %i.oz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oy, <2 x double> %i.ow, <2 x double> %i.os)
  store <2 x double> %i.oz, ptr %i.s, align 8, !tbaa !7
  %i.pa = load <2 x double>, ptr %i.u, align 8, !tbaa !7 ; 3 uses
  %i.pb = shufflevector <2 x double> %i.pa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.pc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ou, <2 x double> %i.pa, <2 x double> %i.pb)
  %i.pd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oy, <2 x double> %i.pc, <2 x double> %i.pa)
  store <2 x double> %i.pd, ptr %i.u, align 8, !tbaa !7
  %i.pe = load <2 x double>, ptr %i.ay, align 8, !tbaa !7 ; 3 uses
  %i.pf = shufflevector <2 x double> %i.pe, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.pg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ou, <2 x double> %i.pe, <2 x double> %i.pf)
  %i.ph = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oy, <2 x double> %i.pg, <2 x double> %i.pe)
  store <2 x double> %i.ph, ptr %i.ay, align 8, !tbaa !7
  %i.pi = load <2 x double>, ptr %i.c, align 8, !tbaa !7 ; 3 uses
  %i.pj = shufflevector <2 x double> %i.pi, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.pk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ou, <2 x double> %i.pi, <2 x double> %i.pj)
  %i.pl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oy, <2 x double> %i.pk, <2 x double> %i.pi)
  store <2 x double> %i.pl, ptr %i.c, align 8, !tbaa !7
  %i.pm = load <2 x double>, ptr %i.d, align 8, !tbaa !7 ; 3 uses
  %i.pn = shufflevector <2 x double> %i.pm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.po = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ou, <2 x double> %i.pm, <2 x double> %i.pn)
  %i.pp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oy, <2 x double> %i.po, <2 x double> %i.pm)
  store <2 x double> %i.pp, ptr %i.d, align 8, !tbaa !7
  %i.pq = load <2 x double>, ptr %i.az, align 8, !tbaa !7 ; 3 uses
  %i.pr = shufflevector <2 x double> %i.pq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ps = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ou, <2 x double> %i.pq, <2 x double> %i.pr)
  %i.pt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oy, <2 x double> %i.ps, <2 x double> %i.pq)
  store <2 x double> %i.pt, ptr %i.az, align 8, !tbaa !7
  br label %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi2ELi3ELi0ELi1EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit

_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi2ELi3ELi0ELi1EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit: ; preds = %bb.m, %bb.n
  %.sroa.17.2 = phi double [ %i.on, %bb.n ], [ %.sroa.17.1, %bb.m ]
  %.sroa.12.2 = phi double [ %i.om, %bb.n ], [ %.sroa.12.1, %bb.m ]
  %i.pu = load double, ptr %1, align 8, !tbaa !7
  %i.pv = fadd double %.sroa.0.2, %i.pu           ; 2 uses
  store double %i.pv, ptr %1, align 8, !tbaa !7
  store double %i.pv, ptr %0, align 8, !tbaa !7
  %i.pw = load double, ptr %i.j, align 8, !tbaa !7
  %i.px = fadd double %.sroa.7.2, %i.pw           ; 2 uses
  store double %i.px, ptr %i.j, align 8, !tbaa !7
  store double %i.px, ptr %i.h, align 8, !tbaa !7
  %i.py = load double, ptr %i.m, align 8, !tbaa !7
  %i.pz = fadd double %.sroa.12.2, %i.py          ; 2 uses
  store double %i.pz, ptr %i.m, align 8, !tbaa !7
  store double %i.pz, ptr %i.k, align 8, !tbaa !7
  %i.qa = load double, ptr %i.p, align 8, !tbaa !7
  %i.qb = fadd double %.sroa.17.2, %i.qa          ; 2 uses
  store double %i.qb, ptr %i.p, align 8, !tbaa !7
  store double %i.qb, ptr %i.n, align 8, !tbaa !7
  %i.qc = load double, ptr %i.q, align 8, !tbaa !7 ; 2 uses
  %i.qd = load <2 x double>, ptr %i.s, align 8, !tbaa !7 ; 3 uses
  %i.qe = extractelement <2 x double> %i.qd, i64 1
  %i.qf = extractelement <2 x double> %i.qd, i64 0 ; 2 uses
  %i.qg = load <2 x double>, ptr %i.u, align 8, !tbaa !7 ; 3 uses
  %i.qh = extractelement <2 x double> %i.qg, i64 1
  %i.qi = extractelement <2 x double> %i.qg, i64 0
  %i.qj = load double, ptr %i.ac, align 8, !tbaa !7
  %6 = tail call noundef double @llvm.fabs.f64(double %i.qc) ; 2 uses
  %7 = fcmp ogt double %6, 0.000000e+00
  %.sroa.speculated.i62 = select i1 %7, double %6, double 0.000000e+00 ; 2 uses
  %i.qk = tail call noundef double @llvm.fabs.f64(double %i.qf) ; 2 uses
  %i.ql = fcmp olt double %.sroa.speculated.i62, %i.qk
  %.sroa.speculated.121.i63 = select i1 %i.ql, double %i.qk, double %.sroa.speculated.i62 ; 2 uses
  %i.qm = tail call noundef double @llvm.fabs.f64(double %i.qe) ; 2 uses
  %i.qn = fcmp olt double %.sroa.speculated.121.i63, %i.qm
  %.sroa.speculated.222.i64 = select i1 %i.qn, double %i.qm, double %.sroa.speculated.121.i63 ; 2 uses
  %i.qo = tail call noundef double @llvm.fabs.f64(double %i.qi) ; 2 uses
  %i.qp = fcmp olt double %.sroa.speculated.222.i64, %i.qo
  %.sroa.speculated.1.i65 = select i1 %i.qp, double %i.qo, double %.sroa.speculated.222.i64 ; 2 uses
  %i.qq = tail call noundef double @llvm.fabs.f64(double %i.qh) ; 2 uses
  %i.qr = fcmp olt double %.sroa.speculated.1.i65, %i.qq
  %.sroa.speculated.1.1.i66 = select i1 %i.qr, double %i.qq, double %.sroa.speculated.1.i65 ; 2 uses
  %i.qs = tail call noundef double @llvm.fabs.f64(double %i.qj) ; 2 uses
  %i.qt = fcmp olt double %.sroa.speculated.1.1.i66, %i.qs
  %.sroa.speculated.2.i67 = select i1 %i.qt, double %i.qs, double %.sroa.speculated.1.1.i66
  %i.qu = fcmp ogt double %.sroa.speculated.2.i67, %i.ao
  %i.qv = icmp samesign ult i32 %.048, 19
  %i.qw = select i1 %i.qu, i1 %i.qv, i1 false
  br i1 %i.qw, label %bb.b, label %.loopexit, !llvm.loop !51

.loopexit:                                        ; preds = %_ZN9Imath_3_112_GLOBAL__N_114jacobiRotationILi2ELi3ELi0ELi1EdEEbRNS_8Matrix44IT3_EES5_RNS_4Vec4IS3_EES3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_114maxEigenVectorINS_8Matrix33IfEENS_4Vec3IfEEEEvRT_RT0_(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #0 {
.preheader:
  %2 = alloca %"class.Imath_3_1::Vec3.0", align 8 ; 6 uses
  %3 = alloca %"class.Imath_3_1::Matrix33.1", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %3, align 16, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.a, align 16, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  store float 1.000000e+00, ptr %i.b, align 16, !tbaa !26
  call void @_ZN9Imath_3_117jacobiEigenSolverIfEEvRNS_8Matrix33IT_EERNS_4Vec3IS2_EES4_S2_(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(36) %3, float noundef f0x34000000)
  %i.c = load <2 x float>, ptr %2, align 8, !tbaa !26
  %i.d = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.c) ; 2 uses
  %i.e = extractelement <2 x float> %i.d, i64 0
  %i.f = extractelement <2 x float> %i.d, i64 1
  %i.g = fcmp ogt float %i.f, %i.e                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load float, ptr %i.h, align 8, !tbaa !26
  %i.j = call noundef float @llvm.fabs.f32(float %i.i)
  %.sroa.sel.idx = select i1 %i.g, i64 4, i64 0
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.sel.idx
  %i.k = load float, ptr %.sroa.sel, align 4, !tbaa !26
  %i.l = call noundef float @llvm.fabs.f32(float %i.k)
  %i.m = fcmp ogt float %i.j, %i.l
  %i.n = zext i1 %i.g to i64
  %i.o = select i1 %i.m, i64 2, i64 %i.n
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.o ; 3 uses
  %i.p = load float, ptr %invariant.gep, align 4, !tbaa !26
  store float %i.p, ptr %1, align 4, !tbaa !26
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 12
  %i.q = load float, ptr %gep.1, align 4, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.q, ptr %i.r, align 4, !tbaa !26
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 24
  %i.s = load float, ptr %gep.2, align 4, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.s, ptr %i.t, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_114maxEigenVectorINS_8Matrix44IfEENS_4Vec4IfEEEEvRT_RT0_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 {
.preheader:
  %2 = alloca %"class.Imath_3_1::Vec4", align 8   ; 8 uses
  %3 = alloca %"class.Imath_3_1::Matrix44.2", align 4 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store float 1.000000e+00, ptr %3, align 4, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 4, !tbaa !26
  call void @_ZN9Imath_3_117jacobiEigenSolverIfEEvRNS_8Matrix44IT_EERNS_4Vec4IS2_EES4_S2_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, float noundef f0x34000000)
  %i.g = load <2 x float>, ptr %2, align 8, !tbaa !26
  %i.h = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.g) ; 2 uses
  %i.i = extractelement <2 x float> %i.h, i64 0
  %i.j = extractelement <2 x float> %i.h, i64 1
  %i.k = fcmp ogt float %i.j, %i.i                ; 2 uses
  %.1 = zext i1 %i.k to i32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load float, ptr %i.l, align 8, !tbaa !26
  %i.n = call noundef float @llvm.fabs.f32(float %i.m)
  %.sroa.sel.idx = select i1 %i.k, i64 4, i64 0
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.sel.idx
  %i.o = load float, ptr %.sroa.sel, align 4, !tbaa !26
  %i.p = call noundef float @llvm.fabs.f32(float %i.o)
  %i.q = fcmp ogt float %i.n, %i.p
  %.1.1 = select i1 %i.q, i32 2, i32 %.1          ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !26
  %i.t = call noundef float @llvm.fabs.f32(float %i.s)
  %i.u = zext nneg i32 %.1.1 to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !26
  %i.x = call noundef float @llvm.fabs.f32(float %i.w)
  %i.y = fcmp ogt float %i.t, %i.x
  %i.z = zext nneg i32 %.1.1 to i64
  %i.aa = select i1 %i.y, i64 3, i64 %i.z
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aa ; 4 uses
  %i.ab = load float, ptr %invariant.gep, align 4, !tbaa !26
  store float %i.ab, ptr %1, align 4, !tbaa !26
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16
  %i.ac = load float, ptr %gep.1, align 4, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.ac, ptr %i.ad, align 4, !tbaa !26
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 32
  %i.ae = load float, ptr %gep.2, align 4, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.ae, ptr %i.af, align 4, !tbaa !26
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 48
  %i.ag = load float, ptr %gep.3, align 4, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.ag, ptr %i.ah, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_114maxEigenVectorINS_8Matrix33IdEENS_4Vec3IdEEEEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 {
.preheader:
  %2 = alloca %"class.Imath_3_1::Vec3", align 16  ; 6 uses
  %3 = alloca %"class.Imath_3_1::Matrix33", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store double 1.000000e+00, ptr %3, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !7
  call void @_ZN9Imath_3_117jacobiEigenSolverIdEEvRNS_8Matrix33IT_EERNS_4Vec3IS2_EES4_S2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, double noundef f0x3CB0000000000000)
  %i.e = load <2 x double>, ptr %2, align 16, !tbaa !7
  %i.f = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.e) ; 2 uses
  %i.g = extractelement <2 x double> %i.f, i64 0
  %i.h = extractelement <2 x double> %i.f, i64 1
  %i.i = fcmp ogt double %i.h, %i.g               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load double, ptr %i.j, align 16, !tbaa !7
  %i.l = call noundef double @llvm.fabs.f64(double %i.k)
  %.sroa.sel.idx = select i1 %i.i, i64 8, i64 0
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.sel.idx
  %i.m = load double, ptr %.sroa.sel, align 8, !tbaa !7
  %i.n = call noundef double @llvm.fabs.f64(double %i.m)
  %i.o = fcmp ogt double %i.l, %i.n
  %i.p = zext i1 %i.i to i64
  %i.q = select i1 %i.o, i64 2, i64 %i.p
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.q ; 3 uses
  %i.r = load double, ptr %invariant.gep, align 8, !tbaa !7
  store double %i.r, ptr %1, align 8, !tbaa !7
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 24
  %i.s = load double, ptr %gep.1, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.s, ptr %i.t, align 8, !tbaa !7
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 48
  %i.u = load double, ptr %gep.2, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.u, ptr %i.v, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_114maxEigenVectorINS_8Matrix44IdEENS_4Vec4IdEEEEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 {
.preheader:
  %2 = alloca %"class.Imath_3_1::Vec4.3", align 16 ; 8 uses
  %3 = alloca %"class.Imath_3_1::Matrix44", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store double 1.000000e+00, ptr %3, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 120
end_hunk_6
