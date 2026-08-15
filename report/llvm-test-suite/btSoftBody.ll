inline.NumInlined: 2865
inline.NumDeleted: 633
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 122
begin_hunk_0_@_ZN10btSoftBody15releaseClustersEv:bb.a
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  tail call void @_ZN10btSoftBody14releaseClusterEi(ptr noundef nonnull align 8 dereferenceable(1496) %0, i32 noundef 0)
  %i.d = load i32, ptr %i.a, align 4, !tbaa !146
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBodyD0Ev(ptr noundef nonnull align 8 dereferenceable(1496) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN10btSoftBodyD2Ev(ptr noundef nonnull align 8 dereferenceable(1496) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.d

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.c
  resume { ptr, i32 } %i.a

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #35
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK10btSoftBody9checkLinkEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.h = load i32, ptr %i.g, align 4, !tbaa !114  ; 2 uses
  %.not26.i = icmp sgt i32 %i.h, 0
  br i1 %.not26.i, label %.lr.ph.i, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113
  %wide.trip.count.i = zext nneg i32 %i.h to i64
  br label %bb.c

bb.b:                                             ; preds = %.critedge.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.j, i64 %indvars.iv.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !251  ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.f
  %or.cond.i = select i1 %i.n, i1 %i.q, i1 false
  br i1 %or.cond.i, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c
  %i.r = icmp eq ptr %i.m, %i.f
  %i.s = icmp eq ptr %i.p, %i.d
  %or.cond23.i = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond23.i, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit, label %bb.b

_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit:   ; preds = %bb.b, %bb.c, %.critedge.i, %bb.a
  %.not.lcssa.i = phi i1 [ false, %bb.a ], [ true, %.critedge.i ], [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %.not.lcssa.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.b = load i32, ptr %i.a, align 4, !tbaa !114  ; 2 uses
  %.not26 = icmp sgt i32 %i.b, 0
  br i1 %.not26, label %.lr.ph, label %.critedge25

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge25, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !251  ; 2 uses
  %i.h = icmp eq ptr %i.g, %1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq ptr %i.j, %2
  %or.cond = select i1 %i.h, i1 %i.k, i1 false
  br i1 %or.cond, label %.critedge25, label %.critedge

.critedge:                                        ; preds = %bb.c
  %i.l = icmp eq ptr %i.g, %2
  %i.m = icmp eq ptr %i.j, %1
  %or.cond23 = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond23, label %.critedge25, label %bb.b

.critedge25:                                      ; preds = %.critedge, %bb.c, %bb.b, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ true, %.critedge ]
  ret i1 %.not.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK10btSoftBody9checkFaceEiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 3 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.e ; 3 uses
  %i.g = sext i32 %3 to i64
  %i.h = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.j = load i32, ptr %i.i, align 4, !tbaa !118  ; 2 uses
  %.not2832 = icmp sgt i32 %i.j, 0
  br i1 %.not2832, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !117
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %i.l, i64 %indvars.iv ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !251  ; 3 uses
  %i.p = icmp eq ptr %i.o, %i.d
  %i.q = icmp eq ptr %i.o, %i.f
  %or.cond = or i1 %i.p, %i.q
  %i.r = icmp eq ptr %i.o, %i.h
  %or.cond29 = or i1 %i.r, %or.cond
  br i1 %or.cond29, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !251  ; 3 uses
  %i.u = icmp eq ptr %i.t, %i.d
  %i.v = icmp eq ptr %i.t, %i.f
  %or.cond.1 = or i1 %i.u, %i.v
  %i.w = icmp eq ptr %i.t, %i.h
  %or.cond29.1 = or i1 %i.w, %or.cond.1
  br i1 %or.cond29.1, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !251  ; 3 uses
  %i.z = icmp eq ptr %i.y, %i.d
  %i.aa = icmp eq ptr %i.y, %i.f
  %or.cond.2 = or i1 %i.z, %i.aa
  %i.ab = icmp eq ptr %i.y, %i.h
  %or.cond29.2 = or i1 %i.ab, %or.cond.2
  br i1 %or.cond29.2, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.b, %bb.e, %bb.a
  %.not28.lcssa = phi i1 [ false, %bb.a ], [ true, %bb.e ], [ false, %bb.b ]
  ret i1 %.not28.lcssa
}

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody10appendNoteEPKcRK9btVector3RK9btVector4PNS_4NodeES9_S9_S9_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1496) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_E9zerodummy acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_.exit, !prof !196

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_E9zerodummy) #34
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr @_ZZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_E9zerodummy, align 8, !tbaa !197
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 88, ptr nonnull @_ZZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_E9zerodummy) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_E9zerodummy) #34
  br label %_ZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_.exit

_ZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.copyload = load ptr, ptr @_ZZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_E9zerodummy, align 8
  %.sroa.13.0.copyload = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_E9zerodummy, i64 36), align 4
  %.sroa.6.sroa.0.0.copyload35 = load <4 x float>, ptr %2, align 4, !tbaa !185
  %i.e = load <4 x float>, ptr %3, align 4, !tbaa !159
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 788 ; 5 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !106  ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !107
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE9push_backERKS1_.exit

