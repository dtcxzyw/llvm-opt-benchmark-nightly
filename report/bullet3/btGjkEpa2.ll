Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGjkEpa2?download=true
inline.NumInlined: 453
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12gjkepa2_impl3EPA8EvaluateERNS_3GJKERK9btVector3:bb.a
  %i.js = call float @llvm.fmuladd.f32(float %i.jg, float %i.ji, float %i.jr) ; 2 uses
  %i.jt = fneg float %i.ji
  %i.ju = fmul float %i.je, %i.jt
  %i.jv = call float @llvm.fmuladd.f32(float %i.jc, float %i.jk, float %i.ju) ; 2 uses
  %i.jw = fmul float %i.js, %i.js
  %i.jx = call float @llvm.fmuladd.f32(float %i.jp, float %i.jp, float %i.jw)
  %i.jy = call noundef float @llvm.fmuladd.f32(float %i.jv, float %i.jv, float %i.jx)
  %sqrt.i147 = call noundef float @llvm.sqrt.f32(float %i.jy) ; 3 uses
  store float %sqrt.i147, ptr %i.iz, align 4, !tbaa !28
  %i.jz = load float, ptr %i.iw, align 4, !tbaa !28
  %i.ka = fsub float %i.jz, %i.hg                 ; 2 uses
  %i.kb = load float, ptr %i.ix, align 4, !tbaa !28
  %i.kc = fsub float %i.kb, %i.hi                 ; 2 uses
  %i.kd = load float, ptr %i.iy, align 4, !tbaa !28
  %i.ke = fsub float %i.kd, %i.hk                 ; 2 uses
  %i.kf = load float, ptr %i.hr, align 4, !tbaa !28
  %i.kg = fsub float %i.kf, %i.hg                 ; 2 uses
  %i.kh = load float, ptr %i.hu, align 4, !tbaa !28
  %i.ki = fsub float %i.kh, %i.hi                 ; 2 uses
  %i.kj = load float, ptr %i.hx, align 4, !tbaa !28
  %i.kk = fsub float %i.kj, %i.hk                 ; 2 uses
  %i.kl = fneg float %i.ki
  %i.km = fmul float %i.ke, %i.kl
  %i.kn = call float @llvm.fmuladd.f32(float %i.kc, float %i.kk, float %i.km) ; 2 uses
  %i.ko = fneg float %i.kk
  %i.kp = fmul float %i.ka, %i.ko
  %i.kq = call float @llvm.fmuladd.f32(float %i.ke, float %i.kg, float %i.kp) ; 2 uses
  %i.kr = fneg float %i.kg
  %i.ks = fmul float %i.kc, %i.kr
  %i.kt = call float @llvm.fmuladd.f32(float %i.ka, float %i.ki, float %i.ks) ; 2 uses
  %i.ku = fmul float %i.kq, %i.kq
  %i.kv = call float @llvm.fmuladd.f32(float %i.kn, float %i.kn, float %i.ku)
  %i.kw = call noundef float @llvm.fmuladd.f32(float %i.kt, float %i.kt, float %i.kv)
  %sqrt.i163 = call noundef float @llvm.sqrt.f32(float %i.kw) ; 2 uses
  %i.kx = fadd float %sqrt.i, %sqrt.i147
  %i.ky = fadd float %i.kx, %sqrt.i163            ; 2 uses
  %i.kz = insertelement <2 x float> poison, float %sqrt.i, i64 0
  %i.la = insertelement <2 x float> %i.kz, float %sqrt.i147, i64 1
  %i.lb = insertelement <2 x float> poison, float %i.ky, i64 0
  %i.lc = shufflevector <2 x float> %i.lb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ld = fdiv <2 x float> %i.la, %i.lc
  store <2 x float> %i.ld, ptr %i.iv, align 8, !tbaa !28
  %i.le = fdiv float %sqrt.i163, %i.ky
  store float %i.le, ptr %i.ja, align 8, !tbaa !28
  %i.lf = load i32, ptr %0, align 8, !tbaa !51
  br label %bb.ac

