Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDiscreteDynamicsWorld?download=true
inline.NumInlined: 953
inline.NumDeleted: 286
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN23btDiscreteDynamicsWorld19integrateTransformsEf:bb.a
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.hr, <2 x float> %i.hn)
  %i.ht = load <2 x float>, ptr %i.bh, align 8, !tbaa !9
  %i.hu = fmul <2 x float> %i.hs, %i.ht
  %i.hv = load <2 x float>, ptr %i.bq, align 4, !tbaa !9
  %i.hw = fadd <2 x float> %i.hu, %i.hv
  store <2 x float> %i.hw, ptr %i.bq, align 4, !tbaa !9
  %i.hx = load float, ptr %i.br, align 4, !tbaa !9
  %i.hy = fadd float %i.hd, %i.hx
  store float %i.hy, ptr %i.br, align 4, !tbaa !9
  br label %_ZN11btRigidBody12applyImpulseERK9btVector3S2_.exit73

_ZN11btRigidBody12applyImpulseERK9btVector3S2_.exit73: ; preds = %bb.n, %bb.o, %bb.j, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hz = load i32, ptr %i.ac, align 8, !tbaa !238
  %i.ia = sext i32 %i.hz to i64
  %i.ib = icmp slt i64 %indvars.iv.next, %i.ia
  br i1 %i.ib, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !242

