inline.NumInlined: 505
inline.NumDeleted: 142
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN16btCollisionWorld33performDiscreteCollisionDetectionEv:bb.a
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.h)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN14CProfileSampleC2EPKc.exit
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit unwind label %bb.g

_ZN14CProfileSampleD2Ev.exit:                     ; preds = %bb.c
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !20   ; 3 uses
  invoke void @_ZN15CProfileManager13Start_ProfileEPKc(ptr noundef nonnull @.str.7)
          to label %_ZN14CProfileSampleC2EPKc.exit13 unwind label %bb.i

_ZN14CProfileSampleC2EPKc.exit13:                 ; preds = %_ZN14CProfileSampleD2Ev.exit
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.k, label %bb.d

bb.d:                                             ; preds = %_ZN14CProfileSampleC2EPKc.exit13
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef %i.r)
          to label %bb.k unwind label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZN14CProfileSampleD2Ev.exit14

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZN14CProfileSampleD2Ev.exit14

bb.h:                                             ; preds = %_ZN14CProfileSampleC2EPKc.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit14 unwind label %bb.l

bb.i:                                             ; preds = %bb.k, %_ZN14CProfileSampleD2Ev.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZN14CProfileSampleD2Ev.exit14

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit14 unwind label %bb.l

bb.k:                                             ; preds = %bb.e, %_ZN14CProfileSampleC2EPKc.exit13
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit16 unwind label %bb.i

_ZN14CProfileSampleD2Ev.exit16:                   ; preds = %bb.k
  tail call void @_ZN15CProfileManager12Stop_ProfileEv()
  ret void

_ZN14CProfileSampleD2Ev.exit14:                   ; preds = %bb.i, %bb.j, %bb.g, %bb.h, %bb.f
  %.pn10.pn = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.v, %bb.f ], [ %i.w, %bb.g ], [ %i.y, %bb.i ], [ %i.z, %bb.j ]
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit17 unwind label %bb.l

_ZN14CProfileSampleD2Ev.exit17:                   ; preds = %_ZN14CProfileSampleD2Ev.exit14
  resume { ptr, i32 } %.pn10.pn

bb.l:                                             ; preds = %_ZN14CProfileSampleD2Ev.exit14, %bb.j, %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #13
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN16btCollisionWorld21removeCollisionObjectEP17btCollisionObject(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(129) %0, ptr nofree noundef captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.b, ptr noundef %i.j)
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.b, ptr noundef %i.o)
  store ptr null, ptr %i.a, align 8, !tbaa !49
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !18   ; 4 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.i, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE6removeERKS1_.exit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17   ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.t to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47   ; 2 uses
  %i.z = icmp eq ptr %i.y, %1
  br i1 %i.z, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE6removeERKS1_.exit, label %bb.d

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.i: ; preds = %bb.d
  %i.aa = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.ab = icmp sgt i32 %i.t, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE6removeERKS1_.exit

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.i
  %i.ad = add nsw i32 %i.t, -1                    ; 2 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !47
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !47
  store ptr %i.y, ptr %i.af, align 8, !tbaa !47
  store i32 %i.ad, ptr %i.s, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE6removeERKS1_.exit

