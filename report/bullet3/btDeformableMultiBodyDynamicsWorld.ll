Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDeformableMultiBodyDynamicsWorld?download=true
inline.NumInlined: 1094
inline.NumDeleted: 383
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN10btSoftBody19applyRepulsionForceEfb:bb.a
  %i.lf = fadd double %i.le, 1.000000e+00
  %i.lg = fdiv double %i.ld, %i.lf
  %i.lh = fptrunc double %i.lg to float           ; 2 uses
  %i.li = fmul float %i.lh, 2.000000e+00
  %storemerge117 = select i1 %or.cond, float %i.li, float %i.lh ; 5 uses
  br i1 %i.gn, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.o
  %i.lj = fmul float %.sink.i, %i.kp
  %i.lk = fmul float %storemerge117, %i.lj
  %i.ll = getelementptr inbounds nuw i8, ptr %i.fn, i64 112
  %i.lm = load float, ptr %i.ll, align 8, !tbaa !68 ; 2 uses
  %i.ln = fmul float %i.lm, %i.lk
  %i.lo = getelementptr inbounds nuw i8, ptr %i.fn, i64 48 ; 2 uses
  %i.lp = insertelement <2 x float> poison, float %i.kp, i64 0
  %i.lq = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lr = fmul <2 x float> %i.ko, %i.lq
  %i.ls = insertelement <2 x float> poison, float %storemerge117, i64 0
  %i.lt = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.lu = fmul <2 x float> %i.lt, %i.lr
  %i.lv = insertelement <2 x float> poison, float %i.lm, i64 0
  %i.lw = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lx = fmul <2 x float> %i.lu, %i.lw
  %i.ly = load <2 x float>, ptr %i.lo, align 8, !tbaa !68
  %i.lz = fadd <2 x float> %i.lx, %i.ly
  store <2 x float> %i.lz, ptr %i.lo, align 8, !tbaa !68
  %i.ma = getelementptr inbounds nuw i8, ptr %i.fn, i64 56 ; 2 uses
  %i.mb = load float, ptr %i.ma, align 8, !tbaa !68
  %i.mc = fadd float %i.ln, %i.mb
  store float %i.mc, ptr %i.ma, align 8, !tbaa !68
  %i.md = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.me = load float, ptr %i.md, align 4, !tbaa !68 ; 2 uses
  %i.mf = fmul float %.sink.i, %i.me
  %i.mg = fmul float %storemerge117, %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %i.fr, i64 112
  %i.mi = load float, ptr %i.mh, align 8, !tbaa !68 ; 2 uses
  %i.mj = fmul float %i.mi, %i.mg
  %i.mk = getelementptr inbounds nuw i8, ptr %i.fr, i64 48 ; 2 uses
  %i.ml = insertelement <2 x float> poison, float %i.me, i64 0
  %i.mm = shufflevector <2 x float> %i.ml, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mn = fmul <2 x float> %i.ko, %i.mm
  %i.mo = fmul <2 x float> %i.lt, %i.mn
  %i.mp = insertelement <2 x float> poison, float %i.mi, i64 0
  %i.mq = shufflevector <2 x float> %i.mp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mr = fmul <2 x float> %i.mo, %i.mq
  %i.ms = load <2 x float>, ptr %i.mk, align 8, !tbaa !68
  %i.mt = fadd <2 x float> %i.mr, %i.ms
  store <2 x float> %i.mt, ptr %i.mk, align 8, !tbaa !68
  %i.mu = getelementptr inbounds nuw i8, ptr %i.fr, i64 56 ; 2 uses
  %i.mv = load float, ptr %i.mu, align 8, !tbaa !68
  %i.mw = fadd float %i.mj, %i.mv
  store float %i.mw, ptr %i.mu, align 8, !tbaa !68
  %i.mx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.my = load float, ptr %i.mx, align 8, !tbaa !68 ; 2 uses
  %i.mz = fmul float %.sink.i, %i.my
  %i.na = fmul float %storemerge117, %i.mz
  %i.nb = getelementptr inbounds nuw i8, ptr %i.fw, i64 112
  %i.nc = load float, ptr %i.nb, align 8, !tbaa !68 ; 2 uses
  %i.nd = fmul float %i.nc, %i.na
  %i.ne = getelementptr inbounds nuw i8, ptr %i.fw, i64 48 ; 2 uses
  %i.nf = insertelement <2 x float> poison, float %i.my, i64 0
  %i.ng = shufflevector <2 x float> %i.nf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nh = fmul <2 x float> %i.ko, %i.ng
  %i.ni = fmul <2 x float> %i.lt, %i.nh
  %i.nj = insertelement <2 x float> poison, float %i.nc, i64 0
  %i.nk = shufflevector <2 x float> %i.nj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nl = fmul <2 x float> %i.ni, %i.nk
  %i.nm = load <2 x float>, ptr %i.ne, align 8, !tbaa !68
  %i.nn = fadd <2 x float> %i.nl, %i.nm
  store <2 x float> %i.nn, ptr %i.ne, align 8, !tbaa !68
  %i.no = getelementptr inbounds nuw i8, ptr %i.fw, i64 56 ; 2 uses
  %i.np = load float, ptr %i.no, align 8, !tbaa !68
  %i.nq = fadd float %i.nd, %i.np
  store float %i.nq, ptr %i.no, align 8, !tbaa !68
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.o
  br i1 %i.jd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.loopexit
  %i.nr = load float, ptr %i.es, align 8, !tbaa !445
  %i.ns = fmul float %storemerge117, %i.nr        ; 2 uses
  %i.nt = fmul float %.sink.i, %i.ns
  %i.nu = insertelement <2 x float> poison, float %i.ns, i64 0
  %i.nv = shufflevector <2 x float> %i.nu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nw = fmul <2 x float> %i.ko, %i.nv
  %i.nx = load <2 x float>, ptr %i.bu, align 8, !tbaa !68
  %i.ny = fsub <2 x float> %i.nx, %i.nw
  store <2 x float> %i.ny, ptr %i.bu, align 8, !tbaa !68
  %i.nz = load float, ptr %i.ec, align 8, !tbaa !68
  %i.oa = fsub float %i.nz, %i.nt
  store float %i.oa, ptr %i.ec, align 8, !tbaa !68
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %.loopexit, %bb.g
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %exitcond296.not = icmp eq i64 %indvars.iv.next293, %wide.trip.count295
  br i1 %exitcond296.not, label %._crit_edge274.loopexit, label %bb.g, !llvm.loop !453
}

