inline.NumInlined: 2865
inline.NumDeleted: 633
begin_hunk_0_@_ZNK27btSoftClusterCollisionShape24localGetSupportingVertexERK9btVector3:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !678  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !360  ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !249  ; 4 uses
  %i.f = load float, ptr %1, align 4, !tbaa !159  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !159 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !159 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !356  ; 2 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.o = load float, ptr %i.n, align 4, !tbaa !159
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load float, ptr %i.p, align 4, !tbaa !159
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.s = load float, ptr %i.r, align 4, !tbaa !159
  %i.t = fmul float %i.h, %i.s
  %i.u = tail call float @llvm.fmuladd.f32(float %i.f, float %i.q, float %i.t)
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.o, float %i.u)
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.phi.trans.insert = zext i32 %.115 to i64
  %.phi.trans.insert22 = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.phi.trans.insert
  %.pre = load ptr, ptr %.phi.trans.insert22, align 8, !tbaa !249
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit
  %i.w = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.x, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !184
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.020 = phi float [ %i.v, %.lr.ph.preheader ], [ %.1, %.lr.ph ] ; 2 uses
  %.01419 = phi i32 [ 0, %.lr.ph.preheader ], [ %.115, %.lr.ph ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !249  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !159
  %i.ae = fmul float %i.h, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %i.f, float %i.ab, float %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !159
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.ah, float %i.af) ; 2 uses
  %i.aj = fcmp ogt float %i.ai, %.020             ; 2 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  %.115 = select i1 %i.aj, i32 %i.ak, i32 %.01419 ; 2 uses
  %.1 = select i1 %i.aj, float %i.ai, float %.020
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK27btSoftClusterCollisionShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { <2 x float>, <2 x float> } %i.c(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  ret { <2 x float>, <2 x float> } %i.d
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK27btSoftClusterCollisionShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #26 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #26 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #26 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK27btSoftClusterCollisionShape12getShapeTypeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #26 comdat align 2 {
bb.a:
  ret i32 32
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN15btSoftColliders12CollideCL_SSD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #33
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN15btSoftColliders12CollideCL_SS7ProcessEPK10btDbvtNodeS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.btSoftClusterCollisionShape, align 8 ; 10 uses
  %4 = alloca %class.btSoftClusterCollisionShape, align 8 ; 10 uses
  %5 = alloca %"struct.btGjkEpaSolver2::sResults", align 4 ; 5 uses
  %6 = alloca %class.btVector3, align 8           ; 6 uses
  %7 = alloca %"struct.btSoftBody::CJoint", align 8 ; 11 uses
  %8 = alloca %"struct.btSoftBody::Body", align 8 ; 3 uses
  %9 = alloca %"struct.btSoftBody::Body", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !184  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !555  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !555
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1372
  %i.k = load i32, ptr %i.j, align 4, !tbaa !150
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 420
  %i.m = load i32, ptr %i.l, align 4, !tbaa !446
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 1340
  %i.o = load i32, ptr %i.n, align 4, !tbaa !146
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 420
  %i.q = load i32, ptr %i.p, align 4, !tbaa !446
  %i.r = mul nsw i32 %i.q, %i.o
  %i.s = add nsw i32 %i.r, %i.m
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 1384
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !149
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !440, !range !179, !noundef !216
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.ai, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3)
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTV27btSoftClusterCollisionShape, i64 16), ptr %3, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %i.b, ptr %i.z, align 8, !tbaa !678
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 56
  store float 0.000000e+00, ptr %i.aa, align 8, !tbaa !682
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  invoke void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.d unwind label %bb.x

bb.d:                                             ; preds = %.critedge
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTV27btSoftClusterCollisionShape, i64 16), ptr %4, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %i.d, ptr %i.ab, align 8, !tbaa !678
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 56
  store float 0.000000e+00, ptr %i.ac, align 8, !tbaa !682
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.ad = load atomic i8, ptr @_ZGVZN11btTransform11getIdentityEvE17identityTransform acquire, align 8
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %_ZN11btTransform11getIdentityEv.exit, !prof !195

