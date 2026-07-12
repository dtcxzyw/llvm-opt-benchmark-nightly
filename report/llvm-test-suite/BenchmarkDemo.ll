inline.NumInlined: 797
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN13BenchmarkDemo17createTowerCircleERK9btVector3iiS2_:bb.a

.split.us:                                        ; preds = %bb.j
  %i.hh = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bp)
          to label %_ZN17btCollisionObjectdlEPv.exit.i unwind label %bb.l

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %niter = phi i32 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.hi = call noundef float @sinf(float noundef %i.az) #21, !tbaa !4 ; 0 uses
  %i.hj = call noundef float @cosf(float noundef %i.az) #21, !tbaa !4 ; 0 uses
  %i.hk = call noundef float @sinf(float noundef %i.az) #21, !tbaa !4 ; 0 uses
  %i.hl = call noundef float @cosf(float noundef %i.az) #21, !tbaa !4 ; 0 uses
  %i.hm = call noundef float @sinf(float noundef %i.az) #21, !tbaa !4 ; 0 uses
  %i.hn = call noundef float @cosf(float noundef %i.az) #21, !tbaa !4 ; 0 uses
  %i.ho = call noundef float @sinf(float noundef %i.az) #21, !tbaa !4 ; 0 uses
  %i.hp = call noundef float @cosf(float noundef %i.az) #21, !tbaa !4 ; 0 uses
  %i.hq = call noundef float @sinf(float noundef %i.az) #21, !tbaa !4 ; 0 uses
  %i.hr = call noundef float @cosf(float noundef %i.az) #21, !tbaa !4 ; 0 uses
  %i.hs = call noundef float @sinf(float noundef %i.az) #21, !tbaa !4 ; 0 uses
  %i.ht = call noundef float @cosf(float noundef %i.az) #21, !tbaa !4 ; 0 uses
  %i.hu = call noundef float @sinf(float noundef %i.az) #21, !tbaa !4 ; 0 uses
  %i.hv = call noundef float @cosf(float noundef %i.az) #21, !tbaa !4 ; 0 uses
  %i.hw = call noundef float @sinf(float noundef %i.az) #21, !tbaa !4 ; 0 uses
  %i.hx = call noundef float @cosf(float noundef %i.az) #21, !tbaa !4 ; 0 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge113.loopexit143.unr-lcssa, label %.preheader

._crit_edge113.loopexit143.unr-lcssa:             ; preds = %.preheader
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge113, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge113.loopexit143.unr-lcssa, %.preheader.preheader
  %lcmp.mod144 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod144)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %epil.iter = phi i32 [ 0, %.preheader.epil.preheader ], [ %epil.iter.next, %.preheader.epil ]
  %i.hy = call noundef float @sinf(float noundef %i.az) #21, !tbaa !4 ; 0 uses
  %i.hz = call noundef float @cosf(float noundef %i.az) #21, !tbaa !4 ; 0 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge113, label %.preheader.epil, !llvm.loop !88

._crit_edge113:                                   ; preds = %._crit_edge113.loopexit143.unr-lcssa, %.preheader.epil, %._crit_edge.us, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void

bb.k:                                             ; preds = %bb.a
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.ia, %bb.k ], [ %.pn8.i, %bb.g ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.a)
          to label %common.resume unwind label %bb.m

common.resume:                                    ; preds = %.body, %_ZN17btCollisionObjectdlEPv.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.hh, %_ZN17btCollisionObjectdlEPv.exit.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_ZN17btCollisionObjectdlEPv.exit.i:               ; preds = %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume

bb.l:                                             ; preds = %.split.us
  %i.ib = landingpad { ptr, i32 }
          catch ptr null
  %i.ic = extractvalue { ptr, i32 } %i.ib, 0
  call void @__clang_call_terminate(ptr %i.ic) #23
  unreachable

