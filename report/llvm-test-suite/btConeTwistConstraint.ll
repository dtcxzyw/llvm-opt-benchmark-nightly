Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btConeTwistConstraint?download=true
inline.NumInlined: 921
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN21btConeTwistConstraint13buildJacobianEv:bb.a

bb.h:                                             ; preds = %bb.f
  %i.dp = fmul float %i.cz, %i.cz
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.cy, float %i.dp) ; 2 uses
  %sqrt46.i = tail call float @llvm.sqrt.f32(float %i.dq)
  %i.dr = fdiv float 1.000000e+00, %sqrt46.i      ; 3 uses
  %i.ds = fneg float %i.cz
  %i.dt = fmul float %i.dr, %i.ds                 ; 2 uses
  %i.du = fmul float %i.cy, %i.dr                 ; 2 uses
  %i.dv = fneg float %i.da
  %i.dw = fmul float %i.du, %i.dv
  %i.dx = fmul float %i.da, %i.dt
  %i.dy = fmul float %i.dq, %i.dr
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

_Z13btPlaneSpace1RK9btVector3RS_S2_.exit:         ; preds = %bb.g, %bb.h
  %.sink70 = phi float [ 0.000000e+00, %bb.g ], [ %i.dt, %bb.h ]
  %.sink69 = phi float [ %i.dj, %bb.g ], [ %i.du, %bb.h ]
  %.sink = phi float [ %i.dk, %bb.g ], [ 0.000000e+00, %bb.h ]
  %.sink48.i = phi float [ %i.dl, %bb.g ], [ %i.dw, %bb.h ]
  %.sink47.i = phi float [ %i.dn, %bb.g ], [ %i.dx, %bb.h ]
  %.sink.i = phi float [ %i.do, %bb.g ], [ %i.dy, %bb.h ]
  store float %.sink70, ptr %i.db, align 16, !tbaa !27
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %.sink69, ptr %i.dz, align 4, !tbaa !27
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %.sink, ptr %i.ea, align 8, !tbaa !27
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float 0.000000e+00, ptr %i.eb, align 4, !tbaa !27
  store float %.sink48.i, ptr %i.dc, align 16, !tbaa !27
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %.sink47.i, ptr %i.ec, align 4, !tbaa !27
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %.sink.i, ptr %i.ed, align 8, !tbaa !27
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float 0.000000e+00, ptr %i.ee, align 4, !tbaa !27
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.eg = getelementptr inbounds nuw i8, ptr %i.k, i64 428
  %i.eh = getelementptr inbounds nuw i8, ptr %i.k, i64 360
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ac, i64 428
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ac, i64 360
  %i.ek = getelementptr inbounds nuw i8, ptr %i.k, i64 436
  %i.el = getelementptr inbounds nuw i8, ptr %i.ac, i64 436
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.k

