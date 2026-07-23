inline.NumInlined: 1209
inline.NumDeleted: 276
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN23btDiscreteDynamicsWorld21updateActivationStateEf:bb.a
  %i.ai = fcmp olt float %i.ae, %i.ah
  br i1 %i.ai, label %_ZN11btRigidBody18updateDeactivationEf.exit.thread, label %bb.f

_ZN11btRigidBody18updateDeactivationEf.exit.thread: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 232 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !231
  %i.al = fadd float %1, %i.ak
  store float %i.al, ptr %i.aj, align 8, !tbaa !231
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  store float 0.000000e+00, ptr %i.am, align 8, !tbaa !231
  invoke void @_ZN17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(564) %i.g, i32 noundef 0)
          to label %._ZN11btRigidBody18updateDeactivationEf.exitthread-pre-split_crit_edge unwind label %bb.i

._ZN11btRigidBody18updateDeactivationEf.exitthread-pre-split_crit_edge: ; preds = %bb.f
  %.pr.pre = load i32, ptr %i.h, align 4, !tbaa !79
  br label %_ZN11btRigidBody18updateDeactivationEf.exit

_ZN11btRigidBody18updateDeactivationEf.exit:      ; preds = %._ZN11btRigidBody18updateDeactivationEf.exitthread-pre-split_crit_edge, %bb.c, %bb.c
  %i.an = phi i32 [ %i.i, %bb.c ], [ %i.i, %bb.c ], [ %.pr.pre, %._ZN11btRigidBody18updateDeactivationEf.exitthread-pre-split_crit_edge ] ; 2 uses
  %i.ao = icmp eq i32 %i.an, 4
  br i1 %i.ao, label %.thread34, label %bb.g

bb.g:                                             ; preds = %_ZN11btRigidBody18updateDeactivationEf.exit.thread, %_ZN11btRigidBody18updateDeactivationEf.exit
  %i.ap = phi i32 [ %i.i, %_ZN11btRigidBody18updateDeactivationEf.exit.thread ], [ %i.an, %_ZN11btRigidBody18updateDeactivationEf.exit ] ; 3 uses
  %i.aq = load i8, ptr @gDisableDeactivation, align 1, !tbaa !222, !range !67, !noundef !68
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = load float, ptr @gDeactivationTime, align 4 ; 2 uses
  %i.at = fcmp oeq float %i.as, 0.000000e+00
  %or.cond.i = select i1 %i.ar, i1 true, i1 %i.at
  br i1 %or.cond.i, label %.thread.invoke, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = and i32 %i.ap, -2
  %switch.i = icmp eq i32 %i.au, 2
  br i1 %switch.i, label %_ZN11btRigidBody13wantsSleepingEv.exit.thread32, label %_ZN11btRigidBody13wantsSleepingEv.exit

_ZN11btRigidBody13wantsSleepingEv.exit:           ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.aw = load float, ptr %i.av, align 8, !tbaa !231
  %i.ax = fcmp ogt float %i.aw, %i.as
  br i1 %i.ax, label %_ZN11btRigidBody13wantsSleepingEv.exit.thread32, label %.thread.invoke

_ZN11btRigidBody13wantsSleepingEv.exit.thread32:  ; preds = %bb.h, %_ZN11btRigidBody13wantsSleepingEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !80
  %i.ba = and i32 %i.az, 3
  %.not35 = icmp eq i32 %i.ba, 0
  br i1 %.not35, label %bb.j, label %.thread.invoke

bb.i:                                             ; preds = %.thread.invoke, %bb.f, %bb.k
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit unwind label %bb.n

bb.j:                                             ; preds = %_ZN11btRigidBody13wantsSleepingEv.exit.thread32
  %i.bc = icmp eq i32 %i.ap, 1
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(280) %i.g, i32 noundef 3)
          to label %._crit_edge39 unwind label %bb.i

._crit_edge39:                                    ; preds = %bb.k
  %.pre = load i32, ptr %i.h, align 4, !tbaa !79
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge39, %bb.j
  %i.bd = phi i32 [ %.pre, %._crit_edge39 ], [ %i.ap, %bb.j ]
  %i.be = icmp eq i32 %i.bd, 2
  br i1 %i.be, label %bb.m, label %.thread34

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i8 0, i64 32, i1 false)
  br label %.thread34