bb.m:                                             ; preds = %.body
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  tail call void @__clang_call_terminate(ptr %i.ie) #23
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN7RagDollC2EP15btDynamicsWorldRK9btVector3f(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %3) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.btTransform, align 4         ; 10 uses
  %5 = alloca %class.btTransform, align 4         ; 10 uses
  %6 = alloca %class.btTransform, align 4         ; 10 uses
  %7 = alloca %class.btTransform, align 4         ; 10 uses
  %8 = alloca %class.btTransform, align 4         ; 10 uses
  %9 = alloca %class.btTransform, align 4         ; 10 uses
  %10 = alloca %class.btTransform, align 4        ; 10 uses
  %11 = alloca %class.btTransform, align 16       ; 9 uses
  %12 = alloca %class.btTransform, align 16       ; 9 uses
  %13 = alloca %class.btTransform, align 16       ; 8 uses
  %14 = alloca %class.btTransform, align 16       ; 8 uses
  %15 = alloca %class.btTransform, align 16       ; 31 uses
  %16 = alloca %class.btTransform, align 16       ; 27 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7RagDoll, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !89
  %i.b = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  %i.c = fmul float %3, 1.500000e-01              ; 5 uses
  %i.d = fmul float %3, 2.000000e-01              ; 4 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.b, float noundef %i.c, float noundef %i.d)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !47
  %i.f = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  %i.g = fmul float %3, 2.800000e-01
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.f, float noundef %i.c, float noundef %i.g)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !47
  %i.i = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  %i.j = fmul float %3, 1.000000e-01
  %i.k = fmul float %3, 5.000000e-02              ; 5 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.i, float noundef %i.j, float noundef %i.k)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.i, ptr %i.l, align 8, !tbaa !47
  %i.m = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  %i.n = fmul float %3, 7.000000e-02              ; 2 uses
  %i.o = fmul float %3, 4.500000e-01              ; 2 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.m, float noundef %i.n, float noundef %i.o)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.m, ptr %i.p, align 8, !tbaa !47
  %i.q = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  %i.r = fmul float %3, 3.700000e-01              ; 2 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.q, float noundef %i.k, float noundef %i.r)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.q, ptr %i.s, align 8, !tbaa !47
  %i.t = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.t, float noundef %i.n, float noundef %i.o)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !47
  %i.v = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.v, float noundef %i.k, float noundef %i.r)
          to label %bb.h unwind label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !47
  %i.x = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  %i.y = fmul float %3, 3.300000e-01              ; 2 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.x, float noundef %i.k, float noundef %i.y)
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.x, ptr %i.z, align 8, !tbaa !47
  %i.aa = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  %i.ab = fmul float %3, 4.000000e-02             ; 2 uses
  %i.ac = fmul float %3, 2.500000e-01             ; 2 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.aa, float noundef %i.ab, float noundef %i.ac)
          to label %bb.j unwind label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !47
  %i.ae = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.ae, float noundef %i.k, float noundef %i.y)
          to label %bb.k unwind label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !47
  %i.ag = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.ag, float noundef %i.ab, float noundef %i.ac)
          to label %bb.l unwind label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !47
  %.sroa.131.48..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.131.48.copyload = load float, ptr %.sroa.131.48..sroa_idx, align 4 ; 11 uses
  %i.ai = insertelement <4 x float> poison, float %3, i64 0 ; 2 uses
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ak = fmul <4 x float> %i.aj, <float 0.000000e+00, float 0.000000e+00, float -1.800000e-01, float -1.800000e-01> ; 20 uses
  %i.al = extractelement <4 x float> %i.ak, i64 2 ; 4 uses
  %i.am = extractelement <4 x float> %i.ak, i64 0 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %foldExtExtBinop = fadd <4 x float> %i.ak, %i.ak
  %i.an = load <2 x float>, ptr %2, align 4       ; 11 uses
  %17 = shufflevector <4 x float> %i.ak, <4 x float> poison, <2 x i32> <i32 0, i32 poison> ; 9 uses
  %i.ao = shufflevector <4 x float> %i.ak, <4 x float> poison, <2 x i32> zeroinitializer ; 11 uses
  store float 1.000000e+00, ptr %4, align 4, !alias.scope !91
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.44.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.9.16..sroa_idx.i, align 4, !alias.scope !91
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.15.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.16..sroa_idx.i, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.15.32..sroa_idx.i, align 4, !alias.scope !91
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.as = fmul float %3, 1.200000e+00             ; 2 uses
  %i.at = fmul float %i.as, 0.000000e+00          ; 2 uses
  %i.au = fadd float %i.am, %i.at
  %i.av = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aw = shufflevector <4 x float> %i.ai, <4 x float> %i.ak, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ax = insertelement <4 x float> %i.aw, float %i.as, i64 2
  %i.ay = insertelement <4 x float> %i.ax, float %i.at, i64 3
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> zeroinitializer, <4 x float> %i.ay) ; 4 uses
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.bb = shufflevector <4 x float> %foldExtExtBinop, <4 x float> %i.az, <2 x i32> <i32 0, i32 4>
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> zeroinitializer, <2 x float> %i.bb)
  %i.bd = fadd <2 x float> %i.bc, %i.an
  %shift = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop956 = fadd <4 x float> %i.ak, %shift
  %i.be = extractelement <4 x float> %foldExtExtBinop956, i64 0
  %i.bf = fadd float %i.be, %.sroa.131.48.copyload
  %.sroa.3.12.vec.insert.i.i36 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bf, i64 0
  store <2 x float> %i.bd, ptr %i.ap, align 4, !alias.scope !91
  store <2 x float> %.sroa.3.12.vec.insert.i.i36, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !60, !alias.scope !91
  %i.bg = call noundef ptr @_ZN7RagDoll20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef %i.aq)
  store ptr %i.bg, ptr %i.ar, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.bh = insertelement <2 x float> %i.ba, float %i.au, i64 0
  %i.bi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> zeroinitializer, <2 x float> %i.bh)
  %i.bj = fadd <2 x float> %i.bi, %i.an
  %shift958 = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop959 = fadd <4 x float> %i.ak, %shift958
  %i.bk = extractelement <4 x float> %foldExtExtBinop959, i64 0
  %i.bl = fadd float %i.bk, %.sroa.131.48.copyload
  %.sroa.3.12.vec.insert.i.i44 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bl, i64 0
  store float 1.000000e+00, ptr %5, align 4, !alias.scope !96
  %.sroa.44.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.9.16..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %5, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.44.0..sroa_idx.i45, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.9.16..sroa_idx.i48, align 4, !alias.scope !96
  %.sroa.10.16..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.15.32..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.16..sroa_idx.i49, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.15.32..sroa_idx.i52, align 4, !alias.scope !96
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 48
  store <2 x float> %i.bj, ptr %i.bm, align 4, !alias.scope !96
  %.sroa.4.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i44, ptr %.sroa.4.0..sroa_idx.i54, align 4, !tbaa !60, !alias.scope !96
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.bo = call noundef ptr @_ZN7RagDoll20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef %i.bn)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store float 1.000000e+00, ptr %6, align 4, !alias.scope !99
  %.sroa.44.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.sroa.9.16..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %6, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.44.0..sroa_idx.i63, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.9.16..sroa_idx.i66, align 4, !alias.scope !99
  %.sroa.10.16..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.15.32..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.16..sroa_idx.i67, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.15.32..sroa_idx.i70, align 4, !alias.scope !99
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.4.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.br = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bt = fmul float %3, 1.600000e+00             ; 2 uses
  %i.bu = fmul float %i.bt, 0.000000e+00          ; 2 uses
  %i.bv = fadd float %i.am, %i.bu
  %i.bw = insertelement <4 x float> poison, float %i.bv, i64 0
  %i.bx = fmul float %3, 6.500000e-01             ; 3 uses
  %i.by = fmul float %i.bx, 0.000000e+00          ; 4 uses
  %i.bz = insertelement <4 x float> poison, float %i.bt, i64 0
  %i.ca = insertelement <4 x float> %i.bz, float %i.bu, i64 1
  %i.cb = insertelement <4 x float> %i.ca, float %i.bx, i64 2
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 3
  %i.cd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> zeroinitializer, <4 x float> %i.cc) ; 4 uses
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.cf = shufflevector <4 x float> %i.bw, <4 x float> %i.cd, <2 x i32> <i32 0, i32 4>
  %i.cg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> zeroinitializer, <2 x float> %i.cf)
  %i.ch = fadd <2 x float> %i.cg, %i.an
  %shift961 = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop962 = fadd <4 x float> %i.ak, %shift961
  %i.ci = extractelement <4 x float> %foldExtExtBinop962, i64 0
  %i.cj = fadd float %i.ci, %.sroa.131.48.copyload
  %.sroa.3.12.vec.insert.i.i62 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cj, i64 0
  store <2 x float> %i.ch, ptr %i.bq, align 4, !alias.scope !99
  store <2 x float> %.sroa.3.12.vec.insert.i.i62, ptr %.sroa.4.0..sroa_idx.i72, align 4, !tbaa !60, !alias.scope !99
  %i.ck = call noundef ptr @_ZN7RagDoll20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(64) %6, ptr noundef %i.br)
  store ptr %i.ck, ptr %i.bs, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.cl = fadd float %i.al, %i.by
  %i.cm = insertelement <2 x float> %i.ce, float %i.cl, i64 0
  %i.cn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> zeroinitializer, <2 x float> %i.cm)
  %i.co = fadd <2 x float> %i.cn, %i.an
  %shift964 = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop965 = fadd <4 x float> %i.ak, %shift964
  %i.cp = extractelement <4 x float> %foldExtExtBinop965, i64 0
  %i.cq = fadd float %i.cp, %.sroa.131.48.copyload
  %.sroa.3.12.vec.insert.i.i80 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cq, i64 0
  store float 1.000000e+00, ptr %7, align 4, !alias.scope !102
  %.sroa.44.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.9.16..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %7, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.44.0..sroa_idx.i81, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.9.16..sroa_idx.i84, align 4, !alias.scope !102
  %.sroa.10.16..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.15.32..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.16..sroa_idx.i85, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.15.32..sroa_idx.i88, align 4, !alias.scope !102
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 48
  store <2 x float> %i.co, ptr %i.cr, align 4, !alias.scope !102
  %.sroa.4.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %7, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i80, ptr %.sroa.4.0..sroa_idx.i90, align 4, !tbaa !60, !alias.scope !102
  %i.cs = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.ct = call noundef ptr @_ZN7RagDoll20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(64) %7, ptr noundef %i.cs)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.cv = fmul float %i.d, 0.000000e+00           ; 4 uses
  %i.cw = fadd float %i.al, %i.cv
  %i.cx = insertelement <4 x float> poison, float %i.cw, i64 0
  store float 1.000000e+00, ptr %8, align 4, !alias.scope !105
  %.sroa.44.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.sroa.9.16..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %8, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.44.0..sroa_idx.i99, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.9.16..sroa_idx.i102, align 4, !alias.scope !105
  %.sroa.10.16..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.15.32..sroa_idx.i106 = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.16..sroa_idx.i103, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.15.32..sroa_idx.i106, align 4, !alias.scope !105
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 48
  %.sroa.4.0..sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.cz = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.db = fmul <4 x float> %i.aj, <float 1.800000e-01, float 1.800000e-01, float -3.500000e-01, float -3.500000e-01> ; 5 uses
  %i.dc = extractelement <4 x float> %i.db, i64 0 ; 3 uses
  %i.dd = fadd float %i.dc, %i.by
  %i.de = insertelement <4 x float> poison, float %i.dd, i64 0
  %i.df = shufflevector <4 x float> %i.ak, <4 x float> %i.db, <4 x i32> <i32 2, i32 4, i32 2, i32 4>
  %i.dg = insertelement <4 x float> poison, float %i.d, i64 0 ; 2 uses
  %i.dh = insertelement <4 x float> %i.dg, float %i.bx, i64 1
  %i.di = insertelement <4 x float> %i.dh, float %i.cv, i64 2
  %i.dj = insertelement <4 x float> %i.di, float %i.by, i64 3
  %i.dk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> zeroinitializer, <4 x float> %i.dj) ; 4 uses
  %i.dl = shufflevector <4 x float> %i.cx, <4 x float> %i.dk, <2 x i32> <i32 0, i32 4>
  %i.dm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> zeroinitializer, <2 x float> %i.dl)
  %i.dn = fadd <2 x float> %i.dm, %i.an
  %shift967 = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop968 = fadd <4 x float> %i.ak, %shift967
  %i.do = extractelement <4 x float> %foldExtExtBinop968, i64 0
  %i.dp = fadd float %i.do, %.sroa.131.48.copyload
  %.sroa.3.12.vec.insert.i.i98 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dp, i64 0
  store <2 x float> %i.dn, ptr %i.cy, align 4, !alias.scope !105
  store <2 x float> %.sroa.3.12.vec.insert.i.i98, ptr %.sroa.4.0..sroa_idx.i108, align 4, !tbaa !60, !alias.scope !105
  %i.dq = call noundef ptr @_ZN7RagDoll20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(64) %8, ptr noundef %i.cz)
  store ptr %i.dq, ptr %i.da, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.dr = shufflevector <4 x float> %i.de, <4 x float> %i.dk, <2 x i32> <i32 0, i32 5>
  %i.ds = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> zeroinitializer, <2 x float> %i.dr)
  %i.dt = fadd <2 x float> %i.ds, %i.an
  %shift970 = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop971 = fadd <4 x float> %i.ak, %shift970
  %i.du = extractelement <4 x float> %foldExtExtBinop971, i64 0
  %i.dv = fadd float %i.du, %.sroa.131.48.copyload
  %.sroa.3.12.vec.insert.i.i116 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dv, i64 0
  store float 1.000000e+00, ptr %9, align 4, !alias.scope !108
  %.sroa.44.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %.sroa.9.16..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %9, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.44.0..sroa_idx.i117, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.9.16..sroa_idx.i120, align 4, !alias.scope !108
  %.sroa.10.16..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.15.32..sroa_idx.i124 = getelementptr inbounds nuw i8, ptr %9, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.16..sroa_idx.i121, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.15.32..sroa_idx.i124, align 4, !alias.scope !108
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 48
  store <2 x float> %i.dt, ptr %i.dw, align 4, !alias.scope !108
  %.sroa.4.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %9, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i116, ptr %.sroa.4.0..sroa_idx.i126, align 4, !tbaa !60, !alias.scope !108
  %i.dx = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.dy = call noundef ptr @_ZN7RagDoll20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(64) %9, ptr noundef %i.dx)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.ea = fadd float %i.dc, %i.cv
  %i.eb = insertelement <4 x float> poison, float %i.ea, i64 0
