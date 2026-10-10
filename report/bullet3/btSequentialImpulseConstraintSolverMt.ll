Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSequentialImpulseConstraintSolverMt?download=true
inline.NumInlined: 542
inline.NumDeleted: 189
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN37btSequentialImpulseConstraintSolverMt20solveSingleIterationEiPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDraw:bb.a

bb.q:                                             ; preds = %.loopexit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 152
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef float %i.bg(ptr noundef nonnull align 8 dereferenceable(920) %0)
          to label %bb.r unwind label %bb.e

bb.r:                                             ; preds = %bb.q
  %i.bi = fadd float %i.r, %i.bh
  br label %bb.w

bb.s:                                             ; preds = %.loopexit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 136
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = invoke noundef float %i.bk(ptr noundef nonnull align 8 dereferenceable(920) %0)
          to label %bb.t unwind label %bb.e

bb.t:                                             ; preds = %bb.s
  %i.bm = load ptr, ptr %0, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 144
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = invoke noundef float %i.bo(ptr noundef nonnull align 8 dereferenceable(920) %0)
          to label %bb.u unwind label %bb.e

bb.u:                                             ; preds = %bb.t
  %i.bq = load ptr, ptr %0, align 8, !tbaa !24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 160
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef float %i.bs(ptr noundef nonnull align 8 dereferenceable(920) %0)
          to label %bb.v unwind label %bb.e

bb.v:                                             ; preds = %bb.u
  %i.bu = fadd float %i.r, %i.bl
  %i.bv = fadd float %i.bu, %i.bp
  %i.bw = fadd float %i.bv, %i.bt
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %bb.v, %bb.g
  %.047 = phi float [ %i.bi, %bb.r ], [ %i.bw, %bb.v ], [ %i.r, %bb.g ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.y

bb.x:                                             ; preds = %bb.m, %bb.o, %bb.n, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.az, %bb.m ], [ %i.bb, %bb.o ], [ %i.ba, %bb.n ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  resume { ptr, i32 } %.pn.pn.pn

bb.y:                                             ; preds = %bb.w, %bb.b
  %.048 = phi float [ %.047, %bb.w ], [ %i.d, %bb.b ]
  ret float %.048
}

declare noundef float @_ZN35btSequentialImpulseConstraintSolver20solveSingleIterationEiPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDraw(ptr noundef nonnull align 8 dereferenceable(408), i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(128), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN37btSequentialImpulseConstraintSolverMt31resolveMultipleJointConstraintsERK20btAlignedObjectArrayIiEiii(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, %3
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = sext i32 %2 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.1, %bb.d ]
  ret float %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.e, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.020 = phi float [ 0.000000e+00, %.lr.ph ], [ %.1, %bb.d ] ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.g = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !75
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr inbounds [160 x i8], ptr %i.i, i64 %i.j ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !182
  %i.n = icmp slt i32 %4, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.p = load i32, ptr %i.o, align 8, !tbaa !79
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !81   ; 2 uses
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [248 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 156
  %i.u = load i32, ptr %i.t, align 4, !tbaa !80
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [248 x i8], ptr %i.q, i64 %i.v
  %i.x = tail call noundef float @_ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(248) %i.s, ptr noundef nonnull align 8 dereferenceable(248) %i.w, ptr noundef nonnull align 8 dereferenceable(160) %i.k) ; 2 uses
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float %i.x, float %.020)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi float [ %i.y, %bb.c ], [ %.020, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %3, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !5
}

declare noundef float @_ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN37btSequentialImpulseConstraintSolverMt33resolveMultipleContactConstraintsERK20btAlignedObjectArrayIiEii(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, %3
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = sext i32 %2 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.v, %bb.b ]
  ret float %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.e, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.018 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.v, %bb.b ]
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.g = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !75
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr inbounds [160 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.m = load i32, ptr %i.l, align 8, !tbaa !79
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !81   ; 2 uses
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [248 x i8], ptr %i.n, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 156
  %i.r = load i32, ptr %i.q, align 4, !tbaa !80
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [248 x i8], ptr %i.n, i64 %i.s
  %i.u = tail call noundef float @_ZN35btSequentialImpulseConstraintSolver36resolveSingleConstraintRowLowerLimitER12btSolverBodyS1_RK18btSolverConstraint(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(248) %i.p, ptr noundef nonnull align 8 dereferenceable(248) %i.t, ptr noundef nonnull align 8 dereferenceable(160) %i.k) ; 2 uses
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %.018) ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %3, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !6
}

