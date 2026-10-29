Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDeformableMultiBodyDynamicsWorld?download=true
inline.NumInlined: 1094
inline.NumDeleted: 383
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN10btSoftBody19applyRepulsionForceEfb:bb.a
.preheader.preheader:                             ; preds = %bb.o
  %i.lw = fmul float %i.lb, %i.lc
  %i.lx = fmul float %storemerge117, %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.gi, i64 112
  %i.lz = load float, ptr %i.ly, align 8, !tbaa !60 ; 2 uses
  %i.ma = fmul float %i.lz, %i.lx
  %i.mb = getelementptr inbounds nuw i8, ptr %i.gi, i64 48 ; 2 uses
  %i.mc = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.md = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.me = fmul <2 x float> %i.la, %i.md
  %i.mf = insertelement <2 x float> poison, float %storemerge117, i64 0
  %i.mg = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.mh = fmul <2 x float> %i.mg, %i.me
  %i.mi = insertelement <2 x float> poison, float %i.lz, i64 0
  %i.mj = shufflevector <2 x float> %i.mi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mk = fmul <2 x float> %i.mh, %i.mj
  %i.ml = load <2 x float>, ptr %i.mb, align 8, !tbaa !60
  %i.mm = fadd <2 x float> %i.mk, %i.ml
  store <2 x float> %i.mm, ptr %i.mb, align 8, !tbaa !60
  %i.mn = getelementptr inbounds nuw i8, ptr %i.gi, i64 56 ; 2 uses
  %i.mo = load float, ptr %i.mn, align 8, !tbaa !60
  %i.mp = fadd float %i.ma, %i.mo
  store float %i.mp, ptr %i.mn, align 8, !tbaa !60
  %i.mq = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !60 ; 2 uses
  %i.ms = fmul float %i.lb, %i.mr
  %i.mt = fmul float %storemerge117, %i.ms
  %i.mu = getelementptr inbounds nuw i8, ptr %i.gm, i64 112
  %i.mv = load float, ptr %i.mu, align 8, !tbaa !60 ; 2 uses
  %i.mw = fmul float %i.mv, %i.mt
  %i.mx = getelementptr inbounds nuw i8, ptr %i.gm, i64 48 ; 2 uses
  %i.my = insertelement <2 x float> poison, float %i.mr, i64 0
  %i.mz = shufflevector <2 x float> %i.my, <2 x float> poison, <2 x i32> zeroinitializer
  %i.na = fmul <2 x float> %i.la, %i.mz
  %i.nb = fmul <2 x float> %i.mg, %i.na
  %i.nc = insertelement <2 x float> poison, float %i.mv, i64 0
  %i.nd = shufflevector <2 x float> %i.nc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ne = fmul <2 x float> %i.nb, %i.nd
  %i.nf = load <2 x float>, ptr %i.mx, align 8, !tbaa !60
  %i.ng = fadd <2 x float> %i.ne, %i.nf
  store <2 x float> %i.ng, ptr %i.mx, align 8, !tbaa !60
  %i.nh = getelementptr inbounds nuw i8, ptr %i.gm, i64 56 ; 2 uses
  %i.ni = load float, ptr %i.nh, align 8, !tbaa !60
  %i.nj = fadd float %i.mw, %i.ni
  store float %i.nj, ptr %i.nh, align 8, !tbaa !60
  %i.nk = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.nl = load float, ptr %i.nk, align 8, !tbaa !60 ; 2 uses
  %i.nm = fmul float %i.lb, %i.nl
  %i.nn = fmul float %storemerge117, %i.nm
  %i.no = getelementptr inbounds nuw i8, ptr %i.gr, i64 112
  %i.np = load float, ptr %i.no, align 8, !tbaa !60 ; 2 uses
  %i.nq = fmul float %i.np, %i.nn
  %i.nr = getelementptr inbounds nuw i8, ptr %i.gr, i64 48 ; 2 uses
  %i.ns = insertelement <2 x float> poison, float %i.nl, i64 0
  %i.nt = shufflevector <2 x float> %i.ns, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nu = fmul <2 x float> %i.la, %i.nt
  %i.nv = fmul <2 x float> %i.mg, %i.nu
  %i.nw = insertelement <2 x float> poison, float %i.np, i64 0
  %i.nx = shufflevector <2 x float> %i.nw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ny = fmul <2 x float> %i.nv, %i.nx
  %i.nz = load <2 x float>, ptr %i.nr, align 8, !tbaa !60
  %i.oa = fadd <2 x float> %i.ny, %i.nz
  store <2 x float> %i.oa, ptr %i.nr, align 8, !tbaa !60
  %i.ob = getelementptr inbounds nuw i8, ptr %i.gr, i64 56 ; 2 uses
  %i.oc = load float, ptr %i.ob, align 8, !tbaa !60
  %i.od = fadd float %i.nq, %i.oc
  store float %i.od, ptr %i.ob, align 8, !tbaa !60
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.o
  br i1 %i.js, label %bb.p, label %_ZNK9btVector38safeNormEv.exit.thread