end_hunk_0
begin_hunk_1_@_ZN7RagDollC2EP15btDynamicsWorldRK9btVector3f:bb.a
  %i.es = insertelement <4 x float> %i.er, float %i.ep, i64 3
  %i.et = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> zeroinitializer, <4 x float> %i.es) ; 4 uses
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ev = shufflevector <4 x float> %i.eb, <4 x float> %i.et, <2 x i32> <i32 0, i32 4>
  %i.ew = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> zeroinitializer, <2 x float> %i.ev)
  %i.ex = fadd <2 x float> %i.ew, %i.an
  %shift973 = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop974 = fadd <4 x float> %i.ak, %shift973
  %i.ey = extractelement <4 x float> %foldExtExtBinop974, i64 0
  %i.ez = fadd float %i.ey, %.sroa.131.48.copyload
  %.sroa.3.12.vec.insert.i.i134 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ez, i64 0
  store <2 x float> %i.ex, ptr %i.ec, align 4, !alias.scope !111
  store <2 x float> %.sroa.3.12.vec.insert.i.i134, ptr %.sroa.4.0..sroa_idx.i144, align 4, !tbaa !60, !alias.scope !111
  %i.fa = call noundef ptr @_ZN7RagDoll20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(64) %10, ptr noundef %i.ed)
  store ptr %i.fa, ptr %i.ee, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.fb = insertelement <2 x float> %i.eu, float %i.eq, i64 0
  %i.fc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> zeroinitializer, <2 x float> %i.fb)
  %i.fd = fadd <2 x float> %i.fc, %i.an
  %shift976 = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop977 = fadd <4 x float> %i.ak, %shift976
  %i.fe = extractelement <4 x float> %foldExtExtBinop977, i64 0
  %i.ff = fadd float %i.fe, %.sroa.131.48.copyload
  %.sroa.3.12.vec.insert.i.i152 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ff, i64 0
  store <4 x float> <float f0xB33BBD2E, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %11, align 16, !alias.scope !114
  store <2 x float> <float 1.000000e+00, float f0xB33BBD2E>, ptr %i.eh, align 16, !alias.scope !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.16..sroa_idx.i157, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.15.32..sroa_idx.i160, align 8, !alias.scope !114
  store <2 x float> %i.fd, ptr %i.ei, align 16, !alias.scope !114
  store <2 x float> %.sroa.3.12.vec.insert.i.i152, ptr %.sroa.4.0..sroa_idx.i162, align 8, !tbaa !60, !alias.scope !114
  %i.fg = load ptr, ptr %i.z, align 8, !tbaa !47
  %i.fh = call noundef ptr @_ZN7RagDoll20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(64) %11, ptr noundef %i.fg)
  store ptr %i.fh, ptr %i.ej, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.fi = extractelement <4 x float> %i.ek, i64 0
  %i.fj = fadd float %i.fi, %i.ep
  %i.fk = insertelement <4 x float> poison, float %i.fj, i64 0
  %i.fl = insertelement <4 x float> poison, float %i.eo, i64 0
  %i.fm = insertelement <4 x float> %i.fl, float %i.ep, i64 1
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ek, <4 x float> zeroinitializer, <4 x float> %i.fn) ; 4 uses
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.fq = shufflevector <4 x float> %i.fk, <4 x float> %i.fo, <2 x i32> <i32 0, i32 4>
  %i.fr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> zeroinitializer, <2 x float> %i.fq)
  %i.fs = fadd <2 x float> %i.fr, %i.an
  %shift979 = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop980 = fadd <4 x float> %i.ak, %shift979
  %i.ft = extractelement <4 x float> %foldExtExtBinop980, i64 0
  %i.fu = fadd float %i.ft, %.sroa.131.48.copyload
  %.sroa.3.12.vec.insert.i.i170 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fu, i64 0
  store <4 x float> <float f0xB33BBD2E, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %12, align 16, !alias.scope !117
  store <2 x float> <float 1.000000e+00, float f0xB33BBD2E>, ptr %i.el, align 16, !alias.scope !117
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.16..sroa_idx.i175, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.15.32..sroa_idx.i178, align 8, !alias.scope !117
  store <2 x float> %i.fs, ptr %i.em, align 16, !alias.scope !117
  store <2 x float> %.sroa.3.12.vec.insert.i.i170, ptr %.sroa.4.0..sroa_idx.i180, align 8, !tbaa !60, !alias.scope !117
  %i.fv = load ptr, ptr %i.ad, align 8, !tbaa !47
  %i.fw = call noundef ptr @_ZN7RagDoll20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(64) %12, ptr noundef %i.fv)
  store ptr %i.fw, ptr %i.en, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.fx = extractelement <4 x float> %i.ek, i64 2
  %i.fy = fadd float %i.fx, %i.ep
  %i.fz = insertelement <2 x float> %i.fp, float %i.fy, i64 0
  %i.ga = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> zeroinitializer, <2 x float> %i.fz)
  %i.gb = fadd <2 x float> %i.ga, %i.an
  %shift982 = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop983 = fadd <4 x float> %i.ak, %shift982
  %i.gc = extractelement <4 x float> %foldExtExtBinop983, i64 0
  %i.gd = fadd float %i.gc, %.sroa.131.48.copyload
  %.sroa.3.12.vec.insert.i.i188 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gd, i64 0
  store <4 x float> <float f0xB33BBD2E, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %13, align 16, !alias.scope !120
  %i.ge = getelementptr inbounds nuw i8, ptr %13, i64 16
  store <4 x float> <float -1.000000e+00, float f0xB33BBD2E, float 0.000000e+00, float 0.000000e+00>, ptr %i.ge, align 16, !alias.scope !120
  %i.gf = getelementptr inbounds nuw i8, ptr %13, i64 32
  store <4 x float> <float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.gf, align 16, !alias.scope !120
  %i.gg = getelementptr inbounds nuw i8, ptr %13, i64 48
  store <2 x float> %i.gb, ptr %i.gg, align 16, !alias.scope !120
  %.sroa.4.0..sroa_idx.i198 = getelementptr inbounds nuw i8, ptr %13, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i188, ptr %.sroa.4.0..sroa_idx.i198, align 8, !tbaa !60, !alias.scope !120
  %i.gh = load ptr, ptr %i.af, align 8, !tbaa !47
  %i.gi = call noundef ptr @_ZN7RagDoll20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(64) %13, ptr noundef %i.gh)
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.gk = fmul float %3, f0x3F333333              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.gl = fadd float %i.gk, %i.ep
  %i.gm = call float @llvm.fmuladd.f32(float %i.gk, float 0.000000e+00, float %i.eo)
  %i.gn = insertelement <2 x float> poison, float %i.gl, i64 0
  %i.go = insertelement <2 x float> %i.gn, float %i.gm, i64 1
  %i.gp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> zeroinitializer, <2 x float> %i.go)
  %i.gq = fadd <2 x float> %i.gp, %i.an
  %i.gr = call float @llvm.fmuladd.f32(float %i.gk, float 0.000000e+00, float %i.ep)
  %i.gs = fadd float %i.am, %i.gr
  %i.gt = fadd float %i.gs, %.sroa.131.48.copyload
  %.sroa.3.12.vec.insert.i.i206 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gt, i64 0
  store <4 x float> <float f0xB33BBD2E, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %14, align 16, !alias.scope !123
  %i.gu = getelementptr inbounds nuw i8, ptr %14, i64 16
  store <4 x float> <float -1.000000e+00, float f0xB33BBD2E, float 0.000000e+00, float 0.000000e+00>, ptr %i.gu, align 16, !alias.scope !123
  %i.gv = getelementptr inbounds nuw i8, ptr %14, i64 32
  store <4 x float> <float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.gv, align 16, !alias.scope !123
  %i.gw = getelementptr inbounds nuw i8, ptr %14, i64 48
  store <2 x float> %i.gq, ptr %i.gw, align 16, !alias.scope !123
  %.sroa.4.0..sroa_idx.i216 = getelementptr inbounds nuw i8, ptr %14, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i206, ptr %.sroa.4.0..sroa_idx.i216, align 8, !tbaa !60, !alias.scope !123
  %i.gx = load ptr, ptr %i.ah, align 8, !tbaa !47
  %i.gy = call noundef ptr @_ZN7RagDoll20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(64) %14, ptr noundef %i.gx)
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.ha = load ptr, ptr %i.ar, align 8, !tbaa !94
  call void @_ZN11btRigidBody10setDampingEff(ptr noundef nonnull align 8 dereferenceable(564) %i.ha, float noundef 5.000000e-02, float noundef 8.500000e-01)
  %i.hb = load ptr, ptr %i.ar, align 8, !tbaa !94 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 232
  store float 8.000000e-01, ptr %i.hc, align 8, !tbaa !126
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 504
  store <2 x float> <float 1.600000e+00, float 2.500000e+00>, ptr %i.hd, align 8, !tbaa !36
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !94
  call void @_ZN11btRigidBody10setDampingEff(ptr noundef nonnull align 8 dereferenceable(564) %i.hf, float noundef 5.000000e-02, float noundef 8.500000e-01)
  %i.hg = load ptr, ptr %i.he, align 8, !tbaa !94 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 232
  store float 8.000000e-01, ptr %i.hh, align 8, !tbaa !126
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 504
  store <2 x float> <float 1.600000e+00, float 2.500000e+00>, ptr %i.hi, align 8, !tbaa !36
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !94
  call void @_ZN11btRigidBody10setDampingEff(ptr noundef nonnull align 8 dereferenceable(564) %i.hk, float noundef 5.000000e-02, float noundef 8.500000e-01)
  %i.hl = load ptr, ptr %i.hj, align 8, !tbaa !94 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 232
  store float 8.000000e-01, ptr %i.hm, align 8, !tbaa !126
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 504
  store <2 x float> <float 1.600000e+00, float 2.500000e+00>, ptr %i.hn, align 8, !tbaa !36
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !94
  call void @_ZN11btRigidBody10setDampingEff(ptr noundef nonnull align 8 dereferenceable(564) %i.hp, float noundef 5.000000e-02, float noundef 8.500000e-01)
  %i.hq = load ptr, ptr %i.ho, align 8, !tbaa !94 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 232
  store float 8.000000e-01, ptr %i.hr, align 8, !tbaa !126
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 504
  store <2 x float> <float 1.600000e+00, float 2.500000e+00>, ptr %i.hs, align 8, !tbaa !36
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !94
  call void @_ZN11btRigidBody10setDampingEff(ptr noundef nonnull align 8 dereferenceable(564) %i.hu, float noundef 5.000000e-02, float noundef 8.500000e-01)
  %i.hv = load ptr, ptr %i.ht, align 8, !tbaa !94 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 232
  store float 8.000000e-01, ptr %i.hw, align 8, !tbaa !126
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 504
  store <2 x float> <float 1.600000e+00, float 2.500000e+00>, ptr %i.hx, align 8, !tbaa !36
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !94
  call void @_ZN11btRigidBody10setDampingEff(ptr noundef nonnull align 8 dereferenceable(564) %i.hz, float noundef 5.000000e-02, float noundef 8.500000e-01)
  %i.ia = load ptr, ptr %i.hy, align 8, !tbaa !94 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 232
  store float 8.000000e-01, ptr %i.ib, align 8, !tbaa !126
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 504
  store <2 x float> <float 1.600000e+00, float 2.500000e+00>, ptr %i.ic, align 8, !tbaa !36
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !94
  call void @_ZN11btRigidBody10setDampingEff(ptr noundef nonnull align 8 dereferenceable(564) %i.ie, float noundef 5.000000e-02, float noundef 8.500000e-01)
  %i.if = load ptr, ptr %i.id, align 8, !tbaa !94 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 232
  store float 8.000000e-01, ptr %i.ig, align 8, !tbaa !126
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 504
  store <2 x float> <float 1.600000e+00, float 2.500000e+00>, ptr %i.ih, align 8, !tbaa !36
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !94
  call void @_ZN11btRigidBody10setDampingEff(ptr noundef nonnull align 8 dereferenceable(564) %i.ij, float noundef 5.000000e-02, float noundef 8.500000e-01)
  %i.ik = load ptr, ptr %i.ii, align 8, !tbaa !94 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 232
  store float 8.000000e-01, ptr %i.il, align 8, !tbaa !126
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 504
  store <2 x float> <float 1.600000e+00, float 2.500000e+00>, ptr %i.im, align 8, !tbaa !36
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !94
  call void @_ZN11btRigidBody10setDampingEff(ptr noundef nonnull align 8 dereferenceable(564) %i.io, float noundef 5.000000e-02, float noundef 8.500000e-01)
  %i.ip = load ptr, ptr %i.in, align 8, !tbaa !94 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 232
  store float 8.000000e-01, ptr %i.iq, align 8, !tbaa !126
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 504
  store <2 x float> <float 1.600000e+00, float 2.500000e+00>, ptr %i.ir, align 8, !tbaa !36
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !94
  call void @_ZN11btRigidBody10setDampingEff(ptr noundef nonnull align 8 dereferenceable(564) %i.it, float noundef 5.000000e-02, float noundef 8.500000e-01)
  %i.iu = load ptr, ptr %i.is, align 8, !tbaa !94 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 232
  store float 8.000000e-01, ptr %i.iv, align 8, !tbaa !126
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 504
  store <2 x float> <float 1.600000e+00, float 2.500000e+00>, ptr %i.iw, align 8, !tbaa !36
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !94
  call void @_ZN11btRigidBody10setDampingEff(ptr noundef nonnull align 8 dereferenceable(564) %i.iy, float noundef 5.000000e-02, float noundef 8.500000e-01)
  %i.iz = load ptr, ptr %i.ix, align 8, !tbaa !94 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 232
  store float 8.000000e-01, ptr %i.ja, align 8, !tbaa !126
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 504
  store <2 x float> <float 1.600000e+00, float 2.500000e+00>, ptr %i.jb, align 8, !tbaa !36
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.am, i64 0 ; 20 uses
  %.sroa.0.0.vec.insert.i.i73 = insertelement <2 x float> poison, float %i.al, i64 0
  %.sroa.0.0.vec.insert.i.i109 = insertelement <2 x float> poison, float %i.dc, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.jc = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.jd = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.je = getelementptr inbounds nuw i8, ptr %15, i64 44
  store <4 x float> <float f0xB33BBD2E, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %15, align 16, !tbaa !36
  %i.jf = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 9 uses
  store <4 x float> <float -0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jf, align 16, !tbaa !36
  %i.jg = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 9 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %15, i64 36
  store <4 x float> <float -1.000000e+00, float -0.000000e+00, float f0xB33BBD2E, float 0.000000e+00>, ptr %i.jg, align 16, !tbaa !36
  %.sroa.0.4.vec.insert.i.i218 = insertelement <2 x float> %17, float %i.c, i64 1
  %i.ji = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 10 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i218, ptr %i.ji, align 16
  %.sroa.4517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 10 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4517.0..sroa_idx, align 8, !tbaa !60
  store <4 x float> <float f0xB33BBD2E, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %16, align 16, !tbaa !36
  %i.jj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 10 uses
  store <4 x float> <float -0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jj, align 16, !tbaa !36
  %i.jk = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 10 uses
  store <4 x float> <float -1.000000e+00, float -0.000000e+00, float f0xB33BBD2E, float 0.000000e+00>, ptr %i.jk, align 16, !tbaa !36
  %i.jl = fmul float %3, -1.500000e-01
  %.sroa.0.4.vec.insert.i.i223 = insertelement <2 x float> %17, float %i.jl, i64 1
  %i.jm = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 10 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i223, ptr %i.jm, align 16
  %.sroa.4508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 10 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4508.0..sroa_idx, align 8, !tbaa !60
  %i.jn = call noalias noundef nonnull dereferenceable(792) ptr @_Znwm(i64 noundef 792) #20 ; 6 uses
  %i.jo = load ptr, ptr %i.ar, align 8, !tbaa !94
  %i.jp = load ptr, ptr %i.bp, align 8, !tbaa !94
  invoke void @_ZN17btHingeConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(792) %i.jn, ptr noundef nonnull align 8 dereferenceable(564) %i.jo, ptr noundef nonnull align 8 dereferenceable(564) %i.jp, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %16, i1 noundef zeroext false)
          to label %_ZN17btHingeConstraint8setLimitEfffff.exit unwind label %bb.ac