_ZN20btAlignedObjectArrayIP17btCollisionObjectE6removeERKS1_.exit: ; preds = %bb.e, %bb.c, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.i, %bb.f
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackE(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.btSphereShape, align 8       ; 11 uses
  %7 = alloca %"struct.btConvexCast::CastResult", align 8 ; 11 uses
  %8 = alloca %class.btVoronoiSimplexSolver, align 4 ; 5 uses
  %9 = alloca %class.btSubsimplexConvexCast, align 8 ; 7 uses
  %10 = alloca %"struct.btCollisionWorld::LocalRayResult", align 8 ; 8 uses
  %11 = alloca %class.btVector3, align 8          ; 7 uses
  %12 = alloca %class.btVector3, align 8          ; 7 uses
  %13 = alloca %struct.BridgeTriangleRaycastCallback, align 8 ; 16 uses
  %14 = alloca %class.btVector3, align 8          ; 8 uses
  %15 = alloca %class.btVector3, align 8          ; 9 uses
  %16 = alloca %struct.BridgeTriangleRaycastCallback.0, align 8 ; 16 uses
  %17 = alloca %class.btVector3, align 4          ; 10 uses
  %18 = alloca %class.btVector3, align 4          ; 10 uses
  %19 = alloca %class.btTransform, align 8        ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6)
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV13btSphereShape, i64 16), ptr %6, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 8, ptr %i.a, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 56
  store float 0.000000e+00, ptr %i.c, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !66   ; 4 uses
  %i.f = icmp slt i32 %i.e, 20
  br i1 %i.f, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12btConvexCast10CastResultE, i64 16), ptr %7, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 168 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 176
  store ptr null, ptr %i.h, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 184
  store float 0.000000e+00, ptr %i.i, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.k = load float, ptr %i.j, align 8, !tbaa !77
  store float %i.k, ptr %i.g, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 328
  store i8 0, ptr %i.l, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  invoke void @_ZN22btSubsimplexConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %8)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.m = invoke noundef zeroext i1 @_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(188) %7)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 3 uses
  %i.o = load float, ptr %i.n, align 8, !tbaa !68 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 140
  %i.q = load float, ptr %i.p, align 4, !tbaa !68 ; 4 uses
  %i.r = fmul float %i.q, %i.q
  %i.s = call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 3 uses
  %i.u = load float, ptr %i.t, align 8, !tbaa !68 ; 4 uses
  %i.v = call noundef float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.s)
  %i.w = fcmp ogt float %i.v, f0x38D1B717
  br i1 %i.w, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.x = load float, ptr %i.g, align 8, !tbaa !80 ; 2 uses
  %i.y = load float, ptr %i.j, align 8, !tbaa !77
  %i.z = fcmp olt float %i.x, %i.y
  br i1 %i.z, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !68
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !68
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load float, ptr %i.af, align 4, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !68
  %i.aj = fmul float %i.q, %i.ai
  %i.ak = call float @llvm.fmuladd.f32(float %i.ag, float %i.o, float %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load float, ptr %i.al, align 4, !tbaa !68
  %i.an = call noundef float @llvm.fmuladd.f32(float %i.am, float %i.u, float %i.ak) ; 4 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.an, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.t, align 8, !tbaa !64
  %i.ao = load <2 x float>, ptr %0, align 4, !tbaa !68 ; 2 uses
  %i.ap = load <2 x float>, ptr %i.ac, align 4, !tbaa !68 ; 2 uses
  %i.aq = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = shufflevector <2 x float> %i.ao, <2 x float> %i.ap, <2 x i32> <i32 1, i32 3>
  %i.at = fmul <2 x float> %i.ar, %i.as
  %i.au = shufflevector <2 x float> %i.ao, <2 x float> %i.ap, <2 x i32> <i32 0, i32 2>
  %i.av = insertelement <2 x float> poison, float %i.o, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.aw, <2 x float> %i.at)
  %i.ay = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %i.ae, i64 1
  %i.ba = insertelement <2 x float> poison, float %i.u, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.bb, <2 x float> %i.ax) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.bc, %i.bc
  %i.bd = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.be = extractelement <2 x float> %i.bc, i64 0 ; 2 uses
  %i.bf = call float @llvm.fmuladd.f32(float %i.be, float %i.be, float %i.bd)
  %i.bg = call noundef float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.bf)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.bg)
  %i.bh = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.bi = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x float> %i.bc, %i.bj
  store <2 x float> %i.bk, ptr %i.n, align 8, !tbaa !68
  %i.bl = fmul float %i.an, %i.bh
  store float %i.bl, ptr %i.t, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store ptr %2, ptr %10, align 8, !tbaa !81
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.bm, align 8, !tbaa !84
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !63
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 32
  store float %i.x, ptr %i.bo, align 8, !tbaa !85
  %i.bp = load ptr, ptr %5, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = invoke noundef float %i.br(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(36) %10, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.l

bb.i:                                             ; preds = %bb.l, %bb.b
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.j:                                             ; preds = %bb.c
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.n

bb.l:                                             ; preds = %bb.e, %bb.h, %bb.f, %bb.d
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %.loopexit

bb.n:                                             ; preds = %bb.k, %bb.j
  %.pn91 = phi { ptr, i32 } [ %i.bv, %bb.k ], [ %i.bu, %bb.j ]
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.o unwind label %bb.at

bb.o:                                             ; preds = %bb.n, %bb.i
  %.pn93 = phi { ptr, i32 } [ %i.bt, %bb.i ], [ %.pn91, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.ar

bb.p:                                             ; preds = %bb.a
  %i.bw = add nsw i32 %i.e, -21
  %i.bx = icmp ult i32 %i.bw, 9
  br i1 %i.bx, label %bb.q, label %bb.an

bb.q:                                             ; preds = %bb.p
  %i.by = icmp eq i32 %i.e, 21
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ce = load float, ptr %i.cb, align 4, !tbaa !68, !noalias !62 ; 5 uses
  %i.cf = load float, ptr %i.cc, align 4, !tbaa !68, !noalias !62 ; 5 uses
  %i.cg = load float, ptr %i.cd, align 4, !tbaa !68, !noalias !62 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !68, !noalias !62
  %i.cj = fneg float %i.ci                        ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !68, !noalias !62
  %i.cm = fneg float %i.cl                        ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.co = load float, ptr %i.cn, align 4, !tbaa !68, !noalias !62
  %i.cp = fneg float %i.co                        ; 2 uses
  %i.cq = load <2 x float>, ptr %4, align 4, !tbaa !68, !noalias !62 ; 5 uses
  %i.cr = load <2 x float>, ptr %i.bz, align 4, !tbaa !68, !noalias !62 ; 5 uses
  %i.cs = load <2 x float>, ptr %i.ca, align 4, !tbaa !68, !noalias !62 ; 5 uses
  %i.ct = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = fmul <2 x float> %i.cr, %i.cu
  %i.cw = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.cx, <2 x float> %i.cv)
  %i.cz = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.da, <2 x float> %i.cy) ; 4 uses
  %i.dc = fmul float %i.cf, %i.cm
  %i.dd = call float @llvm.fmuladd.f32(float %i.ce, float %i.cj, float %i.dc)
  %i.de = call noundef float @llvm.fmuladd.f32(float %i.cg, float %i.cp, float %i.dd) ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br i1 %i.by, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.di = load float, ptr %i.df, align 4, !tbaa !68 ; 2 uses
  %i.dj = load float, ptr %i.dg, align 4, !tbaa !68 ; 2 uses
  %i.dk = load float, ptr %i.dh, align 4, !tbaa !68 ; 2 uses
  %i.dl = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x float> %i.cr, %i.dm
  %i.do = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.dp, <2 x float> %i.dn)
  %i.dr = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.ds, <2 x float> %i.dq)
  %i.du = fadd <2 x float> %i.db, %i.dt
  %i.dv = fmul float %i.cf, %i.dj
  %i.dw = call float @llvm.fmuladd.f32(float %i.ce, float %i.di, float %i.dv)
  %i.dx = call noundef float @llvm.fmuladd.f32(float %i.cg, float %i.dk, float %i.dw)
  %i.dy = fadd float %i.de, %i.dx
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dy, i64 0
  store <2 x float> %i.du, ptr %11, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %i.dz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 48
