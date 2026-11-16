Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/film?download=true
inline.NumInlined: 4433
inline.NumDeleted: 1046
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN4pbrt11GBufferFilm9AddSampleENS_6Point2IiEENS_15SampledSpectrumERKNS_18SampledWavelengthsEPKNS_14VisibleSurfaceEf:.lr.ph.i.i
  %shift415 = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop416 = fadd <2 x float> %i.jn, %shift415
  %i.jo = extractelement <2 x float> %foldExtExtBinop416, i64 0
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.jq = load float, ptr %i.jp, align 8, !tbaa !55
  %i.jr = fmul float %.sroa.2111.0.copyload, %i.jq
  %i.js = fadd float %i.jo, %i.jr
  %i.jt = fmul float %6, %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %i.by, i64 76 ; 2 uses
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !414
  %i.jw = fadd float %i.jv, %i.jt
  store float %i.jw, ptr %i.ju, align 4, !tbaa !414
  %i.jx = getelementptr inbounds nuw i8, ptr %5, i64 60
  %.sroa.0100.0.copyload393 = load <2 x float>, ptr %i.jx, align 4
  %.sroa.2101.0..sroa_idx394 = getelementptr inbounds nuw i8, ptr %5, i64 68
  %.sroa.2101.0.copyload395 = load float, ptr %.sroa.2101.0..sroa_idx394, align 4
  br label %bb.g

_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Vector3IfEEf.exit: ; preds = %_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Normal3IfEEf.exit281
  %i.jy = load float, ptr %i.ea, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @_ZNK4pbrt17AnimatedTransform11InterpolateEf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %8, ptr noundef nonnull align 4 dereferenceable(696) %i.dz, float noundef %i.jy)
  %i.jz = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.ka = load <2 x float>, ptr %i.jz, align 4, !tbaa !55
  %i.kb = fmul <2 x float> %.sroa.0110.0.copyload, %i.ka ; 2 uses
  %shift418 = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop419 = fadd <2 x float> %i.kb, %shift418
  %i.kc = extractelement <2 x float> %foldExtExtBinop419, i64 0
  %i.kd = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !55
  %i.kf = fmul float %.sroa.2111.0.copyload, %i.ke
  %i.kg = fadd float %i.kc, %i.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %.pre390 = load i8, ptr %i.eo, align 8, !tbaa !164, !range !46
  %i.kh = trunc nuw i8 %.pre390 to i1
  %i.ki = fmul float %6, %i.kg
  %i.kj = getelementptr inbounds nuw i8, ptr %i.by, i64 76 ; 2 uses
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !414
  %i.kl = fadd float %i.kk, %i.ki
  store float %i.kl, ptr %i.kj, align 4, !tbaa !414
  %i.km = getelementptr inbounds nuw i8, ptr %5, i64 60
  %.sroa.0100.0.copyload = load <2 x float>, ptr %i.km, align 4 ; 2 uses
  %.sroa.2101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 68
  %.sroa.2101.0.copyload = load float, ptr %.sroa.2101.0..sroa_idx, align 4 ; 2 uses
  br i1 %i.kh, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Vector3IfEEf.exit.thread, %_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Vector3IfEEf.exit
  %.sroa.2101.0.copyload397 = phi float [ %.sroa.2101.0.copyload395, %_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Vector3IfEEf.exit.thread ], [ %.sroa.2101.0.copyload, %_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Vector3IfEEf.exit ]
  %.sroa.0100.0.copyload396 = phi <2 x float> [ %.sroa.0100.0.copyload393, %_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Vector3IfEEf.exit.thread ], [ %.sroa.0100.0.copyload, %_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Vector3IfEEf.exit ]
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ko = load <2 x float>, ptr %i.kn, align 8, !tbaa !55
  %i.kp = fmul <2 x float> %.sroa.0100.0.copyload396, %i.ko ; 2 uses
  %shift421 = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop422 = fadd <2 x float> %i.kp, %shift421
  %i.kq = extractelement <2 x float> %foldExtExtBinop422, i64 0
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ks = load float, ptr %i.kr, align 8, !tbaa !55
  %i.kt = fmul float %.sroa.2101.0.copyload397, %i.ks
  %i.ku = fadd float %i.kq, %i.kt
  br label %_ZN4pbrt3RGBixEi.exit348.2