.thread267:                                       ; preds = %bb.l, %bb.b, %bb.a
  store i32 8, ptr %0, align 8, !tbaa !51
  %i.lg = load <2 x float>, ptr %2, align 4, !tbaa !28 ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.li = load float, ptr %i.lh, align 4, !tbaa !28 ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.lg, %i.lg
  %i.lk = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ll = extractelement <2 x float> %i.lg, i64 0 ; 2 uses
  %i.lm = tail call float @llvm.fmuladd.f32(float %i.ll, float %i.ll, float %i.lk)
  %i.ln = tail call float @llvm.fmuladd.f32(float %i.li, float %i.li, float %i.lm) ; 2 uses
  %i.lo = fcmp ogt float %i.ln, 0.000000e+00
  br i1 %i.lo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.thread267
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.lp = fneg float %i.li
  %i.lq = fneg <2 x float> %i.lg
  %sqrt.i169 = tail call noundef float @llvm.sqrt.f32(float %i.ln)
  %i.lr = fdiv float 1.000000e+00, %sqrt.i169     ; 2 uses
  %i.ls = insertelement <2 x float> poison, float %i.lr, i64 0
  %i.lt = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lu = fmul <2 x float> %i.lt, %i.lq
  %i.lv = fmul float %i.lr, %i.lp
  %.sroa.3.12.vec.insert.i.i172 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lv, i64 0
  store <2 x float> %i.lu, ptr %i.lj, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i172, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !29
  br label %bb.ab

bb.aa:                                            ; preds = %.thread267
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.lj, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float 0.000000e+00, ptr %i.lw, align 8, !tbaa !82
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.ly, align 8, !tbaa !54
  %i.lz = load ptr, ptr %i.b, align 8, !tbaa !34
  store ptr %i.lz, ptr %i.lx, align 8, !tbaa !34
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 1.000000e+00, ptr %i.ma, align 8, !tbaa !28
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit269, %bb.ab
  %.1 = phi i32 [ 8, %bb.ab ], [ %i.lf, %.loopexit269 ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, float noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(56) initializes((0, 36)) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %"struct.gjkepa2_impl::MinkowskiDiff", align 8 ; 25 uses
  %7 = alloca %class.btSphereShape, align 8       ; 17 uses
  %8 = alloca %class.btTransform, align 4         ; 11 uses
  %9 = alloca %"struct.gjkepa2_impl::GJK", align 8 ; 10 uses
  %10 = alloca %class.btVector3, align 16         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %7)
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTV13btSphereShape, i64 16), ptr %7, align 8, !tbaa !39
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 8, ptr %i.a, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 32
  store <2 x float> splat (float 1.000000e+00), ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 40
  store float 1.000000e+00, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.d, i8 0, i64 20, i1 false)
  store float %1, ptr %i.e, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 64
  store float %1, ptr %i.f, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 68
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  store float 1.000000e+00, ptr %8, align 4, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 4, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.k, align 4, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !43
  call fastcc void @_ZN12gjkepa2_implL10InitializeEPK13btConvexShapeRK11btTransformS2_S5_RN15btGjkEpaSolver28sResultsERNS_13MinkowskiDiffEb(ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull %7, ptr noundef nonnull align 4 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(144) %6, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 440
  store i32 0, ptr %i.n, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store i32 2, ptr %i.o, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 444
  store i32 0, ptr %i.p, align 4, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 160
  store float 0.000000e+00, ptr %i.q, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %10, align 16, !tbaa !28
  %i.r = invoke noundef i32 @_ZN12gjkepa2_impl3GJK8EvaluateERKNS_13MinkowskiDiffERK9btVector3(ptr noundef nonnull align 8 dereferenceable(460) %9, ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 4 dereferenceable(16) %10)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  switch i32 %i.r, label %bb.r [
    i32 0, label %.preheader
    i32 1, label %bb.m
  ]

.preheader:                                       ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 448 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !27
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  %.elt2.i5.i = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 100
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 120
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %.loopexit.split-lp

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.aq = phi ptr [ %i.t, %.lr.ph ], [ %i.ea, %bb.j ] ; 2 uses
  %11 = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %23, %bb.j ]
  %i.ar = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %20, %bb.j ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  %i.au = load float, ptr %i.at, align 4, !tbaa !28 ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !34
  %i.ax = load ptr, ptr %6, align 8, !tbaa !36
  %.unpack.i4.i = load i64, ptr %i.w, align 8, !tbaa !37 ; 3 uses
  %.unpack3.i6.i = load i64, ptr %.elt2.i5.i, align 8, !tbaa !37
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %.unpack3.i6.i ; 2 uses
  %i.az = and i64 %.unpack.i4.i, 1
  %.not.i7.i = icmp eq i64 %i.az, 0
  br i1 %.not.i7.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !39
  %i.bb = getelementptr i8, ptr %i.ba, i64 %.unpack.i4.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 -1
  %i.bd = load ptr, ptr %i.bc, align 8, !nosanitize !40
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i

