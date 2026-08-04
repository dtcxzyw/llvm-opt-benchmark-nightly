inline.NumInlined: 154
inline.NumDeleted: 80
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN24btSoftRigidDynamicsWorld14removeSoftBodyEP10btSoftBody:bb.a
  store ptr %i.g, ptr %i.l, align 8, !tbaa !97
  store i32 %i.j, ptr %i.a, align 4, !tbaa !19
  br label %_ZN20btAlignedObjectArrayIP10btSoftBodyE6removeERKS1_.exit

_ZN20btAlignedObjectArrayIP10btSoftBodyE6removeERKS1_.exit: ; preds = %bb.c, %bb.a, %_ZNK20btAlignedObjectArrayIP10btSoftBodyE16findLinearSearchERKS1_.exit.i
  tail call void @_ZN16btCollisionWorld21removeCollisionObjectEP17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef %1)
  ret void
}

declare void @_ZN16btCollisionWorld21removeCollisionObjectEP17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(121), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN24btSoftRigidDynamicsWorld21removeCollisionObjectEP17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(689) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.b = load i32, ptr %i.a, align 8, !tbaa !199
  %i.c = icmp ne i32 %i.b, 8
  %.not5 = icmp eq ptr %1, null
  %.not = or i1 %.not5, %i.c
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 516 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19   ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i, label %_ZN24btSoftRigidDynamicsWorld14removeSoftBodyEP10btSoftBody.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.d ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97   ; 2 uses
  %i.k = icmp eq ptr %i.j, %1
  br i1 %i.k, label %_ZNK20btAlignedObjectArrayIP10btSoftBodyE16findLinearSearchERKS1_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN24btSoftRigidDynamicsWorld14removeSoftBodyEP10btSoftBody.exit, label %bb.c, !llvm.loop !198

_ZNK20btAlignedObjectArrayIP10btSoftBodyE16findLinearSearchERKS1_.exit.i.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i.i
  %i.m = add nsw i32 %i.e, -1                     ; 2 uses
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !97
  store ptr %i.p, ptr %i.l, align 8, !tbaa !97
  store ptr %i.j, ptr %i.o, align 8, !tbaa !97
  store i32 %i.m, ptr %i.d, align 4, !tbaa !19
  br label %_ZN24btSoftRigidDynamicsWorld14removeSoftBodyEP10btSoftBody.exit

_ZN24btSoftRigidDynamicsWorld14removeSoftBodyEP10btSoftBody.exit: ; preds = %bb.d, %bb.b, %_ZNK20btAlignedObjectArrayIP10btSoftBodyE16findLinearSearchERKS1_.exit.i.i
  tail call void @_ZN16btCollisionWorld21removeCollisionObjectEP17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(689) %0, ptr noundef nonnull %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN23btDiscreteDynamicsWorld21removeCollisionObjectEP17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(508) %0, ptr noundef nonnull %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN24btSoftRigidDynamicsWorld14removeSoftBodyEP10btSoftBody.exit
  ret void
}