bb.p:                                             ; preds = %.loopexit
  %i.oe = load float, ptr %i.fn, align 8, !tbaa !501
  %i.of = fmul float %storemerge117, %i.oe        ; 2 uses
  %i.og = fmul float %i.lb, %i.of
  %i.oh = insertelement <2 x float> poison, float %i.of, i64 0
  %i.oi = shufflevector <2 x float> %i.oh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oj = fmul <2 x float> %i.la, %i.oi
  %i.ok = load <2 x float>, ptr %i.cm, align 8, !tbaa !60
  %i.ol = fsub <2 x float> %i.ok, %i.oj
  store <2 x float> %i.ol, ptr %i.cm, align 8, !tbaa !60
  %i.om = load float, ptr %i.ew, align 8, !tbaa !60
  %i.on = fsub float %i.om, %i.og
  store float %i.on, ptr %i.ew, align 8, !tbaa !60
  br label %_ZNK9btVector38safeNormEv.exit.thread

_ZNK9btVector38safeNormEv.exit.thread:            ; preds = %bb.n, %_ZNK9btVector38safeNormEv.exit, %bb.p, %.loopexit, %bb.g
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %exitcond296.not = icmp eq i64 %indvars.iv.next293, %wide.trip.count295
  br i1 %exitcond296.not, label %._crit_edge274.loopexit, label %bb.g, !llvm.loop !491
}

declare void @_ZN10btSoftBody25geometricCollisionHandlerEPS_(ptr noundef nonnull align 8 dereferenceable(2064), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN34btDeformableMultiBodyDynamicsWorld21softBodySelfCollisionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1056) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.CProfileSample, align 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull @.str.8)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 860 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !126  ; 2 uses
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
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !200  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.j = load i32, ptr %i.i, align 8, !tbaa !288
  switch i32 %i.j, label %bb.c [
    i32 6, label %_ZNK17btCollisionObject8isActiveEv.exit
    i32 2, label %_ZNK17btCollisionObject8isActiveEv.exit
    i32 5, label %_ZNK17btCollisionObject8isActiveEv.exit
  ]

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN10btSoftBody23defaultCollisionHandlerEPS_(ptr noundef nonnull align 8 dereferenceable(2064) %i.h, ptr noundef nonnull %i.h)
          to label %._ZNK17btCollisionObject8isActiveEv.exit_crit_edge unwind label %bb.d