bb.m:                                             ; preds = %bb.a
  %i.jq = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.an

bb.n:                                             ; preds = %bb.b
  %i.jr = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.f)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.an

bb.o:                                             ; preds = %bb.c
  %i.js = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.an

bb.p:                                             ; preds = %bb.d
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.m)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.an

bb.q:                                             ; preds = %bb.e
  %i.ju = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.q)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.an

bb.r:                                             ; preds = %bb.f
  %i.jv = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.t)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.an

bb.s:                                             ; preds = %bb.g
  %i.jw = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.v)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.an

bb.t:                                             ; preds = %bb.h
  %i.jx = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.x)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.an

bb.u:                                             ; preds = %bb.i
  %i.jy = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aa)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.an

bb.v:                                             ; preds = %bb.j
  %i.jz = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ae)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.an

bb.w:                                             ; preds = %bb.k
  %i.ka = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ag)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.an

_ZN17btHingeConstraint8setLimitEfffff.exit:       ; preds = %bb.l
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jn, i64 752
  store float f0x3FC90FDB, ptr %i.kb, align 8, !tbaa !129
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jn, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float f0xBF490FDB>, ptr %i.kc, align 8, !tbaa !36
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.jn, ptr %i.kd, align 8, !tbaa !133
  %i.ke = load ptr, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !12
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 80
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(228) %i.ke, ptr noundef nonnull %i.jn, i1 noundef zeroext true)
  store <4 x float> <float f0xB33BBD2E, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %15, align 16, !tbaa !36
  store <4 x float> <float 1.000000e+00, float f0xB33BBD2E, float 0.000000e+00, float 0.000000e+00>, ptr %i.jf, align 16, !tbaa !36
  store <4 x float> <float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.jg, align 16, !tbaa !36
  %i.ki = fmul float %3, 3.000000e-01
  %.sroa.0.4.vec.insert.i.i238 = insertelement <2 x float> %17, float %i.ki, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i238, ptr %i.ji, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4517.0..sroa_idx, align 8, !tbaa !60
  store <4 x float> <float f0xB33BBD2E, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %16, align 16, !tbaa !36
  store <4 x float> <float 1.000000e+00, float f0xB33BBD2E, float 0.000000e+00, float 0.000000e+00>, ptr %i.jj, align 16, !tbaa !36
  store <4 x float> <float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.jk, align 16, !tbaa !36
  %i.kj = fmul float %3, -1.400000e-01
  %.sroa.0.4.vec.insert.i.i243 = insertelement <2 x float> %17, float %i.kj, i64 1 ; 3 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i243, ptr %i.jm, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4508.0..sroa_idx, align 8, !tbaa !60
  %i.kk = call noalias noundef nonnull dereferenceable(640) ptr @_Znwm(i64 noundef 640) #20 ; 8 uses
  %i.kl = load ptr, ptr %i.bp, align 8, !tbaa !94
  %i.km = load ptr, ptr %i.bs, align 8, !tbaa !94
  invoke void @_ZN21btConeTwistConstraintC1ER11btRigidBodyS1_RK11btTransformS4_(ptr noundef nonnull align 8 dereferenceable(640) %i.kk, ptr noundef nonnull align 8 dereferenceable(564) %i.kl, ptr noundef nonnull align 8 dereferenceable(564) %i.km, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %16)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %_ZN17btHingeConstraint8setLimitEfffff.exit
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 492
  store <2 x float> splat (float f0x3F490FDB), ptr %i.kn, align 4, !tbaa !36
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 500
  store float f0x3FC90FDB, ptr %i.ko, align 4, !tbaa !135
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 476
  store <2 x float> <float 1.000000e+00, float 3.000000e-01>, ptr %i.kp, align 4, !tbaa !36
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kk, i64 484
  store float 1.000000e+00, ptr %i.kq, align 4, !tbaa !139
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.kk, ptr %i.kr, align 8, !tbaa !133
  %i.ks = load ptr, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !12
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 80
  %i.kv = load ptr, ptr %i.ku, align 8
  call void %i.kv(ptr noundef nonnull align 8 dereferenceable(228) %i.ks, ptr noundef nonnull %i.kk, i1 noundef zeroext true)
  store <4 x float> <float f0xBF3504F4, float f0xBF3504F2, float 0.000000e+00, float 0.000000e+00>, ptr %15, align 16, !tbaa !36
  store <4 x float> <float f0x3F3504F2, float f0xBF3504F4, float 0.000000e+00, float 0.000000e+00>, ptr %i.jf, align 16, !tbaa !36
  store <4 x float> <float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.jg, align 16, !tbaa !36
  %i.kw = fmul float %3, -1.000000e-01            ; 2 uses
  %.sroa.0.4.vec.insert.i.i248 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i73, float %i.kw, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i248, ptr %i.ji, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4517.0..sroa_idx, align 8, !tbaa !60
  store <4 x float> <float f0xBF3504F4, float f0xBF3504F2, float 0.000000e+00, float 0.000000e+00>, ptr %16, align 16, !tbaa !36
  store <4 x float> <float f0x3F3504F2, float f0xBF3504F4, float 0.000000e+00, float 0.000000e+00>, ptr %i.jj, align 16, !tbaa !36
  store <4 x float> <float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.jk, align 16, !tbaa !36
  %i.kx = fmul float %3, 2.250000e-01
  %.sroa.0.4.vec.insert.i.i253 = insertelement <2 x float> %17, float %i.kx, i64 1 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i253, ptr %i.jm, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4508.0..sroa_idx, align 8, !tbaa !60
  %i.ky = call noalias noundef nonnull dereferenceable(640) ptr @_Znwm(i64 noundef 640) #20 ; 8 uses
  %i.kz = load ptr, ptr %i.ar, align 8, !tbaa !94
  %i.la = load ptr, ptr %i.cu, align 8, !tbaa !94
  invoke void @_ZN21btConeTwistConstraintC1ER11btRigidBodyS1_RK11btTransformS4_(ptr noundef nonnull align 8 dereferenceable(640) %i.ky, ptr noundef nonnull align 8 dereferenceable(564) %i.kz, ptr noundef nonnull align 8 dereferenceable(564) %i.la, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %16)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 492
  store <2 x float> splat (float f0x3F490FDB), ptr %i.lb, align 4, !tbaa !36
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 500
  store float 0.000000e+00, ptr %i.lc, align 4, !tbaa !135
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 476
  store <2 x float> <float 1.000000e+00, float 3.000000e-01>, ptr %i.ld, align 4, !tbaa !36
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 484
  store float 1.000000e+00, ptr %i.le, align 4, !tbaa !139
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.ky, ptr %i.lf, align 8, !tbaa !133
  %i.lg = load ptr, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !12
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 80
  %i.lj = load ptr, ptr %i.li, align 8
  call void %i.lj(ptr noundef nonnull align 8 dereferenceable(228) %i.lg, ptr noundef nonnull %i.ky, i1 noundef zeroext true)
  store <4 x float> <float f0xB33BBD2E, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %15, align 16, !tbaa !36
  store <4 x float> <float -0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jf, align 16, !tbaa !36
  store <4 x float> <float -1.000000e+00, float -0.000000e+00, float f0xB33BBD2E, float 0.000000e+00>, ptr %i.jg, align 16, !tbaa !36
  %i.lk = fmul float %3, -2.250000e-01
  %.sroa.0.4.vec.insert.i.i258 = insertelement <2 x float> %17, float %i.lk, i64 1 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i258, ptr %i.ji, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4517.0..sroa_idx, align 8, !tbaa !60
  store <4 x float> <float f0xB33BBD2E, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %16, align 16, !tbaa !36
  store <4 x float> <float -0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jj, align 16, !tbaa !36
  store <4 x float> <float -1.000000e+00, float -0.000000e+00, float f0xB33BBD2E, float 0.000000e+00>, ptr %i.jk, align 16, !tbaa !36
  %i.ll = fmul float %3, 1.850000e-01
  %.sroa.0.4.vec.insert.i.i263 = insertelement <2 x float> %17, float %i.ll, i64 1 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i263, ptr %i.jm, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4508.0..sroa_idx, align 8, !tbaa !60
  %i.lm = call noalias noundef nonnull dereferenceable(792) ptr @_Znwm(i64 noundef 792) #20 ; 6 uses
  %i.ln = load ptr, ptr %i.cu, align 8, !tbaa !94
  %i.lo = load ptr, ptr %i.da, align 8, !tbaa !94
  invoke void @_ZN17btHingeConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(792) %i.lm, ptr noundef nonnull align 8 dereferenceable(564) %i.ln, ptr noundef nonnull align 8 dereferenceable(564) %i.lo, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %16, i1 noundef zeroext false)
          to label %_ZN17btHingeConstraint8setLimitEfffff.exit270 unwind label %bb.af

