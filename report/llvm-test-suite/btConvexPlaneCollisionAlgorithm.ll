Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btConvexPlaneCollisionAlgorithm?download=true
inline.NumInlined: 262
inline.NumDeleted: 79
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN31btConvexPlaneCollisionAlgorithm20collideSingleContactERK12btQuaternionP17btCollisionObjectS4_RK16btDispatcherInfoP16btManifoldResult:bb.a
  %i.el = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ek, <2 x float> %i.eg) ; 3 uses
  %i.em = fmul float %.sroa.7173.0.copyload, %i.du
  %i.en = tail call float @llvm.fmuladd.f32(float %i.dq, float %.sroa.0170.0.copyload, float %i.em)
  %i.eo = tail call noundef float @llvm.fmuladd.f32(float %i.dy, float %.sroa.11176.0.copyload, float %i.en) ; 3 uses
  %i.ep = insertelement <2 x float> poison, float %.sroa.21.16.copyload, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x float> %i.eq, %i.ec
  %i.es = insertelement <2 x float> poison, float %.sroa.16180.16.copyload, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.et, <2 x float> %i.er)
  %i.ev = insertelement <2 x float> poison, float %.sroa.25.16.copyload, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ew, <2 x float> %i.eu) ; 3 uses
  %i.ey = fmul float %.sroa.21.16.copyload, %i.du
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.dq, float %.sroa.16180.16.copyload, float %i.ey)
  %i.fa = tail call noundef float @llvm.fmuladd.f32(float %i.dy, float %.sroa.25.16.copyload, float %i.ez) ; 3 uses
  %i.fb = insertelement <2 x float> poison, float %.sroa.35.32.copyload, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x float> %i.fc, %i.ec
  %i.fe = insertelement <2 x float> poison, float %.sroa.30.32.copyload, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.ff, <2 x float> %i.fd)
  %i.fh = insertelement <2 x float> poison, float %.sroa.39.32.copyload, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.fi, <2 x float> %i.fg) ; 3 uses
  %i.fk = fmul float %.sroa.35.32.copyload, %i.du
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.dq, float %.sroa.30.32.copyload, float %i.fk)
  %i.fm = tail call noundef float @llvm.fmuladd.f32(float %i.dy, float %.sroa.39.32.copyload, float %i.fl) ; 3 uses
  %i.fn = load float, ptr %i.j, align 4, !tbaa !32
  %i.fo = fneg float %i.fn                        ; 2 uses
  %i.fp = load float, ptr %i.ah, align 4, !tbaa !32
  %i.fq = fneg float %i.fp                        ; 2 uses
  %i.fr = load float, ptr %i.ai, align 4, !tbaa !32
  %i.fs = fneg float %i.fr                        ; 2 uses
  %i.ft = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = fmul <2 x float> %i.fu, %i.ex
  %i.fw = insertelement <2 x float> poison, float %i.am, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.el, <2 x float> %i.fv)
  %i.fz = insertelement <2 x float> poison, float %i.as, i64 0
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %i.fj, <2 x float> %i.fy)
  %i.gc = shufflevector <3 x float> %i.an, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gd = fmul <2 x float> %i.gc, %i.ex
  %i.ge = shufflevector <3 x float> %i.ak, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.el, <2 x float> %i.gd)
  %i.gg = shufflevector <3 x float> %i.aq, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gg, <2 x float> %i.fj, <2 x float> %i.gf)
  %i.gi = shufflevector <3 x float> %i.an, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gj = fmul <2 x float> %i.gi, %i.ex
  %i.gk = shufflevector <3 x float> %i.ak, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.el, <2 x float> %i.gj)
  %i.gm = shufflevector <3 x float> %i.aq, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> %i.fj, <2 x float> %i.gl)
  %i.go = fmul float %i.ap, %i.fa
  %i.gp = tail call float @llvm.fmuladd.f32(float %i.am, float %i.eo, float %i.go)
  %i.gq = tail call noundef float @llvm.fmuladd.f32(float %i.as, float %i.fm, float %i.gp)
  %i.gr = fmul float %i.cl, %i.fa
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.eo, float %i.gr)
  %i.gt = tail call noundef float @llvm.fmuladd.f32(float %i.cn, float %i.fm, float %i.gs)
  %i.gu = fmul float %i.co, %i.fa
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.eo, float %i.gu)
  %i.gw = tail call noundef float @llvm.fmuladd.f32(float %i.cq, float %i.fm, float %i.gv)
  %i.gx = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = fmul <2 x float> %i.gh, %i.gy
  %i.ha = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> %i.hb, <2 x float> %i.gz)
  %i.hd = insertelement <2 x float> poison, float %i.fs, i64 0
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gn, <2 x float> %i.he, <2 x float> %i.hc)
  %i.hg = fmul float %i.gt, %i.fq
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.gq, float %i.fo, float %i.hg)
  %i.hi = tail call noundef float @llvm.fmuladd.f32(float %i.gw, float %i.fs, float %i.hh)
  %.sroa.3.12.vec.insert.i52 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hi, i64 0
  store <2 x float> %i.hf, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i52, ptr %i.aj, align 8
  %i.hj = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 96
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = call { <2 x float>, <2 x float> } %i.hl(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %6) ; 2 uses
  %i.hn = extractvalue { <2 x float>, <2 x float> } %i.hm, 0 ; 2 uses
  %i.ho = extractvalue { <2 x float>, <2 x float> } %i.hm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.hp = shufflevector <2 x float> %i.hn, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.hq = fmul <3 x float> %i.br, %i.hp
  %i.hr = shufflevector <2 x float> %i.hn, <2 x float> poison, <3 x i32> zeroinitializer
  %i.hs = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bi, <3 x float> %i.hr, <3 x float> %i.hq)
  %i.ht = shufflevector <2 x float> %i.ho, <2 x float> poison, <3 x i32> zeroinitializer
  %i.hu = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ca, <3 x float> %i.ht, <3 x float> %i.hs)
  %i.hv = fadd <3 x float> %i.ck, %i.hu           ; 4 uses
  %i.hw = load float, ptr %i.ah, align 4, !tbaa !32
  %i.hx = load <3 x float>, ptr %i.j, align 4, !tbaa !32 ; 3 uses
  %i.hy = extractelement <3 x float> %i.hv, i64 2
  %i.hz = fmul float %i.hw, %i.hy
  %i.ia = extractelement <3 x float> %i.hv, i64 1
  %i.ib = extractelement <3 x float> %i.hx, i64 0
  %i.ic = call float @llvm.fmuladd.f32(float %i.ib, float %i.ia, float %i.hz)
  %i.id = extractelement <3 x float> %i.hv, i64 0
  %i.ie = extractelement <3 x float> %i.hx, i64 2
  %i.if = call noundef float @llvm.fmuladd.f32(float %i.ie, float %i.id, float %i.ic)
  %i.ig = load float, ptr %i.k, align 4, !tbaa !32
  %i.ih = fsub float %i.if, %i.ig                 ; 3 uses
  %i.ii = load <2 x float>, ptr %i.p, align 8, !tbaa !32 ; 2 uses
  %i.ij = load float, ptr %i.t, align 8, !tbaa !32
  %i.ik = load <2 x float>, ptr %i.q, align 8, !tbaa !32 ; 2 uses
  %i.il = load float, ptr %i.u, align 8, !tbaa !32
  %i.im = load <2 x float>, ptr %i.w, align 8, !tbaa !32
  %i.in = load float, ptr %i.r, align 8, !tbaa !32
  %i.io = load float, ptr %i.s, align 4, !tbaa !32
  %i.ip = load float, ptr %i.v, align 8, !tbaa !32
  %i.iq = load float, ptr %i.aa, align 8, !tbaa !32
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !17
  %i.it = call noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(744) %i.is)
  %i.iu = fcmp olt float %i.ih, %i.it
  %i.iv = load ptr, ptr %i.ir, align 8, !tbaa !17
  %i.iw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.iv, ptr %i.iw, align 8, !tbaa !36
  br i1 %i.iu, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ix = insertelement <3 x float> poison, float %i.ih, i64 0
  %i.iy = shufflevector <3 x float> %i.hx, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.iz = shufflevector <3 x float> %i.ix, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ja = fmul <3 x float> %i.iy, %i.iz
  %i.jb = fsub <3 x float> %i.hv, %i.ja           ; 6 uses
  %i.jc = extractelement <3 x float> %i.jb, i64 2
  %i.jd = fmul float %i.jc, %i.io
  %i.je = extractelement <3 x float> %i.jb, i64 1
  %i.jf = call float @llvm.fmuladd.f32(float %i.in, float %i.je, float %i.jd)
  %i.jg = extractelement <3 x float> %i.jb, i64 0
  %i.jh = call noundef float @llvm.fmuladd.f32(float %i.ip, float %i.jg, float %i.jf)
  %i.ji = fadd float %i.iq, %i.jh
  %.sroa.3.12.vec.insert.i.i70 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ji, i64 0
  %i.jj = shufflevector <2 x float> %i.ii, <2 x float> %i.ik, <2 x i32> <i32 1, i32 3>
  %i.jk = shufflevector <3 x float> %i.jb, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.jl = fmul <2 x float> %i.jj, %i.jk
  %i.jm = shufflevector <2 x float> %i.ii, <2 x float> %i.ik, <2 x i32> <i32 0, i32 2>
  %i.jn = shufflevector <3 x float> %i.jb, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jm, <2 x float> %i.jn, <2 x float> %i.jl)
  %i.jp = insertelement <2 x float> poison, float %i.ij, i64 0
  %i.jq = insertelement <2 x float> %i.jp, float %i.il, i64 1
  %i.jr = shufflevector <3 x float> %i.jb, <3 x float> poison, <2 x i32> zeroinitializer
  %i.js = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jq, <2 x float> %i.jr, <2 x float> %i.jo)
  %i.jt = fadd <2 x float> %i.im, %i.js
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.ju = load float, ptr %i.t, align 8, !tbaa !32
  %i.jv = load float, ptr %i.u, align 8, !tbaa !32
  %i.jw = load float, ptr %i.j, align 4, !tbaa !32 ; 2 uses
  %i.jx = load <2 x float>, ptr %i.p, align 8, !tbaa !32 ; 2 uses
  %i.jy = load float, ptr %i.ah, align 4, !tbaa !32 ; 2 uses
  %i.jz = load float, ptr %i.ai, align 4, !tbaa !32 ; 2 uses
  %i.ka = load <2 x float>, ptr %i.q, align 8, !tbaa !32 ; 2 uses
  %i.kb = insertelement <2 x float> poison, float %i.jy, i64 0
  %i.kc = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kd = shufflevector <2 x float> %i.jx, <2 x float> %i.ka, <2 x i32> <i32 1, i32 3>
  %i.ke = fmul <2 x float> %i.kc, %i.kd
  %i.kf = shufflevector <2 x float> %i.jx, <2 x float> %i.ka, <2 x i32> <i32 0, i32 2>
  %i.kg = insertelement <2 x float> poison, float %i.jw, i64 0
  %i.kh = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ki = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kf, <2 x float> %i.kh, <2 x float> %i.ke)
  %i.kj = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.kk = insertelement <2 x float> %i.kj, float %i.jv, i64 1
  %i.kl = insertelement <2 x float> poison, float %i.jz, i64 0
  %i.km = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kk, <2 x float> %i.km, <2 x float> %i.ki)
  %i.ko = load float, ptr %i.r, align 8, !tbaa !32
  %i.kp = load float, ptr %i.s, align 4, !tbaa !32
  %i.kq = fmul float %i.jy, %i.kp
  %i.kr = call float @llvm.fmuladd.f32(float %i.ko, float %i.jw, float %i.kq)
  %i.ks = load float, ptr %i.v, align 8, !tbaa !32
  %i.kt = call noundef float @llvm.fmuladd.f32(float %i.ks, float %i.jz, float %i.kr)
  %.sroa.3.12.vec.insert.i75 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kt, i64 0
  store <2 x float> %i.kn, ptr %7, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i75, ptr %i.ku, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  store <2 x float> %i.jt, ptr %8, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i70, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !44
  %i.kv = load ptr, ptr %5, align 8, !tbaa !9
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.kx = load ptr, ptr %i.kw, align 8
  call void %i.kx(ptr noundef nonnull align 8 dereferenceable(176) %5, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, float noundef %i.ih)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(744)) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN31btConvexPlaneCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef %4) unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca %class.btQuaternion, align 16       ; 4 uses
  %6 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !18, !range !22, !noundef !23
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = select i1 %i.e, ptr %2, ptr %1
  %i.g = select i1 %i.e, ptr %1, ptr %2
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %5, align 16, !tbaa !32
  call void @_ZN31btConvexPlaneCollisionAlgorithm20collideSingleContactERK12btQuaternionP17btCollisionObjectS4_RK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef %1, ptr noundef %2, ptr nonnull align 8 poison, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 728
  %i.p = load i32, ptr %i.o, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !20
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 68 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !32 ; 4 uses
  %i.v = tail call noundef float @llvm.fabs.f32(float %i.u)
  %i.w = fcmp ogt float %i.v, f0x3F3504F3
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.y = load float, ptr %i.x, align 4, !tbaa !32 ; 3 uses
  %i.z = fmul nnan float %i.u, %i.u
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.z)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.aa)
  %i.ab = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.ac = fneg float %i.u
  %i.ad = fmul float %i.ab, %i.ac
  %i.ae = fmul float %i.y, %i.ab
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.af = load float, ptr %i.l, align 4, !tbaa !32 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !32 ; 3 uses
  %i.ai = fmul float %i.ah, %i.ah
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ai)
  %sqrt46.i = tail call float @llvm.sqrt.f32(float %i.aj)
  %i.ak = fdiv float 1.000000e+00, %sqrt46.i      ; 2 uses
  %i.al = fneg float %i.ah
  %i.am = fmul float %i.ak, %i.al
  %i.an = fmul float %i.af, %i.ak
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

