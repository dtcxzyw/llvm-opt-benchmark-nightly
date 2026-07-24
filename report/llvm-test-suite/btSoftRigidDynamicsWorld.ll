inline.NumInlined: 90
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN24btSoftRigidDynamicsWorld16updateSoftBodiesEv:bb.a
  tail call void @_ZN15CProfileManager12Stop_ProfileEv()
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76
  invoke void @_ZN10btSoftBody15integrateMotionEv(ptr noundef nonnull align 8 dereferenceable(1496) %i.g)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !18
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit unwind label %bb.e

_ZN14CProfileSampleD2Ev.exit:                     ; preds = %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #8
  unreachable
}

declare void @_ZN10btSoftBody15integrateMotionEv(ptr noundef nonnull align 8 dereferenceable(1496)) local_unnamed_addr #1

declare void @_ZN10btSoftBody13solveClustersERK20btAlignedObjectArrayIPS_E(ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #1

declare void @_ZN10btSoftBody16solveConstraintsEv(ptr noundef nonnull align 8 dereferenceable(1496)) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN24btSoftRigidDynamicsWorld11addSoftBodyEP10btSoftBodyss(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20btAlignedObjectArrayIP10btSoftBodyE9push_backERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i.i, i32 1, i32 %i.f     ; 4 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20btAlignedObjectArrayIP10btSoftBodyE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP10btSoftBodyE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIP10btSoftBodyE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP10btSoftBodyE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %.pre.i, %bb.d ], [ %i.b, %bb.c ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ] ; 8 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 9 uses
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP10btSoftBodyE8allocateEi.exit.i.i
  %i.p = ptrtoaddr ptr %i.o to i64
  %.0.i.i.i6 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.l to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  %i.q = sub i64 %i.p, %.0.i.i.i6
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x ptr>, ptr %i.s, align 8, !tbaa !76
  %wide.load7 = load <2 x ptr>, ptr %i.t, align 8, !tbaa !76
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x ptr> %wide.load, ptr %i.r, align 8, !tbaa !76
  store <2 x ptr> %wide.load7, ptr %i.u, align 8, !tbaa !76
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.prol
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !76
  store ptr %i.y, ptr %i.w, align 8, !tbaa !76
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !79

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.z = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !76
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !76
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !76
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !76
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.1
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !76
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !76
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.2
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !76
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !76
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !80

_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP10btSoftBodyE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP10btSoftBodyE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !10, !range !68, !noundef !75
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.e, label %_ZN20btAlignedObjectArrayIP10btSoftBodyE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.o)
  %.pre2.pre.pre.i = load i32, ptr %i.a, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIP10btSoftBodyE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP10btSoftBodyE10deallocateEv.exit.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.l, %_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.e ], [ %i.l, %_ZNK20btAlignedObjectArrayIP10btSoftBodyE4copyEiiPS1_.exit.thread.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i8 1, ptr %i.aq, align 8, !tbaa !10
  store ptr %.0.i.i.i, ptr %i.n, align 8, !tbaa !17
  store i32 %i.g, ptr %i.c, align 8, !tbaa !19
  br label %_ZN20btAlignedObjectArrayIP10btSoftBodyE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP10btSoftBodyE9push_backERKS1_.exit: ; preds = %bb.a, %bb.b, %_ZN20btAlignedObjectArrayIP10btSoftBodyE10deallocateEv.exit.i.i
  %i.ar = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP10btSoftBodyE10deallocateEv.exit.i.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !17
  %i.au = sext i32 %i.ar to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.au
  store ptr %1, ptr %i.av, align 8, !tbaa !76
  %i.aw = add nsw i32 %i.ar, 1
  store i32 %i.aw, ptr %i.a, align 4, !tbaa !18
  tail call void @_ZN16btCollisionWorld18addCollisionObjectEP17btCollisionObjectss(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %3)
  ret void
}

