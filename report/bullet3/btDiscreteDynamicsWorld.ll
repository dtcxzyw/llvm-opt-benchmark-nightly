Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDiscreteDynamicsWorld?download=true
inline.NumInlined: 953
inline.NumDeleted: 286
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN23btDiscreteDynamicsWorld14debugDrawWorldEv:bb.a
  %.not23 = icmp eq ptr %i.bw, null
  br i1 %.not23, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = load ptr, ptr %0, align 8, !tbaa !19
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = invoke noundef ptr %i.bz(ptr noundef nonnull align 8 dereferenceable(121) %0)
          to label %bb.aa unwind label %bb.h      ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !19
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 208
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.ca)
          to label %bb.ab unwind label %bb.h

bb.ab:                                            ; preds = %bb.aa, %bb.y
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.ac:                                            ; preds = %.loopexit27, %.loopexit.split-lp, %bb.h, %bb.i, %bb.m, %bb.k, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.p, %bb.i ], [ %i.w, %bb.k ], [ %i.o, %bb.h ], [ %i.ae, %bb.m ], [ %lpad.loopexit, %.loopexit27 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) unnamed_addr #2

declare void @_ZN16btCollisionWorld14debugDrawWorldEv(ptr noundef nonnull align 8 dereferenceable(121)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld11clearForcesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(508) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !58
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !58
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !187
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld12applyGravityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(508) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !58   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK17btCollisionObject8isActiveEv.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK17btCollisionObject8isActiveEv.exit
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.k, %_ZNK17btCollisionObject8isActiveEv.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK17btCollisionObject8isActiveEv.exit ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !106  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.j = load i32, ptr %i.i, align 8, !tbaa !99
  switch i32 %i.j, label %bb.c [
    i32 6, label %_ZNK17btCollisionObject8isActiveEv.exit
    i32 2, label %_ZNK17btCollisionObject8isActiveEv.exit
    i32 5, label %_ZNK17btCollisionObject8isActiveEv.exit
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11btRigidBody12applyGravityEv(ptr noundef nonnull align 8 dereferenceable(744) %i.h)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !58
  br label %_ZNK17btCollisionObject8isActiveEv.exit

_ZNK17btCollisionObject8isActiveEv.exit:          ; preds = %bb.b, %bb.b, %bb.b, %bb.c
  %i.k = phi i32 [ %i.e, %bb.b ], [ %i.e, %bb.b ], [ %i.e, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge, !llvm.loop !188
}

declare void @_ZN11btRigidBody12applyGravityEv(ptr noundef nonnull align 8 dereferenceable(744)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(508) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.btTransform, align 4         ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.d = load i32, ptr %i.c, align 8, !tbaa !100
  %i.e = and i32 %i.d, 3
  %.not8 = icmp eq i32 %i.e, 0
  br i1 %.not8, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.j = load i8, ptr %i.i, align 4, !tbaa !66, !range !87, !noundef !88
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.m = load float, ptr %i.l, align 4, !tbaa !110 ; 2 uses
  %i.n = fcmp une float %i.m, 0.000000e+00
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.p = load float, ptr %i.o, align 8, !tbaa !111
  %i.q = fsub float %i.p, %i.m
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.s = load float, ptr %i.r, align 8, !tbaa !111
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 300
  %i.u = load float, ptr %i.t, align 4, !tbaa !112
  %i.v = fmul float %i.s, %i.u
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = phi float [ %i.q, %bb.e ], [ %i.v, %bb.f ]
  call void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h, float noundef %i.w, ptr noundef nonnull align 4 dereferenceable(64) %2)
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 4 dereferenceable(64) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %4) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %5 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !11
  %i.d = fmul float %3, %i.c
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !11
  %i.f = insertelement <2 x float> poison, float %3, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %i.g, %i.e
  %i.i = load <2 x float>, ptr %i.a, align 4, !tbaa !11
  %i.j = fadd <2 x float> %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load float, ptr %i.k, align 4, !tbaa !11
  %i.m = fadd float %i.d, %i.l
  %.sroa.3.12.vec.insert.i24 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.m, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %i.j, ptr %i.n, align 4
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i24, ptr %.sroa.473.0..sroa_idx, align 4, !tbaa !113
  %i.o = load float, ptr %2, align 4, !tbaa !11   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load <2 x float>, ptr %i.p, align 4, !tbaa !11 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.q, %i.q
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.r)
  %i.t = extractelement <2 x float> %i.q, i64 1   ; 2 uses
  %i.u = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.s) ; 2 uses
  %6 = fcmp ogt float %i.u, f0x34000000
  %sqrt = tail call float @llvm.sqrt.f32(float %i.u)
  %.0 = select i1 %6, float %sqrt, float 0.000000e+00 ; 2 uses
  %7 = fmul float %3, %.0
  %i.v = fcmp ogt float %7, f0x3F490FDB
  %8 = fdiv float f0x3F490FDB, %3
  %.1 = select i1 %i.v, float %8, float %.0       ; 6 uses
  %9 = fcmp olt float %.1, 1.000000e-03
  br i1 %9, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = fmul float %3, %3
  %i.x = fmul float %3, %i.w
  %i.y = fmul float %i.x, f0x3CAAAAAB
  %i.z = fmul float %i.y, %.1
  %i.aa = fneg float %.1
  %i.ab = fmul float %i.z, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %3, float 5.000000e-01, float %i.ab)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ad = fmul float %.1, 5.000000e-01
  %i.ae = fmul float %3, %i.ad
  %i.af = tail call noundef float @sinf(float noundef %i.ae) #21
  %i.ag = fdiv float %i.af, %.1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink84 = phi float [ %i.ag, %bb.c ], [ %i.ac, %bb.b ] ; 2 uses
  %i.ah = fmul float %i.o, %.sink84               ; 4 uses
  %i.ai = insertelement <2 x float> poison, float %.sink84, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x float> %i.q, %i.aj            ; 5 uses
  %i.al = extractelement <2 x float> %i.ak, i64 1
  %i.am = fmul float %3, %.1
  %i.an = fmul float %i.am, 5.000000e-01
  %i.ao = tail call noundef float @cosf(float noundef %i.an) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %.fca.0.load.i = load <2 x float>, ptr %5, align 8 ; 6 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.sroa.064.0.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 0
  %i.ap = fneg <2 x float> %i.ak                  ; 2 uses
  %i.aq = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ar = insertelement <2 x float> %i.aq, float %i.ah, i64 0
  %i.as = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.at = fmul <2 x float> %i.ar, %i.as
  %i.au = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %.fca.0.load.i, <2 x float> %i.at)
  %i.ax = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 2>
  %i.ay = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.ax, <2 x float> %i.aw)
  %i.az = fneg float %i.ah
  %i.ba = fneg float %i.al
  %i.bb = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.az, i64 1
  %i.bd = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2>
  %i.be = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.bd, <2 x float> %i.ay) ; 5 uses
  %foldExtExtBinop86 = fmul <2 x float> %i.ak, %.fca.1.load.i
  %i.bf = fneg float %.sroa.064.0.vec.extract
  %i.bg = fmul float %i.ah, %i.bf
  %i.bh = shufflevector <2 x float> %foldExtExtBinop86, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bi = insertelement <2 x float> %i.bh, float %i.bg, i64 1
  %i.bj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %.fca.1.load.i, <2 x float> %i.bi)
  %i.bk = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bl = insertelement <2 x float> %i.bk, float %i.ah, i64 0
  %i.bm = shufflevector <2 x float> %.fca.0.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bm, <2 x float> %i.bj)
  %i.bo = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 0, i32 2>
  %i.bp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.bo, <2 x float> %i.bn) ; 4 uses
  %foldExtExtBinop88 = fmul <2 x float> %i.be, %i.be
  %i.bq = extractelement <2 x float> %foldExtExtBinop88, i64 1
  %i.br = extractelement <2 x float> %i.be, i64 0 ; 2 uses
  %i.bs = call float @llvm.fmuladd.f32(float %i.br, float %i.br, float %i.bq)
  %i.bt = extractelement <2 x float> %i.bp, i64 0 ; 2 uses
  %i.bu = call float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float %i.bs)
  %i.bv = extractelement <2 x float> %i.bp, i64 1 ; 2 uses
  %i.bw = call noundef float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %i.bu) ; 2 uses
  %i.bx = fcmp ogt float %i.bw, f0x34000000
  br i1 %i.bx, label %bb.e, label %_ZN12btQuaternion13safeNormalizeEv.exit

