Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btCollisionWorld?download=true
inline.NumInlined: 1116
inline.NumDeleted: 295
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN16btCollisionWorld25objectQuerySingleInternalEPK13btConvexShapeRK11btTransformS5_PK24btCollisionObjectWrapperRNS_20ConvexResultCallbackEf:bb.a
  %i.fz = insertelement <4 x float> %i.fy, float 0.000000e+00, i64 3
  %i.ga = shufflevector <4 x float> %i.ev, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.gb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> %i.ga, <4 x float> %i.fx)
  store <4 x float> %i.fp, ptr %13, align 16
  store <4 x float> %i.gb, ptr %i.ex, align 16
  %i.gc = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.gd = shufflevector <2 x float> %i.ej, <2 x float> %i.ey, <2 x i32> <i32 0, i32 2>
  %i.ge = fmul <2 x float> %i.cq, %i.gd
  %i.gf = shufflevector <2 x float> %i.ei, <2 x float> %i.fb, <2 x i32> <i32 0, i32 2>
  %i.gg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.cu, <2 x float> %i.ge)
  %i.gh = shufflevector <2 x float> %i.ek, <2 x float> %i.fe, <2 x i32> <i32 0, i32 2>
  %i.gi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.cy, <2 x float> %i.gg)
  store <2 x float> %i.gi, ptr %i.gc, align 16
  %.sroa.15294.32..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 40
  store float %i.fg, ptr %.sroa.15294.32..sroa_idx, align 8
  %.sroa.16295.32..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.16295.32..sroa_idx, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !66
  %i.gl = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 96
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = tail call noundef float %i.gn(ptr noundef nonnull align 8 dereferenceable(36) %i.b), !inline_history !281
  call void @_ZN28btTriangleConvexcastCallbackC2EPK13btConvexShapeRK11btTransformS5_S5_f(ptr noundef nonnull align 8 dereferenceable(248) %14, ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %i.d, float noundef %i.go)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVZN16btCollisionWorld25objectQuerySingleInternalEPK13btConvexShapeRK11btTransformS5_PK24btCollisionObjectWrapperRNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback, i64 16), ptr %14, align 8, !tbaa !11
  %i.gp = getelementptr inbounds nuw i8, ptr %14, i64 224
  store ptr %4, ptr %i.gp, align 8, !tbaa !147
  %i.gq = getelementptr inbounds nuw i8, ptr %14, i64 232
  store ptr %i.gk, ptr %i.gq, align 8, !tbaa !148
  %i.gr = getelementptr inbounds nuw i8, ptr %14, i64 240
  store ptr %i.b, ptr %i.gr, align 8, !tbaa !309
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gt = load float, ptr %i.gs, align 8, !tbaa !137
  %i.gu = getelementptr inbounds nuw i8, ptr %14, i64 208
  store float %i.gt, ptr %i.gu, align 8, !tbaa !310
  %i.gv = getelementptr inbounds nuw i8, ptr %14, i64 216
  store float %5, ptr %i.gv, align 8, !tbaa !311
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.gw = load ptr, ptr %0, align 8, !tbaa !11
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8
  invoke void %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(64) %13, ptr noundef nonnull align 4 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %16)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(109) %i.b, ptr noundef nonnull %14, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %16)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.bl

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.bm

bb.u:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12btConvexCast10CastResultE, i64 16), ptr %17, align 8, !tbaa !11
  %i.ha = getelementptr inbounds nuw i8, ptr %17, i64 168 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %17, i64 176
  store ptr null, ptr %i.hb, align 8, !tbaa !74
  %i.hc = getelementptr inbounds nuw i8, ptr %17, i64 184
  %i.hd = getelementptr inbounds nuw i8, ptr %17, i64 188
  store i32 32, ptr %i.hd, align 4, !tbaa !76
  %i.he = getelementptr inbounds nuw i8, ptr %17, i64 192
  store float f0x38D1B717, ptr %i.he, align 8, !tbaa !77
  store float %5, ptr %i.hc, align 8, !tbaa !75
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.hg = load float, ptr %i.hf, align 8, !tbaa !137
  store float %i.hg, ptr %i.ha, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  invoke void @_ZN27btContinuousConvexCollisionC1EPK13btConvexShapePK18btStaticPlaneShape(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef %0, ptr noundef nonnull %i.b)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.hh = load ptr, ptr %18, align 8, !tbaa !11
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = invoke noundef zeroext i1 %i.hj(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %i.d, ptr noundef nonnull align 4 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(196) %17)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %bb.v
  br i1 %i.hk, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.hl = getelementptr inbounds nuw i8, ptr %17, i64 136 ; 3 uses
  %i.hm = load float, ptr %i.hl, align 8, !tbaa !57 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %17, i64 140 ; 2 uses
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !57 ; 3 uses
  %i.hp = fmul float %i.ho, %i.ho
  %i.hq = call float @llvm.fmuladd.f32(float %i.hm, float %i.hm, float %i.hp)
  %i.hr = getelementptr inbounds nuw i8, ptr %17, i64 144 ; 2 uses
  %i.hs = load float, ptr %i.hr, align 8, !tbaa !57 ; 3 uses
  %i.ht = call noundef float @llvm.fmuladd.f32(float %i.hs, float %i.hs, float %i.hq) ; 2 uses
  %i.hu = fcmp ogt float %i.ht, f0x38D1B717
  br i1 %i.hu, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.hv = load float, ptr %i.ha, align 8, !tbaa !80 ; 2 uses
  %i.hw = load float, ptr %i.hf, align 8, !tbaa !137
  %i.hx = fcmp olt float %i.hv, %i.hw
  br i1 %i.hx, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %sqrt.i.i134 = call noundef float @llvm.sqrt.f32(float %i.ht)
  %i.hy = fdiv float 1.000000e+00, %sqrt.i.i134   ; 3 uses
  %i.hz = fmul float %i.hm, %i.hy
  store float %i.hz, ptr %i.hl, align 8, !tbaa !57
  %i.ia = fmul float %i.ho, %i.hy
  store float %i.ia, ptr %i.hn, align 4, !tbaa !57
  %i.ib = fmul float %i.hs, %i.hy
  store float %i.ib, ptr %i.hr, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !66
  %i.ie = getelementptr inbounds nuw i8, ptr %17, i64 152
  store ptr %i.id, ptr %19, align 8, !tbaa !139
  %i.if = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr null, ptr %i.if, align 8, !tbaa !140
  %i.ig = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ig, ptr noundef nonnull align 8 dereferenceable(16) %i.hl, i64 16, i1 false), !tbaa.struct !48
  %i.ih = getelementptr inbounds nuw i8, ptr %19, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ih, ptr noundef nonnull align 8 dereferenceable(16) %i.ie, i64 16, i1 false), !tbaa.struct !48
  %i.ii = getelementptr inbounds nuw i8, ptr %19, i64 48
  store float %i.hv, ptr %i.ii, align 8, !tbaa !141
  %i.ij = load ptr, ptr %4, align 8, !tbaa !11
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = invoke noundef float %i.il(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 8 dereferenceable(52) %19, i1 noundef zeroext true)
          to label %bb.aa unwind label %bb.ad     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.ae