declare void @_ZN16btCollisionWorld18addCollisionObjectEP17btCollisionObjectss(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, i16 noundef signext, i16 noundef signext) unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN24btSoftRigidDynamicsWorld14removeSoftBodyEP10btSoftBody(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i.i, label %_ZN20btAlignedObjectArrayIP10btSoftBodyE6removeERKS1_.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76   ; 2 uses
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN20btAlignedObjectArrayIP10btSoftBodyE6removeERKS1_.exit, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.j = add nsw i32 %i.b, -1                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76
  store ptr %i.m, ptr %i.i, align 8, !tbaa !76
  store ptr %i.g, ptr %i.l, align 8, !tbaa !76
  store i32 %i.j, ptr %i.a, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIP10btSoftBodyE6removeERKS1_.exit

_ZN20btAlignedObjectArrayIP10btSoftBodyE6removeERKS1_.exit: ; preds = %bb.c, %bb.a, %bb.d
  tail call void @_ZN16btCollisionWorld21removeCollisionObjectEP17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1)
  ret void
}

declare void @_ZN16btCollisionWorld21removeCollisionObjectEP17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef) unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN24btSoftRigidDynamicsWorld21removeCollisionObjectEP17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = load i32, ptr %i.a, align 8, !tbaa !81
  %i.c = icmp ne i32 %i.b, 4
  %.not5 = icmp eq ptr %1, null
  %.not = or i1 %.not5, %i.c
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18   ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i, label %_ZN24btSoftRigidDynamicsWorld14removeSoftBodyEP10btSoftBody.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.d ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76   ; 2 uses
  %i.k = icmp eq ptr %i.j, %1
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN24btSoftRigidDynamicsWorld14removeSoftBodyEP10btSoftBody.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i.i
  %i.m = add nsw i32 %i.e, -1                     ; 2 uses
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !76
  store ptr %i.p, ptr %i.l, align 8, !tbaa !76
  store ptr %i.j, ptr %i.o, align 8, !tbaa !76
  store i32 %i.m, ptr %i.d, align 4, !tbaa !18
  br label %_ZN24btSoftRigidDynamicsWorld14removeSoftBodyEP10btSoftBody.exit

_ZN24btSoftRigidDynamicsWorld14removeSoftBodyEP10btSoftBody.exit: ; preds = %bb.d, %bb.b, %bb.e
  tail call void @_ZN16btCollisionWorld21removeCollisionObjectEP17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN23btDiscreteDynamicsWorld21removeCollisionObjectEP17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef nonnull %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN24btSoftRigidDynamicsWorld14removeSoftBodyEP10btSoftBody.exit
  ret void
}