bb.j:                                             ; preds = %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit, %bb.j
  %indvars.iv = phi i64 [ 0, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.em = getelementptr inbounds nuw [84 x i8], ptr %i.ef, i64 %indvars.iv ; 12 uses
  %i.en = load float, ptr %i.q, align 8, !tbaa !27, !noalias !104
  %i.eo = load float, ptr %i.w, align 8, !tbaa !27, !noalias !104
  %i.ep = load float, ptr %i.z, align 8, !tbaa !27, !noalias !104
  %i.eq = load float, ptr %i.ai, align 8, !tbaa !27, !noalias !105
  %i.er = load float, ptr %i.ao, align 8, !tbaa !27, !noalias !105
  %i.es = load float, ptr %i.ar, align 8, !tbaa !27, !noalias !105
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.eu = load float, ptr %i.eh, align 8, !tbaa !62
  %i.ev = load float, ptr %i.ej, align 8, !tbaa !62
  %i.ew = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  %i.fa = load <2 x float>, ptr %i.l, align 8, !tbaa !27, !noalias !104
  %i.fb = load <2 x float>, ptr %i.v, align 8, !tbaa !27, !noalias !104
  %i.fc = load <2 x float>, ptr %i.y, align 8, !tbaa !27, !noalias !104
  %i.fd = load <3 x float>, ptr %i.u, align 8, !tbaa !27
  %i.fe = fsub <3 x float> %i.bl, %i.fd           ; 2 uses
  %i.ff = shufflevector <3 x float> %i.fe, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.fg = load <2 x float>, ptr %i.ad, align 8, !tbaa !27, !noalias !105
  %i.fh = load <2 x float>, ptr %i.an, align 8, !tbaa !27, !noalias !105
  %i.fi = load <2 x float>, ptr %i.aq, align 8, !tbaa !27, !noalias !105
  %i.fj = load <3 x float>, ptr %i.am, align 8, !tbaa !27
  %i.fk = fsub <3 x float> %i.ch, %i.fj           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.em, ptr noundef nonnull align 16 dereferenceable(16) %i.et, i64 16, i1 false), !tbaa.struct !24
  %i.fl = load float, ptr %i.em, align 4, !tbaa !27
  %i.fm = load <3 x float>, ptr %i.em, align 4, !tbaa !27 ; 4 uses
  %i.fn = shufflevector <3 x float> %i.fm, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.fo = extractelement <3 x float> %i.fm, i64 1
  %i.fp = fneg <3 x float> %i.fm                  ; 2 uses
  %i.fq = fneg float %i.fo
  %i.fr = fmul <3 x float> %i.ff, %i.fp
  %i.fs = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.fe, <3 x float> %i.fn, <3 x float> %i.fr) ; 6 uses
  %i.ft = shufflevector <3 x float> %i.fs, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fu = fmul <2 x float> %i.fb, %i.ft
  %i.fv = shufflevector <3 x float> %i.fs, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> %i.fv, <2 x float> %i.fu)
  %i.fx = shufflevector <3 x float> %i.fs, <3 x float> poison, <2 x i32> zeroinitializer
  %i.fy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.fx, <2 x float> %i.fw) ; 4 uses
  %i.fz = extractelement <3 x float> %i.fs, i64 2
  %i.ga = fmul float %i.eo, %i.fz
  %i.gb = extractelement <3 x float> %i.fs, i64 1
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.en, float %i.gb, float %i.ga)
  %i.gd = extractelement <3 x float> %i.fs, i64 0
  %i.ge = tail call noundef float @llvm.fmuladd.f32(float %i.ep, float %i.gd, float %i.gc) ; 3 uses
  %.sroa.3.12.vec.insert.i18.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ge, i64 0
  store <2 x float> %i.fy, ptr %i.ew, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i18.i, ptr %.sroa.46.0..sroa_idx.i, align 4, !tbaa !23
  %i.gf = shufflevector <3 x float> %i.fm, <3 x float> poison, <3 x i32> <i32 2, i32 poison, i32 1>
  %i.gg = insertelement <3 x float> %i.gf, float %i.fl, i64 1
  %i.gh = fmul <3 x float> %i.fk, %i.gg
  %i.gi = shufflevector <3 x float> %i.gh, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.gj = insertelement <3 x float> poison, float %i.fq, i64 0
  %i.gk = shufflevector <3 x float> %i.gj, <3 x float> %i.fp, <3 x i32> <i32 0, i32 5, i32 3>
  %i.gl = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.fk, <3 x float> %i.gk, <3 x float> %i.gi) ; 6 uses
  %i.gm = shufflevector <3 x float> %i.gl, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gn = fmul <2 x float> %i.fh, %i.gm
  %i.go = shufflevector <3 x float> %i.gl, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.go, <2 x float> %i.gn)
  %i.gq = shufflevector <3 x float> %i.gl, <3 x float> poison, <2 x i32> zeroinitializer
  %i.gr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.gq, <2 x float> %i.gp) ; 4 uses
  %i.gs = extractelement <3 x float> %i.gl, i64 2
  %i.gt = fmul float %i.er, %i.gs
  %i.gu = extractelement <3 x float> %i.gl, i64 1
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.gu, float %i.gt)
  %i.gw = extractelement <3 x float> %i.gl, i64 0
  %i.gx = tail call noundef float @llvm.fmuladd.f32(float %i.es, float %i.gw, float %i.gv) ; 3 uses
  %.sroa.3.12.vec.insert.i33.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gx, i64 0
  store <2 x float> %i.gr, ptr %i.ex, align 4
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i33.i, ptr %.sroa.44.0..sroa_idx.i, align 4, !tbaa !23
  %i.gy = extractelement <2 x float> %i.fy, i64 0
  %i.gz = load <2 x float>, ptr %i.eg, align 4, !tbaa !27
  %i.ha = fmul <2 x float> %i.fy, %i.gz           ; 3 uses
  %i.hb = load float, ptr %i.ek, align 4, !tbaa !27
  %i.hc = fmul float %i.ge, %i.hb                 ; 2 uses
  %.sroa.3.12.vec.insert.i38.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hc, i64 0
  store <2 x float> %i.ha, ptr %i.ey, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i38.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !23
  %i.hd = extractelement <2 x float> %i.gr, i64 0
  %i.he = load <2 x float>, ptr %i.ei, align 4, !tbaa !27
  %i.hf = fmul <2 x float> %i.gr, %i.he           ; 3 uses
  %i.hg = load float, ptr %i.el, align 4, !tbaa !27
  %i.hh = fmul float %i.gx, %i.hg                 ; 2 uses
  %.sroa.3.12.vec.insert.i43.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hh, i64 0
  store <2 x float> %i.hf, ptr %i.ez, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.em, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i43.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !23
  %foldExtExtBinop75 = fmul <2 x float> %i.fy, %i.ha
  %i.hi = extractelement <2 x float> %foldExtExtBinop75, i64 1
  %i.hj = extractelement <2 x float> %i.ha, i64 0
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.hj, float %i.gy, float %i.hi)
  %i.hl = tail call noundef float @llvm.fmuladd.f32(float %i.hc, float %i.ge, float %i.hk)
  %i.hm = fadd float %i.eu, %i.hl
  %i.hn = fadd float %i.ev, %i.hm
  %foldExtExtBinop77 = fmul <2 x float> %i.gr, %i.hf
  %i.ho = extractelement <2 x float> %foldExtExtBinop77, i64 1
  %i.hp = extractelement <2 x float> %i.hf, i64 0
  %i.hq = tail call float @llvm.fmuladd.f32(float %i.hp, float %i.hd, float %i.ho)
  %i.hr = tail call noundef float @llvm.fmuladd.f32(float %i.hh, float %i.gx, float %i.hq)
  %i.hs = fadd float %i.hn, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.em, i64 80
  store float %i.hs, ptr %i.ht, align 4, !tbaa !64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.i, label %bb.j

