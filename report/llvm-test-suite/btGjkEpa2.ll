Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btGjkEpa2?download=true
inline.NumInlined: 449
inline.NumDeleted: 83
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12gjkepa2_impl3EPA8EvaluateERNS_3GJKERK9btVector3:bb.a
  %i.jy = fsub float %i.jx, %i.hw                 ; 2 uses
  %i.jz = load float, ptr %i.jm, align 4, !tbaa !29
  %i.ka = fsub float %i.jz, %i.hy                 ; 2 uses
  %i.kb = fneg float %i.jy
  %i.kc = fmul float %i.ju, %i.kb
  %i.kd = call float @llvm.fmuladd.f32(float %i.js, float %i.ka, float %i.kc) ; 2 uses
  %i.ke = fneg float %i.ka
  %i.kf = fmul float %i.jq, %i.ke
  %i.kg = call float @llvm.fmuladd.f32(float %i.ju, float %i.jw, float %i.kf) ; 2 uses
  %i.kh = fneg float %i.jw
  %i.ki = fmul float %i.js, %i.kh
  %i.kj = call float @llvm.fmuladd.f32(float %i.jq, float %i.jy, float %i.ki) ; 2 uses
  %i.kk = fmul float %i.kg, %i.kg
  %i.kl = call float @llvm.fmuladd.f32(float %i.kd, float %i.kd, float %i.kk)
  %i.km = call noundef float @llvm.fmuladd.f32(float %i.kj, float %i.kj, float %i.kl)
  %sqrt.i151 = call noundef float @llvm.sqrt.f32(float %i.km) ; 3 uses
  store float %sqrt.i151, ptr %i.jn, align 4, !tbaa !29
  %i.kn = load float, ptr %i.jk, align 4, !tbaa !29
  %i.ko = fsub float %i.kn, %i.hu                 ; 2 uses
  %i.kp = load float, ptr %i.jl, align 4, !tbaa !29
  %i.kq = fsub float %i.kp, %i.hw                 ; 2 uses
  %i.kr = load float, ptr %i.jm, align 4, !tbaa !29
  %i.ks = fsub float %i.kr, %i.hy                 ; 2 uses
  %i.kt = load float, ptr %i.if, align 4, !tbaa !29
  %i.ku = fsub float %i.kt, %i.hu                 ; 2 uses
  %i.kv = load float, ptr %i.ii, align 4, !tbaa !29
  %i.kw = fsub float %i.kv, %i.hw                 ; 2 uses
  %i.kx = load float, ptr %i.il, align 4, !tbaa !29
  %i.ky = fsub float %i.kx, %i.hy                 ; 2 uses
  %i.kz = fneg float %i.kw
  %i.la = fmul float %i.ks, %i.kz
  %i.lb = call float @llvm.fmuladd.f32(float %i.kq, float %i.ky, float %i.la) ; 2 uses
  %i.lc = fneg float %i.ky
  %i.ld = fmul float %i.ko, %i.lc
  %i.le = call float @llvm.fmuladd.f32(float %i.ks, float %i.ku, float %i.ld) ; 2 uses
  %i.lf = fneg float %i.ku
  %i.lg = fmul float %i.kq, %i.lf
  %i.lh = call float @llvm.fmuladd.f32(float %i.ko, float %i.kw, float %i.lg) ; 2 uses
  %i.li = fmul float %i.le, %i.le
  %i.lj = call float @llvm.fmuladd.f32(float %i.lb, float %i.lb, float %i.li)
  %i.lk = call noundef float @llvm.fmuladd.f32(float %i.lh, float %i.lh, float %i.lj)
  %sqrt.i167 = call noundef float @llvm.sqrt.f32(float %i.lk) ; 2 uses
  %i.ll = fadd float %sqrt.i, %sqrt.i151
  %i.lm = fadd float %i.ll, %sqrt.i167            ; 2 uses
  %i.ln = insertelement <2 x float> poison, float %sqrt.i, i64 0
  %i.lo = insertelement <2 x float> %i.ln, float %sqrt.i151, i64 1
  %i.lp = insertelement <2 x float> poison, float %i.lm, i64 0
  %i.lq = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lr = fdiv <2 x float> %i.lo, %i.lq
  store <2 x float> %i.lr, ptr %i.jj, align 8, !tbaa !29
  %i.ls = fdiv float %sqrt.i167, %i.lm
  store float %i.ls, ptr %i.jo, align 8, !tbaa !29
  %i.lt = load i32, ptr %0, align 8, !tbaa !50
  br label %bb.af