declare void @_ZN23btDiscreteDynamicsWorld21removeCollisionObjectEP17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN24btSoftRigidDynamicsWorld14debugDrawWorldEv(ptr noundef nonnull align 8 dereferenceable(536) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN23btDiscreteDynamicsWorld14debugDrawWorldEv(ptr noundef nonnull align 8 dereferenceable(372) %0)
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !18
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 413
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 414
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !76   ; 5 uses
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !86
  tail call void @_ZN17btSoftBodyHelpers9DrawFrameEP10btSoftBodyP12btIDebugDraw(ptr noundef %i.p, ptr noundef %i.q)
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !86
  %i.s = load i32, ptr %i.j, align 8, !tbaa !27
  tail call void @_ZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawi(ptr noundef %i.p, ptr noundef %i.r, i32 noundef %i.s)
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !86   ; 3 uses
  %.not9 = icmp eq ptr %i.t, null
  br i1 %.not9, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  %i.y = and i32 %i.x, 2
  %.not10 = icmp eq i32 %i.y, 0
  br i1 %.not10, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i8, ptr %i.k, align 4, !tbaa !57, !range !68, !noundef !75
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !86
  tail call void @_ZN17btSoftBodyHelpers12DrawNodeTreeEP10btSoftBodyP12btIDebugDrawii(ptr noundef %i.p, ptr noundef %i.ab, i32 noundef 0, i32 noundef -1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = load i8, ptr %i.l, align 1, !tbaa !58, !range !68, !noundef !75
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !86
  tail call void @_ZN17btSoftBodyHelpers12DrawFaceTreeEP10btSoftBodyP12btIDebugDrawii(ptr noundef %i.p, ptr noundef %i.ae, i32 noundef 0, i32 noundef -1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = load i8, ptr %i.m, align 2, !tbaa !59, !range !68, !noundef !75
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !86
  tail call void @_ZN17btSoftBodyHelpers15DrawClusterTreeEP10btSoftBodyP12btIDebugDrawii(ptr noundef %i.p, ptr noundef %i.ah, i32 noundef 0, i32 noundef -1)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = load i32, ptr %i.e, align 4, !tbaa !18
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.j, %.preheader, %bb.a
  ret void
}

declare void @_ZN23btDiscreteDynamicsWorld14debugDrawWorldEv(ptr noundef nonnull align 8 dereferenceable(372)) unnamed_addr #1

declare void @_ZN17btSoftBodyHelpers9DrawFrameEP10btSoftBodyP12btIDebugDraw(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN17btSoftBodyHelpers4DrawEP10btSoftBodyP12btIDebugDrawi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN17btSoftBodyHelpers12DrawNodeTreeEP10btSoftBodyP12btIDebugDrawii(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN17btSoftBodyHelpers12DrawFaceTreeEP10btSoftBodyP12btIDebugDrawii(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN17btSoftBodyHelpers15DrawClusterTreeEP10btSoftBodyP12btIDebugDrawii(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN16btCollisionWorld11updateAabbsEv(ptr noundef nonnull align 8 dereferenceable(129)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %1, ptr %i.a, align 8, !tbaa !86
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN16btCollisionWorld14getDebugDrawerEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  ret ptr %i.b
}

declare void @_ZN23btDiscreteDynamicsWorld18addCollisionObjectEP17btCollisionObjectss(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef, i16 noundef signext, i16 noundef signext) unnamed_addr #1

declare void @_ZN16btCollisionWorld33performDiscreteCollisionDetectionEv(ptr noundef nonnull align 8 dereferenceable(129)) unnamed_addr #1

declare noundef i32 @_ZN23btDiscreteDynamicsWorld14stepSimulationEfif(ptr noundef nonnull align 8 dereferenceable(372), float noundef, i32 noundef, float noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld13addConstraintEP17btTypedConstraintb(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef, i1 noundef zeroext) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld16removeConstraintEP17btTypedConstraint(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld9addActionEP17btActionInterface(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld12removeActionEP17btActionInterface(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld10setGravityERK9btVector3(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare { <2 x float>, <2 x float> } @_ZNK23btDiscreteDynamicsWorld10getGravityEv(ptr noundef nonnull align 8 dereferenceable(372)) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld23synchronizeMotionStatesEv(ptr noundef nonnull align 8 dereferenceable(372)) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBody(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld15removeRigidBodyEP11btRigidBody(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld19setConstraintSolverEP18btConstraintSolver(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN23btDiscreteDynamicsWorld19getConstraintSolverEv(ptr noundef nonnull align 8 dereferenceable(372)) unnamed_addr #1

declare noundef i32 @_ZNK23btDiscreteDynamicsWorld17getNumConstraintsEv(ptr noundef nonnull align 8 dereferenceable(372)) unnamed_addr #1

declare noundef ptr @_ZN23btDiscreteDynamicsWorld13getConstraintEi(ptr noundef nonnull align 8 dereferenceable(372), i32 noundef) unnamed_addr #1

declare noundef ptr @_ZNK23btDiscreteDynamicsWorld13getConstraintEi(ptr noundef nonnull align 8 dereferenceable(372), i32 noundef) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK23btDiscreteDynamicsWorld12getWorldTypeEv(ptr noundef nonnull align 8 dereferenceable(372) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i32 2
}

declare void @_ZN23btDiscreteDynamicsWorld11clearForcesEv(ptr noundef nonnull align 8 dereferenceable(372)) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld10addVehicleEP17btActionInterface(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld13removeVehicleEP17btActionInterface(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld12addCharacterEP17btActionInterface(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld15removeCharacterEP17btActionInterface(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld19integrateTransformsEf(ptr noundef nonnull align 8 dereferenceable(372), float noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld26calculateSimulationIslandsEv(ptr noundef nonnull align 8 dereferenceable(372)) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef nonnull align 4 dereferenceable(68)) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld18saveKinematicStateEf(ptr noundef nonnull align 8 dereferenceable(372), float noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBodyss(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef, i16 noundef signext, i16 noundef signext) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld12applyGravityEv(ptr noundef nonnull align 8 dereferenceable(372)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN23btDiscreteDynamicsWorld11setNumTasksEi(ptr noundef nonnull align 8 dereferenceable(372) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}
end_hunk_0