declare void @_ZN10btSoftBody25geometricCollisionHandlerEPS_(ptr noundef nonnull align 8 dereferenceable(2064), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN34btDeformableMultiBodyDynamicsWorld21softBodySelfCollisionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1056) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.CProfileSample, align 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull @.str.8)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 860 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !181  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 872
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK17btCollisionObject8isActiveEv.exit, %bb.a
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK17btCollisionObject8isActiveEv.exit
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.l, %_ZNK17btCollisionObject8isActiveEv.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK17btCollisionObject8isActiveEv.exit ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !180
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !270  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.j = load i32, ptr %i.i, align 8, !tbaa !365
  switch i32 %i.j, label %bb.c [
    i32 6, label %_ZNK17btCollisionObject8isActiveEv.exit
    i32 2, label %_ZNK17btCollisionObject8isActiveEv.exit
    i32 5, label %_ZNK17btCollisionObject8isActiveEv.exit
  ]

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN10btSoftBody23defaultCollisionHandlerEPS_(ptr noundef nonnull align 8 dereferenceable(2064) %i.h, ptr noundef nonnull %i.h)
          to label %._ZNK17btCollisionObject8isActiveEv.exit_crit_edge unwind label %bb.d

._ZNK17btCollisionObject8isActiveEv.exit_crit_edge: ; preds = %bb.c
  %.pre = load i32, ptr %i.a, align 4, !tbaa !181
  br label %_ZNK17btCollisionObject8isActiveEv.exit

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %i.k