.thread281:                                       ; preds = %bb.l, %bb.b, %bb.a
  store i32 8, ptr %0, align 8, !tbaa !50
  %i.lu = load <2 x float>, ptr %2, align 4, !tbaa !29 ; 4 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !29 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.lu, %i.lu
  %i.ly = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.lz = extractelement <2 x float> %i.lu, i64 0 ; 2 uses
  %i.ma = tail call float @llvm.fmuladd.f32(float %i.lz, float %i.lz, float %i.ly)
  %i.mb = tail call float @llvm.fmuladd.f32(float %i.lw, float %i.lw, float %i.ma) ; 2 uses
  %i.mc = fcmp ogt float %i.mb, 0.000000e+00
  br i1 %i.mc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.thread281
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.md = fneg float %i.lw
  %i.me = fneg <2 x float> %i.lu
  %sqrt.i173 = tail call noundef float @llvm.sqrt.f32(float %i.mb)
  %i.mf = fdiv float 1.000000e+00, %sqrt.i173     ; 2 uses
  %i.mg = insertelement <2 x float> poison, float %i.mf, i64 0
  %i.mh = shufflevector <2 x float> %i.mg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mi = fmul <2 x float> %i.mh, %i.me
  %i.mj = fmul float %i.mf, %i.md
  %.sroa.3.12.vec.insert.i.i176 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.mj, i64 0
  store <2 x float> %i.mi, ptr %i.lx, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i176, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !30
  br label %bb.ae

bb.ad:                                            ; preds = %.thread281
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.lx, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float 0.000000e+00, ptr %i.mk, align 8, !tbaa !79
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.mm, align 8, !tbaa !53
  %i.mn = load ptr, ptr %i.b, align 8, !tbaa !35
  store ptr %i.mn, ptr %i.ml, align 8, !tbaa !35
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 1.000000e+00, ptr %i.mo, align 8, !tbaa !29
  br label %bb.af

bb.af:                                            ; preds = %.loopexit, %bb.ae
  %.1 = phi i32 [ 8, %bb.ae ], [ %i.lt, %.loopexit ]
  ret i32 %.1
}

; Function Attrs: uwtable
define dso_local noundef float @_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, float noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(56) initializes((0, 36)) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !guid !81 {
bb.a:
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %"struct.gjkepa2_impl::MinkowskiDiff", align 8 ; 25 uses
  %7 = alloca %class.btSphereShape, align 8       ; 13 uses
  %8 = alloca %class.btTransform, align 4         ; 11 uses
  %9 = alloca %"struct.gjkepa2_impl::GJK", align 8 ; 10 uses
  %10 = alloca %class.btVector3, align 16         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7)
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV13btSphereShape, i64 16), ptr %7, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 8, ptr %i.a, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 40
  store float %1, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 56
  store float %1, ptr %i.c, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  store float 1.000000e+00, ptr %8, align 4, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.g, align 4, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !43
  call fastcc void @_ZN12gjkepa2_implL10InitializeEPK13btConvexShapeRK11btTransformS2_S5_RN15btGjkEpaSolver28sResultsERNS_13MinkowskiDiffEb(ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull %7, ptr noundef nonnull align 4 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(144) %6, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 440
  store i32 0, ptr %i.j, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i32 2, ptr %i.k, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 444
  store i32 0, ptr %i.l, align 4, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 160
  store float 0.000000e+00, ptr %i.m, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %10, align 16, !tbaa !29
  %i.n = invoke noundef i32 @_ZN12gjkepa2_impl3GJK8EvaluateERKNS_13MinkowskiDiffERK9btVector3(ptr noundef nonnull align 8 dereferenceable(460) %9, ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 4 dereferenceable(16) %10)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  switch i32 %i.n, label %bb.r [
    i32 0, label %.preheader
    i32 1, label %bb.m
  ]

.preheader:                                       ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 448 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !28
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  %.elt2.i5.i = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 100
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 120
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %.loopexit.split-lp

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.am = phi ptr [ %i.p, %.lr.ph ], [ %i.ds, %bb.j ] ; 2 uses
  %11 = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %27, %bb.j ]
  %i.an = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %20, %bb.j ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !29 ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !35
  %i.at = load ptr, ptr %6, align 8, !tbaa !37
  %.unpack.i4.i = load i64, ptr %i.s, align 8, !tbaa !38 ; 3 uses
  %.unpack3.i6.i = load i64, ptr %.elt2.i5.i, align 8, !tbaa !38
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %.unpack3.i6.i ; 2 uses
  %i.av = and i64 %.unpack.i4.i, 1
  %.not.i7.i = icmp eq i64 %i.av, 0
  br i1 %.not.i7.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !40
  %i.ax = getelementptr i8, ptr %i.aw, i64 %.unpack.i4.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 -1
  %i.az = load ptr, ptr %i.ay, align 8, !nosanitize !41
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ba = inttoptr i64 %.unpack.i4.i to ptr
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i