bb.e:                                             ; preds = %bb.d
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.bw)
  %i.by = fdiv float 1.000000e+00, %sqrt.i.i.i
  %i.bz = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cb = fmul <2 x float> %i.be, %i.ca
  %i.cc = fmul <2 x float> %i.bp, %i.ca
  br label %_ZN12btQuaternion13safeNormalizeEv.exit

_ZN12btQuaternion13safeNormalizeEv.exit:          ; preds = %bb.d, %bb.e
  %.sroa.11.0 = phi <2 x float> [ %i.cc, %bb.e ], [ %i.bp, %bb.d ] ; 2 uses
  %.sroa.0.0 = phi <2 x float> [ %i.cb, %bb.e ], [ %i.be, %bb.d ] ; 2 uses
  %.sroa.0.0.vec.extract46 = extractelement <2 x float> %.sroa.0.0, i64 0 ; 6 uses
  %.sroa.0.4.vec.extract51 = extractelement <2 x float> %.sroa.0.0, i64 1 ; 5 uses
  %i.cd = fmul float %.sroa.0.4.vec.extract51, %.sroa.0.4.vec.extract51
  %i.ce = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract46, float %.sroa.0.0.vec.extract46, float %i.cd)
  %.sroa.11.8.vec.extract56 = extractelement <2 x float> %.sroa.11.0, i64 0 ; 4 uses
  %i.cf = call float @llvm.fmuladd.f32(float %.sroa.11.8.vec.extract56, float %.sroa.11.8.vec.extract56, float %i.ce)
  %.sroa.11.12.vec.extract61 = extractelement <2 x float> %.sroa.11.0, i64 1 ; 5 uses
  %i.cg = call noundef float @llvm.fmuladd.f32(float %.sroa.11.12.vec.extract61, float %.sroa.11.12.vec.extract61, float %i.cf) ; 2 uses
  %i.ch = fcmp ogt float %i.cg, f0x34000000
  br i1 %i.ch, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN12btQuaternion13safeNormalizeEv.exit
  %i.ci = fdiv float 2.000000e+00, %i.cg          ; 3 uses
  %i.cj = fmul float %.sroa.0.0.vec.extract46, %i.ci ; 2 uses
  %i.ck = fmul float %.sroa.0.4.vec.extract51, %i.ci ; 3 uses
  %i.cl = fmul float %.sroa.11.8.vec.extract56, %i.ci ; 4 uses
  %i.cm = fmul float %.sroa.11.12.vec.extract61, %i.cj ; 2 uses
  %i.cn = fmul float %.sroa.11.12.vec.extract61, %i.ck ; 2 uses
  %i.co = fmul float %.sroa.11.12.vec.extract61, %i.cl ; 2 uses
  %i.cp = fmul float %.sroa.0.0.vec.extract46, %i.cj ; 2 uses
  %i.cq = fmul float %.sroa.0.0.vec.extract46, %i.ck ; 2 uses
  %i.cr = fmul float %.sroa.0.0.vec.extract46, %i.cl ; 2 uses
  %i.cs = fmul float %.sroa.0.4.vec.extract51, %i.ck ; 2 uses
  %i.ct = fmul float %.sroa.0.4.vec.extract51, %i.cl ; 2 uses
  %i.cu = fmul float %.sroa.11.8.vec.extract56, %i.cl ; 2 uses
  %i.cv = fadd float %i.cs, %i.cu
  %i.cw = fsub float 1.000000e+00, %i.cv
  %i.cx = fsub float %i.cq, %i.co
  %i.cy = fadd float %i.cr, %i.cn
  %i.cz = fadd float %i.cq, %i.co
  %i.da = fadd float %i.cp, %i.cu
  %i.db = fsub float 1.000000e+00, %i.da
  %i.dc = fsub float %i.ct, %i.cm
  %i.dd = fsub float %i.cr, %i.cn
  %i.de = fadd float %i.ct, %i.cm
  %i.df = fadd float %i.cp, %i.cs
  %i.dg = fsub float 1.000000e+00, %i.df
  store float %i.cw, ptr %4, align 4, !tbaa !11
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.cx, ptr %i.dh, align 4, !tbaa !11
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.cy, ptr %i.di, align 4, !tbaa !11
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %i.dj, align 4, !tbaa !11
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %i.cz, ptr %i.dk, align 4, !tbaa !11
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.db, ptr %i.dl, align 4, !tbaa !11
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.dc, ptr %i.dm, align 4, !tbaa !11
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float 0.000000e+00, ptr %i.dn, align 4, !tbaa !11
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %i.dd, ptr %i.do, align 4, !tbaa !11
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %i.de, ptr %i.dp, align 4, !tbaa !11
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.dg, ptr %i.dq, align 4, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %i.dr, align 4, !tbaa !11
  br label %bb.h