_ZNK17btCollisionObject8isActiveEv.exit:          ; preds = %._ZNK17btCollisionObject8isActiveEv.exit_crit_edge, %bb.b, %bb.b, %bb.b
  %i.l = phi i32 [ %.pre, %._ZNK17btCollisionObject8isActiveEv.exit_crit_edge ], [ %i.e, %bb.b ], [ %i.e, %bb.b ], [ %i.e, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.b, label %._crit_edge, !llvm.loop !454
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN34btDeformableMultiBodyDynamicsWorld18positionCorrectionEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1056) %0, float noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %class.btTransform, align 4         ; 7 uses
  %3 = alloca %class.btVector3, align 8           ; 5 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !367  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.j = phi i32 [ %i.b, %.lr.ph ], [ %i.ai, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !369
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !370  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 704 ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.n, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 712
  %.sroa.2.0.copyload.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !51 ; 2 uses
  %i.o = shufflevector <2 x float> %.sroa.2.0.copyload.i, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  store <2 x float> %.sroa.0.0.copyload.i, ptr %3, align 8
  store <2 x float> %.sroa.2.0.copyload.i, ptr %i.e, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 720
  %.sroa.0.0.copyload.i10 = load <2 x float>, ptr %i.p, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %i.m, i64 728
  %.sroa.2.0.copyload.i12 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i11, align 8, !tbaa !51
  %i.q = bitcast <2 x float> %.sroa.0.0.copyload.i to i64
  %i.r = and i64 %i.q, 2147483647
  %i.s = icmp ne i64 %i.r, 0
  %i.t = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> %.sroa.0.0.copyload.i10, <4 x i32> <i32 1, i32 poison, i32 2, i32 3>
  %i.u = shufflevector <4 x float> %i.t, <4 x float> %i.o, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %.fr = freeze <4 x float> %i.u
  %i.v = fcmp une <4 x float> %.fr, zeroinitializer
  %.sroa.2.0.copyload.i12.fr = freeze <2 x float> %.sroa.2.0.copyload.i12
  %.sroa.7.8.vec.extract = extractelement <2 x float> %.sroa.2.0.copyload.i12.fr, i64 0 ; 2 uses
  %i.w = fcmp une float %.sroa.7.8.vec.extract, 0.000000e+00
  %i.x = bitcast <4 x i1> %i.v to i4
  %i.y = icmp ne i4 %i.x, 0
  %op.rdx = or i1 %i.y, %i.w
  %op.rdx50 = select i1 %op.rdx, i1 true, i1 %i.s
  br i1 %op.rdx50, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.aa = fmul <2 x float> %.sroa.0.0.copyload.i10, splat (float 1.000000e-01)
  %i.ab = fmul float %.sroa.7.8.vec.extract, 1.000000e-01
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ab, i64 0
  store <2 x float> %i.aa, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.f, align 8
  call void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 352 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !455
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !50
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !50
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !50
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !367
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ai = phi i32 [ %i.j, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !456
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %5 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !68
  %i.d = fmul float %3, %i.c
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !68
  %i.f = insertelement <2 x float> poison, float %3, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %i.g, %i.e
  %i.i = load <2 x float>, ptr %i.a, align 4, !tbaa !68
  %i.j = fadd <2 x float> %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load float, ptr %i.k, align 4, !tbaa !68
  %i.m = fadd float %i.d, %i.l
  %.sroa.3.12.vec.insert.i24 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.m, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %i.j, ptr %i.n, align 4
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i24, ptr %.sroa.473.0..sroa_idx, align 4, !tbaa !51
  %i.o = load float, ptr %2, align 4, !tbaa !68   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load <2 x float>, ptr %i.p, align 4, !tbaa !68 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.q, %i.q
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.r)
  %i.t = extractelement <2 x float> %i.q, i64 1   ; 2 uses
  %i.u = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.s) ; 2 uses
  %i.v = fcmp ogt float %i.u, f0x34000000
  %sqrt = tail call float @llvm.sqrt.f32(float %i.u)
  %.0 = select i1 %i.v, float %sqrt, float 0.000000e+00 ; 2 uses
  %i.w = fmul float %3, %.0
  %i.x = fcmp ogt float %i.w, f0x3F490FDB
  %i.y = fdiv float f0x3F490FDB, %3
  %.1 = select i1 %i.x, float %i.y, float %.0     ; 6 uses
  %i.z = fcmp olt float %.1, 1.000000e-03
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = fmul float %3, %3
  %i.ab = fmul float %3, %i.aa
  %i.ac = fmul float %i.ab, f0x3CAAAAAB
  %i.ad = fmul float %i.ac, %.1
  %i.ae = fneg float %.1
  %i.af = fmul float %i.ad, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %3, float 5.000000e-01, float %i.af)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ah = fmul float %.1, 5.000000e-01
  %i.ai = fmul float %3, %i.ah
  %i.aj = tail call noundef float @sinf(float noundef %i.ai) #19
  %i.ak = fdiv float %i.aj, %.1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink84 = phi float [ %i.ak, %bb.c ], [ %i.ag, %bb.b ] ; 2 uses
  %i.al = fmul float %i.o, %.sink84               ; 4 uses
  %i.am = insertelement <2 x float> poison, float %.sink84, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x float> %i.q, %i.an            ; 5 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 1
  %i.aq = fmul float %3, %.1
  %i.ar = fmul float %i.aq, 5.000000e-01
  %i.as = tail call noundef float @cosf(float noundef %i.ar) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %.fca.0.load.i = load <2 x float>, ptr %5, align 8 ; 6 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.sroa.064.0.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 0
  %i.at = fneg <2 x float> %i.ao                  ; 2 uses
  %i.au = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.av = insertelement <2 x float> %i.au, float %i.al, i64 0
  %i.aw = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ax = fmul <2 x float> %i.av, %i.aw
  %i.ay = insertelement <2 x float> poison, float %i.as, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ba = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %.fca.0.load.i, <2 x float> %i.ax)
  %i.bb = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 2>
  %i.bc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.bb, <2 x float> %i.ba)
  %i.bd = fneg float %i.al
  %i.be = fneg float %i.ap
  %i.bf = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.bd, i64 1
  %i.bh = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2>
  %i.bi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bh, <2 x float> %i.bc) ; 5 uses
  %i.bj = fneg float %.sroa.064.0.vec.extract
  %i.bk = fmul float %i.al, %i.bj
  %foldExtExtBinop86 = fmul <2 x float> %i.ao, %.fca.1.load.i
  %i.bl = shufflevector <2 x float> %foldExtExtBinop86, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bm = insertelement <2 x float> %i.bl, float %i.bk, i64 1
  %i.bn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %.fca.1.load.i, <2 x float> %i.bm)
  %i.bo = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bp = insertelement <2 x float> %i.bo, float %i.al, i64 0
  %i.bq = shufflevector <2 x float> %.fca.0.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.br = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bq, <2 x float> %i.bn)
  %i.bs = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 0, i32 2>
  %i.bt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.bs, <2 x float> %i.br) ; 4 uses
  %foldExtExtBinop88 = fmul <2 x float> %i.bi, %i.bi
  %i.bu = extractelement <2 x float> %foldExtExtBinop88, i64 1
  %i.bv = extractelement <2 x float> %i.bi, i64 0 ; 2 uses
  %i.bw = call float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %i.bu)
  %i.bx = extractelement <2 x float> %i.bt, i64 0 ; 2 uses
  %i.by = call float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %i.bw)
  %i.bz = extractelement <2 x float> %i.bt, i64 1 ; 2 uses
  %i.ca = call noundef float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.by) ; 2 uses
  %i.cb = fcmp ogt float %i.ca, f0x34000000
  br i1 %i.cb, label %bb.e, label %_ZN12btQuaternion13safeNormalizeEv.exit