bb.d:                                             ; preds = %_ZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_.exit
  %.not.i.i = icmp eq i32 %i.g, 0
  %i.k = shl nsw i32 %i.g, 1
  %i.l = select i1 %.not.i.i, i32 1, i32 %i.k     ; 4 uses
  %i.m = icmp slt i32 %i.g, %i.l
  br i1 %i.m, label %bb.e, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE8allocateEi.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = sext i32 %i.l to i64
  %i.o = mul nsw i64 %i.n, 88
  %i.p = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.o, i32 noundef 16)
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !106
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE8allocateEi.exit.i.i: ; preds = %bb.f, %bb.e
  %i.q = phi i32 [ %.pre.i, %bb.f ], [ %i.g, %bb.e ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.p, %bb.f ], [ null, %bb.e ] ; 4 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE8allocateEi.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.q to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.t = icmp eq i32 %i.q, 1
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.g ]
  %i.u = getelementptr inbounds nuw [88 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !105
  %i.w = getelementptr inbounds nuw [88 x i8], ptr %i.v, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.u, ptr noundef nonnull align 8 dereferenceable(88) %i.w, i64 88, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [88 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw [88 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.x, ptr noundef nonnull align 8 dereferenceable(88) %i.z, i64 88, i1 false)
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, label %bb.g

_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod34 = trunc i32 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.aa = getelementptr inbounds nuw [88 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !105
  %i.ac = getelementptr inbounds nuw [88 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i

_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE8allocateEi.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !105 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE10deallocateEv.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !104, !range !179, !noundef !180
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE10deallocateEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ae)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE10deallocateEv.exit.i.i: ; preds = %bb.i, %bb.h, %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 808
  store i8 1, ptr %i.ai, align 8, !tbaa !104
  store ptr %.0.i.i.i, ptr %i.ad, align 8, !tbaa !105
  store i32 %i.l, ptr %i.h, align 8, !tbaa !107
  %.pre2.i = load i32, ptr %i.f, align 4, !tbaa !106
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE9push_backERKS1_.exit: ; preds = %_ZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_.exit, %bb.d, %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE10deallocateEv.exit.i.i
  %i.aj = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE10deallocateEv.exit.i.i ], [ %i.g, %bb.d ], [ %i.g, %_ZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_.exit ]
  %.not = icmp ne ptr %4, null
  %i.ak = zext i1 %.not to i32
  %.not15 = icmp ne ptr %5, null
  %i.al = zext i1 %.not15 to i32
  %i.am = add nuw nsw i32 %i.al, %i.ak
  %.not16 = icmp ne ptr %6, null
  %i.an = zext i1 %.not16 to i32
  %i.ao = add nuw nsw i32 %i.am, %i.an
  %.not17 = icmp ne ptr %7, null
  %i.ap = zext i1 %.not17 to i32
  %i.aq = add nuw nsw i32 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !105
  %i.at = sext i32 %i.aj to i64
  %i.au = getelementptr inbounds [88 x i8], ptr %i.as, i64 %i.at ; 10 uses
  store ptr %.sroa.0.0.copyload, ptr %i.au, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <4 x float> %.sroa.6.sroa.0.0.copyload35, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i32 %i.aq, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  store i32 %.sroa.13.0.copyload, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.1322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store ptr %4, ptr %.sroa.1322.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  store ptr %5, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  store ptr %6, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  store ptr %7, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  store <4 x float> %i.e, ptr %.sroa.17.0..sroa_idx, align 8
  %i.av = load i32, ptr %i.f, align 4, !tbaa !106
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.f, align 4, !tbaa !106
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody10appendNoteEPKcRK9btVector3PNS_4NodeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1496) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %class.btVector4, align 16          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %4, align 16, !tbaa !159
  call void @_ZN10btSoftBody10appendNoteEPKcRK9btVector3RK9btVector4PNS_4NodeES9_S9_S9_(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody10appendNoteEPKcRK9btVector3PNS_4LinkE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1496) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %class.btVector4, align 16          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00>, ptr %4, align 16, !tbaa !159
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !251
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !251
  call void @_ZN10btSoftBody10appendNoteEPKcRK9btVector3RK9btVector4PNS_4NodeES9_S9_S9_(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %i.b, ptr noundef %i.d, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody10appendNoteEPKcRK9btVector3PNS_4FaceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1496) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %class.btVector4, align 16          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store <4 x float> <float f0x3EAAAAAB, float f0x3EAAAAAB, float f0x3EAAAAAB, float 0.000000e+00>, ptr %4, align 16, !tbaa !159
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !251
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !251
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !251
  call void @_ZN10btSoftBody10appendNoteEPKcRK9btVector3RK9btVector4PNS_4NodeES9_S9_S9_(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.f, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody10appendNodeERK9btVector3f(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, float noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.btDbvtAabbMm, align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !111
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 820 ; 8 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !110
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10btSoftBody17pointersToIndicesEv(ptr noundef nonnull align 8 dereferenceable(1496) %0)
  %i.f = load i32, ptr %i.c, align 4, !tbaa !110
  %i.g = shl nsw i32 %i.f, 1                      ; 2 uses
  %i.h = or disjoint i32 %i.g, 1                  ; 2 uses
  %i.i = load i32, ptr %i.a, align 8, !tbaa !111
  %.not = icmp sgt i32 %i.i, %i.g
  br i1 %.not, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE7reserveEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sext i32 %i.h to i64
  %i.k = mul nsw i64 %i.j, 120
  %i.l = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.k, i32 noundef 16) ; 4 uses
  %i.m = load i32, ptr %i.c, align 4, !tbaa !110  ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4NodeEE4copyEiiPS1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.m to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.p = icmp eq i32 %i.m, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.q = getelementptr inbounds nuw [120 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !109
  %i.s = getelementptr inbounds nuw [120 x i8], ptr %i.r, i64 %indvars.iv.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.q, ptr noundef nonnull align 8 dereferenceable(120) %i.s, i64 120, i1 false)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [120 x i8], ptr %i.l, i64 %indvars.iv.next.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !109
  %i.v = getelementptr inbounds nuw [120 x i8], ptr %i.u, i64 %indvars.iv.next.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.t, ptr noundef nonnull align 8 dereferenceable(120) %i.v, i64 120, i1 false)
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4NodeEE4copyEiiPS1_.exit.i.loopexit.unr-lcssa, label %bb.d

_ZNK20btAlignedObjectArrayIN10btSoftBody4NodeEE4copyEiiPS1_.exit.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4NodeEE4copyEiiPS1_.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4NodeEE4copyEiiPS1_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4NodeEE4copyEiiPS1_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod19 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.w = getelementptr inbounds nuw [120 x i8], ptr %i.l, i64 %indvars.iv.i.i.epil.init
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !109
  %i.y = getelementptr inbounds nuw [120 x i8], ptr %i.x, i64 %indvars.iv.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.w, ptr noundef nonnull align 8 dereferenceable(120) %i.y, i64 120, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4NodeEE4copyEiiPS1_.exit.i

_ZNK20btAlignedObjectArrayIN10btSoftBody4NodeEE4copyEiiPS1_.exit.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayIN10btSoftBody4NodeEE4copyEiiPS1_.exit.i.loopexit.unr-lcssa, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !109 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.aa, null
  br i1 %.not.i5.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE10deallocateEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4NodeEE4copyEiiPS1_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !108, !range !179, !noundef !180
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE10deallocateEv.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aa)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE10deallocateEv.exit.i

_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE10deallocateEv.exit.i: ; preds = %bb.f, %bb.e, %_ZNK20btAlignedObjectArrayIN10btSoftBody4NodeEE4copyEiiPS1_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 840
  store i8 1, ptr %i.ae, align 8, !tbaa !108
  store ptr %i.l, ptr %i.z, align 8, !tbaa !109
  store i32 %i.h, ptr %i.a, align 8, !tbaa !111
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE7reserveEi.exit