._ZNK17btCollisionObject8isActiveEv.exit_crit_edge: ; preds = %bb.c
  %.pre = load i32, ptr %i.a, align 4, !tbaa !126
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
  br i1 %i.n, label %bb.b, label %._crit_edge, !llvm.loop !505
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN34btDeformableMultiBodyDynamicsWorld18positionCorrectionEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1056) %0, float noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %class.btTransform, align 4         ; 7 uses
  %3 = alloca %class.btVector3, align 8           ; 5 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !289  ; 2 uses
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
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !291
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !293  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 704 ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.n, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 712
  %.sroa.2.0.copyload.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !57 ; 2 uses
  %i.o = shufflevector <2 x float> %.sroa.2.0.copyload.i, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  store <2 x float> %.sroa.0.0.copyload.i, ptr %3, align 8
  store <2 x float> %.sroa.2.0.copyload.i, ptr %i.e, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 720
  %.sroa.0.0.copyload.i10 = load <2 x float>, ptr %i.p, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %i.m, i64 728
  %i.q = bitcast <2 x float> %.sroa.0.0.copyload.i to i64
  %i.r = and i64 %i.q, 2147483647
  %i.s = icmp ne i64 %i.r, 0
  %i.t = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> %.sroa.0.0.copyload.i10, <4 x i32> <i32 1, i32 poison, i32 2, i32 3>
  %i.u = shufflevector <4 x float> %i.t, <4 x float> %i.o, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %.fr = freeze <4 x float> %i.u
  %i.v = fcmp une <4 x float> %.fr, zeroinitializer
  %.sroa.7.8.vec.extract = load float, ptr %.sroa.2.0..sroa_idx.i11, align 8, !tbaa !57
  %.sroa.7.8.vec.extract.fr = freeze float %.sroa.7.8.vec.extract ; 2 uses
  %i.w = fcmp une float %.sroa.7.8.vec.extract.fr, 0.000000e+00
  %i.x = bitcast <4 x i1> %i.v to i4
  %i.y = icmp ne i4 %i.x, 0
  %op.rdx = or i1 %i.y, %i.w
  %op.rdx50 = select i1 %op.rdx, i1 true, i1 %i.s
  br i1 %op.rdx50, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.aa = fmul <2 x float> %.sroa.0.0.copyload.i10, splat (float 1.000000e-01)
  %i.ab = fmul float %.sroa.7.8.vec.extract.fr, 1.000000e-01
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ab, i64 0
  store <2 x float> %i.aa, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.f, align 8
  call void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 352 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !331
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !331
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !58
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !58
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !58
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !289
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ai = phi i32 [ %i.j, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !12
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %5 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !60
  %i.d = fmul float %3, %i.c
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !60
  %i.f = insertelement <2 x float> poison, float %3, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %i.g, %i.e
  %i.i = load <2 x float>, ptr %i.a, align 4, !tbaa !60
  %i.j = fadd <2 x float> %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load float, ptr %i.k, align 4, !tbaa !60
  %i.m = fadd float %i.d, %i.l
  %.sroa.3.12.vec.insert.i24 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.m, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %i.j, ptr %i.n, align 4
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i24, ptr %.sroa.473.0..sroa_idx, align 4, !tbaa !57
  %i.o = load float, ptr %2, align 4, !tbaa !60   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load <2 x float>, ptr %i.p, align 4, !tbaa !60 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.q, %i.q
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.r)
  %i.t = extractelement <2 x float> %i.q, i64 1   ; 2 uses
  %i.u = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.s) ; 2 uses
  %i.v = fcmp ogt float %i.u, f0x34000000
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = tail call noundef float @sqrtf(float noundef %i.u) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi float [ %i.w, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.x = fmul float %3, %.0
  %i.y = fcmp ogt float %i.x, f0x3F490FDB
  %i.z = fdiv float f0x3F490FDB, %3
  %.1 = select i1 %i.y, float %i.z, float %.0     ; 6 uses
  %i.aa = fcmp olt float %.1, 1.000000e-03
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = fmul float %3, %3
  %i.ac = fmul float %3, %i.ab
  %i.ad = fmul float %i.ac, f0x3CAAAAAB
  %i.ae = fmul float %i.ad, %.1
  %i.af = fneg float %.1
  %i.ag = fmul float %i.ae, %i.af
  %i.ah = tail call float @llvm.fmuladd.f32(float %3, float 5.000000e-01, float %i.ag)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ai = fmul float %.1, 5.000000e-01
  %i.aj = fmul float %3, %i.ai
  %i.ak = tail call noundef float @sinf(float noundef %i.aj) #19
  %i.al = fdiv float %i.ak, %.1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink85 = phi float [ %i.al, %bb.e ], [ %i.ah, %bb.d ] ; 2 uses
  %i.am = fmul float %i.o, %.sink85               ; 4 uses
  %i.an = insertelement <2 x float> poison, float %.sink85, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %i.q, %i.ao            ; 5 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 1
  %i.ar = fmul float %3, %.1
  %i.as = fmul float %i.ar, 5.000000e-01
  %i.at = tail call noundef float @cosf(float noundef %i.as) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %.fca.0.load.i = load <2 x float>, ptr %5, align 8 ; 6 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.sroa.064.0.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 0
  %i.au = fneg <2 x float> %i.ap                  ; 2 uses
  %i.av = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aw = insertelement <2 x float> %i.av, float %i.am, i64 0
  %i.ax = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ay = fmul <2 x float> %i.aw, %i.ax
  %i.az = insertelement <2 x float> poison, float %i.at, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %.fca.0.load.i, <2 x float> %i.ay)
  %i.bc = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 2>
  %i.bd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.bc, <2 x float> %i.bb)
  %i.be = fneg float %i.am
  %i.bf = fneg float %i.aq
  %i.bg = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.be, i64 1
  %i.bi = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2>
  %i.bj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bi, <2 x float> %i.bd) ; 5 uses
  %foldExtExtBinop87 = fmul <2 x float> %i.ap, %.fca.1.load.i
  %i.bk = fneg float %.sroa.064.0.vec.extract
  %i.bl = fmul float %i.am, %i.bk
  %i.bm = shufflevector <2 x float> %foldExtExtBinop87, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bn = insertelement <2 x float> %i.bm, float %i.bl, i64 1
  %i.bo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %.fca.1.load.i, <2 x float> %i.bn)
  %i.bp = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bq = insertelement <2 x float> %i.bp, float %i.am, i64 0
  %i.br = shufflevector <2 x float> %.fca.0.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.br, <2 x float> %i.bo)
  %i.bt = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 0, i32 2>
  %i.bu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.bt, <2 x float> %i.bs) ; 4 uses
  %foldExtExtBinop89 = fmul <2 x float> %i.bj, %i.bj
  %i.bv = extractelement <2 x float> %foldExtExtBinop89, i64 1
  %i.bw = extractelement <2 x float> %i.bj, i64 0 ; 2 uses
  %i.bx = call float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %i.bv)
  %i.by = extractelement <2 x float> %i.bu, i64 0 ; 2 uses
  %i.bz = call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bx)
  %i.ca = extractelement <2 x float> %i.bu, i64 1 ; 2 uses
  %i.cb = call noundef float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %i.bz) ; 2 uses
  %i.cc = fcmp ogt float %i.cb, f0x34000000
  br i1 %i.cc, label %bb.g, label %_ZN12btQuaternion13safeNormalizeEv.exit