bb.f:                                             ; preds = %bb.d
  %i.be = inttoptr i64 %.unpack.i4.i to ptr
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i

_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i: ; preds = %bb.f, %bb.e
  %i.bf = phi ptr [ %i.bd, %bb.e ], [ %i.be, %bb.f ]
  %i.bg = invoke { <2 x float>, <2 x float> } %i.bf(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 4 dereferenceable(16) %i.aw)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !83 ; 2 uses

bb.g:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i
  %i.bh = extractvalue { <2 x float>, <2 x float> } %i.bg, 0
  %i.bi = extractvalue { <2 x float>, <2 x float> } %i.bg, 1
  %12 = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.au, i64 0
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %14 = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <4 x i32> <i32 1, i32 0, i32 2, i32 poison>
  %15 = insertelement <4 x float> %14, float 1.000000e+00, i64 3
  %16 = fmul <4 x float> %13, %15
  %17 = fadd <4 x float> %11, %16
  %i.bj = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !34 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = load float, ptr %i.bl, align 4, !tbaa !28
  %i.bp = fneg float %i.bo                        ; 2 uses
  %i.bq = load float, ptr %i.bm, align 4, !tbaa !28
  %i.br = fneg float %i.bq                        ; 2 uses
  %i.bs = load float, ptr %i.bn, align 4, !tbaa !28
  %i.bt = fneg float %i.bs                        ; 2 uses
  %i.bu = load ptr, ptr %i.x, align 8, !tbaa !36
  %.unpack.i.i = load i64, ptr %i.w, align 8, !tbaa !37 ; 3 uses
  %.unpack3.i.i = load i64, ptr %.elt2.i5.i, align 8, !tbaa !37
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %.unpack3.i.i ; 2 uses
  %i.bw = and i64 %.unpack.i.i, 1
  %.not.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !39
  %i.by = getelementptr i8, ptr %i.bx, i64 %.unpack.i.i
  %i.bz = getelementptr i8, ptr %i.by, i64 -1
  %i.ca = load ptr, ptr %i.bz, align 8, !nosanitize !40
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support1ERK9btVector3.exit.i

bb.i:                                             ; preds = %bb.g
  %i.cb = inttoptr i64 %.unpack.i.i to ptr
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support1ERK9btVector3.exit.i