bb.e:                                             ; preds = %bb.d
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.ca)
  %i.cc = fdiv float 1.000000e+00, %sqrt.i.i.i
  %i.cd = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cf = fmul <2 x float> %i.bi, %i.ce
  %i.cg = fmul <2 x float> %i.bt, %i.ce
  br label %_ZN12btQuaternion13safeNormalizeEv.exit

_ZN12btQuaternion13safeNormalizeEv.exit:          ; preds = %bb.d, %bb.e
  %.sroa.11.0 = phi <2 x float> [ %i.cg, %bb.e ], [ %i.bt, %bb.d ] ; 2 uses
  %.sroa.0.0 = phi <2 x float> [ %i.cf, %bb.e ], [ %i.bi, %bb.d ] ; 2 uses
  %.sroa.0.0.vec.extract46 = extractelement <2 x float> %.sroa.0.0, i64 0 ; 6 uses
  %.sroa.0.4.vec.extract51 = extractelement <2 x float> %.sroa.0.0, i64 1 ; 5 uses
  %i.ch = fmul float %.sroa.0.4.vec.extract51, %.sroa.0.4.vec.extract51
  %i.ci = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract46, float %.sroa.0.0.vec.extract46, float %i.ch)
  %.sroa.11.8.vec.extract56 = extractelement <2 x float> %.sroa.11.0, i64 0 ; 4 uses
  %i.cj = call float @llvm.fmuladd.f32(float %.sroa.11.8.vec.extract56, float %.sroa.11.8.vec.extract56, float %i.ci)
  %.sroa.11.12.vec.extract61 = extractelement <2 x float> %.sroa.11.0, i64 1 ; 5 uses
  %i.ck = call noundef float @llvm.fmuladd.f32(float %.sroa.11.12.vec.extract61, float %.sroa.11.12.vec.extract61, float %i.cj) ; 2 uses
  %i.cl = fcmp ogt float %i.ck, f0x34000000
  br i1 %i.cl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN12btQuaternion13safeNormalizeEv.exit
  %i.cm = fdiv float 2.000000e+00, %i.ck          ; 3 uses
  %i.cn = fmul float %.sroa.0.0.vec.extract46, %i.cm ; 2 uses
  %i.co = fmul float %.sroa.0.4.vec.extract51, %i.cm ; 3 uses
  %i.cp = fmul float %.sroa.11.8.vec.extract56, %i.cm ; 4 uses
  %i.cq = fmul float %.sroa.11.12.vec.extract61, %i.cn ; 2 uses
  %i.cr = fmul float %.sroa.11.12.vec.extract61, %i.co ; 2 uses
  %i.cs = fmul float %.sroa.11.12.vec.extract61, %i.cp ; 2 uses
  %i.ct = fmul float %.sroa.0.0.vec.extract46, %i.cn ; 2 uses
  %i.cu = fmul float %.sroa.0.0.vec.extract46, %i.co ; 2 uses
  %i.cv = fmul float %.sroa.0.0.vec.extract46, %i.cp ; 2 uses
  %i.cw = fmul float %.sroa.0.4.vec.extract51, %i.co ; 2 uses
  %i.cx = fmul float %.sroa.0.4.vec.extract51, %i.cp ; 2 uses
  %i.cy = fmul float %.sroa.11.8.vec.extract56, %i.cp ; 2 uses
  %i.cz = fadd float %i.cw, %i.cy
  %i.da = fsub float 1.000000e+00, %i.cz
  %i.db = fsub float %i.cu, %i.cs
  %i.dc = fadd float %i.cv, %i.cr
  %i.dd = fadd float %i.cu, %i.cs
  %i.de = fadd float %i.ct, %i.cy
  %i.df = fsub float 1.000000e+00, %i.de
  %i.dg = fsub float %i.cx, %i.cq
  %i.dh = fsub float %i.cv, %i.cr
  %i.di = fadd float %i.cx, %i.cq
  %i.dj = fadd float %i.ct, %i.cw
  %i.dk = fsub float 1.000000e+00, %i.dj
  store float %i.da, ptr %4, align 4, !tbaa !68
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.db, ptr %i.dl, align 4, !tbaa !68
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.dc, ptr %i.dm, align 4, !tbaa !68
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %i.dn, align 4, !tbaa !68
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %i.dd, ptr %i.do, align 4, !tbaa !68
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.df, ptr %i.dp, align 4, !tbaa !68
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.dg, ptr %i.dq, align 4, !tbaa !68
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float 0.000000e+00, ptr %i.dr, align 4, !tbaa !68
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %i.dh, ptr %i.ds, align 4, !tbaa !68
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %i.di, ptr %i.dt, align 4, !tbaa !68
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.dk, ptr %i.du, align 4, !tbaa !68
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %i.dv, align 4, !tbaa !68
  br label %bb.h