bb.h:                                             ; preds = %_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Vector3IfEEf.exit
  %i.kv = load float, ptr %i.ea, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @_ZNK4pbrt17AnimatedTransform11InterpolateEf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %7, ptr noundef nonnull align 4 dereferenceable(696) %i.dz, float noundef %i.kv)
  %i.kw = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.kx = load <2 x float>, ptr %i.kw, align 4, !tbaa !55
  %i.ky = fmul <2 x float> %.sroa.0100.0.copyload, %i.kx ; 2 uses
  %shift424 = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop425 = fadd <2 x float> %i.ky, %shift424
  %i.kz = extractelement <2 x float> %foldExtExtBinop425, i64 0
  %i.la = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.lb = load float, ptr %i.la, align 4, !tbaa !55
  %i.lc = fmul float %.sroa.2101.0.copyload, %i.lb
  %i.ld = fadd float %i.kz, %i.lc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZN4pbrt3RGBixEi.exit348.2

bb.i:                                             ; preds = %_ZN4pbrt3RGBixEi.exit.2
  %i.le = tail call { <2 x float>, float } @_ZNK4pbrt17AnimatedTransformclENS_6Point3IfEEf(ptr noundef nonnull align 4 dereferenceable(696) %i.dz, <2 x float> %.sroa.0172.0.copyload, float %.sroa.2173.0.copyload, float noundef %i.eb) ; 2 uses
  %.fca.0.extract80 = extractvalue { <2 x float>, float } %i.le, 0
  %.fca.1.extract81 = extractvalue { <2 x float>, float } %i.le, 1
  %i.lf = fmul float %6, %.fca.1.extract81
  %i.lg = insertelement <2 x float> poison, float %6, i64 0
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.li = fmul <2 x float> %i.lh, %.fca.0.extract80
  %i.lj = load <2 x float>, ptr %i.ec, align 8, !tbaa !55
  %i.lk = fadd <2 x float> %i.lj, %i.li
  store <2 x float> %i.lk, ptr %i.ec, align 8, !tbaa !55
  %i.ll = load float, ptr %i.ed, align 8, !tbaa !163
  %i.lm = fadd float %i.lf, %i.ll
  store float %i.lm, ptr %i.ed, align 8, !tbaa !163
  %.sroa.064.0.copyload = load <2 x float>, ptr %i.ee, align 4
  %.sroa.265.0.copyload = load float, ptr %.sroa.2151.0..sroa_idx, align 4
  %i.ln = load float, ptr %i.ea, align 4, !tbaa !71
  %i.lo = tail call { <2 x float>, float } @_ZNK4pbrt17AnimatedTransformclENS_7Normal3IfEEf(ptr noundef nonnull align 4 dereferenceable(696) %i.dz, <2 x float> %.sroa.064.0.copyload, float %.sroa.265.0.copyload, float noundef %i.ln) ; 2 uses
  %.fca.0.extract58 = extractvalue { <2 x float>, float } %i.lo, 0
  %.fca.1.extract59 = extractvalue { <2 x float>, float } %i.lo, 1
  %i.lp = fmul float %6, %.fca.1.extract59
  %i.lq = getelementptr inbounds nuw i8, ptr %i.by, i64 84 ; 2 uses
  %i.lr = fmul <2 x float> %i.lh, %.fca.0.extract58
  %i.ls = load <2 x float>, ptr %i.lq, align 4, !tbaa !55
  %i.lt = fadd <2 x float> %i.ls, %i.lr
  store <2 x float> %i.lt, ptr %i.lq, align 4, !tbaa !55
  %i.lu = getelementptr inbounds nuw i8, ptr %i.by, i64 92 ; 2 uses
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !165
  %i.lw = fadd float %i.lp, %i.lv
  store float %i.lw, ptr %i.lu, align 4, !tbaa !165
  %i.lx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.043.0.copyload = load <2 x float>, ptr %i.lx, align 4
  %.sroa.244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.244.0.copyload = load float, ptr %.sroa.244.0..sroa_idx, align 4
  %i.ly = load float, ptr %i.ea, align 4, !tbaa !71
  %i.lz = tail call { <2 x float>, float } @_ZNK4pbrt17AnimatedTransformclENS_7Normal3IfEEf(ptr noundef nonnull align 4 dereferenceable(696) %i.dz, <2 x float> %.sroa.043.0.copyload, float %.sroa.244.0.copyload, float noundef %i.ly) ; 2 uses
  %.fca.0.extract37 = extractvalue { <2 x float>, float } %i.lz, 0
  %.fca.1.extract38 = extractvalue { <2 x float>, float } %i.lz, 1
  %i.ma = fmul float %6, %.fca.1.extract38
  %i.mb = getelementptr inbounds nuw i8, ptr %i.by, i64 96 ; 2 uses
  %i.mc = fmul <2 x float> %i.lh, %.fca.0.extract37
  %i.md = load <2 x float>, ptr %i.mb, align 8, !tbaa !55
  %i.me = fadd <2 x float> %i.md, %i.mc
  store <2 x float> %i.me, ptr %i.mb, align 8, !tbaa !55
  %i.mf = getelementptr inbounds nuw i8, ptr %i.by, i64 104 ; 2 uses
  %i.mg = load float, ptr %i.mf, align 8, !tbaa !165
  %i.mh = fadd float %i.ma, %i.mg
  store float %i.mh, ptr %i.mf, align 8, !tbaa !165
  %i.mi = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.025.0.copyload = load <2 x float>, ptr %i.mi, align 4
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.226.0.copyload = load float, ptr %.sroa.226.0..sroa_idx, align 4
  %i.mj = load float, ptr %i.ea, align 4, !tbaa !71
  %i.mk = tail call { <2 x float>, float } @_ZNK4pbrt17AnimatedTransformclENS_7Vector3IfEEf(ptr noundef nonnull align 4 dereferenceable(696) %i.dz, <2 x float> %.sroa.025.0.copyload, float %.sroa.226.0.copyload, float noundef %i.mj)
  %.fca.1.extract20 = extractvalue { <2 x float>, float } %i.mk, 1
  %i.ml = fmul float %6, %.fca.1.extract20
  %i.mm = getelementptr inbounds nuw i8, ptr %i.by, i64 76 ; 2 uses
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !414
  %i.mo = fadd float %i.mn, %i.ml
  store float %i.mo, ptr %i.mm, align 4, !tbaa !414
  %i.mp = getelementptr inbounds nuw i8, ptr %5, i64 60
  %.sroa.016.0.copyload = load <2 x float>, ptr %i.mp, align 4
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 68
  %.sroa.217.0.copyload = load float, ptr %.sroa.217.0..sroa_idx, align 4
  %i.mq = load float, ptr %i.ea, align 4, !tbaa !71
  %i.mr = tail call { <2 x float>, float } @_ZNK4pbrt17AnimatedTransformclENS_7Vector3IfEEf(ptr noundef nonnull align 4 dereferenceable(696) %i.dz, <2 x float> %.sroa.016.0.copyload, float %.sroa.217.0.copyload, float noundef %i.mq)
  %.fca.1.extract11 = extractvalue { <2 x float>, float } %i.mr, 1
  br label %_ZN4pbrt3RGBixEi.exit348.2