_ZNK12gjkepa2_impl13MinkowskiDiff8Support1ERK9btVector3.exit.i: ; preds = %bb.i, %bb.h
  %i.cc = phi ptr [ %i.ca, %bb.h ], [ %i.cb, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.cd = load <2 x float>, ptr %i.z, align 8
  %i.ce = load float, ptr %i.ab, align 8, !tbaa !28
  %i.cf = load <2 x float>, ptr %i.y, align 8, !tbaa !28 ; 2 uses
  %i.cg = load <2 x float>, ptr %i.aa, align 8, !tbaa !28 ; 2 uses
  %i.ch = shufflevector <2 x float> %i.cf, <2 x float> %i.cg, <2 x i32> <i32 1, i32 3>
  %i.ci = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %i.ch, %i.cj
  %i.cl = shufflevector <2 x float> %i.cf, <2 x float> %i.cg, <2 x i32> <i32 0, i32 2>
  %i.cm = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.cn, <2 x float> %i.ck)
  %i.cp = insertelement <2 x float> %i.cd, float %i.ce, i64 1
  %i.cq = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.cr, <2 x float> %i.co)
  %i.ct = load float, ptr %i.ac, align 8, !tbaa !28
  %i.cu = load float, ptr %i.ad, align 4, !tbaa !28
  %i.cv = fmul float %i.cu, %i.br
  %i.cw = call float @llvm.fmuladd.f32(float %i.ct, float %i.bp, float %i.cv)
  %i.cx = load float, ptr %i.ae, align 8, !tbaa !28
  %i.cy = call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.bt, float %i.cw)
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cy, i64 0
  store <2 x float> %i.cs, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %i.af, align 8
  %i.cz = invoke { <2 x float>, <2 x float> } %i.cc(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 4 dereferenceable(16) %5)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !83 ; 2 uses

bb.j:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support1ERK9btVector3.exit.i
  %i.da = extractvalue { <2 x float>, <2 x float> } %i.cz, 0 ; 4 uses
  %i.db = extractvalue { <2 x float>, <2 x float> } %i.cz, 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %i.da, i64 0
  %.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %i.da, i64 1
  %.sroa.5.8.vec.extract.i.i = extractelement <2 x float> %i.db, i64 0
  %i.dc = load <2 x float>, ptr %i.aj, align 8
  %i.dd = load float, ptr %i.ak, align 8, !tbaa !28
  %i.de = load float, ptr %i.ai, align 8, !tbaa !28
  %i.df = load float, ptr %i.al, align 4, !tbaa !28
  %i.dg = fmul float %.sroa.0.4.vec.extract.i.i, %i.df
  %i.dh = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i.i, float %i.de, float %i.dg)
  %i.di = load float, ptr %i.am, align 8, !tbaa !28
  %i.dj = call noundef float @llvm.fmuladd.f32(float %.sroa.5.8.vec.extract.i.i, float %i.di, float %i.dh)
  %i.dk = load float, ptr %i.ao, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.dl = load <2 x float>, ptr %i.ag, align 8, !tbaa !28 ; 2 uses
  %i.dm = load <2 x float>, ptr %i.ah, align 8, !tbaa !28 ; 2 uses
  %i.dn = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.do = shufflevector <2 x float> %i.dl, <2 x float> %i.dm, <2 x i32> <i32 1, i32 3>
  %i.dp = fmul <2 x float> %i.dn, %i.do
  %i.dq = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = shufflevector <2 x float> %i.dl, <2 x float> %i.dm, <2 x i32> <i32 0, i32 2>
  %i.ds = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.dr, <2 x float> %i.dp)
  %i.dt = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = insertelement <2 x float> %i.dc, float %i.dd, i64 1
  %i.dv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.du, <2 x float> %i.ds)
  %i.dw = load <2 x float>, ptr %i.an, align 8, !tbaa !28
  %i.dx = fadd <2 x float> %i.dv, %i.dw
  %18 = insertelement <2 x float> poison, float %i.au, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = fmul <2 x float> %19, %i.dx
  %20 = fadd <2 x float> %i.ar, %i.dy             ; 2 uses
  %21 = fadd float %i.dj, %i.dk
  %i.dz = fmul float %i.au, %21
  %22 = insertelement <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float poison>, float %i.dz, i64 3
  %23 = fadd <4 x float> %17, %22                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ea = load ptr, ptr %i.s, align 8, !tbaa !25  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !27
  %i.ed = zext i32 %i.ec to i64
  %i.ee = icmp samesign ult i64 %indvars.iv.next, %i.ed
  br i1 %i.ee, label %bb.d, label %._crit_edge, !llvm.loop !84

