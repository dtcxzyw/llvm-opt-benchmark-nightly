Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/shapes_test?download=true
inline.NumInlined: 2888
inline.NumDeleted: 834
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN4pbrt22IntersectBilinearPatchERKNS_3RayEfNS_6Point3IfEES4_S4_S4_:bb.a
  %i.hg = tail call noundef float @llvm.fma.f32(float %i.fz, float %i.gs, float %i.hf)
  %i.hh = tail call noundef float @llvm.fma.f32(float %i.hb, float %i.ga, float %i.he)
  %i.hi = fadd float %i.hg, %i.hh                 ; 4 uses
  %i.hj = fmul float %i.ga, %.sroa.01.4.vec.extract.i ; 2 uses
  %i.hk = fneg float %i.hj
  %i.hl = tail call noundef float @llvm.fma.f32(float %i.fz, float %.sroa.2106.0.copyload, float %i.hk)
  %i.hm = fneg float %.sroa.01.4.vec.extract.i
  %i.hn = tail call noundef float @llvm.fma.f32(float %i.hm, float %i.ga, float %i.hj)
  %i.ho = fadd float %i.hl, %i.hn
  %i.hp = fmul float %.sroa.01.0.vec.extract.i, %i.hi ; 2 uses
  %i.hq = fneg float %i.hp
  %i.hr = tail call noundef float @llvm.fma.f32(float %i.fy, float %i.hd, float %i.hq)
  %i.hs = fneg float %.sroa.01.0.vec.extract.i
  %i.ht = tail call noundef float @llvm.fma.f32(float %i.hs, float %i.hi, float %i.hp)
  %i.hu = fadd float %i.hr, %i.ht
  %i.hv = tail call noundef float @llvm.fma.f32(float %i.gg, float %i.ho, float %i.hu) ; 3 uses
  %i.hw = fmul float %i.fx, %i.gm                 ; 2 uses
  %i.hx = fneg float %i.hw
  %i.hy = tail call noundef float @llvm.fma.f32(float %i.fw, float %i.gs, float %i.hx)
  %i.hz = tail call noundef float @llvm.fma.f32(float %i.hb, float %i.fx, float %i.hw)
  %i.ia = fadd float %i.hy, %i.hz
  %i.ib = fmul float %i.fw, %i.ga                 ; 2 uses
  %i.ic = fneg float %i.ib
  %i.id = tail call noundef float @llvm.fma.f32(float %i.fz, float %i.fx, float %i.ic)
  %i.ie = fneg float %i.fw
  %i.if = tail call noundef float @llvm.fma.f32(float %i.ie, float %i.ga, float %i.ib)
  %i.ig = fadd float %i.id, %i.if
  %i.ih = fmul float %i.fv, %i.hi                 ; 2 uses
  %i.ii = fneg float %i.ih
  %i.ij = tail call noundef float @llvm.fma.f32(float %i.fy, float %i.ia, float %i.ii)
  %i.ik = fneg float %i.fv
  %i.il = tail call noundef float @llvm.fma.f32(float %i.ik, float %i.hi, float %i.ih)
  %i.im = fadd float %i.ij, %i.il
  %i.in = tail call noundef float @llvm.fma.f32(float %i.gg, float %i.ig, float %i.im) ; 2 uses
  %i.io = fmul float %i.ez, %i.gx
  %i.ip = fcmp ule float %i.in, %i.io
  %i.iq = fcmp ult float %i.hv, 0.000000e+00
  %or.cond3.not679 = or i1 %i.ip, %i.iq
  %i.ir = fcmp ugt float %i.hv, %i.gx
  %or.cond408 = or i1 %i.ir, %or.cond3.not679     ; 2 uses
  %i.is = fdiv float %i.hv, %i.gx
  %i.it = fdiv float %i.in, %i.gx
  %.0393 = select i1 %or.cond408, float undef, float %.0670.ph
  %.0 = select i1 %or.cond408, float %2, float %i.it
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1398 = phi float [ %i.is, %bb.g ], [ undef, %bb.f ] ; 2 uses
  %.1394 = phi float [ %.0393, %bb.g ], [ undef, %bb.f ] ; 2 uses
  %.1 = phi float [ %.0, %bb.g ], [ %2, %bb.f ]   ; 3 uses
  %i.iu = fcmp oge float %.0671.ph, 0.000000e+00
  %i.iv = fcmp ole float %.0671.ph, 1.000000e+00
  %or.cond5 = and i1 %i.iu, %i.iv
  %i.iw = fcmp une float %.0671.ph, %.0670.ph
  %or.cond410 = select i1 %or.cond5, i1 %i.iw, i1 false
  br i1 %or.cond410, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ix = fsub float 1.000000e+00, %.0671.ph      ; 6 uses
  %i.iy = fmul float %.sroa.03.0.vec.extract.i, %i.ix
  %i.iz = fmul float %.sroa.03.4.vec.extract.i, %i.ix
  %i.ja = fmul float %4, %i.ix
  %i.jb = fmul float %.sroa.0653.0.vec.extract, %.0671.ph
  %i.jc = fmul float %.sroa.0653.4.vec.extract, %.0671.ph
  %i.jd = fmul float %6, %.0671.ph
  %i.je = fadd float %i.jb, %i.iy                 ; 2 uses
  %i.jf = fadd float %i.jc, %i.iz                 ; 2 uses
  %i.jg = fadd float %i.jd, %i.ja                 ; 2 uses
  %i.jh = fmul float %.sroa.0643.0.vec.extract, %i.ix
  %i.ji = fmul float %.sroa.0643.4.vec.extract, %i.ix
  %i.jj = fmul float %8, %i.ix
  %i.jk = fmul float %.0671.ph, %.sroa.03.0.vec.extract.i518
  %i.jl = fmul float %.0671.ph, %.sroa.03.4.vec.extract.i519
  %i.jm = fmul float %.sroa.2351.0.copyload, %.0671.ph
  %i.jn = fadd float %i.jh, %i.jk
  %i.jo = fadd float %i.ji, %i.jl
  %i.jp = fadd float %i.jm, %i.jj
  %i.jq = fsub float %i.jn, %i.je                 ; 5 uses
  %i.jr = fsub float %i.jo, %i.jf                 ; 6 uses
  %i.js = fsub float %i.jp, %i.jg                 ; 6 uses
  %.sroa.241.0.copyload = load float, ptr %.sroa.2323.0..sroa_idx, align 8
  %i.jt = fsub float %i.je, %.sroa.03.0.vec.extract.i426 ; 2 uses
  %i.ju = fsub float %i.jf, %.sroa.03.4.vec.extract.i427 ; 3 uses
  %i.jv = fsub float %i.jg, %.sroa.241.0.copyload ; 6 uses
  %.sroa.226.0.copyload = load float, ptr %.sroa.2335.0..sroa_idx, align 4 ; 6 uses
  %i.jw = fmul float %i.jr, %.sroa.226.0.copyload ; 2 uses
  %i.jx = fneg float %i.jw
  %i.jy = tail call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i, float %i.js, float %i.jx)
  %i.jz = fneg float %.sroa.226.0.copyload
  %i.ka = tail call noundef float @llvm.fma.f32(float %i.jz, float %i.jr, float %i.jw)
  %i.kb = fadd float %i.jy, %i.ka                 ; 4 uses
  %i.kc = fmul float %.sroa.01.0.vec.extract.i, %i.js ; 2 uses
  %i.kd = fneg float %i.kc
  %i.ke = tail call noundef float @llvm.fma.f32(float %.sroa.226.0.copyload, float %i.jq, float %i.kd)
  %i.kf = fneg float %.sroa.01.0.vec.extract.i
  %i.kg = tail call noundef float @llvm.fma.f32(float %i.kf, float %i.js, float %i.kc)
  %i.kh = fadd float %i.kg, %i.ke                 ; 6 uses
  %i.ki = fmul float %.sroa.01.4.vec.extract.i, %i.jq ; 2 uses
  %i.kj = fneg float %i.ki
  %i.kk = tail call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i, float %i.jr, float %i.kj)
  %i.kl = fneg float %.sroa.01.4.vec.extract.i
  %i.km = tail call noundef float @llvm.fma.f32(float %i.kl, float %i.jq, float %i.ki)
  %i.kn = fadd float %i.kk, %i.km                 ; 5 uses
  %i.ko = fmul float %i.kb, %i.kb
  %i.kp = fmul float %i.kh, %i.kh
  %i.kq = fadd float %i.kp, %i.ko
  %i.kr = fmul float %i.kn, %i.kn
  %i.ks = fadd float %i.kr, %i.kq                 ; 3 uses
  %i.kt = load float, ptr %i.a, align 4, !tbaa !259 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kv = load float, ptr %i.ku, align 8, !tbaa !260 ; 3 uses
  %i.kw = fmul float %.sroa.226.0.copyload, %i.kh ; 2 uses
  %i.kx = fneg float %i.kw
  %i.ky = tail call noundef float @llvm.fma.f32(float %i.kv, float %i.kn, float %i.kx)
  %i.kz = fneg float %i.kh                        ; 3 uses
  %i.la = tail call noundef float @llvm.fma.f32(float %i.kz, float %.sroa.226.0.copyload, float %i.kw)
  %i.lb = fadd float %i.ky, %i.la
  %i.lc = fmul float %i.jv, %i.kh                 ; 2 uses
  %i.ld = fneg float %i.lc
  %i.le = tail call noundef float @llvm.fma.f32(float %i.ju, float %i.kn, float %i.ld)
  %i.lf = tail call noundef float @llvm.fma.f32(float %i.kz, float %i.jv, float %i.lc)
  %i.lg = fadd float %i.le, %i.lf                 ; 4 uses
  %i.lh = fmul float %i.jv, %i.kv                 ; 2 uses
  %i.li = fneg float %i.lh
  %i.lj = tail call noundef float @llvm.fma.f32(float %i.ju, float %.sroa.226.0.copyload, float %i.li)
  %i.lk = fneg float %i.kv
  %i.ll = tail call noundef float @llvm.fma.f32(float %i.lk, float %i.jv, float %i.lh)
  %i.lm = fadd float %i.lj, %i.ll
  %i.ln = fmul float %i.kt, %i.lg                 ; 2 uses
  %i.lo = fneg float %i.ln
  %i.lp = tail call noundef float @llvm.fma.f32(float %i.jt, float %i.lb, float %i.lo)
  %i.lq = fneg float %i.kt
  %i.lr = tail call noundef float @llvm.fma.f32(float %i.lq, float %i.lg, float %i.ln)
  %i.ls = fadd float %i.lp, %i.lr
  %i.lt = tail call noundef float @llvm.fma.f32(float %i.kb, float %i.lm, float %i.ls) ; 3 uses
  %i.lu = fmul float %i.js, %i.kh                 ; 2 uses
  %i.lv = fneg float %i.lu
  %i.lw = tail call noundef float @llvm.fma.f32(float %i.jr, float %i.kn, float %i.lv)
  %i.lx = tail call noundef float @llvm.fma.f32(float %i.kz, float %i.js, float %i.lu)
  %i.ly = fadd float %i.lw, %i.lx
  %i.lz = fmul float %i.jr, %i.jv                 ; 2 uses
  %i.ma = fneg float %i.lz
  %i.mb = tail call noundef float @llvm.fma.f32(float %i.ju, float %i.js, float %i.ma)
  %i.mc = fneg float %i.jr
  %i.md = tail call noundef float @llvm.fma.f32(float %i.mc, float %i.jv, float %i.lz)
  %i.me = fadd float %i.mb, %i.md
  %i.mf = fmul float %i.jq, %i.lg                 ; 2 uses
  %i.mg = fneg float %i.mf
  %i.mh = tail call noundef float @llvm.fma.f32(float %i.jt, float %i.ly, float %i.mg)
  %i.mi = fneg float %i.jq
  %i.mj = tail call noundef float @llvm.fma.f32(float %i.mi, float %i.lg, float %i.mf)
  %i.mk = fadd float %i.mh, %i.mj
  %i.ml = tail call noundef float @llvm.fma.f32(float %i.kb, float %i.me, float %i.mk)
  %i.mm = fdiv float %i.ml, %i.ks                 ; 3 uses
  %i.mn = fcmp oge float %i.lt, 0.000000e+00
  %i.mo = fcmp ole float %i.lt, %i.ks
  %or.cond411.not681 = and i1 %i.mn, %i.mo
  %i.mp = fcmp ogt float %.1, %i.mm
  %or.cond412 = select i1 %or.cond411.not681, i1 %i.mp, i1 false
  %i.mq = fcmp ogt float %i.mm, %i.ez
  %or.cond413 = and i1 %i.mq, %or.cond412         ; 3 uses
  %i.mr = fdiv float %i.lt, %i.ks
  %.2399 = select i1 %or.cond413, float %i.mr, float %.1398
  %.2395 = select i1 %or.cond413, float %.0671.ph, float %.1394
  %.2 = select i1 %or.cond413, float %i.mm, float %.1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.3400 = phi float [ %.2399, %bb.i ], [ %.1398, %bb.h ]
  %.3396 = phi float [ %.2395, %bb.i ], [ %.1394, %bb.h ]
  %.3 = phi float [ %.2, %bb.i ], [ %.1, %bb.h ]  ; 2 uses
  %i.ms = fcmp ult float %.3, %2
  br i1 %i.ms, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.mt, align 4, !tbaa !169
  store float %.3396, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %.3400, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.3, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %_ZN4pbrt9QuadraticEfffPfS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt13BilinearPatch27InteractionFromIntersectionEPKNS_17BilinearPatchMeshEiNS_6Point2IfEEfNS_7Vector3IfEE(ptr dead_on_unwind noalias writable sret(%"class.pbrt::SurfaceInteraction") align 8 %0, ptr noundef %1, i32 noundef %2, <2 x float> %3, float noundef %4, <2 x float> %5, float %6) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %7 = alloca %"class.pbrt::Transform", align 8   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264
  %i.c = shl nsw i32 %2, 2
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.d ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !265  ; 4 uses
  %i.h = load i32, ptr %i.e, align 4, !tbaa !40
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.i ; 2 uses
  %.sroa.01415.0.copyload = load <2 x float>, ptr %i.j, align 4 ; 5 uses
  %.sroa.91420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.91420.0.copyload = load float, ptr %.sroa.91420.0..sroa_idx, align 4 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !40
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.m ; 2 uses
  %.sroa.0773.0.copyload = load <2 x float>, ptr %i.n, align 4 ; 5 uses
  %.sroa.8778.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.8778.0.copyload = load float, ptr %.sroa.8778.0..sroa_idx, align 4 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !40
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.q ; 2 uses
  %.sroa.0767.0.copyload = load <2 x float>, ptr %i.r, align 4 ; 5 uses
  %.sroa.8772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.8772.0.copyload = load float, ptr %.sroa.8772.0..sroa_idx, align 4 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !40
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.u ; 2 uses
  %.sroa.01409.0.copyload = load <2 x float>, ptr %i.v, align 4 ; 5 uses
  %.sroa.91414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.91414.0.copyload = load float, ptr %.sroa.91414.0..sroa_idx, align 4 ; 3 uses
  %i.w = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %.sroa.01421.0.vec.extract = extractelement <2 x float> %3, i64 0 ; 3 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.01415.0.copyload, i64 0
  %.sroa.0.0.vec.extract.i34.i = extractelement <2 x float> %.sroa.0767.0.copyload, i64 0
  %.sroa.0.0.vec.extract.i.i825 = extractelement <2 x float> %.sroa.0773.0.copyload, i64 0
  %.sroa.0.0.vec.extract.i34.i827 = extractelement <2 x float> %.sroa.01409.0.copyload, i64 0
  %i.x = fsub <2 x float> splat (float 1.000000e+00), %3 ; 21 uses
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.z = extractelement <2 x float> %i.x, i64 0   ; 3 uses
  %i.aa = insertelement <2 x float> poison, float %.sroa.91420.0.copyload, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.x, %i.ab
  %i.ad = insertelement <2 x float> poison, float %.sroa.8778.0.copyload, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %.sroa.8772.0.copyload, i64 1
  %i.af = fmul <2 x float> %3, %i.ae
  %i.ag = fadd <2 x float> %i.ac, %i.af           ; 2 uses
  %shift = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.x, %shift
  %i.ah = insertelement <2 x float> poison, float %.sroa.8772.0.copyload, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %.sroa.8778.0.copyload, i64 1
  %i.aj = fmul <2 x float> %i.x, %i.ai
  %i.ak = insertelement <2 x float> poison, float %.sroa.91414.0.copyload, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x float> %3, %i.al
  %i.an = fadd <2 x float> %i.aj, %i.am           ; 2 uses
  %shift1495 = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1496 = fmul <2 x float> %3, %shift1495
  %foldExtExtBinop1498 = fadd <2 x float> %foldExtExtBinop, %foldExtExtBinop1496 ; 2 uses
  %i.ao = extractelement <2 x float> %foldExtExtBinop1498, i64 0 ; 2 uses
  %i.ap = fmul <2 x float> %i.y, %.sroa.01415.0.copyload
  %i.aq = shufflevector <2 x float> %.sroa.0767.0.copyload, <2 x float> %.sroa.0773.0.copyload, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ar = fmul <2 x float> %i.w, %i.aq
  %i.as = fadd <2 x float> %i.ap, %i.ar           ; 2 uses
  %foldExtExtBinop1500 = fmul <2 x float> %i.x, %i.as
  %i.at = fmul <2 x float> %i.x, %.sroa.01415.0.copyload
  %i.au = shufflevector <2 x float> %.sroa.0773.0.copyload, <2 x float> %.sroa.0767.0.copyload, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.av = fmul <2 x float> %3, %i.au
  %i.aw = fadd <2 x float> %i.at, %i.av           ; 2 uses
  %shift1502 = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1503 = fmul <2 x float> %i.x, %shift1502
  %i.ax = fmul <2 x float> %i.y, %i.au
  %i.ay = fmul <2 x float> %i.w, %.sroa.01409.0.copyload
  %i.az = fadd <2 x float> %i.ax, %i.ay           ; 2 uses
  %foldExtExtBinop1505 = fmul <2 x float> %3, %i.az
  %i.ba = fmul <2 x float> %i.x, %i.aq
  %i.bb = fmul <2 x float> %3, %.sroa.01409.0.copyload
  %i.bc = fadd <2 x float> %i.ba, %i.bb           ; 2 uses
  %shift1507 = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1508 = fmul <2 x float> %3, %shift1507
  %foldExtExtBinop1510 = fadd <2 x float> %foldExtExtBinop1500, %foldExtExtBinop1505 ; 2 uses
  %i.bd = extractelement <2 x float> %foldExtExtBinop1510, i64 0 ; 2 uses
  %foldExtExtBinop1512 = fadd <2 x float> %foldExtExtBinop1503, %foldExtExtBinop1508 ; 2 uses
  %i.be = extractelement <2 x float> %foldExtExtBinop1512, i64 0 ; 2 uses
  %i.bf = fsub <2 x float> %i.az, %i.as           ; 8 uses
  %i.bg = fsub <2 x float> %i.bc, %i.aw           ; 7 uses
  %i.bh = shufflevector <2 x float> %i.bf, <2 x float> %i.bg, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.bi = fsub <2 x float> %i.an, %i.ag           ; 7 uses
  %i.bj = shufflevector <2 x float> %i.bg, <2 x float> %i.bf, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !266 ; 5 uses
  %.not = icmp eq ptr %i.bl, null
  %i.bm = extractelement <2 x float> %i.bi, i64 0 ; 3 uses
  %i.bn = extractelement <2 x float> %i.bi, i64 1 ; 4 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.i
  %.sroa.0645.0.copyload = load <2 x float>, ptr %i.bo, align 4 ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.m
  %.sroa.0642.0.copyload = load <2 x float>, ptr %i.bp, align 4 ; 4 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.q
  %.sroa.0639.0.copyload = load <2 x float>, ptr %i.bq, align 4 ; 4 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.u
  %.sroa.0636.0.copyload = load <2 x float>, ptr %i.br, align 4 ; 2 uses
  %i.bs = shufflevector <2 x float> %.sroa.0645.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x float> %i.x, %i.bs
  %i.bu = shufflevector <2 x float> %.sroa.0642.0.copyload, <2 x float> %.sroa.0639.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.bv = fmul <2 x float> %3, %i.bu
  %i.bw = fadd <2 x float> %i.bt, %i.bv           ; 2 uses
  %i.bx = shufflevector <2 x float> %.sroa.0639.0.copyload, <2 x float> %.sroa.0642.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.by = fmul <2 x float> %i.x, %i.bx
  %i.bz = shufflevector <2 x float> %.sroa.0636.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = fmul <2 x float> %3, %i.bz
  %i.cb = fadd <2 x float> %i.by, %i.ca           ; 2 uses
  %i.cc = fsub <2 x float> %i.cb, %i.bw           ; 2 uses
  %i.cd = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cc)
  %i.ce = fcmp olt <2 x float> %i.cd, splat (float f0x322BCC77)
  %i.cf = fdiv <2 x float> splat (float 1.000000e+00), %i.cc
  %i.cg = select <2 x i1> %i.ce, <2 x float> zeroinitializer, <2 x float> %i.cf ; 8 uses
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ci = extractelement <2 x float> %i.cg, i64 0 ; 3 uses
  %i.cj = shufflevector <2 x float> %.sroa.0645.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ck = fmul <2 x float> %i.x, %i.cj
  %i.cl = shufflevector <2 x float> %.sroa.0642.0.copyload, <2 x float> %.sroa.0639.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.cm = fmul <2 x float> %3, %i.cl
  %i.cn = fadd <2 x float> %i.ck, %i.cm           ; 2 uses
  %i.co = shufflevector <2 x float> %.sroa.0639.0.copyload, <2 x float> %.sroa.0642.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.cp = fmul <2 x float> %i.x, %i.co
  %i.cq = shufflevector <2 x float> %.sroa.0636.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cr = fmul <2 x float> %3, %i.cq
  %i.cs = fadd <2 x float> %i.cp, %i.cr           ; 2 uses
  %i.ct = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = shufflevector <2 x float> %i.bw, <2 x float> %i.cn, <2 x i32> <i32 1, i32 3>
  %i.cv = fmul <2 x float> %i.ct, %i.cu
  %i.cw = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = shufflevector <2 x float> %i.cb, <2 x float> %i.cs, <2 x i32> <i32 1, i32 3>
  %i.cy = fmul <2 x float> %i.cw, %i.cx
  %i.cz = fadd <2 x float> %i.cv, %i.cy           ; 3 uses
  %i.da = fsub <2 x float> %i.cs, %i.cn           ; 2 uses
  %i.db = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.da)
  %i.dc = fcmp olt <2 x float> %i.db, splat (float f0x322BCC77)
  %i.dd = fdiv <2 x float> splat (float 1.000000e+00), %i.da
  %i.de = select <2 x i1> %i.dc, <2 x float> zeroinitializer, <2 x float> %i.dd ; 8 uses
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dg = extractelement <2 x float> %i.de, i64 0 ; 3 uses
  %i.dh = extractelement <2 x float> %i.de, i64 1 ; 4 uses
  %i.di = fmul float %i.bn, %i.dh
  %foldExtExtBinop1514 = fmul <2 x float> %i.bi, %i.de
  %i.dj = extractelement <2 x float> %foldExtExtBinop1514, i64 0
  %i.dk = fmul <2 x float> %i.bg, %i.de
  %i.dl = fmul <2 x float> %i.bf, %i.df
  %i.dm = fadd <2 x float> %i.dl, %i.dk           ; 6 uses
  %i.dn = fadd float %i.dj, %i.di                 ; 5 uses
  %i.do = extractelement <2 x float> %i.dm, i64 0
  %i.dp = extractelement <2 x float> %i.cg, i64 1 ; 3 uses
  %i.dq = fmul <2 x float> %i.bg, %i.cg
  %i.dr = fmul <2 x float> %i.bf, %i.ch
  %i.ds = fmul <2 x float> %i.bi, %i.cg           ; 2 uses
  %i.dt = fadd <2 x float> %i.dr, %i.dq           ; 5 uses
  %shift1516 = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1517 = fadd <2 x float> %i.ds, %shift1516 ; 2 uses
  %i.du = extractelement <2 x float> %foldExtExtBinop1517, i64 0 ; 3 uses
  %i.dv = extractelement <2 x float> %i.dt, i64 0 ; 2 uses
  %i.dw = fmul float %i.dv, %i.dn                 ; 2 uses
  %i.dx = fneg float %i.dw
  %i.dy = tail call noundef float @llvm.fma.f32(float %i.du, float %i.do, float %i.dx)
  %i.dz = fneg float %i.dv
  %i.ea = tail call noundef float @llvm.fma.f32(float %i.dz, float %i.dn, float %i.dw)
  %i.eb = fadd float %i.dy, %i.ea                 ; 2 uses
  %i.ec = shufflevector <2 x float> %i.dt, <2 x float> %foldExtExtBinop1517, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ed = fmul <2 x float> %i.ec, %i.dm           ; 2 uses
  %i.ee = fneg <2 x float> %i.ed
  %i.ef = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.eg = insertelement <2 x float> %i.ef, float %i.dn, i64 1
  %i.eh = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.dt, <2 x float> %i.eg, <2 x float> %i.ee)
  %i.ei = fneg <2 x float> %i.ec
  %i.ej = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ei, <2 x float> %i.dm, <2 x float> %i.ed)
  %i.ek = fadd <2 x float> %i.eh, %i.ej           ; 3 uses
  %i.el = extractelement <2 x float> %i.ek, i64 1
  %i.em = fcmp une float %i.el, 0.000000e+00
  %i.en = fcmp une float %i.eb, 0.000000e+00
  %or.cond.i = or i1 %i.em, %i.en
  %i.eo = extractelement <2 x float> %i.ek, i64 0
  %i.ep = fcmp une float %i.eo, 0.000000e+00
  %or.cond = or i1 %i.ep, %or.cond.i
  br i1 %or.cond, label %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread, label %bb.d

