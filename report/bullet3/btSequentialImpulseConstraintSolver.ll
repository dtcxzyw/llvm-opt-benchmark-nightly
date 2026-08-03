inline.NumInlined: 912
inline.NumDeleted: 195
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN35btSequentialImpulseConstraintSolver14convertContactEP20btPersistentManifoldRK19btContactSolverInfo:bb.a
  %i.ahk = load float, ptr %i.cd, align 8, !tbaa !61 ; 2 uses
  %i.ahl = tail call noundef float @llvm.fmuladd.f32(float %i.ahk, float %i.ahe, float %i.ahj)
  %i.ahm = load float, ptr %i.ce, align 8, !tbaa !61
  %i.ahn = load float, ptr %i.cf, align 4, !tbaa !61
  %i.aho = load float, ptr %i.cg, align 8, !tbaa !61
  %i.ahp = fmul float %i.ahl, %i.aho              ; 2 uses
  %i.ahq = load <2 x float>, ptr %i.bw, align 8, !tbaa !61 ; 3 uses
  %i.ahr = load float, ptr %i.bz, align 4, !tbaa !61
  %i.ahs = extractelement <2 x float> %i.ahq, i64 0
  %i.aht = fmul float %i.ahs, %i.ahc
  %i.ahu = load <2 x float>, ptr %i.at, align 8, !tbaa !61 ; 3 uses
  %i.ahv = load float, ptr %i.by, align 4, !tbaa !61
  %i.ahw = extractelement <2 x float> %i.ahu, i64 0
  %i.ahx = tail call float @llvm.fmuladd.f32(float %i.ahw, float %i.ahb, float %i.aht)
  %i.ahy = tail call noundef float @llvm.fmuladd.f32(float %i.ahd, float %i.ahe, float %i.ahx)
  %i.ahz = fmul float %i.ahc, %i.ahr
  %i.aia = tail call float @llvm.fmuladd.f32(float %i.ahv, float %i.ahb, float %i.ahz)
  %i.aib = tail call noundef float @llvm.fmuladd.f32(float %i.ahf, float %i.ahe, float %i.aia)
  %i.aic = fmul float %i.ahy, %i.ahm              ; 2 uses
  %i.aid = fmul float %i.aib, %i.ahn              ; 2 uses
  %i.aie = shufflevector <2 x float> %i.ahu, <2 x float> %i.ahq, <2 x i32> <i32 1, i32 3>
  %i.aif = insertelement <2 x float> poison, float %i.aid, i64 0
  %i.aig = shufflevector <2 x float> %i.aif, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aih = fmul <2 x float> %i.aie, %i.aig
  %i.aii = shufflevector <2 x float> %i.ahu, <2 x float> %i.ahq, <2 x i32> <i32 0, i32 2>
  %i.aij = insertelement <2 x float> poison, float %i.aic, i64 0
  %i.aik = shufflevector <2 x float> %i.aij, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ail = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aii, <2 x float> %i.aik, <2 x float> %i.aih)
  %i.aim = insertelement <2 x float> poison, float %i.ahg, i64 0
  %i.ain = insertelement <2 x float> %i.aim, float %i.ahh, i64 1
  %i.aio = insertelement <2 x float> poison, float %i.ahp, i64 0
  %i.aip = shufflevector <2 x float> %i.aio, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aiq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ain, <2 x float> %i.aip, <2 x float> %i.ail)
  %i.air = fmul float %i.ahf, %i.aid
  %i.ais = tail call float @llvm.fmuladd.f32(float %i.ahd, float %i.aic, float %i.air)
  %i.ait = tail call noundef float @llvm.fmuladd.f32(float %i.ahk, float %i.ahp, float %i.ais)
  %.sroa.3.12.vec.insert.i10.i278 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ait, i64 0
  store <2 x float> %i.aiq, ptr %i.aca, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i10.i278, ptr %i.adf, align 4, !tbaa !83
  br label %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit279

_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit279: ; preds = %bb.ap, %bb.ao
  %i.aiu = load i32, ptr %i.ch, align 8, !tbaa !90
  %i.aiv = and i32 %i.aiu, 1
  %.not22.i281 = icmp eq i32 %i.aiv, 0
  br i1 %.not22.i281, label %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit285, label %bb.aq

bb.aq:                                            ; preds = %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit279
  %i.aiw = load float, ptr %i.aca, align 4, !tbaa !61 ; 3 uses
  %i.aix = load float, ptr %i.ade, align 8, !tbaa !61 ; 3 uses
  %i.aiy = load float, ptr %i.cj, align 8, !tbaa !61 ; 2 uses
  %i.aiz = load float, ptr %i.adf, align 4, !tbaa !61 ; 3 uses
  %i.aja = load float, ptr %i.cm, align 4, !tbaa !61 ; 2 uses
  %i.ajb = load float, ptr %i.cn, align 8, !tbaa !61 ; 2 uses
  %i.ajc = load float, ptr %i.co, align 8, !tbaa !61 ; 2 uses
  %i.ajd = fmul float %i.aix, %i.ajc
  %i.aje = tail call float @llvm.fmuladd.f32(float %i.ajb, float %i.aiw, float %i.ajd)
  %i.ajf = load float, ptr %i.cp, align 8, !tbaa !61 ; 2 uses
  %i.ajg = tail call noundef float @llvm.fmuladd.f32(float %i.ajf, float %i.aiz, float %i.aje)
  %i.ajh = load float, ptr %i.cq, align 8, !tbaa !61
  %i.aji = load float, ptr %i.cr, align 4, !tbaa !61
  %i.ajj = load float, ptr %i.cs, align 8, !tbaa !61
  %i.ajk = fmul float %i.ajg, %i.ajj              ; 2 uses
  %i.ajl = load <2 x float>, ptr %i.ci, align 8, !tbaa !61 ; 3 uses
  %i.ajm = load float, ptr %i.cl, align 4, !tbaa !61
  %i.ajn = extractelement <2 x float> %i.ajl, i64 0
  %i.ajo = fmul float %i.ajn, %i.aix
  %i.ajp = load <2 x float>, ptr %i.aw, align 8, !tbaa !61 ; 3 uses
  %i.ajq = load float, ptr %i.ck, align 4, !tbaa !61
  %i.ajr = extractelement <2 x float> %i.ajp, i64 0
  %i.ajs = tail call float @llvm.fmuladd.f32(float %i.ajr, float %i.aiw, float %i.ajo)
  %i.ajt = tail call noundef float @llvm.fmuladd.f32(float %i.aiy, float %i.aiz, float %i.ajs)
  %i.aju = fmul float %i.aix, %i.ajm
  %i.ajv = tail call float @llvm.fmuladd.f32(float %i.ajq, float %i.aiw, float %i.aju)
  %i.ajw = tail call noundef float @llvm.fmuladd.f32(float %i.aja, float %i.aiz, float %i.ajv)
  %i.ajx = fmul float %i.ajt, %i.ajh              ; 2 uses
  %i.ajy = fmul float %i.ajw, %i.aji              ; 2 uses
  %i.ajz = shufflevector <2 x float> %i.ajp, <2 x float> %i.ajl, <2 x i32> <i32 1, i32 3>
  %i.aka = insertelement <2 x float> poison, float %i.ajy, i64 0
  %i.akb = shufflevector <2 x float> %i.aka, <2 x float> poison, <2 x i32> zeroinitializer
  %i.akc = fmul <2 x float> %i.ajz, %i.akb
  %i.akd = shufflevector <2 x float> %i.ajp, <2 x float> %i.ajl, <2 x i32> <i32 0, i32 2>
  %i.ake = insertelement <2 x float> poison, float %i.ajx, i64 0
  %i.akf = shufflevector <2 x float> %i.ake, <2 x float> poison, <2 x i32> zeroinitializer
  %i.akg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.akd, <2 x float> %i.akf, <2 x float> %i.akc)
  %i.akh = insertelement <2 x float> poison, float %i.ajb, i64 0
  %i.aki = insertelement <2 x float> %i.akh, float %i.ajc, i64 1
  %i.akj = insertelement <2 x float> poison, float %i.ajk, i64 0
  %i.akk = shufflevector <2 x float> %i.akj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.akl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aki, <2 x float> %i.akk, <2 x float> %i.akg)
  %i.akm = fmul float %i.aja, %i.ajy
  %i.akn = tail call float @llvm.fmuladd.f32(float %i.aiy, float %i.ajx, float %i.akm)
  %i.ako = tail call noundef float @llvm.fmuladd.f32(float %i.ajf, float %i.ajk, float %i.akn)
  %.sroa.3.12.vec.insert.i10.i284 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ako, i64 0
  store <2 x float> %i.akl, ptr %i.aca, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i10.i284, ptr %i.adf, align 4, !tbaa !83
  br label %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit285

