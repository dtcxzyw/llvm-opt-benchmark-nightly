inline.NumInlined: 505
inline.NumDeleted: 142
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN16btCollisionWorld11updateAabbsEv:bb.a
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  tail call void @_ZN15CProfileManager12Stop_ProfileEv()
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.f = phi i32 [ %i.b, %.lr.ph ], [ %i.o, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 2 uses
  %i.j = load i8, ptr %i.e, align 8, !tbaa !43, !range !46, !noundef !62
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 228
  %i.m = load i32, ptr %i.l, align 4, !tbaa !70
  switch i32 %i.m, label %bb.d [
    i32 5, label %bb.f
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @_ZN16btCollisionWorld16updateSingleAabbEP17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %i.i)
          to label %._crit_edge12 unwind label %bb.e

._crit_edge12:                                    ; preds = %bb.d
  %.pre = load i32, ptr %i.a, align 4, !tbaa !18
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit unwind label %bb.g

bb.f:                                             ; preds = %._crit_edge12, %bb.c, %bb.c
  %i.o = phi i32 [ %.pre, %._crit_edge12 ], [ %i.f, %bb.c ], [ %i.f, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next, %i.p
  br i1 %i.q, label %bb.b, label %._crit_edge

_ZN14CProfileSampleD2Ev.exit:                     ; preds = %bb.e
  resume { ptr, i32 } %i.n

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #13
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN16btCollisionWorld33performDiscreteCollisionDetectionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN15CProfileManager13Start_ProfileEPKc(ptr noundef nonnull @.str.5)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(129) %0)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN15CProfileManager13Start_ProfileEPKc(ptr noundef nonnull @.str.6)
          to label %_ZN14CProfileSampleC2EPKc.exit unwind label %bb.g

_ZN14CProfileSampleC2EPKc.exit:                   ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8
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
  %i.t = load i32, ptr %i.s, align 4, !tbaa !18   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.i, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE6removeERKS1_.exit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17   ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.t to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47   ; 2 uses
  %i.z = icmp eq ptr %i.y, %1
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE6removeERKS1_.exit, label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.i
  %i.ab = add nsw i32 %i.t, -1                    ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ac ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !47
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !47
  store ptr %i.y, ptr %i.ad, align 8, !tbaa !47
  store i32 %i.ab, ptr %i.s, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE6removeERKS1_.exit

_ZN20btAlignedObjectArrayIP17btCollisionObjectE6removeERKS1_.exit: ; preds = %bb.e, %bb.c, %bb.f
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
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 328 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4
  %i.n = and i8 %i.m, -16
  store i8 %i.n, ptr %i.l, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  invoke void @_ZN22btSubsimplexConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %8)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.o = invoke noundef zeroext i1 @_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(188) %7)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 3 uses
  %i.q = load float, ptr %i.p, align 8, !tbaa !68 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 140
  %i.s = load float, ptr %i.r, align 4, !tbaa !68 ; 4 uses
  %i.t = fmul float %i.s, %i.s
  %i.u = call float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 3 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !68 ; 4 uses
  %i.x = call noundef float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.u)
  %i.y = fcmp ogt float %i.x, f0x38D1B717
  br i1 %i.y, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.z = load float, ptr %i.g, align 8, !tbaa !80 ; 2 uses
  %i.aa = load float, ptr %i.j, align 8, !tbaa !77
  %i.ab = fcmp olt float %i.z, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !68
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load float, ptr %i.af, align 4, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !68
  %i.al = fmul float %i.s, %i.ak
  %i.am = call float @llvm.fmuladd.f32(float %i.ai, float %i.q, float %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load float, ptr %i.an, align 4, !tbaa !68
  %i.ap = call noundef float @llvm.fmuladd.f32(float %i.ao, float %i.w, float %i.am) ; 4 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.v, align 8, !tbaa !64
  %i.aq = load <2 x float>, ptr %0, align 4, !tbaa !68 ; 2 uses
  %i.ar = load <2 x float>, ptr %i.ae, align 4, !tbaa !68 ; 2 uses
  %i.as = insertelement <2 x float> poison, float %i.s, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 1, i32 3>
  %i.av = fmul <2 x float> %i.at, %i.au
  %i.aw = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 0, i32 2>
  %i.ax = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ay, <2 x float> %i.av)
  %i.ba = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.bb = insertelement <2 x float> %i.ba, float %i.ag, i64 1
  %i.bc = insertelement <2 x float> poison, float %i.w, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bd, <2 x float> %i.az) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.be, %i.be
  %i.bf = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bg = extractelement <2 x float> %i.be, i64 0 ; 2 uses
  %i.bh = call float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %i.bf)
  %i.bi = call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.bh)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.bi)
  %i.bj = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.bk = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.be, %i.bl
  store <2 x float> %i.bm, ptr %i.p, align 8, !tbaa !68
  %i.bn = fmul float %i.ap, %i.bj
  store float %i.bn, ptr %i.v, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store ptr %2, ptr %10, align 8, !tbaa !81
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.bo, align 8, !tbaa !84
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !63
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 32
  store float %i.z, ptr %i.bq, align 8, !tbaa !85
  %i.br = load ptr, ptr %5, align 8, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = invoke noundef float %i.bt(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(36) %10, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.l

bb.i:                                             ; preds = %bb.l, %bb.b
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.j:                                             ; preds = %bb.c
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.bx = landingpad { ptr, i32 }
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
  %.pn91 = phi { ptr, i32 } [ %i.bx, %bb.k ], [ %i.bw, %bb.j ]
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.o unwind label %bb.at

bb.o:                                             ; preds = %bb.n, %bb.i
  %.pn93 = phi { ptr, i32 } [ %i.bv, %bb.i ], [ %.pn91, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.ar

bb.p:                                             ; preds = %bb.a
  %i.by = add nsw i32 %i.e, -21
  %i.bz = icmp ult i32 %i.by, 9
  br i1 %i.bz, label %bb.q, label %bb.an

bb.q:                                             ; preds = %bb.p
  %i.ca = icmp eq i32 %i.e, 21
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cg = load float, ptr %i.cd, align 4, !tbaa !68, !noalias !62 ; 5 uses
  %i.ch = load float, ptr %i.ce, align 4, !tbaa !68, !noalias !62 ; 5 uses
  %i.ci = load float, ptr %i.cf, align 4, !tbaa !68, !noalias !62 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !68, !noalias !62
  %i.cl = fneg float %i.ck                        ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 52
end_hunk_0