bb.g:                                             ; preds = %_ZN12btQuaternion13safeNormalizeEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(48) %0, i64 16, i1 false), !tbaa.struct !114
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dt, ptr noundef nonnull align 4 dereferenceable(16) %i.ds, i64 16, i1 false), !tbaa.struct !114
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dv, ptr noundef nonnull align 4 dereferenceable(16) %i.du, i64 16, i1 false), !tbaa.struct !114
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld23synchronizeMotionStatesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(508) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.btTransform, align 4         ; 4 uses
  %2 = alloca %class.btTransform, align 4         ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 426
  %i.b = load i8, ptr %i.a, align 2, !tbaa !60, !range !87, !noundef !88
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.preheader, label %.preheader18

.preheader18:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !58   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  br label %bb.j

.preheader:                                       ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !85   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph22, label %.loopexit

.lr.ph22:                                         ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit
  %i.r = phi i32 [ %i.l, %.lr.ph22 ], [ %i.av, %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit ] ; 3 uses
  %indvars.iv25 = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next26, %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit ] ; 2 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !84
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv25
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !90   ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 272
  %i.w = load i32, ptr %i.v, align 8, !tbaa !98
  %i.x = and i32 %i.w, 2
  %.not.i = icmp eq i32 %i.x, 0
  %.not17 = icmp eq ptr %i.u, null
  %.not = or i1 %.not17, %.not.i
  br i1 %.not, label %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 592 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !109
  %.not.i13 = icmp eq ptr %i.z, null
  br i1 %.not.i13, label %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 224
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !100
  %i.ac = and i32 %i.ab, 3
  %.not8.i = icmp eq i32 %i.ac, 0
  br i1 %.not8.i, label %bb.e, label %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %i.ag = load i8, ptr %i.o, align 4, !tbaa !66, !range !87, !noundef !88
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ai = load float, ptr %i.p, align 4, !tbaa !110 ; 2 uses
  %i.aj = fcmp une float %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = load float, ptr %i.q, align 8, !tbaa !111
  %i.al = fsub float %i.ak, %i.ai
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.am = load float, ptr %i.q, align 8, !tbaa !111
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 300
  %i.ao = load float, ptr %i.an, align 4, !tbaa !112
  %i.ap = fmul float %i.am, %i.ao
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aq = phi float [ %i.al, %bb.g ], [ %i.ap, %bb.h ]
  call void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %i.ad, ptr noundef nonnull align 4 dereferenceable(16) %i.ae, ptr noundef nonnull align 4 dereferenceable(16) %i.af, float noundef %i.aq, ptr noundef nonnull align 4 dereferenceable(64) %2)
  %i.ar = load ptr, ptr %i.y, align 8, !tbaa !109 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull align 4 dereferenceable(64) %2), !inline_history !191
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.pre28 = load i32, ptr %i.k, align 4, !tbaa !85
  br label %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit

_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit: ; preds = %bb.i, %bb.d, %bb.c, %bb.b
  %i.av = phi i32 [ %.pre28, %bb.i ], [ %i.r, %bb.d ], [ %i.r, %bb.c ], [ %i.r, %bb.b ] ; 2 uses
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next26, %i.aw
  br i1 %i.ax, label %bb.b, label %.loopexit, !llvm.loop !189

bb.j:                                             ; preds = %.lr.ph, %_ZNK17btCollisionObject8isActiveEv.exit
  %i.ay = phi i32 [ %i.e, %.lr.ph ], [ %i.cb, %_ZNK17btCollisionObject8isActiveEv.exit ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK17btCollisionObject8isActiveEv.exit ] ; 2 uses
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !106 ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN20btAlignedObjectArrayIP17btTypedConstraintE17quickSortInternalI33btSortConstraintOnIslandPredicateEEvRKT_ii:bb.a
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !122  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !126, !nonnull !88, !align !127
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 228
  %i.k = load i32, ptr %i.j, align 4, !tbaa !135  ; 3 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %.split.us.us, label %tailrecurse.split

.split.us.us:                                     ; preds = %tailrecurse, %bb.f
  %.030.us = phi i32 [ %.232.us, %bb.f ], [ %.tr39, %tailrecurse ]
  %.0.us = phi i32 [ %.2.us, %bb.f ], [ %3, %tailrecurse ]
  %i.m = sext i32 %.030.us to i64
  br label %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i.us.us

_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i.us.us: ; preds = %_ZNK33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit.us.us, %.split.us.us
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %_ZNK33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit.us.us ], [ %i.m, %.split.us.us ] ; 5 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv81
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !122  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !126, !nonnull !88, !align !127
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 228
  %i.s = load i32, ptr %i.r, align 4, !tbaa !135  ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %_ZNK33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit.us.us, label %bb.b

bb.b:                                             ; preds = %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i.us.us
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !128, !nonnull !88, !align !127
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 228
  %i.x = load i32, ptr %i.w, align 4, !tbaa !135
  br label %_ZNK33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit.us.us

_ZNK33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit.us.us: ; preds = %bb.b, %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i.us.us
  %i.y = phi i32 [ %i.x, %bb.b ], [ %i.s, %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i.us.us ]
  %i.z = icmp slt i32 %i.y, %i.k
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1
  br i1 %i.z, label %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i.us.us, label %.preheader.split.us.us, !llvm.loop !340

