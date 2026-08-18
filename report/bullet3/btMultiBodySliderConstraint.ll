inline.NumInlined: 272
inline.NumDeleted: 88
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN27btMultiBodySliderConstraint20createConstraintRowsER20btAlignedObjectArrayI27btMultiBodySolverConstraintER23btMultiBodyJacobianDataRK19btContactSolverInfo:bb.a
  %i.tk = insertelement <2 x float> poison, float %i.ri, i64 0
  %i.tl = shufflevector <2 x float> %i.tk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sw, <2 x float> %i.tl, <2 x float> %i.tj)
  %i.tn = insertelement <2 x float> poison, float %i.rq, i64 0
  %i.to = shufflevector <2 x float> %i.tn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ta, <2 x float> %i.to, <2 x float> %i.tm)
  store <2 x float> %i.tp, ptr %i.tg, align 4, !tbaa !30, !alias.scope !87
  %i.tq = getelementptr inbounds nuw i8, ptr %10, i64 40
  store float %i.se, ptr %i.tq, align 4, !tbaa !30, !alias.scope !87
  %i.tr = getelementptr inbounds nuw i8, ptr %10, i64 44
  store float 0.000000e+00, ptr %i.tr, align 4, !tbaa !30, !alias.scope !87
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.ts = call noundef zeroext i1 @_ZN30btGeneric6DofSpring2Constraint16matrixToEulerXYZERK11btMatrix3x3R9btVector3(ptr noundef nonnull align 4 dereferenceable(48) %10, ptr noundef nonnull align 4 dereferenceable(16) %11) ; 0 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.ty = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.tz = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ua = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ud = getelementptr inbounds nuw i8, ptr %7, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void

bb.m:                                             ; preds = %.loopexit, %bb.z
  %indvars.iv = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next, %bb.z ] ; 6 uses
  %i.ue = load i32, ptr %i.tt, align 4, !tbaa !90 ; 8 uses
  %i.uf = load i32, ptr %i.tu, align 8, !tbaa !94
  %i.ug = icmp eq i32 %i.ue, %i.uf
  br i1 %i.ug, label %bb.n, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit

bb.n:                                             ; preds = %bb.m
  %.not.i.i = icmp eq i32 %i.ue, 0
  %i.uh = shl nsw i32 %i.ue, 1
  %i.ui = select i1 %.not.i.i, i32 1, i32 %i.uh   ; 4 uses
  %i.uj = icmp slt i32 %i.ue, %i.ui
  br i1 %i.uj, label %bb.o, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i = icmp eq i32 %i.ui, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.uk = sext i32 %i.ui to i64
  %i.ul = mul nsw i64 %i.uk, 224
  %i.um = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ul, i32 noundef 16)
  %.pre.i = load i32, ptr %i.tt, align 4, !tbaa !90
  br label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i: ; preds = %bb.p, %bb.o
  %i.un = phi i32 [ %.pre.i, %bb.p ], [ %i.ue, %bb.o ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.um, %bb.p ], [ null, %bb.o ] ; 4 uses
  %i.uo = icmp sgt i32 %i.un, 0
  br i1 %i.uo, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.un to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.up = icmp eq i32 %i.un, 1
  br i1 %i.up, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.q ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.q ]
  %i.uq = getelementptr inbounds nuw [224 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ur = load ptr, ptr %i.tv, align 8, !tbaa !95
  %i.us = getelementptr inbounds nuw [224 x i8], ptr %i.ur, i64 %indvars.iv.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.uq, ptr noundef nonnull align 8 dereferenceable(224) %i.us, i64 224, i1 false), !tbaa.struct !96
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ut = getelementptr inbounds nuw [224 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.uu = load ptr, ptr %i.tv, align 8, !tbaa !95
  %i.uv = getelementptr inbounds nuw [224 x i8], ptr %i.uu, i64 %indvars.iv.next.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ut, ptr noundef nonnull align 8 dereferenceable(224) %i.uv, i64 224, i1 false), !tbaa.struct !96
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.q, !llvm.loop !101

_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod286 = trunc i32 %i.un to i1
  call void @llvm.assume(i1 %lcmp.mod286)
  %i.uw = getelementptr inbounds nuw [224 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.ux = load ptr, ptr %i.tv, align 8, !tbaa !95
  %i.uy = getelementptr inbounds nuw [224 x i8], ptr %i.ux, i64 %indvars.iv.i.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.uw, ptr noundef nonnull align 8 dereferenceable(224) %i.uy, i64 224, i1 false), !tbaa.struct !96
  br label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i
  %i.uz = load ptr, ptr %i.tv, align 8, !tbaa !95 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.uz, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i
  %i.va = load i8, ptr %i.tw, align 8, !tbaa !102, !range !39, !noundef !40
  %i.vb = trunc nuw i8 %i.va to i1
  br i1 %i.vb, label %bb.s, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i