_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i: ; preds = %bb.f, %bb.e
  %i.bb = phi ptr [ %i.az, %bb.e ], [ %i.ba, %bb.f ]
  %i.bc = invoke { <2 x float>, <2 x float> } %i.bb(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 4 dereferenceable(16) %i.as)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !80 ; 2 uses

bb.g:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i
  %i.bd = extractvalue { <2 x float>, <2 x float> } %i.bc, 0
  %i.be = extractvalue { <2 x float>, <2 x float> } %i.bc, 1
  %12 = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.aq, i64 0
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %14 = shufflevector <2 x float> %i.bd, <2 x float> %i.be, <4 x i32> <i32 1, i32 0, i32 2, i32 poison>
  %15 = insertelement <4 x float> %14, float 1.000000e+00, i64 3
  %16 = fmul <4 x float> %13, %15
  %17 = fadd <4 x float> %11, %16
  %i.bf = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !35 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load float, ptr %i.bh, align 4, !tbaa !29
  %i.bl = fneg float %i.bk                        ; 2 uses
  %i.bm = load float, ptr %i.bi, align 4, !tbaa !29
  %i.bn = fneg float %i.bm                        ; 2 uses
  %i.bo = load float, ptr %i.bj, align 4, !tbaa !29
  %i.bp = fneg float %i.bo                        ; 2 uses
  %i.bq = load ptr, ptr %i.t, align 8, !tbaa !37
  %.unpack.i.i = load i64, ptr %i.s, align 8, !tbaa !38 ; 3 uses
  %.unpack3.i.i = load i64, ptr %.elt2.i5.i, align 8, !tbaa !38
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %.unpack3.i.i ; 2 uses
  %i.bs = and i64 %.unpack.i.i, 1
  %.not.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !40
  %i.bu = getelementptr i8, ptr %i.bt, i64 %.unpack.i.i
  %i.bv = getelementptr i8, ptr %i.bu, i64 -1
  %i.bw = load ptr, ptr %i.bv, align 8, !nosanitize !41
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support1ERK9btVector3.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bx = inttoptr i64 %.unpack.i.i to ptr
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support1ERK9btVector3.exit.i