bb.k:                                             ; preds = %bb.i, %bb.b
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !36, !nonnull !32, !align !37 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !38, !nonnull !32, !align !37 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 280
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 280
  tail call void @_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.hw, ptr noundef nonnull align 4 dereferenceable(64) %i.hz, ptr noundef nonnull align 4 dereferenceable(48) %i.ia, ptr noundef nonnull align 4 dereferenceable(48) %i.ib)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN21btConeTwistConstraint23solveConstraintObsoleteER12btSolverBodyS1_f(ptr nofree noundef nonnull align 8 dereferenceable(640) %0, ptr nofree noundef nonnull align 8 dereferenceable(112) %1, ptr nofree noundef nonnull align 8 dereferenceable(112) %2, float noundef %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 16          ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %5 = alloca %class.btVector3, align 16          ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %6 = alloca %class.btTransform, align 4         ; 9 uses
  %7 = alloca %class.btTransform, align 4         ; 9 uses
  %8 = alloca %class.btVector3, align 16          ; 7 uses
  %9 = alloca %class.btVector3, align 16          ; 7 uses
  %10 = alloca %class.btTransform, align 8        ; 15 uses
  %11 = alloca %class.btVector3, align 8          ; 8 uses
  %12 = alloca %class.btTransform, align 8        ; 15 uses
  %13 = alloca %class.btTransform, align 16       ; 8 uses
  %14 = alloca %class.btTransform, align 16       ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 575
  %i.d = load i8, ptr %i.c, align 1, !tbaa !22, !range !31, !noundef !32
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36, !nonnull !32, !align !37 ; 24 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %15 = load float, ptr %i.h, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.l = load float, ptr %i.k, align 4, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load float, ptr %i.n, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %i.r = load float, ptr %i.q, align 8, !tbaa !27 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.u = load float, ptr %i.t, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %17 = load float, ptr %16, align 8, !tbaa !27
  %i.x = load float, ptr %i.m, align 8, !tbaa !27 ; 2 uses
  %i.y = load float, ptr %i.j, align 4, !tbaa !27 ; 2 uses
  %i.z = load float, ptr %i.p, align 4, !tbaa !27 ; 2 uses
  %18 = fmul float %i.l, %i.x
  %19 = tail call float @llvm.fmuladd.f32(float %15, float %i.y, float %18)
  %20 = tail call noundef float @llvm.fmuladd.f32(float %i.o, float %i.z, float %19)
  %21 = fadd float %20, %i.r                      ; 2 uses
  %22 = load <2 x float>, ptr %i.s, align 8, !tbaa !27 ; 2 uses
  %23 = load <2 x float>, ptr %i.w, align 8, !tbaa !27 ; 2 uses
  %i.aa = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = shufflevector <2 x float> %22, <2 x float> %23, <2 x i32> <i32 1, i32 3>
  %25 = fmul <2 x float> %i.ab, %24
  %26 = shufflevector <2 x float> %22, <2 x float> %23, <2 x i32> <i32 0, i32 2>
  %i.ac = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %26, <2 x float> %i.ad, <2 x float> %25)
  %27 = insertelement <2 x float> poison, float %i.u, i64 0
  %28 = insertelement <2 x float> %27, float %17, i64 1
  %29 = insertelement <2 x float> poison, float %i.z, i64 0
  %30 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> zeroinitializer
  %31 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %28, <2 x float> %30, <2 x float> %i.ae)
  %32 = load <2 x float>, ptr %i.v, align 4, !tbaa !27 ; 2 uses
  %i.af = fadd <2 x float> %32, %31               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38, !nonnull !32, !align !37 ; 22 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.an = load float, ptr %i.am, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !27
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.av = load float, ptr %i.au, align 8, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !27
  %i.az = load <2 x float>, ptr %i.ai, align 8, !tbaa !27 ; 2 uses
  %i.ba = load <2 x float>, ptr %i.at, align 8, !tbaa !27 ; 2 uses
  %i.bb = load <2 x float>, ptr %i.aw, align 8, !tbaa !27
  %i.bc = insertelement <3 x float> poison, float %i.an, i64 0
  %i.bd = shufflevector <3 x float> %i.bc, <3 x float> poison, <3 x i32> zeroinitializer
  %i.be = shufflevector <2 x float> %i.az, <2 x float> %i.ba, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.bf = shufflevector <2 x float> %i.bb, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.bg = shufflevector <3 x float> %i.be, <3 x float> %i.bf, <3 x i32> <i32 0, i32 1, i32 4>
  %i.bh = fmul <3 x float> %i.bd, %i.bg
  %i.bi = shufflevector <2 x float> %i.az, <2 x float> %i.ba, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.bj = shufflevector <3 x float> %i.bi, <3 x float> %i.bf, <3 x i32> <i32 0, i32 1, i32 3>
  %i.bk = insertelement <3 x float> poison, float %i.al, i64 0
  %i.bl = shufflevector <3 x float> %i.bk, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bm = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bj, <3 x float> %i.bl, <3 x float> %i.bh)
  %i.bn = insertelement <3 x float> poison, float %i.ap, i64 0
  %i.bo = insertelement <3 x float> %i.bn, float %i.av, i64 1
  %i.bp = insertelement <3 x float> %i.bo, float %i.ay, i64 2
  %i.bq = insertelement <3 x float> poison, float %i.ar, i64 0
  %i.br = shufflevector <3 x float> %i.bq, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bs = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bp, <3 x float> %i.br, <3 x float> %i.bm)
  %i.bt = load <3 x float>, ptr %i.as, align 8, !tbaa !27 ; 2 uses
  %i.bu = fadd <3 x float> %i.bs, %i.bt           ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.bw = load i8, ptr %i.bv, align 4, !tbaa !28, !range !31, !noundef !32
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.by = fsub float %21, %i.r                    ; 4 uses
  %i.bz = fsub <2 x float> %i.af, %32             ; 4 uses
  %i.ca = fsub <3 x float> %i.bu, %i.bt           ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 5 uses
  %.not.i = icmp eq ptr %i.cc, null
  br i1 %.not.i, label %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 328
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 336
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !27
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !27
  %i.ci = fadd float %i.cf, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 344
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = load float, ptr %i.cj, align 4, !tbaa !27
  %i.cm = load float, ptr %i.ck, align 8, !tbaa !27
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 348
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cp = extractelement <2 x float> %i.bz, i64 0
  %i.cq = fneg float %i.by
  %i.cr = load <2 x float>, ptr %i.cd, align 4, !tbaa !27
  %i.cs = load <2 x float>, ptr %1, align 8, !tbaa !27
  %i.ct = fadd <2 x float> %i.cr, %i.cs
  %i.cu = load <2 x float>, ptr %i.cn, align 4, !tbaa !27 ; 2 uses
  %i.cv = load <2 x float>, ptr %i.co, align 4, !tbaa !27 ; 2 uses
  %i.cw = fadd <2 x float> %i.cu, %i.cv           ; 2 uses
  %i.cx = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cy = insertelement <2 x float> %i.cx, float %i.cl, i64 1
  %i.cz = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.da = insertelement <2 x float> %i.cz, float %i.cm, i64 1
  %i.db = fadd <2 x float> %i.cy, %i.da           ; 2 uses
  %33 = fneg <2 x float> %i.bz
  %34 = fmul <2 x float> %i.db, %33
  %35 = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %36 = insertelement <2 x float> %35, float %i.by, i64 1
  %i.dc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %36, <2 x float> %34)
  %i.dd = extractelement <2 x float> %i.cw, i64 0
  %i.de = fmul float %i.dd, %i.cq
  %i.df = extractelement <2 x float> %i.db, i64 1
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.df, float %i.cp, float %i.de)
  %i.dh = fadd <2 x float> %i.ct, %i.dc
  %i.di = fadd float %i.ci, %i.dg
  %.sroa.3.12.vec.insert.i16.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.di, i64 0
  br label %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit

_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0821.0 = phi <2 x float> [ %i.dh, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %.sroa.6822.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i16.i, %bb.d ], [ zeroinitializer, %bb.c ]
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !123 ; 5 uses
  %.not.i78 = icmp eq ptr %i.dk, null
  br i1 %.not.i78, label %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit83, label %bb.e