declare noundef float @_ZN35btSequentialImpulseConstraintSolver36resolveSingleConstraintRowLowerLimitER12btSolverBodyS1_RK18btSolverConstraint(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN37btSequentialImpulseConstraintSolverMt41resolveMultipleContactFrictionConstraintsERK20btAlignedObjectArrayIiEii(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, %3
  br i1 %i.a, label %.lr.ph37, label %._crit_edge

.lr.ph37:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = sext i32 %2 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.2, %.loopexit ]
  ret float %.0.lcssa

bb.b:                                             ; preds = %.lr.ph37, %.loopexit
  %indvars.iv40 = phi i64 [ %i.g, %.lr.ph37 ], [ %indvars.iv.next41, %.loopexit ] ; 2 uses
  %.036 = phi float [ 0.000000e+00, %.lr.ph37 ], [ %.2, %.loopexit ] ; 3 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.i = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv40
  %i.j = load i32, ptr %i.i, align 4, !tbaa !75   ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds [160 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 100
  %i.o = load float, ptr %i.n, align 4, !tbaa !183 ; 3 uses
  %i.p = fcmp ogt float %i.o, 0.000000e+00
  br i1 %i.p, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.d, align 8, !tbaa !69   ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.s = mul i32 %i.q, %i.j                       ; 2 uses
  %i.t = add nsw i32 %i.s, %i.q
  %i.u = fneg float %i.o
  %i.v = sext i32 %i.s to i64
  %i.w = sext i32 %i.t to i64
  %4 = insertelement <2 x float> poison, float %i.u, i64 0
  %5 = insertelement <2 x float> %4, float %i.o, i64 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.v, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.134 = phi float [ %.036, %.lr.ph ], [ %i.am, %bb.d ]
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.y = getelementptr inbounds [160 x i8], ptr %i.x, i64 %indvars.iv ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.aa = load float, ptr %i.z, align 8, !tbaa !184
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %6 = insertelement <2 x float> poison, float %i.aa, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fmul <2 x float> %7, %5
  store <2 x float> %8, ptr %i.ab, align 8, !tbaa !86
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !79
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !81  ; 2 uses
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds [248 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 156
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !80
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [248 x i8], ptr %i.ae, i64 %i.aj
  %i.al = tail call noundef float @_ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(248) %i.ag, ptr noundef nonnull align 8 dereferenceable(248) %i.ak, ptr noundef nonnull align 8 dereferenceable(160) %i.y) ; 2 uses
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.al, float %.134) ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 2   ; 2 uses
  %i.an = icmp slt i64 %indvars.iv.next, %i.w
  br i1 %i.an, label %bb.d, label %.loopexit, !llvm.loop !7

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.b
  %.2 = phi float [ %.036, %bb.b ], [ %.036, %bb.c ], [ %i.am, %bb.d ] ; 2 uses
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next41 to i32
  %exitcond.not = icmp eq i32 %3, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !8
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN37btSequentialImpulseConstraintSolverMt48resolveMultipleContactRollingFrictionConstraintsERK20btAlignedObjectArrayIiEii(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, %3
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = sext i32 %2 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.5, %.loopexit ]
  ret float %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv51 = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next52, %.loopexit ] ; 2 uses
  %.049 = phi float [ 0.000000e+00, %.lr.ph ], [ %.5, %.loopexit ] ; 3 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.i = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv51
  %i.j = load i32, ptr %i.i, align 4, !tbaa !75   ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.l = sext i32 %i.j to i64                     ; 2 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !75   ; 3 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.q = getelementptr inbounds [160 x i8], ptr %i.p, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 100
  %i.s = load float, ptr %i.r, align 4, !tbaa !183 ; 2 uses
  %i.t = fcmp ogt float %i.s, 0.000000e+00
  br i1 %i.t, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.u = zext nneg i32 %i.n to i64
  %i.v = add nuw nsw i32 %i.n, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.f
  %indvars.iv = phi i64 [ %i.u, %bb.d ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.147 = phi float [ %.049, %bb.d ], [ %i.ar, %bb.f ] ; 2 uses
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.x = getelementptr inbounds nuw [160 x i8], ptr %i.w, i64 %indvars.iv ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 148
  %i.z = load i32, ptr %i.y, align 4, !tbaa !90
  %.not = icmp eq i32 %i.z, %i.j
  br i1 %.not, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !184 ; 3 uses
  %i.ac = fmul float %i.s, %i.ab                  ; 2 uses
  %i.ad = fcmp ogt float %i.ac, %i.ab
  %.036 = select i1 %i.ad, float %i.ab, float %i.ac ; 2 uses
  %i.ae = fneg float %.036
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  store float %i.ae, ptr %i.af, align 8, !tbaa !185
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 124
  store float %.036, ptr %i.ag, align 4, !tbaa !186
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !79
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !81  ; 2 uses
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [248 x i8], ptr %i.aj, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 156
  %i.an = load i32, ptr %i.am, align 4, !tbaa !80
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [248 x i8], ptr %i.aj, i64 %i.ao
  %i.aq = tail call noundef float @_ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(248) %i.al, ptr noundef nonnull align 8 dereferenceable(248) %i.ap, ptr noundef nonnull align 8 dereferenceable(160) %i.x) ; 2 uses
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %.147) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.as = trunc nuw i64 %indvars.iv to i32
  %i.at = icmp sgt i32 %i.v, %i.as
  br i1 %i.at, label %bb.e, label %.loopexit, !llvm.loop !9

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.c, %bb.b
  %.5 = phi float [ %.049, %bb.b ], [ %.049, %bb.c ], [ %i.ar, %bb.f ], [ %.147, %bb.e ] ; 2 uses
  %indvars.iv.next52 = add nsw i64 %indvars.iv51, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next52 to i32
  %exitcond.not = icmp eq i32 %3, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !10
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN37btSequentialImpulseConstraintSolverMt44resolveMultipleContactConstraintsInterleavedERK20btAlignedObjectArrayIiEii(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, %3
  br i1 %i.a, label %.lr.ph88, label %._crit_edge89

.lr.ph88:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = sext i32 %2 to i64
  br label %bb.b

._crit_edge89:                                    ; preds = %.thread, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.6, %.thread ]
  ret float %.0.lcssa