_ZN4pbrt3RGBixEi.exit348.2:                       ; preds = %bb.h, %bb.g, %bb.i
  %.pn29.i307.sink = phi float [ %.fca.1.extract11, %bb.i ], [ %i.ld, %bb.h ], [ %i.ku, %bb.g ]
  %i.ms = fmul float %6, %.pn29.i307.sink
  %i.mt = getelementptr inbounds nuw i8, ptr %i.by, i64 80 ; 2 uses
  %i.mu = load float, ptr %i.mt, align 8, !tbaa !415
  %i.mv = fadd float %i.mu, %i.ms
  store float %i.mv, ptr %i.mt, align 8, !tbaa !415
  %i.mw = getelementptr inbounds nuw i8, ptr %5, i64 36
  %.sroa.08.0.copyload = load <2 x float>, ptr %i.mw, align 4, !tbaa !55
  %i.mx = getelementptr inbounds nuw i8, ptr %i.by, i64 108 ; 2 uses
  %i.my = insertelement <2 x float> poison, float %6, i64 0
  %i.mz = shufflevector <2 x float> %i.my, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.na = fmul <2 x float> %i.mz, %.sroa.08.0.copyload
  %i.nb = load <2 x float>, ptr %i.mx, align 4, !tbaa !55
  %i.nc = fadd <2 x float> %i.nb, %i.na
  store <2 x float> %i.nc, ptr %i.mx, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.nd = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !166
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 32
  %i.nh = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ng, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.ni = extractvalue { <2 x float>, <2 x float> } %i.nh, 0
  %i.nj = extractvalue { <2 x float>, <2 x float> } %i.nh, 1
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.nd, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !32
  %i.nk = fmul <2 x float> %.sroa.0.0.copyload4.i, %i.ni
  %i.nl = fmul <2 x float> %i.nj, %.sroa.8.0.copyload.i
  store <2 x float> %i.nk, ptr %11, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %i.nl, ptr %i.nm, align 8
  %i.nn = load ptr, ptr %i.ne, align 8, !tbaa !166
  %i.no = call { <2 x float>, float } @_ZNK4pbrt15SampledSpectrum5ToRGBERKNS_18SampledWavelengthsERKNS_13RGBColorSpaceE(ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(152) %i.nn) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.no, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.no, 1
  %i.np = getelementptr inbounds nuw i8, ptr %i.by, i64 120 ; 2 uses
  %i.nq = fmul <2 x float> %i.mz, %.fca.0.extract
  %i.nr = fpext <2 x float> %i.nq to <2 x double>
  %i.ns = load <2 x double>, ptr %i.np, align 8, !tbaa !167
  %i.nt = fadd <2 x double> %i.ns, %i.nr
  store <2 x double> %i.nt, ptr %i.np, align 8, !tbaa !167
  %i.nu = fmul float %6, %.fca.1.extract
  %i.nv = fpext float %i.nu to double
  %i.nw = getelementptr inbounds nuw i8, ptr %i.by, i64 136 ; 2 uses
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !167
  %i.ny = fadd double %i.nx, %i.nv
  store double %i.ny, ptr %i.nw, align 8, !tbaa !167
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %_ZN4pbrt3RGBixEi.exit350.2