bb.s:                                             ; preds = %bb.r
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.uz)
  br label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i: ; preds = %bb.s, %bb.r, %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.tw, align 8, !tbaa !102
  store ptr %.0.i.i.i, ptr %i.tv, align 8, !tbaa !95
  store i32 %i.ui, ptr %i.tu, align 8, !tbaa !94
  %.pre2.i = load i32, ptr %i.tt, align 4, !tbaa !90
  br label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit

_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit: ; preds = %bb.m, %bb.n, %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i
  %i.vc = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i ], [ %i.ue, %bb.n ], [ %i.ue, %bb.m ]
  %i.vd = add nsw i32 %i.vc, 1
  store i32 %i.vd, ptr %i.tt, align 4, !tbaa !90
  %i.ve = load ptr, ptr %i.tv, align 8, !tbaa !95
  %i.vf = sext i32 %i.ue to i64
  %i.vg = getelementptr inbounds [224 x i8], ptr %i.ve, i64 %i.vf ; 7 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 208
  store ptr %0, ptr %i.vh, align 8, !tbaa !103
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vg, i64 216
  %i.vj = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.vj, ptr %i.vi, align 8, !tbaa !105
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.vk, i8 0, i64 96, i1 false)
  %i.vl = load i32, ptr %i.tx, align 8, !tbaa !106 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vg, i64 168 ; 2 uses
  store i32 %i.vl, ptr %i.vm, align 8, !tbaa !109
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vg, i64 188 ; 2 uses
  store i32 %i.vl, ptr %i.vn, align 4, !tbaa !110
  %i.vo = load ptr, ptr %i.h, align 8, !tbaa !11  ; 2 uses
  %.not65 = icmp eq ptr %i.vo, null
  br i1 %.not65, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 232
  %i.vq = load i32, ptr %i.vp, align 8, !tbaa !111
  store i32 %i.vq, ptr %i.vm, align 8, !tbaa !109
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit
  %i.vr = load ptr, ptr %i.gz, align 8, !tbaa !24 ; 2 uses
  %.not66 = icmp eq ptr %i.vr, null
  br i1 %.not66, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 232
  %i.vt = load i32, ptr %i.vs, align 8, !tbaa !111
  store i32 %i.vt, ptr %i.vn, align 4, !tbaa !110
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.vu = icmp samesign ult i64 %indvars.iv, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  br i1 %i.vu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.vv = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %i.vv, i64 16, i1 false), !tbaa.struct !25
  %i.vw = load float, ptr %4, align 8, !tbaa !30
  %i.vx = load float, ptr %7, align 8, !tbaa !30
  %i.vy = fsub float %i.vw, %i.vx
  %i.vz = load <2 x float>, ptr %i.uc, align 4, !tbaa !30
  %i.wa = load <2 x float>, ptr %i.ud, align 4, !tbaa !30
  %i.wb = fsub <2 x float> %i.vz, %i.wa           ; 2 uses
  %i.wc = load float, ptr %12, align 4, !tbaa !30
  %i.wd = load float, ptr %i.ty, align 4, !tbaa !30
  %i.we = extractelement <2 x float> %i.wb, i64 0
  %i.wf = fmul float %i.we, %i.wd
  %i.wg = call float @llvm.fmuladd.f32(float %i.vy, float %i.wc, float %i.wf)
  %i.wh = load float, ptr %i.tz, align 4, !tbaa !30
  %i.wi = extractelement <2 x float> %i.wb, i64 1
  %i.wj = call noundef float @llvm.fmuladd.f32(float %i.wi, float %i.wh, float %i.wg)
  %i.wk = load float, ptr %i.ub, align 4, !tbaa !112 ; 2 uses
  %i.wl = fneg float %i.wk
  %i.wm = call noundef float @_ZN21btMultiBodyConstraint23fillMultiBodyConstraintER27btMultiBodySolverConstraintR23btMultiBodyJacobianDataPfS4_RK9btVector3S7_S7_S7_fRK19btContactSolverInfoffbfbfff(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(220) %i.vg, ptr noundef nonnull align 8 dereferenceable(204) %2, ptr noundef null, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef %i.wj, ptr noundef nonnull align 4 dereferenceable(128) %3, float noundef %i.wl, float noundef %i.wk, i1 noundef zeroext false, float noundef 1.000000e+00, i1 noundef zeroext false, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) ; 0 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %.cmp = icmp eq i64 %indvars.iv, 2
  %14 = trunc i64 %indvars.iv to i32
  %15 = add i32 %14, -3
  %16 = select i1 %.cmp, i32 2, i32 %15           ; 2 uses
  %17 = sext i32 %16 to i64                       ; 3 uses
  %i.wn = getelementptr inbounds [4 x i8], ptr %5, i64 %17
  %i.wo = getelementptr inbounds [4 x i8], ptr %i.d, i64 %17
  %i.wp = getelementptr inbounds [4 x i8], ptr %i.f, i64 %17
  %i.wq = load float, ptr %i.wn, align 4, !tbaa !30
  %.sroa.0.0.vec.insert.i106 = insertelement <2 x float> poison, float %i.wq, i64 0
  %i.wr = load float, ptr %i.wo, align 4, !tbaa !30
  %.sroa.0.4.vec.insert.i107 = insertelement <2 x float> %.sroa.0.0.vec.insert.i106, float %i.wr, i64 1
  %i.ws = load float, ptr %i.wp, align 4, !tbaa !30
  %.sroa.3.12.vec.insert.i108 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ws, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i107, ptr %13, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i108, ptr %i.ua, align 8, !tbaa !26
  %18 = zext nneg i32 %16 to i64
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %18
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !30
  %i.wv = load float, ptr %i.ub, align 4, !tbaa !112 ; 2 uses
  %i.ww = fneg float %i.wv
  %i.wx = call noundef float @_ZN21btMultiBodyConstraint23fillMultiBodyConstraintER27btMultiBodySolverConstraintR23btMultiBodyJacobianDataPfS4_RK9btVector3S7_S7_S7_fRK19btContactSolverInfoffbfbfff(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(220) %i.vg, ptr noundef nonnull align 8 dereferenceable(204) %2, ptr noundef null, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef %i.wu, ptr noundef nonnull align 4 dereferenceable(128) %3, float noundef %i.ww, float noundef %i.wv, i1 noundef zeroext true, float noundef 1.000000e+00, i1 noundef zeroext false, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %bb.l, label %bb.m, !llvm.loop !113
}