_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit285: ; preds = %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit279, %bb.aq
  %i.akp = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_fRK19btContactSolverInfoff(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.aca, i32 noundef %i.h, i32 noundef %i.j, i32 noundef %i.db, ptr noundef nonnull align 8 dereferenceable(204) %i.cw, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr nonnull poison, ptr nonnull poison, float noundef %i.agv, ptr noundef nonnull align 4 dereferenceable(128) %2, float noundef 0.000000e+00, float noundef 0.000000e+00) ; 0 uses
  %.pre = load i32, ptr %i.ct, align 4, !tbaa !116
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit285, %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit273
  %i.akq = phi i32 [ %.pre, %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit285 ], [ %i.agx, %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit273 ]
  %i.akr = and i32 %i.akq, 80
  %or.cond.not = icmp eq i32 %i.akr, 80
  br i1 %or.cond.not, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.aks = getelementptr inbounds nuw i8, ptr %i.cw, i64 128 ; 2 uses
  %i.akt = load i32, ptr %i.aks, align 8, !tbaa !96
  %i.aku = or i32 %i.akt, 1
  store i32 %i.aku, ptr %i.aks, align 8, !tbaa !96
  br label %bb.av

bb.at:                                            ; preds = %bb.aa
  %i.akv = getelementptr inbounds nuw i8, ptr %i.cw, i64 172
  %i.akw = load float, ptr %i.a, align 4, !tbaa !61 ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.cw, i64 148
  %i.aky = load float, ptr %i.akx, align 4, !tbaa !129
  %i.akz = getelementptr inbounds nuw i8, ptr %i.cw, i64 164 ; 2 uses
  %i.ala = load float, ptr %i.akz, align 4, !tbaa !130
  %i.alb = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_fRK19btContactSolverInfoff(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.akv, i32 noundef %i.h, i32 noundef %i.j, i32 noundef %i.db, ptr noundef nonnull align 8 dereferenceable(204) %i.cw, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr nonnull poison, ptr nonnull poison, float noundef %i.akw, ptr noundef nonnull align 4 dereferenceable(128) %2, float noundef %i.aky, float noundef %i.ala) ; 0 uses
  %i.alc = load i32, ptr %i.ct, align 4, !tbaa !116
  %i.ald = and i32 %i.alc, 16
  %.not179 = icmp eq i32 %i.ald, 0
  br i1 %.not179, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ale = getelementptr inbounds nuw i8, ptr %i.cw, i64 188
  %i.alf = getelementptr inbounds nuw i8, ptr %i.cw, i64 152
  %i.alg = load float, ptr %i.alf, align 8, !tbaa !131
  %i.alh = load float, ptr %i.akz, align 4, !tbaa !130
  %i.ali = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_fRK19btContactSolverInfoff(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ale, i32 noundef %i.h, i32 noundef %i.j, i32 noundef %i.db, ptr noundef nonnull align 8 dereferenceable(204) %i.cw, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr nonnull poison, ptr nonnull poison, float noundef %i.akw, ptr noundef nonnull align 4 dereferenceable(128) %2, float noundef %i.alg, float noundef %i.alh) ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit257, %_ZN35btSequentialImpulseConstraintSolver24applyAnisotropicFrictionEP17btCollisionObjectR9btVector3i.exit239, %bb.as, %bb.ar, %bb.at, %bb.au
  %i.alj = load i32, ptr %i.id, align 4, !tbaa !104
  %i.alk = load ptr, ptr %i.cu, align 8, !tbaa !38
  %i.all = sext i32 %i.alj to i64
  %i.alm = getelementptr [160 x i8], ptr %i.alk, i64 %i.all ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 100
  store float 0.000000e+00, ptr %i.aln, align 4, !tbaa !59
  %i.alo = load i32, ptr %i.ct, align 4, !tbaa !116
  %i.alp = and i32 %i.alo, 16
  %.not.i286 = icmp eq i32 %i.alp, 0
  br i1 %.not.i286, label %_ZN35btSequentialImpulseConstraintSolver28setFrictionConstraintImpulseER18btSolverConstraintiiR15btManifoldPointRK19btContactSolverInfo.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.alq = getelementptr i8, ptr %i.alm, i64 260
  store float 0.000000e+00, ptr %i.alq, align 4, !tbaa !59
  br label %_ZN35btSequentialImpulseConstraintSolver28setFrictionConstraintImpulseER18btSolverConstraintiiR15btManifoldPointRK19btContactSolverInfo.exit