_ZN4pbrt3RGBixEi.exit350.2:                       ; preds = %.lr.ph.i.i, %bb.a, %_ZN4pbrt3RGBixEi.exit348.2
  %i.nz = insertelement <4 x float> poison, float %6, i64 0
  %12 = shufflevector <4 x float> %i.nz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.oa = shufflevector <2 x float> %.sroa.0355.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ob = insertelement <4 x float> %i.oa, float %.sroa.13.0, i64 2
  %13 = fmul <4 x float> %12, %i.ob
  %14 = insertelement <4 x float> %13, float %6, i64 3
  %i.oc = fpext <4 x float> %14 to <4 x double>
  %i.od = load <4 x double>, ptr %i.by, align 8, !tbaa !167
  %i.oe = fadd <4 x double> %i.od, %i.oc
  store <4 x double> %i.oe, ptr %i.by, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_6Point3IfEEf(ptr noundef nonnull align 4 dereferenceable(696) %0, <2 x float> %1, float %2, float noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.pbrt::Transform", align 4   ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load i8, ptr %i.e, align 4, !tbaa !164, !range !46, !noundef !47
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load float, ptr %i.j, align 4, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.m = load float, ptr %i.l, align 4, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load <2 x float>, ptr %i.n, align 4, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !55
  %i.s = load <6 x float>, ptr %i.p, align 4, !tbaa !55 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load <2 x float>, ptr %i.t, align 4, !tbaa !55
  %i.v = fmul <2 x float> %1, %i.u                ; 2 uses
  %shift = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.v, %shift
  %i.w = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load float, ptr %i.x, align 4, !tbaa !55
  %i.z = fmul float %2, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !55
  %i.ac = fadd float %i.z, %i.ab
  %i.ad = fadd float %i.w, %i.ac                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store float %i.ad, ptr %i.c, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i32 0, ptr %i.d, align 4, !tbaa !52
  %i.ae = fcmp une float %i.ad, 0.000000e+00
  br i1 %i.ae, label %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4pbrt8LogFatalIJRA3_KcRA2_S1_S3_RfS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.141, i32 noundef 393, ptr noundef nonnull @.str.142, ptr noundef nonnull align 1 dereferenceable(3) @.str.143, ptr noundef nonnull align 1 dereferenceable(2) @.str.129, ptr noundef nonnull align 1 dereferenceable(3) @.str.143, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(2) @.str.129, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #32
  unreachable

_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit: ; preds = %bb.b
  %i.af = fmul <2 x float> %1, %i.r               ; 2 uses
  %i.ag = insertelement <2 x float> poison, float %2, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = shufflevector <6 x float> %i.s, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.aj = fmul <2 x float> %i.ah, %i.ai
  %i.ak = fmul <2 x float> %1, %i.o               ; 2 uses
  %i.al = fmul <2 x float> %1, %i.i               ; 2 uses
  %shift36 = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop37 = fadd <2 x float> %i.al, %shift36
  %i.am = extractelement <2 x float> %foldExtExtBinop37, i64 0
  %i.an = fmul float %2, %i.k
  %i.ao = fadd float %i.an, %i.m
  %i.ap = fadd float %i.am, %i.ao                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.aq = fcmp oeq float %i.ad, 1.000000e+00      ; 3 uses
  %i.ar = fdiv float %i.ap, %i.ad
  %i.as = shufflevector <2 x float> %i.ak, <2 x float> %i.af, <2 x i32> <i32 0, i32 2>
  %i.at = shufflevector <2 x float> %i.ak, <2 x float> %i.af, <2 x i32> <i32 1, i32 3>
  %i.au = fadd <2 x float> %i.as, %i.at
  %i.av = shufflevector <6 x float> %i.s, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.aw = fadd <2 x float> %i.aj, %i.av
  %i.ax = fadd <2 x float> %i.au, %i.aw           ; 3 uses
  %i.ay = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fdiv <2 x float> %i.ax, %i.az           ; 2 uses
  %.sink94.i = select i1 %i.aq, float %i.ap, float %i.ar
  %i.bb = extractelement <2 x float> %i.ba, i64 0
  %i.bc = extractelement <2 x float> %i.ax, i64 0
  %.sink.i = select i1 %i.aq, float %i.bc, float %i.bb
  %i.bd = extractelement <2 x float> %i.ba, i64 1
  %i.be = extractelement <2 x float> %i.ax, i64 1
  %.sroa.493.0.i = select i1 %i.aq, float %i.be, float %i.bd
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %.sink94.i, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %.sink.i, i64 1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZNK4pbrt17AnimatedTransform11InterpolateEf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %4, ptr noundef nonnull align 4 dereferenceable(696) %0, float noundef %3)
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bg = load <2 x float>, ptr %i.bf, align 4, !tbaa !55
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !55
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !55
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.bm = load <2 x float>, ptr %i.bl, align 4, !tbaa !55
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bp = load <2 x float>, ptr %i.bo, align 4, !tbaa !55
  %i.bq = load <6 x float>, ptr %i.bn, align 4, !tbaa !55 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.bs = load <2 x float>, ptr %i.br, align 4, !tbaa !55
  %i.bt = fmul <2 x float> %1, %i.bs              ; 2 uses
  %shift39 = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop40 = fadd <2 x float> %i.bt, %shift39
  %i.bu = extractelement <2 x float> %foldExtExtBinop40, i64 0
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !55
  %i.bx = fmul float %2, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.bz = load float, ptr %i.by, align 4, !tbaa !55
  %i.ca = fadd float %i.bx, %i.bz
  %i.cb = fadd float %i.bu, %i.ca                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store float %i.cb, ptr %i.a, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 0, ptr %i.b, align 4, !tbaa !52
  %i.cc = fcmp une float %i.cb, 0.000000e+00
  br i1 %i.cc, label %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit32, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN4pbrt8LogFatalIJRA3_KcRA2_S1_S3_RfS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.141, i32 noundef 393, ptr noundef nonnull @.str.142, ptr noundef nonnull align 1 dereferenceable(3) @.str.143, ptr noundef nonnull align 1 dereferenceable(2) @.str.129, ptr noundef nonnull align 1 dereferenceable(3) @.str.143, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.129, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #32
  unreachable

