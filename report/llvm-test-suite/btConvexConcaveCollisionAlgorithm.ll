inline.NumInlined: 264
inline.NumDeleted: 90
begin_hunk_0_@_ZN33btConvexConcaveCollisionAlgorithmD2Ev:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.e)
          to label %_ZN24btConvexTriangleCallback10clearCacheEv.exit.i unwind label %bb.c, !inline_history !33

_ZN24btConvexTriangleCallback10clearCacheEv.exit.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.j)
          to label %bb.b unwind label %bb.c, !inline_history !34

bb.b:                                             ; preds = %_ZN24btConvexTriangleCallback10clearCacheEv.exit.i
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(96) %i.a)
          to label %_ZN24btConvexTriangleCallbackD2Ev.exit unwind label %bb.e, !inline_history !34

bb.c:                                             ; preds = %_ZN24btConvexTriangleCallback10clearCacheEv.exit.i, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(96) %i.a)
          to label %.body unwind label %bb.d, !inline_history !34

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #11, !inline_history !34
  unreachable

_ZN24btConvexTriangleCallbackD2Ev.exit:           ; preds = %bb.b
  tail call void @_ZN30btActivatingCollisionAlgorithmD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.n, %bb.c ]
  invoke void @_ZN30btActivatingCollisionAlgorithmD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body

bb.g:                                             ; preds = %.body
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #11
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN33btConvexConcaveCollisionAlgorithmD0Ev(ptr noundef nonnull align 8 dereferenceable(120) initializes((0, 8), (24, 32)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN33btConvexConcaveCollisionAlgorithmD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  resume { ptr, i32 } %i.a
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define dso_local void @_ZN33btConvexConcaveCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !41
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.d, 0
  %i.h = shl nsw i32 %i.d, 1
  %i.i = select i1 %.not.i.i, i32 1, i32 %i.h     ; 4 uses
  %i.j = icmp slt i32 %i.d, %i.i
  br i1 %i.j, label %bb.d, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = sext i32 %i.i to i64
  %i.l = shl nsw i64 %i.k, 3
  %i.m = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.l, i32 noundef 16)
  %.pre.i = load i32, ptr %i.c, align 4, !tbaa !36
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i: ; preds = %bb.e, %bb.d
  %i.n = phi i32 [ %.pre.i, %bb.e ], [ %i.d, %bb.d ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.m, %bb.e ], [ null, %bb.d ] ; 8 uses
  %i.o = icmp sgt i32 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42   ; 9 uses
  br i1 %i.o, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i
  %i.r = ptrtoaddr ptr %i.q to i64
  %.0.i.i.i6 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.n to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.n, 6
  %i.s = sub i64 %.0.i.i.i6, %i.r
  %diff.check = icmp ult i64 %i.s, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <2 x ptr>, ptr %i.u, align 8, !tbaa !43
  %wide.load7 = load <2 x ptr>, ptr %i.v, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x ptr> %wide.load, ptr %i.t, align 8, !tbaa !43
  store <2 x ptr> %wide.load7, ptr %i.w, align 8, !tbaa !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.prol
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !43
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !47

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i.i.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !43
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !43
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !43
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !43
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.1
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !43
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !43
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.2
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !43
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !43
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !49

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp ne ptr %i.q, null
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %3 = load i8, ptr %2, align 8, !range !50
  %4 = trunc nuw i8 %3 to i1
  %or.cond.i = select i1 %.not.i5.i.i, i1 %4, i1 false
  br i1 %or.cond.i, label %bb.f, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.old.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.old8.i = load i8, ptr %.old.i, align 8, !tbaa !51, !range !50, !noundef !52
  %.old9.i = trunc nuw i8 %.old8.i to i1
  br i1 %.old9.i, label %bb.f, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.q)
  %.pre2.pre.pre.i = load i32, ptr %i.c, align 4, !tbaa !36
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.n, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.f ], [ %i.n, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.ap, align 8, !tbaa !51
  store ptr %.0.i.i.i, ptr %i.p, align 8, !tbaa !42
  store i32 %i.i, ptr %i.e, align 8, !tbaa !41
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !43
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i
  %i.aq = phi ptr [ %.pre, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  %i.ar = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %i.d, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !42
  %i.au = sext i32 %i.ar to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.au
  store ptr %i.aq, ptr %i.av, align 8, !tbaa !43
  %i.aw = add nsw i32 %i.ar, 1
  store i32 %i.aw, ptr %i.c, align 4, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN24btConvexTriangleCallbackC2EP12btDispatcherP17btCollisionObjectS3_b(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 24), (64, 80)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV24btConvexTriangleCallback, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.b, align 8, !tbaa !28
  %i.c = select i1 %4, ptr %3, ptr %2             ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !29
  %i.e = select i1 %4, ptr %2, ptr %3             ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !30
  %i.g = load ptr, ptr %1, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.c, ptr noundef %i.e)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.j, ptr %i.k, align 8, !tbaa !31
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.j)
          to label %_ZN24btConvexTriangleCallback10clearCacheEv.exit unwind label %bb.c, !inline_history !32