end_hunk_0
begin_hunk_1_@_ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackE:bb.a
  %.sroa.4.0..sroa_idx.i130 = getelementptr inbounds nuw i8, ptr %19, i64 56
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 3 uses
  %.pre = load ptr, ptr %i.jh, align 8, !tbaa !65
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph, %bb.ap
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ap ] ; 2 uses
  %i.ji = load ptr, ptr %i.it, align 8, !tbaa !105
  %i.jj = getelementptr inbounds nuw [88 x i8], ptr %i.ji, i64 %indvars.iv ; 10 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %.sroa.10.16.copyload = load float, ptr %.sroa.10.16..sroa_idx, align 4 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 32
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jj, i64 40
  %.sroa.14.32.copyload = load float, ptr %.sroa.14.32..sroa_idx, align 4 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 48
  %.sroa.15134.48.copyload = load float, ptr %i.jm, align 4 ; 2 uses
  %.sroa.17.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jj, i64 52
  %.sroa.17.48.copyload = load float, ptr %.sroa.17.48..sroa_idx, align 4 ; 2 uses
  %.sroa.18.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jj, i64 56
  %.sroa.18.48.copyload = load float, ptr %.sroa.18.48..sroa_idx, align 4 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 64
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !106 ; 2 uses
  %i.jp = load <2 x float>, ptr %i.jj, align 8    ; 3 uses
  %i.jq = load <2 x float>, ptr %i.jk, align 8    ; 3 uses
  %i.jr = load <2 x float>, ptr %i.jl, align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.js = load float, ptr %i.iv, align 4, !tbaa !68, !noalias !112 ; 2 uses
  %i.jt = insertelement <2 x float> poison, float %i.js, i64 0 ; 2 uses
  %i.ju = shufflevector <2 x float> %i.jt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jv = load float, ptr %i.iy, align 4, !tbaa !68, !noalias !112 ; 3 uses
  %i.jw = load float, ptr %i.iz, align 4, !tbaa !68, !noalias !112 ; 3 uses
  %i.jx = load float, ptr %i.ja, align 4, !tbaa !68, !noalias !112 ; 3 uses
  %i.jy = load float, ptr %i.jb, align 4, !tbaa !68, !noalias !112 ; 3 uses
  %i.jz = fmul float %.sroa.10.16.copyload, %i.jx
  %i.ka = call float @llvm.fmuladd.f32(float %.sroa.6.0.copyload, float %i.jw, float %i.jz)
  %i.kb = call noundef float @llvm.fmuladd.f32(float %.sroa.14.32.copyload, float %i.jy, float %i.ka)
  %i.kc = load <2 x float>, ptr %4, align 4, !tbaa !68, !noalias !112 ; 5 uses
  %i.kd = load float, ptr %i.iu, align 4, !tbaa !68, !noalias !112
  %i.ke = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kf = fmul <2 x float> %i.jq, %i.ke
  %i.kg = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jp, <2 x float> %i.kg, <2 x float> %i.kf)
  %i.ki = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jr, <2 x float> %i.ju, <2 x float> %i.kh)
  %i.kj = fmul float %.sroa.10.16.copyload, %i.kd
  %i.kk = extractelement <2 x float> %i.kc, i64 0
  %i.kl = call float @llvm.fmuladd.f32(float %.sroa.6.0.copyload, float %i.kk, float %i.kj)
  %i.km = call noundef float @llvm.fmuladd.f32(float %.sroa.14.32.copyload, float %i.js, float %i.kl)
  %i.kn = load <2 x float>, ptr %i.iw, align 4, !tbaa !68, !noalias !112 ; 5 uses
  %i.ko = load float, ptr %i.ix, align 4, !tbaa !68, !noalias !112
  %i.kp = fmul float %.sroa.10.16.copyload, %i.ko
  %i.kq = extractelement <2 x float> %i.kn, i64 0
  %i.kr = call float @llvm.fmuladd.f32(float %.sroa.6.0.copyload, float %i.kq, float %i.kp)
  %i.ks = call noundef float @llvm.fmuladd.f32(float %.sroa.14.32.copyload, float %i.jv, float %i.kr)
  %i.kt = insertelement <2 x float> poison, float %.sroa.17.48.copyload, i64 0
  %i.ku = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kv = shufflevector <2 x float> %i.kc, <2 x float> %i.kn, <2 x i32> <i32 1, i32 3>
  %i.kw = fmul <2 x float> %i.ku, %i.kv
  %i.kx = shufflevector <2 x float> %i.kc, <2 x float> %i.kn, <2 x i32> <i32 0, i32 2>
  %i.ky = insertelement <2 x float> poison, float %.sroa.15134.48.copyload, i64 0
  %i.kz = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kx, <2 x float> %i.kz, <2 x float> %i.kw)
  %i.lb = insertelement <2 x float> %i.jt, float %i.jv, i64 1
  %i.lc = insertelement <2 x float> poison, float %.sroa.18.48.copyload, i64 0
  %i.ld = shufflevector <2 x float> %i.lc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.le = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lb, <2 x float> %i.ld, <2 x float> %i.la)
  %i.lf = load <2 x float>, ptr %i.jc, align 4, !tbaa !68, !noalias !109
  %i.lg = fadd <2 x float> %i.le, %i.lf
  %i.lh = fmul float %.sroa.17.48.copyload, %i.jx
  %i.li = call float @llvm.fmuladd.f32(float %i.jw, float %.sroa.15134.48.copyload, float %i.lh)
  %i.lj = call noundef float @llvm.fmuladd.f32(float %i.jy, float %.sroa.18.48.copyload, float %i.li)
  %i.lk = load float, ptr %i.jd, align 4, !tbaa !68, !noalias !109
  %i.ll = fadd float %i.lj, %i.lk
  %.sroa.3.12.vec.insert.i.i129 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ll, i64 0
  store <2 x float> %i.ki, ptr %19, align 8, !alias.scope !109
  store float %i.km, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !109
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !64, !alias.scope !109
  %i.lm = shufflevector <2 x float> %i.kn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ln = fmul <2 x float> %i.jq, %i.lm
  %i.lo = shufflevector <2 x float> %i.kn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jp, <2 x float> %i.lo, <2 x float> %i.ln)
  %i.lq = insertelement <2 x float> poison, float %i.jv, i64 0
  %i.lr = shufflevector <2 x float> %i.lq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ls = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jr, <2 x float> %i.lr, <2 x float> %i.lp)
  store <2 x float> %i.ls, ptr %i.je, align 8, !alias.scope !109
  store float %i.ks, ptr %.sroa.10.16..sroa_idx.i, align 8, !alias.scope !109
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx.i, align 4, !tbaa !64, !alias.scope !109
  %i.lt = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.lu = shufflevector <2 x float> %i.lt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lv = fmul <2 x float> %i.jq, %i.lu
  %i.lw = insertelement <2 x float> poison, float %i.jw, i64 0
  %i.lx = shufflevector <2 x float> %i.lw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ly = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jp, <2 x float> %i.lx, <2 x float> %i.lv)
  %i.lz = insertelement <2 x float> poison, float %i.jy, i64 0
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jr, <2 x float> %i.ma, <2 x float> %i.ly)
  store <2 x float> %i.mb, ptr %i.jf, align 8, !alias.scope !109
  store float %i.kb, ptr %.sroa.15.32..sroa_idx.i, align 8, !alias.scope !109
  store float 0.000000e+00, ptr %.sroa.16.32..sroa_idx.i, align 4, !tbaa !64, !alias.scope !109
  store <2 x float> %i.lg, ptr %i.jg, align 8, !alias.scope !109
  store <2 x float> %.sroa.3.12.vec.insert.i.i129, ptr %.sroa.4.0..sroa_idx.i130, align 8, !tbaa !64, !alias.scope !109
  store ptr %i.jo, ptr %i.jh, align 8, !tbaa !65
  invoke void @_ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackE(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull %2, ptr noundef %i.jo, ptr noundef nonnull align 4 dereferenceable(64) %19, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store ptr %.pre, ptr %i.jh, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mc = load i32, ptr %i.iq, align 4, !tbaa !101
  %i.md = sext i32 %i.mc to i64
  %i.me = icmp slt i64 %indvars.iv.next, %i.md
  br i1 %i.me, label %bb.ao, label %.loopexit

bb.aq:                                            ; preds = %bb.ao
  %i.mf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  br label %bb.ar

.loopexit:                                        ; preds = %bb.ap, %.preheader, %bb.aj, %bb.u, %bb.an, %bb.m
  call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void

bb.ar:                                            ; preds = %bb.aq, %bb.am, %bb.x, %bb.o
  %.pn93.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mf, %bb.aq ], [ %.pn93, %bb.o ], [ %.pn86, %bb.x ], [ %.pn81, %bb.am ]
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  resume { ptr, i32 } %.pn93.pn.pn.pn.pn