_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread: ; preds = %bb.b
  %i.eq = extractelement <2 x float> %i.bf, i64 0
  %foldExtExtBinop1519 = fmul <2 x float> %i.bf, %i.bi
  %i.er = extractelement <2 x float> %foldExtExtBinop1519, i64 0 ; 2 uses
  %i.es = fneg float %i.er
  %i.et = extractelement <2 x float> %i.bg, i64 0
  %i.eu = tail call noundef float @llvm.fma.f32(float %i.bn, float %i.et, float %i.es)
  %i.ev = fneg float %i.eq
  %i.ew = tail call noundef float @llvm.fma.f32(float %i.ev, float %i.bm, float %i.er)
  %i.ex = fadd float %i.eu, %i.ew
  %i.ey = fmul float %i.ex, %i.eb
  %i.ez = shufflevector <2 x float> %i.bg, <2 x float> %i.bi, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.fa = shufflevector <2 x float> %i.bg, <2 x float> %i.bf, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fb = fmul <2 x float> %i.ez, %i.fa           ; 2 uses
  %i.fc = fneg <2 x float> %i.fb
  %i.fd = shufflevector <2 x float> %i.bf, <2 x float> %i.bi, <2 x i32> <i32 1, i32 2>
  %i.fe = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.bh, <2 x float> %i.fd, <2 x float> %i.fc)
  %i.ff = fneg <2 x float> %i.ez
  %i.fg = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ff, <2 x float> %i.fa, <2 x float> %i.fb)
  %i.fh = fadd <2 x float> %i.fe, %i.fg
  %i.fi = fmul <2 x float> %i.fh, %i.ek           ; 2 uses
  %i.fj = extractelement <2 x float> %i.fi, i64 1
  %i.fk = fadd float %i.fj, %i.ey
  %i.fl = extractelement <2 x float> %i.fi, i64 0
  %i.fm = fadd float %i.fl, %i.fk
  %i.fn = fcmp olt float %i.fm, 0.000000e+00
  br i1 %i.fn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread
  %i.fo = fneg <2 x float> %i.dm
  %i.fp = fneg float %i.dn
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread, %bb.c, %bb.a
  %.sroa.01378.1 = phi <2 x float> [ %i.bj, %bb.a ], [ %i.bj, %bb.b ], [ %i.fo, %bb.c ], [ %i.dm, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread ] ; 11 uses
  %.sroa.16.1 = phi float [ %i.bm, %bb.a ], [ %i.bm, %bb.b ], [ %i.fp, %bb.c ], [ %i.dn, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread ] ; 11 uses
  %.sroa.01394.1 = phi <2 x float> [ %i.bh, %bb.a ], [ %i.bh, %bb.b ], [ %i.dt, %bb.c ], [ %i.dt, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread ] ; 12 uses
  %.sroa.161407.1 = phi float [ %i.bn, %bb.a ], [ %i.bn, %bb.b ], [ %i.du, %bb.c ], [ %i.du, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread ] ; 12 uses
  %.0819 = phi float [ 1.000000e+00, %bb.a ], [ %i.dg, %bb.b ], [ %i.dg, %bb.c ], [ %i.dg, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN4pbrt13BilinearPatch27InteractionFromIntersectionEPKNS_17BilinearPatchMeshEiNS_6Point2IfEEfNS_7Vector3IfEE:bb.a
  %i.ko = insertelement <2 x float> %i.kn, float %.sroa.8772.0.copyload, i64 1
  %i.kp = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ko)
  %i.kq = fadd float %i.ki, %i.km
  %i.kr = tail call noundef float @llvm.fabs.f32(float %.sroa.0.0.vec.extract.i.i825)
  %i.ks = shufflevector <2 x float> %.sroa.0773.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kt = insertelement <2 x float> %i.ks, float %.sroa.8778.0.copyload, i64 1
  %i.ku = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.kt)
  %i.kv = fadd float %i.kr, %i.kq
  %i.kw = tail call noundef float @llvm.fabs.f32(float %.sroa.0.0.vec.extract.i34.i827)
  %i.kx = shufflevector <2 x float> %.sroa.01409.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ky = insertelement <2 x float> %i.kx, float %.sroa.91414.0.copyload, i64 1
  %i.kz = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ky)
  %i.la = fadd float %i.kv, %i.kw
  %i.lb = fadd <2 x float> %i.kl, %i.kp
  %i.lc = fadd <2 x float> %i.ku, %i.lb
  %i.ld = fadd <2 x float> %i.lc, %i.kz           ; 2 uses
  %i.le = fmul float %i.la, 3.576280e-07          ; 3 uses
  %i.lf = extractelement <2 x float> %i.ld, i64 0
  %i.lg = fmul float %i.lf, 3.576280e-07          ; 3 uses
  %i.lh = extractelement <2 x float> %i.ld, i64 1
  %i.li = fmul float %i.lh, 3.576280e-07          ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !267 ; 2 uses
  %.not823 = icmp eq ptr %i.lk, null
  br i1 %.not823, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ll = sext i32 %2 to i64
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.lk, i64 %i.ll
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.lo = phi i32 [ %i.ln, %bb.e ], [ 0, %bb.d ]
  %i.lp = load i8, ptr %1, align 8, !tbaa !268, !range !53, !noundef !54
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !269, !range !53, !noundef !54
  %.not1475 = icmp eq i8 %i.lp, %i.lr
  %i.ls = fcmp oeq float %i.le, 0.000000e+00
  br i1 %i.ls, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.vec.insert.i.i1151 = shufflevector <2 x float> %foldExtExtBinop1510, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i