bb.ab:                                            ; preds = %bb.u
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ac:                                            ; preds = %bb.v
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ad:                                            ; preds = %bb.z
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.af

bb.ae:                                            ; preds = %bb.x, %bb.aa, %bb.y, %bb.w
  call void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.bl

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %.pn121 = phi { ptr, i32 } [ %i.ip, %bb.ad ], [ %i.io, %bb.ac ]
  call void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %18) #21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ab
  %.pn121.pn = phi { ptr, i32 } [ %.pn121, %bb.af ], [ %i.in, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.bm

bb.ah:                                            ; preds = %bb.p
  %i.iq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ir = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.iu = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.iv = load float, ptr %i.is, align 4, !tbaa !57, !noalias !312 ; 3 uses
  %i.iw = load float, ptr %i.it, align 4, !tbaa !57, !noalias !312 ; 3 uses
  %i.ix = load float, ptr %i.iu, align 4, !tbaa !57, !noalias !312 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.iz = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.ja = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 48
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.jf = load <2 x float>, ptr %i.d, align 4, !tbaa !57, !noalias !312 ; 5 uses
  %i.jg = load <2 x float>, ptr %i.iq, align 4, !tbaa !57, !noalias !312 ; 6 uses
  %i.jh = load <2 x float>, ptr %i.ir, align 4, !tbaa !57, !noalias !312 ; 5 uses
  %i.ji = load float, ptr %i.iz, align 4, !tbaa !57, !noalias !313
  %i.jj = load float, ptr %i.iy, align 4, !tbaa !57, !noalias !313
  %i.jk = load float, ptr %i.ja, align 4, !tbaa !57, !noalias !313
  %i.jl = fneg float %i.ji                        ; 2 uses
  %i.jm = fneg float %i.jj                        ; 2 uses
  %i.jn = fneg float %i.jk                        ; 2 uses
  %i.jo = load <2 x float>, ptr %i.jb, align 4, !tbaa !57 ; 2 uses
  %i.jp = shufflevector <2 x float> %i.jo, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jq = insertelement <2 x float> %i.jp, float %i.jl, i64 1 ; 2 uses
  %i.jr = fmul <2 x float> %i.jg, %i.jq
  %i.js = shufflevector <2 x float> %i.jq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jt = fmul <2 x float> %i.jg, %i.js
  %i.ju = insertelement <2 x float> %i.jo, float %i.jm, i64 1 ; 2 uses
  %i.jv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jf, <2 x float> %i.ju, <2 x float> %i.jr)
  %i.jw = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jf, <2 x float> %i.jw, <2 x float> %i.jt)
  %i.jy = fmul float %i.iw, %i.jl
  %i.jz = tail call float @llvm.fmuladd.f32(float %i.iv, float %i.jm, float %i.jy)
  %i.ka = tail call noundef float @llvm.fmuladd.f32(float %i.ix, float %i.jn, float %i.jz)
  %i.kb = load float, ptr %i.je, align 4, !tbaa !57 ; 2 uses
  %i.kc = insertelement <2 x float> poison, float %i.kb, i64 0
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ke = load <2 x float>, ptr %i.jc, align 4, !tbaa !57 ; 3 uses
  %i.kf = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kg = insertelement <2 x float> %i.kf, float %i.jn, i64 1 ; 2 uses
  %i.kh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jh, <2 x float> %i.kg, <2 x float> %i.jv) ; 2 uses
  %i.ki = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jh, <2 x float> %i.ki, <2 x float> %i.jx) ; 2 uses
  %i.kk = fadd <2 x float> %i.kh, %i.kj           ; 5 uses
  %i.kl = load <2 x float>, ptr %i.jd, align 4, !tbaa !57 ; 3 uses
  %37 = load float, ptr %36, align 4, !tbaa !57
  %i.km = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.kn = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ko = shufflevector <2 x float> %i.kl, <2 x float> %i.ke, <2 x i32> <i32 1, i32 2>
  %i.kp = fmul <2 x float> %i.kn, %i.ko
  %i.kq = shufflevector <2 x float> %i.kl, <2 x float> %i.jp, <2 x i32> <i32 0, i32 3>
  %i.kr = insertelement <2 x float> poison, float %i.iv, i64 0
  %i.ks = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kq, <2 x float> %i.ks, <2 x float> %i.kp)
  %i.ku = insertelement <2 x float> %i.ke, float %i.kb, i64 0
  %i.kv = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.kw = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ku, <2 x float> %i.kw, <2 x float> %i.kt)
  %i.ky = insertelement <2 x float> poison, float %i.ka, i64 0
  %i.kz = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = fadd <2 x float> %i.kz, %i.kx           ; 5 uses
  %i.lb = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.la, <2 x i32> <i32 3, i32 1> ; 2 uses
  %38 = insertelement <2 x float> poison, float %37, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lc = fmul <2 x float> %i.jg, %39
  %i.ld = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.le = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ld, <2 x float> %i.jf, <2 x float> %i.lc)
  %i.lf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kd, <2 x float> %i.jh, <2 x float> %i.le)
  %i.lg = shufflevector <2 x float> %i.kj, <2 x float> %i.kh, <2 x i32> <i32 0, i32 3>
  %i.lh = fadd <2 x float> %i.lg, %i.lf           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.lk = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ll = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ln = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.lp = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.lq = load <2 x float>, ptr %2, align 4, !tbaa !57, !noalias !314 ; 3 uses
  %i.lr = load <2 x float>, ptr %i.li, align 4, !tbaa !57, !noalias !314 ; 3 uses
  %i.ls = load <2 x float>, ptr %i.lj, align 4, !tbaa !57, !noalias !314 ; 3 uses
  %i.lt = shufflevector <2 x float> %i.lr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lu = insertelement <4 x float> %i.lt, float 0.000000e+00, i64 3
  %i.lv = shufflevector <2 x float> %i.jg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.lw = insertelement <4 x float> %i.lv, float 1.000000e+00, i64 3
  %i.lx = shufflevector <2 x float> %i.lq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ly = insertelement <4 x float> %i.lx, float 0.000000e+00, i64 3
  %i.lz = shufflevector <2 x float> %i.jf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ma = insertelement <4 x float> %i.lz, float -0.000000e+00, i64 3
  %i.mb = shufflevector <2 x float> %i.ls, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mc = insertelement <4 x float> %i.mb, float 0.000000e+00, i64 3
  %i.md = shufflevector <2 x float> %i.jh, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.me = insertelement <4 x float> %i.md, float -0.000000e+00, i64 3
  %i.mf = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.mg = load <2 x float>, ptr %i.ll, align 4, !tbaa !57, !noalias !314 ; 3 uses
  %i.mh = load float, ptr %i.lo, align 4, !tbaa !57, !noalias !314
  %i.mi = fmul float %i.iw, %i.mh
  %i.mj = load <2 x float>, ptr %i.lk, align 4, !tbaa !57, !noalias !314 ; 3 uses
  %i.mk = load float, ptr %i.ln, align 4, !tbaa !57, !noalias !314
  %i.ml = tail call float @llvm.fmuladd.f32(float %i.mk, float %i.iv, float %i.mi)
  %i.mm = load <2 x float>, ptr %i.lm, align 4, !tbaa !57, !noalias !314 ; 3 uses
  %i.mn = load float, ptr %i.lp, align 4, !tbaa !57, !noalias !314
  %i.mo = tail call noundef float @llvm.fmuladd.f32(float %i.mn, float %i.ix, float %i.ml)
  %i.mp = shufflevector <2 x float> %i.mg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mq = shufflevector <4 x float> %i.lu, <4 x float> %i.mp, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.mr = fmul <4 x float> %i.mq, %i.lw
  %i.ms = shufflevector <2 x float> %i.mj, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mt = shufflevector <4 x float> %i.ly, <4 x float> %i.ms, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.mu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mt, <4 x float> %i.ma, <4 x float> %i.mr)
  %i.mv = shufflevector <2 x float> %i.mm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mw = shufflevector <4 x float> %i.mc, <4 x float> %i.mv, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.mx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mw, <4 x float> %i.me, <4 x float> %i.mu)
  %i.my = shufflevector <2 x float> %i.jg, <2 x float> %i.mg, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.mz = insertelement <4 x float> %i.my, float 0.000000e+00, i64 3
  %i.na = shufflevector <2 x float> %i.lr, <2 x float> %i.jg, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.nb = insertelement <4 x float> %i.na, float 1.000000e+00, i64 3
  %i.nc = fmul <4 x float> %i.mz, %i.nb
  %i.nd = shufflevector <2 x float> %i.lq, <2 x float> %i.mj, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ne = insertelement <4 x float> %i.nd, float 0.000000e+00, i64 3
  %i.nf = shufflevector <2 x float> %i.jf, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.ng = insertelement <4 x float> %i.nf, float -0.000000e+00, i64 3
  %i.nh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ne, <4 x float> %i.ng, <4 x float> %i.nc)
  %i.ni = shufflevector <2 x float> %i.ls, <2 x float> %i.mm, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.nj = insertelement <4 x float> %i.ni, float 0.000000e+00, i64 3
  %i.nk = shufflevector <2 x float> %i.jh, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.nl = insertelement <4 x float> %i.nk, float -0.000000e+00, i64 3
  %i.nm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nj, <4 x float> %i.nl, <4 x float> %i.nh)
  store <4 x float> %i.mx, ptr %20, align 16
  store <4 x float> %i.nm, ptr %i.mf, align 16
  %i.nn = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.no = shufflevector <2 x float> %i.lr, <2 x float> %i.mg, <2 x i32> <i32 0, i32 2>
  %i.np = fmul <2 x float> %i.kn, %i.no
  %i.nq = shufflevector <2 x float> %i.lq, <2 x float> %i.mj, <2 x i32> <i32 0, i32 2>
  %i.nr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nq, <2 x float> %i.ks, <2 x float> %i.np)
  %i.ns = shufflevector <2 x float> %i.ls, <2 x float> %i.mm, <2 x i32> <i32 0, i32 2>
  %i.nt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ns, <2 x float> %i.kw, <2 x float> %i.nr)
  store <2 x float> %i.nt, ptr %i.nn, align 16
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 40
  store float %i.mo, ptr %.sroa.15.32..sroa_idx, align 8
  %.sroa.16237.32..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.16237.32..sroa_idx, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  %i.nu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !66
  %i.nw = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 96
  %i.ny = load ptr, ptr %i.nx, align 8
  %i.nz = tail call noundef float %i.ny(ptr noundef nonnull align 8 dereferenceable(36) %i.b), !inline_history !288
  call void @_ZN28btTriangleConvexcastCallbackC2EPK13btConvexShapeRK11btTransformS5_S5_f(ptr noundef nonnull align 8 dereferenceable(248) %21, ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %i.d, float noundef %i.nz)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVZN16btCollisionWorld25objectQuerySingleInternalEPK13btConvexShapeRK11btTransformS5_PK24btCollisionObjectWrapperRNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback_0, i64 16), ptr %21, align 8, !tbaa !11
  %i.oa = getelementptr inbounds nuw i8, ptr %21, i64 224
  store ptr %4, ptr %i.oa, align 8, !tbaa !150
  %i.ob = getelementptr inbounds nuw i8, ptr %21, i64 232
  store ptr %i.nv, ptr %i.ob, align 8, !tbaa !151
  %i.oc = getelementptr inbounds nuw i8, ptr %21, i64 240
  store ptr %i.b, ptr %i.oc, align 8, !tbaa !315
  %i.od = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.oe = load float, ptr %i.od, align 8, !tbaa !137
  %i.of = getelementptr inbounds nuw i8, ptr %21, i64 208
  store float %i.oe, ptr %i.of, align 8, !tbaa !310
  %i.og = getelementptr inbounds nuw i8, ptr %21, i64 216
  store float %5, ptr %i.og, align 8, !tbaa !311
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.oh = load ptr, ptr %0, align 8, !tbaa !11
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.oj = load ptr, ptr %i.oi, align 8
  invoke void %i.oj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(64) %20, ptr noundef nonnull align 4 dereferenceable(16) %22, ptr noundef nonnull align 4 dereferenceable(16) %23)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  store <2 x float> %i.kk, ptr %24, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store <2 x float> %i.lb, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !47
  %i.ok = extractelement <2 x float> %i.kk, i64 0 ; 2 uses
  %i.ol = extractelement <2 x float> %i.lh, i64 0 ; 3 uses
  %i.om = fcmp olt float %i.ol, %i.ok
  br i1 %i.om, label %bb.aj, label %_Z8btSetMinIfEvRT_RKS0_.exit.i