bb.e:                                             ; preds = %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 328
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 336
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !27
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dp = load float, ptr %i.do, align 8, !tbaa !27
  %i.dq = fadd float %i.dn, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 344
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dt = load float, ptr %i.dr, align 4, !tbaa !27
  %i.du = load float, ptr %i.ds, align 8, !tbaa !27
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dk, i64 348
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dx = extractelement <3 x float> %i.ca, i64 1
  %i.dy = extractelement <3 x float> %i.ca, i64 0
  %i.dz = fneg float %i.dy
  %i.ea = load <2 x float>, ptr %i.dl, align 4, !tbaa !27
  %i.eb = load <2 x float>, ptr %2, align 8, !tbaa !27
  %i.ec = fadd <2 x float> %i.ea, %i.eb
  %i.ed = load <2 x float>, ptr %i.dv, align 4, !tbaa !27 ; 2 uses
  %i.ee = load <2 x float>, ptr %i.dw, align 4, !tbaa !27 ; 2 uses
  %i.ef = fadd <2 x float> %i.ed, %i.ee           ; 2 uses
  %i.eg = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.eh = insertelement <2 x float> %i.eg, float %i.dt, i64 1
  %i.ei = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ej = insertelement <2 x float> %i.ei, float %i.du, i64 1
  %i.ek = fadd <2 x float> %i.eh, %i.ej           ; 2 uses
  %i.el = fneg <3 x float> %i.ca
  %i.em = shufflevector <3 x float> %i.el, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.en = fmul <2 x float> %i.ek, %i.em
  %i.eo = shufflevector <3 x float> %i.ca, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.eo, <2 x float> %i.en)
  %i.eq = extractelement <2 x float> %i.ef, i64 0
  %i.er = fmul float %i.eq, %i.dz
  %i.es = extractelement <2 x float> %i.ek, i64 1
  %i.et = tail call float @llvm.fmuladd.f32(float %i.es, float %i.dx, float %i.er)
  %i.eu = fadd <2 x float> %i.ec, %i.ep
  %i.ev = fadd float %i.dq, %i.et
  %.sroa.3.12.vec.insert.i16.i81 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ev, i64 0
  br label %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit83

_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit83: ; preds = %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit, %bb.e
  %.sroa.0819.0 = phi <2 x float> [ %i.eu, %bb.e ], [ zeroinitializer, %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit ] ; 2 uses
  %.sroa.6820.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i16.i81, %bb.e ], [ zeroinitializer, %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit ]
  %foldExtExtBinop = fsub <2 x float> %.sroa.0821.0, %.sroa.0819.0
  %i.ew = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop888 = fsub <2 x float> %.sroa.0821.0, %.sroa.0819.0
  %foldExtExtBinop890 = fsub <2 x float> %.sroa.6822.0, %.sroa.6820.0
  %i.ex = extractelement <2 x float> %foldExtExtBinop890, i64 0
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ez = extractelement <3 x float> %i.bu, i64 0
  %i.fa = fsub float %21, %i.ez
  %37 = shufflevector <3 x float> %i.bu, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %38 = fsub <2 x float> %i.af, %37               ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %i.fd = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.ff = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.fg = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.fh = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.fi = getelementptr inbounds nuw i8, ptr %i.g, i64 316
  %i.fj = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ah, i64 360
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ah, i64 280
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ah, i64 288
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ah, i64 296
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ah, i64 304
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ah, i64 312
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ah, i64 316
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ah, i64 320
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.gc = insertelement <4 x float> poison, float %i.by, i64 0
  %i.gd = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ge = shufflevector <4 x float> %i.gc, <4 x float> %i.gd, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %39 = extractelement <2 x float> %38, i64 0
  %40 = extractelement <2 x float> %38, i64 1
  %41 = insertelement <4 x float> %i.gd, float %i.by, i64 2
  br label %bb.f