_ZN24btConvexTriangleCallback10clearCacheEv.exit: ; preds = %bb.b
  ret void

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.p

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #11
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN24btConvexTriangleCallback10clearCacheEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.d)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN24btConvexTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV24btConvexTriangleCallback, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.d)
          to label %_ZN24btConvexTriangleCallback10clearCacheEv.exit unwind label %bb.c, !inline_history !32

_ZN24btConvexTriangleCallback10clearCacheEv.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.i)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN24btConvexTriangleCallback10clearCacheEv.exit
  tail call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0)
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN24btConvexTriangleCallback10clearCacheEv.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.m

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #11
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN24btConvexTriangleCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV24btConvexTriangleCallback, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.d)
          to label %_ZN24btConvexTriangleCallback10clearCacheEv.exit.i unwind label %bb.c, !inline_history !33

_ZN24btConvexTriangleCallback10clearCacheEv.exit.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.i)
          to label %bb.b unwind label %bb.c, !inline_history !34

bb.b:                                             ; preds = %_ZN24btConvexTriangleCallback10clearCacheEv.exit.i
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(96) %0)
          to label %_ZN24btConvexTriangleCallbackD2Ev.exit unwind label %bb.e, !inline_history !34

bb.c:                                             ; preds = %_ZN24btConvexTriangleCallback10clearCacheEv.exit.i, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(96) %0)
          to label %.body unwind label %bb.d, !inline_history !34

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #11, !inline_history !34
  unreachable

_ZN24btConvexTriangleCallbackD2Ev.exit:           ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.m, %bb.c ]
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: uwtable
define dso_local void @_ZN24btConvexTriangleCallback15processTriangleEP9btVector3ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.btVector3, align 16          ; 6 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  %8 = alloca %class.btVector3, align 8           ; 5 uses
  %9 = alloca %class.btVector3, align 8           ; 5 uses
  %10 = alloca %class.btVector3, align 8          ; 5 uses
  %11 = alloca %class.btTriangleShape, align 8    ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