_ZNK12gjkepa2_impl13MinkowskiDiff8Support1ERK9btVector3.exit.i: ; preds = %bb.i, %bb.h
  %i.by = phi ptr [ %i.bw, %bb.h ], [ %i.bx, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.bz = load <2 x float>, ptr %i.v, align 8
  %i.ca = load float, ptr %i.x, align 8, !tbaa !29
  %i.cb = load <2 x float>, ptr %i.u, align 8, !tbaa !29 ; 2 uses
  %i.cc = load <2 x float>, ptr %i.w, align 8, !tbaa !29 ; 2 uses
  %i.cd = shufflevector <2 x float> %i.cb, <2 x float> %i.cc, <2 x i32> <i32 1, i32 3>
  %i.ce = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x float> %i.cd, %i.cf
  %i.ch = shufflevector <2 x float> %i.cb, <2 x float> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.ci = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.cj, <2 x float> %i.cg)
  %i.cl = insertelement <2 x float> %i.bz, float %i.ca, i64 1
  %i.cm = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.cn, <2 x float> %i.ck)
  %i.cp = load float, ptr %i.y, align 8, !tbaa !29
  %i.cq = load float, ptr %i.z, align 4, !tbaa !29
  %i.cr = fmul float %i.cq, %i.bn
  %i.cs = call float @llvm.fmuladd.f32(float %i.cp, float %i.bl, float %i.cr)
  %i.ct = load float, ptr %i.aa, align 8, !tbaa !29
  %i.cu = call noundef float @llvm.fmuladd.f32(float %i.ct, float %i.bp, float %i.cs)
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cu, i64 0
  store <2 x float> %i.co, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %i.ab, align 8
  %i.cv = invoke { <2 x float>, <2 x float> } %i.by(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 4 dereferenceable(16) %5)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !80 ; 2 uses