bb.b:                                             ; preds = %.lr.ph88, %.thread
  %indvars.iv95 = phi i64 [ %i.i, %.lr.ph88 ], [ %indvars.iv.next96, %.thread ] ; 2 uses
  %.086 = phi float [ 0.000000e+00, %.lr.ph88 ], [ %.6, %.thread ]
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv95
  %i.l = load i32, ptr %i.k, align 4, !tbaa !75   ; 3 uses
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.n = sext i32 %i.l to i64                     ; 2 uses
  %i.o = getelementptr inbounds [160 x i8], ptr %i.m, i64 %i.n ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.q = load i32, ptr %i.p, align 8, !tbaa !79
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !81   ; 2 uses
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds [248 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 156
  %i.v = load i32, ptr %i.u, align 4, !tbaa !80
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [248 x i8], ptr %i.r, i64 %i.w
  %i.y = tail call noundef float @_ZN35btSequentialImpulseConstraintSolver36resolveSingleConstraintRowLowerLimitER12btSolverBodyS1_RK18btSolverConstraint(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(248) %i.t, ptr noundef nonnull align 8 dereferenceable(248) %i.x, ptr noundef nonnull align 8 dereferenceable(160) %i.o) ; 2 uses
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %i.y, float %.086) ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 100
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !183 ; 4 uses
  %i.ac = fcmp ogt float %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ad = load i32, ptr %i.e, align 8, !tbaa !69  ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.af = mul i32 %i.ad, %i.l                     ; 2 uses
  %i.ag = add nsw i32 %i.af, %i.ad
  %i.ah = fneg float %i.ab
  %i.ai = sext i32 %i.af to i64
  %i.aj = sext i32 %i.ag to i64
  %4 = insertelement <2 x float> poison, float %i.ah, i64 0
  %5 = insertelement <2 x float> %4, float %i.ab, i64 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.ai, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.182 = phi float [ %i.z, %.lr.ph ], [ %i.az, %bb.d ]
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.al = getelementptr inbounds [160 x i8], ptr %i.ak, i64 %indvars.iv ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %i.an = load float, ptr %i.am, align 8, !tbaa !184
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %6 = insertelement <2 x float> poison, float %i.an, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fmul <2 x float> %7, %5
  store <2 x float> %8, ptr %i.ao, align 8, !tbaa !86
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !79
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !81  ; 2 uses
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds [248 x i8], ptr %i.ar, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 156
  %i.av = load i32, ptr %i.au, align 4, !tbaa !80
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [248 x i8], ptr %i.ar, i64 %i.aw
  %i.ay = tail call noundef float @_ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(248) %i.at, ptr noundef nonnull align 8 dereferenceable(248) %i.ax, ptr noundef nonnull align 8 dereferenceable(160) %i.al) ; 2 uses
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ay, float %.182) ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ba = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ba, label %bb.d, label %._crit_edge, !llvm.loop !290

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.1.lcssa = phi float [ %i.z, %bb.c ], [ %i.az, %bb.d ] ; 2 uses
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.n
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !75 ; 3 uses
  %i.be = icmp sgt i32 %i.bd, -1
  br i1 %i.be, label %bb.e, label %.thread