bb.h:                                             ; preds = %bb.f
  %i.lt = fsub float %i.bd, %i.le                 ; 3 uses
  %or.cond.i.i.i.i.i = fcmp oeq float %i.lt, -inf
  br i1 %or.cond.i.i.i.i.i, label %_ZN4pbrt12SubRoundDownEff.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.lu = fcmp oeq float %i.lt, 0.000000e+00
  %spec.store.select.i.i.i.i.i = select i1 %i.lu, float -0.000000e+00, float %i.lt ; 2 uses
  %i.lv = bitcast float %spec.store.select.i.i.i.i.i to i32
  %i.lw = fcmp ogt float %spec.store.select.i.i.i.i.i, 0.000000e+00
  %.0.v.i.i.i.i.i = select i1 %i.lw, i32 -1, i32 1
  %.0.i.i.i.i.i = add i32 %.0.v.i.i.i.i.i, %i.lv
  %i.lx = bitcast i32 %.0.i.i.i.i.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i.i

_ZN4pbrt12SubRoundDownEff.exit.i.i:               ; preds = %bb.i, %bb.h
  %.09.i.i.i.i.i = phi float [ %i.lx, %bb.i ], [ -inf, %bb.h ]
  %.sroa.0.0.vec.insert8.i.i = insertelement <2 x float> poison, float %.09.i.i.i.i.i, i64 0
  %i.ly = fadd float %i.le, %i.bd                 ; 3 uses
  %or.cond.i.i.i.i = fcmp oeq float %i.ly, +inf
  br i1 %or.cond.i.i.i.i, label %_ZN4pbrt10AddRoundUpEff.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i.i
  %i.lz = fcmp oeq float %i.ly, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.lz, float 0.000000e+00, float %i.ly ; 2 uses
  %i.ma = bitcast float %spec.store.select.i.i.i.i to i32
  %i.mb = fcmp ult float %spec.store.select.i.i.i.i, 0.000000e+00
  %.0.v.i.i.i.i = select i1 %i.mb, i32 -1, i32 1
  %.0.i.i.i.i = add i32 %.0.v.i.i.i.i, %i.ma
  %i.mc = bitcast i32 %.0.i.i.i.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i.i