bb.e:                                             ; preds = %bb.d
  %i.af = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #34
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %_ZN11btTransform11getIdentityEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = invoke noundef nonnull align 4 dereferenceable(48) ptr @_ZN11btMatrix3x311getIdentityEv()
          to label %bb.g unwind label %bb.h       ; 3 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(48) %i.ag, i64 16, i1 false), !tbaa.struct !197
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !197
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !197
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 48), i8 0, i64 16, i1 false)
  %i.aj = call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZN11btTransform11getIdentityEvE17identityTransform) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #34
  br label %_ZN11btTransform11getIdentityEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #34
  br label %.body

_ZN11btTransform11getIdentityEv.exit:             ; preds = %bb.g, %bb.e, %bb.d
  %i.al = load atomic i8, ptr @_ZGVZN11btTransform11getIdentityEvE17identityTransform acquire, align 8
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.i, label %bb.m, !prof !195

bb.i:                                             ; preds = %_ZN11btTransform11getIdentityEv.exit
  %i.an = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #34
  %.not.i30 = icmp eq i32 %i.an, 0
  br i1 %.not.i30, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = invoke noundef nonnull align 4 dereferenceable(48) ptr @_ZN11btMatrix3x311getIdentityEv()
          to label %bb.k unwind label %bb.l       ; 3 uses

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(48) %i.ao, i64 16, i1 false), !tbaa.struct !197
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !197
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !197
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 48), i8 0, i64 16, i1 false)
  %i.ar = call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZN11btTransform11getIdentityEvE17identityTransform) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #34
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #34
  br label %.body

bb.m:                                             ; preds = %_ZN11btTransform11getIdentityEv.exit, %bb.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %i.av = load <2 x float>, ptr %i.at, align 4, !tbaa !159
  %i.aw = load <2 x float>, ptr %i.au, align 4, !tbaa !159
  %i.ax = fsub <2 x float> %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.az = load float, ptr %i.ay, align 4, !tbaa !159
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !159
  %i.bc = fsub float %i.az, %i.bb
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bc, i64 0
  store <2 x float> %i.ax, ptr %6, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.bd, align 8
  %i.be = invoke noundef zeroext i1 @_ZN15btGjkEpaSolver214SignedDistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE(ptr noundef nonnull %3, ptr noundef nonnull align 4 dereferenceable(64) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(64) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(56) %5)
          to label %bb.n unwind label %bb.y

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br i1 %i.be, label %bb.o, label %bb.ae

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %scevgep.i.i, i8 0, i64 48, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 180 ; 2 uses
  store i8 0, ptr %i.bf, align 4, !tbaa !560
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN10btSoftBody6CJointE, i64 16), ptr %7, align 8, !tbaa !8
  store ptr %i.b, ptr %8, align 8, !tbaa !310
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  store ptr %i.d, ptr %9, align 8, !tbaa !310
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  %i.bi = invoke noundef zeroext i1 @_ZN15btSoftColliders11ClusterBase12SolveContactERKN15btGjkEpaSolver28sResultsEN10btSoftBody4BodyES6_RNS5_6CJointE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(56) %5, ptr noundef nonnull byval(%"struct.btSoftBody::Body") align 8 %8, ptr noundef nonnull byval(%"struct.btSoftBody::Body") align 8 %9, ptr noundef nonnull align 8 dereferenceable(244) %7)
          to label %bb.p unwind label %bb.z

bb.p:                                             ; preds = %bb.o
  br i1 %i.bi, label %bb.q, label %bb.ac

bb.q:                                             ; preds = %bb.p
  %i.bj = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 248, i32 noundef 16)
          to label %bb.r unwind label %bb.aa      ; 10 uses