bb.e:                                             ; preds = %._crit_edge
  %i.bf = zext nneg i32 %i.bd to i64
  %i.bg = add nuw nsw i32 %i.bd, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.g
  %indvars.iv92 = phi i64 [ %i.bf, %bb.e ], [ %indvars.iv.next93, %bb.g ] ; 3 uses
  %.384 = phi float [ %.1.lcssa, %bb.e ], [ %i.cc, %bb.g ] ; 2 uses
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.bi = getelementptr inbounds nuw [160 x i8], ptr %i.bh, i64 %indvars.iv92 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 148
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !90
  %.not = icmp eq i32 %i.bk, %i.l
  br i1 %.not, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !184 ; 3 uses
  %i.bn = fmul float %i.ab, %i.bm                 ; 2 uses
  %i.bo = fcmp ogt float %i.bn, %i.bm
  %.066 = select i1 %i.bo, float %i.bm, float %i.bn ; 2 uses
  %i.bp = fneg float %.066
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 120
  store float %i.bp, ptr %i.bq, align 8, !tbaa !185
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 124
  store float %.066, ptr %i.br, align 4, !tbaa !186
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 152
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !79
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !81  ; 2 uses
  %i.bv = sext i32 %i.bt to i64
  %i.bw = getelementptr inbounds [248 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 156
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !80
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [248 x i8], ptr %i.bu, i64 %i.bz
  %i.cb = tail call noundef float @_ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(248) %i.bw, ptr noundef nonnull align 8 dereferenceable(248) %i.ca, ptr noundef nonnull align 8 dereferenceable(160) %i.bi) ; 2 uses
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.cb, float %.384) ; 2 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %i.cd = trunc nuw i64 %indvars.iv92 to i32
  %i.ce = icmp sgt i32 %i.bg, %i.cd
  br i1 %i.ce, label %bb.f, label %.thread, !llvm.loop !291

.thread:                                          ; preds = %bb.f, %bb.g, %bb.b, %._crit_edge
  %.6 = phi float [ %.1.lcssa, %._crit_edge ], [ %i.z, %bb.b ], [ %i.cc, %bb.g ], [ %.384, %bb.f ] ; 2 uses
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next96 to i32
  %exitcond.not = icmp eq i32 %3, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge89, label %bb.b, !llvm.loop !292
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN37btSequentialImpulseConstraintSolverMt34randomizeBatchedConstraintOrderingEP20btBatchedConstraints(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 132 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !38   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph29, label %._crit_edge30

.lr.ph29:                                         ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.j = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.k = tail call noundef i32 @_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.j)
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !75
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !75
  store i32 %i.q, ptr %i.m, align 4, !tbaa !75
  store i32 %i.n, ptr %i.p, align 4, !tbaa !75
  %i.r = load i32, ptr %i.a, align 4, !tbaa !32
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.b, label %.preheader, !llvm.loop !11