bb.p:                                             ; preds = %bb.m, %bb.f
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fs, %bb.m ], [ %i.n, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge103, %bb.d
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.r:                                             ; preds = %bb.p, %bb.c
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.p ], [ %i.f, %bb.c ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld25predictUnconstraintMotionEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(508) %0, float noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.CProfileSample, align 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull @.str.12)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !64   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.n, %bb.f ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !116  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.j = load i32, ptr %i.i, align 8, !tbaa !108
  %i.k = and i32 %i.j, 3
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11btRigidBody12applyDampingEf(ptr noundef nonnull align 8 dereferenceable(744) %i.h, float noundef %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  invoke void @_ZN11btRigidBody26predictIntegratedTransformEfR11btTransform(ptr noundef nonnull align 8 dereferenceable(744) %i.h, float noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.l)
          to label %._crit_edge13 unwind label %bb.e

._crit_edge13:                                    ; preds = %bb.d
  %.pre = load i32, ptr %i.a, align 4, !tbaa !64
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.m

bb.f:                                             ; preds = %._crit_edge13, %bb.b
  %i.n = phi i32 [ %.pre, %._crit_edge13 ], [ %i.e, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %bb.b, label %._crit_edge, !llvm.loop !243
}

declare void @_ZN11btRigidBody12applyDampingEf(ptr noundef nonnull align 8 dereferenceable(744), float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld19debugDrawConstraintEP17btTypedConstraint(ptr noundef nonnull align 8 dereferenceable(508) %0, ptr noundef %1) unnamed_addr #8 align 2 {
bb.a:
  %2 = alloca %class.btTransform, align 4         ; 12 uses
  %3 = alloca %class.btTransform, align 16        ; 15 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 4           ; 4 uses
  %7 = alloca %class.btTransform, align 16        ; 22 uses
  %8 = alloca %class.btVector3, align 8           ; 6 uses
  %9 = alloca %class.btVector3, align 8           ; 7 uses
  %10 = alloca %class.btVector3, align 4          ; 4 uses
  %11 = alloca %class.btVector3, align 4          ; 4 uses
  %12 = alloca %class.btTransform, align 4        ; 7 uses
  %13 = alloca %class.btTransform, align 4        ; 7 uses
  %14 = alloca %class.btVector3, align 4          ; 4 uses
  %15 = alloca %class.btVector3, align 8          ; 5 uses
  %16 = alloca %class.btVector3, align 8          ; 5 uses
  %17 = alloca %class.btVector3, align 4          ; 4 uses
  %18 = alloca %class.btTransform, align 16       ; 21 uses
  %19 = alloca %class.btVector3, align 8          ; 5 uses
  %20 = alloca %class.btVector3, align 8          ; 8 uses
  %21 = alloca %class.btVector3, align 4          ; 4 uses
  %22 = alloca %class.btVector3, align 8          ; 6 uses
  %23 = alloca %class.btVector3, align 8          ; 6 uses
  %24 = alloca %class.btVector3, align 4          ; 4 uses
  %25 = alloca %class.btVector3, align 4          ; 4 uses
  %26 = alloca %class.btVector3, align 4          ; 4 uses
  %27 = alloca %class.btVector3, align 4          ; 4 uses
  %28 = alloca %class.btVector3, align 4          ; 4 uses
  %29 = alloca %class.btTransform, align 16       ; 21 uses
  %30 = alloca %class.btVector3, align 8          ; 5 uses
  %31 = alloca %class.btVector3, align 8          ; 6 uses
  %32 = alloca %class.btVector3, align 4          ; 4 uses
  %33 = alloca %class.btVector3, align 8          ; 6 uses
  %34 = alloca %class.btVector3, align 8          ; 6 uses
  %35 = alloca %class.btVector3, align 4          ; 4 uses
  %36 = alloca %class.btVector3, align 4          ; 4 uses
  %37 = alloca %class.btVector3, align 4          ; 4 uses
  %38 = alloca %class.btVector3, align 4          ; 4 uses
  %39 = alloca %class.btVector3, align 4          ; 4 uses
  %40 = alloca %class.btTransform, align 4        ; 10 uses
  %41 = alloca %class.btVector3, align 8          ; 5 uses
  %42 = alloca %class.btVector3, align 8          ; 5 uses
  %43 = alloca %class.btVector3, align 4          ; 4 uses
  %44 = alloca %class.btVector3, align 8          ; 5 uses
  %45 = alloca %class.btVector3, align 8          ; 5 uses
  %46 = alloca %class.btVector3, align 4          ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.i = and i32 %i.h, 2048
  %.not = icmp eq i32 %i.i, 0                     ; 6 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.r = and i32 %i.q, 4096
  %.not225 = icmp eq i32 %i.r, 0                  ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.t = load float, ptr %i.s, align 4, !tbaa !244 ; 31 uses
  %i.u = fcmp ugt float %i.t, 0.000000e+00
  br i1 %i.u, label %bb.b, label %bb.at

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !245
  switch i32 %i.w, label %bb.at [
    i32 3, label %bb.c
    i32 4, label %bb.f
    i32 5, label %bb.k
    i32 9, label %bb.w
    i32 6, label %bb.w
    i32 12, label %bb.ae
    i32 7, label %bb.ao
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store float 1.000000e+00, ptr %2, align 4, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.y, align 4, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aa, align 4, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 0, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 324
  %.sroa.0548.0.copyload = load <2 x float>, ptr %i.ac, align 4 ; 4 uses
  %.sroa.12556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 332
  %.sroa.12556.0.copyload = load <2 x float>, ptr %.sroa.12556.0..sroa_idx, align 4, !tbaa !126 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !163, !nonnull !96, !align !167 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %.sroa.0548.0.vec.extract = extractelement <2 x float> %.sroa.0548.0.copyload, i64 0
  %.sroa.0548.4.vec.extract = extractelement <2 x float> %.sroa.0548.0.copyload, i64 1
  %.sroa.12556.8.vec.extract = extractelement <2 x float> %.sroa.12556.0.copyload, i64 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.al = load float, ptr %i.ak, align 8, !tbaa !9
  %i.am = load float, ptr %i.ah, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  %i.ao = load float, ptr %i.an, align 4, !tbaa !9
  %i.ap = fmul float %.sroa.0548.4.vec.extract, %i.ao
  %i.aq = tail call float @llvm.fmuladd.f32(float %.sroa.0548.0.vec.extract, float %i.am, float %i.ap)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.as = load float, ptr %i.ar, align 8, !tbaa !9
  %i.at = tail call noundef float @llvm.fmuladd.f32(float %.sroa.12556.8.vec.extract, float %i.as, float %i.aq)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.av = load <2 x float>, ptr %i.af, align 8, !tbaa !9 ; 2 uses
  %i.aw = load <2 x float>, ptr %i.ag, align 8, !tbaa !9 ; 2 uses
  %i.ax = shufflevector <2 x float> %.sroa.0548.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ay = shufflevector <2 x float> %i.av, <2 x float> %i.aw, <2 x i32> <i32 1, i32 3>
  %i.az = fmul <2 x float> %i.ax, %i.ay
  %i.ba = shufflevector <2 x float> %.sroa.0548.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = shufflevector <2 x float> %i.av, <2 x float> %i.aw, <2 x i32> <i32 0, i32 2>
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.bb, <2 x float> %i.az)
  %i.bd = shufflevector <2 x float> %.sroa.12556.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.al, i64 1
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.bf, <2 x float> %i.bc)
  %i.bh = load <2 x float>, ptr %i.au, align 8, !tbaa !9
  %i.bi = fadd <2 x float> %i.bg, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !9
  %i.bl = fadd float %i.at, %i.bk
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bl, i64 0
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store <2 x float> %i.bi, ptr %i.bm, align 4
  %.sroa.12556.0..sroa_idx559 = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.12556.0..sroa_idx559, align 4, !tbaa !126
  %i.bn = load ptr, ptr %0, align 8, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call noundef ptr %i.bp(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 128
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull align 4 dereferenceable(64) %2, float noundef %i.t)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 340
  %.sroa.0548.0.copyload551 = load <2 x float>, ptr %i.bu, align 4 ; 4 uses
  %.sroa.12556.0..sroa_idx557 = getelementptr inbounds nuw i8, ptr %1, i64 348
  %.sroa.12556.0.copyload558 = load <2 x float>, ptr %.sroa.12556.0..sroa_idx557, align 4, !tbaa !126 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !168, !nonnull !96, !align !167 ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %.sroa.0548.0.vec.extract550 = extractelement <2 x float> %.sroa.0548.0.copyload551, i64 0
  %.sroa.0548.4.vec.extract555 = extractelement <2 x float> %.sroa.0548.0.copyload551, i64 1
  %.sroa.12556.8.vec.extract564 = extractelement <2 x float> %.sroa.12556.0.copyload558, i64 0
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !9
  %i.ce = load float, ptr %i.bz, align 8, !tbaa !9
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 44
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !9
  %i.ch = fmul float %.sroa.0548.4.vec.extract555, %i.cg
  %i.ci = call float @llvm.fmuladd.f32(float %.sroa.0548.0.vec.extract550, float %i.ce, float %i.ch)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !9
  %i.cl = call noundef float @llvm.fmuladd.f32(float %.sroa.12556.8.vec.extract564, float %i.ck, float %i.ci)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.cn = load <2 x float>, ptr %i.bx, align 8, !tbaa !9 ; 2 uses
  %i.co = load <2 x float>, ptr %i.by, align 8, !tbaa !9 ; 2 uses
  %i.cp = shufflevector <2 x float> %.sroa.0548.0.copyload551, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cq = shufflevector <2 x float> %i.cn, <2 x float> %i.co, <2 x i32> <i32 1, i32 3>
  %i.cr = fmul <2 x float> %i.cp, %i.cq
  %i.cs = shufflevector <2 x float> %.sroa.0548.0.copyload551, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = shufflevector <2 x float> %i.cn, <2 x float> %i.co, <2 x i32> <i32 0, i32 2>
  %i.cu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.ct, <2 x float> %i.cr)
  %i.cv = shufflevector <2 x float> %.sroa.12556.0.copyload558, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cx = insertelement <2 x float> %i.cw, float %i.cd, i64 1
  %i.cy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.cx, <2 x float> %i.cu)
  %i.cz = load <2 x float>, ptr %i.cm, align 8, !tbaa !9
  %i.da = fadd <2 x float> %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.dc = load float, ptr %i.db, align 8, !tbaa !9
  %i.dd = fadd float %i.cl, %i.dc
  %.sroa.3.12.vec.insert.i4.i.i236 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dd, i64 0
  store <2 x float> %i.da, ptr %i.bm, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i236, ptr %.sroa.12556.0..sroa_idx559, align 4, !tbaa !126
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.de = load ptr, ptr %0, align 8, !tbaa !24
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = call noundef ptr %i.dg(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 128
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull align 4 dereferenceable(64) %2, float noundef %i.t)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.at

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !163, !nonnull !96, !align !167 ; 9 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 576
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 580
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 596
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 612
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dm, i64 28
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dm, i64 44
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.ed = load float, ptr %i.ec, align 8, !tbaa !9, !noalias !249 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.ef = load float, ptr %i.ee, align 8, !tbaa !9, !noalias !246 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 628
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !9, !noalias !246 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.ej = load float, ptr %i.ei, align 8, !tbaa !9, !noalias !246 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %i.el = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.em = load float, ptr %i.el, align 8, !tbaa !9, !noalias !246
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.en = load <2 x float>, ptr %i.dn, align 8, !tbaa !9, !noalias !249 ; 4 uses
  %i.eo = load <2 x float>, ptr %i.do, align 8, !tbaa !9, !noalias !249 ; 2 uses
  %i.ep = load <2 x float>, ptr %i.dp, align 8, !tbaa !9, !noalias !249 ; 3 uses
  %i.eq = load <2 x float>, ptr %i.dr, align 8, !tbaa !9, !noalias !249 ; 2 uses
  %i.er = shufflevector <2 x float> %i.ep, <2 x float> %i.en, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.es = insertelement <4 x float> %i.er, float 0.000000e+00, i64 3
  %i.et = shufflevector <2 x float> %i.en, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.eu = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.et, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.ev = shufflevector <2 x float> %i.ep, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ew = shufflevector <4 x float> %i.eu, <4 x float> %i.ev, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.ex = shufflevector <2 x float> %i.eo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ey = insertelement <4 x float> %i.ex, float 0.000000e+00, i64 3
  %i.ez = shufflevector <2 x float> %i.en, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.fa = shufflevector <2 x float> %i.eq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fb = insertelement <4 x float> %i.fa, float 0.000000e+00, i64 3
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fd = load <2 x float>, ptr %i.dy, align 8, !tbaa !9, !noalias !249 ; 3 uses
  %i.fe = load <2 x float>, ptr %i.dt, align 4, !tbaa !9, !noalias !249 ; 2 uses
  %i.ff = load float, ptr %i.dw, align 8, !tbaa !9, !noalias !249
  %i.fg = load <2 x float>, ptr %i.ds, align 4, !tbaa !9, !noalias !249 ; 2 uses
  %i.fh = load float, ptr %i.dv, align 8, !tbaa !9, !noalias !249
  %i.fi = load <2 x float>, ptr %i.du, align 4, !tbaa !9, !noalias !249 ; 2 uses
  %i.fj = load float, ptr %i.dx, align 8, !tbaa !9, !noalias !249
  %i.fk = load <2 x float>, ptr %i.ek, align 8, !tbaa !9, !noalias !246
  %i.fl = load <2 x float>, ptr %i.dq, align 4, !tbaa !9, !noalias !249 ; 3 uses
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fo = load <2 x float>, ptr %i.dz, align 4, !tbaa !9, !noalias !249 ; 3 uses
  %i.fp = shufflevector <2 x float> %i.fl, <2 x float> %i.fo, <2 x i32> <i32 0, i32 2>
  %i.fq = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = fmul <2 x float> %i.fp, %i.fr
  %i.ft = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = shufflevector <2 x float> %i.en, <2 x float> %i.fd, <2 x i32> <i32 0, i32 2>
  %i.fw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> %i.fv, <2 x float> %i.fs)
  %i.fx = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = shufflevector <2 x float> %i.fl, <2 x float> %i.fo, <2 x i32> <i32 1, i32 3>
  %i.ga = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.fz, <2 x float> %i.fw)
  %i.gb = fadd <2 x float> %i.fk, %i.ga
  %i.gc = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gd = shufflevector <4 x float> %i.ew, <4 x float> %i.gc, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ge = fmul <4 x float> %i.es, %i.gd
  %i.gf = shufflevector <2 x float> %i.fg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gg = shufflevector <4 x float> %i.ey, <4 x float> %i.gf, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gg, <4 x float> %i.ez, <4 x float> %i.ge)
  %i.gi = shufflevector <2 x float> %i.fi, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gj = shufflevector <4 x float> %i.fb, <4 x float> %i.gi, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gj, <4 x float> %i.fn, <4 x float> %i.gh)
  %i.gl = shufflevector <2 x float> %i.fd, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.gm = shufflevector <2 x float> %i.ep, <2 x float> %i.fe, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.gn = insertelement <4 x float> %i.gm, float 1.000000e+00, i64 3 ; 2 uses
  %i.go = fmul <4 x float> %i.gl, %i.gn
  %i.gp = shufflevector <2 x float> %i.eo, <2 x float> %i.fg, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.gq = insertelement <4 x float> %i.gp, float 0.000000e+00, i64 3 ; 2 uses
  %i.gr = shufflevector <2 x float> %i.fd, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.gs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gq, <4 x float> %i.gr, <4 x float> %i.go)
  %i.gt = shufflevector <2 x float> %i.eq, <2 x float> %i.fi, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.gu = insertelement <4 x float> %i.gt, float 0.000000e+00, i64 3 ; 2 uses
  %i.gv = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gw = shufflevector <4 x float> %i.gv, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.gx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gu, <4 x float> %i.gw, <4 x float> %i.gs)
  store <4 x float> %i.gk, ptr %3, align 16, !alias.scope !246
  store <4 x float> %i.gx, ptr %i.fc, align 16, !alias.scope !246
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %.sroa.15.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gz = load <2 x float>, ptr %i.ea, align 8, !tbaa !9, !noalias !249 ; 4 uses
  %i.ha = load float, ptr %i.eb, align 4, !tbaa !9, !noalias !249
  %i.hb = fmul float %i.ha, %i.eh
  %i.hc = extractelement <2 x float> %i.gz, i64 0
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.hc, float %i.hb)
  %i.he = tail call noundef float @llvm.fmuladd.f32(float %i.ej, float %i.ed, float %i.hd)
  %i.hf = fadd float %i.he, %i.em
  %.sroa.3.12.vec.insert.i4.i.i241 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hf, i64 0
  %i.hg = shufflevector <2 x float> %i.gz, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.hh = insertelement <4 x float> %i.hg, float 0.000000e+00, i64 3
  %i.hi = insertelement <4 x float> %i.hh, float %i.ff, i64 2
  %i.hj = shufflevector <2 x float> %i.gz, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hk = shufflevector <4 x float> %i.gn, <4 x float> %i.hj, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.hl = fmul <4 x float> %i.hi, %i.hk
  %i.hm = insertelement <4 x float> %i.gq, float %i.fh, i64 2
  %i.hn = shufflevector <2 x float> %i.gz, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ho = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hm, <4 x float> %i.hn, <4 x float> %i.hl)
  %i.hp = insertelement <4 x float> %i.gu, float %i.fj, i64 2
  %i.hq = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ed, i64 0
  %i.hr = shufflevector <4 x float> %i.hq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hp, <4 x float> %i.hr, <4 x float> %i.ho)
  store <4 x float> %i.hs, ptr %i.gy, align 16, !alias.scope !246
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  store <2 x float> %i.gb, ptr %i.ht, align 16, !alias.scope !246
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i241, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !126, !alias.scope !246
  br i1 %.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.hu = load ptr, ptr %0, align 8, !tbaa !24
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 40
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = tail call noundef ptr %i.hw(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !24
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 128
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(8) %i.hx, ptr noundef nonnull align 4 dereferenceable(64) %3, float noundef %i.t)
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !168, !nonnull !96, !align !167 ; 9 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 644
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 660
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 676
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.io = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ic, i64 28
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ic, i64 44
  %i.is = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  %i.it = load float, ptr %i.is, align 8, !tbaa !9, !noalias !252 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.iv = load float, ptr %i.iu, align 8, !tbaa !9, !noalias !257 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 692
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !9, !noalias !257 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.iz = load float, ptr %i.iy, align 8, !tbaa !9, !noalias !257 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ic, i64 56
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ic, i64 64
  %i.jc = load float, ptr %i.jb, align 8, !tbaa !9, !noalias !257
  %i.jd = load <2 x float>, ptr %i.id, align 8, !tbaa !9, !noalias !252 ; 4 uses
  %i.je = load <2 x float>, ptr %i.ie, align 8, !tbaa !9, !noalias !252 ; 2 uses
  %i.jf = load <2 x float>, ptr %i.if, align 8, !tbaa !9, !noalias !252 ; 3 uses
  %i.jg = load <2 x float>, ptr %i.ih, align 8, !tbaa !9, !noalias !252 ; 2 uses
  %i.jh = shufflevector <2 x float> %i.jf, <2 x float> %i.jd, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.ji = insertelement <4 x float> %i.jh, float 0.000000e+00, i64 3
  %i.jj = shufflevector <2 x float> %i.jd, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
end_hunk_0