_ZN4pbrt10AddRoundUpEff.exit.i.i:                 ; preds = %bb.j, %_ZN4pbrt12SubRoundDownEff.exit.i.i
  %.010.i.i.i.i = phi float [ %i.mc, %bb.j ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i.i ]
  %.sroa.0.4.vec.insert10.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i.i, float %.010.i.i.i.i, i64 1
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i

_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i:   ; preds = %_ZN4pbrt10AddRoundUpEff.exit.i.i, %bb.g
  %.sroa.0.0.i.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i.i1151, %bb.g ], [ %.sroa.0.4.vec.insert10.i.i, %_ZN4pbrt10AddRoundUpEff.exit.i.i ]
  %i.md = fcmp oeq float %i.lg, 0.000000e+00
  br i1 %i.md, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i
  %.sroa.0.0.vec.insert.i24.i = shufflevector <2 x float> %foldExtExtBinop1512, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i

bb.l:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i
  %i.me = fsub float %i.be, %i.lg                 ; 3 uses
  %or.cond.i.i.i.i9.i = fcmp oeq float %i.me, -inf
  br i1 %or.cond.i.i.i.i9.i, label %_ZN4pbrt12SubRoundDownEff.exit.i13.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.mf = fcmp oeq float %i.me, 0.000000e+00
  %spec.store.select.i.i.i.i10.i = select i1 %i.mf, float -0.000000e+00, float %i.me ; 2 uses
  %i.mg = bitcast float %spec.store.select.i.i.i.i10.i to i32
  %i.mh = fcmp ogt float %spec.store.select.i.i.i.i10.i, 0.000000e+00
  %.0.v.i.i.i.i11.i = select i1 %i.mh, i32 -1, i32 1
  %.0.i.i.i.i12.i = add i32 %.0.v.i.i.i.i11.i, %i.mg
  %i.mi = bitcast i32 %.0.i.i.i.i12.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i13.i