end_hunk_0
begin_hunk_1_@llvm.lifetime.end.p0
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN21btConvexInternalShape9setMarginEf(ptr noundef nonnull align 8 dereferenceable(64) %0, float noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %1, ptr %i.a, align 8, !tbaa !69
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN24btConvexTriangleCallback22setTimeStepAndCountersEfRK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(96) initializes((56, 64), (72, 84)) %0, float noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %4 = alloca %class.btTransform, align 4         ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %2, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %1, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %3, ptr %i.c, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30   ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.o = load float, ptr %i.f, align 4, !tbaa !57, !noalias !73 ; 5 uses
  %i.p = load float, ptr %i.g, align 4, !tbaa !57, !noalias !73 ; 5 uses
  %i.q = load float, ptr %i.h, align 4, !tbaa !57, !noalias !73 ; 5 uses
  %i.r = load float, ptr %i.i, align 4, !tbaa !57, !noalias !73 ; 5 uses
  %i.s = load float, ptr %i.j, align 4, !tbaa !57, !noalias !73 ; 5 uses
  %i.t = load float, ptr %i.k, align 4, !tbaa !57, !noalias !73 ; 5 uses
  %i.u = load float, ptr %i.l, align 4, !tbaa !57, !noalias !73 ; 5 uses
  %i.v = load float, ptr %i.m, align 4, !tbaa !57, !noalias !73 ; 5 uses
  %i.w = load float, ptr %i.n, align 4, !tbaa !57, !noalias !73 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.y = load float, ptr %i.x, align 4, !tbaa !57, !noalias !78
  %i.z = fneg float %i.y                          ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !57, !noalias !78
  %i.ac = fneg float %i.ab                        ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !57, !noalias !78
  %i.af = fneg float %i.ae                        ; 3 uses
  %i.ag = fmul float %i.p, %i.ac
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.o, float %i.z, float %i.ag)
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.af, float %i.ah)
  %i.aj = fmul float %i.s, %i.ac
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.r, float %i.z, float %i.aj)
  %i.al = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.af, float %i.ak)
  %i.am = fmul float %i.v, %i.ac
  %i.an = tail call float @llvm.fmuladd.f32(float %i.u, float %i.z, float %i.am)
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.af, float %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !29 ; 13 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load float, ptr %i.ar, align 4, !tbaa !57, !noalias !79 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.au = load float, ptr %i.at, align 4, !tbaa !57, !noalias !79 ; 3 uses
  %i.av = fmul float %i.p, %i.au
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.as, float %i.o, float %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !57, !noalias !79 ; 3 uses
  %i.az = tail call noundef float @llvm.fmuladd.f32(float %i.ay, float %i.q, float %i.aw)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !57, !noalias !79 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !57, !noalias !79 ; 3 uses
  %i.be = fmul float %i.p, %i.bd
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.o, float %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 44
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !57, !noalias !79 ; 3 uses
  %i.bi = tail call noundef float @llvm.fmuladd.f32(float %i.bh, float %i.q, float %i.bf)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !57, !noalias !79 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !57, !noalias !79 ; 3 uses
  %i.bn = fmul float %i.p, %i.bm
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.o, float %i.bn)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !57, !noalias !79 ; 3 uses
  %i.br = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.q, float %i.bo)
  %i.bs = fmul float %i.s, %i.au
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.as, float %i.r, float %i.bs)
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.ay, float %i.t, float %i.bt)
  %i.bv = fmul float %i.s, %i.bd
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.r, float %i.bv)
  %i.bx = tail call noundef float @llvm.fmuladd.f32(float %i.bh, float %i.t, float %i.bw)
  %i.by = fmul float %i.s, %i.bm
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.r, float %i.by)
  %i.ca = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.t, float %i.bz)
  %i.cb = fmul float %i.v, %i.au
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.as, float %i.u, float %i.cb)
  %i.cd = tail call noundef float @llvm.fmuladd.f32(float %i.ay, float %i.w, float %i.cc)
  %i.ce = fmul float %i.v, %i.bd
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.u, float %i.ce)
  %i.cg = tail call noundef float @llvm.fmuladd.f32(float %i.bh, float %i.w, float %i.cf)
  %i.ch = fmul float %i.v, %i.bm
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.u, float %i.ch)
  %i.cj = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.w, float %i.ci)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !57, !noalias !84 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aq, i64 60
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !57, !noalias !84 ; 3 uses
  %i.co = fmul float %i.p, %i.cn
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.o, float %i.cl, float %i.co)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !57, !noalias !84 ; 3 uses
  %i.cs = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.cr, float %i.cp)
  %i.ct = fadd float %i.ai, %i.cs
  %i.cu = fmul float %i.s, %i.cn
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.r, float %i.cl, float %i.cu)
  %i.cw = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.cr, float %i.cv)
  %i.cx = fadd float %i.al, %i.cw
  %i.cy = fmul float %i.v, %i.cn
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.u, float %i.cl, float %i.cy)
  %i.da = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.cr, float %i.cz)
  %i.db = fadd float %i.ao, %i.da
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.ct, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.cx, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.db, i64 0
  store float %i.az, ptr %4, align 4
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.bi, ptr %.sroa.416.0..sroa_idx, align 4
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.br, ptr %.sroa.517.0..sroa_idx, align 4
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %.sroa.618.0..sroa_idx, align 4, !tbaa !67
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %i.bu, ptr %i.dc, align 4
  %.sroa.919.16..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.bx, ptr %.sroa.919.16..sroa_idx, align 4
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.ca, ptr %.sroa.10.16..sroa_idx, align 4
  %.sroa.1120.16..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float 0.000000e+00, ptr %.sroa.1120.16..sroa_idx, align 4, !tbaa !67
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %i.cd, ptr %i.dd, align 4
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %i.cg, ptr %.sroa.14.32..sroa_idx, align 4
  %.sroa.1521.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.cj, ptr %.sroa.1521.32..sroa_idx, align 4
  %.sroa.1622.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %.sroa.1622.32..sroa_idx, align 4, !tbaa !67
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.de, align 4
  %.sroa.19.48..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.19.48..sroa_idx, align 4, !tbaa !67
  %i.df = getelementptr inbounds nuw i8, ptr %i.aq, i64 200
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !58 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %i.dh, ptr noundef nonnull align 4 dereferenceable(16) %i.di)
  %i.dm = load <2 x float>, ptr %i.di, align 8, !tbaa !57
  %i.dn = insertelement <2 x float> poison, float %1, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dp = fadd <2 x float> %i.do, %i.dm
  store <2 x float> %i.dp, ptr %i.di, align 8, !tbaa !57
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 8, !tbaa !57
  %i.ds = fadd float %1, %i.dr
  store float %i.ds, ptr %i.dq, align 8, !tbaa !57
  %i.dt = load <2 x float>, ptr %i.dh, align 8, !tbaa !57
  %i.du = fsub <2 x float> %i.dt, %i.do
  store <2 x float> %i.du, ptr %i.dh, align 8, !tbaa !57
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dw = load float, ptr %i.dv, align 8, !tbaa !57
  %i.dx = fsub float %i.dw, %1
  store float %i.dx, ptr %i.dv, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN33btConvexConcaveCollisionAlgorithm10clearCacheEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.d), !inline_history !32
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN33btConvexConcaveCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !10, !range !50, !noundef !52
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr %2, ptr %1           ; 2 uses
  %i.e = select i1 %i.c, ptr %1, ptr %2           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !64
  %i.j = add i32 %i.i, -21
  %i.k = icmp ult i32 %i.j, 9
  br i1 %i.k, label %bb.b, label %_ZN16btManifoldResult20refreshContactPointsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !64
  %i.p = icmp slt i32 %i.o, 20
  br i1 %i.p, label %bb.c, label %_ZN16btManifoldResult20refreshContactPointsEv.exit

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef float %i.s(ptr noundef nonnull align 8 dereferenceable(28) %i.g)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !85
  tail call void @_ZN24btConvexTriangleCallback22setTimeStepAndCountersEfRK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(96) %i.u, float noundef %i.t, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull %4)
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !35   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 712
  store ptr %i.d, ptr %i.z, align 8, !tbaa !88
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 720
  store ptr %i.e, ptr %i.aa, align 8, !tbaa !91
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(28) %i.g, ptr noundef nonnull %i.u, ptr noundef nonnull align 4 dereferenceable(16) %i.ab, ptr noundef nonnull align 4 dereferenceable(16) %i.ac)
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !85  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 728
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !92
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 712
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !88
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !93
  %.not1.i = icmp eq ptr %i.ak, %i.am             ; 2 uses
  %..i = select i1 %.not1.i, i64 16, i64 80
  %.5.i = select i1 %.not1.i, i64 80, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 %..i
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 %.5.i
  tail call void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(744) %i.ag, ptr noundef nonnull align 4 dereferenceable(64) %i.an, ptr noundef nonnull align 4 dereferenceable(64) %i.ao)
  br label %_ZN16btManifoldResult20refreshContactPointsEv.exit