bb.aj:                                            ; preds = %bb.ai
  store float %i.ol, ptr %24, align 8, !tbaa !57
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %bb.aj, %bb.ai
  %i.on = phi float [ %i.ol, %bb.aj ], [ %i.ok, %bb.ai ]
  %i.oo = extractelement <2 x float> %i.kk, i64 1 ; 2 uses
  %i.op = extractelement <2 x float> %i.lh, i64 1 ; 3 uses
  %i.oq = fcmp olt float %i.op, %i.oo
  br i1 %i.oq, label %bb.ak, label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

bb.ak:                                            ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.or = getelementptr inbounds nuw i8, ptr %24, i64 4
  store float %i.op, ptr %i.or, align 4, !tbaa !57
  br label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

_Z8btSetMinIfEvRT_RKS0_.exit5.i:                  ; preds = %bb.ak, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.os = phi float [ %i.op, %bb.ak ], [ %i.oo, %_Z8btSetMinIfEvRT_RKS0_.exit.i ]
  %i.ot = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ou = fcmp olt <2 x float> %i.la, %i.ot
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  store <2 x float> %i.lb, ptr %.sroa.6.0..sroa_idx14, align 8, !tbaa !47
  %i.ov = fcmp olt <2 x float> %i.kk, %i.lh
  %i.ow = load <2 x float>, ptr %22, align 16, !tbaa !57
  %i.ox = insertelement <2 x float> poison, float %i.on, i64 0
  %i.oy = insertelement <2 x float> %i.ox, float %i.os, i64 1
  %i.oz = fadd <2 x float> %i.ow, %i.oy
  store <2 x float> %i.oz, ptr %24, align 8, !tbaa !57
  %i.pa = load <4 x float>, ptr %22, align 16
  %i.pb = shufflevector <4 x float> %i.pa, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.pc = select <2 x i1> %i.ov, <2 x float> %i.lh, <2 x float> %i.kk
  %i.pd = load <2 x float>, ptr %23, align 8, !tbaa !57
  %i.pe = fadd <2 x float> %i.pd, %i.pc
  store <2 x float> %i.pe, ptr %25, align 8, !tbaa !57
  %i.pf = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.pg = load float, ptr %i.pf, align 8, !tbaa !57
  %i.ph = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pi = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pj = select <2 x i1> %i.ou, <2 x float> %i.ph, <2 x float> %i.pi
  %i.pk = insertelement <2 x float> %i.pb, float %i.pg, i64 1
  %i.pl = fadd <2 x float> %i.pk, %i.pj           ; 2 uses
  %i.pm = extractelement <2 x float> %i.pl, i64 0
  store float %i.pm, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !57
  %i.pn = extractelement <2 x float> %i.pl, i64 1
  store float %i.pn, ptr %.sroa.6.0..sroa_idx14, align 8, !tbaa !57
  %i.po = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 128
  %i.pq = load ptr, ptr %i.pp, align 8
  invoke void %i.pq(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull %21, ptr noundef nonnull align 4 dereferenceable(16) %24, ptr noundef nonnull align 4 dereferenceable(16) %25)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.bl