._crit_edge:                                      ; preds = %bb.j, %.preheader
  %24 = phi <4 x float> [ zeroinitializer, %.preheader ], [ %23, %bb.j ] ; 8 uses
  %i.ef = phi <2 x float> [ zeroinitializer, %.preheader ], [ %20, %bb.j ] ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ej = load <2 x float>, ptr %i.ei, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !28
  %i.em = load float, ptr %i.eh, align 4, !tbaa !28
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !28
  %25 = extractelement <4 x float> %24, i64 0
  %i.ep = fmul float %25, %i.eo
  %26 = extractelement <4 x float> %24, i64 1
  %i.eq = call float @llvm.fmuladd.f32(float %26, float %i.em, float %i.ep)
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !28
  %27 = extractelement <4 x float> %24, i64 2
  %i.et = call noundef float @llvm.fmuladd.f32(float %27, float %i.es, float %i.eq)
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !28
  %i.ex = fadd float %i.et, %i.ew                 ; 2 uses
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ex, i64 0
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.ez = load <2 x float>, ptr %3, align 4, !tbaa !28 ; 2 uses
  %i.fa = load <2 x float>, ptr %i.eg, align 4, !tbaa !28 ; 2 uses
  %i.fb = shufflevector <4 x float> %24, <4 x float> poison, <2 x i32> zeroinitializer
  %i.fc = shufflevector <2 x float> %i.ez, <2 x float> %i.fa, <2 x i32> <i32 1, i32 3>
  %i.fd = fmul <2 x float> %i.fb, %i.fc
  %28 = shufflevector <4 x float> %24, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fe = shufflevector <2 x float> %i.ez, <2 x float> %i.fa, <2 x i32> <i32 0, i32 2>
  %i.ff = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %28, <2 x float> %i.fe, <2 x float> %i.fd)
  %29 = shufflevector <4 x float> %24, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fg = insertelement <2 x float> %i.ej, float %i.el, i64 1
  %i.fh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %29, <2 x float> %i.fg, <2 x float> %i.ff)
  %i.fi = load <2 x float>, ptr %i.eu, align 4, !tbaa !28
  %i.fj = fadd <2 x float> %i.fh, %i.fi           ; 2 uses
  store <2 x float> %i.fj, ptr %i.ey, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.56.0..sroa_idx, align 4, !tbaa !29
  %i.fk = load <2 x float>, ptr %3, align 4, !tbaa !28 ; 2 uses
  %i.fl = load <2 x float>, ptr %i.ei, align 4
  %i.fm = load <2 x float>, ptr %i.eg, align 4, !tbaa !28 ; 2 uses
  %i.fn = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fo = shufflevector <2 x float> %i.fk, <2 x float> %i.fm, <2 x i32> <i32 1, i32 3>
  %i.fp = fmul <2 x float> %i.fn, %i.fo
  %i.fq = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = shufflevector <2 x float> %i.fk, <2 x float> %i.fm, <2 x i32> <i32 0, i32 2>
  %i.fs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fr, <2 x float> %i.fp)
  %i.ft = load float, ptr %i.ek, align 4, !tbaa !28
  %30 = shufflevector <4 x float> %24, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.fu = insertelement <2 x float> %i.fl, float %i.ft, i64 1
  %i.fv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %i.fu, <2 x float> %i.fs)
  %i.fw = load float, ptr %i.eh, align 4, !tbaa !28
  %i.fx = load float, ptr %i.en, align 4, !tbaa !28
  %i.fy = extractelement <2 x float> %i.ef, i64 1
  %i.fz = fmul float %i.fy, %i.fx
  %i.ga = extractelement <2 x float> %i.ef, i64 0
  %i.gb = call float @llvm.fmuladd.f32(float %i.ga, float %i.fw, float %i.fz)
  %i.gc = load float, ptr %i.er, align 4, !tbaa !28
  %31 = extractelement <4 x float> %24, i64 3
  %i.gd = call noundef float @llvm.fmuladd.f32(float %31, float %i.gc, float %i.gb)
  %i.ge = load <2 x float>, ptr %i.eu, align 4, !tbaa !28
  %i.gf = fadd <2 x float> %i.fv, %i.ge           ; 2 uses
  %i.gg = load float, ptr %i.ev, align 4, !tbaa !28
  %i.gh = fadd float %i.gd, %i.gg                 ; 2 uses
  %.sroa.3.12.vec.insert.i4.i.i76 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gh, i64 0
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 20
  store <2 x float> %i.gf, ptr %i.gi, align 4
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 28
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i76, ptr %.sroa.54.0..sroa_idx, align 4, !tbaa !29
  %i.gj = fsub <2 x float> %i.gf, %i.fj           ; 4 uses
  %i.gk = fsub float %i.gh, %i.ex                 ; 3 uses
  %i.gl = invoke noundef float @_ZNK13btConvexShape19getMarginNonVirtualEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %._crit_edge
  %i.gm = invoke noundef float @_ZNK13btConvexShape19getMarginNonVirtualEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %foldExtExtBinop = fmul <2 x float> %i.gj, %i.gj
  %i.gn = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.go = extractelement <2 x float> %i.gj, i64 0 ; 2 uses
  %i.gp = call float @llvm.fmuladd.f32(float %i.go, float %i.go, float %i.gn)
  %i.gq = call noundef float @llvm.fmuladd.f32(float %i.gk, float %i.gk, float %i.gp)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.gq) ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 36
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.gs = fadd float %i.gl, %i.gm                 ; 3 uses
  %i.gt = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.gu = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.gv = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gw = fmul <2 x float> %i.gj, %i.gv           ; 2 uses
  %i.gx = fmul float %i.gk, %i.gt                 ; 2 uses
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gx, i64 0
  store <2 x float> %i.gw, ptr %i.gr, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.52.0..sroa_idx, align 4, !tbaa !29
  %i.gy = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = fmul <2 x float> %i.gz, %i.gw
  %i.hb = fmul float %i.gs, %i.gx
  %i.hc = load <2 x float>, ptr %i.ey, align 4, !tbaa !28
  %i.hd = fadd <2 x float> %i.ha, %i.hc
  store <2 x float> %i.hd, ptr %i.ey, align 4, !tbaa !28
  %i.he = load float, ptr %.sroa.56.0..sroa_idx, align 4, !tbaa !28
  %i.hf = fadd float %i.hb, %i.he
  store float %i.hf, ptr %.sroa.56.0..sroa_idx, align 4, !tbaa !28
  %i.hg = fsub float %sqrt.i, %i.gs               ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 52
  store float %i.hg, ptr %i.hh, align 4, !tbaa !32
  br label %bb.r