bb.at:                                            ; preds = %bb.ar, %bb.al, %bb.w, %bb.n
  %i.mg = landingpad { ptr, i32 }
          catch ptr null
  %i.mh = extractvalue { ptr, i32 } %i.mg, 0
  call void @__clang_call_terminate(ptr %i.mh) #13
  unreachable
}

declare void @_ZN22btSubsimplexConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

declare noundef zeroext i1 @_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(188)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResultD2Ev(ptr noundef nonnull align 8 dead_on_return(188) dereferenceable(188) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(93), ptr noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #6

declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: uwtable
define dso_local void @_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, float noundef %7) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.btConvexCast::CastResult", align 8 ; 12 uses
  %9 = alloca %class.btVoronoiSimplexSolver, align 4 ; 5 uses
  %10 = alloca %class.btGjkEpaPenetrationDepthSolver, align 8 ; 5 uses
  %11 = alloca %class.btContinuousConvexCollision, align 8 ; 8 uses
  %12 = alloca %"struct.btCollisionWorld::LocalConvexResult", align 8 ; 9 uses
  %13 = alloca %class.btVector3, align 8          ; 6 uses
  %14 = alloca %class.btVector3, align 8          ; 6 uses
  %15 = alloca %class.btTransform, align 8        ; 13 uses
  %16 = alloca %struct.BridgeTriangleConvexcastCallback, align 8 ; 12 uses
  %17 = alloca %class.btVector3, align 4          ; 5 uses
  %18 = alloca %class.btVector3, align 4          ; 5 uses
  %19 = alloca %class.btTransform, align 8        ; 13 uses
  %20 = alloca %struct.BridgeTriangleConvexcastCallback.3, align 8 ; 12 uses
  %21 = alloca %class.btVector3, align 16         ; 6 uses
  %22 = alloca %class.btVector3, align 8          ; 6 uses
  %23 = alloca %class.btVector3, align 8          ; 9 uses
  %24 = alloca %class.btVector3, align 8          ; 6 uses
  %25 = alloca %class.btTransform, align 8        ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66   ; 4 uses
  %i.c = icmp slt i32 %i.b, 20
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12btConvexCast10CastResultE, i64 16), ptr %8, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 168 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 176
  store ptr null, ptr %i.e, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 184
  store float %7, ptr %i.f, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.h = load float, ptr %i.g, align 8, !tbaa !115
  store float %i.h, ptr %i.d, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 328
  store i8 0, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV30btGjkEpaPenetrationDepthSolver, i64 16), ptr %10, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  invoke void @_ZN27btContinuousConvexCollisionC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef nonnull %10)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %11, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(188) %8)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 136 ; 3 uses
  %i.o = load float, ptr %i.n, align 8, !tbaa !68 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 140 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !68 ; 3 uses
  %i.r = fmul float %i.q, %i.q
  %i.s = call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 144 ; 2 uses
  %i.u = load float, ptr %i.t, align 8, !tbaa !68 ; 3 uses
  %i.v = call noundef float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.s) ; 2 uses
  %i.w = fcmp ogt float %i.v, f0x38D1B717
  br i1 %i.w, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.x = load float, ptr %i.d, align 8, !tbaa !80 ; 2 uses
  %i.y = load float, ptr %i.g, align 8, !tbaa !115
  %i.z = fcmp olt float %i.x, %i.y
  br i1 %i.z, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.v)
  %i.aa = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.ab = fmul float %i.o, %i.aa
  store float %i.ab, ptr %i.n, align 8, !tbaa !68
  %i.ac = fmul float %i.q, %i.aa
  store float %i.ac, ptr %i.p, align 4, !tbaa !68
  %i.ad = fmul float %i.u, %i.aa
  store float %i.ad, ptr %i.t, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 152
  store ptr %3, ptr %12, align 8, !tbaa !117
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.af, align 8, !tbaa !119
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !63
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !63
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 48
  store float %i.x, ptr %i.ai, align 8, !tbaa !120
  %i.aj = load ptr, ptr %6, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef float %i.al(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(52) %12, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.l

bb.i:                                             ; preds = %bb.l, %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.j:                                             ; preds = %bb.c
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.n

bb.l:                                             ; preds = %bb.e, %bb.h, %bb.f, %bb.d
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %11)
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.ak