bb.j:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support1ERK9btVector3.exit.i
  %i.cw = extractvalue { <2 x float>, <2 x float> } %i.cv, 0 ; 4 uses
  %i.cx = extractvalue { <2 x float>, <2 x float> } %i.cv, 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %i.cw, i64 0
  %.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %i.cw, i64 1
  %i.cy = load <2 x float>, ptr %i.ad, align 8
  %.sroa.5.8.vec.extract.i.i = extractelement <2 x float> %i.cx, i64 0
  %i.cz = load float, ptr %i.ag, align 8, !tbaa !29
  %i.da = load float, ptr %i.aj, align 8, !tbaa !29
  %i.db = load float, ptr %i.ak, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.dc = load <2 x float>, ptr %i.ac, align 8, !tbaa !29 ; 2 uses
  %i.dd = load <2 x float>, ptr %i.af, align 8, !tbaa !29 ; 2 uses
  %i.de = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.df = shufflevector <2 x float> %i.dc, <2 x float> %i.dd, <2 x i32> <i32 1, i32 3>
  %i.dg = fmul <2 x float> %i.de, %i.df
  %i.dh = shufflevector <2 x float> %i.dc, <2 x float> %i.dd, <2 x i32> <i32 0, i32 2>
  %i.di = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.di, <2 x float> %i.dg)
  %i.dk = insertelement <2 x float> %i.cy, float %i.cz, i64 1
  %i.dl = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.dl, <2 x float> %i.dj)
  %i.dn = load <2 x float>, ptr %i.ae, align 8, !tbaa !29
  %i.do = fadd <2 x float> %i.dn, %i.dm
  %18 = insertelement <2 x float> poison, float %i.aq, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x float> %19, %i.do
  %20 = fadd <2 x float> %i.an, %i.dp             ; 2 uses
  %21 = load float, ptr %i.ah, align 8, !tbaa !29
  %22 = load float, ptr %i.ai, align 4, !tbaa !29
  %i.dq = fmul float %.sroa.0.4.vec.extract.i.i, %22
  %23 = call float @llvm.fmuladd.f32(float %21, float %.sroa.0.0.vec.extract.i.i, float %i.dq)
  %24 = call noundef float @llvm.fmuladd.f32(float %i.da, float %.sroa.5.8.vec.extract.i.i, float %23)
  %i.dr = fadd float %i.db, %24
  %25 = fmul float %i.aq, %i.dr
  %26 = insertelement <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float poison>, float %25, i64 3
  %27 = fadd <4 x float> %17, %26                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ds = load ptr, ptr %i.o, align 8, !tbaa !26  ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !28
  %i.dv = zext i32 %i.du to i64
  %i.dw = icmp samesign ult i64 %indvars.iv.next, %i.dv
  br i1 %i.dw, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %.preheader
  %28 = phi <4 x float> [ zeroinitializer, %.preheader ], [ %27, %bb.j ] ; 8 uses
  %i.dx = phi <2 x float> [ zeroinitializer, %.preheader ], [ %20, %bb.j ] ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dz = load <2 x float>, ptr %i.dy, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !29
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !29
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !29
  %29 = extractelement <4 x float> %28, i64 0
  %i.ei = fmul float %29, %i.eh
  %30 = extractelement <4 x float> %28, i64 1
  %i.ej = call float @llvm.fmuladd.f32(float %i.ef, float %30, float %i.ei)
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !29
  %31 = extractelement <4 x float> %28, i64 2
  %i.em = call noundef float @llvm.fmuladd.f32(float %i.el, float %31, float %i.ej)
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !29
  %i.ep = fadd float %i.eo, %i.em                 ; 2 uses
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ep, i64 0
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.er = load <2 x float>, ptr %3, align 4, !tbaa !29 ; 2 uses
  %i.es = load <2 x float>, ptr %i.eb, align 4, !tbaa !29 ; 2 uses
  %i.et = shufflevector <4 x float> %28, <4 x float> poison, <2 x i32> zeroinitializer
  %i.eu = shufflevector <2 x float> %i.er, <2 x float> %i.es, <2 x i32> <i32 1, i32 3>
  %i.ev = fmul <2 x float> %i.et, %i.eu
  %i.ew = shufflevector <2 x float> %i.er, <2 x float> %i.es, <2 x i32> <i32 0, i32 2>
  %32 = shufflevector <4 x float> %28, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ex = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %32, <2 x float> %i.ev)
  %i.ey = insertelement <2 x float> %i.dz, float %i.ed, i64 1
  %33 = shufflevector <4 x float> %28, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ez = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %33, <2 x float> %i.ex)
  %i.fa = load <2 x float>, ptr %i.ea, align 4, !tbaa !29
  %i.fb = fadd <2 x float> %i.fa, %i.ez           ; 2 uses
  store <2 x float> %i.fb, ptr %i.eq, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.56.0..sroa_idx, align 4, !tbaa !30
  %i.fc = load <2 x float>, ptr %3, align 4, !tbaa !29 ; 2 uses
  %i.fd = load <2 x float>, ptr %i.dy, align 4
  %i.fe = load <2 x float>, ptr %i.eb, align 4, !tbaa !29 ; 2 uses
  %i.ff = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fg = shufflevector <2 x float> %i.fc, <2 x float> %i.fe, <2 x i32> <i32 1, i32 3>
  %i.fh = fmul <2 x float> %i.ff, %i.fg
  %i.fi = shufflevector <2 x float> %i.fc, <2 x float> %i.fe, <2 x i32> <i32 0, i32 2>
  %i.fj = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.fj, <2 x float> %i.fh)
  %i.fl = load float, ptr %i.ec, align 4, !tbaa !29
  %i.fm = insertelement <2 x float> %i.fd, float %i.fl, i64 1
  %34 = shufflevector <4 x float> %28, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.fn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %34, <2 x float> %i.fk)
  %i.fo = load <2 x float>, ptr %i.ea, align 4, !tbaa !29
  %i.fp = fadd <2 x float> %i.fo, %i.fn           ; 2 uses
  %i.fq = load float, ptr %i.ee, align 4, !tbaa !29
  %i.fr = load float, ptr %i.eg, align 4, !tbaa !29
  %i.fs = extractelement <2 x float> %i.dx, i64 1
  %i.ft = fmul float %i.fs, %i.fr
  %i.fu = extractelement <2 x float> %i.dx, i64 0
  %i.fv = call float @llvm.fmuladd.f32(float %i.fq, float %i.fu, float %i.ft)
  %i.fw = load float, ptr %i.ek, align 4, !tbaa !29
  %35 = extractelement <4 x float> %28, i64 3
  %i.fx = call noundef float @llvm.fmuladd.f32(float %i.fw, float %35, float %i.fv)
  %i.fy = load float, ptr %i.en, align 4, !tbaa !29
  %i.fz = fadd float %i.fy, %i.fx                 ; 2 uses
  %.sroa.3.12.vec.insert.i.i74 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fz, i64 0
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 20
  store <2 x float> %i.fp, ptr %i.ga, align 4
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 28
  store <2 x float> %.sroa.3.12.vec.insert.i.i74, ptr %.sroa.54.0..sroa_idx, align 4, !tbaa !30
  %i.gb = fsub <2 x float> %i.fp, %i.fb           ; 4 uses
  %i.gc = fsub float %i.fz, %i.ep                 ; 3 uses
  %i.gd = invoke noundef float @_ZNK13btConvexShape19getMarginNonVirtualEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %._crit_edge
  %i.ge = invoke noundef float @_ZNK13btConvexShape19getMarginNonVirtualEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %foldExtExtBinop = fmul <2 x float> %i.gb, %i.gb
  %i.gf = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.gg = extractelement <2 x float> %i.gb, i64 0 ; 2 uses
  %i.gh = call float @llvm.fmuladd.f32(float %i.gg, float %i.gg, float %i.gf)
  %i.gi = call noundef float @llvm.fmuladd.f32(float %i.gc, float %i.gc, float %i.gh)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.gi) ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 36
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.gk = fadd float %i.gd, %i.ge                 ; 3 uses
  %i.gl = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.gm = insertelement <2 x float> poison, float %i.gl, i64 0
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.go = fmul <2 x float> %i.gb, %i.gn           ; 2 uses
  %i.gp = fmul float %i.gc, %i.gl                 ; 2 uses
  %.sroa.3.12.vec.insert.i.i84 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gp, i64 0
  store <2 x float> %i.go, ptr %i.gj, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i84, ptr %.sroa.52.0..sroa_idx, align 4, !tbaa !30
  %i.gq = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fmul <2 x float> %i.gr, %i.go
  %i.gt = fmul float %i.gk, %i.gp
  %i.gu = load <2 x float>, ptr %i.eq, align 4, !tbaa !29
  %i.gv = fadd <2 x float> %i.gs, %i.gu
  store <2 x float> %i.gv, ptr %i.eq, align 4, !tbaa !29
  %i.gw = load float, ptr %.sroa.56.0..sroa_idx, align 4, !tbaa !29
  %i.gx = fadd float %i.gt, %i.gw
  store float %i.gx, ptr %.sroa.56.0..sroa_idx, align 4, !tbaa !29
  %i.gy = fsub float %sqrt.i, %i.gk
  br label %bb.r