bb.r:                                             ; preds = %bb.q
  %scevgep.i.i34 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 180
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.bl, i8 0, i64 240, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN10btSoftBody6CJointE, i64 16), ptr %i.bj, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(124) %scevgep.i.i34, ptr noundef nonnull align 8 dereferenceable(124) %scevgep.i.i, i64 124, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 132
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.bm, ptr noundef nonnull align 4 dereferenceable(48) %i.bn, i64 16, i1 false), !tbaa.struct !197
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 148
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bp, ptr noundef nonnull align 4 dereferenceable(16) %i.bo, i64 16, i1 false), !tbaa.struct !197
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 164
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.br, ptr noundef nonnull align 4 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !197
  %i.bs = load i8, ptr %i.bf, align 4, !tbaa !560, !range !179, !noundef !216
  store i8 %i.bs, ptr %i.bk, align 4, !tbaa !560
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 184
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.bt, ptr noundef nonnull align 8 dereferenceable(60) %i.bu, i64 60, i1 false)
  %i.bv = load ptr, ptr %i.e, align 8, !tbaa !555 ; 9 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1044 ; 4 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !138 ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 1048 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !139
  %i.ca = icmp eq i32 %i.bx, %i.bz
  br i1 %i.ca, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %.not.i.i = icmp eq i32 %i.bx, 0
  %i.cb = shl nsw i32 %i.bx, 1
  %i.cc = select i1 %.not.i.i, i32 1, i32 %i.cb   ; 4 uses
  %i.cd = icmp slt i32 %i.bx, %i.cc
  br i1 %i.cd, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE8allocateEi.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = sext i32 %i.cc to i64
  %i.cf = shl nsw i64 %i.ce, 3
  %i.cg = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cf, i32 noundef 16)
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.u
  %.pre.i = load i32, ptr %i.bw, align 4, !tbaa !138
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE8allocateEi.exit.i.i: ; preds = %.noexc, %bb.t
  %i.ch = phi i32 [ %.pre.i, %.noexc ], [ %i.bx, %bb.t ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.cg, %.noexc ], [ null, %bb.t ] ; 8 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bv, i64 1056 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !137 ; 9 uses
  br i1 %i.ci, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE8allocateEi.exit.i.i
  %i.cl = ptrtoaddr ptr %i.ck to i64
  %.0.i.i.i41 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.ch to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ch, 6
  %i.cm = sub i64 %.0.i.i.i41, %i.cl
  %diff.check = icmp ult i64 %i.cm, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load = load <2 x ptr>, ptr %i.co, align 8, !tbaa !247
  %wide.load42 = load <2 x ptr>, ptr %i.cp, align 8, !tbaa !247
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <2 x ptr> %wide.load, ptr %i.cn, align 8, !tbaa !247
  store <2 x ptr> %wide.load42, ptr %i.cq, align 8, !tbaa !247
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !690

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.i.i.i.prol
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !247
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !247
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !691

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.cv = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.cw = icmp ugt i64 %i.cv, -4
  br i1 %i.cw, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.i.i.i
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !247
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !247
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.next.i.i.i
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !247
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !247
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.next.i.i.i.1
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !247
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !247
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.next.i.i.i.2
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !247
  store ptr %i.di, ptr %i.dg, align 8, !tbaa !247
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph, !llvm.loop !692

_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp ne ptr %i.ck, null
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bv, i64 1064
  %i.dk = load i8, ptr %i.dj, align 8, !range !179
  %i.dl = trunc nuw i8 %i.dk to i1
  %or.cond.i = select i1 %.not.i5.i.i, i1 %i.dl, i1 false
  br i1 %or.cond.i, label %bb.v, label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE10deallocateEv.exit.i.i

_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.old.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 1064
  %.old8.i = load i8, ptr %.old.i, align 8, !tbaa !136, !range !179, !noundef !216
  %.old9.i = trunc nuw i8 %.old8.i to i1
  br i1 %.old9.i, label %bb.v, label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE10deallocateEv.exit.i.i

bb.v:                                             ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ck)
          to label %.noexc35 unwind label %bb.ab