bb.f:                                             ; preds = %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit83, %bb.f
  %indvars.iv = phi i64 [ 0, %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit83 ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [84 x i8], ptr %i.ey, i64 %indvars.iv ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 80
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !64
  %i.gi = fdiv float 1.000000e+00, %i.gh          ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 2 uses
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !27 ; 6 uses
  %i.gl = load float, ptr %i.fb, align 8, !tbaa !52
  %i.gm = load float, ptr %i.fc, align 8, !tbaa !62 ; 2 uses
  %i.gn = fmul float %i.gk, %i.gm
  %i.go = load <2 x float>, ptr %i.gf, align 4, !tbaa !27 ; 7 uses
  %i.gp = extractelement <2 x float> %i.go, i64 1 ; 2 uses
  %foldExtExtBinop892 = fmul <2 x float> %foldExtExtBinop888, %i.go
  %i.gq = extractelement <2 x float> %foldExtExtBinop892, i64 1
  %i.gr = extractelement <2 x float> %i.go, i64 0 ; 2 uses
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.gr, float %i.ew, float %i.gq)
  %i.gt = tail call noundef float @llvm.fmuladd.f32(float %i.gk, float %i.ex, float %i.gs)
  %i.gu = fmul float %39, %i.gp
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.fa, float %i.gr, float %i.gu)
  %i.gw = tail call noundef float @llvm.fmuladd.f32(float %40, float %i.gk, float %i.gv)
  %i.gx = fmul float %i.gw, -3.000000e-01
  %i.gy = fdiv float %i.gx, %3
  %i.gz = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = fmul <2 x float> %i.go, %i.ha
  %i.hc = shufflevector <2 x float> %i.go, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hd = insertelement <4 x float> %i.hc, float %i.gk, i64 2
  %i.he = insertelement <4 x float> %i.hd, float %i.gi, i64 3
  %i.hf = fneg <4 x float> %i.he                  ; 2 uses
  %i.hg = fneg float %i.gp
  %i.hh = insertelement <4 x float> %41, float %i.gt, i64 3
  %i.hi = fmul <4 x float> %i.hh, %i.hf
  %i.hj = insertelement <4 x float> %i.ge, float %i.gy, i64 3
  %i.hk = shufflevector <2 x float> %i.go, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %42 = insertelement <4 x float> %i.hk, float %i.gk, i64 1
  %43 = insertelement <4 x float> %42, float %i.gi, i64 3
  %i.hl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hj, <4 x float> %43, <4 x float> %i.hi) ; 9 uses
  %i.hm = extractelement <4 x float> %i.hl, i64 3 ; 5 uses
  %i.hn = fadd float %i.gl, %i.hm
  store float %i.hn, ptr %i.fb, align 8, !tbaa !52
  %i.ho = load <2 x float>, ptr %i.fd, align 8, !tbaa !27 ; 2 uses
  %i.hp = load float, ptr %i.fe, align 8, !tbaa !27
  %i.hq = load <2 x float>, ptr %i.ff, align 8, !tbaa !27 ; 2 uses
  %i.hr = shufflevector <4 x float> %i.hl, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.hs = shufflevector <2 x float> %i.ho, <2 x float> %i.hq, <2 x i32> <i32 1, i32 3>
  %i.ht = fmul <2 x float> %i.hr, %i.hs
  %i.hu = shufflevector <2 x float> %i.ho, <2 x float> %i.hq, <2 x i32> <i32 0, i32 2>
  %i.hv = shufflevector <4 x float> %i.hl, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hu, <2 x float> %i.hv, <2 x float> %i.ht)
  %i.hx = load float, ptr %i.fg, align 8, !tbaa !27
  %i.hy = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.hz = insertelement <2 x float> %i.hy, float %i.hx, i64 1
  %i.ia = shufflevector <4 x float> %i.hl, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ib = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hz, <2 x float> %i.ia, <2 x float> %i.hw)
  %i.ic = load float, ptr %i.fh, align 8, !tbaa !27
  %i.id = load float, ptr %i.fi, align 4, !tbaa !27
  %i.ie = extractelement <4 x float> %i.hl, i64 2
  %i.if = fmul float %i.ie, %i.id
  %i.ig = extractelement <4 x float> %i.hl, i64 1
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.ig, float %i.if)
  %i.ii = load float, ptr %i.fj, align 8, !tbaa !27
  %i.ij = extractelement <4 x float> %i.hl, i64 0
  %i.ik = tail call noundef float @llvm.fmuladd.f32(float %i.ii, float %i.ij, float %i.ih)
  %i.il = shufflevector <4 x float> %i.hl, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.im = shufflevector <4 x float> %i.hl, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.in = fmul <2 x float> %i.hb, %i.im
  %i.io = fmul float %i.gn, %i.hm
  %i.ip = load <2 x float>, ptr %1, align 8, !tbaa !27
  %i.iq = fadd <2 x float> %i.in, %i.ip
  store <2 x float> %i.iq, ptr %1, align 8, !tbaa !27
  %i.ir = load float, ptr %i.fk, align 8, !tbaa !27
  %i.is = fadd float %i.io, %i.ir
  store float %i.is, ptr %i.fk, align 8, !tbaa !27
  %i.it = load <2 x float>, ptr %i.fl, align 8, !tbaa !27
  %i.iu = fmul <2 x float> %i.il, %i.it
  %i.iv = load float, ptr %i.fm, align 8, !tbaa !27
  %i.iw = fmul float %i.hm, %i.iv
  %i.ix = fmul <2 x float> %i.ib, %i.iu
  %i.iy = fmul float %i.ik, %i.iw
  %i.iz = load <2 x float>, ptr %i.fn, align 8, !tbaa !27
  %i.ja = fadd <2 x float> %i.ix, %i.iz
  store <2 x float> %i.ja, ptr %i.fn, align 8, !tbaa !27
  %i.jb = load float, ptr %i.fo, align 8, !tbaa !27
  %i.jc = fadd float %i.iy, %i.jb
  store float %i.jc, ptr %i.fo, align 8, !tbaa !27
  %i.jd = load float, ptr %i.fp, align 8, !tbaa !62 ; 2 uses
  %i.je = load float, ptr %i.gj, align 4, !tbaa !27
  %i.jf = fmul float %i.jd, %i.je
  %i.jg = load float, ptr %i.fr, align 8, !tbaa !27
  %i.jh = load float, ptr %i.ft, align 8, !tbaa !27
  %i.ji = load float, ptr %i.fu, align 8, !tbaa !27
  %i.jj = load float, ptr %i.fv, align 4, !tbaa !27
  %i.jk = load float, ptr %i.fw, align 8, !tbaa !27
  %i.jl = fneg float %i.hm                        ; 2 uses
  %i.jm = load <2 x float>, ptr %i.gf, align 4, !tbaa !27
  %i.jn = insertelement <2 x float> poison, float %i.jd, i64 0
  %i.jo = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jp = fmul <2 x float> %i.jo, %i.jm
  %i.jq = load <2 x float>, ptr %2, align 8, !tbaa !27
  %i.jr = fmul <2 x float> %i.il, %i.jp
  %i.js = fsub <2 x float> %i.jq, %i.jr
  %i.jt = load float, ptr %i.fx, align 8, !tbaa !27
  %i.ju = fmul float %i.hm, %i.jf
  %i.jv = fsub float %i.jt, %i.ju
  %i.jw = load float, ptr %i.fz, align 8, !tbaa !27
  %i.jx = fmul float %i.jw, %i.jl
  %i.jy = shufflevector <4 x float> %i.hf, <4 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.jz = insertelement <3 x float> %i.jy, float %i.hg, i64 2
  %i.ka = fmul <3 x float> %i.ca, %i.jz
  %i.kb = shufflevector <3 x float> %i.ka, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.kc = shufflevector <2 x float> %i.go, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.kd = insertelement <3 x float> %i.kc, float %i.gk, i64 1
  %i.ke = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ca, <3 x float> %i.kd, <3 x float> %i.kb) ; 6 uses
  %i.kf = load <2 x float>, ptr %i.fq, align 8, !tbaa !27 ; 2 uses
  %i.kg = load <2 x float>, ptr %i.fs, align 8, !tbaa !27 ; 2 uses
  %i.kh = shufflevector <3 x float> %i.ke, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ki = shufflevector <2 x float> %i.kf, <2 x float> %i.kg, <2 x i32> <i32 1, i32 3>
  %i.kj = fmul <2 x float> %i.kh, %i.ki
  %i.kk = shufflevector <2 x float> %i.kf, <2 x float> %i.kg, <2 x i32> <i32 0, i32 2>
  %i.kl = shufflevector <3 x float> %i.ke, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.km = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kk, <2 x float> %i.kl, <2 x float> %i.kj)
  %i.kn = insertelement <2 x float> poison, float %i.jg, i64 0
  %i.ko = insertelement <2 x float> %i.kn, float %i.jh, i64 1
  %i.kp = shufflevector <3 x float> %i.ke, <3 x float> poison, <2 x i32> zeroinitializer
  %i.kq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ko, <2 x float> %i.kp, <2 x float> %i.km)
  %i.kr = extractelement <3 x float> %i.ke, i64 2
  %i.ks = fmul float %i.kr, %i.jj
  %i.kt = extractelement <3 x float> %i.ke, i64 1
  %i.ku = tail call float @llvm.fmuladd.f32(float %i.ji, float %i.kt, float %i.ks)
  %i.kv = extractelement <3 x float> %i.ke, i64 0
  %i.kw = tail call noundef float @llvm.fmuladd.f32(float %i.jk, float %i.kv, float %i.ku)
  store <2 x float> %i.js, ptr %2, align 8, !tbaa !27
  store float %i.jv, ptr %i.fx, align 8, !tbaa !27
  %i.kx = load <2 x float>, ptr %i.fy, align 8, !tbaa !27
  %i.ky = insertelement <2 x float> poison, float %i.jl, i64 0
  %i.kz = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = fmul <2 x float> %i.kx, %i.kz
  %i.lb = fmul <2 x float> %i.kq, %i.la
  %i.lc = fmul float %i.kw, %i.jx
  %i.ld = load <2 x float>, ptr %i.ga, align 8, !tbaa !27
  %i.le = fadd <2 x float> %i.lb, %i.ld
  store <2 x float> %i.le, ptr %i.ga, align 8, !tbaa !27
  %i.lf = load float, ptr %i.gb, align 8, !tbaa !27
  %i.lg = fadd float %i.lc, %i.lf
  store float %i.lg, ptr %i.gb, align 8, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %bb.f, %bb.b
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.li = load i8, ptr %i.lh, align 8, !tbaa !25, !range !31, !noundef !32
  %i.lj = trunc nuw i8 %i.li to i1
  br i1 %i.lj, label %bb.g, label %bb.u