.thread.invoke:                                   ; preds = %_ZN11btRigidBody13wantsSleepingEv.exit.thread32, %bb.g, %_ZN11btRigidBody13wantsSleepingEv.exit
  %i.bg = phi i32 [ 1, %bb.g ], [ 1, %_ZN11btRigidBody13wantsSleepingEv.exit ], [ 2, %_ZN11btRigidBody13wantsSleepingEv.exit.thread32 ]
  invoke void @_ZN17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(280) %i.g, i32 noundef %i.bg)
          to label %.thread34 unwind label %bb.i

.thread34:                                        ; preds = %.thread.invoke, %_ZN11btRigidBody18updateDeactivationEf.exit, %bb.l, %bb.m, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = load i32, ptr %i.a, align 4, !tbaa !55
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %bb.b, label %._crit_edge

_ZN14CProfileSampleD2Ev.exit:                     ; preds = %bb.i
  resume { ptr, i32 } %i.bb

bb.n:                                             ; preds = %bb.i
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #19
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld10setGravityERK9btVector3(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(372) initializes((312, 328)) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !147
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !55   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.f = phi i32 [ %i.c, %.lr.ph ], [ %i.l, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !218  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 228
  %i.k = load i32, ptr %i.j, align 4, !tbaa !79
  switch i32 %i.k, label %bb.c [
    i32 5, label %bb.d
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11btRigidBody10setGravityERK9btVector3(ptr noundef nonnull align 8 dereferenceable(564) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !55
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %i.l = phi i32 [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.b, label %._crit_edge
}

declare void @_ZN11btRigidBody10setGravityERK9btVector3(ptr noundef nonnull align 8 dereferenceable(564), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK23btDiscreteDynamicsWorld10getGravityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(372) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !88
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld18addCollisionObjectEP17btCollisionObjectss(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %3) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN16btCollisionWorld18addCollisionObjectEP17btCollisionObjectss(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %3)
  ret void
}

declare void @_ZN16btCollisionWorld18addCollisionObjectEP17btCollisionObjectss(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, i16 noundef signext, i16 noundef signext) unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld21removeCollisionObjectEP17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = load i32, ptr %i.a, align 8, !tbaa !73
  %i.c = icmp ne i32 %i.b, 2
  %.not5 = icmp eq ptr %1, null
  %.not = or i1 %.not5, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef nonnull %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN16btCollisionWorld21removeCollisionObjectEP17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZN16btCollisionWorld21removeCollisionObjectEP17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef) unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld15removeRigidBodyEP11btRigidBody(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !55   ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i.i, label %_ZN20btAlignedObjectArrayIP11btRigidBodyE6removeERKS1_.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54   ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !218  ; 2 uses
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %_ZNK20btAlignedObjectArrayIP11btRigidBodyE16findLinearSearchERKS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN20btAlignedObjectArrayIP11btRigidBodyE6removeERKS1_.exit, label %bb.b

_ZNK20btAlignedObjectArrayIP11btRigidBodyE16findLinearSearchERKS1_.exit.i: ; preds = %bb.b
  %2 = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %3 = icmp sgt i32 %i.b, %2
  br i1 %3, label %bb.d, label %_ZN20btAlignedObjectArrayIP11btRigidBodyE6removeERKS1_.exit

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIP11btRigidBodyE16findLinearSearchERKS1_.exit.i
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.j = add nsw i32 %i.b, -1                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !218
  store ptr %i.m, ptr %i.i, align 8, !tbaa !218
  store ptr %i.g, ptr %i.l, align 8, !tbaa !218
  store i32 %i.j, ptr %i.a, align 4, !tbaa !55
  br label %_ZN20btAlignedObjectArrayIP11btRigidBodyE6removeERKS1_.exit

_ZN20btAlignedObjectArrayIP11btRigidBodyE6removeERKS1_.exit: ; preds = %bb.c, %bb.a, %_ZNK20btAlignedObjectArrayIP11btRigidBodyE16findLinearSearchERKS1_.exit.i, %bb.d
  tail call void @_ZN16btCollisionWorld21removeCollisionObjectEP17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBody(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !80
  %i.c = and i32 %i.b, 3
  %.not16 = icmp eq i32 %i.c, 0
  br i1 %.not16, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN11btRigidBody10setGravityERK9btVector3(ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.a, align 8, !tbaa !80
  %i.h = trunc i32 %i.g to i1
  br i1 %i.h, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !55   ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !56
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.f, label %_ZN20btAlignedObjectArrayIP11btRigidBodyE9push_backERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %i.j, 0
  %i.n = shl nsw i32 %i.j, 1
  %i.o = select i1 %.not.i.i, i32 1, i32 %i.n     ; 4 uses
  %i.p = icmp slt i32 %i.j, %i.o
  br i1 %i.p, label %bb.g, label %_ZN20btAlignedObjectArrayIP11btRigidBodyE9push_backERKS1_.exit

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP11btRigidBodyE8allocateEi.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = sext i32 %i.o to i64
  %i.r = shl nsw i64 %i.q, 3
  %i.s = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.r, i32 noundef 16)
  %.pre.i = load i32, ptr %i.i, align 4, !tbaa !55
  br label %_ZN20btAlignedObjectArrayIP11btRigidBodyE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP11btRigidBodyE8allocateEi.exit.i.i: ; preds = %bb.h, %bb.g
  %i.t = phi i32 [ %.pre.i, %bb.h ], [ %i.j, %bb.g ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.s, %bb.h ], [ null, %bb.g ] ; 8 uses
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54   ; 9 uses
  br i1 %i.u, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP11btRigidBodyE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP11btRigidBodyE8allocateEi.exit.i.i
  %i.x = ptrtoaddr ptr %i.w to i64
  %.0.i.i.i25 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.t to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.t, 8
  %i.y = sub i64 %i.x, %.0.i.i.i25
  %diff.check = icmp ugt i64 %i.y, -32
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
  %wide.load = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !218
  %wide.load26 = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !218
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x ptr> %wide.load, ptr %i.z, align 8, !tbaa !218
  store <2 x ptr> %wide.load26, ptr %i.ac, align 8, !tbaa !218
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !232

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP11btRigidBodyE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

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
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !218
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !218
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !235

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ah = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %_ZNK20btAlignedObjectArrayIP11btRigidBodyE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !218
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !218
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !218
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !218
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i.1
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !218
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !218
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i.2
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !218
  store ptr %i.au, ptr %i.as, align 8, !tbaa !218
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP11btRigidBodyE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !237

_ZNK20btAlignedObjectArrayIP11btRigidBodyE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP11btRigidBodyE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP11btRigidBodyE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP11btRigidBodyE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP11btRigidBodyE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP11btRigidBodyE4copyEiiPS1_.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !53, !range !67, !noundef !68
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.i, label %_ZN20btAlignedObjectArrayIP11btRigidBodyE10deallocateEv.exit.i.i

bb.i:                                             ; preds = %_ZNK20btAlignedObjectArrayIP11btRigidBodyE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.w)
  %.pre2.pre.pre.i = load i32, ptr %i.i, align 4, !tbaa !55
  br label %_ZN20btAlignedObjectArrayIP11btRigidBodyE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP11btRigidBodyE10deallocateEv.exit.i.i: ; preds = %bb.i, %_ZNK20btAlignedObjectArrayIP11btRigidBodyE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP11btRigidBodyE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.t, %_ZNK20btAlignedObjectArrayIP11btRigidBodyE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.i ], [ %i.t, %_ZNK20btAlignedObjectArrayIP11btRigidBodyE4copyEiiPS1_.exit.thread.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 1, ptr %i.ay, align 8, !tbaa !53
  store ptr %.0.i.i.i, ptr %i.v, align 8, !tbaa !54
  store i32 %i.o, ptr %i.k, align 8, !tbaa !56
  br label %_ZN20btAlignedObjectArrayIP11btRigidBodyE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP11btRigidBodyE9push_backERKS1_.exit: ; preds = %bb.e, %bb.f, %_ZN20btAlignedObjectArrayIP11btRigidBodyE10deallocateEv.exit.i.i
  %i.az = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP11btRigidBodyE10deallocateEv.exit.i.i ], [ %i.j, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !54
  %i.bc = sext i32 %i.az to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bc
  store ptr %1, ptr %i.bd, align 8, !tbaa !218
  %i.be = add nsw i32 %i.az, 1
  store i32 %i.be, ptr %i.i, align 4, !tbaa !55
  br label %.thread13

bb.j:                                             ; preds = %bb.d
  tail call void @_ZN17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(280) %1, i32 noundef 2)
  br label %.thread13

.thread13:                                        ; preds = %bb.j, %_ZN20btAlignedObjectArrayIP11btRigidBodyE9push_backERKS1_.exit
  %i.bf = load i32, ptr %i.a, align 8, !tbaa !80
  %.fr18 = freeze i32 %i.bf
  %i.bg = and i32 %.fr18, 3
  %.not20 = icmp eq i32 %i.bg, 0                  ; 2 uses
  %i.bh = select i1 %.not20, i16 1, i16 2
  %i.bi = select i1 %.not20, i16 -1, i16 -3
  %i.bj = load ptr, ptr %0, align 8, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef nonnull %1, i16 noundef signext %i.bh, i16 noundef signext %i.bi)
  br label %bb.k

bb.k:                                             ; preds = %.thread13, %bb.c
  ret void
}

declare void @_ZN17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(280), i32 noundef) local_unnamed_addr #2
end_hunk_0
begin_hunk_1_@_ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBodyss:bb.a
  store ptr %.0.i.i.i, ptr %i.v, align 8, !tbaa !54
  store i32 %i.o, ptr %i.k, align 8, !tbaa !56
  br label %_ZN20btAlignedObjectArrayIP11btRigidBodyE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP11btRigidBodyE9push_backERKS1_.exit: ; preds = %bb.e, %bb.f, %_ZN20btAlignedObjectArrayIP11btRigidBodyE10deallocateEv.exit.i.i
  %i.az = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP11btRigidBodyE10deallocateEv.exit.i.i ], [ %i.j, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !54
  %i.bc = sext i32 %i.az to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bc
  store ptr %1, ptr %i.bd, align 8, !tbaa !218
  %i.be = add nsw i32 %i.az, 1
  store i32 %i.be, ptr %i.i, align 4, !tbaa !55
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  tail call void @_ZN17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(280) %1, i32 noundef 2)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN20btAlignedObjectArrayIP11btRigidBodyE9push_backERKS1_.exit
  %i.bf = load ptr, ptr %0, align 8, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef nonnull %1, i16 noundef signext %2, i16 noundef signext %3)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.c
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld13addConstraintEP17btTypedConstraintb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(372) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !51   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !52
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9push_backERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i.i, i32 1, i32 %i.f     ; 4 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !51
  br label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %.pre.i, %bb.d ], [ %i.b, %bb.c ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ] ; 8 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50   ; 9 uses
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i.i
  %i.p = ptrtoaddr ptr %i.o to i64
  %.0.i.i.i8 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.l to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  %i.q = sub i64 %i.p, %.0.i.i.i8
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
  %wide.load = load <2 x ptr>, ptr %i.s, align 8, !tbaa !241
  %wide.load9 = load <2 x ptr>, ptr %i.t, align 8, !tbaa !241
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x ptr> %wide.load, ptr %i.r, align 8, !tbaa !241
  store <2 x ptr> %wide.load9, ptr %i.u, align 8, !tbaa !241
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !243

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
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.prol
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !241
  store ptr %i.y, ptr %i.w, align 8, !tbaa !241
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !244

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.z = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !241
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !241
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !241
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !241
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.1
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !241
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !241
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.2
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !241
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !241
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !245