_Z13btPlaneSpace1RK9btVector3RS_S2_.exit:         ; preds = %bb.d, %bb.e
  %.sroa.052.0 = phi float [ 0.000000e+00, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.sroa.553.0 = phi float [ %i.ad, %bb.d ], [ %i.an, %bb.e ] ; 3 uses
  %.sroa.854.0 = phi float [ %i.ae, %bb.d ], [ 0.000000e+00, %bb.e ] ; 3 uses
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef float %i.aq(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
  %i.as = load float, ptr @gContactBreakingThreshold, align 4, !tbaa !32
  %i.at = fdiv float %i.as, %i.ar                 ; 2 uses
  %i.au = fcmp ogt float %i.at, f0x3EC90FDB
  %spec.store.select = select i1 %i.au, float f0x3EC90FDB, float %i.at
  %i.av = fmul float %.sroa.553.0, %.sroa.553.0
  %i.aw = tail call float @llvm.fmuladd.f32(float %.sroa.052.0, float %.sroa.052.0, float %i.av)
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %.sroa.854.0, float %.sroa.854.0, float %i.aw)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ax)
  %i.ay = fmul float %spec.store.select, 5.000000e-01 ; 2 uses
  %7 = tail call noundef float @sinf(float noundef %i.ay) #9, !tbaa !7
  %i.az = fdiv float %7, %sqrt.i.i.i              ; 2 uses
  %i.ba = fmul float %.sroa.553.0, %i.az          ; 4 uses
  %i.bb = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = insertelement <2 x float> poison, float %.sroa.854.0, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %.sroa.052.0, i64 1
  %i.bf = fmul <2 x float> %i.be, %i.bc           ; 5 uses
  %8 = tail call noundef float @cosf(float noundef %i.ay) #9, !tbaa !7 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !19 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bk = insertelement <2 x float> poison, float %i.ba, i64 1
  %i.bl = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bm = insertelement <2 x float> %i.bl, float %i.ba, i64 0
  %i.bn = insertelement <2 x float> poison, float %8, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = extractelement <2 x float> %i.bf, i64 0 ; 2 uses
  %i.bq = extractelement <2 x float> %i.bf, i64 1 ; 2 uses
  %i.br = shufflevector <2 x float> %i.bk, <2 x float> %i.bf, <2 x i32> <i32 3, i32 1>
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %i.bs = phi i32 [ %i.bh, %.lr.ph ], [ %i.dn, %bb.f ]
  %.060 = phi i32 [ 0, %.lr.ph ], [ %i.dm, %bb.f ] ; 2 uses
  %i.bt = uitofp nneg i32 %.060 to float
  %i.bu = sitofp i32 %i.bs to float
  %i.bv = fdiv nnan float f0x40C90FDB, %i.bu
  %9 = fmul float %i.bv, %i.bt
  %i.bw = fmul float %9, 5.000000e-01             ; 2 uses
  %10 = tail call noundef float @sinf(float noundef %i.bw) #9, !tbaa !7
  %11 = tail call noundef float @cosf(float noundef %i.bw) #9, !tbaa !7 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.bx = load <2 x float>, ptr %i.l, align 4, !tbaa !32 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.bx, %i.bx
  %i.by = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bz = extractelement <2 x float> %i.bx, i64 0 ; 2 uses
  %12 = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.by)
  %i.ca = load float, ptr %i.t, align 4, !tbaa !32 ; 3 uses
  %13 = tail call noundef float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %12)
  %sqrt.i.i.i25 = tail call noundef float @llvm.sqrt.f32(float %13)
  %i.cb = fdiv float %10, %sqrt.i.i.i25           ; 2 uses
  %i.cc = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x float> %i.bx, %i.cd           ; 6 uses
  %i.cf = extractelement <2 x float> %i.ce, i64 0 ; 4 uses
  %i.cg = fmul float %i.ca, %i.cb                 ; 8 uses
  %i.ch = fneg float %i.cf                        ; 2 uses
  %i.ci = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cj = insertelement <2 x float> %i.ci, float %i.cg, i64 0
  %i.ck = fneg <2 x float> %i.cj
  %i.cl = insertelement <2 x float> %i.ci, float %i.cg, i64 1
  %i.cm = fneg <2 x float> %i.cl                  ; 2 uses
  %i.cn = fmul float %8, %i.ch
  %14 = tail call float @llvm.fmuladd.f32(float %11, float %i.bq, float %i.cn)
  %i.co = extractelement <2 x float> %i.cm, i64 0
  %15 = tail call float @llvm.fmuladd.f32(float %i.co, float %i.bp, float %14)
  %16 = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.ba, float %15) ; 4 uses
  %i.cp = fmul <2 x float> %i.bo, %i.cm
  %i.cq = insertelement <2 x float> poison, float %11, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %17 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.bm, <2 x float> %i.cp)
  %18 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.br, <2 x float> %17)
  %19 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.bf, <2 x float> %18) ; 3 uses
  %i.cs = extractelement <2 x float> %19, i64 1   ; 3 uses
  %i.ct = fmul float %i.bq, %i.cf
  %20 = tail call float @llvm.fmuladd.f32(float %11, float %8, float %i.ct)
  %i.cu = extractelement <2 x float> %i.ce, i64 1 ; 3 uses
  %21 = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.ba, float %20)
  %22 = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.bp, float %21) ; 3 uses
  %i.cv = fmul float %11, %16
  %23 = tail call float @llvm.fmuladd.f32(float %22, float %i.cf, float %i.cv)
  %i.cw = extractelement <2 x float> %19, i64 0   ; 2 uses
  %24 = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.cg, float %23)
  %i.cx = fneg float %i.cs
  %i.cy = fneg <2 x float> %19                    ; 2 uses
  %25 = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.cu, float %24)
  %i.cz = fmul float %11, %i.cw
  %26 = tail call float @llvm.fmuladd.f32(float %22, float %i.cu, float %i.cz)
  %27 = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cf, float %26)
  %i.da = fneg float %16
  %28 = tail call float @llvm.fmuladd.f32(float %i.da, float %i.cg, float %27)
  %i.db = fmul float %11, %i.cs
  %i.dc = fmul float %16, %i.ch
  %i.dd = insertelement <2 x float> poison, float %22, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = insertelement <2 x float> %i.cr, float %i.cg, i64 0
  %i.dg = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.dc, i64 1
  %29 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.df, <2 x float> %i.dh)
  %i.di = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dj = insertelement <2 x float> %i.di, float %16, i64 0
  %i.dk = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %30 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.dk, <2 x float> %29)
  %i.dl = insertelement <2 x float> %i.ce, float %i.cg, i64 1
  %31 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.dl, <2 x float> %30)
  %.sroa.0.0.vec.insert.i32 = insertelement <2 x float> poison, float %25, i64 0
  %.sroa.0.4.vec.insert.i33 = insertelement <2 x float> %.sroa.0.0.vec.insert.i32, float %28, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i33, ptr %6, align 8
  store <2 x float> %31, ptr %i.bj, align 8
  call void @_ZN31btConvexPlaneCollisionAlgorithm20collideSingleContactERK12btQuaternionP17btCollisionObjectS4_RK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef %1, ptr noundef %2, ptr nonnull align 8 poison, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.dm = add nuw nsw i32 %.060, 1                ; 2 uses
  %i.dn = load i32, ptr %i.bg, align 4, !tbaa !19 ; 2 uses
  %i.do = icmp slt i32 %i.dm, %i.dn
  br i1 %i.do, label %bb.f, label %.loopexit