bb.g:                                             ; preds = %bb.f
  %i.cd = call noundef float @sqrtf(float noundef %i.cb) #19
  %i.ce = fdiv float 1.000000e+00, %i.cd
  %i.cf = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ch = fmul <2 x float> %i.bj, %i.cg
  %i.ci = fmul <2 x float> %i.bu, %i.cg
  br label %_ZN12btQuaternion13safeNormalizeEv.exit

_ZN12btQuaternion13safeNormalizeEv.exit:          ; preds = %bb.f, %bb.g
  %.sroa.11.0 = phi <2 x float> [ %i.ci, %bb.g ], [ %i.bu, %bb.f ] ; 2 uses
  %.sroa.0.0 = phi <2 x float> [ %i.ch, %bb.g ], [ %i.bj, %bb.f ] ; 2 uses
  %.sroa.0.0.vec.extract46 = extractelement <2 x float> %.sroa.0.0, i64 0 ; 6 uses
  %.sroa.0.4.vec.extract51 = extractelement <2 x float> %.sroa.0.0, i64 1 ; 5 uses
  %i.cj = fmul float %.sroa.0.4.vec.extract51, %.sroa.0.4.vec.extract51
  %i.ck = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract46, float %.sroa.0.0.vec.extract46, float %i.cj)
  %.sroa.11.8.vec.extract56 = extractelement <2 x float> %.sroa.11.0, i64 0 ; 4 uses
  %i.cl = call float @llvm.fmuladd.f32(float %.sroa.11.8.vec.extract56, float %.sroa.11.8.vec.extract56, float %i.ck)
  %.sroa.11.12.vec.extract61 = extractelement <2 x float> %.sroa.11.0, i64 1 ; 5 uses
  %i.cm = call noundef float @llvm.fmuladd.f32(float %.sroa.11.12.vec.extract61, float %.sroa.11.12.vec.extract61, float %i.cl) ; 2 uses
  %i.cn = fcmp ogt float %i.cm, f0x34000000
  br i1 %i.cn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN12btQuaternion13safeNormalizeEv.exit
  %i.co = fdiv float 2.000000e+00, %i.cm          ; 3 uses
  %i.cp = fmul float %.sroa.0.0.vec.extract46, %i.co ; 2 uses
  %i.cq = fmul float %.sroa.0.4.vec.extract51, %i.co ; 3 uses
  %i.cr = fmul float %.sroa.11.8.vec.extract56, %i.co ; 4 uses
  %i.cs = fmul float %.sroa.11.12.vec.extract61, %i.cp ; 2 uses
  %i.ct = fmul float %.sroa.11.12.vec.extract61, %i.cq ; 2 uses
  %i.cu = fmul float %.sroa.11.12.vec.extract61, %i.cr ; 2 uses
  %i.cv = fmul float %.sroa.0.0.vec.extract46, %i.cp ; 2 uses
  %i.cw = fmul float %.sroa.0.0.vec.extract46, %i.cq ; 2 uses
  %i.cx = fmul float %.sroa.0.0.vec.extract46, %i.cr ; 2 uses
  %i.cy = fmul float %.sroa.0.4.vec.extract51, %i.cq ; 2 uses
  %i.cz = fmul float %.sroa.0.4.vec.extract51, %i.cr ; 2 uses
  %i.da = fmul float %.sroa.11.8.vec.extract56, %i.cr ; 2 uses
  %i.db = fadd float %i.cy, %i.da
  %i.dc = fsub float 1.000000e+00, %i.db
  %i.dd = fsub float %i.cw, %i.cu
  %i.de = fadd float %i.cx, %i.ct
  %i.df = fadd float %i.cw, %i.cu
  %i.dg = fadd float %i.cv, %i.da
  %i.dh = fsub float 1.000000e+00, %i.dg
  %i.di = fsub float %i.cz, %i.cs
  %i.dj = fsub float %i.cx, %i.ct
  %i.dk = fadd float %i.cz, %i.cs
  %i.dl = fadd float %i.cv, %i.cy
  %i.dm = fsub float 1.000000e+00, %i.dl
  store float %i.dc, ptr %4, align 4, !tbaa !60
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.dd, ptr %i.dn, align 4, !tbaa !60
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.de, ptr %i.do, align 4, !tbaa !60
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %i.dp, align 4, !tbaa !60
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %i.df, ptr %i.dq, align 4, !tbaa !60
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.dh, ptr %i.dr, align 4, !tbaa !60
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.di, ptr %i.ds, align 4, !tbaa !60
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float 0.000000e+00, ptr %i.dt, align 4, !tbaa !60
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %i.dj, ptr %i.du, align 4, !tbaa !60
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %i.dk, ptr %i.dv, align 4, !tbaa !60
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.dm, ptr %i.dw, align 4, !tbaa !60
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %i.dx, align 4, !tbaa !60
  br label %bb.j