_ZN17btHingeConstraint8setLimitEfffff.exit270:    ; preds = %bb.y
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 752
  store float f0x3FC90FDB, ptr %i.lp, align 8, !tbaa !129
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float 0.000000e+00>, ptr %i.lq, align 8, !tbaa !36
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.lm, ptr %i.lr, align 8, !tbaa !133
  %i.ls = load ptr, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !12
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 80
  %i.lv = load ptr, ptr %i.lu, align 8
  call void %i.lv(ptr noundef nonnull align 8 dereferenceable(228) %i.ls, ptr noundef nonnull %i.lm, i1 noundef zeroext true)
  store <4 x float> <float f0x3F3504F3, float f0xBF3504F3, float 0.000000e+00, float 0.000000e+00>, ptr %15, align 16, !tbaa !36
  store <4 x float> <float f0x3F3504F3, float f0x3F3504F3, float 0.000000e+00, float 0.000000e+00>, ptr %i.jf, align 16, !tbaa !36
  store <4 x float> <float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.jg, align 16, !tbaa !36
  %.sroa.0.4.vec.insert.i.i272 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i109, float %i.kw, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i272, ptr %i.ji, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4517.0..sroa_idx, align 8, !tbaa !60
  store <4 x float> <float f0x3F3504F3, float f0xBF3504F3, float 0.000000e+00, float 0.000000e+00>, ptr %16, align 16, !tbaa !36
  store <4 x float> <float f0x3F3504F3, float f0x3F3504F3, float 0.000000e+00, float 0.000000e+00>, ptr %i.jj, align 16, !tbaa !36
  store <4 x float> <float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.jk, align 16, !tbaa !36
  store <2 x float> %.sroa.0.4.vec.insert.i.i253, ptr %i.jm, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4508.0..sroa_idx, align 8, !tbaa !60
  %i.lw = call noalias noundef nonnull dereferenceable(640) ptr @_Znwm(i64 noundef 640) #20 ; 8 uses
  %i.lx = load ptr, ptr %i.ar, align 8, !tbaa !94
  %i.ly = load ptr, ptr %i.dz, align 8, !tbaa !94
  invoke void @_ZN21btConeTwistConstraintC1ER11btRigidBodyS1_RK11btTransformS4_(ptr noundef nonnull align 8 dereferenceable(640) %i.lw, ptr noundef nonnull align 8 dereferenceable(564) %i.lx, ptr noundef nonnull align 8 dereferenceable(564) %i.ly, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %16)
          to label %bb.z unwind label %bb.ag