bb.m:                                             ; preds = %bb.b
  %i.hi = invoke noundef zeroext i1 @_ZN15btGjkEpaSolver211PenetrationEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsEb(ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull %7, ptr noundef nonnull align 4 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(56) %4, i1 noundef zeroext true)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  br i1 %i.hi, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.hl = load <2 x float>, ptr %i.hj, align 4, !tbaa !28
  %i.hm = load <2 x float>, ptr %i.hk, align 4, !tbaa !28
  %i.hn = fsub <2 x float> %i.hl, %i.hm           ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !28
  %i.hq = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !28
  %i.hs = fsub float %i.hp, %i.hr                 ; 3 uses
  %foldExtExtBinop197 = fmul <2 x float> %i.hn, %i.hn
  %i.ht = extractelement <2 x float> %foldExtExtBinop197, i64 1
  %i.hu = extractelement <2 x float> %i.hn, i64 0 ; 2 uses
  %i.hv = call float @llvm.fmuladd.f32(float %i.hu, float %i.hu, float %i.ht)
  %i.hw = call noundef float @llvm.fmuladd.f32(float %i.hs, float %i.hs, float %i.hv)
  %sqrt.i94 = call noundef float @llvm.sqrt.f32(float %i.hw) ; 3 uses
  %i.hx = fcmp ult float %sqrt.i94, f0x34000000
  br i1 %i.hx, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hy = fdiv float 1.000000e+00, %sqrt.i94      ; 2 uses
  %i.hz = insertelement <2 x float> poison, float %i.hy, i64 0
  %i.ia = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ib = fmul <2 x float> %i.hn, %i.ia
  %i.ic = fmul float %i.hs, %i.hy
  %.sroa.3.12.vec.insert.i.i97 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ic, i64 0
  %i.id = getelementptr inbounds nuw i8, ptr %4, i64 36
  store <2 x float> %i.ib, ptr %i.id, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 44
  store <2 x float> %.sroa.3.12.vec.insert.i.i97, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !29
  br label %bb.q

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i, %_ZNK12gjkepa2_impl13MinkowskiDiff8Support1ERK9btVector3.exit.i, %._crit_edge, %bb.k, %bb.m
  %lpad.loopexit.split-lp199 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ie = fneg float %sqrt.i94
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.b, %bb.q, %bb.l
  %.049 = phi float [ %i.hg, %bb.l ], [ %i.ie, %bb.q ], [ f0x7F7FFFFF, %bb.b ], [ f0x7F7FFFFF, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  ret float %.049

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.c
  %.pn57.pn.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.c ], [ %lpad.loopexit.split-lp199, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  resume { ptr, i32 } %.pn57.pn.pn.pn
}