bb.i:                                             ; preds = %_ZN12btQuaternion13safeNormalizeEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(48) %0, i64 16, i1 false), !tbaa.struct !58
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dz, ptr noundef nonnull align 4 dereferenceable(16) %i.dy, i64 16, i1 false), !tbaa.struct !58
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.eb, ptr noundef nonnull align 4 dereferenceable(16) %i.ea, i64 16, i1 false), !tbaa.struct !58
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !289  ; 2 uses
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
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !291
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !293  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 704 ; 2 uses
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.n, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 712
  %.sroa.2.0.copyload.i.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !57 ; 2 uses
  %i.o = shufflevector <2 x float> %.sroa.2.0.copyload.i.i, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  store <2 x float> %.sroa.0.0.copyload.i.i, ptr %3, align 8
  store <2 x float> %.sroa.2.0.copyload.i.i, ptr %i.e, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 720
  %.sroa.0.0.copyload.i10.i = load <2 x float>, ptr %i.p, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %i.m, i64 728
  %i.q = bitcast <2 x float> %.sroa.0.0.copyload.i.i to i64
  %i.r = and i64 %i.q, 2147483647
  %i.s = icmp ne i64 %i.r, 0
  %i.t = shufflevector <2 x float> %.sroa.0.0.copyload.i.i, <2 x float> %.sroa.0.0.copyload.i10.i, <4 x i32> <i32 1, i32 poison, i32 2, i32 3>
  %i.u = shufflevector <4 x float> %i.t, <4 x float> %i.o, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %.fr = freeze <4 x float> %i.u
  %i.v = fcmp une <4 x float> %.fr, zeroinitializer
  %.sroa.7.8.vec.extract.i = load float, ptr %.sroa.2.0..sroa_idx.i11.i, align 8, !tbaa !57
  %.sroa.7.8.vec.extract.i.fr = freeze float %.sroa.7.8.vec.extract.i ; 2 uses
  %i.w = fcmp une float %.sroa.7.8.vec.extract.i.fr, 0.000000e+00
  %i.x = bitcast <4 x i1> %i.v to i4
  %i.y = icmp ne i4 %i.x, 0
  %op.rdx = or i1 %i.y, %i.w
  %op.rdx6 = select i1 %op.rdx, i1 true, i1 %i.s
  br i1 %op.rdx6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.aa = fmul <2 x float> %.sroa.0.0.copyload.i10.i, splat (float 1.000000e-01)
  %i.ab = fmul float %.sroa.7.8.vec.extract.i.fr, 1.000000e-01
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ab, i64 0
  store <2 x float> %i.aa, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %i.f, align 8
  invoke void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 352 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !331
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !331
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !58
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !58
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !58
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !289
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.b
  %i.ai = phi i32 [ %i.j, %bb.b ], [ %.pre.i, %.noexc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next.i, %i.aj
  br i1 %i.ak, label %bb.b, label %_ZN34btDeformableMultiBodyDynamicsWorld18positionCorrectionEf.exit, !llvm.loop !12

_ZN34btDeformableMultiBodyDynamicsWorld18positionCorrectionEf.exit: ; preds = %bb.d, %bb.a
  invoke void @_ZN24btMultiBodyDynamicsWorld19integrateTransformsEf(ptr noundef nonnull align 8 dereferenceable(848) %0, float noundef %1)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %_ZN34btDeformableMultiBodyDynamicsWorld18positionCorrectionEf.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !123 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !62
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 184
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(609) %i.am, float noundef %1)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.e, %_ZN34btDeformableMultiBodyDynamicsWorld18positionCorrectionEf.exit
  %lpad.loopexit.split-lp8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %lpad.loopexit.split-lp8
}