_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit32: ; preds = %bb.d
  %i.cd = fmul <2 x float> %1, %i.bp              ; 2 uses
  %i.ce = insertelement <2 x float> poison, float %2, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = shufflevector <6 x float> %i.bq, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.ch = fmul <2 x float> %i.cf, %i.cg
  %i.ci = fmul <2 x float> %1, %i.bm              ; 2 uses
  %i.cj = fmul <2 x float> %1, %i.bg              ; 2 uses
  %shift42 = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop43 = fadd <2 x float> %i.cj, %shift42
  %i.ck = extractelement <2 x float> %foldExtExtBinop43, i64 0
  %i.cl = fmul float %2, %i.bi
  %i.cm = fadd float %i.cl, %i.bk
  %i.cn = fadd float %i.ck, %i.cm                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.co = fcmp oeq float %i.cb, 1.000000e+00      ; 3 uses
  %i.cp = fdiv float %i.cn, %i.cb
  %i.cq = shufflevector <2 x float> %i.ci, <2 x float> %i.cd, <2 x i32> <i32 0, i32 2>
  %i.cr = shufflevector <2 x float> %i.ci, <2 x float> %i.cd, <2 x i32> <i32 1, i32 3>
  %i.cs = fadd <2 x float> %i.cq, %i.cr
  %i.ct = shufflevector <6 x float> %i.bq, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.cu = fadd <2 x float> %i.ch, %i.ct
  %i.cv = fadd <2 x float> %i.cs, %i.cu           ; 3 uses
  %i.cw = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fdiv <2 x float> %i.cv, %i.cx           ; 2 uses
  %.sink94.i25 = select i1 %i.co, float %i.cn, float %i.cp
  %i.cz = extractelement <2 x float> %i.cy, i64 0
  %i.da = extractelement <2 x float> %i.cv, i64 0
  %.sink.i26 = select i1 %i.co, float %i.da, float %i.cz
  %i.db = extractelement <2 x float> %i.cy, i64 1
  %i.dc = extractelement <2 x float> %i.cv, i64 1
  %.sroa.493.0.i27 = select i1 %i.co, float %i.dc, float %i.db
  %.sroa.0.0.vec.insert.i.i28 = insertelement <2 x float> poison, float %.sink94.i25, i64 0
  %.sroa.0.4.vec.insert.i.i29 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i28, float %.sink.i26, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.f