_ZN35btSequentialImpulseConstraintSolver28setFrictionConstraintImpulseER18btSolverConstraintiiR15btManifoldPointRK19btContactSolverInfo.exit: ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %.pre306 = load i32, ptr %i.ak, align 8, !tbaa !125
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN35btSequentialImpulseConstraintSolver28setFrictionConstraintImpulseER18btSolverConstraintiiR15btManifoldPointRK19btContactSolverInfo.exit, %bb.d
  %i.alr = phi i32 [ %.pre306, %_ZN35btSequentialImpulseConstraintSolver28setFrictionConstraintImpulseER18btSolverConstraintiiR15btManifoldPointRK19btContactSolverInfo.exit ], [ %i.cv, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.als = sext i32 %i.alr to i64
  %i.alt = icmp slt i64 %indvars.iv.next, %i.als
  br i1 %i.alt, label %bb.d, label %.loopexit, !llvm.loop !132

.loopexit:                                        ; preds = %bb.ax, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN35btSequentialImpulseConstraintSolver15convertContactsEPP20btPersistentManifoldiRK19btContactSolverInfo(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(128) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !133
  tail call void @_ZN35btSequentialImpulseConstraintSolver14convertContactEP20btPersistentManifoldRK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %i.c, ptr noundef nonnull align 4 dereferenceable(128) %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !135

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN35btSequentialImpulseConstraintSolver12convertJointEP18btSolverConstraintP17btTypedConstraintRKNS2_17btConstraintInfo1EiiRK19btContactSolverInfo(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(128) %6) local_unnamed_addr #9 align 2 {
bb.a:
  %7 = alloca %"struct.btTypedConstraint::btConstraintInfo2", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136, !nonnull !103, !align !139 ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !140, !nonnull !103, !align !139 ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = sext i32 %4 to i64
  %i.h = getelementptr inbounds [248 x i8], ptr %i.f, i64 %i.g ; 7 uses
  %i.i = sext i32 %5 to i64
  %i.j = getelementptr inbounds [248 x i8], ptr %i.f, i64 %i.i ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !141  ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = select i1 %i.m, i32 %i.l, i32 %i.o       ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !142
  %i.s = icmp sgt i32 %i.p, %i.r
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.p, ptr %i.q, align 8, !tbaa !142
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = load i32, ptr %3, align 4, !tbaa !143
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.n, align 4, !tbaa !145
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.v = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.o, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.x = load float, ptr %i.w, align 4, !tbaa !99
  %i.y = fdiv float 1.000000e+00, %i.x
  store float %i.y, ptr %7, align 8, !tbaa !146
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aa = load float, ptr %i.z, align 4, !tbaa !149
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.aa, ptr %i.ab, align 4, !tbaa !150
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !151
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %1, ptr %i.ae, align 8, !tbaa !152
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !153
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !154
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 40, ptr %i.aj, align 8, !tbaa !155
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !156
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.an = load float, ptr %i.am, align 4, !tbaa !110
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 2 uses
  store float %i.an, ptr %i.ao, align 4, !tbaa !60
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !157
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 84 ; 2 uses
  store float %i.aq, ptr %i.ar, align 4, !tbaa !158
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %i.ao, ptr %i.as, align 8, !tbaa !159
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !160
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 72
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !161
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 80
  store i32 %i.v, ptr %i.ax, align 8, !tbaa !162
  %i.ay = load ptr, ptr %2, align 8, !tbaa !31
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull %7)
  %i.bb = load i32, ptr %3, align 4, !tbaa !143
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph249, label %._crit_edge250

.lr.ph249:                                        ; preds = %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 452
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 372
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 380
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 388
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 396
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 404
  %8 = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 412
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 452
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 372
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 376
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 380
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 388
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 392
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 396
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 404
  %9 = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 412
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %.sroa.5210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 212
  %.sroa.7211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %.sroa.5203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 228
  %.sroa.7204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  %.sroa.5196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 212
  %.sroa.7197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  %i.cb = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  %.sroa.5191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 228
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 420
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 428
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 436
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 444
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 420
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 428
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 436
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 444
  %i.co = load float, ptr %i.ar, align 4, !tbaa !158
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [160 x i8], ptr %1, i64 %indvars.iv ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.cp, i8 0, i64 152, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 120
  store <2 x float> <float f0xFF7FFFFF, float f0x7F7FFFFF>, ptr %i.cq, align 8, !tbaa !61
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  store float 0.000000e+00, ptr %i.cr, align 8, !tbaa !72
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 152
  store i32 %4, ptr %i.cs, align 8, !tbaa !91
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 156
  store i32 %5, ptr %i.ct, align 4, !tbaa !92
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 144
  store i32 %i.p, ptr %i.cu, align 8, !tbaa !163
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cv = load i32, ptr %3, align 4, !tbaa !143
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %indvars.iv.next, %i.cw
  br i1 %i.cx, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !164

._crit_edge250:                                   ; preds = %bb.l, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret void

bb.d:                                             ; preds = %.lr.ph249, %bb.l
  %indvars.iv252 = phi i64 [ 0, %.lr.ph249 ], [ %indvars.iv.next253, %bb.l ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [160 x i8], ptr %1, i64 %indvars.iv252 ; 22 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 124 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !64
  %i.db = load float, ptr %i.bd, align 8, !tbaa !165 ; 3 uses
  %i.dc = fcmp ult float %i.da, %i.db
  br i1 %i.dc, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store float %i.db, ptr %i.cz, align 4, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 120 ; 2 uses
  %i.de = load float, ptr %i.dd, align 8, !tbaa !63
  %i.df = fneg float %i.db                        ; 2 uses
  %i.dg = fcmp ugt float %i.de, %i.df
  br i1 %i.dg, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store float %i.df, ptr %i.dd, align 8, !tbaa !63
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 136
  store ptr %2, ptr %i.dh, align 8, !tbaa !83
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !136, !nonnull !103, !align !139 ; 9 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 372
  %10 = load float, ptr %i.cy, align 8, !tbaa !61 ; 7 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !61 ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 380
  %11 = load float, ptr %i.dm, align 4, !tbaa !61
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.do = load float, ptr %i.dn, align 8, !tbaa !61 ; 7 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 388
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 396
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !61
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 404
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !61
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 408
  %12 = load float, ptr %i.du, align 8, !tbaa !61
  %13 = fmul float %i.dl, %12
  %14 = call float @llvm.fmuladd.f32(float %i.dt, float %10, float %13)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 412
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !61
  %15 = call noundef float @llvm.fmuladd.f32(float %i.dw, float %i.do, float %14)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.di, i64 672
  %16 = load <2 x float>, ptr %i.dj, align 4, !tbaa !61 ; 2 uses
  %17 = load <2 x float>, ptr %i.dp, align 4, !tbaa !61 ; 2 uses
  %18 = insertelement <2 x float> poison, float %i.dl, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = shufflevector <2 x float> %16, <2 x float> %17, <2 x i32> <i32 1, i32 3>
  %21 = fmul <2 x float> %19, %20
  %22 = shufflevector <2 x float> %16, <2 x float> %17, <2 x i32> <i32 0, i32 2>
  %23 = insertelement <2 x float> poison, float %10, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %24, <2 x float> %21)
  %26 = insertelement <2 x float> poison, float %11, i64 0
  %27 = insertelement <2 x float> %26, float %i.dr, i64 1
  %28 = insertelement <2 x float> poison, float %i.do, i64 0
  %i.dy = shufflevector <2 x float> %28, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %27, <2 x float> %i.dy, <2 x float> %25)
  %i.ea = load <2 x float>, ptr %i.dx, align 8, !tbaa !61
  %29 = fmul <2 x float> %i.dz, %i.ea
  %30 = getelementptr inbounds nuw i8, ptr %i.di, i64 680
  %i.eb = load float, ptr %30, align 8, !tbaa !61
  %31 = fmul float %15, %i.eb
  %.sroa.3.12.vec.insert.i129 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %31, i64 0
  %32 = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  store <2 x float> %29, ptr %32, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i129, ptr %.sroa.417.0..sroa_idx, align 8, !tbaa !83
  %33 = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %34 = load ptr, ptr %i.c, align 8, !tbaa !140, !nonnull !103, !align !139 ; 9 uses
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 372
  %36 = load float, ptr %33, align 8, !tbaa !61   ; 7 uses
  %37 = getelementptr inbounds nuw i8, ptr %i.cy, i64 36
  %38 = load float, ptr %37, align 4, !tbaa !61   ; 7 uses
  %39 = getelementptr inbounds nuw i8, ptr %34, i64 380
  %40 = load float, ptr %39, align 4, !tbaa !61
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.ed = load float, ptr %i.ec, align 8, !tbaa !61 ; 7 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %34, i64 388
  %i.ef = getelementptr inbounds nuw i8, ptr %34, i64 396
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !61
  %i.eh = getelementptr inbounds nuw i8, ptr %34, i64 404
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !61
  %i.ej = getelementptr inbounds nuw i8, ptr %34, i64 408
  %i.ek = load float, ptr %i.ej, align 8, !tbaa !61
  %i.el = fmul float %38, %i.ek
  %i.em = call float @llvm.fmuladd.f32(float %i.ei, float %36, float %i.el)
  %i.en = getelementptr inbounds nuw i8, ptr %34, i64 412
  %i.eo = load float, ptr %i.en, align 4, !tbaa !61
  %i.ep = call noundef float @llvm.fmuladd.f32(float %i.eo, float %i.ed, float %i.em)
  %i.eq = getelementptr inbounds nuw i8, ptr %34, i64 672
  %i.er = load <2 x float>, ptr %35, align 4, !tbaa !61 ; 2 uses
  %i.es = load <2 x float>, ptr %i.ee, align 4, !tbaa !61 ; 2 uses
  %41 = insertelement <2 x float> poison, float %38, i64 0
  %42 = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  %43 = shufflevector <2 x float> %i.er, <2 x float> %i.es, <2 x i32> <i32 1, i32 3>
  %44 = fmul <2 x float> %42, %43
  %45 = shufflevector <2 x float> %i.er, <2 x float> %i.es, <2 x i32> <i32 0, i32 2>
  %i.et = insertelement <2 x float> poison, float %36, i64 0
  %46 = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %47 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %45, <2 x float> %46, <2 x float> %44)
  %48 = insertelement <2 x float> poison, float %40, i64 0
  %.sroa.3.12.vec.insert.i139.a = insertelement <2 x float> %48, float %i.eg, i64 1
  %49 = insertelement <2 x float> poison, float %i.ed, i64 0
  %50 = shufflevector <2 x float> %49, <2 x float> poison, <2 x i32> zeroinitializer
  %51 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.sroa.3.12.vec.insert.i139.a, <2 x float> %50, <2 x float> %47)
  %i.eu = load <2 x float>, ptr %i.eq, align 8, !tbaa !61
  %52 = fmul <2 x float> %51, %i.eu
  %53 = getelementptr inbounds nuw i8, ptr %34, i64 680
  %i.ev = load float, ptr %53, align 8, !tbaa !61
  %54 = fmul float %i.ep, %i.ev
  %.sroa.3.12.vec.insert.i139 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %54, i64 0
  %55 = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  store <2 x float> %52, ptr %55, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  store <2 x float> %.sroa.3.12.vec.insert.i139, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !83
  %56 = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.ew = load float, ptr %i.be, align 4, !tbaa !84 ; 3 uses
  %i.ex = load float, ptr %56, align 8, !tbaa !61 ; 3 uses
  %57 = fmul float %i.ew, %i.ex
  %58 = getelementptr inbounds nuw i8, ptr %i.cy, i64 20
  %i.ey = load float, ptr %58, align 4, !tbaa !61 ; 3 uses
  %i.ez = fmul float %i.ew, %i.ey
  %59 = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %60 = load float, ptr %59, align 8, !tbaa !61   ; 3 uses
  %i.fa = fmul float %i.ew, %60
  %61 = load float, ptr %i.bf, align 4, !tbaa !61
  %62 = load float, ptr %i.bg, align 8, !tbaa !61
  %63 = fmul float %i.dl, %62
  %i.fb = call float @llvm.fmuladd.f32(float %61, float %10, float %63)
  %i.fc = load float, ptr %i.bh, align 4, !tbaa !61
  %i.fd = call noundef float @llvm.fmuladd.f32(float %i.fc, float %i.do, float %i.fb)
  %i.fe = load float, ptr %i.bi, align 4, !tbaa !61
  %i.ff = load float, ptr %i.bj, align 8, !tbaa !61
  %i.fg = fmul float %i.dl, %i.ff
  %64 = call float @llvm.fmuladd.f32(float %i.fe, float %10, float %i.fg)
  %65 = load float, ptr %i.bk, align 4, !tbaa !61
  %i.fh = call noundef float @llvm.fmuladd.f32(float %65, float %i.do, float %64)
  %66 = load float, ptr %i.bl, align 4, !tbaa !61
  %i.fi = load float, ptr %8, align 8, !tbaa !61
  %67 = fmul float %i.dl, %i.fi
  %i.fj = call float @llvm.fmuladd.f32(float %66, float %10, float %67)
  %68 = load float, ptr %i.bm, align 4, !tbaa !61
  %69 = call noundef float @llvm.fmuladd.f32(float %68, float %i.do, float %i.fj)
  %70 = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %71 = load float, ptr %i.bn, align 4, !tbaa !84 ; 3 uses
  %72 = load float, ptr %70, align 8, !tbaa !61   ; 3 uses
  %i.fk = fmul float %71, %72
  %73 = getelementptr inbounds nuw i8, ptr %i.cy, i64 52
  %i.fl = load float, ptr %73, align 4, !tbaa !61 ; 3 uses
  %74 = fmul float %71, %i.fl
  %75 = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %76 = load float, ptr %75, align 8, !tbaa !61   ; 3 uses
  %77 = fmul float %71, %76
  %78 = load float, ptr %i.bo, align 4, !tbaa !61
  %79 = load float, ptr %i.bp, align 8, !tbaa !61
  %80 = fmul float %38, %79
  %81 = call float @llvm.fmuladd.f32(float %78, float %36, float %80)
  %82 = load float, ptr %i.bq, align 4, !tbaa !61
  %83 = call noundef float @llvm.fmuladd.f32(float %82, float %i.ed, float %81)
  %84 = load float, ptr %i.br, align 4, !tbaa !61
  %85 = load float, ptr %i.bs, align 8, !tbaa !61
  %86 = fmul float %38, %85
  %87 = call float @llvm.fmuladd.f32(float %84, float %36, float %86)
  %88 = load float, ptr %i.bt, align 4, !tbaa !61
  %89 = call noundef float @llvm.fmuladd.f32(float %88, float %i.ed, float %87)
  %90 = load float, ptr %i.bu, align 4, !tbaa !61
  %91 = load float, ptr %9, align 8, !tbaa !61
  %92 = fmul float %38, %91
  %93 = call float @llvm.fmuladd.f32(float %90, float %36, float %92)
  %94 = load float, ptr %i.bv, align 4, !tbaa !61
  %95 = call noundef float @llvm.fmuladd.f32(float %94, float %i.ed, float %93)
  %96 = fmul float %i.ey, %i.ez
  %97 = call float @llvm.fmuladd.f32(float %57, float %i.ex, float %96)
  %98 = call noundef float @llvm.fmuladd.f32(float %i.fa, float %60, float %97)
  %99 = fmul float %i.dl, %i.fh
  %100 = call float @llvm.fmuladd.f32(float %i.fd, float %10, float %99)
  %101 = call noundef float @llvm.fmuladd.f32(float %69, float %i.do, float %100)
  %102 = fadd float %98, %101
  %103 = fmul float %i.fl, %74
  %104 = call float @llvm.fmuladd.f32(float %i.fk, float %72, float %103)
  %105 = call noundef float @llvm.fmuladd.f32(float %77, float %76, float %104)
  %106 = fadd float %102, %105
  %107 = fmul float %38, %89
  %108 = call float @llvm.fmuladd.f32(float %83, float %36, float %107)
  %109 = call noundef float @llvm.fmuladd.f32(float %95, float %i.ed, float %108)
  %110 = fadd float %106, %109                    ; 2 uses
  %i.fm = call noundef float @llvm.fabs.f32(float %110)
  %i.fn = fcmp ogt float %i.fm, f0x34000000
  %i.fo = fdiv float 1.000000e+00, %110
  %i.fp = select i1 %i.fn, float %i.fo, float 0.000000e+00 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cy, i64 108
  store float %i.fp, ptr %i.fq, align 4, !tbaa !62
  %i.fr = load ptr, ptr %i.bw, align 8, !tbaa !65
  %.not = icmp eq ptr %i.fr, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0209.0.copyload = load float, ptr %i.bx, align 8
  %.sroa.5210.0.copyload = load float, ptr %.sroa.5210.0..sroa_idx, align 4
  %.sroa.7211.0.copyload = load float, ptr %.sroa.7211.0..sroa_idx, align 8
  %.sroa.0202.0.copyload = load float, ptr %i.by, align 8
  %.sroa.5203.0.copyload = load float, ptr %.sroa.5203.0..sroa_idx, align 4
  %.sroa.7204.0.copyload = load float, ptr %.sroa.7204.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.7211.0234 = phi float [ %.sroa.7211.0.copyload, %bb.i ], [ 0.000000e+00, %bb.h ]
  %.sroa.5210.0232 = phi float [ %.sroa.5210.0.copyload, %bb.i ], [ 0.000000e+00, %bb.h ]
  %.sroa.0209.0230 = phi float [ %.sroa.0209.0.copyload, %bb.i ], [ 0.000000e+00, %bb.h ]
  %.sroa.0202.0 = phi float [ %.sroa.0202.0.copyload, %bb.i ], [ 0.000000e+00, %bb.h ]
  %.sroa.5203.0 = phi float [ %.sroa.5203.0.copyload, %bb.i ], [ 0.000000e+00, %bb.h ]
  %.sroa.7204.0 = phi float [ %.sroa.7204.0.copyload, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.fs = load ptr, ptr %i.bz, align 8, !tbaa !65
  %.not125 = icmp eq ptr %i.fs, null
  br i1 %.not125, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0195.0.copyload = load float, ptr %i.ca, align 8
  %.sroa.5196.0.copyload = load float, ptr %.sroa.5196.0..sroa_idx, align 4
  %.sroa.7197.0.copyload = load float, ptr %.sroa.7197.0..sroa_idx, align 8
  %.sroa.0190.0.copyload = load float, ptr %i.cb, align 8
  %.sroa.5191.0.copyload = load float, ptr %.sroa.5191.0..sroa_idx, align 4
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sroa.7197.0244 = phi float [ %.sroa.7197.0.copyload, %bb.k ], [ 0.000000e+00, %bb.j ]
  %.sroa.5196.0242 = phi float [ %.sroa.5196.0.copyload, %bb.k ], [ 0.000000e+00, %bb.j ]
  %.sroa.0195.0240 = phi float [ %.sroa.0195.0.copyload, %bb.k ], [ 0.000000e+00, %bb.j ]
  %.sroa.7.0 = phi float [ %.sroa.7.0.copyload, %bb.k ], [ 0.000000e+00, %bb.j ]
  %.sroa.5191.0 = phi float [ %.sroa.5191.0.copyload, %bb.k ], [ 0.000000e+00, %bb.j ]
  %.sroa.0190.0 = phi float [ %.sroa.0190.0.copyload, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.ft = load float, ptr %i.cc, align 4, !tbaa !61
  %i.fu = fadd float %.sroa.0209.0230, %i.ft
  %i.fv = load float, ptr %i.cd, align 8, !tbaa !61
  %i.fw = fadd float %.sroa.5210.0232, %i.fv
  %i.fx = load float, ptr %i.ce, align 4, !tbaa !61
  %i.fy = fadd float %.sroa.7211.0234, %i.fx
  %i.fz = fmul float %i.ey, %i.fw
  %i.ga = call float @llvm.fmuladd.f32(float %i.ex, float %i.fu, float %i.fz)
  %i.gb = call noundef float @llvm.fmuladd.f32(float %60, float %i.fy, float %i.ga)
  %i.gc = load float, ptr %i.cf, align 4, !tbaa !61
  %i.gd = fadd float %.sroa.0202.0, %i.gc
  %i.ge = load float, ptr %i.cg, align 8, !tbaa !61
  %i.gf = fadd float %.sroa.5203.0, %i.ge
  %i.gg = load float, ptr %i.ch, align 4, !tbaa !61
  %i.gh = fadd float %.sroa.7204.0, %i.gg
  %i.gi = fmul float %i.dl, %i.gf
  %i.gj = call float @llvm.fmuladd.f32(float %10, float %i.gd, float %i.gi)
  %i.gk = call noundef float @llvm.fmuladd.f32(float %i.do, float %i.gh, float %i.gj)
  %i.gl = fadd float %i.gb, %i.gk
  %i.gm = load float, ptr %i.ci, align 4, !tbaa !61
  %i.gn = fadd float %.sroa.0195.0240, %i.gm
  %i.go = load float, ptr %i.cj, align 8, !tbaa !61
  %i.gp = fadd float %.sroa.5196.0242, %i.go
  %i.gq = load float, ptr %i.ck, align 4, !tbaa !61
  %i.gr = fadd float %.sroa.7197.0244, %i.gq
  %i.gs = fmul float %i.fl, %i.gp
  %i.gt = call float @llvm.fmuladd.f32(float %72, float %i.gn, float %i.gs)
  %i.gu = call noundef float @llvm.fmuladd.f32(float %76, float %i.gr, float %i.gt)
  %i.gv = load float, ptr %i.cl, align 4, !tbaa !61
  %i.gw = fadd float %.sroa.0190.0, %i.gv
  %i.gx = load float, ptr %i.cm, align 8, !tbaa !61
  %i.gy = fadd float %.sroa.5191.0, %i.gx
  %i.gz = load float, ptr %i.cn, align 4, !tbaa !61
  %i.ha = fadd float %.sroa.7.0, %i.gz
  %i.hb = fmul float %38, %i.gy
  %i.hc = call float @llvm.fmuladd.f32(float %36, float %i.gw, float %i.hb)
  %i.hd = call noundef float @llvm.fmuladd.f32(float %i.ed, float %i.ha, float %i.hc)
  %i.he = fadd float %i.gu, %i.hd
  %i.hf = fadd float %i.gl, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.cy, i64 112 ; 2 uses
  %i.hh = load float, ptr %i.hg, align 8, !tbaa !56
  %i.hi = fneg float %i.hf
  %i.hj = call float @llvm.fmuladd.f32(float %i.hi, float %i.co, float 0.000000e+00)
  %i.hk = fmul float %i.fp, %i.hh
  %i.hl = fmul float %i.fp, %i.hj
  %i.hm = fadd float %i.hk, %i.hl
  store float %i.hm, ptr %i.hg, align 8, !tbaa !56
  %i.hn = getelementptr inbounds nuw i8, ptr %i.cy, i64 100
  store float 0.000000e+00, ptr %i.hn, align 4, !tbaa !59
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %i.ho = load i32, ptr %3, align 4, !tbaa !143
  %i.hp = sext i32 %i.ho to i64
  %i.hq = icmp slt i64 %indvars.iv.next253, %i.hp
  br i1 %i.hq, label %bb.d, label %._crit_edge250, !llvm.loop !166
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN35btSequentialImpulseConstraintSolver13convertJointsEPP17btTypedConstraintiRK19btContactSolverInfo(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(128) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.CProfileSample, align 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull @.str)
  %i.a = icmp sgt i32 %2, 0                       ; 3 uses
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !47   ; 2 uses
  %i.d = icmp sgt i32 %2, %i.c
  br i1 %i.d, label %bb.b, label %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE18resizeNoInitializeEi.exit

bb.b:                                             ; preds = %._crit_edge
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !48
  %i.g = icmp slt i32 %i.f, %2
  br i1 %i.g, label %bb.c, label %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE18resizeNoInitializeEi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sext i32 %2 to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.i, i32 noundef 16)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.d
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !47
  br label %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE8allocateEi.exit.i.i: ; preds = %.noexc, %bb.c
  %i.k = phi i32 [ %.pre.i, %.noexc ], [ %i.c, %bb.c ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.j, %.noexc ], [ null, %bb.c ] ; 6 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE8allocateEi.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.k to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.n = icmp ult i32 %i.k, 4
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483644
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.3, %bb.e ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.3, %bb.e ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i.i.i
  %i.r = load i64, ptr %i.q, align 4
  store i64 %i.r, ptr %i.o, align 4
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i
  %i.v = load i64, ptr %i.u, align 4
  store i64 %i.v, ptr %i.s, align 4
  %indvars.iv.next.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next.i.i.i.1
  %i.z = load i64, ptr %i.y, align 4
  store i64 %i.z, ptr %i.w, align 4
  %indvars.iv.next.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i.2
  %i.ad = load i64, ptr %i.ac, align 4
  store i64 %i.ad, ptr %i.aa, align 4
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !167

_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.3, %_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod113 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod113)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i.i.i.epil
  %i.ah = load i64, ptr %i.ag, align 4
  store i64 %i.ah, ptr %i.ae, align 4
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.i.i, label %bb.f, !llvm.loop !168

