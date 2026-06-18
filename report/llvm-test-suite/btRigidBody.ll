inline.NumInlined: 392
inline.NumDeleted: 103
begin_hunk_0_@_ZNK11btMatrix3x311getRotationER12btQuaternion:bb.a

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ci = phi <4 x float> [ %i.ch, %bb.c ], [ %i.ah, %bb.b ]
  store <4 x float> %i.ci, ptr %1, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11btRigidBody24checkCollideWithOverrideEP17btCollisionObject(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(564) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %i.c = icmp ne i32 %i.b, 2
  %.not23 = icmp eq ptr %1, null
  %.not = or i1 %i.c, %.not23
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18   ; 2 uses
  %.not1718 = icmp slt i32 %i.e, 1
  br i1 %.not1718, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.c

bb.b:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63, !nonnull !39, !align !67
  %i.l = icmp eq ptr %i.k, %1
  br i1 %i.l, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !68, !nonnull !39, !align !67
  %i.o = icmp eq ptr %i.n, %1
  br i1 %i.o, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %.critedge, %bb.c, %bb.b, %.preheader, %bb.a
  %.3 = phi i1 [ true, %bb.a ], [ true, %.preheader ], [ false, %bb.c ], [ false, %.critedge ], [ true, %bb.b ]
  ret i1 %.3
}

; Function Attrs: uwtable
define dso_local void @_ZN11btRigidBody16addConstraintRefEP17btTypedConstraint(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(564) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 10 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.thread, label %bb.b

_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit: ; preds = %bb.b
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.j = icmp eq i32 %i.b, %i.i
  br i1 %i.j, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.thread, label %bb.h

_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.thread: ; preds = %bb.c, %bb.a, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !19
  %i.m = icmp eq i32 %i.b, %i.l
  br i1 %i.m, label %bb.d, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9push_backERKS1_.exit

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.thread
  %.not.i.i = icmp eq i32 %i.b, 0
  %i.n = shl nsw i32 %i.b, 1
  %i.o = select i1 %.not.i.i, i32 1, i32 %i.n     ; 4 uses
  %i.p = icmp slt i32 %i.b, %i.o
  br i1 %i.p, label %bb.e, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = sext i32 %i.o to i64
  %i.r = shl nsw i64 %i.q, 3
  %i.s = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.r, i32 noundef 16)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i.i: ; preds = %bb.f, %bb.e
  %i.t = phi i32 [ %.pre.i, %bb.f ], [ %i.b, %bb.e ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.e ] ; 8 uses
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17   ; 9 uses
  br i1 %i.u, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i.i
  %i.x = ptrtoaddr ptr %i.w to i64
  %.0.i.i.i10 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.t to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.t, 6
  %i.y = sub i64 %.0.i.i.i10, %i.x
  %diff.check = icmp ult i64 %i.y, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !61
  %wide.load11 = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !61
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x ptr> %wide.load, ptr %i.z, align 8, !tbaa !61
  store <2 x ptr> %wide.load11, ptr %i.ac, align 8, !tbaa !61
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.i.i.prol
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !61
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !61
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !72

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ah = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !61
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !61
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !61
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !61
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i.1
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !61
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !61
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i.2
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !61
  store ptr %i.au, ptr %i.as, align 8, !tbaa !61
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !74

_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp ne ptr %i.w, null
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %3 = load i8, ptr %2, align 8, !range !20
  %4 = trunc nuw i8 %3 to i1
  %or.cond.i = select i1 %.not.i5.i.i, i1 %4, i1 false
  br i1 %or.cond.i, label %bb.g, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i

_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.old.i = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.old8.i = load i8, ptr %.old.i, align 8, !tbaa !10, !range !20, !noundef !39
  %.old9.i = trunc nuw i8 %.old8.i to i1
  br i1 %.old9.i, label %bb.g, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i

bb.g:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.w)
  %.pre2.pre.pre.i = load i32, ptr %i.a, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i: ; preds = %bb.g, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.t, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.g ], [ %i.t, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i8 1, ptr %i.av, align 8, !tbaa !10
  store ptr %.0.i.i.i, ptr %i.v, align 8, !tbaa !17
  store i32 %i.o, ptr %i.k, align 8, !tbaa !19
  br label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP17btTypedConstraintE9push_backERKS1_.exit: ; preds = %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.thread, %bb.d, %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i
  %i.aw = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i ], [ %i.b, %bb.d ], [ %i.b, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.thread ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !17
  %i.az = sext i32 %i.aw to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az
  store ptr %1, ptr %i.ba, align 8, !tbaa !61
  %i.bb = add nsw i32 %i.aw, 1
  store i32 %i.bb, ptr %i.a, align 4, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9push_backERKS1_.exit, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 1, ptr %i.bc, align 8, !tbaa !75
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN11btRigidBody19removeConstraintRefEP17btTypedConstraint(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(564) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 5 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i.i, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE6removeERKS1_.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE6removeERKS1_.exit, label %bb.b

_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.i: ; preds = %bb.b
  %i.i = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.j = icmp sgt i32 %i.b, %i.i
  br i1 %i.j, label %bb.d, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE6removeERKS1_.exit

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.i
  %i.k = add nsw i32 %i.b, -1                     ; 2 uses
  %sext.i = shl i64 %indvars.iv.i.i, 32
  %i.l = ashr exact i64 %sext.i, 29
  %i.m = getelementptr inbounds i8, ptr %i.e, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.o = zext nneg i32 %i.k to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.o ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !61
  store ptr %i.q, ptr %i.m, align 8, !tbaa !61
  store ptr %i.n, ptr %i.p, align 8, !tbaa !61
  store i32 %i.k, ptr %i.a, align 4, !tbaa !18
  %i.r = icmp ne i32 %i.b, 1
  %i.s = zext i1 %i.r to i8
  br label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE6removeERKS1_.exit

_ZN20btAlignedObjectArrayIP17btTypedConstraintE6removeERKS1_.exit: ; preds = %bb.c, %bb.a, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.i, %bb.d
  %i.t = phi i8 [ %i.s, %bb.d ], [ 0, %bb.a ], [ 1, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.i ], [ 1, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 %i.t, ptr %i.u, align 8, !tbaa !75
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN11btRigidBodyD2Ev(ptr noundef nonnull align 8 dereferenceable(564) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV11btRigidBody, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.d = load i8, ptr %i.c, align 8, !range !20
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit unwind label %bb.c

_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #18
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN11btRigidBodyD0Ev(ptr noundef nonnull align 8 dereferenceable(564) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV11btRigidBody, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.d = load i8, ptr %i.c, align 8, !range !20
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit.i unwind label %bb.c, !inline_history !76

_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit.i: ; preds = %bb.b, %bb.a
  invoke void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(564) %0)
          to label %_ZN11btRigidBodyD2Ev.exit unwind label %bb.e, !inline_history !76

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(564) %0)
          to label %.body unwind label %bb.d, !inline_history !76

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #18, !inline_history !76
  unreachable

_ZN11btRigidBodyD2Ev.exit:                        ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.e:                                             ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.f, %bb.c ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.f

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body

bb.f:                                             ; preds = %.body
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #18
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %1, ptr %i.a, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %1, ptr %i.b, align 8, !tbaa !77
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
end_hunk_0