bb.z:                                             ; preds = %_ZN17btHingeConstraint8setLimitEfffff.exit270
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 492
  store <2 x float> splat (float f0x3F490FDB), ptr %i.lz, align 4, !tbaa !36
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 500
  store float 0.000000e+00, ptr %i.ma, align 4, !tbaa !135
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lw, i64 476
  store <2 x float> <float 1.000000e+00, float 3.000000e-01>, ptr %i.mb, align 4, !tbaa !36
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lw, i64 484
  store float 1.000000e+00, ptr %i.mc, align 4, !tbaa !139
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.lw, ptr %i.md, align 8, !tbaa !133
  %i.me = load ptr, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !12
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 80
  %i.mh = load ptr, ptr %i.mg, align 8
  call void %i.mh(ptr noundef nonnull align 8 dereferenceable(228) %i.me, ptr noundef nonnull %i.lw, i1 noundef zeroext true)
  store <4 x float> <float f0xB33BBD2E, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %15, align 16, !tbaa !36
  store <4 x float> <float -0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jf, align 16, !tbaa !36
  store <4 x float> <float -1.000000e+00, float -0.000000e+00, float f0xB33BBD2E, float 0.000000e+00>, ptr %i.jg, align 16, !tbaa !36
  store <2 x float> %.sroa.0.4.vec.insert.i.i258, ptr %i.ji, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4517.0..sroa_idx, align 8, !tbaa !60
  store <4 x float> <float f0xB33BBD2E, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %16, align 16, !tbaa !36
  store <4 x float> <float -0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jj, align 16, !tbaa !36
  store <4 x float> <float -1.000000e+00, float -0.000000e+00, float f0xB33BBD2E, float 0.000000e+00>, ptr %i.jk, align 16, !tbaa !36
  store <2 x float> %.sroa.0.4.vec.insert.i.i263, ptr %i.jm, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4508.0..sroa_idx, align 8, !tbaa !60
  %i.mi = call noalias noundef nonnull dereferenceable(792) ptr @_Znwm(i64 noundef 792) #20 ; 6 uses
  %i.mj = load ptr, ptr %i.dz, align 8, !tbaa !94
  %i.mk = load ptr, ptr %i.ee, align 8, !tbaa !94
  invoke void @_ZN17btHingeConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(792) %i.mi, ptr noundef nonnull align 8 dereferenceable(564) %i.mj, ptr noundef nonnull align 8 dereferenceable(564) %i.mk, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %16, i1 noundef zeroext false)
          to label %_ZN17btHingeConstraint8setLimitEfffff.exit294 unwind label %bb.ah