declare { <2 x float>, <2 x float> } @_ZNK11btRigidBody14getOrientationEv(ptr noundef nonnull align 8 dereferenceable(744)) local_unnamed_addr #1

declare { <2 x float>, <2 x float> } @_ZNK11btMultiBody15localPosToWorldEiRK9btVector3(ptr noundef nonnull align 8 dereferenceable(640), i32 noundef, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZNK11btMultiBody17localFrameToWorldEiRK11btMatrix3x3(ptr dead_on_unwind writable sret(%class.btMatrix3x3) align 4, ptr noundef nonnull align 8 dereferenceable(640), i32 noundef, ptr noundef nonnull align 4 dereferenceable(48)) local_unnamed_addr #1

declare { <2 x float>, <2 x float> } @_ZNK11btMultiBody15localDirToWorldEiRK9btVector3(ptr noundef nonnull align 8 dereferenceable(640), i32 noundef, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN30btGeneric6DofSpring2Constraint16matrixToEulerXYZERK11btMatrix3x3R9btVector3(ptr noundef nonnull align 4 dereferenceable(48), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #1

declare noundef float @_ZN21btMultiBodyConstraint23fillMultiBodyConstraintER27btMultiBodySolverConstraintR23btMultiBodyJacobianDataPfS4_RK9btVector3S7_S7_S7_fRK19btContactSolverInfoffbfbfff(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(220), ptr noundef nonnull align 8 dereferenceable(204), ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), float noundef, ptr noundef nonnull align 4 dereferenceable(128), float noundef, float noundef, i1 noundef zeroext, float noundef, i1 noundef zeroext, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN27btMultiBodySliderConstraint9debugDrawEP12btIDebugDraw(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1) unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %class.btTransform, align 4         ; 20 uses
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11   ; 10 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.l = load float, ptr %i.i, align 8, !tbaa !30 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.n = load float, ptr %i.m, align 4, !tbaa !30 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = load float, ptr %i.o, align 8, !tbaa !30 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.r = load float, ptr %i.q, align 4, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.t = load float, ptr %i.s, align 4, !tbaa !30
  %i.u = load float, ptr %i.k, align 4, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.w = load float, ptr %i.v, align 4, !tbaa !30
  %i.x = fmul float %i.n, %i.w
  %i.y = tail call float @llvm.fmuladd.f32(float %i.l, float %i.u, float %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.aa = load float, ptr %i.z, align 4, !tbaa !30
  %i.ab = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.aa, float %i.y)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ad = load <2 x float>, ptr %i.h, align 4, !tbaa !30 ; 2 uses
  %i.ae = load <2 x float>, ptr %i.j, align 4, !tbaa !30 ; 2 uses
  %i.af = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = shufflevector <2 x float> %i.ad, <2 x float> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.ai = fmul <2 x float> %i.ag, %i.ah
  %i.aj = insertelement <2 x float> poison, float %i.l, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = shufflevector <2 x float> %i.ad, <2 x float> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.al, <2 x float> %i.ai)
  %i.an = insertelement <2 x float> poison, float %i.p, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = insertelement <2 x float> poison, float %i.r, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.t, i64 1
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.aq, <2 x float> %i.am)
  %i.as = load <2 x float>, ptr %i.ac, align 4, !tbaa !30
  %i.at = fadd <2 x float> %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.av = load float, ptr %i.au, align 4, !tbaa !30
  %i.aw = fadd float %i.ab, %i.av
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aw, i64 0
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x float> %i.at, ptr %i.ax, align 4
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.418.0..sroa_idx, align 4, !tbaa !26
  %i.ay = load ptr, ptr %1, align 8, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, float noundef 1.000000e-01)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !44 ; 2 uses
  %.not5 = icmp eq ptr %i.bc, null
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !45
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bg = call { <2 x float>, <2 x float> } @_ZNK11btMultiBody15localPosToWorldEiRK9btVector3(ptr noundef nonnull align 8 dereferenceable(640) %i.bc, i32 noundef %i.be, ptr noundef nonnull align 4 dereferenceable(16) %i.bf) ; 2 uses
  %i.bh = extractvalue { <2 x float>, <2 x float> } %i.bg, 0
  %i.bi = extractvalue { <2 x float>, <2 x float> } %i.bg, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x float> %i.bh, ptr %i.bj, align 4
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store <2 x float> %i.bi, ptr %.sroa.416.0..sroa_idx, align 4, !tbaa !26
  %i.bk = load ptr, ptr %1, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, float noundef 1.000000e-01)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !24 ; 10 uses
  %.not6 = icmp eq ptr %i.bo, null
  br i1 %.not6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bt = load float, ptr %i.bq, align 8, !tbaa !30 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !30 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !30 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bz = load float, ptr %i.by, align 4, !tbaa !30
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !30
  %i.cc = load float, ptr %i.bs, align 4, !tbaa !30
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 44
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !30
  %i.cf = fmul float %i.bv, %i.ce
  %i.cg = call float @llvm.fmuladd.f32(float %i.bt, float %i.cc, float %i.cf)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !30
  %i.cj = call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.ci, float %i.cg)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.cl = load <2 x float>, ptr %i.bp, align 4, !tbaa !30 ; 2 uses
  %i.cm = load <2 x float>, ptr %i.br, align 4, !tbaa !30 ; 2 uses
  %i.cn = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = shufflevector <2 x float> %i.cl, <2 x float> %i.cm, <2 x i32> <i32 1, i32 3>
  %i.cq = fmul <2 x float> %i.co, %i.cp
  %i.cr = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = shufflevector <2 x float> %i.cl, <2 x float> %i.cm, <2 x i32> <i32 0, i32 2>
  %i.cu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.ct, <2 x float> %i.cq)
  %i.cv = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cb, i64 1
  %i.cz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.cy, <2 x float> %i.cu)
  %i.da = load <2 x float>, ptr %i.ck, align 4, !tbaa !30
  %i.db = fadd <2 x float> %i.cz, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !30
  %i.de = fadd float %i.cj, %i.dd
  %.sroa.3.12.vec.insert.i4.i.i10 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.de, i64 0
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x float> %i.db, ptr %i.df, align 4
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i10, ptr %.sroa.414.0..sroa_idx, align 4, !tbaa !26
  %i.dg = load ptr, ptr %1, align 8, !tbaa !9
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 128
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, float noundef 1.000000e-01)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !76 ; 2 uses
  %.not7 = icmp eq ptr %i.dk, null
  br i1 %.not7, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !77
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.do = call { <2 x float>, <2 x float> } @_ZNK11btMultiBody15localPosToWorldEiRK9btVector3(ptr noundef nonnull align 8 dereferenceable(640) %i.dk, i32 noundef %i.dm, ptr noundef nonnull align 4 dereferenceable(16) %i.dn) ; 2 uses
  %i.dp = extractvalue { <2 x float>, <2 x float> } %i.do, 0
  %i.dq = extractvalue { <2 x float>, <2 x float> } %i.do, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x float> %i.dp, ptr %i.dr, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
end_hunk_0