._crit_edge30:                                    ; preds = %._crit_edge, %.preheader
  ret void

bb.c:                                             ; preds = %.lr.ph29, %._crit_edge
  %i.u = phi i32 [ %i.f, %.lr.ph29 ], [ %i.ac, %._crit_edge ]
  %indvars.iv35 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next36, %._crit_edge ] ; 2 uses
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv35 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !104  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !105
  %i.aa = icmp slt i32 %i.x, %i.z
  br i1 %i.aa, label %.lr.ph27.preheader, label %._crit_edge

.lr.ph27.preheader:                               ; preds = %bb.c
  %i.ab = sext i32 %i.x to i64
  br label %.lr.ph27

._crit_edge.loopexit:                             ; preds = %.lr.ph27
  %.pre = load i32, ptr %i.e, align 4, !tbaa !38
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.ac = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.u, %bb.c ] ; 2 uses
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %indvars.iv.next36, %i.ad
  br i1 %i.ae, label %bb.c, label %._crit_edge30, !llvm.loop !12

.lr.ph27:                                         ; preds = %.lr.ph27.preheader, %.lr.ph27
  %indvars.iv32 = phi i64 [ %i.ab, %.lr.ph27.preheader ], [ %indvars.iv.next33, %.lr.ph27 ] ; 2 uses
  %i.af = load i32, ptr %i.w, align 4, !tbaa !104 ; 2 uses
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, 1 ; 3 uses
  %i.ag = trunc nsw i64 %indvars.iv.next33 to i32
  %i.ah = sub i32 %i.ag, %i.af
  %i.ai = tail call noundef i32 @_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.ah)
  %i.aj = add nsw i32 %i.ai, %i.af
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !31  ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %indvars.iv32 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !75
  %i.an = sext i32 %i.aj to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !75
  store i32 %i.ap, ptr %i.al, align 4, !tbaa !75
  store i32 %i.am, ptr %i.ao, align 4, !tbaa !75
  %i.aq = load i32, ptr %i.y, align 4, !tbaa !105
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next33, %i.ar
  br i1 %i.as, label %.lr.ph27, label %._crit_edge.loopexit, !llvm.loop !13
}