bb.m:                                             ; preds = %bb.b
  %i.gz = invoke noundef zeroext i1 @_ZN15btGjkEpaSolver211PenetrationEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsEb(ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull %7, ptr noundef nonnull align 4 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(56) %4, i1 noundef zeroext true)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  br i1 %i.gz, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.hc = load <2 x float>, ptr %i.ha, align 4, !tbaa !29
  %i.hd = load <2 x float>, ptr %i.hb, align 4, !tbaa !29
  %i.he = fsub <2 x float> %i.hc, %i.hd           ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !29
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !29
  %i.hj = fsub float %i.hg, %i.hi                 ; 3 uses
  %foldExtExtBinop200 = fmul <2 x float> %i.he, %i.he
  %i.hk = extractelement <2 x float> %foldExtExtBinop200, i64 1
  %i.hl = extractelement <2 x float> %i.he, i64 0 ; 2 uses
  %i.hm = call float @llvm.fmuladd.f32(float %i.hl, float %i.hl, float %i.hk)
  %i.hn = call noundef float @llvm.fmuladd.f32(float %i.hj, float %i.hj, float %i.hm)
  %sqrt.i97 = call noundef float @llvm.sqrt.f32(float %i.hn) ; 3 uses
  %i.ho = fcmp ult float %sqrt.i97, f0x34000000
  br i1 %i.ho, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hp = fdiv float 1.000000e+00, %sqrt.i97      ; 2 uses
  %i.hq = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hs = fmul <2 x float> %i.he, %i.hr
  %i.ht = fmul float %i.hj, %i.hp
  %.sroa.3.12.vec.insert.i.i100 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ht, i64 0
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 36
  store <2 x float> %i.hs, ptr %i.hu, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 44
  store <2 x float> %.sroa.3.12.vec.insert.i.i100, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !30
  br label %bb.q

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i, %_ZNK12gjkepa2_impl13MinkowskiDiff8Support1ERK9btVector3.exit.i, %._crit_edge, %bb.k, %bb.m
  %lpad.loopexit.split-lp202 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.hv = fneg float %sqrt.i97
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.b, %bb.q, %bb.l
  %.047 = phi float [ %i.gy, %bb.l ], [ %i.hv, %bb.q ], [ f0x7F7FFFFF, %bb.b ], [ f0x7F7FFFFF, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  ret float %.047

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.c
  %.pn55.pn.pn.pn = phi { ptr, i32 } [ %i.al, %bb.c ], [ %lpad.loopexit.split-lp202, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  resume { ptr, i32 } %.pn55.pn.pn.pn

bb.t:                                             ; preds = %.loopexit.split-lp
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  call void @__clang_call_terminate(ptr %i.hx) #11
  unreachable
}

declare i32 @__gxx_personality_v0(...)

declare noundef float @_ZNK13btConvexShape19getMarginNonVirtualEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !guid !87 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN15btGjkEpaSolver214SignedDistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(56) initializes((0, 36)) %5) local_unnamed_addr #7 align 2 !guid !88 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN15btGjkEpaSolver28DistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(56) %5)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN15btGjkEpaSolver211PenetrationEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsEb(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(56) %5, i1 noundef zeroext false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare { <2 x float>, <2 x float> } @_ZNK13btConvexShape31localGetSupportVertexNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(16)) #4