.preheader.split.us.us:                           ; preds = %_ZNK33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit.us.us
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv81
  %i.ab = sext i32 %.0.us to i64
  br label %bb.c

bb.c:                                             ; preds = %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i36.us.us, %.preheader.split.us.us
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i36.us.us ], [ %i.ab, %.preheader.split.us.us ] ; 5 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv84
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !122 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !126, !nonnull !88, !align !127
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 228
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !135 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, -1
  br i1 %i.ai, label %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i36.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !128, !nonnull !88, !align !127
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 228
  %i.am = load i32, ptr %i.al, align 4, !tbaa !135
  br label %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i36.us.us

_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i36.us.us: ; preds = %bb.d, %bb.c
  %i.an = phi i32 [ %i.am, %bb.d ], [ %i.ah, %bb.c ]
  %i.ao = icmp slt i32 %i.k, %i.an
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, -1
  br i1 %i.ao, label %bb.c, label %.split54.us.us, !llvm.loop !341

.split54.us.us:                                   ; preds = %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i36.us.us
  %i.ap = trunc nsw i64 %indvars.iv81 to i32      ; 2 uses
  %i.aq = trunc nsw i64 %indvars.iv84 to i32      ; 2 uses
  %.not.us = icmp sgt i64 %indvars.iv81, %indvars.iv84
  br i1 %.not.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split54.us.us
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv84
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !122
  store ptr %i.o, ptr %i.ar, align 8, !tbaa !122
  %i.as = add nsw i32 %i.ap, 1
  %i.at = add nsw i32 %i.aq, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.split54.us.us
  %.232.us = phi i32 [ %i.as, %bb.e ], [ %i.ap, %.split54.us.us ] ; 3 uses
  %.2.us = phi i32 [ %i.at, %bb.e ], [ %i.aq, %.split54.us.us ] ; 3 uses
  %.not35.us = icmp sgt i32 %.232.us, %.2.us
  br i1 %.not35.us, label %.split66.us, label %.split.us.us, !llvm.loop !342

tailrecurse.split:                                ; preds = %tailrecurse
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !128, !nonnull !88, !align !127
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 228
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !135 ; 2 uses
  br label %.split

.split:                                           ; preds = %bb.k, %tailrecurse.split
  %.030 = phi i32 [ %.tr39, %tailrecurse.split ], [ %.232, %bb.k ]
  %.0 = phi i32 [ %3, %tailrecurse.split ], [ %.2, %bb.k ]
  %i.ay = sext i32 %.030 to i64
  br label %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i

_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i: ; preds = %_ZNK33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit, %.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit ], [ %i.ay, %.split ] ; 5 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !122 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !126, !nonnull !88, !align !127
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 228
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !135 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, -1
  br i1 %i.bf, label %_ZNK33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit, label %bb.g

bb.g:                                             ; preds = %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !128, !nonnull !88, !align !127
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 228
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !135
  br label %_ZNK33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit

_ZNK33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit: ; preds = %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i, %bb.g
  %i.bk = phi i32 [ %i.bj, %bb.g ], [ %i.be, %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i ]
  %i.bl = icmp slt i32 %i.bk, %i.ax
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.bl, label %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i, label %.preheader.split, !llvm.loop !340

.preheader.split:                                 ; preds = %_ZNK33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.bn = sext i32 %.0 to i64
  br label %bb.h

bb.h:                                             ; preds = %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i36, %.preheader.split
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i36 ], [ %i.bn, %.preheader.split ] ; 5 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv78
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !122 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !126, !nonnull !88, !align !127
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 228
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !135 ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, -1
  br i1 %i.bu, label %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i36, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !128, !nonnull !88, !align !127
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 228
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !135
  br label %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i36

_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i36: ; preds = %bb.i, %bb.h
  %i.bz = phi i32 [ %i.by, %bb.i ], [ %i.bt, %bb.h ]
  %i.ca = icmp slt i32 %i.ax, %i.bz
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, -1
  br i1 %i.ca, label %bb.h, label %.split54, !llvm.loop !341

.split54:                                         ; preds = %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i36
  %i.cb = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.cc = trunc nsw i64 %indvars.iv78 to i32      ; 2 uses
  %.not = icmp sgt i64 %indvars.iv, %indvars.iv78
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.split54
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv78
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !122
  store ptr %i.ba, ptr %i.cd, align 8, !tbaa !122
  %i.ce = add nsw i32 %i.cb, 1
  %i.cf = add nsw i32 %i.cc, -1
  br label %bb.k