bb.am:                                            ; preds = %bb.ah
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %i.ps = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn118.pn = phi { ptr, i32 } [ %i.ps, %bb.an ], [ %i.pr, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.bm

bb.ap:                                            ; preds = %bb.o
end_hunk_0
begin_hunk_1_@_ZN16btCollisionWorld15debugDrawObjectERK11btTransformPK16btCollisionShapeRK9btVector3:bb.a
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
  %i.ly = load ptr, ptr %i.lx, align 8
  %i.lz = tail call noundef ptr %i.ly(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !11
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 192
  %i.mc = load ptr, ptr %i.mb, align 8
  tail call void %i.mc(ptr noundef nonnull align 8 dereferenceable(8) %i.lz, ptr noundef nonnull align 4 dereferenceable(16) %i.lv, float noundef %i.lu, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %3)
  br label %.loopexit254

bb.o:                                             ; preds = %bb.d
  %i.md = icmp slt i32 %i.v, 7
  br i1 %i.md, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !387 ; 4 uses
  %.not135 = icmp eq ptr %i.mf, null
  br i1 %.not135, label %.preheader, label %.preheader252

.preheader252:                                    ; preds = %bb.p
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 44 ; 2 uses
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !391
  %i.mi = icmp sgt i32 %i.mh, 0
  br i1 %i.mi, label %.lr.ph268, label %.loopexit

.lr.ph268:                                        ; preds = %.preheader252
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 56 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mf, i64 24 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.mv = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.q

.preheader:                                       ; preds = %bb.p
  %i.mx = load ptr, ptr %2, align 8, !tbaa !11
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 208
  %i.mz = load ptr, ptr %i.my, align 8
  %i.na = tail call noundef i32 %i.mz(ptr noundef nonnull align 8 dereferenceable(80) %2)
  %i.nb = icmp sgt i32 %i.na, 0
  br i1 %i.nb, label %.lr.ph270, label %.loopexit

.lr.ph270:                                        ; preds = %.preheader
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.nk = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.nl = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.nm = getelementptr inbounds nuw i8, ptr %17, i64 8
  br label %bb.t

bb.q:                                             ; preds = %.lr.ph268, %bb.s
  %indvars.iv282 = phi i64 [ 0, %.lr.ph268 ], [ %indvars.iv.next283, %bb.s ] ; 5 uses
  %i.nn = load ptr, ptr %i.mj, align 8, !tbaa !392 ; 2 uses
  %i.no = getelementptr inbounds nuw [48 x i8], ptr %i.nn, i64 %indvars.iv282 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !181 ; 3 uses
  %i.nr = icmp sgt i32 %i.nq, 0
  br i1 %i.nr, label %.lr.ph264.preheader, label %.loopexit251

.lr.ph264.preheader:                              ; preds = %bb.q
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !182
  %i.nu = zext nneg i32 %i.nq to i64
  %i.nv = getelementptr [4 x i8], ptr %i.nt, i64 %i.nu
  %i.nw = getelementptr i8, ptr %i.nv, i64 -4
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !165
  br label %.lr.ph264

.lr.ph264:                                        ; preds = %.lr.ph264.preheader, %.lr.ph264
  %indvars.iv279 = phi i64 [ 0, %.lr.ph264.preheader ], [ %indvars.iv.next280, %.lr.ph264 ] ; 2 uses
  %i.ny = phi ptr [ %i.nn, %.lr.ph264.preheader ], [ %i.qv, %.lr.ph264 ]
  %.0129262 = phi i32 [ %i.nx, %.lr.ph264.preheader ], [ %i.oe, %.lr.ph264 ]
  %i.nz = phi <3 x float> [ zeroinitializer, %.lr.ph264.preheader ], [ %i.ok, %.lr.ph264 ]
  %i.oa = getelementptr inbounds nuw [48 x i8], ptr %i.ny, i64 %indvars.iv282
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !182
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %indvars.iv279
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !165 ; 2 uses
  %i.of = load ptr, ptr %i.mk, align 8, !tbaa !369
  %i.og = sext i32 %i.oe to i64                   ; 2 uses
  %i.oh = getelementptr inbounds [16 x i8], ptr %i.of, i64 %i.og
  %i.oi = load <3 x float>, ptr %i.oh, align 4, !tbaa !57
  %i.oj = shufflevector <3 x float> %i.oi, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.ok = fadd <3 x float> %i.nz, %i.oj           ; 2 uses
  %i.ol = load ptr, ptr %0, align 8, !tbaa !11
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 40
  %i.on = load ptr, ptr %i.om, align 8
  %i.oo = call noundef ptr %i.on(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.op = load ptr, ptr %i.mk, align 8, !tbaa !369 ; 2 uses
  %i.oq = sext i32 %.0129262 to i64
  %i.or = getelementptr inbounds [16 x i8], ptr %i.op, i64 %i.oq ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 4
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.ou = load float, ptr %i.mm, align 4, !tbaa !57 ; 2 uses
  %i.ov = load float, ptr %i.mp, align 4, !tbaa !57 ; 2 uses
  %i.ow = load float, ptr %i.mq, align 4, !tbaa !57 ; 2 uses
  %i.ox = load <2 x float>, ptr %1, align 4, !tbaa !57 ; 2 uses
  %i.oy = load float, ptr %i.os, align 4, !tbaa !57 ; 2 uses
  %i.oz = load float, ptr %i.or, align 4, !tbaa !57 ; 2 uses
  %i.pa = load float, ptr %i.ot, align 4, !tbaa !57 ; 2 uses
  %i.pb = load <2 x float>, ptr %i.ml, align 4, !tbaa !57 ; 2 uses
  %i.pc = insertelement <2 x float> poison, float %i.oy, i64 0
  %i.pd = shufflevector <2 x float> %i.pc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pe = shufflevector <2 x float> %i.ox, <2 x float> %i.pb, <2 x i32> <i32 1, i32 3>
  %i.pf = fmul <2 x float> %i.pd, %i.pe
  %i.pg = insertelement <2 x float> poison, float %i.oz, i64 0
  %i.ph = shufflevector <2 x float> %i.pg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pi = shufflevector <2 x float> %i.ox, <2 x float> %i.pb, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.pj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ph, <2 x float> %i.pi, <2 x float> %i.pf)
  %i.pk = insertelement <2 x float> poison, float %i.pa, i64 0
  %i.pl = shufflevector <2 x float> %i.pk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pm = fmul float %i.oy, %i.ov
  %i.pn = call float @llvm.fmuladd.f32(float %i.oz, float %i.ou, float %i.pm)
  %i.po = call noundef float @llvm.fmuladd.f32(float %i.pa, float %i.ow, float %i.pn)
  %i.pp = load <2 x float>, ptr %i.mr, align 4, !tbaa !57 ; 2 uses
  %i.pq = load float, ptr %i.ms, align 4, !tbaa !57 ; 2 uses
  %i.pr = fadd float %i.po, %i.pq
  %.sroa.3.12.vec.insert.i4.i.i167 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.pr, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i167, ptr %i.mt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.ps = getelementptr inbounds [16 x i8], ptr %i.op, i64 %i.og ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 4
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.pv = load <2 x float>, ptr %i.mn, align 4, !tbaa !57 ; 2 uses
  %i.pw = load <2 x float>, ptr %i.mo, align 4, !tbaa !57 ; 2 uses
  %i.px = shufflevector <2 x float> %i.pv, <2 x float> %i.pw, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.py = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pl, <2 x float> %i.px, <2 x float> %i.pj)
  %i.pz = fadd <2 x float> %i.py, %i.pp
  store <2 x float> %i.pz, ptr %9, align 8
  %i.qa = load float, ptr %i.pt, align 4, !tbaa !57 ; 2 uses
  %i.qb = load float, ptr %i.ps, align 4, !tbaa !57 ; 2 uses
  %i.qc = load float, ptr %i.pu, align 4, !tbaa !57 ; 2 uses
  %i.qd = shufflevector <2 x float> %i.pv, <2 x float> %i.pw, <2 x i32> <i32 0, i32 2>
  %i.qe = insertelement <2 x float> poison, float %i.qa, i64 0
  %i.qf = shufflevector <2 x float> %i.qe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qg = fmul <2 x float> %i.qd, %i.qf
  %i.qh = insertelement <2 x float> poison, float %i.qb, i64 0
  %i.qi = shufflevector <2 x float> %i.qh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qi, <2 x float> %i.pi, <2 x float> %i.qg)
  %i.qk = insertelement <2 x float> poison, float %i.qc, i64 0
  %i.ql = shufflevector <2 x float> %i.qk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ql, <2 x float> %i.px, <2 x float> %i.qj)
  %i.qn = fmul float %i.ov, %i.qa
  %i.qo = call float @llvm.fmuladd.f32(float %i.qb, float %i.ou, float %i.qn)
  %i.qp = call noundef float @llvm.fmuladd.f32(float %i.qc, float %i.ow, float %i.qo)
  %i.qq = fadd <2 x float> %i.pp, %i.qm
  %i.qr = fadd float %i.pq, %i.qp
  %.sroa.3.12.vec.insert.i4.i.i170 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qr, i64 0
  store <2 x float> %i.qq, ptr %10, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i170, ptr %i.mu, align 8
  %i.qs = load ptr, ptr %i.oo, align 8, !tbaa !11
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 32
  %i.qu = load ptr, ptr %i.qt, align 8
  call void %i.qu(ptr noundef nonnull align 8 dereferenceable(8) %i.oo, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %i.qv = load ptr, ptr %i.mj, align 8, !tbaa !392 ; 2 uses
  %i.qw = getelementptr inbounds nuw [48 x i8], ptr %i.qv, i64 %indvars.iv282
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 4
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !181
  %i.qz = sext i32 %i.qy to i64
  %i.ra = icmp slt i64 %indvars.iv.next280, %i.qz
  br i1 %i.ra, label %.lr.ph264, label %.loopexit251, !llvm.loop !360

.loopexit251:                                     ; preds = %.lr.ph264, %bb.q
  %i.rb = phi <3 x float> [ zeroinitializer, %bb.q ], [ %i.ok, %.lr.ph264 ]
  %i.rc = load ptr, ptr %0, align 8, !tbaa !11
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 40
  %i.re = load ptr, ptr %i.rd, align 8
  %i.rf = call noundef ptr %i.re(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !11
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 112
  %i.ri = load ptr, ptr %i.rh, align 8
  %i.rj = call noundef i32 %i.ri(ptr noundef nonnull align 8 dereferenceable(8) %i.rf)
  %i.rk = and i32 %i.rj, 16384
  %.not138 = icmp eq i32 %i.rk, 0
  br i1 %.not138, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit251
  %i.rl = sitofp i32 %i.nq to float
  %i.rm = fdiv nnan float 1.000000e+00, %i.rl
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %11, align 16, !tbaa !57
  %i.rn = load ptr, ptr %i.mj, align 8, !tbaa !392
  %i.ro = getelementptr inbounds nuw [48 x i8], ptr %i.rn, i64 %indvars.iv282
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 32
  %i.rq = load ptr, ptr %0, align 8, !tbaa !11
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 40
  %i.rs = load ptr, ptr %i.rr, align 8
  %i.rt = insertelement <3 x float> poison, float %i.rm, i64 0
  %i.ru = shufflevector <3 x float> %i.rt, <3 x float> poison, <3 x i32> zeroinitializer
  %i.rv = fmul <3 x float> %i.ru, %i.rb           ; 7 uses
  %i.rw = shufflevector <3 x float> %i.rv, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.rx = shufflevector <3 x float> %i.rv, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ry = shufflevector <3 x float> %i.rv, <3 x float> poison, <2 x i32> zeroinitializer
  %24 = load <3 x float>, ptr %i.rp, align 4, !tbaa !57
  %25 = shufflevector <3 x float> %24, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.rz = call noundef ptr %i.rs(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.sa = load float, ptr %i.mm, align 4, !tbaa !57
  %i.sb = load float, ptr %i.mp, align 4, !tbaa !57
  %i.sc = load float, ptr %i.mq, align 4, !tbaa !57
  %i.sd = load <2 x float>, ptr %1, align 4, !tbaa !57 ; 2 uses
  %i.se = load <2 x float>, ptr %i.mn, align 4, !tbaa !57 ; 2 uses
  %i.sf = load <2 x float>, ptr %i.ml, align 4, !tbaa !57 ; 2 uses
  %i.sg = load <2 x float>, ptr %i.mo, align 4, !tbaa !57 ; 2 uses
  %i.sh = shufflevector <2 x float> %i.sd, <2 x float> %i.sf, <2 x i32> <i32 1, i32 3>
  %i.si = fmul <2 x float> %i.rw, %i.sh
  %i.sj = shufflevector <2 x float> %i.sd, <2 x float> %i.sf, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.sk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rx, <2 x float> %i.sj, <2 x float> %i.si)
  %i.sl = shufflevector <2 x float> %i.se, <2 x float> %i.sg, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.sm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ry, <2 x float> %i.sl, <2 x float> %i.sk)
  %26 = load <2 x float>, ptr %i.mr, align 4, !tbaa !57 ; 2 uses
  %27 = fadd <2 x float> %i.sm, %26
  %28 = load float, ptr %i.ms, align 4, !tbaa !57
  store <2 x float> %27, ptr %12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %29 = fadd <3 x float> %i.rv, %25               ; 6 uses
  %30 = shufflevector <3 x float> %29, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %31 = shufflevector <2 x float> %i.se, <2 x float> %i.sg, <2 x i32> <i32 0, i32 2>
  %32 = fmul <2 x float> %30, %31
  %33 = shufflevector <3 x float> %29, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %34 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %33, <2 x float> %i.sj, <2 x float> %32)
  %35 = shufflevector <3 x float> %29, <3 x float> poison, <2 x i32> zeroinitializer
  %36 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %35, <2 x float> %i.sl, <2 x float> %34)
  %37 = fadd <2 x float> %36, %26
  %38 = shufflevector <3 x float> %i.rv, <3 x float> %29, <2 x i32> <i32 2, i32 5>
  %i.sn = insertelement <2 x float> poison, float %i.sb, i64 0
  %i.so = shufflevector <2 x float> %i.sn, <2 x float> poison, <2 x i32> zeroinitializer
  %39 = fmul <2 x float> %38, %i.so
  %40 = shufflevector <3 x float> %i.rv, <3 x float> %29, <2 x i32> <i32 1, i32 4>
  %i.sp = insertelement <2 x float> poison, float %i.sa, i64 0
  %i.sq = shufflevector <2 x float> %i.sp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %40, <2 x float> %i.sq, <2 x float> %39)
  %41 = shufflevector <3 x float> %i.rv, <3 x float> %29, <2 x i32> <i32 0, i32 3>
  %i.ss = insertelement <2 x float> poison, float %i.sc, i64 0
  %i.st = shufflevector <2 x float> %i.ss, <2 x float> poison, <2 x i32> zeroinitializer
  %i.su = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %41, <2 x float> %i.st, <2 x float> %i.sr)
  %42 = insertelement <2 x float> poison, float %28, i64 0
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %44 = fadd <2 x float> %i.su, %43               ; 2 uses
  %45 = insertelement <2 x float> %44, float 0.000000e+00, i64 1
  store <2 x float> %45, ptr %i.mv, align 8
  %46 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %44, <2 x i32> <i32 3, i32 1>
  store <2 x float> %37, ptr %13, align 8
  store <2 x float> %46, ptr %i.mw, align 8
  %i.sv = load ptr, ptr %i.rz, align 8, !tbaa !11
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 32
  %i.sx = load ptr, ptr %i.sw, align 8
  call void %i.sx(ptr noundef nonnull align 8 dereferenceable(8) %i.rz, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit251
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 1 ; 2 uses
  %i.sy = load i32, ptr %i.mg, align 4, !tbaa !391
  %i.sz = sext i32 %i.sy to i64
  %i.ta = icmp slt i64 %indvars.iv.next283, %i.sz
  br i1 %i.ta, label %bb.q, label %.loopexit, !llvm.loop !361

bb.t:                                             ; preds = %.lr.ph270, %bb.t
  %.1269 = phi i32 [ 0, %.lr.ph270 ], [ %i.vj, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.tb = load ptr, ptr %2, align 8, !tbaa !11
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 216
  %i.td = load ptr, ptr %i.tc, align 8
  call void %i.td(ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef %.1269, ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.te = load float, ptr %i.nd, align 4, !tbaa !57
  %i.tf = load float, ptr %i.ng, align 4, !tbaa !57
  %i.tg = load float, ptr %i.nh, align 4, !tbaa !57
  %i.th = load <2 x float>, ptr %1, align 4, !tbaa !57 ; 2 uses
  %i.ti = load <4 x float>, ptr %14, align 16     ; 2 uses
  %i.tj = shufflevector <4 x float> %i.ti, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.tk = load <2 x float>, ptr %i.nc, align 4, !tbaa !57 ; 2 uses
  %i.tl = shufflevector <2 x float> %i.th, <2 x float> %i.tk, <2 x i32> <i32 1, i32 3>
  %i.tm = shufflevector <2 x float> %i.th, <2 x float> %i.tk, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.tn = shufflevector <4 x float> %i.ti, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.to = load <2 x float>, ptr %i.ni, align 4, !tbaa !57 ; 2 uses
  %i.tp = load float, ptr %i.nj, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  %i.tq = load <2 x float>, ptr %i.ne, align 4, !tbaa !57 ; 2 uses
  %i.tr = load <2 x float>, ptr %i.nf, align 4, !tbaa !57 ; 2 uses
  %i.ts = shufflevector <2 x float> %i.tq, <2 x float> %i.tr, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.tt = load float, ptr %i.nl, align 8, !tbaa !57 ; 2 uses
  %i.tu = shufflevector <2 x float> %i.tq, <2 x float> %i.tr, <2 x i32> <i32 0, i32 2>
  %i.tv = insertelement <2 x float> poison, float %i.tt, i64 0
  %i.tw = shufflevector <2 x float> %i.tv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tx = load <2 x float>, ptr %14, align 16, !tbaa !57 ; 4 uses
  %i.ty = shufflevector <2 x float> %i.tx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.tz = fmul <2 x float> %i.ty, %i.tl
  %i.ua = shufflevector <2 x float> %i.tx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ub = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ua, <2 x float> %i.tm, <2 x float> %i.tz)
  %i.uc = load <2 x float>, ptr %15, align 8, !tbaa !57 ; 4 uses
  %i.ud = insertelement <2 x float> poison, float %i.tf, i64 0
  %i.ue = shufflevector <2 x float> %i.ud, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uf = shufflevector <2 x float> %i.tx, <2 x float> %i.uc, <2 x i32> <i32 1, i32 3>
  %i.ug = fmul <2 x float> %i.ue, %i.uf
  %i.uh = shufflevector <2 x float> %i.tx, <2 x float> %i.uc, <2 x i32> <i32 0, i32 2>
  %i.ui = insertelement <2 x float> poison, float %i.te, i64 0
  %i.uj = shufflevector <2 x float> %i.ui, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uh, <2 x float> %i.uj, <2 x float> %i.ug)
  %i.ul = insertelement <2 x float> %i.tj, float %i.tt, i64 1
  %i.um = insertelement <2 x float> poison, float %i.tg, i64 0
  %i.un = shufflevector <2 x float> %i.um, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ul, <2 x float> %i.un, <2 x float> %i.uk)
  %i.up = insertelement <2 x float> poison, float %i.tp, i64 0
  %i.uq = shufflevector <2 x float> %i.up, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ur = fadd <2 x float> %i.uo, %i.uq           ; 2 uses
  %i.us = insertelement <2 x float> %i.ur, float 0.000000e+00, i64 1
  store <2 x float> %i.us, ptr %i.nk, align 8
  %i.ut = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tn, <2 x float> %i.ts, <2 x float> %i.ub)
  %i.uu = fadd <2 x float> %i.ut, %i.to
  store <2 x float> %i.uu, ptr %16, align 8
  %i.uv = shufflevector <2 x float> %i.uc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.uw = fmul <2 x float> %i.tu, %i.uv
  %i.ux = shufflevector <2 x float> %i.uc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ux, <2 x float> %i.tm, <2 x float> %i.uw)
  %i.uz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tw, <2 x float> %i.ts, <2 x float> %i.uy)
  %i.va = fadd <2 x float> %i.to, %i.uz
  %i.vb = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ur, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.va, ptr %17, align 8
  store <2 x float> %i.vb, ptr %i.nm, align 8
  %i.vc = load ptr, ptr %0, align 8, !tbaa !11
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 40
  %i.ve = load ptr, ptr %i.vd, align 8
  %i.vf = call noundef ptr %i.ve(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !11
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 32
  %i.vi = load ptr, ptr %i.vh, align 8
  call void %i.vi(ptr noundef nonnull align 8 dereferenceable(8) %i.vf, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.vj = add nuw nsw i32 %.1269, 1               ; 2 uses
  %i.vk = load ptr, ptr %2, align 8, !tbaa !11
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 208
  %i.vm = load ptr, ptr %i.vl, align 8
  %i.vn = call noundef i32 %i.vm(ptr noundef nonnull align 8 dereferenceable(80) %2)
  %i.vo = icmp slt i32 %i.vj, %i.vn
  br i1 %i.vo, label %bb.t, label %.loopexit, !llvm.loop !362

.loopexit:                                        ; preds = %bb.s, %bb.t, %.preheader252, %.preheader, %bb.o
  %i.vp = load i32, ptr %i.u, align 8, !tbaa !51  ; 2 uses
  %i.vq = add i32 %i.vp, -21
  %i.vr = icmp ult i32 %i.vq, 9
  br i1 %i.vr, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  store <4 x float> <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float 0.000000e+00>, ptr %18, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  store <4 x float> <float f0xDD5E0B6B, float f0xDD5E0B6B, float f0xDD5E0B6B, float 0.000000e+00>, ptr %19, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %i.vs = load ptr, ptr %0, align 8, !tbaa !11
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 40
  %i.vu = load ptr, ptr %i.vt, align 8
  %i.vv = call noundef ptr %i.vu(ptr noundef nonnull align 8 dereferenceable(121) %0)
  %i.vw = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17DebugDrawcallback, i64 16), ptr %20, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DebugDrawcallback, i64 64), ptr %i.vw, align 8, !tbaa !11
  %i.vx = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.vv, ptr %i.vx, align 8, !tbaa !185
  %i.vy = getelementptr inbounds nuw i8, ptr %20, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vy, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !48
  %i.vz = getelementptr inbounds nuw i8, ptr %20, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.vz, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !48
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.wb = getelementptr inbounds nuw i8, ptr %20, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wb, ptr noundef nonnull align 4 dereferenceable(16) %i.wa, i64 16, i1 false), !tbaa.struct !48
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.wd = getelementptr inbounds nuw i8, ptr %20, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wd, ptr noundef nonnull align 4 dereferenceable(16) %i.wc, i64 16, i1 false), !tbaa.struct !48
  %i.we = getelementptr inbounds nuw i8, ptr %20, i64 88
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.we, ptr noundef nonnull align 4 dereferenceable(16) %i.wf, i64 16, i1 false), !tbaa.struct !48
  %i.wg = load ptr, ptr %2, align 8, !tbaa !11
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 128
  %i.wi = load ptr, ptr %i.wh, align 8
  invoke void %i.wi(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %20, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(16) %18)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.vw) #21
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %.pr = load i32, ptr %i.u, align 8, !tbaa !51
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.wj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.vw) #21
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.ab