_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.i.i: ; preds = %_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %bb.f, %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE8allocateEi.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !46 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE10deallocateEv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !45, !range !73, !noundef !103
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.h, label %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE10deallocateEv.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aj)
          to label %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE10deallocateEv.exit.i.i unwind label %bb.q

_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE10deallocateEv.exit.i.i: ; preds = %bb.h, %bb.g, %_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 1, ptr %i.an, align 8, !tbaa !45
  store ptr %.0.i.i.i, ptr %i.ai, align 8, !tbaa !46
  store i32 %2, ptr %i.e, align 8, !tbaa !48
  br label %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE18resizeNoInitializeEi.exit

_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE18resizeNoInitializeEi.exit: ; preds = %._crit_edge, %bb.b, %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE10deallocateEv.exit.i.i
  store i32 %2, ptr %i.b, align 4, !tbaa !47
  br i1 %i.a, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE18resizeNoInitializeEi.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 280
  %wide.trip.count95 = zext nneg i32 %2 to i64
  br label %bb.r

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !170 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr noundef nonnull align 8 dereferenceable(72) %i.aq)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  store float 0.000000e+00, ptr %i.au, align 8, !tbaa !172
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !173

bb.j:                                             ; preds = %.lr.ph
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

._crit_edge86:                                    ; preds = %bb.x, %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE18resizeNoInitializeEi.exit
  %.057.lcssa = phi i32 [ 0, %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE18resizeNoInitializeEi.exit ], [ %i.cs, %bb.x ] ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !39 ; 2 uses
  %i.ay = icmp sgt i32 %.057.lcssa, %i.ax
  br i1 %i.ay, label %bb.k, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE18resizeNoInitializeEi.exit