bb.k:                                             ; preds = %.split54, %bb.j
  %.232 = phi i32 [ %i.ce, %bb.j ], [ %i.cb, %.split54 ] ; 3 uses
  %.2 = phi i32 [ %i.cf, %bb.j ], [ %i.cc, %.split54 ] ; 3 uses
  %.not35 = icmp sgt i32 %.232, %.2
  br i1 %.not35, label %.split66.us, label %.split, !llvm.loop !342

.split66.us:                                      ; preds = %bb.k, %bb.f
  %.us-phi67 = phi i32 [ %.232.us, %bb.f ], [ %.232, %bb.k ] ; 2 uses
  %.us-phi68 = phi i32 [ %.2.us, %bb.f ], [ %.2, %bb.k ] ; 2 uses
  %i.cg = icmp slt i32 %.tr39, %.us-phi68
  br i1 %i.cg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.split66.us
  tail call void @_ZN20btAlignedObjectArrayIP17btTypedConstraintE17quickSortInternalI33btSortConstraintOnIslandPredicateEEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %.tr39, i32 noundef %.us-phi68)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.split66.us
  %i.ch = icmp slt i32 %.us-phi67, %3
  br i1 %i.ch, label %tailrecurse, label %bb.n

bb.n:                                             ; preds = %bb.m
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !101}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"float", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"bool", !6, i64 0}
!13 = !{!"_ZTS23btContactSolverInfoData", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !7, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !7, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !12, i64 116, !12, i64 117, !7, i64 120, !7, i64 124}
!14 = !{!13, !10, i64 16}
!15 = !{!13, !7, i64 20}
!16 = !{!13, !7, i64 64}
!17 = !{!13, !7, i64 96}
!18 = !{!"vtable pointer", !5, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"_ZTS18btAlignedAllocatorIP17btTypedConstraintLj16EE"}
!21 = !{!"any pointer", !6, i64 0}
!22 = !{!"any p2 pointer", !21, i64 0}
!23 = !{!"p2 _ZTS17btTypedConstraint", !22, i64 0}
!24 = !{!"_ZTS20btAlignedObjectArrayIP17btTypedConstraintE", !20, i64 0, !7, i64 4, !7, i64 8, !23, i64 16, !12, i64 24}
!25 = !{!24, !12, i64 24}
!26 = !{!24, !23, i64 16}
!27 = !{!24, !7, i64 4}
!28 = !{!24, !7, i64 8}
!29 = !{!"_ZTS18btAlignedAllocatorIP17btCollisionObjectLj16EE"}
!30 = !{!"p2 _ZTS17btCollisionObject", !22, i64 0}
!31 = !{!"_ZTS20btAlignedObjectArrayIP17btCollisionObjectE", !29, i64 0, !7, i64 4, !7, i64 8, !30, i64 16, !12, i64 24}
!32 = !{!"p1 _ZTS12btDispatcher", !21, i64 0}
!33 = !{!"p1 _ZTS12btIDebugDraw", !21, i64 0}
!34 = !{!"_ZTS16btDispatcherInfo", !10, i64 0, !7, i64 4, !7, i64 8, !10, i64 12, !12, i64 16, !33, i64 24, !12, i64 32, !12, i64 33, !12, i64 34, !10, i64 36, !12, i64 40, !10, i64 44, !12, i64 48}
!35 = !{!"p1 _ZTS21btBroadphaseInterface", !21, i64 0}
!36 = !{!"_ZTS16btCollisionWorld", !31, i64 8, !32, i64 40, !34, i64 48, !35, i64 104, !33, i64 112, !12, i64 120}
!37 = !{!"_ZTS19btContactSolverInfo", !13, i64 0}
!38 = !{!"_ZTS15btDynamicsWorld", !36, i64 0, !21, i64 128, !21, i64 136, !21, i64 144, !37, i64 152}
!39 = !{!"p1 _ZTS27InplaceSolverIslandCallback", !21, i64 0}
!40 = !{!"p1 _ZTS18btConstraintSolver", !21, i64 0}
!41 = !{!"p1 _ZTS25btSimulationIslandManager", !21, i64 0}
!42 = !{!"_ZTS18btAlignedAllocatorIP11btRigidBodyLj16EE"}
!43 = !{!"p2 _ZTS11btRigidBody", !22, i64 0}
!44 = !{!"_ZTS20btAlignedObjectArrayIP11btRigidBodyE", !42, i64 0, !7, i64 4, !7, i64 8, !43, i64 16, !12, i64 24}
!45 = !{!"_ZTS9btVector3", !6, i64 0}
!46 = !{!"_ZTS18btAlignedAllocatorIP17btActionInterfaceLj16EE"}
!47 = !{!"p2 _ZTS17btActionInterface", !22, i64 0}
!48 = !{!"_ZTS20btAlignedObjectArrayIP17btActionInterfaceE", !46, i64 0, !7, i64 4, !7, i64 8, !47, i64 16, !12, i64 24}
!49 = !{!"_ZTS18btAlignedAllocatorIP20btPersistentManifoldLj16EE"}
!50 = !{!"p2 _ZTS20btPersistentManifold", !22, i64 0}
!51 = !{!"_ZTS20btAlignedObjectArrayIP20btPersistentManifoldE", !49, i64 0, !7, i64 4, !7, i64 8, !50, i64 16, !12, i64 24}
!52 = !{!"_ZTS11btSpinMutex", !7, i64 0}
!53 = !{!"_ZTS23btDiscreteDynamicsWorld", !38, i64 0, !24, i64 280, !39, i64 312, !40, i64 320, !41, i64 328, !24, i64 336, !44, i64 368, !45, i64 400, !10, i64 416, !10, i64 420, !12, i64 424, !12, i64 425, !12, i64 426, !12, i64 427, !48, i64 432, !7, i64 464, !12, i64 468, !51, i64 472, !52, i64 504}
!54 = !{!53, !39, i64 312}
!55 = !{!53, !40, i64 320}
!56 = !{!44, !12, i64 24}
!57 = !{!44, !43, i64 16}
!58 = !{!44, !7, i64 4}
!59 = !{!44, !7, i64 8}
!60 = !{!53, !12, i64 426}
!61 = !{!53, !12, i64 427}
!62 = !{!48, !12, i64 24}
!63 = !{!48, !47, i64 16}
!64 = !{!48, !7, i64 4}
!65 = !{!48, !7, i64 8}
!66 = !{!53, !12, i64 468}
!67 = !{!51, !12, i64 24}
!68 = !{!51, !50, i64 16}
!69 = !{!51, !7, i64 4}
!70 = !{!51, !7, i64 8}
!71 = !{!53, !12, i64 425}
!72 = !{!53, !41, i64 328}
!73 = !{!53, !12, i64 424}
!74 = !{!"_ZTSN25btSimulationIslandManager14IslandCallbackE"}
!75 = !{!"p1 _ZTS19btContactSolverInfo", !21, i64 0}
!76 = !{!"_ZTS27InplaceSolverIslandCallback", !74, i64 0, !75, i64 8, !40, i64 16, !23, i64 24, !7, i64 32, !33, i64 40, !32, i64 48, !31, i64 56, !51, i64 88, !24, i64 120}
!77 = !{!76, !75, i64 8}
!78 = !{!76, !40, i64 16}
!79 = !{!76, !23, i64 24}
!80 = !{!76, !7, i64 32}
!81 = !{!76, !33, i64 40}
!82 = !{!76, !32, i64 48}
!83 = !{!31, !12, i64 24}
!84 = !{!31, !30, i64 16}
!85 = !{!31, !7, i64 4}
!86 = !{!31, !7, i64 8}
!87 = !{i8 0, i8 2}
!88 = !{}
!89 = !{!"p1 _ZTS17btCollisionObject", !21, i64 0}
!90 = !{!89, !89, i64 0}
!91 = !{!"_ZTS11btMatrix3x3", !6, i64 0}
!92 = !{!"_ZTS11btTransform", !91, i64 0, !45, i64 48}
!93 = !{!"p1 _ZTS17btBroadphaseProxy", !21, i64 0}
!94 = !{!"p1 _ZTS16btCollisionShape", !21, i64 0}
!95 = !{!"_ZTS18btAlignedAllocatorIPK17btCollisionObjectLj16EE"}
!96 = !{!"_ZTS20btAlignedObjectArrayIPK17btCollisionObjectE", !95, i64 0, !7, i64 4, !7, i64 8, !30, i64 16, !12, i64 24}
!97 = !{!"_ZTS17btCollisionObject", !92, i64 8, !92, i64 72, !45, i64 136, !45, i64 152, !45, i64 168, !7, i64 184, !10, i64 188, !93, i64 192, !94, i64 200, !21, i64 208, !94, i64 216, !7, i64 224, !7, i64 228, !7, i64 232, !7, i64 236, !7, i64 240, !10, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !7, i64 272, !21, i64 280, !7, i64 288, !7, i64 292, !7, i64 296, !10, i64 300, !10, i64 304, !10, i64 308, !7, i64 312, !96, i64 320, !7, i64 352, !45, i64 356}
!98 = !{!97, !7, i64 272}
!99 = !{!97, !7, i64 240}
!100 = !{!97, !7, i64 224}
!101 = !{!"llvm.loop.mustprogress"}
!102 = !{!"p1 _ZTS17btActionInterface", !21, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{!36, !33, i64 112}
!105 = !{!"p1 _ZTS11btRigidBody", !21, i64 0}
!106 = !{!105, !105, i64 0}
!107 = !{!"p1 _ZTS13btMotionState", !21, i64 0}
!108 = !{!"_ZTS11btRigidBody", !97, i64 0, !91, i64 372, !45, i64 420, !45, i64 436, !10, i64 452, !45, i64 456, !45, i64 472, !45, i64 488, !45, i64 504, !45, i64 520, !45, i64 536, !10, i64 552, !10, i64 556, !12, i64 560, !10, i64 564, !10, i64 568, !10, i64 572, !10, i64 576, !10, i64 580, !10, i64 584, !107, i64 592, !24, i64 600, !7, i64 632, !7, i64 636, !45, i64 640, !45, i64 656, !45, i64 672, !45, i64 688, !45, i64 704, !45, i64 720, !7, i64 736, !7, i64 740}
!109 = !{!108, !107, i64 592}
!110 = !{!53, !10, i64 420}
!111 = !{!53, !10, i64 416}
!112 = !{!97, !10, i64 300}
!113 = !{!6, !6, i64 0}
!114 = !{i64 0, i64 16, !113}
!115 = !{!12, !12, i64 0}
!116 = !{!108, !7, i64 632}
!117 = !{!97, !94, i64 200}
!118 = !{!"llvm.loop.isvectorized", i32 1}
!119 = !{!"llvm.loop.unroll.runtime.disable"}
!120 = !{!"llvm.loop.unroll.disable"}
!121 = !{!"p1 _ZTS17btTypedConstraint", !21, i64 0}
!122 = !{!121, !121, i64 0}
!123 = !{!"_ZTS13btTypedObject", !7, i64 0}
!124 = !{!"p1 _ZTS15btJointFeedback", !21, i64 0}
!125 = !{!"_ZTS17btTypedConstraint", !123, i64 8, !7, i64 12, !6, i64 16, !10, i64 24, !12, i64 28, !12, i64 29, !7, i64 32, !105, i64 40, !105, i64 48, !10, i64 56, !10, i64 60, !124, i64 64}
!126 = !{!125, !105, i64 40}
!127 = !{i64 8}
!128 = !{!125, !105, i64 48}
!129 = !{!36, !32, i64 40}
!130 = !{!"p1 _ZTS20btPersistentManifold", !21, i64 0}
!131 = !{!130, !130, i64 0}
!132 = !{!"_ZTS20btPersistentManifold", !123, i64 0, !6, i64 8, !89, i64 840, !89, i64 848, !7, i64 856, !10, i64 860, !10, i64 864, !7, i64 868, !7, i64 872, !7, i64 876}
!133 = !{!132, !89, i64 840}
!134 = !{!132, !89, i64 848}
!135 = !{!97, !7, i64 228}
!136 = !{!34, !12, i64 16}
!137 = !{!97, !10, i64 308}
!138 = !{!"_ZTS16btCollisionShape", !7, i64 8, !21, i64 16, !7, i64 24, !7, i64 28}
!139 = !{!138, !7, i64 8}
!140 = !{!7, !7, i64 0}
!141 = !{!36, !35, i64 104}
!142 = !{!"_ZTSN16btCollisionWorld20ConvexResultCallbackE", !10, i64 8, !7, i64 12, !7, i64 16}
!143 = !{!142, !10, i64 8}
!144 = !{!142, !7, i64 12}
!145 = !{!142, !7, i64 16}
!146 = !{!"_ZTSN16btCollisionWorld27ClosestConvexResultCallbackE", !142, i64 0, !45, i64 20, !45, i64 36, !45, i64 52, !45, i64 68, !89, i64 88}
!147 = !{!146, !89, i64 88}
!148 = !{!"p1 _ZTS22btOverlappingPairCache", !21, i64 0}
!149 = !{!"_ZTS34btClosestNotMeConvexResultCallback", !146, i64 0, !89, i64 96, !10, i64 104, !148, i64 112, !32, i64 120}
!150 = !{!149, !89, i64 96}
!151 = !{!149, !10, i64 104}
!152 = !{!149, !148, i64 112}
!153 = !{!149, !32, i64 120}
!154 = !{!97, !10, i64 304}
!155 = !{!"_ZTS13btConvexShape", !138, i64 0}
!156 = !{!"_ZTS21btConvexInternalShape", !155, i64 0, !45, i64 32, !45, i64 48, !10, i64 64, !10, i64 68}
!157 = !{!156, !10, i64 64}
!158 = !{!156, !10, i64 68}
!159 = !{!34, !10, i64 36}
end_hunk_1