_ZN4pbrt12SubRoundDownEff.exit.i13.i:             ; preds = %bb.m, %bb.l
  %.09.i.i.i.i14.i = phi float [ %i.mi, %bb.m ], [ -inf, %bb.l ]
  %.sroa.0.0.vec.insert8.i15.i = insertelement <2 x float> poison, float %.09.i.i.i.i14.i, i64 0
  %i.mj = fadd float %i.lg, %i.be                 ; 3 uses
  %or.cond.i.i.i16.i = fcmp oeq float %i.mj, +inf
  br i1 %or.cond.i.i.i16.i, label %_ZN4pbrt10AddRoundUpEff.exit.i20.i, label %bb.n

bb.n:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i13.i
  %i.mk = fcmp oeq float %i.mj, 0.000000e+00
  %spec.store.select.i.i.i17.i = select i1 %i.mk, float 0.000000e+00, float %i.mj ; 2 uses
  %i.ml = bitcast float %spec.store.select.i.i.i17.i to i32
  %i.mm = fcmp ult float %spec.store.select.i.i.i17.i, 0.000000e+00
  %.0.v.i.i.i18.i = select i1 %i.mm, i32 -1, i32 1
  %.0.i.i.i19.i = add i32 %.0.v.i.i.i18.i, %i.ml
  %i.mn = bitcast i32 %.0.i.i.i19.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i20.i

_ZN4pbrt10AddRoundUpEff.exit.i20.i:               ; preds = %bb.n, %_ZN4pbrt12SubRoundDownEff.exit.i13.i
  %.010.i.i.i21.i = phi float [ %i.mn, %bb.n ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i13.i ]
  %.sroa.0.4.vec.insert10.i22.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i15.i, float %.010.i.i.i21.i, i64 1
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i

_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i: ; preds = %_ZN4pbrt10AddRoundUpEff.exit.i20.i, %bb.k
  %.sroa.0.0.i23.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i24.i, %bb.k ], [ %.sroa.0.4.vec.insert10.i22.i, %_ZN4pbrt10AddRoundUpEff.exit.i20.i ]
  %i.mo = fcmp oeq float %i.li, 0.000000e+00
  br i1 %i.mo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i
  %.sroa.0.0.vec.insert.i41.i = shufflevector <2 x float> %foldExtExtBinop1498, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit

bb.p:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i
  %i.mp = fsub float %i.ao, %i.li                 ; 3 uses
  %or.cond.i.i.i.i26.i = fcmp oeq float %i.mp, -inf
  br i1 %or.cond.i.i.i.i26.i, label %_ZN4pbrt12SubRoundDownEff.exit.i30.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.mq = fcmp oeq float %i.mp, 0.000000e+00
  %spec.store.select.i.i.i.i27.i = select i1 %i.mq, float -0.000000e+00, float %i.mp ; 2 uses
  %i.mr = bitcast float %spec.store.select.i.i.i.i27.i to i32
  %i.ms = fcmp ogt float %spec.store.select.i.i.i.i27.i, 0.000000e+00
  %.0.v.i.i.i.i28.i = select i1 %i.ms, i32 -1, i32 1
  %.0.i.i.i.i29.i = add i32 %.0.v.i.i.i.i28.i, %i.mr
  %i.mt = bitcast i32 %.0.i.i.i.i29.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i30.i

_ZN4pbrt12SubRoundDownEff.exit.i30.i:             ; preds = %bb.q, %bb.p
  %.09.i.i.i.i31.i = phi float [ %i.mt, %bb.q ], [ -inf, %bb.p ]
  %.sroa.0.0.vec.insert8.i32.i = insertelement <2 x float> poison, float %.09.i.i.i.i31.i, i64 0
  %i.mu = fadd float %i.li, %i.ao                 ; 3 uses
  %or.cond.i.i.i33.i = fcmp oeq float %i.mu, +inf
  br i1 %or.cond.i.i.i33.i, label %_ZN4pbrt10AddRoundUpEff.exit.i37.i, label %bb.r

bb.r:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i30.i
  %i.mv = fcmp oeq float %i.mu, 0.000000e+00
  %spec.store.select.i.i.i34.i = select i1 %i.mv, float 0.000000e+00, float %i.mu ; 2 uses
  %i.mw = bitcast float %spec.store.select.i.i.i34.i to i32
  %i.mx = fcmp ult float %spec.store.select.i.i.i34.i, 0.000000e+00
  %.0.v.i.i.i35.i = select i1 %i.mx, i32 -1, i32 1
  %.0.i.i.i36.i = add i32 %.0.v.i.i.i35.i, %i.mw
  %i.my = bitcast i32 %.0.i.i.i36.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i37.i

_ZN4pbrt10AddRoundUpEff.exit.i37.i:               ; preds = %bb.r, %_ZN4pbrt12SubRoundDownEff.exit.i30.i
  %.010.i.i.i38.i = phi float [ %i.my, %bb.r ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i30.i ]
  %.sroa.0.4.vec.insert10.i39.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i32.i, float %.010.i.i.i38.i, i64 1
  br label %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit

_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit: ; preds = %bb.o, %_ZN4pbrt10AddRoundUpEff.exit.i37.i
  %.sroa.0.0.i40.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i41.i, %bb.o ], [ %.sroa.0.4.vec.insert10.i39.i, %_ZN4pbrt10AddRoundUpEff.exit.i37.i ]
  store <2 x float> %.sroa.0.0.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.0.0.i23.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.51462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.0.0.i40.i, ptr %.sroa.51462.0..sroa_idx, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %4, ptr %i.mz, align 8, !tbaa !103
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.nb = fmul <2 x float> %5, %5                 ; 2 uses
  %shift1530 = shufflevector <2 x float> %i.nb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1531 = fadd <2 x float> %i.nb, %shift1530
  %i.nc = extractelement <2 x float> %foldExtExtBinop1531, i64 0
  %i.nd = fmul float %6, %6
  %i.ne = fadd float %i.nd, %i.nc
  %sqrt.i.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ne) ; 2 uses
  %i.nf = insertelement <2 x float> poison, float %sqrt.i.i.i.i.i, i64 0
  %i.ng = shufflevector <2 x float> %i.nf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nh = fdiv <2 x float> %5, %i.ng
  %i.ni = fdiv float %6, %sqrt.i.i.i.i.i
  store <2 x float> %i.nh, ptr %i.na, align 4
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ni, ptr %.sroa.2.0..sroa_idx.i.i.i, align 4
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  store <2 x float> %i.hr, ptr %i.nj, align 8
  %.sroa.214.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store float %i.hl, ptr %.sroa.214.0..sroa_idx.i.i.i, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 52
  store <2 x float> %.sroa.0660.0, ptr %i.nk, align 4
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nl, i8 0, i64 16, i1 false)
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> %.sroa.01394.1, ptr %i.nm, align 8
  %.sroa.439.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %.sroa.161407.1, ptr %.sroa.439.0..sroa_idx.i.i, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 92
  store <2 x float> %.sroa.01378.1, ptr %i.nn, align 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float %.sroa.16.1, ptr %.sroa.4.0..sroa_idx.i.i, align 4
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <2 x float> %.sroa.0.4.vec.insert.i1082, ptr %i.no, align 8
  %.sroa.51465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store float %i.jy, ptr %.sroa.51465.0..sroa_idx, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 116
  store <2 x float> %.sroa.0.4.vec.insert.i1096, ptr %i.np, align 4
  %.sroa.51470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  store float %i.kh, ptr %.sroa.51470.0..sroa_idx, align 4
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.nr, i8 0, i64 56, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.nq, ptr noundef nonnull align 8 dereferenceable(12) %i.nj, i64 12, i1 false)
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 4 uses
  store <2 x float> %.sroa.01394.1, ptr %i.ns, align 4
  %.sroa.439.0..sroa_idx40.i.i = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  store float %.sroa.161407.1, ptr %.sroa.439.0..sroa_idx40.i.i, align 4
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  store <2 x float> %.sroa.01378.1, ptr %i.nt, align 8
  %.sroa.4.0..sroa_idx33.i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store float %.sroa.16.1, ptr %.sroa.4.0..sroa_idx33.i.i, align 8
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i1082, ptr %i.nu, align 4
  %.sroa.51465.0..sroa_idx1466 = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  store float %i.jy, ptr %.sroa.51465.0..sroa_idx1466, align 4
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i1096, ptr %i.nv, align 8
  %.sroa.51470.0..sroa_idx1471 = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store float %i.kh, ptr %.sroa.51470.0..sroa_idx1471, align 8
  br i1 %.not1475, label %_ZN4pbrt18SurfaceInteractionC2ENS_8Point3fiENS_6Point2IfEENS_7Vector3IfEES5_S5_NS_7Normal3IfEES7_fbi.exit, label %bb.s

bb.s:                                             ; preds = %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit
  %i.nw = fneg float %i.hq
  store float %i.nw, ptr %i.nj, align 8, !tbaa !127
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ny = fneg <2 x float> %i.hk
  %i.nz = fneg float %i.hl
  store <2 x float> %i.ny, ptr %i.nx, align 4, !tbaa !17
  %i.oa = load <2 x float>, ptr %i.nq, align 8, !tbaa !17
  %i.ob = fneg <2 x float> %i.oa
  store <2 x float> %i.ob, ptr %i.nq, align 8, !tbaa !17
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.od = load float, ptr %i.oc, align 8, !tbaa !170
  %i.oe = fneg float %i.od
  store float %i.oe, ptr %i.oc, align 8, !tbaa !170
  br label %_ZN4pbrt18SurfaceInteractionC2ENS_8Point3fiENS_6Point2IfEENS_7Vector3IfEES5_S5_NS_7Normal3IfEES7_fbi.exit

_ZN4pbrt18SurfaceInteractionC2ENS_8Point3fiENS_6Point2IfEENS_7Vector3IfEES5_S5_NS_7Normal3IfEES7_fbi.exit: ; preds = %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit, %bb.s
  %.sroa.246.0.copyload = phi float [ %i.hl, %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit ], [ %i.nz, %bb.s ] ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %i.lo, ptr %i.of, align 4, !tbaa !270
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !271 ; 5 uses
  %.not824 = icmp eq ptr %i.oh, null
  br i1 %.not824, label %bb.x, label %bb.t