_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE7reserveEi.exit: ; preds = %bb.b, %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE10deallocateEv.exit.i
  tail call void @_ZN10btSoftBody17indicesToPointersEPKi(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE7reserveEi.exit, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !177 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef float %i.aj(ptr noundef nonnull align 8 dereferenceable(24) %i.ag) ; 6 uses
  %i.al = load i32, ptr %i.c, align 4, !tbaa !110 ; 7 uses
  %i.am = load i32, ptr %i.a, align 8, !tbaa !111
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.h, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE9push_backERKS1_.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq i32 %i.al, 0
  %i.ao = shl nsw i32 %i.al, 1
  %i.ap = select i1 %.not.i.i, i32 1, i32 %i.ao   ; 4 uses
  %i.aq = icmp slt i32 %i.al, %i.ap
  br i1 %i.aq, label %bb.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE9push_backERKS1_.exit

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE8allocateEi.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = sext i32 %i.ap to i64
  %i.as = mul nsw i64 %i.ar, 120
  %i.at = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.as, i32 noundef 16)
  %.pre.i = load i32, ptr %i.c, align 4, !tbaa !110
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE8allocateEi.exit.i.i: ; preds = %bb.j, %bb.i
  %i.au = phi i32 [ %.pre.i, %bb.j ], [ %i.al, %bb.i ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.at, %bb.j ], [ null, %bb.i ] ; 4 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4NodeEE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE8allocateEi.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.au to i64 ; 2 uses
  %xtraiter21 = and i64 %wide.trip.count.i.i.i, 1
  %i.ax = icmp eq i32 %i.au, 1
  br i1 %i.ax, label %.epil.preheader20, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter24 = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.k ] ; 4 uses
  %niter25 = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter25.next.1, %bb.k ]
  %i.ay = getelementptr inbounds nuw [120 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !109
  %i.ba = getelementptr inbounds nuw [120 x i8], ptr %i.az, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ay, ptr noundef nonnull align 8 dereferenceable(120) %i.ba, i64 120, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [120 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !109
end_hunk_0
begin_hunk_1_@_ZN10btSoftBody14updateClustersEv:bb.a
  %i.nu = shufflevector <2 x float> %i.nt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ns, <2 x float> %i.nu, <2 x float> %i.nq)
  %i.nw = load <2 x float>, ptr %i.ck, align 8, !tbaa !159
  %i.nx = fadd <2 x float> %i.nv, %i.nw
  %i.ny = load <2 x float>, ptr %i.nb, align 4, !tbaa !159 ; 2 uses
  %i.nz = fsub <2 x float> %i.nx, %i.ny
  %i.oa = insertelement <2 x float> poison, float %i.nc, i64 0
  %i.ob = shufflevector <2 x float> %i.oa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oc = fmul <2 x float> %i.ob, %i.nz
  %i.od = fadd <2 x float> %i.ny, %i.oc
  %i.oe = fadd float %i.ne, %i.ng
  %.sroa.3.12.vec.insert.i10.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.oe, i64 0
  store <2 x float> %i.od, ptr %i.nb, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %i.nd, align 8, !tbaa !185
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %i.of = load i32, ptr %i.t, align 4, !tbaa !358
  %i.og = sext i32 %i.of to i64
  %i.oh = icmp slt i64 %indvars.iv.next372, %i.og
  br i1 %i.oh, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.preheader, %._crit_edge327
  %i.oi = getelementptr inbounds nuw i8, ptr %i.s, i64 417
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !392, !range !179, !noundef !180
  %i.ok = trunc nuw i8 %i.oj to i1
  br i1 %i.ok, label %bb.i, label %bb.r

bb.i:                                             ; preds = %.loopexit
  %i.ol = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !362 ; 4 uses
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !251
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.op = load <4 x float>, ptr %i.oo, align 8    ; 6 uses
  %i.oq = icmp sgt i32 %i.u, 1
  br i1 %i.oq, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader, label %._crit_edge341

_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader:         ; preds = %bb.i
  %wide.trip.count377 = zext nneg i32 %i.u to i64
  %i.or = add nsw i64 %wide.trip.count377, -1     ; 3 uses
  %xtraiter439 = and i64 %i.or, 1
  %i.os = icmp eq i32 %i.u, 2
  br i1 %i.os, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.epil.preheader, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new

_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new:     ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader
  %unroll_iter448 = and i64 %i.or, -2
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new
  %indvars.iv374 = phi i64 [ 1, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new ], [ %indvars.iv.next375.1, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 3 uses
  %i.ot = phi <4 x float> [ %i.op, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new ], [ %i.pj, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 2 uses
  %i.ou = phi <4 x float> [ %i.op, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new ], [ %i.pl, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 2 uses
  %niter449 = phi i64 [ 0, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new ], [ %niter449.next.1, %_Z8btSetMinIfEvRT_RKS0_.exit.i ]
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %indvars.iv374
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !251
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %i.oy = load <4 x float>, ptr %i.ox, align 4, !tbaa !159 ; 4 uses
  %i.oz = fcmp olt <4 x float> %i.oy, %i.ot
  %i.pa = select <4 x i1> %i.oz, <4 x float> %i.oy, <4 x float> %i.ot ; 2 uses
  %i.pb = fcmp olt <4 x float> %i.ou, %i.oy
  %i.pc = select <4 x i1> %i.pb, <4 x float> %i.oy, <4 x float> %i.ou ; 2 uses
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %indvars.iv374
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !251
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.ph = load <4 x float>, ptr %i.pg, align 4, !tbaa !159 ; 4 uses
  %i.pi = fcmp olt <4 x float> %i.ph, %i.pa
  %i.pj = select <4 x i1> %i.pi, <4 x float> %i.ph, <4 x float> %i.pa ; 3 uses
  %i.pk = fcmp olt <4 x float> %i.pc, %i.ph
  %i.pl = select <4 x i1> %i.pk, <4 x float> %i.ph, <4 x float> %i.pc ; 3 uses
  %indvars.iv.next375.1 = add nuw nsw i64 %indvars.iv374, 2 ; 2 uses
  %niter449.next.1 = add nuw i64 %niter449, 2     ; 2 uses
  %niter449.ncmp.1 = icmp eq i64 %niter449.next.1, %unroll_iter448
  br i1 %niter449.ncmp.1, label %._crit_edge341.loopexit.unr-lcssa, label %_Z8btSetMinIfEvRT_RKS0_.exit.i

._crit_edge341.loopexit.unr-lcssa:                ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %lcmp.mod444.not = icmp eq i64 %xtraiter439, 0
  br i1 %lcmp.mod444.not, label %._crit_edge341, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.epil.preheader

_Z8btSetMinIfEvRT_RKS0_.exit.i.epil.preheader:    ; preds = %._crit_edge341.loopexit.unr-lcssa, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader
  %indvars.iv374.epil.init = phi i64 [ 1, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader ], [ %indvars.iv.next375.1, %._crit_edge341.loopexit.unr-lcssa ]
  %.epil.init441 = phi <4 x float> [ %i.op, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader ], [ %i.pj, %._crit_edge341.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init443 = phi <4 x float> [ %i.op, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader ], [ %i.pl, %._crit_edge341.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod447 = trunc i64 %i.or to i1
  call void @llvm.assume(i1 %lcmp.mod447)
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %indvars.iv374.epil.init
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !251
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %i.pp = load <4 x float>, ptr %i.po, align 4, !tbaa !159 ; 4 uses
  %i.pq = fcmp olt <4 x float> %i.pp, %.epil.init441
  %i.pr = select <4 x i1> %i.pq, <4 x float> %i.pp, <4 x float> %.epil.init441
  %i.ps = fcmp olt <4 x float> %.epil.init443, %i.pp
  %i.pt = select <4 x i1> %i.ps, <4 x float> %i.pp, <4 x float> %.epil.init443
  br label %._crit_edge341

._crit_edge341:                                   ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i.epil.preheader, %._crit_edge341.loopexit.unr-lcssa, %bb.i
  %i.pu = phi <4 x float> [ %i.op, %bb.i ], [ %i.pj, %._crit_edge341.loopexit.unr-lcssa ], [ %i.pr, %_Z8btSetMinIfEvRT_RKS0_.exit.i.epil.preheader ]
  %i.pv = phi <4 x float> [ %i.op, %bb.i ], [ %i.pl, %._crit_edge341.loopexit.unr-lcssa ], [ %i.pt, %_Z8btSetMinIfEvRT_RKS0_.exit.i.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store <4 x float> %i.pu, ptr %4, align 16
  store <4 x float> %i.pv, ptr %i.k, align 16
  %i.pw = getelementptr inbounds nuw i8, ptr %i.s, i64 384 ; 2 uses
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !385 ; 2 uses
  %.not112 = icmp eq ptr %i.px, null
  br i1 %.not112, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge341
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.py = load float, ptr %i.m, align 8, !tbaa !159 ; 2 uses
  %i.pz = load float, ptr %.sroa.5255.0..sroa_idx, align 8, !tbaa !159
  %i.qa = fmul float %i.py, %i.pz
  %i.qb = load <2 x float>, ptr %i.gw, align 8, !tbaa !159
  %i.qc = insertelement <2 x float> poison, float %i.py, i64 0
  %i.qd = shufflevector <2 x float> %i.qc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qe = fmul <2 x float> %i.qd, %i.qb
  %i.qf = fmul <2 x float> %i.qe, splat (float 3.000000e+00)
  %i.qg = fmul float %i.qa, 3.000000e+00
  %.sroa.3.12.vec.insert.i190 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qg, i64 0
  store <2 x float> %i.qf, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i190, ptr %i.n, align 8
  %i.qh = load float, ptr %i.o, align 4, !tbaa !462
  %i.qi = invoke noundef zeroext i1 @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3f(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull %i.px, ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, float noundef %i.qh)
          to label %bb.k unwind label %bb.m       ; 0 uses

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.p

bb.l:                                             ; preds = %bb.n
  %i.qj = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.m:                                             ; preds = %bb.j
  %i.qk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.q

bb.n:                                             ; preds = %._crit_edge341
  %i.ql = invoke noundef ptr @_ZN6btDbvt6insertERK12btDbvtAabbMmPv(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull %i.s)
          to label %bb.o unwind label %bb.l

bb.o:                                             ; preds = %bb.n
  store ptr %i.ql, ptr %i.pw, align 8, !tbaa !385
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.r

bb.q:                                             ; preds = %bb.m, %bb.l
  %.pn113.pn = phi { ptr, i32 } [ %i.qk, %bb.m ], [ %i.qj, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit unwind label %bb.t

bb.r:                                             ; preds = %bb.p, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %.pre384 = load i32, ptr %i.a, align 4, !tbaa !146
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.b
  %i.qm = phi i32 [ %.pre384, %bb.r ], [ %i.p, %bb.b ] ; 2 uses
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %i.qn = sext i32 %i.qm to i64
  %i.qo = icmp slt i64 %indvars.iv.next380, %i.qn
  br i1 %i.qo, label %bb.b, label %._crit_edge353

._crit_edge353:                                   ; preds = %bb.s, %bb.a
  call void @_ZN15CProfileManager12Stop_ProfileEv()
  ret void

_ZN14CProfileSampleD2Ev.exit:                     ; preds = %bb.q
  resume { ptr, i32 } %.pn113.pn

bb.t:                                             ; preds = %bb.q
  %i.qp = landingpad { ptr, i32 }
          catch ptr null
  %i.qq = extractvalue { ptr, i32 } %i.qp, 0
  call void @__clang_call_terminate(ptr %i.qq) #35
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody6refineEPNS_10ImplicitFnEfb(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef %1, float noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.7.i418 = alloca <{ [2 x ptr], float, i8, [3 x i8], float, float, float, %class.btVector3, [4 x i8] }>, align 8 ; 4 uses
  %4 = alloca %"struct.btSoftBody::Link", align 8 ; 4 uses
  %.sroa.7.i = alloca { [3 x ptr], %class.btVector3, float, ptr }, align 8 ; 5 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %"struct.btSoftBody::Link", align 8 ; 4 uses
  %7 = alloca %class.btVector3, align 8           ; 6 uses
  %.sroa.0 = alloca i32, align 4                  ; 7 uses
  %.sroa.7 = alloca i32, align 4                  ; 7 uses
  %.sroa.11 = alloca i32, align 4                 ; 7 uses
  %8 = alloca %class.btVector3, align 4           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 26 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 820 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !110  ; 13 uses
  %i.e = add nsw i32 %i.d, 1
  %i.f = mul nsw i32 %i.e, %i.d                   ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %.lr.ph.i.i.i, label %_ZN11btSymMatrixIiEC2EiRKi.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = lshr i32 %i.f, 1                         ; 2 uses
  %i.i = shl nuw i32 %i.h, 2
  %i.j = zext i32 %i.i to i64
  %i.k = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 4 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.h to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.f, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 1073741816 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x i32> splat (i32 -2), ptr %i.l, align 4, !tbaa !4
  store <4 x i32> splat (i32 -2), ptr %i.m, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !463

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZN11btSymMatrixIiEC2EiRKi.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  store i32 -2, ptr %i.o, align 4, !tbaa !4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN11btSymMatrixIiEC2EiRKi.exit, label %scalar.ph, !llvm.loop !464

common.resume:                                    ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit409.thread, %_ZN20btAlignedObjectArrayIiED2Ev.exit409
  %common.resume.op = phi { ptr, i32 } [ %.pn322.pn, %_ZN20btAlignedObjectArrayIiED2Ev.exit409 ], [ %.pn322.pn523, %_ZN20btAlignedObjectArrayIiED2Ev.exit409.thread ]
  resume { ptr, i32 } %common.resume.op

_ZN11btSymMatrixIiEC2EiRKi.exit:                  ; preds = %scalar.ph, %middle.block, %bb.a
  %.sroa.8481.0 = phi ptr [ null, %bb.a ], [ %i.k, %middle.block ], [ %i.k, %scalar.ph ] ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 852 ; 19 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !114  ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %.preheader542

.lr.ph:                                           ; preds = %_ZN11btSymMatrixIiEC2EiRKi.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  br label %bb.b

.preheader543:                                    ; preds = %bb.i
  %i.t = icmp sgt i32 %i.bc, 0
  br i1 %i.t, label %.lr.ph559, label %.preheader542

.lr.ph559:                                        ; preds = %.preheader543
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !113
  %i.w = ptrtoint ptr %i.b to i64                 ; 2 uses
  br label %bb.j

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.x = phi i32 [ %i.q, %.lr.ph ], [ %i.bc, %bb.i ]
  %.0242557 = phi i32 [ 0, %.lr.ph ], [ %i.bd, %bb.i ] ; 4 uses
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !113
  %i.z = sext i32 %.0242557 to i64                ; 2 uses
  %i.aa = getelementptr inbounds [72 x i8], ptr %i.y, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = and i8 %i.ac, 1
  %.not321 = icmp eq i8 %i.ad, 0
  br i1 %.not321, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !251
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %1, align 8, !tbaa !8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef float %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.ag)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !251
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %1, align 8, !tbaa !8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = invoke noundef float %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.am)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.aq = fmul float %i.aj, %i.ap
  %i.ar = fcmp ogt float %i.aq, 0.000000e+00
  %.pre = load i32, ptr %i.p, align 4, !tbaa !114 ; 2 uses
  br i1 %i.ar, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.s, align 8, !tbaa !113 ; 2 uses
  %i.at = getelementptr inbounds [72 x i8], ptr %i.as, i64 %i.z ; 2 uses
  %i.au = sext i32 %.pre to i64
  %i.av = getelementptr [72 x i8], ptr %i.as, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 -72    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %i.at, i64 72, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.at, ptr noundef nonnull align 8 dereferenceable(68) %i.aw, i64 68, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.aw, ptr noundef nonnull align 8 dereferenceable(68) %6, i64 68, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ax = load i32, ptr %i.p, align 4, !tbaa !114
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %i.p, align 4, !tbaa !114
  %i.az = add nsw i32 %.0242557, -1
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit409

bb.h:                                             ; preds = %bb.d
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit409

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.b
  %i.bc = phi i32 [ %i.ay, %bb.f ], [ %.pre, %bb.e ], [ %i.x, %bb.b ] ; 3 uses
  %.1243 = phi i32 [ %i.az, %bb.f ], [ %.0242557, %bb.e ], [ %.0242557, %bb.b ]
  %i.bd = add nsw i32 %.1243, 1                   ; 2 uses
  %i.be = icmp slt i32 %i.bd, %i.bc
  br i1 %i.be, label %bb.b, label %.preheader543

.preheader542:                                    ; preds = %bb.j, %_ZN11btSymMatrixIiEC2EiRKi.exit, %.preheader543
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 11 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !118
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph561, label %.preheader541

.lr.ph561:                                        ; preds = %.preheader542
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !117
  %i.bk = ptrtoint ptr %i.b to i64                ; 3 uses
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph559, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph559 ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [72 x i8], ptr %i.v, i64 %indvars.iv ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !251
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.w
  %i.bq = sdiv exact i64 %i.bp, 120
  %i.br = trunc i64 %i.bq to i32                  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !251
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.w
  %i.bw = sdiv exact i64 %i.bv, 120
  %i.bx = trunc i64 %i.bw to i32                  ; 2 uses
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.br, i32 %i.bx)
  %spec.select5.i.i = tail call i32 @llvm.smax.i32(i32 %i.br, i32 %i.bx) ; 2 uses
  %i.by = add nsw i32 %spec.select5.i.i, 1
  %i.bz = mul nsw i32 %i.by, %spec.select5.i.i
  %i.ca = sdiv i32 %i.bz, 2
  %i.cb = add nsw i32 %i.ca, %spec.select.i.i
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %.sroa.8481.0, i64 %i.cc
  store i32 -1, ptr %i.cd, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = load i32, ptr %i.p, align 4, !tbaa !114
  %i.cf = sext i32 %i.ce to i64
  %i.cg = icmp slt i64 %indvars.iv.next, %i.cf
  br i1 %i.cg, label %bb.j, label %.preheader542

.preheader541:                                    ; preds = %bb.k, %.preheader542
  %i.ch = icmp sgt i32 %i.d, 0
  br i1 %i.ch, label %.lr.ph568, label %._crit_edge

.lr.ph568:                                        ; preds = %.preheader541
  %i.ci = fneg float %2
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cl = zext nneg i32 %i.d to i64
  %wide.trip.count619 = zext nneg i32 %i.d to i64 ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph561, %bb.k
  %indvars.iv608 = phi i64 [ 0, %.lr.ph561 ], [ %indvars.iv.next609, %bb.k ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [72 x i8], ptr %i.bj, i64 %indvars.iv608 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN10btSoftBody6refineEPNS_10ImplicitFnEfb:bb.a
  %indvars.iv.next.i.i.i.i432.1 = add nuw nsw i64 %indvars.iv.i.i.i.i431, 2 ; 2 uses
  %niter771.next.1 = add i64 %niter771, 2         ; 2 uses
  %niter771.ncmp.1 = icmp eq i64 %niter771.next.1, %unroll_iter770
  br i1 %niter771.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, label %bb.bg

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.bg
  %lcmp.mod768.not = icmp eq i64 %xtraiter767, 0
  br i1 %lcmp.mod768.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i, label %.epil.preheader766

.epil.preheader766:                               ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i429
  %indvars.iv.i.i.i.i431.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i429 ], [ %indvars.iv.next.i.i.i.i432.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod769 = trunc i32 %i.pm to i1
  call void @llvm.assume(i1 %lcmp.mod769)
  %i.pv = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i426, i64 %indvars.iv.i.i.i.i431.epil.init
  %i.pw = load ptr, ptr %i.iu, align 8, !tbaa !113
  %i.px = getelementptr inbounds nuw [72 x i8], ptr %i.pw, i64 %indvars.iv.i.i.i.i431.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.pv, ptr noundef nonnull align 8 dereferenceable(72) %i.px, i64 72, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i: ; preds = %.epil.preheader766, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i
  %i.py = load ptr, ptr %i.iu, align 8, !tbaa !113 ; 2 uses
  %.not.i5.i.i.i427 = icmp eq ptr %i.py, null
  br i1 %.not.i5.i.i.i427, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i
  %i.pz = load i8, ptr %i.iv, align 8, !tbaa !112, !range !179, !noundef !180
  %i.qa = trunc nuw i8 %i.pz to i1
  br i1 %i.qa, label %bb.bi, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i

bb.bi:                                            ; preds = %bb.bh
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.py)
          to label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i unwind label %bb.bk

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i: ; preds = %bb.bi, %bb.bh, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i
  store i8 1, ptr %i.iv, align 8, !tbaa !112
  store ptr %.0.i.i.i.i426, ptr %i.iu, align 8, !tbaa !113
  store i32 %i.ph, ptr %i.it, align 8, !tbaa !115
  %.pre2.i.i428 = load i32, ptr %i.p, align 4, !tbaa !114
  br label %bb.bl

bb.bj:                                            ; preds = %bb.ax, %bb.au
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bi, %bb.bf
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i, %bb.bd, %bb.bc
  %i.qd = phi i32 [ %.pre2.i.i428, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i ], [ %i.pd, %bb.bd ], [ %i.pd, %bb.bc ]
  %i.qe = load ptr, ptr %i.iu, align 8, !tbaa !113
  %i.qf = sext i32 %i.qd to i64
  %i.qg = getelementptr inbounds [72 x i8], ptr %i.qe, i64 %i.qf ; 3 uses
  store ptr %.sroa.0.0.copyload6.i, ptr %i.qg, align 8
  %.sroa.6.0..sroa_idx.i421 = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  store ptr %.sroa.6.0.i419, ptr %.sroa.6.0..sroa_idx.i421, align 8
  %.sroa.7.0..sroa_idx.i422 = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx.i422, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i418, i64 56, i1 false)
  %i.qh = load i32, ptr %i.p, align 4, !tbaa !114
  %i.qi = add nsw i32 %i.qh, 1                    ; 2 uses
  store i32 %i.qi, ptr %i.p, align 4, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i418)
  %i.qj = load ptr, ptr %i.iu, align 8, !tbaa !113
  %i.qk = sext i32 %i.qi to i64
  %i.ql = getelementptr [72 x i8], ptr %i.qj, i64 %i.qk ; 3 uses
  %i.qm = getelementptr i8, ptr %i.ql, i64 -56
  store ptr %i.ov, ptr %i.qm, align 8, !tbaa !251
  %i.qn = getelementptr i8, ptr %i.ql, i64 -48
  store ptr %i.ow, ptr %i.qn, align 8, !tbaa !251
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %i.qp = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %i.qq = load float, ptr %i.qo, align 4, !tbaa !159
  %i.qr = load float, ptr %i.qp, align 4, !tbaa !159
  %i.qs = fsub float %i.qq, %i.qr                 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.ov, i64 20
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !159
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ow, i64 20
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !159
  %i.qx = fsub float %i.qu, %i.qw                 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !159
  %i.ra = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !159
  %i.rc = fsub float %i.qz, %i.rb                 ; 2 uses
  %i.rd = fmul float %i.qx, %i.qx
  %i.re = call float @llvm.fmuladd.f32(float %i.qs, float %i.qs, float %i.rd)
  %i.rf = call noundef float @llvm.fmuladd.f32(float %i.rc, float %i.rc, float %i.re)
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.rf)
  %i.rg = getelementptr i8, ptr %i.ql, i64 -40
  store float %sqrt.i.i.i, ptr %i.rg, align 8, !tbaa !271
  store i8 1, ptr %i.iw, align 4, !tbaa !166
  %.pre675 = load i32, ptr %i.bf, align 4, !tbaa !118
  br label %.loopexit537

bb.bm:                                            ; preds = %bb.bk, %bb.bj
  %.pn315 = phi { ptr, i32 } [ %i.qc, %bb.bk ], [ %i.qb, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit409.thread

.thread:                                          ; preds = %bb.al, %bb.ak
  %i.rh = icmp sgt i32 %i.d, %i.lb
  %i.ri = icmp sgt i32 %i.d, %i.lh
  %or.cond754 = select i1 %i.rh, i1 %i.ri, i1 false
  br i1 %or.cond754, label %bb.bn, label %.thread.1

bb.bn:                                            ; preds = %.thread
  %spec.select.i.i350.1 = call i32 @llvm.smin.i32(i32 %i.lb, i32 %i.lh)
  %spec.select5.i.i351.1 = call i32 @llvm.smax.i32(i32 %i.lb, i32 %i.lh) ; 2 uses
  %i.rj = add nsw i32 %spec.select5.i.i351.1, 1
  %i.rk = mul nsw i32 %i.rj, %spec.select5.i.i351.1
  %i.rl = sdiv i32 %i.rk, 2
  %i.rm = add nsw i32 %i.rl, %spec.select.i.i350.1
  %i.rn = sext i32 %i.rm to i64
  %i.ro = getelementptr inbounds [4 x i8], ptr %.sroa.8481.0, i64 %i.rn
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !4  ; 2 uses
  %i.rq = icmp sgt i32 %i.rp, 0
  br i1 %i.rq, label %bb.am, label %.thread.1

.thread.1:                                        ; preds = %bb.bn, %.thread
  %i.rr = icmp sgt i32 %i.d, %i.lh
  %brmerge.not = and i1 %i.rr, %i.lo
  br i1 %brmerge.not, label %bb.bo, label %.thread.2

bb.bo:                                            ; preds = %.thread.1
  %spec.select.i.i350.2 = call i32 @llvm.smin.i32(i32 %i.lh, i32 %i.ln)
  %spec.select5.i.i351.2 = call i32 @llvm.smax.i32(i32 %i.lh, i32 %i.ln) ; 2 uses
  %i.rs = add nsw i32 %spec.select5.i.i351.2, 1
  %i.rt = mul nsw i32 %i.rs, %spec.select5.i.i351.2
  %i.ru = sdiv i32 %i.rt, 2
  %i.rv = add nsw i32 %i.ru, %spec.select.i.i350.2
  %i.rw = sext i32 %i.rv to i64
  %i.rx = getelementptr inbounds [4 x i8], ptr %.sroa.8481.0, i64 %i.rw
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !4  ; 2 uses
  %i.rz = icmp sgt i32 %i.ry, 0
  br i1 %i.rz, label %bb.am, label %.thread.2

.thread.2:                                        ; preds = %.thread.1, %bb.bo
  %i.sa = add nsw i32 %.6576, 1
  br label %.loopexit537

.loopexit537:                                     ; preds = %.thread.2, %bb.bl
  %i.sb = phi i32 [ %.pre675, %bb.bl ], [ %i.ks, %.thread.2 ] ; 2 uses
  %.10 = phi i32 [ %.6576, %bb.bl ], [ %i.sa, %.thread.2 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %i.sc = icmp slt i32 %.10, %i.sb
  br i1 %i.sc, label %bb.ak, label %._crit_edge578

._crit_edge578:                                   ; preds = %.loopexit537, %.preheader538
  br i1 %3, label %bb.bp, label %_ZN20btAlignedObjectArrayIiED2Ev.exit401

bb.bp:                                            ; preds = %._crit_edge578
  %i.sd = load i32, ptr %i.c, align 4, !tbaa !110 ; 3 uses
  %i.se = icmp sgt i32 %i.sd, 0
  br i1 %i.se, label %bb.bq, label %._crit_edge581

bb.bq:                                            ; preds = %bb.bp
  %i.sf = zext nneg i32 %i.sd to i64
  %i.sg = shl nuw nsw i64 %i.sf, 2                ; 2 uses
  %i.sh = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.sg, i32 noundef 16)
          to label %.lr.ph580.preheader unwind label %.thread516 ; 4 uses

.lr.ph580.preheader:                              ; preds = %bb.bq
  call void @llvm.memset.p0.i64(ptr align 4 %i.sh, i8 0, i64 %i.sg, i1 false), !tbaa !4
  %i.si = sext i32 %i.d to i64
  %wide.trip.count633 = zext nneg i32 %i.sd to i64
  br label %.lr.ph580

.lr.ph580:                                        ; preds = %.lr.ph580.preheader, %bb.ca
  %indvars.iv630 = phi i64 [ 0, %.lr.ph580.preheader ], [ %indvars.iv.next631, %bb.ca ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.sj = load ptr, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  %i.sk = getelementptr inbounds nuw [120 x i8], ptr %i.sj, i64 %indvars.iv630
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.sl, i64 16, i1 false), !tbaa.struct !198
  %.not310 = icmp slt i64 %indvars.iv630, %i.si
  br i1 %.not310, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %.lr.ph580
  %i.sm = load ptr, ptr %1, align 8, !tbaa !8
  %i.sn = load ptr, ptr %i.sm, align 8
  %i.so = invoke noundef float %i.sn(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %8)
          to label %bb.bs unwind label %bb.bw

bb.bs:                                            ; preds = %bb.br
  %i.sp = call noundef float @llvm.fabs.f32(float %i.so)
  %i.sq = fcmp olt float %i.sp, %2
  br i1 %i.sq, label %._crit_edge676, label %bb.ca

._crit_edge676:                                   ; preds = %bb.bs
  %.pre677 = load ptr, ptr %i.a, align 8, !tbaa !109
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge676, %.lr.ph580
  %i.sr = phi ptr [ %.pre677, %._crit_edge676 ], [ %i.sj, %.lr.ph580 ]
  %i.ss = getelementptr inbounds nuw [120 x i8], ptr %i.sr, i64 %indvars.iv630 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 48
  %.sroa.038.sroa.0.0.copyload = load <4 x float>, ptr %i.st, align 8, !tbaa !185
  %i.su = getelementptr inbounds nuw i8, ptr %i.ss, i64 96 ; 2 uses
  %i.sv = load float, ptr %i.su, align 8, !tbaa !199 ; 3 uses
  %i.sw = fcmp ogt float %i.sv, 0.000000e+00
  %i.sx = fdiv float 1.000000e+00, %i.sv
  %i.sy = select i1 %i.sw, float %i.sx, float 0.000000e+00 ; 3 uses
  %i.sz = fcmp ogt float %i.sy, 0.000000e+00
  br i1 %i.sz, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.ta = fmul nnan float %i.sy, 5.000000e-01
  %i.tb = fmul float %i.sv, 2.000000e+00
  store float %i.tb, ptr %i.su, align 8, !tbaa !199
  br label %bb.by

bb.bv:                                            ; preds = %bb.de
  %i.tc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit409

.thread516:                                       ; preds = %bb.bq
  %i.td = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit409

bb.bw:                                            ; preds = %bb.br
  %i.te = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.bx:                                            ; preds = %bb.by
  %i.tf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.by:                                            ; preds = %bb.bu, %bb.bt
  %.0278 = phi float [ %i.ta, %bb.bu ], [ %i.sy, %bb.bt ]
  invoke void @_ZN10btSoftBody10appendNodeERK9btVector3f(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef nonnull align 4 dereferenceable(16) %8, float noundef %.0278)
          to label %bb.bz unwind label %bb.bx

bb.bz:                                            ; preds = %bb.by
  %i.tg = load i32, ptr %i.c, align 4, !tbaa !110
  %i.th = add nsw i32 %i.tg, -1                   ; 2 uses
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %indvars.iv630
  store i32 %i.th, ptr %i.ti, align 4, !tbaa !4
  %i.tj = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.tk = sext i32 %i.th to i64
  %i.tl = getelementptr inbounds [120 x i8], ptr %i.tj, i64 %i.tk
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 48
  store <4 x float> %.sroa.038.sroa.0.0.copyload, ptr %i.tm, align 8, !tbaa !185
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %indvars.iv.next631 = add nuw nsw i64 %indvars.iv630, 1 ; 2 uses
  %exitcond634.not = icmp eq i64 %indvars.iv.next631, %wide.trip.count633
  br i1 %exitcond634.not, label %._crit_edge581, label %.lr.ph580

bb.cb:                                            ; preds = %bb.bx, %bb.bw
  %.pn311 = phi { ptr, i32 } [ %i.tf, %bb.bx ], [ %i.te, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.df

._crit_edge581:                                   ; preds = %bb.ca, %bb.bp
  %.sroa.10461.2744 = phi ptr [ null, %bb.bp ], [ %i.sh, %bb.ca ] ; 13 uses
  %i.tn = load ptr, ptr %i.a, align 8, !tbaa !109 ; 5 uses
  %i.to = load i32, ptr %i.p, align 4, !tbaa !114 ; 2 uses
  %i.tp = icmp sgt i32 %i.to, 0
  br i1 %i.tp, label %.lr.ph586, label %._crit_edge587

.lr.ph586:                                        ; preds = %._crit_edge581
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.tr = ptrtoint ptr %i.tn to i64               ; 4 uses
  %wide.trip.count641 = zext nneg i32 %i.to to i64
  br label %bb.cc

bb.cc:                                            ; preds = %.lr.ph586, %.thread501
  %indvars.iv638 = phi i64 [ 0, %.lr.ph586 ], [ %indvars.iv.next639, %.thread501 ] ; 4 uses
  %i.ts = load ptr, ptr %i.tq, align 8, !tbaa !113
  %i.tt = getelementptr inbounds nuw [72 x i8], ptr %i.ts, i64 %indvars.iv638 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !251
  %i.tw = ptrtoint ptr %i.tv to i64
  %i.tx = sub i64 %i.tw, %i.tr
  %i.ty = sdiv exact i64 %i.tx, 120
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tt, i64 24
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !251
  %i.ub = ptrtoint ptr %i.ua to i64
  %i.uc = sub i64 %i.ub, %i.tr
  %i.ud = sdiv exact i64 %i.uc, 120               ; 2 uses
  %sext528 = shl i64 %i.ty, 32
  %i.ue = ashr exact i64 %sext528, 32             ; 2 uses
  %i.uf = getelementptr inbounds [4 x i8], ptr %.sroa.10461.2744, i64 %i.ue
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !4
  %.not306 = icmp eq i32 %i.ug, 0
  br i1 %.not306, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %sext529 = shl i64 %i.ud, 32
  %i.uh = ashr exact i64 %sext529, 30
  %i.ui = getelementptr inbounds i8, ptr %.sroa.10461.2744, i64 %i.uh
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !4
  %.not307 = icmp eq i32 %i.uj, 0
  br i1 %.not307, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.uk = trunc nuw nsw i64 %indvars.iv638 to i32
  invoke void @_ZN10btSoftBody10appendLinkEiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %0, i32 noundef %i.uk, ptr noundef null)
          to label %bb.cf unwind label %.thread509

bb.cf:                                            ; preds = %bb.ce
  %i.ul = load i32, ptr %i.p, align 4, !tbaa !114
  %i.um = add nsw i32 %i.ul, -1
  br label %bb.ck

.thread509:                                       ; preds = %bb.ce, %bb.cg, %bb.ci
  %i.un = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.cg:                                            ; preds = %bb.cd, %bb.cc
  %i.uo = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.up = getelementptr inbounds [120 x i8], ptr %i.uo, i64 %i.ue
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.ur = load ptr, ptr %1, align 8, !tbaa !8
  %i.us = load ptr, ptr %i.ur, align 8
  %i.ut = invoke noundef float %i.us(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.uq)
          to label %bb.ch unwind label %.thread509

bb.ch:                                            ; preds = %bb.cg
  %i.uu = fcmp olt float %i.ut, %2
  br i1 %i.uu, label %bb.ci, label %.thread501

bb.ci:                                            ; preds = %bb.ch
  %i.uv = load ptr, ptr %i.a, align 8, !tbaa !109
  %sext530 = shl i64 %i.ud, 32
  %i.uw = ashr exact i64 %sext530, 32
  %i.ux = getelementptr inbounds [120 x i8], ptr %i.uv, i64 %i.uw
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 16
  %i.uz = load ptr, ptr %1, align 8, !tbaa !8
  %i.va = load ptr, ptr %i.uz, align 8
  %i.vb = invoke noundef float %i.va(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.uy)
          to label %bb.cj unwind label %.thread509

bb.cj:                                            ; preds = %bb.ci
  %i.vc = fcmp olt float %i.vb, %2
  %i.vd = trunc nuw nsw i64 %indvars.iv638 to i32
  br i1 %i.vc, label %bb.ck, label %.thread501

bb.ck:                                            ; preds = %bb.cj, %bb.cf
  %.0275 = phi i32 [ %i.um, %bb.cf ], [ %i.vd, %bb.cj ] ; 2 uses
  %.not308 = icmp eq i32 %.0275, 0
  br i1 %.not308, label %.thread501, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ve = load ptr, ptr %i.tq, align 8, !tbaa !113
  %i.vf = sext i32 %.0275 to i64
  %i.vg = getelementptr inbounds [72 x i8], ptr %i.ve, i64 %i.vf ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 16 ; 2 uses
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !251
  %i.vj = ptrtoint ptr %i.vi to i64
  %i.vk = sub i64 %i.vj, %i.tr
  %i.vl = sdiv exact i64 %i.vk, 120
  %sext531 = shl i64 %i.vl, 32
  %i.vm = ashr exact i64 %sext531, 30
  %i.vn = getelementptr inbounds i8, ptr %.sroa.10461.2744, i64 %i.vm
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !4  ; 2 uses
  %.not309 = icmp eq i32 %i.vo, 0
  br i1 %.not309, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.vp = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.vq = sext i32 %i.vo to i64
  %i.vr = getelementptr inbounds [120 x i8], ptr %i.vp, i64 %i.vq
  store ptr %i.vr, ptr %i.vh, align 8, !tbaa !251
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vg, i64 24 ; 2 uses
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !251
  %i.vu = ptrtoint ptr %i.vt to i64
  %i.vv = sub i64 %i.vu, %i.tr
  %i.vw = sdiv exact i64 %i.vv, 120
  %sext531.1 = shl i64 %i.vw, 32
  %i.vx = ashr exact i64 %sext531.1, 30
  %i.vy = getelementptr inbounds i8, ptr %.sroa.10461.2744, i64 %i.vx
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !4  ; 2 uses
  %.not309.1 = icmp eq i32 %i.vz, 0
  br i1 %.not309.1, label %.thread501, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.wa = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.wb = sext i32 %i.vz to i64
  %i.wc = getelementptr inbounds [120 x i8], ptr %i.wa, i64 %i.wb
  store ptr %i.wc, ptr %i.vs, align 8, !tbaa !251
  br label %.thread501

.thread501:                                       ; preds = %bb.cn, %bb.co, %bb.ch, %bb.cj, %bb.ck
  %indvars.iv.next639 = add nuw nsw i64 %indvars.iv638, 1 ; 2 uses
  %exitcond642.not = icmp eq i64 %indvars.iv.next639, %wide.trip.count641
  br i1 %exitcond642.not, label %._crit_edge587, label %bb.cc

._crit_edge587:                                   ; preds = %.thread501, %._crit_edge581
  %i.wd = load i32, ptr %i.bf, align 4, !tbaa !118 ; 2 uses
  %i.we = icmp sgt i32 %i.wd, 0
  br i1 %i.we, label %.lr.ph591, label %._crit_edge592

.lr.ph591:                                        ; preds = %._crit_edge587
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.wg = ptrtoint ptr %i.tn to i64               ; 3 uses
  %wide.trip.count650 = zext nneg i32 %i.wd to i64
  br label %bb.cp

bb.cp:                                            ; preds = %.lr.ph591, %.loopexit
  %indvars.iv647 = phi i64 [ 0, %.lr.ph591 ], [ %indvars.iv.next648, %.loopexit ] ; 2 uses
  %i.wh = load ptr, ptr %i.wf, align 8, !tbaa !117
  %i.wi = getelementptr inbounds nuw [72 x i8], ptr %i.wh, i64 %indvars.iv647 ; 5 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 16 ; 3 uses
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !251
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  %i.wm = load ptr, ptr %1, align 8, !tbaa !8
  %i.wn = load ptr, ptr %i.wm, align 8
  %i.wo = invoke noundef float %i.wn(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.wl)
          to label %bb.cq unwind label %bb.cv

bb.cq:                                            ; preds = %bb.cp
  %i.wp = fcmp olt float %i.wo, %2
  br i1 %i.wp, label %bb.cr, label %.loopexit

bb.cr:                                            ; preds = %bb.cq
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wi, i64 24
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !251
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %i.wt = load ptr, ptr %1, align 8, !tbaa !8
  %i.wu = load ptr, ptr %i.wt, align 8
  %i.wv = invoke noundef float %i.wu(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.ws)
          to label %bb.cs unwind label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  %i.ww = fcmp olt float %i.wv, %2
  br i1 %i.ww, label %bb.ct, label %.loopexit

bb.ct:                                            ; preds = %bb.cs
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wi, i64 32
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !251
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 16
  %i.xa = load ptr, ptr %1, align 8, !tbaa !8
  %i.xb = load ptr, ptr %i.xa, align 8
  %i.xc = invoke noundef float %i.xb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.wz)
          to label %bb.cu unwind label %bb.cv
end_hunk_2