declare { <2 x float>, <2 x float> } @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(16)) #4

; Function Attrs: uwtable
define linkonce_odr dso_local noundef float @_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_PfRj(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #1 comdat align 2 !guid !89 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load <2 x float>, ptr %0, align 4, !tbaa !29 ; 5 uses
  %i.h = load <2 x float>, ptr %1, align 4, !tbaa !29 ; 5 uses
  %i.i = load <2 x float>, ptr %i.a, align 4, !tbaa !29 ; 2 uses
  %i.j = load <2 x float>, ptr %i.b, align 4, !tbaa !29 ; 3 uses
  %i.k = fsub <2 x float> %i.g, %i.h              ; 3 uses
  %i.l = fsub <2 x float> %i.i, %i.j              ; 2 uses
  %i.m = load <2 x float>, ptr %2, align 4, !tbaa !29 ; 3 uses
  %i.n = load <2 x float>, ptr %i.e, align 4, !tbaa !29 ; 3 uses
  %i.o = fsub <2 x float> %i.h, %i.m              ; 2 uses
  %i.p = fsub <2 x float> %i.j, %i.n              ; 3 uses
  %i.q = extractelement <2 x float> %i.g, i64 0   ; 5 uses
  %foldExtExtBinop = fsub <2 x float> %i.m, %i.g  ; 2 uses
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %i.s = extractelement <2 x float> %i.g, i64 1   ; 7 uses
  %i.t = extractelement <2 x float> %i.n, i64 0   ; 2 uses
  %i.u = fsub float %i.t, %i.s                    ; 4 uses
  %i.v = extractelement <2 x float> %i.n, i64 1   ; 2 uses
  %i.w = extractelement <2 x float> %i.i, i64 1   ; 7 uses
  %i.x = fsub float %i.v, %i.w                    ; 4 uses
  %i.y = extractelement <2 x float> %i.p, i64 1   ; 5 uses
  %i.z = fneg float %i.y
  %i.aa = extractelement <2 x float> %i.k, i64 0  ; 3 uses
  %i.ab = fmul float %i.aa, %i.z
  %i.ac = extractelement <2 x float> %i.l, i64 1  ; 3 uses
  %i.ad = extractelement <2 x float> %i.o, i64 0  ; 5 uses
end_hunk_0