bb.t:                                             ; preds = %_ZN4pbrt18SurfaceInteractionC2ENS_8Point3fiENS_6Point2IfEENS_7Vector3IfEES5_S5_NS_7Normal3IfEES7_fbi.exit
  %8 = load i32, ptr %i.e, align 4, !tbaa !40
  %9 = sext i32 %8 to i64
  %i.oi = getelementptr inbounds [12 x i8], ptr %i.oh, i64 %9 ; 2 uses
  %.sroa.0217.0.copyload = load <2 x float>, ptr %i.oi, align 4 ; 3 uses
  %.sroa.6220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %.sroa.6220.0.copyload = load float, ptr %.sroa.6220.0..sroa_idx, align 4 ; 2 uses
  %10 = load i32, ptr %i.k, align 4, !tbaa !40
  %11 = sext i32 %10 to i64
  %i.oj = getelementptr inbounds [12 x i8], ptr %i.oh, i64 %11 ; 2 uses
  %.sroa.0213.0.copyload = load <2 x float>, ptr %i.oj, align 4 ; 3 uses
  %.sroa.6216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %.sroa.6216.0.copyload = load float, ptr %.sroa.6216.0..sroa_idx, align 4 ; 2 uses
  %12 = load i32, ptr %i.o, align 4, !tbaa !40
  %13 = sext i32 %12 to i64
  %i.ok = getelementptr inbounds [12 x i8], ptr %i.oh, i64 %13 ; 2 uses
  %.sroa.0209.0.copyload = load <2 x float>, ptr %i.ok, align 4 ; 3 uses
  %.sroa.6212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %.sroa.6212.0.copyload = load float, ptr %.sroa.6212.0..sroa_idx, align 4 ; 2 uses
  %14 = load i32, ptr %i.s, align 4, !tbaa !40
  %15 = sext i32 %14 to i64
  %i.ol = getelementptr inbounds [12 x i8], ptr %i.oh, i64 %15 ; 2 uses
  %.sroa.0206.0.copyload = load <2 x float>, ptr %i.ol, align 4 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4 ; 2 uses
  %i.om = extractelement <2 x float> %i.x, i64 1  ; 2 uses
  %i.on = fmul float %i.om, %.sroa.6220.0.copyload
  %i.oo = extractelement <2 x float> %3, i64 1    ; 2 uses
  %i.op = fmul float %i.oo, %.sroa.6212.0.copyload
  %i.oq = fadd float %i.on, %i.op                 ; 2 uses
  %i.or = fmul float %i.om, %.sroa.6216.0.copyload
  %i.os = fmul float %i.oo, %.sroa.6.0.copyload
  %i.ot = fadd float %i.or, %i.os                 ; 2 uses
  %i.ou = fmul float %i.z, %i.oq
  %i.ov = fmul float %.sroa.01421.0.vec.extract, %i.ot
  %i.ow = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ox = fmul <2 x float> %i.ow, %.sroa.0217.0.copyload
  %i.oy = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.oz = fmul <2 x float> %i.oy, %.sroa.0209.0.copyload
  %i.pa = fadd <2 x float> %i.ox, %i.oz           ; 3 uses
  %i.pb = fmul <2 x float> %i.ow, %.sroa.0213.0.copyload
  %i.pc = fmul <2 x float> %i.oy, %.sroa.0206.0.copyload
  %i.pd = fadd <2 x float> %i.pb, %i.pc           ; 3 uses
  %i.pe = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pf = fmul <2 x float> %i.pe, %i.pa
  %i.pg = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ph = fmul <2 x float> %i.pg, %i.pd
  %i.pi = fadd <2 x float> %i.pf, %i.ph           ; 3 uses
  %i.pj = fadd float %i.ou, %i.ov                 ; 3 uses
  %i.pk = fmul <2 x float> %i.pi, %i.pi           ; 2 uses
  %shift1533 = shufflevector <2 x float> %i.pk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1534 = fadd <2 x float> %i.pk, %shift1533
  %i.pl = extractelement <2 x float> %foldExtExtBinop1534, i64 0
  %i.pm = fmul float %i.pj, %i.pj
  %i.pn = fadd float %i.pm, %i.pl                 ; 2 uses
  %i.po = fcmp ogt float %i.pn, 0.000000e+00
  br i1 %i.po, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %sqrt.i.i1182 = tail call noundef float @llvm.sqrt.f32(float %i.pn) ; 2 uses
  %i.pp = insertelement <2 x float> poison, float %sqrt.i.i1182, i64 0
  %i.pq = shufflevector <2 x float> %i.pp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pr = fdiv <2 x float> %i.pi, %i.pq           ; 4 uses
  %i.ps = fdiv float %i.pj, %sqrt.i.i1182         ; 4 uses
  %i.pt = fsub float %i.ot, %i.oq                 ; 2 uses
  %foldExtExtBinop1536 = fmul <2 x float> %i.x, %.sroa.0209.0.copyload
  %shift1538 = shufflevector <2 x float> %.sroa.0209.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1539 = fmul <2 x float> %i.x, %shift1538
  %i.pu = fmul float %i.z, %.sroa.6212.0.copyload
  %foldExtExtBinop1541 = fmul <2 x float> %3, %.sroa.0206.0.copyload
  %shift1543 = shufflevector <2 x float> %.sroa.0206.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1544 = fmul <2 x float> %3, %shift1543
  %i.pv = fmul float %.sroa.01421.0.vec.extract, %.sroa.6.0.copyload
  %foldExtExtBinop1546 = fadd <2 x float> %foldExtExtBinop1536, %foldExtExtBinop1541
  %foldExtExtBinop1548 = fadd <2 x float> %foldExtExtBinop1539, %foldExtExtBinop1544
  %i.pw = fadd float %i.pu, %i.pv
  %foldExtExtBinop1550 = fmul <2 x float> %i.x, %.sroa.0217.0.copyload
  %shift1552 = shufflevector <2 x float> %.sroa.0217.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1553 = fmul <2 x float> %i.x, %shift1552
  %i.px = fmul float %i.z, %.sroa.6220.0.copyload
  %foldExtExtBinop1555 = fmul <2 x float> %3, %.sroa.0213.0.copyload
  %shift1557 = shufflevector <2 x float> %.sroa.0213.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1558 = fmul <2 x float> %3, %shift1557
  %i.py = fmul float %.sroa.01421.0.vec.extract, %.sroa.6216.0.copyload
  %foldExtExtBinop1560 = fadd <2 x float> %foldExtExtBinop1550, %foldExtExtBinop1555
  %foldExtExtBinop1562 = fadd <2 x float> %foldExtExtBinop1553, %foldExtExtBinop1558
  %i.pz = fadd float %i.px, %i.py
  %i.qa = fsub float %i.pw, %i.pz                 ; 2 uses
  %i.qb = fmul float %.0, %i.pt
  %i.qc = fmul float %.0818, %i.qa
  %i.qd = fadd float %i.qc, %i.qb
  %i.qe = fmul float %.0817, %i.pt
  %i.qf = fmul float %.0819, %i.qa
  %i.qg = shufflevector <2 x float> %i.pd, <2 x float> %foldExtExtBinop1546, <2 x i32> <i32 1, i32 2>
  %i.qh = shufflevector <2 x float> %i.pa, <2 x float> %foldExtExtBinop1560, <2 x i32> <i32 1, i32 2>
  %i.qi = fsub <2 x float> %i.qg, %i.qh           ; 2 uses
  %i.qj = shufflevector <2 x float> %foldExtExtBinop1548, <2 x float> %i.pd, <2 x i32> <i32 0, i32 2>
  %i.qk = shufflevector <2 x float> %foldExtExtBinop1562, <2 x float> %i.pa, <2 x i32> <i32 0, i32 2>
  %i.ql = fsub <2 x float> %i.qj, %i.qk           ; 2 uses
  %i.qm = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qn = fmul <2 x float> %i.qm, %i.qi
  %i.qo = fmul <2 x float> %i.fr, %i.ql
  %i.qp = fadd <2 x float> %i.qo, %i.qn
  %i.qq = shufflevector <2 x float> %i.qp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qs = fmul <2 x float> %i.qr, %i.qi
  %i.qt = fmul <2 x float> %i.fq, %i.ql
  %i.qu = fadd <2 x float> %i.qt, %i.qs
  %i.qv = fadd float %i.qf, %i.qe
  %i.qw = shufflevector <2 x float> %i.qu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %.sroa.045.0.copyload = load <2 x float>, ptr %i.nj, align 8 ; 7 uses
  %.sroa.01.0.vec.extract.i.i.i1259 = extractelement <2 x float> %.sroa.045.0.copyload, i64 0
  %foldExtExtBinop1564 = fmul <2 x float> %.sroa.045.0.copyload, %.sroa.045.0.copyload
  %i.qx = extractelement <2 x float> %foldExtExtBinop1564, i64 0
  %.sroa.01.4.vec.extract.i.i.i1260 = extractelement <2 x float> %.sroa.045.0.copyload, i64 1 ; 3 uses
  %i.qy = fmul float %.sroa.01.4.vec.extract.i.i.i1260, %.sroa.01.4.vec.extract.i.i.i1260
  %i.qz = fadd float %i.qx, %i.qy
  %i.ra = fmul float %.sroa.246.0.copyload, %.sroa.246.0.copyload
  %i.rb = fadd float %i.ra, %i.qz
  %sqrt.i.i1261 = tail call noundef float @llvm.sqrt.f32(float %i.rb) ; 2 uses
  %i.rc = insertelement <2 x float> poison, float %sqrt.i.i1261, i64 0
  %i.rd = shufflevector <2 x float> %i.rc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.re = fdiv <2 x float> %.sroa.045.0.copyload, %i.rd
  %i.rf = fdiv float %.sroa.246.0.copyload, %sqrt.i.i1261
  call void @_ZN4pbrt12RotateFromToENS_7Vector3IfEES1_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %7, <2 x float> %i.re, float %i.rf, <2 x float> %i.pr, float %i.ps)
  %i.rg = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.rh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ri = load <2 x float>, ptr %7, align 8, !tbaa !17 ; 3 uses
  %i.rj = load <2 x float>, ptr %i.rh, align 8, !tbaa !17 ; 3 uses
  %i.rk = shufflevector <2 x float> %.sroa.01394.1, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rl = shufflevector <2 x float> %i.rj, <2 x float> %i.ri, <2 x i32> <i32 3, i32 0>
  %i.rm = fmul <2 x float> %i.rk, %i.rl
  %i.rn = shufflevector <2 x float> %i.ri, <2 x float> %i.rj, <2 x i32> <i32 0, i32 3>
  %i.ro = fmul <2 x float> %.sroa.01394.1, %i.rn
  %i.rp = fadd <2 x float> %i.rm, %i.ro
  %i.rq = insertelement <2 x float> poison, float %.sroa.161407.1, i64 0
  %i.rr = shufflevector <2 x float> %i.rq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rs = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.rt = load float, ptr %i.rs, align 8, !tbaa !17 ; 2 uses
  %i.ru = fmul float %.sroa.04.0.vec.extract.i997, %i.rt
  %i.rv = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !17 ; 2 uses
  %i.rx = fmul float %.sroa.04.4.vec.extract.i999, %i.rw
  %i.ry = fadd float %i.ru, %i.rx
  %i.rz = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.sa = load float, ptr %i.rz, align 8, !tbaa !17 ; 2 uses
  %i.sb = fmul float %.sroa.161407.1, %i.sa
  %i.sc = fadd float %i.ry, %i.sb
  %i.sd = load <6 x float>, ptr %i.rg, align 4, !tbaa !17 ; 3 uses
  %i.se = shufflevector <6 x float> %i.sd, <6 x float> poison, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.sf = fmul <2 x float> %i.rr, %i.se
  %i.sg = fadd <2 x float> %i.rp, %i.sf           ; 2 uses
  %i.sh = shufflevector <2 x float> %i.rj, <2 x float> poison, <6 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.si = shufflevector <2 x float> %.sroa.01378.1, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sj = shufflevector <6 x float> %i.sh, <6 x float> %i.sd, <2 x i32> <i32 6, i32 0>
  %i.sk = fmul <2 x float> %i.si, %i.sj
  %i.sl = shufflevector <6 x float> %i.sd, <6 x float> poison, <2 x i32> <i32 poison, i32 4>
  %i.sm = shufflevector <2 x float> %i.ri, <2 x float> %i.sl, <2 x i32> <i32 0, i32 3>
  %i.sn = fmul <2 x float> %.sroa.01378.1, %i.sm
  %i.so = fadd <2 x float> %i.sk, %i.sn
  %i.sp = insertelement <2 x float> poison, float %.sroa.16.1, i64 0
  %i.sq = shufflevector <2 x float> %i.sp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sr = fmul <2 x float> %i.sq, %i.se
  %i.ss = fadd <2 x float> %i.so, %i.sr           ; 2 uses
  %i.st = fmul float %.sroa.01.0.vec.extract.i1002, %i.rt
  %i.su = fmul float %.sroa.01.4.vec.extract.i1004, %i.rw
  %i.sv = fadd float %i.st, %i.su
  %i.sw = fmul float %.sroa.16.1, %i.sa
  %i.sx = fadd float %i.sv, %i.sw
  store <2 x float> %i.pr, ptr %i.nq, align 8
  %.sroa.247.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float %i.ps, ptr %.sroa.247.0..sroa_idx.i, align 8
  %.sroa.229.0.copyload.i = load float, ptr %.sroa.214.0..sroa_idx.i.i.i, align 8 ; 4 uses
  %i.sy = fmul float %i.ps, %.sroa.229.0.copyload.i ; 2 uses
  %i.sz = fneg float %i.sy
  %i.ta = call noundef float @llvm.fma.f32(float %.sroa.229.0.copyload.i, float %i.ps, float %i.sz)
  %i.tb = extractelement <2 x float> %i.pr, i64 1
  %i.tc = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i.i1260, float %i.tb, float %i.sy)
  %i.td = fadd float %i.tc, %i.ta
  %i.te = extractelement <2 x float> %i.pr, i64 0
  %i.tf = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i.i1259, float %i.te, float %i.td)
  %i.tg = fcmp olt float %i.tf, 0.000000e+00      ; 2 uses
  %i.th = fneg <2 x float> %.sroa.045.0.copyload
  %i.ti = fneg float %.sroa.229.0.copyload.i
  %.sroa.0.4.vec.insert.i.pn.i.i = select i1 %i.tg, <2 x float> %i.th, <2 x float> %.sroa.045.0.copyload
  %.pn.i.i = select i1 %i.tg, float %i.ti, float %.sroa.229.0.copyload.i
  store <2 x float> %.sroa.0.4.vec.insert.i.pn.i.i, ptr %i.nj, align 8
  store float %.pn.i.i, ptr %.sroa.214.0..sroa_idx.i.i.i, align 8
  store <2 x float> %i.sg, ptr %i.ns, align 4
  store <2 x float> %i.ss, ptr %i.nt, align 8
  store <2 x float> %i.qq, ptr %i.nu, align 4
  store float %i.qd, ptr %.sroa.51465.0..sroa_idx1466, align 4
  store <2 x float> %i.qw, ptr %i.nv, align 8
  store float %i.qv, ptr %.sroa.51470.0..sroa_idx1471, align 8
  %.promoted = load <2 x float>, ptr %i.nt, align 8
  %.promoted1575 = load <2 x float>, ptr %i.ns, align 1
  br label %bb.v