_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !49, !range !67, !noundef !68
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.e, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.o)
  %.pre2.pre.pre.i = load i32, ptr %i.a, align 4, !tbaa !51
  br label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.l, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.e ], [ %i.l, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 1, ptr %i.aq, align 8, !tbaa !49
  store ptr %.0.i.i.i, ptr %i.n, align 8, !tbaa !50
  store i32 %i.g, ptr %i.c, align 8, !tbaa !52
  br label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP17btTypedConstraintE9push_backERKS1_.exit: ; preds = %bb.a, %bb.b, %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i
  %i.ar = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !50
  %i.au = sext i32 %i.ar to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.au
  store ptr %1, ptr %i.av, align 8, !tbaa !241
  %i.aw = add nsw i32 %i.ar, 1
  store i32 %i.aw, ptr %i.a, align 4, !tbaa !51
  br i1 %2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9push_backERKS1_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !97, !nonnull !68, !align !98
  tail call void @_ZN11btRigidBody16addConstraintRefEP17btTypedConstraint(ptr noundef nonnull align 8 dereferenceable(564) %i.ay, ptr noundef %1)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !99, !nonnull !68, !align !98
  tail call void @_ZN11btRigidBody16addConstraintRefEP17btTypedConstraint(ptr noundef nonnull align 8 dereferenceable(564) %i.ba, ptr noundef %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9push_backERKS1_.exit
  ret void
}

declare void @_ZN11btRigidBody16addConstraintRefEP17btTypedConstraint(ptr noundef nonnull align 8 dereferenceable(564), ptr noundef) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld16removeConstraintEP17btTypedConstraint(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(372) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !51   ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i.i, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE6removeERKS1_.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !241  ; 2 uses
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE6removeERKS1_.exit, label %bb.b

_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.i: ; preds = %bb.b
  %2 = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %3 = icmp sgt i32 %i.b, %2
  br i1 %3, label %bb.d, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE6removeERKS1_.exit

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.i
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.j = add nsw i32 %i.b, -1                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !241
  store ptr %i.m, ptr %i.i, align 8, !tbaa !241
  store ptr %i.g, ptr %i.l, align 8, !tbaa !241
  store i32 %i.j, ptr %i.a, align 4, !tbaa !51
  br label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE6removeERKS1_.exit

_ZN20btAlignedObjectArrayIP17btTypedConstraintE6removeERKS1_.exit: ; preds = %bb.c, %bb.a, %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.i, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !97, !nonnull !68, !align !98
  tail call void @_ZN11btRigidBody19removeConstraintRefEP17btTypedConstraint(ptr noundef nonnull align 8 dereferenceable(564) %i.o, ptr noundef %1)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !99, !nonnull !68, !align !98
  tail call void @_ZN11btRigidBody19removeConstraintRefEP17btTypedConstraint(ptr noundef nonnull align 8 dereferenceable(564) %i.q, ptr noundef %1)
  ret void
}

declare void @_ZN11btRigidBody19removeConstraintRefEP17btTypedConstraint(ptr noundef nonnull align 8 dereferenceable(564), ptr noundef) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld9addActionEP17btActionInterface(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(372) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !61   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !62
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20btAlignedObjectArrayIP17btActionInterfaceE9push_backERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i.i, i32 1, i32 %i.f     ; 4 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20btAlignedObjectArrayIP17btActionInterfaceE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP17btActionInterfaceE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !61
  br label %_ZN20btAlignedObjectArrayIP17btActionInterfaceE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP17btActionInterfaceE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %.pre.i, %bb.d ], [ %i.b, %bb.c ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ] ; 8 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !60   ; 9 uses
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP17btActionInterfaceE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP17btActionInterfaceE8allocateEi.exit.i.i
  %i.p = ptrtoaddr ptr %i.o to i64
  %.0.i.i.i4 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.l to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  %i.q = sub i64 %i.p, %.0.i.i.i4
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
  %wide.load = load <2 x ptr>, ptr %i.s, align 8, !tbaa !91
  %wide.load5 = load <2 x ptr>, ptr %i.t, align 8, !tbaa !91
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x ptr> %wide.load, ptr %i.r, align 8, !tbaa !91
  store <2 x ptr> %wide.load5, ptr %i.u, align 8, !tbaa !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !246

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP17btActionInterfaceE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !91
  store ptr %i.y, ptr %i.w, align 8, !tbaa !91
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !247

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.z = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_ZNK20btAlignedObjectArrayIP17btActionInterfaceE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !91
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !91
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !91
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !91
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.1
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !91
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !91
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.2
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !91
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !91
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP17btActionInterfaceE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !248

_ZNK20btAlignedObjectArrayIP17btActionInterfaceE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP17btActionInterfaceE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP17btActionInterfaceE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP17btActionInterfaceE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP17btActionInterfaceE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP17btActionInterfaceE4copyEiiPS1_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !59, !range !67, !noundef !68
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.e, label %_ZN20btAlignedObjectArrayIP17btActionInterfaceE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btActionInterfaceE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.o)
  %.pre2.pre.pre.i = load i32, ptr %i.a, align 4, !tbaa !61
  br label %_ZN20btAlignedObjectArrayIP17btActionInterfaceE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP17btActionInterfaceE10deallocateEv.exit.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIP17btActionInterfaceE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP17btActionInterfaceE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.l, %_ZNK20btAlignedObjectArrayIP17btActionInterfaceE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.e ], [ %i.l, %_ZNK20btAlignedObjectArrayIP17btActionInterfaceE4copyEiiPS1_.exit.thread.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i8 1, ptr %i.aq, align 8, !tbaa !59
  store ptr %.0.i.i.i, ptr %i.n, align 8, !tbaa !60
  store i32 %i.g, ptr %i.c, align 8, !tbaa !62
  br label %_ZN20btAlignedObjectArrayIP17btActionInterfaceE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP17btActionInterfaceE9push_backERKS1_.exit: ; preds = %bb.a, %bb.b, %_ZN20btAlignedObjectArrayIP17btActionInterfaceE10deallocateEv.exit.i.i
  %i.ar = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP17btActionInterfaceE10deallocateEv.exit.i.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !60
  %i.au = sext i32 %i.ar to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.au
  store ptr %1, ptr %i.av, align 8, !tbaa !91
  %i.aw = add nsw i32 %i.ar, 1
  store i32 %i.aw, ptr %i.a, align 4, !tbaa !61
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld12removeActionEP17btActionInterface(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(372) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !61   ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i.i, label %_ZN20btAlignedObjectArrayIP17btActionInterfaceE6removeERKS1_.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60   ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !91   ; 2 uses
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %_ZNK20btAlignedObjectArrayIP17btActionInterfaceE16findLinearSearchERKS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN20btAlignedObjectArrayIP17btActionInterfaceE6removeERKS1_.exit, label %bb.b

_ZNK20btAlignedObjectArrayIP17btActionInterfaceE16findLinearSearchERKS1_.exit.i: ; preds = %bb.b
  %2 = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %3 = icmp sgt i32 %i.b, %2
  br i1 %3, label %bb.d, label %_ZN20btAlignedObjectArrayIP17btActionInterfaceE6removeERKS1_.exit

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btActionInterfaceE16findLinearSearchERKS1_.exit.i
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.j = add nsw i32 %i.b, -1                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !91
  store ptr %i.m, ptr %i.i, align 8, !tbaa !91
  store ptr %i.g, ptr %i.l, align 8, !tbaa !91
  store i32 %i.j, ptr %i.a, align 4, !tbaa !61
  br label %_ZN20btAlignedObjectArrayIP17btActionInterfaceE6removeERKS1_.exit

_ZN20btAlignedObjectArrayIP17btActionInterfaceE6removeERKS1_.exit: ; preds = %bb.c, %bb.a, %_ZNK20btAlignedObjectArrayIP17btActionInterfaceE16findLinearSearchERKS1_.exit.i, %bb.d
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld10addVehicleEP17btActionInterface(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef %1)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld13removeVehicleEP17btActionInterface(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef %1)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld12addCharacterEP17btActionInterface(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef %1)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld15removeCharacterEP17btActionInterface(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef %1)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef nonnull align 4 dereferenceable(68) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.btAlignedObjectArray.0, align 8 ; 8 uses
  %3 = alloca %struct.InplaceSolverIslandCallback, align 8 ; 12 uses
  tail call void @_ZN15CProfileManager13Start_ProfileEPKc(ptr noundef nonnull @.str.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store i8 1, ptr %i.a, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.f = load i32, ptr %i.e, align 4, !tbaa !51   ; 6 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.loopexit29

bb.b:                                             ; preds = %bb.a
  %i.h = zext nneg i32 %i.f to i64
  %i.i = shl nuw nsw i64 %i.h, 3                  ; 2 uses
  %i.j = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.i, i32 noundef 16)
          to label %.lr.ph.i unwind label %bb.g   ; 3 uses

.lr.ph.i:                                         ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !49
  store ptr %i.j, ptr %i.b, align 8, !tbaa !50
  store i32 %i.f, ptr %i.d, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.i, i1 false), !tbaa !241
  br label %.loopexit29

.loopexit29:                                      ; preds = %.lr.ph.i, %bb.a
  %i.k = phi ptr [ %i.j, %.lr.ph.i ], [ null, %bb.a ]
  store i32 %i.f, ptr %i.c, align 4, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.loopexit29
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.loopexit29 ] ; 4 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(372) %0)
          to label %bb.d unwind label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv, %i.q
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !241
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store ptr %i.u, ptr %i.v, align 8, !tbaa !241
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.c