.noexc35:                                         ; preds = %bb.v
  %.pre2.pre.pre.i = load i32, ptr %i.bw, align 4, !tbaa !138
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE10deallocateEv.exit.i.i: ; preds = %.noexc35, %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.i.i
  %.pre2.i = phi i32 [ %i.ch, %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.i.i ], [ %.pre2.pre.pre.i, %.noexc35 ], [ %i.ch, %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bv, i64 1064
  store i8 1, ptr %i.dm, align 8, !tbaa !136
  store ptr %.0.i.i.i, ptr %i.cj, align 8, !tbaa !137
  store i32 %i.cc, ptr %i.by, align 8, !tbaa !139
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !555
  br label %bb.w

bb.w:                                             ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE10deallocateEv.exit.i.i, %bb.s, %bb.r
  %i.dn = phi ptr [ %.pre, %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE10deallocateEv.exit.i.i ], [ %i.bv, %bb.s ], [ %i.bv, %bb.r ] ; 2 uses
  %i.do = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE10deallocateEv.exit.i.i ], [ %i.bx, %bb.s ], [ %i.bx, %bb.r ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bv, i64 1056
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !137
  %i.dr = sext i32 %i.do to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr
  store ptr %i.bj, ptr %i.ds, align 8, !tbaa !247
  %i.dt = add nsw i32 %i.do, 1
  store i32 %i.dt, ptr %i.bw, align 4, !tbaa !138
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 372
  %i.dv = load ptr, ptr %i.g, align 8, !tbaa !555 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 372
  %i.dx = load float, ptr %i.du, align 4, !tbaa !159 ; 2 uses
  %i.dy = load float, ptr %i.dw, align 4, !tbaa !159 ; 2 uses
  %i.dz = fcmp ogt float %i.dx, %i.dy
  %i.ea = select i1 %i.dz, float %i.dx, float %i.dy
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bj, i64 92 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dn, i64 384
  %i.ed = load float, ptr %i.ec, align 8, !tbaa !693
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 384
  %i.ef = load float, ptr %i.ee, align 8, !tbaa !693
  %i.eg = fadd float %i.ed, %i.ef
  %i.eh = fmul float %i.eg, 5.000000e-01
  %i.ei = load <2 x float>, ptr %i.eb, align 4, !tbaa !159
  %i.ej = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %i.eh, i64 1
  %i.el = fmul <2 x float> %i.ei, %i.ek
  store <2 x float> %i.el, ptr %i.eb, align 4, !tbaa !159
  br label %bb.ac

bb.x:                                             ; preds = %.critedge, %bb.ae
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.y:                                             ; preds = %bb.m
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %.body

bb.z:                                             ; preds = %bb.o
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.aa:                                            ; preds = %bb.q
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ab:                                            ; preds = %bb.v, %bb.u
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.w, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.ae

bb.ad:                                            ; preds = %bb.z, %bb.ab, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ep, %bb.aa ], [ %i.eo, %bb.z ], [ %i.eq, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %.body

bb.ae:                                            ; preds = %bb.ac, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.af unwind label %bb.x

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.aj

.body:                                            ; preds = %bb.h, %bb.l, %bb.ad, %bb.y
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ad ], [ %i.en, %bb.y ], [ %i.ak, %bb.h ], [ %i.as, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.ag unwind label %bb.ak

bb.ag:                                            ; preds = %.body, %bb.x
  %.pn28 = phi { ptr, i32 } [ %i.em, %bb.x ], [ %.pn.pn.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn28

bb.ai:                                            ; preds = %bb.c
  %i.er = load i32, ptr @_ZZN15btSoftColliders12CollideCL_SS7ProcessEPK10btDbvtNodeS3_E5count, align 4, !tbaa !4
  %i.es = add nsw i32 %i.er, 1
  store i32 %i.es, ptr @_ZZN15btSoftColliders12CollideCL_SS7ProcessEPK10btDbvtNodeS3_E5count, align 4, !tbaa !4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  ret void

bb.ak:                                            ; preds = %bb.ag, %.body
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #35
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN15btSoftColliders12CollideVF_SSD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #33
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN15btSoftColliders12CollideVF_SS7ProcessEPK10btDbvtNodeS3_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !184  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0106.0.copyload = load float, ptr %i.e, align 8 ; 5 uses
  %.sroa.8111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.8111.0.copyload = load float, ptr %.sroa.8111.0..sroa_idx, align 4 ; 5 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.13.0.copyload = load float, ptr %.sroa.13.0..sroa_idx, align 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !249  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load float, ptr %i.h, align 4, !tbaa !159 ; 2 uses
  %i.j = fsub float %i.i, %.sroa.0106.0.copyload  ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.l = load float, ptr %i.k, align 4, !tbaa !159 ; 2 uses
  %i.m = fsub float %i.l, %.sroa.8111.0.copyload  ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.o = load float, ptr %i.n, align 4, !tbaa !159 ; 2 uses
  %i.p = fsub float %i.o, %.sroa.13.0.copyload    ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !249  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load float, ptr %i.s, align 4, !tbaa !159 ; 2 uses
  %i.u = fsub float %i.t, %.sroa.0106.0.copyload  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.w = load float, ptr %i.v, align 4, !tbaa !159 ; 2 uses
  %i.x = fsub float %i.w, %.sroa.8111.0.copyload  ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.z = load float, ptr %i.y, align 4, !tbaa !159 ; 2 uses
  %i.aa = fsub float %i.z, %.sroa.13.0.copyload   ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !249 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !159 ; 2 uses
  %i.af = fsub float %i.ae, %.sroa.0106.0.copyload ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !159 ; 2 uses
  %i.ai = fsub float %i.ah, %.sroa.8111.0.copyload ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !159 ; 2 uses
  %i.al = fsub float %i.ak, %.sroa.13.0.copyload  ; 6 uses
  %i.am = fsub float %i.u, %i.j                   ; 6 uses
  %i.an = fsub float %i.x, %i.m                   ; 6 uses
  %i.ao = fsub float %i.aa, %i.p                  ; 6 uses
  %i.ap = fsub float %i.af, %i.j                  ; 2 uses
  %i.aq = fsub float %i.ai, %i.m                  ; 2 uses
  %i.ar = fsub float %i.al, %i.p                  ; 2 uses
  %i.as = fneg float %i.aq
  %i.at = fmul float %i.ao, %i.as
  %i.au = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ar, float %i.at) ; 6 uses
  %i.av = fneg float %i.ar
  %i.aw = fmul float %i.am, %i.av
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.ap, float %i.aw) ; 6 uses
  %i.ay = fneg float %i.ap
  %i.az = fmul float %i.an, %i.ay
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.am, float %i.aq, float %i.az) ; 6 uses
  %i.bb = fmul float %i.ax, %i.ax
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.au, float %i.au, float %i.bb)
  %i.bd = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.bc) ; 2 uses
  %i.be = fcmp ogt float %i.bd, f0x34000000
  br i1 %i.be, label %bb.b, label %_ZL13ProjectOriginRK9btVector3S1_S1_RS_Rf.exit