bb.x:                                             ; preds = %bb.v, %.loopexit
  %i.wk = phi i32 [ %.pr, %bb.v ], [ %i.vp, %.loopexit ]
  %i.wl = icmp eq i32 %i.wk, 3
  br i1 %i.wl, label %bb.y, label %.loopexit254

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  store <4 x float> <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float 0.000000e+00>, ptr %21, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  store <4 x float> <float f0xDD5E0B6B, float f0xDD5E0B6B, float f0xDD5E0B6B, float 0.000000e+00>, ptr %22, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.wm = load ptr, ptr %0, align 8, !tbaa !11
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 40
  %i.wo = load ptr, ptr %i.wn, align 8
  %i.wp = call noundef ptr %i.wo(ptr noundef nonnull align 8 dereferenceable(121) %0)
  %i.wq = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17DebugDrawcallback, i64 16), ptr %23, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DebugDrawcallback, i64 64), ptr %i.wq, align 8, !tbaa !11
  %i.wr = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr %i.wp, ptr %i.wr, align 8, !tbaa !185
  %i.ws = getelementptr inbounds nuw i8, ptr %23, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ws, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !48
  %i.wt = getelementptr inbounds nuw i8, ptr %23, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.wt, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !48
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.wv = getelementptr inbounds nuw i8, ptr %23, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wv, ptr noundef nonnull align 4 dereferenceable(16) %i.wu, i64 16, i1 false), !tbaa.struct !48
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.wx = getelementptr inbounds nuw i8, ptr %23, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wx, ptr noundef nonnull align 4 dereferenceable(16) %i.ww, i64 16, i1 false), !tbaa.struct !48
  %i.wy = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.wz = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wy, ptr noundef nonnull align 4 dereferenceable(16) %i.wz, i64 16, i1 false), !tbaa.struct !48
  %i.xa = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !396 ; 2 uses
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !11
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 16
  %i.xe = load ptr, ptr %i.xd, align 8
  invoke void %i.xe(ptr noundef nonnull align 8 dereferenceable(24) %i.xb, ptr noundef nonnull %i.wq, ptr noundef nonnull align 4 dereferenceable(16) %22, ptr noundef nonnull align 4 dereferenceable(16) %21)
          to label %bb.z unwind label %bb.aa

end_hunk_1