bb.k:                                             ; preds = %._crit_edge86
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !40
  %i.bb = icmp slt i32 %i.ba, %.057.lcssa
  br i1 %i.bb, label %bb.l, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE18resizeNoInitializeEi.exit

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i70 = icmp eq i32 %.057.lcssa, 0
  br i1 %.not.i.i.i70, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i.i, label %bb.m

end_hunk_0
begin_hunk_1_@_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_:bb.a
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
  store float %i.da, ptr %4, align 4, !tbaa !61
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.db, ptr %i.dl, align 4, !tbaa !61
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.dc, ptr %i.dm, align 4, !tbaa !61
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %i.dn, align 4, !tbaa !61
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %i.dd, ptr %i.do, align 4, !tbaa !61
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.df, ptr %i.dp, align 4, !tbaa !61
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.dg, ptr %i.dq, align 4, !tbaa !61
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float 0.000000e+00, ptr %i.dr, align 4, !tbaa !61
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %i.dh, ptr %i.ds, align 4, !tbaa !61
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %i.di, ptr %i.dt, align 4, !tbaa !61
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.dk, ptr %i.du, align 4, !tbaa !61
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %i.dv, align 4, !tbaa !61
  br label %bb.h

bb.g:                                             ; preds = %_ZN12btQuaternion13safeNormalizeEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(48) %0, i64 16, i1 false), !tbaa.struct !82
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dx, ptr noundef nonnull align 4 dereferenceable(16) %i.dw, i64 16, i1 false), !tbaa.struct !82
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dz, ptr noundef nonnull align 4 dereferenceable(16) %i.dy, i64 16, i1 false), !tbaa.struct !82
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 4, !tbaa !61   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !61 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !61 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = fadd float %i.h, 1.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #22 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.n, align 4, !tbaa !61
  %i.t = load float, ptr %i.m, align 4, !tbaa !61
  %i.u = load float, ptr %i.j, align 4, !tbaa !61
  %i.v = load float, ptr %i.k, align 4, !tbaa !61
  %i.w = load float, ptr %i.o, align 4, !tbaa !61
  %i.x = load float, ptr %i.p, align 4, !tbaa !61
  %i.y = fsub float %i.v, %i.x
  %i.z = fsub float %i.w, %i.u
  %i.aa = fsub float %i.t, %i.s
  %i.ab = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.q, i64 1
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ae = insertelement <4 x float> <float poison, float poison, float poison, float 5.000000e-01>, float %i.aa, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.z, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.y, i64 2
  %i.ah = fmul <4 x float> %i.ad, %i.ag
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = fcmp olt float %i.b, %i.d
  %i.aj = fcmp olt float %i.d, %i.g
  %i.ak = select i1 %i.aj, i32 2, i32 1
  %i.al = fcmp olt float %i.b, %i.g
  %i.am = select i1 %i.al, i32 2, i32 0
  %i.an = select i1 %i.ai, i32 %i.ak, i32 %i.am
  %.fr = freeze i32 %i.an                         ; 3 uses
  %i.ao = add nuw nsw i32 %.fr, 1                 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 3
  %i.aq = select i1 %i.ap, i32 0, i32 %i.ao
  %i.ar = add nuw nsw i32 %.fr, 2
  %i.as = urem i32 %i.ar, 3
  %i.at = zext nneg i32 %.fr to i64               ; 5 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load float, ptr %i.av, align 4, !tbaa !61
  %i.ax = sext i32 %i.aq to i64                   ; 5 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !61
  %i.bb = fsub float %i.aw, %i.ba
  %i.bc = zext nneg i32 %i.as to i64              ; 5 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load float, ptr %i.be, align 4, !tbaa !61
  %i.bg = fsub float %i.bb, %i.bf
  %i.bh = fadd float %i.bg, 1.000000e+00
  %i.bi = tail call noundef float @sqrtf(float noundef %i.bh) #22 ; 2 uses
  %i.bj = fmul float %i.bi, 5.000000e-01
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  store float %i.bj, ptr %i.bk, align 4, !tbaa !61
  %i.bl = fdiv float 5.000000e-01, %i.bi          ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ax
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !61
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bc
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !61
  %i.bq = fsub float %i.bn, %i.bp
  %i.br = fmul float %i.bl, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.br, ptr %i.bs, align 4, !tbaa !61
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.at
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !61
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !61
  %i.bx = fadd float %i.bu, %i.bw
  %i.by = fmul float %i.bl, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  store float %i.by, ptr %i.bz, align 4, !tbaa !61
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.at
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !61
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bc
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !61
  %i.ce = fadd float %i.cb, %i.cd
  %i.cf = fmul float %i.bl, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc
  store float %i.cf, ptr %i.cg, align 4, !tbaa !61
  %i.ch = load <4 x float>, ptr %i.a, align 16, !tbaa !61
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ci = phi <4 x float> [ %i.ch, %bb.c ], [ %i.ah, %bb.b ]
  store <4 x float> %i.ci, ptr %1, align 4, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !15, i64 336}