bb.g:                                             ; preds = %_ZN12btQuaternion13safeNormalizeEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(48) %0, i64 16, i1 false), !tbaa.struct !50
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dx, ptr noundef nonnull align 4 dereferenceable(16) %i.dw, i64 16, i1 false), !tbaa.struct !50
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dz, ptr noundef nonnull align 4 dereferenceable(16) %i.dy, i64 16, i1 false), !tbaa.struct !50
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN34btDeformableMultiBodyDynamicsWorld19integrateTransformsEf(ptr noundef nonnull align 8 dereferenceable(1056) %0, float noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.btTransform, align 4         ; 7 uses
  %3 = alloca %class.btVector3, align 8           ; 5 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %5 = alloca %class.CProfileSample, align 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull @.str.9)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !367  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZN34btDeformableMultiBodyDynamicsWorld18positionCorrectionEf.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.j = phi i32 [ %i.b, %.lr.ph.i ], [ %i.ai, %bb.d ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !369
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !370  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 704 ; 2 uses
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.n, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 712
  %.sroa.2.0.copyload.i.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !51 ; 2 uses
  %i.o = shufflevector <2 x float> %.sroa.2.0.copyload.i.i, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  store <2 x float> %.sroa.0.0.copyload.i.i, ptr %3, align 8
  store <2 x float> %.sroa.2.0.copyload.i.i, ptr %i.e, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 720
  %.sroa.0.0.copyload.i10.i = load <2 x float>, ptr %i.p, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %i.m, i64 728
  %.sroa.2.0.copyload.i12.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i11.i, align 8, !tbaa !51
  %i.q = bitcast <2 x float> %.sroa.0.0.copyload.i.i to i64
  %i.r = and i64 %i.q, 2147483647
  %i.s = icmp ne i64 %i.r, 0
  %i.t = shufflevector <2 x float> %.sroa.0.0.copyload.i.i, <2 x float> %.sroa.0.0.copyload.i10.i, <4 x i32> <i32 1, i32 poison, i32 2, i32 3>
  %i.u = shufflevector <4 x float> %i.t, <4 x float> %i.o, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %.fr = freeze <4 x float> %i.u
  %i.v = fcmp une <4 x float> %.fr, zeroinitializer
  %.sroa.2.0.copyload.i12.i.fr = freeze <2 x float> %.sroa.2.0.copyload.i12.i
  %.sroa.7.8.vec.extract.i = extractelement <2 x float> %.sroa.2.0.copyload.i12.i.fr, i64 0 ; 2 uses
  %i.w = fcmp une float %.sroa.7.8.vec.extract.i, 0.000000e+00
  %i.x = bitcast <4 x i1> %i.v to i4
  %i.y = icmp ne i4 %i.x, 0
  %op.rdx = or i1 %i.y, %i.w
  %op.rdx5 = select i1 %op.rdx, i1 true, i1 %i.s
  br i1 %op.rdx5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.aa = fmul <2 x float> %.sroa.0.0.copyload.i10.i, splat (float 1.000000e-01)
  %i.ab = fmul float %.sroa.7.8.vec.extract.i, 1.000000e-01
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ab, i64 0
  store <2 x float> %i.aa, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %i.f, align 8
  invoke void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 352 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !455
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !50
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !50
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !50
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !367
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.b
  %i.ai = phi i32 [ %i.j, %bb.b ], [ %.pre.i, %.noexc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next.i, %i.aj
  br i1 %i.ak, label %bb.b, label %_ZN34btDeformableMultiBodyDynamicsWorld18positionCorrectionEf.exit, !llvm.loop !456

_ZN34btDeformableMultiBodyDynamicsWorld18positionCorrectionEf.exit: ; preds = %bb.d, %bb.a
  invoke void @_ZN24btMultiBodyDynamicsWorld19integrateTransformsEf(ptr noundef nonnull align 8 dereferenceable(848) %0, float noundef %1)
          to label %bb.e unwind label %.loopexit.split-lp

bb.e:                                             ; preds = %_ZN34btDeformableMultiBodyDynamicsWorld18positionCorrectionEf.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !119 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !87
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 184
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(609) %i.am, float noundef %1)
          to label %bb.f unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

.loopexit:                                        ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %_ZN34btDeformableMultiBodyDynamicsWorld18positionCorrectionEf.exit, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %lpad.phi
}