_ZN17btHingeConstraint8setLimitEfffff.exit294:    ; preds = %bb.z
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 752
  store float f0x3FC90FDB, ptr %i.ml, align 8, !tbaa !129
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float 0.000000e+00>, ptr %i.mm, align 8, !tbaa !36
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.mi, ptr %i.mn, align 8, !tbaa !133
  %i.mo = load ptr, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !12
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 80
  %i.mr = load ptr, ptr %i.mq, align 8
  call void %i.mr(ptr noundef nonnull align 8 dereferenceable(228) %i.mo, ptr noundef nonnull %i.mi, i1 noundef zeroext true)
  store <4 x float> <float -1.000000e+00, float f0x33BBBD2E, float -0.000000e+00, float 0.000000e+00>, ptr %15, align 16, !tbaa !36
  store <4 x float> <float f0xB3BBBD2E, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jf, align 16, !tbaa !36
  store <4 x float> <float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.jg, align 16, !tbaa !36
  %i.ms = fmul float %3, -2.000000e-01
  %.sroa.0.0.vec.insert.i.i295 = insertelement <2 x float> poison, float %i.ms, i64 0
  %.sroa.0.4.vec.insert.i.i296 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i295, float %i.c, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i296, ptr %i.ji, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4517.0..sroa_idx, align 8, !tbaa !60
  store <4 x float> <float f0xB33BBD2E, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %16, align 16, !tbaa !36
  store <4 x float> <float 1.000000e+00, float f0xB33BBD2E, float 0.000000e+00, float 0.000000e+00>, ptr %i.jj, align 16, !tbaa !36
  store <4 x float> <float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.jk, align 16, !tbaa !36
  %.sroa.0.4.vec.insert.i.i301 = insertelement <2 x float> %17, float %i.al, i64 1 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i301, ptr %i.jm, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4508.0..sroa_idx, align 8, !tbaa !60
  %i.mt = call noalias noundef nonnull dereferenceable(640) ptr @_Znwm(i64 noundef 640) #20 ; 8 uses
  %i.mu = load ptr, ptr %i.bp, align 8, !tbaa !94
  %i.mv = load ptr, ptr %i.ej, align 8, !tbaa !94
  invoke void @_ZN21btConeTwistConstraintC1ER11btRigidBodyS1_RK11btTransformS4_(ptr noundef nonnull align 8 dereferenceable(640) %i.mt, ptr noundef nonnull align 8 dereferenceable(564) %i.mu, ptr noundef nonnull align 8 dereferenceable(564) %i.mv, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %16)
          to label %bb.aa unwind label %bb.ai

bb.aa:                                            ; preds = %_ZN17btHingeConstraint8setLimitEfffff.exit294
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 492
  store <2 x float> splat (float f0x3FC90FDB), ptr %i.mw, align 4, !tbaa !36
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 500
  store float 0.000000e+00, ptr %i.mx, align 4, !tbaa !135
  %i.my = getelementptr inbounds nuw i8, ptr %i.mt, i64 476
  store <2 x float> <float 1.000000e+00, float 3.000000e-01>, ptr %i.my, align 4, !tbaa !36
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mt, i64 484
  store float 1.000000e+00, ptr %i.mz, align 4, !tbaa !139
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.mt, ptr %i.na, align 8, !tbaa !133
  %i.nb = load ptr, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !12
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 80
  %i.ne = load ptr, ptr %i.nd, align 8
  call void %i.ne(ptr noundef nonnull align 8 dereferenceable(228) %i.nb, ptr noundef nonnull %i.mt, i1 noundef zeroext true)
  store <4 x float> <float f0xB33BBD2E, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %15, align 16, !tbaa !36
  store <4 x float> <float -0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jf, align 16, !tbaa !36
  store <4 x float> <float -1.000000e+00, float -0.000000e+00, float f0xB33BBD2E, float 0.000000e+00>, ptr %i.jg, align 16, !tbaa !36
  %i.nf = shufflevector <4 x float> %i.db, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.0.4.vec.insert.i.i306 = shufflevector <2 x float> %17, <2 x float> %i.nf, <2 x i32> <i32 0, i32 2> ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i306, ptr %i.ji, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4517.0..sroa_idx, align 8, !tbaa !60
  store <4 x float> <float f0xB33BBD2E, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %16, align 16, !tbaa !36
  store <4 x float> <float -0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jj, align 16, !tbaa !36
  store <4 x float> <float -1.000000e+00, float -0.000000e+00, float f0xB33BBD2E, float 0.000000e+00>, ptr %i.jk, align 16, !tbaa !36
  store <2 x float> %.sroa.0.4.vec.insert.i.i243, ptr %i.jm, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4508.0..sroa_idx, align 8, !tbaa !60
  %i.ng = call noalias noundef nonnull dereferenceable(792) ptr @_Znwm(i64 noundef 792) #20 ; 6 uses
  %i.nh = load ptr, ptr %i.ej, align 8, !tbaa !94
  %i.ni = load ptr, ptr %i.en, align 8, !tbaa !94
  invoke void @_ZN17btHingeConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(792) %i.ng, ptr noundef nonnull align 8 dereferenceable(564) %i.nh, ptr noundef nonnull align 8 dereferenceable(564) %i.ni, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %16, i1 noundef zeroext false)
          to label %_ZN17btHingeConstraint8setLimitEfffff.exit318 unwind label %bb.aj