declare void @_ZN24btMultiBodyDynamicsWorld19integrateTransformsEf(ptr noundef nonnull align 8 dereferenceable(848), float noundef) unnamed_addr #5

declare void @_ZN22btDeformableBodySolver14backupVelocityEv(ptr noundef nonnull align 8 dereferenceable(609)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN34btDeformableMultiBodyDynamicsWorld16setupConstraintsEv(ptr noundef nonnull align 8 dereferenceable(1056) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(609) %i.b, ptr noundef nonnull align 4 dereferenceable(128) %i.c)
  tail call void @_ZN34btDeformableMultiBodyDynamicsWorld15sortConstraintsEv(ptr noundef nonnull align 8 dereferenceable(1056) %0)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !176
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !175
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 216
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(508) %0)
  %.not3 = icmp eq i32 %i.o, 0
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !171
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %i.q, %bb.d ], [ null, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !185  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.v = load i32, ptr %i.u, align 4, !tbaa !172
  %i.w = load i32, ptr %i.g, align 4, !tbaa !176
  %i.x = load ptr, ptr %0, align 8, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(121) %0)
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(264) %i.t, ptr noundef nonnull %i.c, ptr noundef %i.r, i32 noundef %i.v, ptr noundef %i.k, i32 noundef %i.w, ptr noundef %i.aa)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !324
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !325
  tail call void @_ZN25btSimulationIslandManager12buildIslandsEP12btDispatcherP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(105) %i.af, ptr noundef %i.ah, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN34btDeformableMultiBodyDynamicsWorld23solveContactConstraintsEv(ptr noundef nonnull align 8 dereferenceable(1056) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !324
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !325
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !185
  tail call void @_ZN25btSimulationIslandManager14processIslandsEP12btDispatcherP16btCollisionWorldPNS_14IslandCallbackE(ptr noundef nonnull align 8 dereferenceable(105) %i.b, ptr noundef %i.d, ptr noundef nonnull %0, ptr noundef %i.f)
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !185  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(272) %i.g, i32 noundef -1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !518  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !188
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef %i.o)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 516 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !290
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
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !294
  %wide.trip.count83 = zext nneg i32 %i.fj to i64
  br label %bb.ae

bb.b:                                             ; preds = %.lr.ph72, %bb.ad
  %indvars.iv77 = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next78, %bb.ad ] ; 2 uses
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !294
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv77
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !296 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !305 ; 2 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 240
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !288
  %i.ay = icmp eq i32 %i.ax, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.027 = phi i1 [ false, %bb.b ], [ %i.ay, %bb.c ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 180 ; 3 uses
end_hunk_0