declare noundef i32 @_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei(ptr noundef nonnull align 8 dereferenceable(408), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN37btSequentialImpulseConstraintSolverMt27randomizeConstraintOrderingEii(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 708 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 720
  br label %bb.b

.preheader.i:                                     ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 612 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !38   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph29.i, label %_ZN37btSequentialImpulseConstraintSolverMt34randomizeBatchedConstraintOrderingEP20btBatchedConstraints.exit

.lr.ph29.i:                                       ; preds = %.preheader.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 592
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.j = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.k = tail call noundef i32 @_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef %i.j)
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !75
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.o ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK15JointSolverLoop7sumLoopEii:bb.a
  %i.ak = getelementptr inbounds [248 x i8], ptr %i.ae, i64 %i.aj
  %i.al = invoke noundef float @_ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint(ptr noundef nonnull align 8 dereferenceable(920) %i.j, ptr noundef nonnull align 8 dereferenceable(248) %i.ag, ptr noundef nonnull align 8 dereferenceable(248) %i.ak, ptr noundef nonnull align 8 dereferenceable(160) %i.y)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.am = call float @llvm.fmuladd.f32(float %i.al, float %i.al, float %.020.i)
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.c
  %.1.i = phi float [ %i.am, %.noexc ], [ %.020.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.m, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN37btSequentialImpulseConstraintSolverMt31resolveMultipleJointConstraintsERK20btAlignedObjectArrayIiEiii.exit, label %bb.c, !llvm.loop !5

_ZN37btSequentialImpulseConstraintSolverMt31resolveMultipleJointConstraintsERK20btAlignedObjectArrayIiEiii.exit: ; preds = %bb.e, %bb.b
  %.0.lcssa.i = phi float [ 0.000000e+00, %bb.b ], [ %.1.i, %bb.e ]
  %i.an = fadd float %.014, %.0.lcssa.i           ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !308

bb.f:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %i.ao
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17ContactSolverLoopD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK17ContactSolverLoop7sumLoopEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CProfileSample, align 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.27)
  %i.a = icmp slt i32 %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = sext i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN37btSequentialImpulseConstraintSolverMt33resolveMultipleContactConstraintsERK20btAlignedObjectArrayIiEii.exit, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ai, %_ZN37btSequentialImpulseConstraintSolverMt33resolveMultipleContactConstraintsERK20btAlignedObjectArrayIiEii.exit ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret float %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN37btSequentialImpulseConstraintSolverMt33resolveMultipleContactConstraintsERK20btAlignedObjectArrayIiEii.exit
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next, %_ZN37btSequentialImpulseConstraintSolverMt33resolveMultipleContactConstraintsERK20btAlignedObjectArrayIiEii.exit ] ; 2 uses
  %.014 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ai, %_ZN37btSequentialImpulseConstraintSolverMt33resolveMultipleContactConstraintsERK20btAlignedObjectArrayIiEii.exit ]
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !194  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !193  ; 3 uses
  %i.j = load i32, ptr %i.h, align 4, !tbaa !104  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !105  ; 2 uses
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %.lr.ph.i, label %_ZN37btSequentialImpulseConstraintSolverMt33resolveMultipleContactConstraintsERK20btAlignedObjectArrayIiEii.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.q = sext i32 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.q, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc ] ; 2 uses
  %.018.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.ah, %.noexc ]
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !75
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !76
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds [160 x i8], ptr %i.u, i64 %i.v ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.y = load i32, ptr %i.x, align 8, !tbaa !79
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !81   ; 2 uses
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds [248 x i8], ptr %i.z, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 156
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !80
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [248 x i8], ptr %i.z, i64 %i.ae
  %i.ag = invoke noundef float @_ZN35btSequentialImpulseConstraintSolver36resolveSingleConstraintRowLowerLimitER12btSolverBodyS1_RK18btSolverConstraint(ptr noundef nonnull align 8 dereferenceable(920) %i.i, ptr noundef nonnull align 8 dereferenceable(248) %i.ab, ptr noundef nonnull align 8 dereferenceable(248) %i.af, ptr noundef nonnull align 8 dereferenceable(160) %i.w)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.ah = call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %.018.i) ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.l, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN37btSequentialImpulseConstraintSolverMt33resolveMultipleContactConstraintsERK20btAlignedObjectArrayIiEii.exit, label %bb.c, !llvm.loop !6

_ZN37btSequentialImpulseConstraintSolverMt33resolveMultipleContactConstraintsERK20btAlignedObjectArrayIiEii.exit: ; preds = %.noexc, %bb.b
  %.0.lcssa.i = phi float [ 0.000000e+00, %bb.b ], [ %i.ah, %.noexc ]
  %i.ai = fadd float %.014, %.0.lcssa.i           ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !309

bb.d:                                             ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %i.aj
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN25ContactFrictionSolverLoopD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK25ContactFrictionSolverLoop7sumLoopEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CProfileSample, align 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.28)
  %i.a = icmp slt i32 %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = sext i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN37btSequentialImpulseConstraintSolverMt41resolveMultipleContactFrictionConstraintsERK20btAlignedObjectArrayIiEii.exit, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ba, %_ZN37btSequentialImpulseConstraintSolverMt41resolveMultipleContactFrictionConstraintsERK20btAlignedObjectArrayIiEii.exit ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret float %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN37btSequentialImpulseConstraintSolverMt41resolveMultipleContactFrictionConstraintsERK20btAlignedObjectArrayIiEii.exit
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next, %_ZN37btSequentialImpulseConstraintSolverMt41resolveMultipleContactFrictionConstraintsERK20btAlignedObjectArrayIiEii.exit ] ; 2 uses
  %.014 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ba, %_ZN37btSequentialImpulseConstraintSolverMt41resolveMultipleContactFrictionConstraintsERK20btAlignedObjectArrayIiEii.exit ]
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !197  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !196  ; 5 uses
  %i.j = load i32, ptr %i.h, align 4, !tbaa !104  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !105  ; 2 uses
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %.lr.ph37.i, label %_ZN37btSequentialImpulseConstraintSolverMt41resolveMultipleContactFrictionConstraintsERK20btAlignedObjectArrayIiEii.exit

