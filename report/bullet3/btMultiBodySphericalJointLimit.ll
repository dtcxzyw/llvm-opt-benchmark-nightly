Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBodySphericalJointLimit?download=true
inline.NumInlined: 275
inline.NumDeleted: 77
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN30btMultiBodySphericalJointLimit20createConstraintRowsER20btAlignedObjectArrayI27btMultiBodySolverConstraintER23btMultiBodyJacobianDataRK19btContactSolverInfo:bb.a
  %.pre.i = load i32, ptr %i.jh, align 4, !tbaa !74
  br label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i: ; preds = %bb.r, %bb.q
  %i.lv = phi i32 [ %.pre.i, %bb.r ], [ %i.lm, %bb.q ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.lu, %bb.r ], [ null, %bb.q ] ; 4 uses
  %i.lw = icmp sgt i32 %i.lv, 0
  br i1 %i.lw, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.lv to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.lx = icmp eq i32 %i.lv, 1
  br i1 %i.lx, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.s ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.s ]
  %i.ly = getelementptr inbounds nuw [224 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.lz = load ptr, ptr %i.jj, align 8, !tbaa !79
  %i.ma = getelementptr inbounds nuw [224 x i8], ptr %i.lz, i64 %indvars.iv.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ly, ptr noundef nonnull align 8 dereferenceable(224) %i.ma, i64 224, i1 false), !tbaa.struct !80
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.mb = getelementptr inbounds nuw [224 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.mc = load ptr, ptr %i.jj, align 8, !tbaa !79
  %i.md = getelementptr inbounds nuw [224 x i8], ptr %i.mc, i64 %indvars.iv.next.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.mb, ptr noundef nonnull align 8 dereferenceable(224) %i.md, i64 224, i1 false), !tbaa.struct !80
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.s, !llvm.loop !85

_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod225 = trunc i32 %i.lv to i1
  call void @llvm.assume(i1 %lcmp.mod225)
  %i.me = getelementptr inbounds nuw [224 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.mf = load ptr, ptr %i.jj, align 8, !tbaa !79
  %i.mg = getelementptr inbounds nuw [224 x i8], ptr %i.mf, i64 %indvars.iv.i.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.me, ptr noundef nonnull align 8 dereferenceable(224) %i.mg, i64 224, i1 false), !tbaa.struct !80
  br label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i
  %i.mh = load ptr, ptr %i.jj, align 8, !tbaa !79 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.mh, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i
  %i.mi = load i8, ptr %i.jk, align 8, !tbaa !87, !range !72, !noundef !73
  %i.mj = trunc nuw i8 %i.mi to i1
  br i1 %i.mj, label %bb.u, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i

bb.u:                                             ; preds = %bb.t
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.mh)
  br label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i: ; preds = %bb.u, %bb.t, %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.jk, align 8, !tbaa !87
  store ptr %.0.i.i.i, ptr %i.jj, align 8, !tbaa !79
  store i32 %i.lq, ptr %i.ji, align 8, !tbaa !78
  %.pre2.i = load i32, ptr %i.jh, align 4, !tbaa !74
  br label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit

_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit: ; preds = %bb.o, %bb.p, %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i
  %i.mk = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i ], [ %i.lm, %bb.p ], [ %i.lm, %bb.o ]
  %i.ml = add nsw i32 %i.mk, 1
  store i32 %i.ml, ptr %i.jh, align 4, !tbaa !74
  %i.mm = load ptr, ptr %i.jj, align 8, !tbaa !79
  %i.mn = sext i32 %i.lm to i64
  %i.mo = getelementptr inbounds [224 x i8], ptr %i.mm, i64 %i.mn ; 3 uses
  %i.mp = call noundef float @_ZN21btMultiBodyConstraint23fillMultiBodyConstraintER27btMultiBodySolverConstraintR23btMultiBodyJacobianDataPfS4_RK9btVector3S7_S7_S7_fRK19btContactSolverInfoffbfbfff(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(220) %i.mo, ptr noundef nonnull align 8 dereferenceable(204) %2, ptr noundef null, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef %i.lg, ptr noundef nonnull align 4 dereferenceable(128) %3, float noundef %.0, float noundef %.047, i1 noundef zeroext true, float noundef 1.000000e+00, i1 noundef zeroext false, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %.048) ; 0 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 208
  store ptr %0, ptr %i.mq, align 8, !tbaa !88
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 216
  store i32 %i.kl, ptr %i.mr, align 8, !tbaa !90
  br label %bb.v