declare i32 @__gxx_personality_v0(...)

declare noundef float @_ZNK13btConvexShape19getMarginNonVirtualEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN15btGjkEpaSolver214SignedDistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(56) initializes((0, 36)) %5) local_unnamed_addr #6 align 2 {
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
declare float @llvm.fmuladd.f32(float, float, float) #7

declare { <2 x float>, <2 x float> } @_ZNK13btConvexShape31localGetSupportVertexNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(16)) #4

declare { <2 x float>, <2 x float> } @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(16)) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_PfRj(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load <2 x float>, ptr %0, align 4, !tbaa !28 ; 5 uses
  %i.h = load <2 x float>, ptr %1, align 4, !tbaa !28 ; 5 uses
  %i.i = load <2 x float>, ptr %i.a, align 4, !tbaa !28 ; 2 uses
  %i.j = load <2 x float>, ptr %i.b, align 4, !tbaa !28 ; 3 uses
  %i.k = fsub <2 x float> %i.g, %i.h              ; 3 uses
  %i.l = fsub <2 x float> %i.i, %i.j              ; 2 uses
  %i.m = load <2 x float>, ptr %2, align 4, !tbaa !28 ; 3 uses
  %i.n = load <2 x float>, ptr %i.e, align 4, !tbaa !28 ; 3 uses
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
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ad, float %i.ab) ; 8 uses
  %i.af = fneg <2 x float> %i.o
  %i.ag = fmul <2 x float> %i.l, %i.af
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.p, <2 x float> %i.ag) ; 3 uses
  %i.ai = fmul float %i.ae, %i.ae
  %i.aj = extractelement <2 x float> %i.ah, i64 1 ; 7 uses
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.ai)
  %i.al = extractelement <2 x float> %i.ah, i64 0 ; 7 uses
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.al, float %i.ak) ; 3 uses
  %i.an = fcmp ogt float %i.am, 0.000000e+00
  br i1 %i.an, label %.preheader, label %bb.z

.preheader:                                       ; preds = %bb.a
  %i.ao = extractelement <2 x float> %i.m, i64 0
  %i.ap = fneg float %i.ae                        ; 3 uses
  %i.aq = fneg float %i.al                        ; 3 uses
  %i.ar = fneg float %i.aj                        ; 3 uses
  %i.as = fmul float %i.ac, %i.ap
end_hunk_0