_ZN16btManifoldResult20refreshContactPointsEv.exit: ; preds = %.sink.split.i, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local noundef float @_ZN33btConvexConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.btVector3, align 8           ; 9 uses
  %6 = alloca %class.btVector3, align 4           ; 7 uses
  %7 = alloca %struct.LocalTriangleSphereCastCallback, align 8 ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !10, !range !50, !noundef !52
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr %2, ptr %1           ; 27 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.g = load float, ptr %i.e, align 4, !tbaa !57 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 124 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !57 ; 3 uses
  %i.l = load float, ptr %i.j, align 4, !tbaa !57
  %i.m = extractelement <2 x float> %i.k, i64 0
  %i.n = fsub float %i.g, %i.m                    ; 2 uses
  %i.o = fsub float %i.i, %i.l                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.q = load float, ptr %i.p, align 4, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.s = load float, ptr %i.r, align 4, !tbaa !57 ; 2 uses
  %i.t = fsub float %i.q, %i.s                    ; 2 uses
  %i.u = fmul float %i.o, %i.o
  %i.v = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.u)
  %i.w = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 268
  %i.y = load float, ptr %i.x, align 4, !tbaa !94 ; 2 uses
  %i.z = fmul float %i.y, %i.y
  %i.aa = fcmp olt float %i.w, %i.z
  br i1 %i.aa, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ad = select i1 %i.c, ptr %1, ptr %2          ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !57, !noalias !95
  %i.aj = fneg float %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  %i.al = load float, ptr %i.ak, align 4, !tbaa !57, !noalias !95
  %i.am = fneg float %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ao = load float, ptr %i.an, align 4, !tbaa !57, !noalias !95
  %i.ap = fneg float %i.ao
  %i.aq = load float, ptr %i.ab, align 4, !tbaa !57, !noalias !98 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.as = load float, ptr %i.ar, align 4, !tbaa !57, !noalias !98 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.au = load float, ptr %i.at, align 4, !tbaa !57, !noalias !98 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.aw = load float, ptr %i.av, align 4, !tbaa !57, !noalias !98 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !57, !noalias !98 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.ba = load float, ptr %i.az, align 4, !tbaa !57, !noalias !98 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !57, !noalias !98 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.be = load float, ptr %i.bd, align 4, !tbaa !57, !noalias !98 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !57, !noalias !98 ; 3 uses
  %i.bh = load float, ptr %i.ac, align 4, !tbaa !57, !noalias !103 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !57, !noalias !103 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !57, !noalias !103 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !57, !noalias !103 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !57, !noalias !103 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.br = load float, ptr %i.bq, align 4, !tbaa !57, !noalias !103 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !57, !noalias !103 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !57, !noalias !103 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !57, !noalias !103 ; 3 uses
  %i.by = load float, ptr %i.ae, align 4, !tbaa !57, !noalias !108 ; 6 uses
  %i.bz = load <3 x float>, ptr %i.ae, align 4, !tbaa !57, !noalias !108 ; 3 uses
  %i.ca = shufflevector <3 x float> %i.bz, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2> ; 3 uses
  %i.cb = load float, ptr %i.af, align 4, !tbaa !57, !noalias !108 ; 6 uses
  %i.cc = load <3 x float>, ptr %i.af, align 4, !tbaa !57, !noalias !108 ; 3 uses
  %i.cd = shufflevector <3 x float> %i.cc, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2> ; 3 uses
  %i.ce = load float, ptr %i.ag, align 4, !tbaa !57, !noalias !108 ; 6 uses
  %i.cf = load <3 x float>, ptr %i.ag, align 4, !tbaa !57, !noalias !108 ; 3 uses
  %i.cg = shufflevector <3 x float> %i.cf, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2> ; 3 uses
  %i.ch = fmul float %i.cb, %i.as
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.by, float %i.ch)
  %i.cj = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.ce, float %i.ci)
  %i.ck = fmul float %i.cb, %i.ay
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.by, float %i.ck)
  %i.cm = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.ce, float %i.cl)
  %i.cn = fmul float %i.cb, %i.be
  %i.co = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.by, float %i.cn)
  %i.cp = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.ce, float %i.co)
  %i.cq = extractelement <3 x float> %i.cc, i64 1 ; 6 uses
  %i.cr = fmul float %i.cq, %i.as
  %i.cs = extractelement <3 x float> %i.bz, i64 1 ; 6 uses
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.cs, float %i.cr)
  %i.cu = extractelement <3 x float> %i.cf, i64 1 ; 6 uses
  %i.cv = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.cu, float %i.ct)
  %i.cw = fmul float %i.cq, %i.ay
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.cs, float %i.cw)
  %i.cy = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.cu, float %i.cx)
  %i.cz = fmul float %i.cq, %i.be
  %i.da = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.cs, float %i.cz)
  %i.db = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.cu, float %i.da)
  %i.dc = extractelement <3 x float> %i.cc, i64 2 ; 6 uses
  %i.dd = fmul float %i.dc, %i.as
  %i.de = extractelement <3 x float> %i.bz, i64 2 ; 6 uses
  %i.df = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.de, float %i.dd)
  %i.dg = extractelement <3 x float> %i.cf, i64 2 ; 6 uses
  %i.dh = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.dg, float %i.df)
  %i.di = fmul float %i.dc, %i.ay
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.de, float %i.di)
  %i.dk = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.dg, float %i.dj)
  %i.dl = fmul float %i.dc, %i.be
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.de, float %i.dl)
  %i.dn = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.dg, float %i.dm)
  %i.do = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dp = insertelement <2 x float> %i.do, float %i.am, i64 1 ; 3 uses
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dr = fmul <4 x float> %i.cd, %i.dq
  %i.ds = load <2 x float>, ptr %i.h, align 4, !tbaa !57, !noalias !111 ; 3 uses
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.du = shufflevector <2 x float> %i.ds, <2 x float> %i.dp, <4 x i32> <i32 0, i32 3, i32 0, i32 2>
  %i.dv = fmul <4 x float> %i.cd, %i.du
  %i.dw = shufflevector <2 x float> %i.dp, <2 x float> %i.ds, <4 x i32> <i32 1, i32 1, i32 1, i32 2>
  %i.dx = fmul <4 x float> %i.cd, %i.dw
  %i.dy = insertelement <2 x float> %i.k, float %i.aj, i64 1 ; 2 uses
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ea = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.dz, <4 x float> %i.dr)
  %i.eb = shufflevector <2 x float> %i.dy, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 0>
  %i.ec = insertelement <4 x float> poison, float %i.g, i64 0
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> %i.eb, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 2 uses
  %i.ef = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.ee, <4 x float> %i.dv)
  %i.eg = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.eh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.eg, <4 x float> %i.dx)
  %i.ei = insertelement <4 x float> poison, float %i.s, i64 0
  %i.ej = insertelement <4 x float> %i.ei, float %i.ap, i64 1 ; 2 uses
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.el = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.ek, <4 x float> %i.ea)
  %i.em = shufflevector <4 x float> %i.dt, <4 x float> %i.ej, <4 x i32> <i32 1, i32 5, i32 1, i32 4> ; 2 uses
  %i.en = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.em, <4 x float> %i.ef)
  %i.eo = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.ep = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.eo, <4 x float> %i.eh) ; 2 uses
  %i.eq = fadd <4 x float> %i.el, %i.ep           ; 8 uses
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.es = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 2, i32 1>
  %i.et = fadd <4 x float> %i.es, %i.en           ; 4 uses
  %i.eu = shufflevector <4 x float> %i.eq, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.ev = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.eq, <2 x i32> <i32 5, i32 1> ; 3 uses
  %i.ew = fmul float %i.cb, %i.bj
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.by, float %i.ew)
  %i.ey = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.ce, float %i.ex)
  %i.ez = fmul float %i.cb, %i.bp
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.by, float %i.ez)
  %i.fb = tail call noundef float @llvm.fmuladd.f32(float %i.br, float %i.ce, float %i.fa)
  %i.fc = fmul float %i.cb, %i.bv
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.by, float %i.fc)
  %i.fe = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.ce, float %i.fd)
  %i.ff = fmul float %i.cq, %i.bj
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.cs, float %i.ff)
  %i.fh = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.cu, float %i.fg)
  %i.fi = fmul float %i.cq, %i.bp
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.cs, float %i.fi)
  %i.fk = tail call noundef float @llvm.fmuladd.f32(float %i.br, float %i.cu, float %i.fj)
  %i.fl = fmul float %i.cq, %i.bv
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.cs, float %i.fl)
  %i.fn = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.cu, float %i.fm)
  %i.fo = fmul float %i.dc, %i.bj
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.de, float %i.fo)
  %i.fq = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.dg, float %i.fp)
  %i.fr = fmul float %i.dc, %i.bp
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.de, float %i.fr)
  %i.ft = tail call noundef float @llvm.fmuladd.f32(float %i.br, float %i.dg, float %i.fs)
  %i.fu = fmul float %i.dc, %i.bv
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.de, float %i.fu)
  %i.fw = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.dg, float %i.fv)
  %i.fx = shufflevector <4 x float> %i.et, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.fy = insertelement <2 x float> %i.eu, float 0.000000e+00, i64 1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !58 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !64
  %i.gd = add i32 %i.gc, -21
  %i.ge = icmp ult i32 %i.gd, 9
  br i1 %i.ge, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store <2 x float> %i.er, ptr %5, align 8
  %.sroa.22.48..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <2 x float> %i.ev, ptr %.sroa.22.48..sroa_idx, align 8, !tbaa !67
  %i.gf = extractelement <4 x float> %i.eq, i64 2 ; 3 uses
  %i.gg = extractelement <4 x float> %i.et, i64 2 ; 4 uses
  %i.gh = fcmp olt float %i.gg, %i.gf
  br i1 %i.gh, label %bb.d, label %_Z8btSetMinIfEvRT_RKS0_.exit.i