declare void @_ZN24btMultiBodyDynamicsWorld19integrateTransformsEf(ptr noundef nonnull align 8 dereferenceable(848), float noundef) unnamed_addr #5

declare void @_ZN22btDeformableBodySolver14backupVelocityEv(ptr noundef nonnull align 8 dereferenceable(609)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN34btDeformableMultiBodyDynamicsWorld16setupConstraintsEv(ptr noundef nonnull align 8 dereferenceable(1056) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(609) %i.b, ptr noundef nonnull align 4 dereferenceable(128) %i.c)
  tail call void @_ZN34btDeformableMultiBodyDynamicsWorld15sortConstraintsEv(ptr noundef nonnull align 8 dereferenceable(1056) %0)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !239
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !238
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 216
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(508) %0)
  %.not3 = icmp eq i32 %i.o, 0
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !234
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %i.q, %bb.d ], [ null, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !248  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.v = load i32, ptr %i.u, align 4, !tbaa !235
  %i.w = load i32, ptr %i.g, align 4, !tbaa !239
  %i.x = load ptr, ptr %0, align 8, !tbaa !87
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(121) %0)
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !87
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(264) %i.t, ptr noundef nonnull %i.c, ptr noundef %i.r, i32 noundef %i.v, ptr noundef %i.k, i32 noundef %i.w, ptr noundef %i.aa)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !410
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !411
  tail call void @_ZN25btSimulationIslandManager12buildIslandsEP12btDispatcherP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(105) %i.af, ptr noundef %i.ah, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN34btDeformableMultiBodyDynamicsWorld23solveContactConstraintsEv(ptr noundef nonnull align 8 dereferenceable(1056) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !410
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !411
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !248
  tail call void @_ZN25btSimulationIslandManager14processIslandsEP12btDispatcherP16btCollisionWorldPNS_14IslandCallbackE(ptr noundef nonnull align 8 dereferenceable(105) %i.b, ptr noundef %i.d, ptr noundef nonnull %0, ptr noundef %i.f)
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !248  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(272) %i.g, i32 noundef -1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !457  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !257
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !87
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef %i.o)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 516 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !368
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph72, label %._crit_edge76

.lr.ph72:                                         ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 756 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 788 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 820 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 269
  br label %bb.b

.preheader:                                       ; preds = %bb.ad
  %i.ao = icmp sgt i32 %i.fj, 0
  br i1 %i.ao, label %.lr.ph75, label %._crit_edge76

.lr.ph75:                                         ; preds = %.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !373
  %wide.trip.count83 = zext nneg i32 %i.fj to i64
  br label %bb.ae

bb.b:                                             ; preds = %.lr.ph72, %bb.ad
  %indvars.iv77 = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next78, %bb.ad ] ; 2 uses
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !373
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv77
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !374 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !376 ; 2 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %bb.d, label %bb.c

end_hunk_0