bb.n:                                             ; preds = %bb.k, %bb.j
  %.pn89 = phi { ptr, i32 } [ %i.ap, %bb.k ], [ %i.ao, %bb.j ]
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %11)
          to label %bb.o unwind label %bb.al

bb.o:                                             ; preds = %bb.n, %bb.i
  %.pn91 = phi { ptr, i32 } [ %i.an, %bb.i ], [ %.pn89, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %_ZN14CProfileSampleD2Ev.exit

bb.p:                                             ; preds = %bb.a
  %i.aq = add nsw i32 %i.b, -21
  %i.ar = icmp ult i32 %i.aq, 9
  br i1 %i.ar, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.p
  %i.as = icmp eq i32 %i.b, 21
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ay = load float, ptr %i.av, align 4, !tbaa !68, !noalias !62 ; 7 uses
  %i.az = load float, ptr %i.aw, align 4, !tbaa !68, !noalias !62 ; 7 uses
  %i.ba = load float, ptr %i.ax, align 4, !tbaa !68, !noalias !62 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !68, !noalias !62
  %i.bd = fneg float %i.bc                        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.bf = load float, ptr %i.be, align 4, !tbaa !68, !noalias !62
  %i.bg = fneg float %i.bf                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !68, !noalias !62
  %i.bj = fneg float %i.bi                        ; 2 uses
  %i.bk = load <2 x float>, ptr %5, align 4, !tbaa !68, !noalias !62 ; 13 uses
  %i.bl = load <2 x float>, ptr %i.at, align 4, !tbaa !68, !noalias !62 ; 13 uses
  %i.bm = load <2 x float>, ptr %i.au, align 4, !tbaa !68, !noalias !62 ; 13 uses
  %i.bn = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.bl, %i.bo
  %i.bq = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.br, <2 x float> %i.bp)
  %i.bt = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bu, <2 x float> %i.bs) ; 4 uses
  %i.bw = fmul float %i.az, %i.bg
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.bd, float %i.bw)
  %i.by = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.bj, float %i.bx) ; 3 uses
  br i1 %i.as, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !68 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !68 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !68 ; 2 uses
  %i.cf = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x float> %i.bl, %i.cg
  %i.ci = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.cj, <2 x float> %i.ch)
  %i.cl = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.cm, <2 x float> %i.ck)
  %i.co = fadd <2 x float> %i.bv, %i.cn
  %i.cp = fmul float %i.az, %i.cc
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ca, float %i.cp)
  %i.cr = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.ce, float %i.cq)
  %i.cs = fadd float %i.by, %i.cr
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cs, i64 0
  store <2 x float> %i.co, ptr %13, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %i.ct, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !68 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !68 ; 2 uses
  %i.cy = extractelement <2 x float> %i.bl, i64 0
  %i.cz = extractelement <2 x float> %i.bk, i64 0
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.db = load float, ptr %i.da, align 4, !tbaa !68 ; 2 uses
  %i.dc = extractelement <2 x float> %i.bm, i64 0
  %i.dd = extractelement <2 x float> %i.bl, i64 1
  %i.de = extractelement <2 x float> %i.bk, i64 1
  %i.df = extractelement <2 x float> %i.bm, i64 1
  %i.dg = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = fmul <2 x float> %i.bl, %i.dh
  %i.dj = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.dk, <2 x float> %i.di)
  %i.dm = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.dn, <2 x float> %i.dl)
  %i.dp = fadd <2 x float> %i.bv, %i.do
  %i.dq = fmul float %i.az, %i.cx
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.cv, float %i.dq)
  %i.ds = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.db, float %i.dr)
  %i.dt = fadd float %i.by, %i.ds
  %.sroa.3.12.vec.insert.i.i97 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dt, i64 0
end_hunk_1