bb.g:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 16, i1 false), !tbaa.struct !24
  %i.lk = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lk, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !24
  %i.ll = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ll, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !24
  %i.lm = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lm, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i64 16, i1 false), !tbaa.struct !24
  %i.ln = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ln, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !24
  %i.lo = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lo, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !tbaa.struct !24
  %i.lp = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lp, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !123 ; 3 uses
  %.not.i124 = icmp eq ptr %i.lr, null
  br i1 %.not.i124, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 344
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.lu = load <2 x float>, ptr %i.ls, align 4, !tbaa !27
  %i.lv = load <2 x float>, ptr %i.lt, align 8, !tbaa !27
  %i.lw = fadd <2 x float> %i.lu, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lr, i64 352
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !27
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ma = load float, ptr %i.lz, align 8, !tbaa !27
  %i.mb = fadd float %i.ly, %i.ma
  %.sroa.3.12.vec.insert.i.i127 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.mb, i64 0
  store <2 x float> %i.lw, ptr %8, align 16
  %.sroa.4.0..sroa_idx.i128 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i127, ptr %.sroa.4.0..sroa_idx.i128, align 8, !tbaa !23
  br label %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  br label %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit

_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !123 ; 3 uses
  %.not.i129 = icmp eq ptr %i.md, null
  br i1 %.not.i129, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 344
  %i.mf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mg = load <2 x float>, ptr %i.me, align 4, !tbaa !27
  %i.mh = load <2 x float>, ptr %i.mf, align 8, !tbaa !27
  %i.mi = fadd <2 x float> %i.mg, %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %i.md, i64 352
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !27
  %i.ml = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.mm = load float, ptr %i.ml, align 8, !tbaa !27
  %i.mn = fadd float %i.mk, %i.mm
  %.sroa.3.12.vec.insert.i.i132 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.mn, i64 0
  store <2 x float> %i.mi, ptr %9, align 16
  %.sroa.4.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i132, ptr %.sroa.4.0..sroa_idx.i133, align 8, !tbaa !23
  br label %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit134

bb.k:                                             ; preds = %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  br label %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit134