bb.b:                                             ; preds = %bb.a
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.bd)
  %i.bf = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %i.bg = fmul float %i.au, %i.bf                 ; 2 uses
  %i.bh = fmul float %i.ax, %i.bf                 ; 2 uses
  %i.bi = fmul float %i.ba, %i.bf                 ; 2 uses
  %i.bj = fmul float %i.m, %i.bh
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.j, float %i.bg, float %i.bj)
  %i.bl = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.bi, float %i.bk) ; 5 uses
  %i.bm = fmul float %i.bl, %i.bl                 ; 2 uses
  %i.bn = fcmp olt float %i.bm, f0x7F7FFFFF
  br i1 %i.bn, label %bb.c, label %_ZL13ProjectOriginRK9btVector3S1_S1_RS_Rf.exit

bb.c:                                             ; preds = %bb.b
  %i.bo = fmul float %i.bg, %i.bl                 ; 4 uses
  %i.bp = fmul float %i.bh, %i.bl                 ; 4 uses
  %i.bq = fmul float %i.bi, %i.bl                 ; 4 uses
  %.sroa.0.0.vec.insert.i46.i = insertelement <2 x float> poison, float %i.bo, i64 0
  %.sroa.0.4.vec.insert.i47.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i46.i, float %i.bp, i64 1
  %.sroa.3.12.vec.insert.i48.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bq, i64 0
  %i.br = fsub float %i.j, %i.bo                  ; 4 uses
  %i.bs = fsub float %i.m, %i.bp                  ; 4 uses
  %i.bt = fsub float %i.p, %i.bq                  ; 4 uses
  %i.bu = fsub float %i.u, %i.bo                  ; 4 uses
  %i.bv = fsub float %i.x, %i.bp                  ; 4 uses
  %i.bw = fsub float %i.aa, %i.bq                 ; 4 uses
  %i.bx = fneg float %i.bv
  %i.by = fmul float %i.bt, %i.bx
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bw, float %i.by)
  %i.ca = fneg float %i.bw
  %i.cb = fmul float %i.br, %i.ca
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bu, float %i.cb)
  %i.cd = fneg float %i.bu
  %i.ce = fmul float %i.bs, %i.cd
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bv, float %i.ce)
  %i.cg = fmul float %i.ax, %i.cc
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.au, float %i.cg)
  %i.ci = tail call noundef float @llvm.fmuladd.f32(float %i.cf, float %i.ba, float %i.ch)
  %i.cj = fcmp ogt float %i.ci, 0.000000e+00
  br i1 %i.cj, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %bb.c
  %i.ck = fsub float %i.af, %i.bo                 ; 4 uses
  %i.cl = fsub float %i.ai, %i.bp                 ; 4 uses
  %i.cm = fsub float %i.al, %i.bq                 ; 4 uses
  %i.cn = fneg float %i.cl
  %i.co = fmul float %i.bw, %i.cn
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.cm, float %i.co)
  %i.cq = fneg float %i.cm
  %i.cr = fmul float %i.bu, %i.cq
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.ck, float %i.cr)
  %i.ct = fneg float %i.ck
  %i.cu = fmul float %i.bv, %i.ct
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.cl, float %i.cu)
  %i.cw = fmul float %i.ax, %i.cs
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.au, float %i.cw)
  %i.cy = tail call noundef float @llvm.fmuladd.f32(float %i.cv, float %i.ba, float %i.cx)
  %i.cz = fcmp ogt float %i.cy, 0.000000e+00
  br i1 %i.cz, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.da = fneg float %i.bs
  %i.db = fmul float %i.cm, %i.da
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.bt, float %i.db)
  %i.dd = fneg float %i.bt
  %i.de = fmul float %i.ck, %i.dd
  %i.df = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.br, float %i.de)
  %i.dg = fneg float %i.br
  %i.dh = fmul float %i.cl, %i.dg
  %i.di = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.bs, float %i.dh)
  %i.dj = fmul float %i.ax, %i.df
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.au, float %i.dj)
  %i.dl = tail call noundef float @llvm.fmuladd.f32(float %i.di, float %i.ba, float %i.dk)
  %i.dm = fcmp ogt float %i.dl, 0.000000e+00
  br i1 %i.dm, label %_ZL13ProjectOriginRK9btVector3S1_S1_RS_Rf.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %bb.d, %bb.c
  %i.dn = fmul float %i.an, %i.an
  %i.do = tail call float @llvm.fmuladd.f32(float %i.am, float %i.am, float %i.dn)
  %i.dp = tail call noundef float @llvm.fmuladd.f32(float %i.ao, float %i.ao, float %i.do) ; 2 uses
  %i.dq = fcmp ogt float %i.dp, f0x34000000
  br i1 %i.dq, label %bb.f, label %_ZL13ProjectOriginRK9btVector3S1_RS_Rf.exit.i

bb.f:                                             ; preds = %.critedge.i
  %i.dr = fmul float %i.m, %i.an
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.j, float %i.am, float %i.dr)
  %i.dt = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.ao, float %i.ds)
  %i.du = fneg float %i.dt
  %i.dv = fdiv float %i.du, %i.dp                 ; 3 uses
  %i.dw = fcmp olt float %i.dv, 0.000000e+00
  %i.dx = fcmp ogt float %i.dv, 1.000000e+00
  %..i.i.i = select i1 %i.dx, float 1.000000e+00, float %i.dv
  %i.dy = select i1 %i.dw, float 0.000000e+00, float %..i.i.i ; 3 uses
  %i.dz = fmul float %i.am, %i.dy
  %i.ea = fmul float %i.an, %i.dy
end_hunk_0