bb.f:                                             ; preds = %bb.o
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit26

bb.g:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit:                                        ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.h:                                             ; preds = %bb.d
  %i.y = icmp sgt i32 %i.f, 1
  br i1 %i.y, label %bb.i, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9quickSortI33btSortConstraintOnIslandPredicateEEvT_.exit

bb.i:                                             ; preds = %bb.h
  %i.z = add nsw i32 %i.f, -1
  invoke void @_ZN20btAlignedObjectArrayIP17btTypedConstraintE17quickSortInternalI33btSortConstraintOnIslandPredicateEEvT_ii(ptr noundef nonnull align 8 dereferenceable(25) %2, i32 noundef 0, i32 noundef %i.z)
          to label %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9quickSortI33btSortConstraintOnIslandPredicateEEvT_.exit unwind label %.loopexit.split-lp

_ZN20btAlignedObjectArrayIP17btTypedConstraintE9quickSortI33btSortConstraintOnIslandPredicateEEvT_.exit: ; preds = %bb.h, %bb.i
  %i.aa = load ptr, ptr %0, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(372) %0)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9quickSortI33btSortConstraintOnIslandPredicateEEvT_.exit
  %.not = icmp eq i32 %i.ad, 0
  %i.ae = load ptr, ptr %i.b, align 8
  %spec.select = select i1 %.not, ptr null, ptr %i.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21 ; 3 uses
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !90
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !249
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !81 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoE27InplaceSolverIslandCallback, i64 16), ptr %3, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.ao, align 8, !tbaa !250
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ag, ptr %i.ap, align 8, !tbaa !252
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %spec.select, ptr %i.aq, align 8, !tbaa !255
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.ah, ptr %i.ar, align 8, !tbaa !256
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.aj, ptr %i.as, align 8, !tbaa !257
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.al, ptr %i.at, align 8, !tbaa !258
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.an, ptr %i.au, align 8, !tbaa !259
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !69
  %i.ax = load ptr, ptr %i.an, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = invoke noundef i32 %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %i.ag, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 noundef %i.aw, i32 noundef %i.ba)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !65
  %i.bg = load ptr, ptr %i.am, align 8, !tbaa !81
  invoke void @_ZN25btSimulationIslandManager22buildAndProcessIslandsEP12btDispatcherP16btCollisionWorldPNS_14IslandCallbackE(ptr noundef nonnull align 8 dereferenceable(105) %i.bf, ptr noundef %i.bg, ptr noundef nonnull %0, ptr noundef nonnull %3)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.af, align 8, !tbaa !21 ; 2 uses
  %i.bi = load ptr, ptr %i.ai, align 8, !tbaa !90
  %i.bj = load ptr, ptr %i.ak, align 8, !tbaa !249
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  invoke void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull align 4 dereferenceable(68) %1, ptr noundef %i.bi, ptr noundef %i.bj)
          to label %bb.n unwind label %bb.q
end_hunk_1