_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit134: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store float 1.000000e+00, ptr %10, align 8, !tbaa !27
  %i.mo = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mo, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.mp, align 4, !tbaa !27
  %i.mq = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.mr = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mq, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.mr, align 8, !tbaa !27
  %i.ms = getelementptr inbounds nuw i8, ptr %10, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ms, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.mt = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %8, float noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  store float 1.000000e+00, ptr %12, align 8, !tbaa !27
  %i.mu = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mu, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.mv, align 4, !tbaa !27
  %i.mw = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.mx = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.mx, align 8, !tbaa !27
  %i.my = getelementptr inbounds nuw i8, ptr %12, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.my, i8 0, i64 20, i1 false)
  call void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %9, float noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %12)
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !27, !noalias !124 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !27, !noalias !124 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !27, !noalias !124 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.nu = load float, ptr %i.nr, align 4, !tbaa !27, !noalias !125 ; 2 uses
  %i.nv = load float, ptr %i.ns, align 4, !tbaa !27, !noalias !125 ; 2 uses
  %i.nw = load float, ptr %i.nt, align 4, !tbaa !27, !noalias !125 ; 2 uses
  %i.nx = load float, ptr %i.j, align 4, !tbaa !27, !noalias !126
  %i.ny = fneg float %i.nx                        ; 3 uses
  %i.nz = load float, ptr %i.m, align 8, !tbaa !27, !noalias !126
  %i.oa = fneg float %i.nz                        ; 3 uses
  %i.ob = load float, ptr %i.p, align 4, !tbaa !27, !noalias !126
  %i.oc = fneg float %i.ob                        ; 3 uses
  %i.od = fmul float %i.nv, %i.oa
  %i.oe = call float @llvm.fmuladd.f32(float %i.nu, float %i.ny, float %i.od)
  %i.of = call noundef float @llvm.fmuladd.f32(float %i.nw, float %i.oc, float %i.oe)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.og = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.oh = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.oi = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.oj = load float, ptr %i.mx, align 8, !tbaa !27, !noalias !128 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ol = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.om = load float, ptr %i.ol, align 8, !tbaa !27, !noalias !127
  %i.on = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.nd, i64 0 ; 3 uses
  %i.oo = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.nh, i64 0 ; 3 uses
  %i.op = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.nl, i64 0 ; 3 uses
  %i.oq = load <2 x float>, ptr %i.i, align 4, !tbaa !27, !noalias !125 ; 2 uses
  %i.or = load float, ptr %i.no, align 8, !tbaa !27, !noalias !125
  %i.os = load <2 x float>, ptr %i.nm, align 4, !tbaa !27, !noalias !125 ; 2 uses
  %i.ot = load float, ptr %i.np, align 8, !tbaa !27, !noalias !125
  %i.ou = load <2 x float>, ptr %i.nn, align 4, !tbaa !27, !noalias !125 ; 2 uses
  %i.ov = load float, ptr %i.nq, align 8, !tbaa !27, !noalias !125
  %i.ow = extractelement <2 x float> %i.os, i64 0
  %i.ox = fmul float %i.ow, %i.oa
  %i.oy = extractelement <2 x float> %i.oq, i64 0
  %i.oz = call float @llvm.fmuladd.f32(float %i.oy, float %i.ny, float %i.ox)
  %i.pa = extractelement <2 x float> %i.ou, i64 0
  %i.pb = call noundef float @llvm.fmuladd.f32(float %i.pa, float %i.oc, float %i.oz)
  %i.pc = fmul float %i.ot, %i.oa
  %i.pd = call float @llvm.fmuladd.f32(float %i.or, float %i.ny, float %i.pc)
  %i.pe = call noundef float @llvm.fmuladd.f32(float %i.ov, float %i.oc, float %i.pd)
  %i.pf = shufflevector <2 x float> %i.oq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.pg = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.pf, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.ph = shufflevector <2 x float> %i.os, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.pi = shufflevector <4 x float> %i.pg, <4 x float> %i.ph, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.pj = shufflevector <2 x float> %i.ou, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.pk = shufflevector <4 x float> %i.pi, <4 x float> %i.pj, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 3 uses
  %i.pl = insertelement <4 x float> %i.pf, float 0.000000e+00, i64 3
  %i.pm = shufflevector <4 x float> %i.pl, <4 x float> %i.ph, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.pn = shufflevector <4 x float> %i.pm, <4 x float> %i.pj, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 3 uses
  %i.po = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.nu, i64 0
  %i.pp = insertelement <4 x float> %i.po, float %i.nv, i64 1
  %i.pq = insertelement <4 x float> %i.pp, float %i.nw, i64 2 ; 3 uses
  %i.pr = insertelement <4 x float> %i.pk, float 1.000000e+00, i64 3
  %i.ps = load <2 x float>, ptr %12, align 8, !tbaa !27, !noalias !128 ; 3 uses
  %i.pt = shufflevector <2 x float> %i.ps, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.pu = shufflevector <2 x float> %i.ps, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.pv = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.pw = load <2 x float>, ptr %i.og, align 8, !tbaa !27, !noalias !128 ; 3 uses
  %i.px = shufflevector <2 x float> %i.pw, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.py = shufflevector <2 x float> %i.pw, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.pz = load <2 x float>, ptr %i.aj, align 4, !tbaa !27, !noalias !124 ; 3 uses
  %i.qa = load float, ptr %i.nb, align 8, !tbaa !27, !noalias !124 ; 3 uses
  %i.qb = load <2 x float>, ptr %i.ne, align 4, !tbaa !27, !noalias !124 ; 2 uses
  %i.qc = load float, ptr %i.nf, align 8, !tbaa !27, !noalias !124 ; 3 uses
  %i.qd = load <2 x float>, ptr %i.ni, align 4, !tbaa !27, !noalias !124 ; 3 uses
  %i.qe = load float, ptr %i.nj, align 8, !tbaa !27, !noalias !124 ; 3 uses
  %i.qf = shufflevector <2 x float> %i.qd, <2 x float> %i.pz, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.qg = shufflevector <2 x float> %i.qb, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.qh = shufflevector <3 x float> %i.qf, <3 x float> %i.qg, <3 x i32> <i32 0, i32 1, i32 4>
  %i.qi = fmul <3 x float> %i.qh, zeroinitializer
  %i.qj = shufflevector <2 x float> %i.qd, <2 x float> %i.pz, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.qk = shufflevector <3 x float> %i.qj, <3 x float> %i.qg, <3 x i32> <i32 0, i32 1, i32 3>
  %i.ql = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.qk, <3 x float> zeroinitializer, <3 x float> %i.qi)
  %i.qm = insertelement <3 x float> poison, float %i.nl, i64 0
  %i.qn = insertelement <3 x float> %i.qm, float %i.nd, i64 1
  %i.qo = insertelement <3 x float> %i.qn, float %i.nh, i64 2
  %i.qp = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.qo, <3 x float> zeroinitializer, <3 x float> %i.ql)
  %i.qq = load <3 x float>, ptr %i.ak, align 4, !tbaa !27, !noalias !129
  %i.qr = shufflevector <3 x float> %i.qq, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.qs = fadd <3 x float> %i.qp, %i.qr
  %i.qt = load <2 x float>, ptr %i.ok, align 8, !tbaa !27, !noalias !127
  %i.qu = insertelement <2 x float> %i.pz, float 0.000000e+00, i64 1 ; 3 uses
  %i.qv = insertelement <2 x float> %i.qb, float 0.000000e+00, i64 1 ; 3 uses
  %i.qw = insertelement <2 x float> %i.qd, float 0.000000e+00, i64 1 ; 3 uses
  %i.qx = insertelement <3 x float> poison, float %i.pe, i64 0
  %i.qy = shufflevector <3 x float> %i.qx, <3 x float> poison, <3 x i32> zeroinitializer
  %i.qz = insertelement <3 x float> poison, float %i.pb, i64 0
  %i.ra = shufflevector <3 x float> %i.qz, <3 x float> poison, <3 x i32> zeroinitializer
  %i.rb = insertelement <3 x float> poison, float %i.of, i64 0
  %i.rc = shufflevector <3 x float> %i.rb, <3 x float> poison, <3 x i32> zeroinitializer
  %i.rd = load <2 x float>, ptr %i.mu, align 4, !tbaa !27, !noalias !128 ; 3 uses
  %i.re = shufflevector <2 x float> %i.rd, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.rf = shufflevector <4 x float> %i.re, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.rg = load <2 x float>, ptr %i.mv, align 4, !tbaa !27, !noalias !128 ; 3 uses
  %i.rh = shufflevector <2 x float> %i.rd, <2 x float> %i.rg, <2 x i32> <i32 0, i32 2>
  %i.ri = shufflevector <2 x float> %i.ps, <2 x float> %i.pw, <2 x i32> <i32 0, i32 2>
  %i.rj = shufflevector <2 x float> %i.rd, <2 x float> %i.rg, <2 x i32> <i32 1, i32 3>
  %i.rk = shufflevector <2 x float> %i.rg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.rl = shufflevector <4 x float> %i.rk, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.rm = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.rn = load <2 x float>, ptr %i.oh, align 8, !tbaa !27, !noalias !128 ; 3 uses
  %i.ro = load float, ptr %i.oi, align 4, !tbaa !27, !noalias !128
  %i.rp = shufflevector <2 x float> %i.rn, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.rq = shufflevector <2 x float> %i.rn, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.rr = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.oj, i64 0
  %i.rs = shufflevector <4 x float> %i.rr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.rt = extractelement <2 x float> %i.rn, i64 0
  %i.ru = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %.sroa.4.0..sroa_idx.i165 = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.rv = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.rw = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.rx = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.ry = load float, ptr %i.mr, align 8, !tbaa !27, !noalias !131 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.sa = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.sb = load float, ptr %i.sa, align 8, !tbaa !27, !noalias !130
  %i.sc = load <2 x float>, ptr %10, align 8, !tbaa !27, !noalias !131 ; 3 uses
  %i.sd = shufflevector <2 x float> %i.sc, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.se = shufflevector <2 x float> %i.sc, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.sf = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.sg = load <2 x float>, ptr %i.rv, align 8, !tbaa !27, !noalias !131 ; 3 uses
  %i.sh = shufflevector <2 x float> %i.sg, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.si = shufflevector <2 x float> %i.sg, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.sj = load <2 x float>, ptr %i.rz, align 8, !tbaa !27, !noalias !130
  %i.sk = load <2 x float>, ptr %i.mo, align 4, !tbaa !27, !noalias !131 ; 3 uses
  %i.sl = shufflevector <2 x float> %i.sk, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.sm = shufflevector <4 x float> %i.sl, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.sn = load <2 x float>, ptr %i.mp, align 4, !tbaa !27, !noalias !131 ; 3 uses
  %i.so = shufflevector <2 x float> %i.sk, <2 x float> %i.sn, <2 x i32> <i32 0, i32 2>
  %i.sp = shufflevector <2 x float> %i.sc, <2 x float> %i.sg, <2 x i32> <i32 0, i32 2>
  %i.sq = shufflevector <2 x float> %i.sk, <2 x float> %i.sn, <2 x i32> <i32 1, i32 3>
  %i.sr = shufflevector <2 x float> %i.sn, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ss = shufflevector <4 x float> %i.sr, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.st = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.su = load <2 x float>, ptr %i.rw, align 8, !tbaa !27, !noalias !131 ; 3 uses
  %i.sv = load float, ptr %i.rx, align 4, !tbaa !27, !noalias !131
  %i.sw = shufflevector <2 x float> %i.su, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.sx = shufflevector <2 x float> %i.su, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.sy = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ry, i64 0
  %i.sz = shufflevector <4 x float> %i.sy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ta = extractelement <2 x float> %i.su, i64 0
  %i.tb = getelementptr inbounds nuw i8, ptr %14, i64 48
  %.sroa.4.0..sroa_idx.i191 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.tc = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.td = load float, ptr %i.tc, align 4, !tbaa !27
  %i.te = load <2 x float>, ptr %i.mz, align 4, !tbaa !27 ; 2 uses
  %i.tf = shufflevector <2 x float> %i.te, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %i.tg = load <3 x float>, ptr %i.mz, align 4, !tbaa !27 ; 2 uses
  %i.th = shufflevector <3 x float> %i.tg, <3 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 2>
  %foldExtExtBinop894 = fmul <4 x float> %i.tf, %i.tf
  %i.ti = extractelement <4 x float> %foldExtExtBinop894, i64 1
  %i.tj = extractelement <2 x float> %i.te, i64 0 ; 2 uses
  %i.tk = call float @llvm.fmuladd.f32(float %i.tj, float %i.tj, float %i.ti)
  %i.tl = load <2 x float>, ptr %i.na, align 4, !tbaa !27 ; 2 uses
  %i.tm = shufflevector <2 x float> %i.tl, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1> ; 2 uses
  %i.tn = extractelement <3 x float> %i.tg, i64 2 ; 2 uses
  %i.to = call float @llvm.fmuladd.f32(float %i.tn, float %i.tn, float %i.tk)
  %i.tp = extractelement <2 x float> %i.tl, i64 1 ; 2 uses
  %i.tq = call noundef float @llvm.fmuladd.f32(float %i.tp, float %i.tp, float %i.to)
  %i.tr = insertelement <2 x float> poison, float %i.tq, i64 0
  %i.ts = insertelement <2 x float> %i.tr, float %3, i64 1
  %i.tt = fdiv <2 x float> <float 2.000000e+00, float 1.000000e+00>, %i.ts ; 4 uses
  %i.tu = shufflevector <2 x float> %i.tt, <2 x float> poison, <4 x i32> zeroinitializer
  %i.tv = fmul <4 x float> %i.th, %i.tu           ; 4 uses
  %foldExtExtBinop896 = fmul <4 x float> %i.tm, %i.tv ; 2 uses
  %shift = shufflevector <4 x float> %i.tv, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop898 = fmul <4 x float> %i.tf, %shift ; 2 uses
  %i.tw = fmul <4 x float> %i.tf, %i.tv           ; 5 uses
  %i.tx = shufflevector <4 x float> %i.tv, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 2>
  %i.ty = fmul <4 x float> %i.tm, %i.tx           ; 3 uses
  %i.tz = fadd <4 x float> %i.tw, %i.ty           ; 4 uses
  %i.ua = extractelement <4 x float> %i.tz, i64 1
  %i.ub = fsub float 1.000000e+00, %i.ua
  %foldExtExtBinop900 = fsub <4 x float> %foldExtExtBinop898, %foldExtExtBinop896
  %i.uc = extractelement <4 x float> %foldExtExtBinop900, i64 0
  %foldExtExtBinop902 = fadd <4 x float> %foldExtExtBinop898, %foldExtExtBinop896
  %i.ud = extractelement <4 x float> %foldExtExtBinop902, i64 0 ; 3 uses
  %i.ue = extractelement <4 x float> %i.tz, i64 2
  %i.uf = fsub float 1.000000e+00, %i.ue          ; 3 uses
  %foldExtExtBinop904 = fsub <4 x float> %i.tw, %i.ty
  %i.ug = extractelement <4 x float> %foldExtExtBinop904, i64 3 ; 3 uses
  %foldExtExtBinop906 = fsub <4 x float> %i.tw, %i.ty
  %i.uh = extractelement <4 x float> %foldExtExtBinop906, i64 0
  %shift908 = shufflevector <4 x float> %i.tw, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop909 = fadd <4 x float> %shift908, %i.tw
  %i.ui = extractelement <4 x float> %foldExtExtBinop909, i64 1
  %i.uj = fsub float 1.000000e+00, %i.ui
  %i.uk = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.ub, i64 0 ; 3 uses
  %i.ul = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.uh, i64 0 ; 3 uses
  %i.um = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.uc, i64 0 ; 3 uses
  %i.un = shufflevector <4 x float> %i.tz, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.uo = insertelement <2 x float> %i.un, float -0.000000e+00, i64 1 ; 3 uses
  %i.up = shufflevector <4 x float> %i.tz, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.uq = insertelement <2 x float> %i.up, float -0.000000e+00, i64 1 ; 3 uses
  %i.ur = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.uj, i64 0 ; 3 uses
  %i.us = fmul float %i.qa, %i.ud
  %i.ut = fmul float %i.qa, %i.uf
  %i.uu = fmul float %i.qa, %i.ug
  %i.uv = fmul float %i.qc, %i.ud
  %i.uw = fmul float %i.qc, %i.uf
  %i.ux = fmul float %i.qc, %i.ug
  %i.uy = fmul float %i.ud, %i.qe
  %i.uz = fmul float %i.uf, %i.qe
  %i.va = fmul float %i.ug, %i.qe
  %i.vb = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.us, i64 0
  %i.vc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uk, <2 x float> %i.qu, <2 x float> %i.vb)
  %i.vd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ul, <2 x float> %i.on, <2 x float> %i.vc) ; 2 uses
end_hunk_0