.loopexit:                                        ; preds = %bb.f, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit, %bb.b
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !16, !range !22, !noundef !23
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.g, label %_ZN16btManifoldResult20refreshContactPointsEv.exit

bb.g:                                             ; preds = %.loopexit
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 728
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !47
  %.not24 = icmp eq i32 %i.du, 0
  br i1 %.not24, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dv = load ptr, ptr %i.m, align 8, !tbaa !36  ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 728
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !47
  %.not.i = icmp eq i32 %i.dx, 0
  br i1 %.not.i, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 712
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !48
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !49
  %.not1.i = icmp eq ptr %i.dz, %i.eb             ; 2 uses
  %..i = select i1 %.not1.i, i64 16, i64 80
  %.5.i = select i1 %.not1.i, i64 80, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 %..i
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 %.5.i
  tail call void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(744) %i.dv, ptr noundef nonnull align 4 dereferenceable(64) %i.ec, ptr noundef nonnull align 4 dereferenceable(64) %i.ed)
  br label %_ZN16btManifoldResult20refreshContactPointsEv.exit

_ZN16btManifoldResult20refreshContactPointsEv.exit: ; preds = %.sink.split.i, %bb.h, %.loopexit, %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_ZN31btConvexPlaneCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #5 align 2 {
bb.a:
  ret float 1.000000e+00
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN31btConvexPlaneCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !22
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !57   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !58
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  %i.k = shl nsw i32 %i.g, 1
  %i.l = select i1 %.not.i.i, i32 1, i32 %i.k     ; 4 uses
  %i.m = icmp slt i32 %i.g, %i.l
  br i1 %i.m, label %bb.d, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %i.p = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.o, i32 noundef 16)
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !57
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i: ; preds = %bb.e, %bb.d
  %i.q = phi i32 [ %.pre.i, %bb.e ], [ %i.g, %bb.d ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.p, %bb.e ], [ null, %bb.d ] ; 8 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59   ; 9 uses
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i
  %i.u = ptrtoaddr ptr %i.t to i64
  %.0.i.i.i9 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.q to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  %i.v = sub i64 %i.u, %.0.i.i.i9
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond11 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond11, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x ptr>, ptr %i.x, align 8, !tbaa !60
  %wide.load10 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !60
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x ptr> %wide.load, ptr %i.w, align 8, !tbaa !60
  store <2 x ptr> %wide.load10, ptr %i.z, align 8, !tbaa !60
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.prol
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !60
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !51

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ae = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !60
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !60
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !60
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !60
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.1
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !60
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !60
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.2
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !60
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !60
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !52

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load i8, ptr %i.as, align 8, !tbaa !64, !range !22, !noundef !23
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.f, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.t)
  %.pre2.pre.pre.i = load i32, ptr %i.f, align 4, !tbaa !57
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.q, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.f ], [ %i.q, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.av, align 8, !tbaa !64
  store ptr %.0.i.i.i, ptr %i.s, align 8, !tbaa !59
  store i32 %i.l, ptr %i.h, align 8, !tbaa !58
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !60
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i
  %i.aw = phi ptr [ %.pre, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  %i.ax = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %i.g, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !59
  %i.ba = sext i32 %i.ax to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  store ptr %i.aw, ptr %i.bb, align 8, !tbaa !60
  %i.bc = add nsw i32 %i.ax, 1
  store i32 %i.bc, ptr %i.f, align 4, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #7

declare void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #1

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { builtin nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"vtable pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS12btDispatcher", !10, i64 0}
!12 = !{!"_ZTS20btCollisionAlgorithm", !11, i64 8}
!13 = !{!"bool", !5, i64 0}
!14 = !{!"p1 _ZTS20btPersistentManifold", !10, i64 0}
!15 = !{!"_ZTS31btConvexPlaneCollisionAlgorithm", !12, i64 0, !13, i64 16, !14, i64 24, !13, i64 32, !6, i64 36, !6, i64 40}
!16 = !{!15, !13, i64 16}
!17 = !{!15, !14, i64 24}
!18 = !{!15, !13, i64 32}
!19 = !{!15, !6, i64 36}
!20 = !{!15, !6, i64 40}
!21 = !{!12, !11, i64 8}
!22 = !{i8 0, i8 2}
!23 = !{}
!24 = !{!"_ZTS11btMatrix3x3", !5, i64 0}
!25 = !{!"_ZTS9btVector3", !5, i64 0}
!26 = !{!"_ZTS11btTransform", !24, i64 0, !25, i64 48}
!27 = !{!"float", !5, i64 0}
!28 = !{!"p1 _ZTS17btBroadphaseProxy", !10, i64 0}
!29 = !{!"p1 _ZTS16btCollisionShape", !10, i64 0}
!30 = !{!"_ZTS17btCollisionObject", !26, i64 8, !26, i64 72, !25, i64 136, !25, i64 152, !25, i64 168, !13, i64 184, !27, i64 188, !28, i64 192, !29, i64 200, !29, i64 208, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !27, i64 232, !27, i64 236, !27, i64 240, !10, i64 248, !6, i64 256, !27, i64 260, !27, i64 264, !27, i64 268, !13, i64 272, !5, i64 273}
!31 = !{!30, !29, i64 200}
!32 = !{!27, !27, i64 0}
!33 = !{!"_ZTSN36btDiscreteCollisionDetectorInterface6ResultE"}
!34 = !{!"p1 _ZTS17btCollisionObject", !10, i64 0}
!35 = !{!"_ZTS16btManifoldResult", !33, i64 0, !14, i64 8, !26, i64 16, !26, i64 80, !34, i64 144, !34, i64 152, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172}
!36 = !{!35, !14, i64 8}
!37 = !{ptr @_ZN31btConvexPlaneCollisionAlgorithmD2Ev}
!38 = distinct !{!38, i1 true, !"_ZNK11btTransform7inverseEv"}
!39 = distinct !{!39, !38, !"_ZNK11btTransform7inverseEv: argument 0"}
!40 = distinct !{!40, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!41 = distinct !{!41, !40, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!42 = !{!39}
!43 = !{!41, !39}
!44 = !{!5, !5, i64 0}
!45 = !{!"_ZTS13btTypedObject", !6, i64 0}
!46 = !{!"_ZTS20btPersistentManifold", !45, i64 0, !5, i64 8, !10, i64 712, !10, i64 720, !6, i64 728, !27, i64 732, !27, i64 736, !6, i64 740}
!47 = !{!46, !6, i64 728}
!48 = !{!46, !10, i64 712}
!49 = !{!35, !34, i64 144}
!50 = distinct !{!50, !61, !62}
!51 = distinct !{!51, !63}
!52 = distinct !{!52, !61}
!53 = !{!"_ZTS18btAlignedAllocatorIP20btPersistentManifoldLj16EE"}
!54 = !{!"any p2 pointer", !10, i64 0}
!55 = !{!"p2 _ZTS20btPersistentManifold", !54, i64 0}
!56 = !{!"_ZTS20btAlignedObjectArrayIP20btPersistentManifoldE", !53, i64 0, !6, i64 4, !6, i64 8, !55, i64 16, !13, i64 24}
!57 = !{!56, !6, i64 4}
!58 = !{!56, !6, i64 8}
!59 = !{!56, !55, i64 16}
!60 = !{!14, !14, i64 0}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!56, !13, i64 24}
end_hunk_0