!10 = !{!"_ZTS35btSequentialImpulseConstraintSolver", !11, i64 0, !12, i64 8, !17, i64 40, !17, i64 72, !17, i64 104, !17, i64 136, !20, i64 168, !20, i64 200, !20, i64 232, !23, i64 264, !6, i64 296, !6, i64 300, !20, i64 304, !15, i64 336, !15, i64 344, !15, i64 352, !6, i64 360, !26, i64 364, !27, i64 368, !28, i64 376}
!11 = !{!"_ZTS18btConstraintSolver"}
!12 = !{!"_ZTS20btAlignedObjectArrayI12btSolverBodyE", !13, i64 0, !6, i64 4, !6, i64 8, !14, i64 16, !16, i64 24}
!13 = !{!"_ZTS18btAlignedAllocatorI12btSolverBodyLj16EE"}
!14 = !{!"p1 _ZTS12btSolverBody", !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!"bool", !7, i64 0}
!17 = !{!"_ZTS20btAlignedObjectArrayI18btSolverConstraintE", !18, i64 0, !6, i64 4, !6, i64 8, !19, i64 16, !16, i64 24}
!18 = !{!"_ZTS18btAlignedAllocatorI18btSolverConstraintLj16EE"}
!19 = !{!"p1 _ZTS18btSolverConstraint", !15, i64 0}
!20 = !{!"_ZTS20btAlignedObjectArrayIiE", !21, i64 0, !6, i64 4, !6, i64 8, !22, i64 16, !16, i64 24}
!21 = !{!"_ZTS18btAlignedAllocatorIiLj16EE"}
!22 = !{!"p1 int", !15, i64 0}
!23 = !{!"_ZTS20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE", !24, i64 0, !6, i64 4, !6, i64 8, !25, i64 16, !16, i64 24}
!24 = !{!"_ZTS18btAlignedAllocatorIN17btTypedConstraint17btConstraintInfo1ELj16EE"}
!25 = !{!"p1 _ZTSN17btTypedConstraint17btConstraintInfo1E", !15, i64 0}
!26 = !{!"float", !7, i64 0}
!27 = !{!"long", !7, i64 0}
!28 = !{!"_ZTS21btSolverAnalyticsData", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !29, i64 24}
!29 = !{!"double", !7, i64 0}
!30 = !{!10, !15, i64 344}
!31 = !{!32, !32, i64 0}
!32 = !{!"vtable pointer", !8, i64 0}
!33 = !{!12, !16, i64 24}
!34 = !{!12, !14, i64 16}
!35 = !{!12, !6, i64 4}
!36 = !{!12, !6, i64 8}
!37 = !{!17, !16, i64 24}
!38 = !{!17, !19, i64 16}
!39 = !{!17, !6, i64 4}
!40 = !{!17, !6, i64 8}
!41 = !{!20, !16, i64 24}
!42 = !{!20, !22, i64 16}
!43 = !{!20, !6, i64 4}
!44 = !{!20, !6, i64 8}
!45 = !{!23, !16, i64 24}
!46 = !{!23, !25, i64 16}
!47 = !{!23, !6, i64 4}
!48 = !{!23, !6, i64 8}
!49 = !{!28, !6, i64 12}
!50 = !{!28, !6, i64 16}
!51 = !{!28, !29, i64 24}
!52 = !{!28, !6, i64 0}
!53 = !{!10, !27, i64 368}
!54 = !{!10, !6, i64 360}
!55 = !{!10, !15, i64 352}
!56 = !{!57, !26, i64 112}
!57 = !{!"_ZTS18btSolverConstraint", !58, i64 0, !58, i64 16, !58, i64 32, !58, i64 48, !58, i64 64, !58, i64 80, !26, i64 96, !26, i64 100, !26, i64 104, !26, i64 108, !26, i64 112, !26, i64 116, !26, i64 120, !26, i64 124, !26, i64 128, !7, i64 136, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156}
!58 = !{!"_ZTS9btVector3", !7, i64 0}
!59 = !{!57, !26, i64 100}
!60 = !{!57, !26, i64 116}
!61 = !{!26, !26, i64 0}
!62 = !{!57, !26, i64 108}
!63 = !{!57, !26, i64 120}
!64 = !{!57, !26, i64 124}
!65 = !{!66, !69, i64 240}
!66 = !{!"_ZTS12btSolverBody", !67, i64 0, !58, i64 64, !58, i64 80, !58, i64 96, !58, i64 112, !58, i64 128, !58, i64 144, !58, i64 160, !58, i64 176, !58, i64 192, !58, i64 208, !58, i64 224, !69, i64 240}
!67 = !{!"_ZTS11btTransform", !68, i64 0, !58, i64 48}
!68 = !{!"_ZTS11btMatrix3x3", !7, i64 0}
!69 = !{!"p1 _ZTS11btRigidBody", !15, i64 0}
!70 = !{!57, !26, i64 128}
!71 = !{!6, !6, i64 0}
!72 = !{!57, !26, i64 96}
!73 = !{i8 0, i8 2}
!74 = !{!75, !6, i64 272}
!75 = !{!"_ZTS17btCollisionObject", !67, i64 8, !67, i64 72, !58, i64 136, !58, i64 152, !58, i64 168, !6, i64 184, !26, i64 188, !76, i64 192, !77, i64 200, !15, i64 208, !77, i64 216, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !26, i64 244, !26, i64 248, !26, i64 252, !26, i64 256, !26, i64 260, !26, i64 264, !26, i64 268, !6, i64 272, !15, i64 280, !6, i64 288, !6, i64 292, !6, i64 296, !26, i64 300, !26, i64 304, !26, i64 308, !6, i64 312, !78, i64 320, !6, i64 352, !58, i64 356}
!76 = !{!"p1 _ZTS17btBroadphaseProxy", !15, i64 0}
!77 = !{!"p1 _ZTS16btCollisionShape", !15, i64 0}
!78 = !{!"_ZTS20btAlignedObjectArrayIPK17btCollisionObjectE", !79, i64 0, !6, i64 4, !6, i64 8, !80, i64 16, !16, i64 24}
!79 = !{!"_ZTS18btAlignedAllocatorIPK17btCollisionObjectLj16EE"}
!80 = !{!"p2 _ZTS17btCollisionObject", !81, i64 0}
!81 = !{!"any p2 pointer", !15, i64 0}
!82 = !{i64 0, i64 16, !83}
!83 = !{!7, !7, i64 0}
!84 = !{!85, !26, i64 452}
!85 = !{!"_ZTS11btRigidBody", !75, i64 0, !68, i64 372, !58, i64 420, !58, i64 436, !26, i64 452, !58, i64 456, !58, i64 472, !58, i64 488, !58, i64 504, !58, i64 520, !58, i64 536, !26, i64 552, !26, i64 556, !16, i64 560, !26, i64 564, !26, i64 568, !26, i64 572, !26, i64 576, !26, i64 580, !26, i64 584, !86, i64 592, !87, i64 600, !6, i64 632, !6, i64 636, !58, i64 640, !58, i64 656, !58, i64 672, !58, i64 688, !58, i64 704, !58, i64 720, !6, i64 736, !6, i64 740}
!86 = !{!"p1 _ZTS13btMotionState", !15, i64 0}
!87 = !{!"_ZTS20btAlignedObjectArrayIP17btTypedConstraintE", !88, i64 0, !6, i64 4, !6, i64 8, !89, i64 16, !16, i64 24}
!88 = !{!"_ZTS18btAlignedAllocatorIP17btTypedConstraintLj16EE"}
!89 = !{!"p2 _ZTS17btTypedConstraint", !81, i64 0}
!90 = !{!75, !6, i64 184}
!91 = !{!57, !6, i64 152}
!92 = !{!57, !6, i64 156}
!93 = !{!94, !26, i64 84}
!94 = !{!"_ZTS15btManifoldPoint", !58, i64 0, !58, i64 16, !58, i64 32, !58, i64 48, !58, i64 64, !26, i64 80, !26, i64 84, !26, i64 88, !26, i64 92, !26, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !15, i64 120, !6, i64 128, !26, i64 132, !26, i64 136, !26, i64 140, !26, i64 144, !26, i64 148, !26, i64 152, !7, i64 156, !7, i64 160, !26, i64 164, !6, i64 168, !58, i64 172, !58, i64 188}
!95 = !{!57, !26, i64 104}
!96 = !{!94, !6, i64 128}
!97 = !{!98, !26, i64 56}
!98 = !{!"_ZTS23btContactSolverInfoData", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !6, i64 20, !26, i64 24, !26, i64 28, !26, i64 32, !26, i64 36, !26, i64 40, !26, i64 44, !26, i64 48, !26, i64 52, !26, i64 56, !26, i64 60, !6, i64 64, !26, i64 68, !26, i64 72, !26, i64 76, !26, i64 80, !26, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !26, i64 100, !26, i64 104, !26, i64 108, !26, i64 112, !16, i64 116, !16, i64 117, !6, i64 120, !6, i64 124}
!99 = !{!98, !26, i64 12}
!100 = !{i64 0, i64 16, !83, i64 16, i64 16, !83, i64 32, i64 16, !83, i64 48, i64 16, !83, i64 64, i64 16, !83, i64 80, i64 16, !83, i64 96, i64 4, !61, i64 100, i64 4, !61, i64 104, i64 4, !61, i64 108, i64 4, !61, i64 112, i64 4, !61, i64 116, i64 4, !61, i64 120, i64 4, !61, i64 124, i64 4, !61, i64 128, i64 4, !61, i64 136, i64 8, !83, i64 144, i64 4, !71, i64 148, i64 4, !71, i64 152, i64 4, !71, i64 156, i64 4, !71}
!101 = distinct !{!101, !102}
!102 = !{!"llvm.loop.mustprogress"}
!103 = !{}
!104 = !{!57, !6, i64 148}
!105 = !{!75, !6, i64 232}
!106 = !{!75, !6, i64 224}
!107 = distinct !{!107, !102}
!108 = !{!10, !6, i64 300}
!109 = !{!98, !26, i64 28}
!110 = !{!98, !26, i64 52}
!111 = !{!98, !26, i64 36}
!112 = !{!94, !26, i64 80}
!113 = !{!98, !26, i64 76}
!114 = !{!94, !26, i64 96}
!115 = !{!98, !26, i64 112}
!116 = !{!98, !6, i64 88}
!117 = !{!94, !26, i64 132}
!118 = !{!98, !26, i64 80}
!119 = !{!98, !6, i64 64}
!120 = !{!121, !123, i64 840}
!121 = !{!"_ZTS20btPersistentManifold", !122, i64 0, !7, i64 8, !123, i64 840, !123, i64 848, !6, i64 856, !26, i64 860, !26, i64 864, !6, i64 868, !6, i64 872, !6, i64 876}
!122 = !{!"_ZTS13btTypedObject", !6, i64 0}
!123 = !{!"p1 _ZTS17btCollisionObject", !15, i64 0}
!124 = !{!121, !123, i64 848}
!125 = !{!121, !6, i64 856}
!126 = !{!121, !26, i64 864}
!127 = !{!94, !26, i64 88}
!128 = !{!94, !26, i64 92}
!129 = !{!94, !26, i64 148}
!130 = !{!94, !26, i64 164}
!131 = !{!94, !26, i64 152}
!132 = distinct !{!132, !102}
!133 = !{!134, !134, i64 0}
!134 = !{!"p1 _ZTS20btPersistentManifold", !15, i64 0}
!135 = distinct !{!135, !102}
!136 = !{!137, !69, i64 40}
!137 = !{!"_ZTS17btTypedConstraint", !122, i64 8, !6, i64 12, !7, i64 16, !26, i64 24, !16, i64 28, !16, i64 29, !6, i64 32, !69, i64 40, !69, i64 48, !26, i64 56, !26, i64 60, !138, i64 64}
!138 = !{!"p1 _ZTS15btJointFeedback", !15, i64 0}
!139 = !{i64 8}
!140 = !{!137, !69, i64 48}
!141 = !{!137, !6, i64 32}
!142 = !{!10, !6, i64 296}
!143 = !{!144, !6, i64 0}
!144 = !{!"_ZTSN17btTypedConstraint17btConstraintInfo1E", !6, i64 0, !6, i64 4}
!145 = !{!98, !6, i64 20}
!146 = !{!147, !26, i64 0}
!147 = !{!"_ZTSN17btTypedConstraint17btConstraintInfo2E", !26, i64 0, !26, i64 4, !148, i64 8, !148, i64 16, !148, i64 24, !148, i64 32, !6, i64 40, !148, i64 48, !148, i64 56, !148, i64 64, !148, i64 72, !6, i64 80, !26, i64 84}
!148 = !{!"p1 float", !15, i64 0}
!149 = !{!98, !26, i64 32}
!150 = !{!147, !26, i64 4}
!151 = !{!147, !148, i64 8}
!152 = !{!147, !148, i64 16}
!153 = !{!147, !148, i64 24}
!154 = !{!147, !148, i64 32}
!155 = !{!147, !6, i64 40}
!156 = !{!147, !148, i64 48}
!157 = !{!98, !26, i64 4}
!158 = !{!147, !26, i64 84}
!159 = !{!147, !148, i64 56}
!160 = !{!147, !148, i64 64}
!161 = !{!147, !148, i64 72}
!162 = !{!147, !6, i64 80}
!163 = !{!57, !6, i64 144}
!164 = distinct !{!164, !102}
!165 = !{!137, !26, i64 24}
!166 = distinct !{!166, !102}
!167 = distinct !{!167, !102}
!168 = distinct !{!168, !169}
!169 = !{!"llvm.loop.unroll.disable"}
!170 = !{!171, !171, i64 0}
!171 = !{!"p1 _ZTS17btTypedConstraint", !15, i64 0}
end_hunk_1