bb.f:                                             ; preds = %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit32, %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit
  %.sroa.0.4.vec.insert.i.i29.pn = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i29, %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit32 ], [ %.sroa.0.4.vec.insert.i.i, %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit ]
  %.sroa.493.0.i27.pn = phi float [ %.sroa.493.0.i27, %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit32 ], [ %.sroa.493.0.i, %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit ]
  %.fca.0.insert.i30.pn = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0.4.vec.insert.i.i29.pn, 0
  %.pn = insertvalue { <2 x float>, float } %.fca.0.insert.i30.pn, float %.sroa.493.0.i27.pn, 1
  ret { <2 x float>, float } %.pn
}

declare { <2 x float>, float } @_ZNK4pbrt17AnimatedTransformclENS_6Point3IfEEf(ptr noundef nonnull align 4 dereferenceable(696), <2 x float>, float, float noundef) local_unnamed_addr #3

declare { <2 x float>, float } @_ZNK4pbrt17AnimatedTransformclENS_7Normal3IfEEf(ptr noundef nonnull align 4 dereferenceable(696), <2 x float>, float, float noundef) local_unnamed_addr #3

declare { <2 x float>, float } @_ZNK4pbrt17AnimatedTransformclENS_7Vector3IfEEf(ptr noundef nonnull align 4 dereferenceable(696), <2 x float>, float, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load float, ptr %1, align 4, !tbaa !55
  %i.d = tail call noundef i64 @lroundf(float noundef %i.c) #30
  %i.e = load i32, ptr %0, align 8, !tbaa !168
  %i.f = trunc i64 %i.d to i32
  %i.g = sub i32 %i.f, %i.e                       ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.b

end_hunk_0