end_hunk_1
begin_hunk_2_@_ZZN33btConvexConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallback15processTriangleEP9btVector3ii:bb.a
  store i8 0, ptr %i.u, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  invoke void @_ZN22btSubsimplexConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = invoke noundef zeroext i1 @_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(64) %i.v, ptr noundef nonnull align 4 dereferenceable(64) %i.w, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(188) %5)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %i.x, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.y = load float, ptr %i.i, align 4, !tbaa !116
  %i.z = load float, ptr %i.f, align 8, !tbaa !120 ; 2 uses
  %i.aa = fcmp ogt float %i.y, %i.z
  br i1 %i.aa, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  store float %i.z, ptr %i.i, align 4, !tbaa !116
  br label %bb.j

bb.g:                                             ; preds = %bb.a, %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.h:                                             ; preds = %bb.j, %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.i:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.m unwind label %bb.p

bb.j:                                             ; preds = %bb.e, %bb.f, %bb.d
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void

bb.m:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.ad, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %.pn, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %.pn12

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #11
  unreachable
}

declare void @_ZN22btSubsimplexConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(188)) unnamed_addr #1

declare void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResultD2Ev(ptr noundef nonnull align 8 dead_on_return(188) dereferenceable(188) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResult9DebugDrawEf(ptr noundef nonnull align 8 dereferenceable(188) %0, float noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(64) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResultD0Ev(ptr noundef nonnull align 8 dead_on_return(188) dereferenceable(188) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

declare void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !16, i64 16}
!11 = !{!"_ZTS33btConvexConcaveCollisionAlgorithm", !12, i64 0, !16, i64 16, !17, i64 24}
!12 = !{!"_ZTS30btActivatingCollisionAlgorithm", !13, i64 0}
!13 = !{!"_ZTS20btCollisionAlgorithm", !14, i64 8}
!14 = !{!"p1 _ZTS12btDispatcher", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{!"_ZTS24btConvexTriangleCallback", !18, i64 0, !19, i64 8, !19, i64 16, !20, i64 24, !20, i64 40, !21, i64 56, !14, i64 64, !22, i64 72, !23, i64 80, !5, i64 84, !24, i64 88}
!18 = !{!"_ZTS18btTriangleCallback"}
!19 = !{!"p1 _ZTS17btCollisionObject", !15, i64 0}
!20 = !{!"_ZTS9btVector3", !6, i64 0}
!21 = !{!"p1 _ZTS16btManifoldResult", !15, i64 0}
!22 = !{!"p1 _ZTS16btDispatcherInfo", !15, i64 0}
!23 = !{!"float", !6, i64 0}
!24 = !{!"p1 _ZTS20btPersistentManifold", !15, i64 0}
!25 = !{!26, !14, i64 0}
!26 = !{!"_ZTS36btCollisionAlgorithmConstructionInfo", !14, i64 0, !24, i64 8}
!27 = !{!17, !14, i64 64}
!28 = !{!17, !22, i64 72}
!29 = !{!17, !19, i64 8}
!30 = !{!17, !19, i64 16}
!31 = !{!17, !24, i64 88}
!32 = !{ptr @_ZN24btConvexTriangleCallback10clearCacheEv}
!33 = !{ptr @_ZN24btConvexTriangleCallbackD2Ev, ptr @_ZN24btConvexTriangleCallback10clearCacheEv}
!34 = !{ptr @_ZN24btConvexTriangleCallbackD2Ev}
!35 = !{!11, !24, i64 112}
!36 = !{!37, !5, i64 4}
!37 = !{!"_ZTS20btAlignedObjectArrayIP20btPersistentManifoldE", !38, i64 0, !5, i64 4, !5, i64 8, !39, i64 16, !16, i64 24}
!38 = !{!"_ZTS18btAlignedAllocatorIP20btPersistentManifoldLj16EE"}
!39 = !{!"p2 _ZTS20btPersistentManifold", !40, i64 0}
!40 = !{!"any p2 pointer", !15, i64 0}
!41 = !{!37, !5, i64 8}
!42 = !{!37, !39, i64 16}
!43 = !{!24, !24, i64 0}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = distinct !{!49, !45}
!50 = !{i8 0, i8 2}
!51 = !{!37, !16, i64 24}
!52 = !{}
!53 = !{!54, !55, i64 24}
!54 = !{!"_ZTS16btDispatcherInfo", !23, i64 0, !5, i64 4, !5, i64 8, !23, i64 12, !16, i64 16, !55, i64 24, !16, i64 32, !16, i64 33, !16, i64 34, !23, i64 36, !16, i64 40, !23, i64 44, !56, i64 48}
!55 = !{!"p1 _ZTS12btIDebugDraw", !15, i64 0}
!56 = !{!"p1 _ZTS12btStackAlloc", !15, i64 0}
!57 = !{!23, !23, i64 0}
!58 = !{!59, !63, i64 200}
!59 = !{!"_ZTS17btCollisionObject", !60, i64 8, !60, i64 72, !20, i64 136, !20, i64 152, !20, i64 168, !16, i64 184, !23, i64 188, !62, i64 192, !63, i64 200, !63, i64 208, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !23, i64 232, !23, i64 236, !23, i64 240, !15, i64 248, !5, i64 256, !23, i64 260, !23, i64 264, !23, i64 268, !16, i64 272, !6, i64 273}
!60 = !{!"_ZTS11btTransform", !61, i64 0, !20, i64 48}
!61 = !{!"_ZTS11btMatrix3x3", !6, i64 0}
!62 = !{!"p1 _ZTS17btBroadphaseProxy", !15, i64 0}
!63 = !{!"p1 _ZTS16btCollisionShape", !15, i64 0}
!64 = !{!65, !5, i64 8}
!65 = !{!"_ZTS16btCollisionShape", !5, i64 8, !15, i64 16}
!66 = !{i64 0, i64 16, !67}
!67 = !{!6, !6, i64 0}
!68 = !{!17, !23, i64 80}
!69 = !{!70, !23, i64 56}
!70 = !{!"_ZTS21btConvexInternalShape", !71, i64 0, !20, i64 24, !20, i64 40, !23, i64 56, !23, i64 60}
!71 = !{!"_ZTS13btConvexShape", !65, i64 0}
!72 = !{!17, !21, i64 56}
!73 = !{!74, !76}
!74 = distinct !{!74, !75, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!75 = distinct !{!75, !"_ZNK11btMatrix3x39transposeEv"}
!76 = distinct !{!76, !77, !"_ZNK11btTransform7inverseEv: argument 0"}
!77 = distinct !{!77, !"_ZNK11btTransform7inverseEv"}
!78 = !{!76}
!79 = !{!80, !82}
!80 = distinct !{!80, !81, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!81 = distinct !{!81, !"_ZmlRK11btMatrix3x3S1_"}
!82 = distinct !{!82, !83, !"_ZNK11btTransformmlERKS_: argument 0"}
!83 = distinct !{!83, !"_ZNK11btTransformmlERKS_"}
!84 = !{!82}
!85 = !{!86, !24, i64 8}
!86 = !{!"_ZTS16btManifoldResult", !87, i64 0, !24, i64 8, !60, i64 16, !60, i64 80, !19, i64 144, !19, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172}
!87 = !{!"_ZTSN36btDiscreteCollisionDetectorInterface6ResultE"}
!88 = !{!89, !15, i64 712}
!89 = !{!"_ZTS20btPersistentManifold", !90, i64 0, !6, i64 8, !15, i64 712, !15, i64 720, !5, i64 728, !23, i64 732, !23, i64 736, !5, i64 740}
!90 = !{!"_ZTS13btTypedObject", !5, i64 0}
!91 = !{!89, !15, i64 720}
!92 = !{!89, !5, i64 728}
!93 = !{!86, !19, i64 144}
!94 = !{!59, !23, i64 268}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZNK11btTransform7inverseEv: argument 0"}
!97 = distinct !{!97, !"_ZNK11btTransform7inverseEv"}
!98 = !{!99, !101}
!99 = distinct !{!99, !100, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!100 = distinct !{!100, !"_ZmlRK11btMatrix3x3S1_"}
!101 = distinct !{!101, !102, !"_ZNK11btTransformmlERKS_: argument 0"}
!102 = distinct !{!102, !"_ZNK11btTransformmlERKS_"}
!103 = !{!104, !106}
!104 = distinct !{!104, !105, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!105 = distinct !{!105, !"_ZmlRK11btMatrix3x3S1_"}
!106 = distinct !{!106, !107, !"_ZNK11btTransformmlERKS_: argument 0"}
!107 = distinct !{!107, !"_ZNK11btTransformmlERKS_"}
!108 = !{!109, !96}
!109 = distinct !{!109, !110, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!110 = distinct !{!110, !"_ZNK11btMatrix3x39transposeEv"}
!111 = !{!106}
!112 = !{!59, !23, i64 264}
!113 = !{!114, !23, i64 200}
!114 = !{!"_ZTSZN33btConvexConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback", !18, i64 0, !60, i64 8, !60, i64 72, !60, i64 136, !23, i64 200, !23, i64 204}
!115 = !{!59, !23, i64 260}
!116 = !{!114, !23, i64 204}
!117 = !{!118, !55, i64 176}
!118 = !{!"_ZTSN12btConvexCast10CastResultE", !60, i64 8, !60, i64 72, !20, i64 136, !20, i64 152, !23, i64 168, !55, i64 176, !23, i64 184}
!119 = !{!118, !23, i64 184}
!120 = !{!118, !23, i64 168}
end_hunk_2