_ZN17btHingeConstraint8setLimitEfffff.exit318:    ; preds = %bb.aa
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 752
  store float 0.000000e+00, ptr %i.nj, align 8, !tbaa !129
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ng, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float f0xBFC90FDB>, ptr %i.nk, align 8, !tbaa !36
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.ng, ptr %i.nl, align 8, !tbaa !133
  %i.nm = load ptr, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !12
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 80
  %i.np = load ptr, ptr %i.no, align 8
  call void %i.np(ptr noundef nonnull align 8 dereferenceable(228) %i.nm, ptr noundef nonnull %i.ng, i1 noundef zeroext true)
  store float 1.000000e+00, ptr %15, align 16, !tbaa !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jc, i8 0, i64 16, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>, ptr %i.jd, align 4, !tbaa !36
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.jh, align 4, !tbaa !36
  store float 0.000000e+00, ptr %i.je, align 4, !tbaa !36
  %.sroa.0.0.vec.insert.i.i319 = insertelement <2 x float> poison, float %i.d, i64 0
  %.sroa.0.4.vec.insert.i.i320 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i319, float %i.c, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i320, ptr %i.ji, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4517.0..sroa_idx, align 8, !tbaa !60
  store <4 x float> <float f0xB33BBD2E, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %16, align 16, !tbaa !36
  store <4 x float> <float 1.000000e+00, float f0xB33BBD2E, float 0.000000e+00, float 0.000000e+00>, ptr %i.jj, align 16, !tbaa !36
  store <4 x float> <float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.jk, align 16, !tbaa !36
  store <2 x float> %.sroa.0.4.vec.insert.i.i301, ptr %i.jm, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4508.0..sroa_idx, align 8, !tbaa !60
  %i.nq = call noalias noundef nonnull dereferenceable(640) ptr @_Znwm(i64 noundef 640) #20 ; 8 uses
  %i.nr = load ptr, ptr %i.bp, align 8, !tbaa !94
  %i.ns = load ptr, ptr %i.gj, align 8, !tbaa !94
  invoke void @_ZN21btConeTwistConstraintC1ER11btRigidBodyS1_RK11btTransformS4_(ptr noundef nonnull align 8 dereferenceable(640) %i.nq, ptr noundef nonnull align 8 dereferenceable(564) %i.nr, ptr noundef nonnull align 8 dereferenceable(564) %i.ns, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %16)
          to label %bb.ab unwind label %bb.ak

bb.ab:                                            ; preds = %_ZN17btHingeConstraint8setLimitEfffff.exit318
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 492
  store <2 x float> splat (float f0x3FC90FDB), ptr %i.nt, align 4, !tbaa !36
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nq, i64 500
  store float 0.000000e+00, ptr %i.nu, align 4, !tbaa !135
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nq, i64 476
  store <2 x float> <float 1.000000e+00, float 3.000000e-01>, ptr %i.nv, align 4, !tbaa !36
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 484
  store float 1.000000e+00, ptr %i.nw, align 4, !tbaa !139
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.nq, ptr %i.nx, align 8, !tbaa !133
  %i.ny = load ptr, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !12
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 80
  %i.ob = load ptr, ptr %i.oa, align 8
  call void %i.ob(ptr noundef nonnull align 8 dereferenceable(228) %i.ny, ptr noundef nonnull %i.nq, i1 noundef zeroext true)
  store <4 x float> <float f0xB33BBD2E, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %15, align 16, !tbaa !36
  store <4 x float> <float -0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jf, align 16, !tbaa !36
  store <4 x float> <float -1.000000e+00, float -0.000000e+00, float f0xB33BBD2E, float 0.000000e+00>, ptr %i.jg, align 16, !tbaa !36
  store <2 x float> %.sroa.0.4.vec.insert.i.i306, ptr %i.ji, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4517.0..sroa_idx, align 8, !tbaa !60
  store <4 x float> <float f0xB33BBD2E, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %16, align 16, !tbaa !36
  store <4 x float> <float -0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jj, align 16, !tbaa !36
  store <4 x float> <float -1.000000e+00, float -0.000000e+00, float f0xB33BBD2E, float 0.000000e+00>, ptr %i.jk, align 16, !tbaa !36
  store <2 x float> %.sroa.0.4.vec.insert.i.i243, ptr %i.jm, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4508.0..sroa_idx, align 8, !tbaa !60
  %i.oc = call noalias noundef nonnull dereferenceable(792) ptr @_Znwm(i64 noundef 792) #20 ; 6 uses
  %i.od = load ptr, ptr %i.gj, align 8, !tbaa !94
  %i.oe = load ptr, ptr %i.gz, align 8, !tbaa !94
  invoke void @_ZN17btHingeConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(792) %i.oc, ptr noundef nonnull align 8 dereferenceable(564) %i.od, ptr noundef nonnull align 8 dereferenceable(564) %i.oe, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %16, i1 noundef zeroext false)
          to label %_ZN17btHingeConstraint8setLimitEfffff.exit342 unwind label %bb.al

_ZN17btHingeConstraint8setLimitEfffff.exit342:    ; preds = %bb.ab
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 752
  store float 0.000000e+00, ptr %i.of, align 8, !tbaa !129
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float f0xBFC90FDB>, ptr %i.og, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.oc, ptr %i.oh, align 8, !tbaa !133
  %i.oi = load ptr, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !12
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 80
  %i.ol = load ptr, ptr %i.ok, align 8
  call void %i.ol(ptr noundef nonnull align 8 dereferenceable(228) %i.oi, ptr noundef nonnull %i.oc, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  ret void

bb.ac:                                            ; preds = %bb.l
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ad:                                            ; preds = %_ZN17btHingeConstraint8setLimitEfffff.exit
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ae:                                            ; preds = %bb.x
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.af:                                            ; preds = %bb.y
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ag:                                            ; preds = %_ZN17btHingeConstraint8setLimitEfffff.exit270
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ah:                                            ; preds = %bb.z
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ai:                                            ; preds = %_ZN17btHingeConstraint8setLimitEfffff.exit294
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %bb.aa
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ak:                                            ; preds = %_ZN17btHingeConstraint8setLimitEfffff.exit318
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.ab
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.sink = phi ptr [ %i.oc, %bb.al ], [ %i.nq, %bb.ak ], [ %i.ng, %bb.aj ], [ %i.mt, %bb.ai ], [ %i.mi, %bb.ah ], [ %i.lw, %bb.ag ], [ %i.lm, %bb.af ], [ %i.ky, %bb.ae ], [ %i.kk, %bb.ad ], [ %i.jn, %bb.ac ]
  %.pn = phi { ptr, i32 } [ %i.ov, %bb.al ], [ %i.ou, %bb.ak ], [ %i.ot, %bb.aj ], [ %i.os, %bb.ai ], [ %i.or, %bb.ah ], [ %i.oq, %bb.ag ], [ %i.op, %bb.af ], [ %i.oo, %bb.ae ], [ %i.on, %bb.ad ], [ %i.om, %bb.ac ]
  call void @_ZdlPv(ptr noundef nonnull %.sink) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %_ZN13btConvexShapedlEPv.exit

_ZN13btConvexShapedlEPv.exit:                     ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.am
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.am ], [ %i.jz, %bb.v ], [ %i.jy, %bb.u ], [ %i.jx, %bb.t ], [ %i.jw, %bb.s ], [ %i.jv, %bb.r ], [ %i.ju, %bb.q ], [ %i.jt, %bb.p ], [ %i.js, %bb.o ], [ %i.jr, %bb.n ], [ %i.jq, %bb.m ], [ %i.ka, %bb.w ]
  resume { ptr, i32 } %.pn.pn

bb.an:                                            ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %i.ow = landingpad { ptr, i32 }
          catch ptr null
  %i.ox = extractvalue { ptr, i32 } %i.ow, 0
  tail call void @__clang_call_terminate(ptr %i.ox) #23
  unreachable
}

declare void @_ZN17btConvexHullShapeC1EPKfii(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #4

declare void @_ZN17btConvexHullShape8addPointERK9btVector3(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: uwtable
define dso_local void @_ZN13BenchmarkDemo19createLargeMeshBodyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.btVector3, align 4           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i

bb.b:                                             ; preds = %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit
  ret void

_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i: ; preds = %bb.a, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit ] ; 5 uses
  %i.b = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 104, i32 noundef 16) ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.c, align 4, !tbaa !36
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTV26btTriangleIndexVertexArray, i64 16), ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store i8 1, ptr %i.d, align 8, !tbaa !140
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 6 uses
  store ptr null, ptr %i.e, align 8, !tbaa !144
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 5 uses
  store i32 0, ptr %i.f, align 4, !tbaa !145
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !146
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 0, ptr %i.h, align 8, !tbaa !147
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @LandscapeVtx, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !150
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @LandscapeVtxCount, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @LandscapeIdx, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !152
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @LandscapeIdxCount, i64 %indvars.iv
end_hunk_1