declare void @_ZN23btDiscreteDynamicsWorld21removeCollisionObjectEP17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(508), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN24btSoftRigidDynamicsWorld14debugDrawWorldEv(ptr noundef nonnull align 8 dereferenceable(689) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN23btDiscreteDynamicsWorld14debugDrawWorldEv(ptr noundef nonnull align 8 dereferenceable(508) %0)
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(121) %0)
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 516 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !19
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 549
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 550
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !97   ; 5 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(121) %0)
  %.not9 = icmp eq ptr %i.t, null
  br i1 %.not9, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef ptr %i.w(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  %i.ac = and i32 %i.ab, 1
  %.not10 = icmp eq i32 %i.ac, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !200
  tail call void @_ZN17btSoftBodyHelpers9DrawFrameEP10btSoftBodyP12btIDebugDraw(ptr noundef %i.p, ptr noundef %i.ad)
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !200
  %i.af = load i32, ptr %i.j, align 8, !tbaa !65
  tail call void @_ZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawi(ptr noundef %i.p, ptr noundef %i.ae, i32 noundef %i.af)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !200 ; 3 uses
  %.not11 = icmp eq ptr %i.ag, null
  br i1 %.not11, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef i32 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
  %i.al = and i32 %i.ak, 2
  %.not12 = icmp eq i32 %i.al, 0
  br i1 %.not12, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = load i8, ptr %i.k, align 4, !tbaa !66, !range !93, !noundef !94
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !200
  tail call void @_ZN17btSoftBodyHelpers12DrawNodeTreeEP10btSoftBodyP12btIDebugDrawii(ptr noundef %i.p, ptr noundef %i.ao, i32 noundef 0, i32 noundef -1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = load i8, ptr %i.l, align 1, !tbaa !67, !range !93, !noundef !94
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !200
  tail call void @_ZN17btSoftBodyHelpers12DrawFaceTreeEP10btSoftBodyP12btIDebugDrawii(ptr noundef %i.p, ptr noundef %i.ar, i32 noundef 0, i32 noundef -1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.as = load i8, ptr %i.m, align 2, !tbaa !68, !range !93, !noundef !94
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !200
  tail call void @_ZN17btSoftBodyHelpers15DrawClusterTreeEP10btSoftBodyP12btIDebugDrawii(ptr noundef %i.p, ptr noundef %i.au, i32 noundef 0, i32 noundef -1)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.av = load i32, ptr %i.e, align 4, !tbaa !19
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %bb.b, label %.loopexit, !llvm.loop !201

.loopexit:                                        ; preds = %bb.m, %.preheader, %bb.a
  ret void
}

declare void @_ZN23btDiscreteDynamicsWorld14debugDrawWorldEv(ptr noundef nonnull align 8 dereferenceable(508)) unnamed_addr #1

declare void @_ZN17btSoftBodyHelpers9DrawFrameEP10btSoftBodyP12btIDebugDraw(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN17btSoftBodyHelpers12DrawNodeTreeEP10btSoftBodyP12btIDebugDrawii(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN17btSoftBodyHelpers12DrawFaceTreeEP10btSoftBodyP12btIDebugDrawii(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN17btSoftBodyHelpers15DrawClusterTreeEP10btSoftBodyP12btIDebugDrawii(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK24btSoftRigidDynamicsWorld7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE(ptr noundef nonnull align 8 dereferenceable(689) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.CProfileSample, align 1      ; 6 uses
  %5 = alloca %struct.btSoftSingleRayCallback, align 8 ; 30 uses
  %6 = alloca %class.btVector3, align 4           ; 5 uses
  %7 = alloca %class.btVector3, align 4           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull @.str.2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV23btSoftSingleRayCallback, i64 16), ptr %5, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !202
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !202
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %0, ptr %i.e, align 8, !tbaa !204
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 224
  store ptr %3, ptr %i.f, align 8, !tbaa !210
  store float 1.000000e+00, ptr %i.c, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 76
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 4, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 116
  store i32 0, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 140
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 156
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.p, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 180
  store i32 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !21
  %i.w = fsub float %i.t, %i.v                    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = load <2 x float>, ptr %2, align 4, !tbaa !21
  %i.z = load <2 x float>, ptr %1, align 4, !tbaa !21
  %i.aa = fsub <2 x float> %i.y, %i.z             ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.aa, %i.aa
  %i.ab = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ac = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.ad = call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.ab)
  %i.ae = call noundef float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.ad)
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.ae)
  %i.af = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.ag = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %i.aa, %i.ah           ; 4 uses
  %i.aj = fmul float %i.w, %i.af                  ; 3 uses
  %i.ak = fcmp oeq <2 x float> %i.ai, zeroinitializer
  %i.al = fdiv <2 x float> splat (float 1.000000e+00), %i.ai
  %i.am = select <2 x i1> %i.ak, <2 x float> splat (float 1.000000e+30), <2 x float> %i.al ; 2 uses
  store <2 x float> %i.am, ptr %i.x, align 8, !tbaa !21
  %i.an = fcmp oeq float %i.aj, 0.000000e+00
  %i.ao = fdiv float 1.000000e+00, %i.aj
  %i.ap = select i1 %i.an, float 1.000000e+30, float %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store float %i.ap, ptr %i.aq, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.as = fcmp olt <2 x float> %i.am, zeroinitializer
  %i.at = zext <2 x i1> %i.as to <2 x i32>
  store <2 x i32> %i.at, ptr %i.ar, align 8, !tbaa !211
  %i.au = fcmp olt float %i.ap, 0.000000e+00
  %i.av = zext i1 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !211
  %i.ax = load float, ptr %i.b, align 8, !tbaa !21
  %i.ay = load float, ptr %i.a, align 8, !tbaa !21
  %i.az = fsub float %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 60
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 44
  %8 = load <2 x float>, ptr %i.ba, align 4, !tbaa !21
  %9 = load <2 x float>, ptr %i.bb, align 4, !tbaa !21
  %10 = fsub <2 x float> %8, %9                   ; 2 uses
  %shift = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop15 = fmul <2 x float> %shift, %10
  %11 = extractelement <2 x float> %foldExtExtBinop15, i64 0
  %i.bc = extractelement <2 x float> %i.ai, i64 0
  %12 = call float @llvm.fmuladd.f32(float %i.bc, float %i.az, float %11)
  %i.bd = extractelement <2 x float> %10, i64 1
  %i.be = call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.bd, float %12)
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 36
  store float %i.be, ptr %i.bf, align 4, !tbaa !212
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !213 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void

bb.c:                                             ; preds = %bb.a
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %i.bl
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN24btBroadphaseAabbCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN24btSoftRigidDynamicsWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RN16btCollisionWorld17RayResultCallbackE(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(36) %5) local_unnamed_addr #8 align 2 {
bb.a:
  %6 = alloca %"struct.btSoftBody::sRayCast", align 8 ; 6 uses
  %7 = alloca %"struct.btCollisionWorld::LocalShapeInfo", align 4 ; 5 uses
  %8 = alloca %"struct.btCollisionWorld::LocalRayResult", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !214
  %i.c = icmp eq i32 %i.b, 32
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.e = load i32, ptr %i.d, align 8, !tbaa !199
  %i.f = icmp ne i32 %i.e, 8
  %.not53 = icmp eq ptr %2, null
  %.not = or i1 %.not53, %i.f
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = call noundef zeroext i1 @_ZN10btSoftBody7rayTestERK9btVector3S2_RNS_8sRayCastE(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br i1 %i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = load float, ptr %i.j, align 8, !tbaa !216 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load float, ptr %i.l, align 8, !tbaa !219
  %i.n = fcmp ugt float %i.k, %i.m
  br i1 %i.n, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !tbaa !222
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !224  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.p, ptr %i.q, align 4, !tbaa !225
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load float, ptr %i.r, align 4, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load float, ptr %i.t, align 4, !tbaa !21
  %i.v = fsub float %i.s, %i.u                    ; 4 uses
  %i.w = fneg float %i.v
  %i.x = load <2 x float>, ptr %i.h, align 4, !tbaa !21
  %i.y = load <2 x float>, ptr %i.g, align 4, !tbaa !21
  %i.z = fsub <2 x float> %i.x, %i.y              ; 5 uses
  %i.aa = fneg <2 x float> %i.z
  %foldExtExtBinop56 = fmul <2 x float> %i.z, %i.z
  %i.ab = extractelement <2 x float> %foldExtExtBinop56, i64 1
  %i.ac = extractelement <2 x float> %i.z, i64 0  ; 3 uses
  %i.ad = call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.ab)
  %i.ae = call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.ad)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.ae)
  %i.af = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ag = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %i.ah, %i.aa
  %i.aj = fmul float %i.af, %i.w
  %.sroa.14.8.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aj, i64 0
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !226
  %i.am = icmp eq i32 %i.al, 3
  br i1 %i.am, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 1040
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !227
  %i.ap = sext i32 %i.p to i64
  %i.aq = getelementptr inbounds [144 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.ar, align 8 ; 4 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %.sroa.14.0.copyload = load <2 x float>, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !203 ; 2 uses
  %.sroa.0.0.vec.extract30 = extractelement <2 x float> %.sroa.0.0.copyload, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.z, %.sroa.0.0.copyload
  %i.as = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.at = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract30, float %i.ac, float %i.as)
  %.sroa.14.8.vec.extract43 = extractelement <2 x float> %.sroa.14.0.copyload, i64 0 ; 2 uses
  %i.au = call noundef float @llvm.fmuladd.f32(float %.sroa.14.8.vec.extract43, float %i.v, float %i.at)
  %i.av = fcmp ogt float %i.au, 0.000000e+00
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = fneg <2 x float> %.sroa.0.0.copyload
  %i.ax = fneg float %.sroa.14.8.vec.extract43
  %.sroa.3.12.vec.insert.i25 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ax, i64 0
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.sroa.14.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i25, %bb.g ], [ %.sroa.14.0.copyload, %bb.f ], [ %.sroa.14.8.vec.insert, %bb.e ]
  %.sroa.0.0 = phi <2 x float> [ %i.aw, %bb.g ], [ %.sroa.0.0.copyload, %bb.f ], [ %i.ai, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  store ptr %2, ptr %8, align 8, !tbaa !228
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %7, ptr %i.ay, align 8, !tbaa !231
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16
  store <2 x float> %.sroa.0.0, ptr %i.az, align 8
  %.sroa.14.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store <2 x float> %.sroa.14.0, ptr %.sroa.14.0..sroa_idx39, align 8, !tbaa !203
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 32
  store float %i.k, ptr %i.ba, align 8, !tbaa !232
  %i.bb = load ptr, ptr %5, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef float %i.bd(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %8, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  tail call void @_ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackE(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(36) %5)
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.i, %bb.j
  ret void
}

declare noundef zeroext i1 @_ZN10btSoftBody7rayTestERK9btVector3S2_RNS_8sRayCastE(ptr noundef nonnull align 8 dereferenceable(2064), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackE(ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN24btSoftRigidDynamicsWorld19serializeSoftBodiesEP12btSerializer(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(689) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !233  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.ad, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !234
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !235  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  %i.j = load i32, ptr %i.i, align 8, !tbaa !199
  %i.k = and i32 %i.j, 8
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(372) %i.h)
  %i.p = sext i32 %i.o to i64
  %i.q = load ptr, ptr %1, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
end_hunk_0