bb.v:                                             ; preds = %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.j, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ms = load i32, ptr %i.is, align 4, !tbaa !48
  %i.mt = sext i32 %i.ms to i64
  %i.mu = icmp slt i64 %indvars.iv.next, %i.mt
  br i1 %i.mu, label %bb.i, label %._crit_edge, !llvm.loop !91

bb.x:                                             ; preds = %.thread, %bb.b, %._crit_edge
  ret void
}

declare noundef ptr @_ZN11btMultiBody19getJointPosMultiDofEi(ptr noundef nonnull align 8 dereferenceable(640), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN30btGeneric6DofSpring2Constraint16matrixToEulerXYZERK11btMatrix3x3R9btVector3(ptr noundef nonnull align 4 dereferenceable(48), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #1

declare noundef ptr @_ZN11btMultiBody19getJointVelMultiDofEi(ptr noundef nonnull align 8 dereferenceable(640), i32 noundef) local_unnamed_addr #1

declare void @_ZNK11btMultiBody17localFrameToWorldEiRK11btMatrix3x3(ptr dead_on_unwind writable sret(%class.btMatrix3x3) align 4, ptr noundef nonnull align 8 dereferenceable(640), i32 noundef, ptr noundef nonnull align 4 dereferenceable(48)) local_unnamed_addr #1

declare noundef float @_ZN21btMultiBodyConstraint23fillMultiBodyConstraintER27btMultiBodySolverConstraintR23btMultiBodyJacobianDataPfS4_RK9btVector3S7_S7_S7_fRK19btContactSolverInfoffbfbfff(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(220), ptr noundef nonnull align 8 dereferenceable(204), ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), float noundef, ptr noundef nonnull align 4 dereferenceable(128), float noundef, float noundef, i1 noundef zeroext, float noundef, i1 noundef zeroext, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30btMultiBodySphericalJointLimit9debugDrawEP12btIDebugDraw(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1) unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %class.btTransform, align 4         ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store float 1.000000e+00, ptr %2, align 4, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.k = tail call { <2 x float>, <2 x float> } @_ZNK11btMultiBody15localPosToWorldEiRK9btVector3(ptr noundef nonnull align 8 dereferenceable(640) %i.g, i32 noundef %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.j) ; 2 uses
  %i.l = extractvalue { <2 x float>, <2 x float> } %i.k, 0
  %i.m = extractvalue { <2 x float>, <2 x float> } %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x float> %i.l, ptr %i.n, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store <2 x float> %i.m, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !40
  %i.o = load ptr, ptr %1, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, float noundef 1.000000e-01)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

declare { <2 x float>, <2 x float> } @_ZNK11btMultiBody15localPosToWorldEiRK9btVector3(ptr noundef nonnull align 8 dereferenceable(640), i32 noundef, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21btMultiBodyConstraint11setFrameInBERK11btMatrix3x3(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21btMultiBodyConstraint11setPivotInBERK9btVector3(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21btMultiBodyConstraint12setGearRatioEf(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21btMultiBodyConstraint14setGearAuxLinkEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21btMultiBodyConstraint25setRelativePositionTargetEf(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN30btMultiBodySphericalJointLimit6setErpEf(ptr noundef nonnull align 8 dereferenceable(232) %0, float noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  store float %1, ptr %i.a, align 4, !tbaa !92
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN30btMultiBodySphericalJointLimit17setVelocityTargetERK9btVector3f(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132
  store float %2, ptr %i.b, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %2, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.c, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN30btMultiBodySphericalJointLimit25setVelocityTargetMultiDofERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.c, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN30btMultiBodySphericalJointLimit17setPositionTargetERK12btQuaternionf(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float %2, ptr %i.b, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store float %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156
  store float %2, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.c, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN30btMultiBodySphericalJointLimit25setPositionTargetMultiDofERK12btQuaternionRK9btVector3(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 148
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.c, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK30btMultiBodySphericalJointLimit6getErpEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.b = load float, ptr %i.a, align 4, !tbaa !92
  ret float %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN30btMultiBodySphericalJointLimit11setRhsClampEf(ptr noundef nonnull align 8 dereferenceable(232) %0, float noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store float %1, ptr %i.a, align 8, !tbaa !93
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

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
!9 = !{!10, !12, i64 16}
!10 = !{!"_ZTS20btAlignedObjectArrayI15btMultibodyLinkE", !11, i64 0, !6, i64 4, !6, i64 8, !12, i64 16, !14, i64 24}
!11 = !{!"_ZTS18btAlignedAllocatorI15btMultibodyLinkLj16EE"}
!12 = !{!"p1 _ZTS15btMultibodyLink", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"bool", !7, i64 0}
!15 = !{!16, !6, i64 20}
!16 = !{!"_ZTS15btMultibodyLink", !17, i64 0, !18, i64 4, !6, i64 20, !19, i64 24, !18, i64 40, !18, i64 56, !21, i64 72, !21, i64 104, !7, i64 136, !6, i64 328, !6, i64 332, !19, i64 336, !18, i64 352, !19, i64 368, !18, i64 384, !18, i64 400, !18, i64 416, !18, i64 432, !18, i64 448, !7, i64 464, !7, i64 492, !7, i64 520, !22, i64 544, !6, i64 552, !6, i64 556, !6, i64 560, !23, i64 564, !24, i64 568, !25, i64 576, !27, i64 640, !27, i64 648, !13, i64 656, !17, i64 664, !17, i64 668, !17, i64 672, !17, i64 676, !17, i64 680, !17, i64 684}
!17 = !{!"float", !7, i64 0}
!18 = !{!"_ZTS9btVector3", !7, i64 0}
!19 = !{!"_ZTS12btQuaternion", !20, i64 0}
!20 = !{!"_ZTS10btQuadWord", !7, i64 0}
!21 = !{!"_ZTS21btSpatialMotionVector", !18, i64 0, !18, i64 16}
!22 = !{!"p1 _ZTS23btMultiBodyLinkCollider", !13, i64 0}
!23 = !{!"_ZTSN15btMultibodyLink22eFeatherstoneJointTypeE", !7, i64 0}
!24 = !{!"p1 _ZTS24btMultiBodyJointFeedback", !13, i64 0}
!25 = !{!"_ZTS11btTransform", !26, i64 0, !18, i64 48}
!26 = !{!"_ZTS11btMatrix3x3", !7, i64 0}
!27 = !{!"p1 omnipotent char", !13, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"vtable pointer", !8, i64 0}
!30 = !{!17, !17, i64 0}
!31 = !{!32, !14, i64 128}
!32 = !{!"_ZTS30btMultiBodySphericalJointLimit", !33, i64 0, !18, i64 96, !19, i64 112, !14, i64 128, !18, i64 132, !18, i64 148, !17, i64 164, !17, i64 168, !18, i64 172, !18, i64 188, !18, i64 204, !17, i64 220, !17, i64 224, !17, i64 228}
!33 = !{!"_ZTS21btMultiBodyConstraint", !34, i64 8, !34, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !14, i64 52, !6, i64 56, !17, i64 60, !35, i64 64}
!34 = !{!"p1 _ZTS11btMultiBody", !13, i64 0}
!35 = !{!"_ZTS20btAlignedObjectArrayIfE", !36, i64 0, !6, i64 4, !6, i64 8, !37, i64 16, !14, i64 24}
!36 = !{!"_ZTS18btAlignedAllocatorIfLj16EE"}
!37 = !{!"p1 float", !13, i64 0}
!38 = !{!33, !34, i64 8}
!39 = !{i64 0, i64 16, !40}
!40 = !{!7, !7, i64 0}
!41 = !{!33, !34, i64 16}
!42 = !{!32, !17, i64 220}
!43 = !{!32, !17, i64 224}
!44 = !{!32, !17, i64 228}
!45 = !{!33, !17, i64 60}
!46 = !{!33, !6, i64 24}
!47 = !{!16, !6, i64 328}
!48 = !{!33, !6, i64 36}
!49 = !{!35, !37, i64 16}
!50 = !{!33, !6, i64 44}
!51 = !{!33, !6, i64 40}
!52 = !{!33, !6, i64 56}
!53 = !{!54, !22, i64 8}
!54 = !{!"_ZTS11btMultiBody", !22, i64 8, !27, i64 16, !18, i64 24, !18, i64 40, !19, i64 56, !19, i64 72, !17, i64 88, !18, i64 92, !18, i64 108, !18, i64 124, !18, i64 140, !18, i64 156, !10, i64 176, !35, i64 208, !35, i64 240, !35, i64 272, !55, i64 304, !58, i64 336, !26, i64 368, !26, i64 416, !26, i64 464, !26, i64 512, !14, i64 560, !14, i64 561, !14, i64 562, !14, i64 563, !14, i64 564, !17, i64 568, !17, i64 572, !17, i64 576, !13, i64 584, !6, i64 592, !6, i64 596, !6, i64 600, !17, i64 604, !17, i64 608, !14, i64 612, !17, i64 616, !17, i64 620, !14, i64 624, !14, i64 625, !6, i64 628, !6, i64 632, !14, i64 636, !14, i64 637, !14, i64 638, !14, i64 639}
!55 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !56, i64 0, !6, i64 4, !6, i64 8, !57, i64 16, !14, i64 24}
!56 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!57 = !{!"p1 _ZTS9btVector3", !13, i64 0}
!58 = !{!"_ZTS20btAlignedObjectArrayI11btMatrix3x3E", !59, i64 0, !6, i64 4, !6, i64 8, !60, i64 16, !14, i64 24}
!59 = !{!"_ZTS18btAlignedAllocatorI11btMatrix3x3Lj16EE"}
!60 = !{!"p1 _ZTS11btMatrix3x3", !13, i64 0}
!61 = !{!16, !22, i64 544}
!62 = !{!63, !6, i64 228}
!63 = !{!"_ZTS17btCollisionObject", !25, i64 8, !25, i64 72, !18, i64 136, !18, i64 152, !18, i64 168, !6, i64 184, !17, i64 188, !64, i64 192, !65, i64 200, !13, i64 208, !65, i64 216, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !17, i64 244, !17, i64 248, !17, i64 252, !17, i64 256, !17, i64 260, !17, i64 264, !17, i64 268, !6, i64 272, !13, i64 280, !6, i64 288, !6, i64 292, !6, i64 296, !17, i64 300, !17, i64 304, !17, i64 308, !6, i64 312, !66, i64 320, !6, i64 352, !18, i64 356}
!64 = !{!"p1 _ZTS17btBroadphaseProxy", !13, i64 0}
!65 = !{!"p1 _ZTS16btCollisionShape", !13, i64 0}
!66 = !{!"_ZTS20btAlignedObjectArrayIPK17btCollisionObjectE", !67, i64 0, !6, i64 4, !6, i64 8, !68, i64 16, !14, i64 24}
!67 = !{!"_ZTS18btAlignedAllocatorIPK17btCollisionObjectLj16EE"}
!68 = !{!"p2 _ZTS17btCollisionObject", !69, i64 0}
!69 = !{!"any p2 pointer", !13, i64 0}
!70 = !{!33, !6, i64 28}
!71 = !{!16, !23, i64 564}
!72 = !{i8 0, i8 2}
!73 = !{}
!74 = !{!75, !6, i64 4}
!75 = !{!"_ZTS20btAlignedObjectArrayI27btMultiBodySolverConstraintE", !76, i64 0, !6, i64 4, !6, i64 8, !77, i64 16, !14, i64 24}
!76 = !{!"_ZTS18btAlignedAllocatorI27btMultiBodySolverConstraintLj16EE"}
!77 = !{!"p1 _ZTS27btMultiBodySolverConstraint", !13, i64 0}
!78 = !{!75, !6, i64 8}
!79 = !{!75, !77, i64 16}
!80 = !{i64 0, i64 4, !81, i64 4, i64 4, !81, i64 8, i64 4, !81, i64 12, i64 4, !81, i64 16, i64 16, !40, i64 32, i64 16, !40, i64 48, i64 16, !40, i64 64, i64 16, !40, i64 80, i64 16, !40, i64 96, i64 16, !40, i64 112, i64 4, !30, i64 116, i64 4, !30, i64 120, i64 4, !30, i64 124, i64 4, !30, i64 128, i64 4, !30, i64 132, i64 4, !30, i64 136, i64 4, !30, i64 140, i64 4, !30, i64 144, i64 4, !30, i64 152, i64 8, !40, i64 160, i64 4, !81, i64 164, i64 4, !81, i64 168, i64 4, !81, i64 176, i64 8, !82, i64 184, i64 4, !81, i64 188, i64 4, !81, i64 192, i64 8, !82, i64 200, i64 4, !81, i64 208, i64 8, !83, i64 216, i64 4, !81}
!81 = !{!6, !6, i64 0}
!82 = !{!34, !34, i64 0}
!83 = !{!84, !84, i64 0}
!84 = !{!"p1 _ZTS21btMultiBodyConstraint", !13, i64 0}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!75, !14, i64 24}
!88 = !{!89, !84, i64 208}
!89 = !{!"_ZTS27btMultiBodySolverConstraint", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !18, i64 16, !18, i64 32, !18, i64 48, !18, i64 64, !18, i64 80, !18, i64 96, !17, i64 112, !17, i64 116, !17, i64 120, !17, i64 124, !17, i64 128, !17, i64 132, !17, i64 136, !17, i64 140, !17, i64 144, !7, i64 152, !6, i64 160, !6, i64 164, !6, i64 168, !34, i64 176, !6, i64 184, !6, i64 188, !34, i64 192, !6, i64 200, !84, i64 208, !6, i64 216}
!90 = !{!89, !6, i64 216}
!91 = distinct !{!91, !86}
!92 = !{!32, !17, i64 164}
!93 = !{!32, !17, i64 168}
end_hunk_0