bb.v:                                             ; preds = %.critedge.i, %bb.u
  %i.tj = phi <2 x float> [ %i.ua, %.critedge.i ], [ %.promoted1575, %bb.u ]
  %i.tk = phi <2 x float> [ %i.uc, %.critedge.i ], [ %.promoted, %bb.u ] ; 4 uses
  %i.tl = phi float [ %i.ud, %.critedge.i ], [ %i.sx, %bb.u ] ; 4 uses
  %i.tm = phi float [ %i.ub, %.critedge.i ], [ %i.sc, %bb.u ] ; 4 uses
  %i.tn = phi <2 x float> [ %i.ua, %.critedge.i ], [ %i.sg, %bb.u ] ; 3 uses
  %i.to = phi <2 x float> [ %i.uc, %.critedge.i ], [ %i.ss, %bb.u ]
  %i.tp = fmul <2 x float> %i.tn, %i.tn           ; 2 uses
  %shift1566 = shufflevector <2 x float> %i.tp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1567 = fadd <2 x float> %i.tp, %shift1566
  %i.tq = extractelement <2 x float> %foldExtExtBinop1567, i64 0
  %i.tr = fmul float %i.tm, %i.tm
  %i.ts = fadd float %i.tr, %i.tq
  %i.tt = fcmp ogt float %i.ts, 1.000000e+16
  br i1 %i.tt, label %.critedge.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.tu = fmul <2 x float> %i.tk, %i.tk           ; 2 uses
  %shift1569 = shufflevector <2 x float> %i.tu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1570 = fadd <2 x float> %i.tu, %shift1569
  %i.tv = extractelement <2 x float> %foldExtExtBinop1570, i64 0
  %i.tw = fmul float %i.tl, %i.tl
  %i.tx = fadd float %i.tw, %i.tv
  %i.ty = fcmp ogt float %i.tx, 1.000000e+16
  br i1 %i.ty, label %.critedge.i, label %_ZN4pbrt18SurfaceInteraction18SetShadingGeometryENS_7Normal3IfEENS_7Vector3IfEES4_S2_S2_b.exit

.critedge.i:                                      ; preds = %bb.w, %bb.v
  %i.tz = phi <2 x float> [ %i.to, %bb.v ], [ %i.tk, %bb.w ]
  %i.ua = fdiv <2 x float> %i.tn, splat (float 1.000000e+08) ; 2 uses
  %i.ub = fdiv float %i.tm, 1.000000e+08
  %i.uc = fdiv <2 x float> %i.tz, splat (float 1.000000e+08) ; 2 uses
  %i.ud = fdiv float %i.tl, 1.000000e+08
  br label %bb.v, !llvm.loop !261

_ZN4pbrt18SurfaceInteraction18SetShadingGeometryENS_7Normal3IfEENS_7Vector3IfEES4_S2_S2_b.exit: ; preds = %bb.w
  store <2 x float> %i.tk, ptr %i.nt, align 8
  store <2 x float> %i.tj, ptr %i.ns, align 1
  store float %i.tm, ptr %.sroa.439.0..sroa_idx40.i.i, align 4
  store float %i.tl, ptr %.sroa.4.0..sroa_idx33.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %_ZN4pbrt18SurfaceInteraction18SetShadingGeometryENS_7Normal3IfEENS_7Vector3IfEES4_S2_S2_b.exit, %_ZN4pbrt18SurfaceInteractionC2ENS_8Point3fiENS_6Point2IfEENS_7Vector3IfEES5_S5_NS_7Normal3IfEES7_fbi.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN25Triangle_Reintersect_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN24Triangle_SolidAngle_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN27FullSphere_Reintersect_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN24ParialSphere_Normal_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN30PartialSphere_Reintersect_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN25Cylinder_Reintersect_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22Triangle_BadCases_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN25BilinearPatch_Offset_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZN4pbrt3$_08__invokeERNS_16StatsAccumulatorE"(ptr noundef nonnull align 8 dereferenceable(8) %0) #12 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL20redundantBufferBytesE) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !47
  tail call void @_ZN4pbrt16StatsAccumulator19ReportMemoryCounterEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.46, i64 noundef %i.b)
  store i64 0, ptr %i.a, align 8, !tbaa !47
  ret void
}

declare void @_ZN4pbrt16StatsAccumulator19ReportMemoryCounterEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #13

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZN4pbrt3$_18__invokeERNS_16StatsAccumulatorE"(ptr noundef nonnull align 8 dereferenceable(8) %0) #12 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL16nBufferCacheHitsE) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL19nBufferCacheLookupsE) ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !47
  tail call void @_ZN4pbrt16StatsAccumulator16ReportPercentageEPKcll(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.47, i64 noundef %i.b, i64 noundef %i.d)
  store i64 0, ptr %i.a, align 8, !tbaa !47
  store i64 0, ptr %i.c, align 8, !tbaa !47
  ret void
}

declare void @_ZN4pbrt16StatsAccumulator16ReportPercentageEPKcll(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #29 ; 0 uses
  tail call void @_ZSt9terminatev() #32
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #15

declare noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI25Triangle_Reintersect_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI25Triangle_Reintersect_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV25Triangle_Reintersect_Test, i64 16), ptr %i.a, align 8, !tbaa !64
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
end_hunk_1