.lr.ph37.i:                                       ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 744
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.s = sext i32 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i, %.lr.ph37.i
  %indvars.iv40.i = phi i64 [ %i.s, %.lr.ph37.i ], [ %indvars.iv.next41.i, %.loopexit.i ] ; 2 uses
  %.036.i = phi float [ 0.000000e+00, %.lr.ph37.i ], [ %.2.i, %.loopexit.i ] ; 3 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv40.i
  %i.v = load i32, ptr %i.u, align 4, !tbaa !75   ; 2 uses
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !76
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds [160 x i8], ptr %i.w, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 100
  %i.aa = load float, ptr %i.z, align 4, !tbaa !183 ; 3 uses
  %i.ab = fcmp ogt float %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %i.p, align 8, !tbaa !69  ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ae = mul i32 %i.ac, %i.v                     ; 2 uses
  %i.af = add nsw i32 %i.ae, %i.ac
  %i.ag = fneg float %i.aa
  %i.ah = sext i32 %i.ae to i64
  %i.ai = sext i32 %i.af to i64
  %4 = insertelement <2 x float> poison, float %i.ag, i64 0
  %5 = insertelement <2 x float> %4, float %i.aa, i64 1
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ah, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc ] ; 2 uses
  %.134.i = phi float [ %.036.i, %.lr.ph.i ], [ %i.ay, %.noexc ]
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.ak = getelementptr inbounds [160 x i8], ptr %i.aj, i64 %indvars.iv.i ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 104
  %i.am = load float, ptr %i.al, align 8, !tbaa !184
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  %6 = insertelement <2 x float> poison, float %i.am, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fmul <2 x float> %7, %5
  store <2 x float> %8, ptr %i.an, align 8, !tbaa !86
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 152
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !79
  %i.aq = load ptr, ptr %i.r, align 8, !tbaa !81  ; 2 uses
  %i.ar = sext i32 %i.ap to i64
  %i.as = getelementptr inbounds [248 x i8], ptr %i.aq, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 156
  %i.au = load i32, ptr %i.at, align 4, !tbaa !80
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [248 x i8], ptr %i.aq, i64 %i.av
  %i.ax = invoke noundef float @_ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint(ptr noundef nonnull align 8 dereferenceable(920) %i.i, ptr noundef nonnull align 8 dereferenceable(248) %i.as, ptr noundef nonnull align 8 dereferenceable(248) %i.aw, ptr noundef nonnull align 8 dereferenceable(160) %i.ak)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.e
  %i.ay = call float @llvm.fmuladd.f32(float %i.ax, float %i.ax, float %.134.i) ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.az = icmp slt i64 %indvars.iv.next.i, %i.ai
  br i1 %i.az, label %bb.e, label %.loopexit.i, !llvm.loop !7

.loopexit.i:                                      ; preds = %.noexc, %bb.d, %bb.c
  %.2.i = phi float [ %.036.i, %bb.c ], [ %.036.i, %bb.d ], [ %i.ay, %.noexc ] ; 2 uses
  %indvars.iv.next41.i = add nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next41.i to i32
  %exitcond.not.i = icmp eq i32 %i.l, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN37btSequentialImpulseConstraintSolverMt41resolveMultipleContactFrictionConstraintsERK20btAlignedObjectArrayIiEii.exit, label %bb.c, !llvm.loop !8

_ZN37btSequentialImpulseConstraintSolverMt41resolveMultipleContactFrictionConstraintsERK20btAlignedObjectArrayIiEii.exit: ; preds = %.loopexit.i, %bb.b
  %.0.lcssa.i = phi float [ 0.000000e+00, %bb.b ], [ %.2.i, %.loopexit.i ]
  %i.ba = fadd float %.014, %.0.lcssa.i           ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !310

bb.f:                                             ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %i.bb
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN28InterleavedContactSolverLoopD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK28InterleavedContactSolverLoop7sumLoopEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CProfileSample, align 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.29)
  %i.a = icmp slt i32 %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = sext i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.n, %bb.c ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret float %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.014 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.n, %bb.c ]
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !200  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !199
  %i.j = load i32, ptr %i.h, align 4, !tbaa !104
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !105
  %i.m = invoke noundef float @_ZN37btSequentialImpulseConstraintSolverMt44resolveMultipleContactConstraintsInterleavedERK20btAlignedObjectArrayIiEii(ptr noundef nonnull align 8 dereferenceable(920) %i.i, ptr noundef nonnull align 8 dereferenceable(25) %i.e, i32 noundef %i.j, i32 noundef %i.l)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = fadd float %.014, %i.m                   ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !311

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %i.o
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN32ContactRollingFrictionSolverLoopD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK32ContactRollingFrictionSolverLoop7sumLoopEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CProfileSample, align 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.28)
  %i.a = icmp slt i32 %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = sext i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN37btSequentialImpulseConstraintSolverMt48resolveMultipleContactRollingFrictionConstraintsERK20btAlignedObjectArrayIiEii.exit, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bg, %_ZN37btSequentialImpulseConstraintSolverMt48resolveMultipleContactRollingFrictionConstraintsERK20btAlignedObjectArrayIiEii.exit ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret float %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN37btSequentialImpulseConstraintSolverMt48resolveMultipleContactRollingFrictionConstraintsERK20btAlignedObjectArrayIiEii.exit
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next, %_ZN37btSequentialImpulseConstraintSolverMt48resolveMultipleContactRollingFrictionConstraintsERK20btAlignedObjectArrayIiEii.exit ] ; 2 uses
  %.014 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bg, %_ZN37btSequentialImpulseConstraintSolverMt48resolveMultipleContactRollingFrictionConstraintsERK20btAlignedObjectArrayIiEii.exit ]
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !203  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !202  ; 5 uses
  %i.j = load i32, ptr %i.h, align 4, !tbaa !104  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !105  ; 2 uses
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %.lr.ph.i, label %_ZN37btSequentialImpulseConstraintSolverMt48resolveMultipleContactRollingFrictionConstraintsERK20btAlignedObjectArrayIiEii.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 800
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.s = sext i32 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %indvars.iv51.i = phi i64 [ %i.s, %.lr.ph.i ], [ %indvars.iv.next52.i, %.loopexit.i ] ; 2 uses
  %.049.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %.5.i, %.loopexit.i ] ; 3 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv51.i
  %i.v = load i32, ptr %i.u, align 4, !tbaa !75   ; 2 uses
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.x = sext i32 %i.v to i64                     ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !75   ; 3 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !76
  %i.ac = getelementptr inbounds [160 x i8], ptr %i.ab, i64 %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 100
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !183 ; 2 uses
  %i.af = fcmp ogt float %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.e, label %.loopexit.i

bb.e:                                             ; preds = %bb.d
  %i.ag = zext nneg i32 %i.z to i64
  %i.ah = add nuw nsw i32 %i.z, 2
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.e
  %indvars.iv.i = phi i64 [ %i.ag, %bb.e ], [ %indvars.iv.next.i, %.noexc ] ; 3 uses
  %.147.i = phi float [ %.049.i, %bb.e ], [ %i.bd, %.noexc ] ; 2 uses
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.aj = getelementptr inbounds nuw [160 x i8], ptr %i.ai, i64 %indvars.iv.i ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 148
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !90
  %.not.i = icmp eq i32 %i.al, %i.v
  br i1 %.not.i, label %bb.g, label %.loopexit.i

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  %i.an = load float, ptr %i.am, align 8, !tbaa !184 ; 3 uses
  %i.ao = fmul float %i.ae, %i.an                 ; 2 uses
  %i.ap = fcmp ogt float %i.ao, %i.an
  %.036.i = select i1 %i.ap, float %i.an, float %i.ao ; 2 uses
  %i.aq = fneg float %.036.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 120
  store float %i.aq, ptr %i.ar, align 8, !tbaa !185
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 124
  store float %.036.i, ptr %i.as, align 4, !tbaa !186
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 152
  %i.au = load i32, ptr %i.at, align 8, !tbaa !79
  %i.av = load ptr, ptr %i.r, align 8, !tbaa !81  ; 2 uses
  %i.aw = sext i32 %i.au to i64
end_hunk_1
