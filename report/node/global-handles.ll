inline.NumInlined: 969
inline.NumDeleted: 547
begin_hunk_0_@_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE7ReleaseEPS3_:bb.a
  store i32 %i.w, ptr %i.u, align 8
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.d, label %_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE4FreeEPS3_.exit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8216 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.t, i64 8224
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  br i1 %.not.i, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8224
  store ptr %.pre, ptr %i.ab, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.e
  %.not4.i = icmp eq ptr %.pre, null
  br i1 %.not4.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ac = load ptr, ptr %i.z, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 8216
  store ptr %i.ac, ptr %i.ad, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.ae = load ptr, ptr %i.y, align 8
  %i.af = icmp eq ptr %i.t, %i.ae
  br i1 %i.af, label %bb.h, label %_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE4FreeEPS3_.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.z, align 8
  store ptr %i.ag, ptr %i.y, align 8
  br label %_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE4FreeEPS3_.exit

_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE4FreeEPS3_.exit: ; preds = %bb.h, %bb.g, %bb.c
  %i.ah = load ptr, ptr %i.g, align 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 58656
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 7560
  %i.am = load atomic ptr, ptr %i.al acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.i, label %_ZN2v88internal12StatsCounter9DecrementEi.exit, !prof !11

bb.i:                                             ; preds = %_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE4FreeEPS3_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 7544
  %i.ao = tail call noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24) %i.an) #21
  br label %_ZN2v88internal12StatsCounter9DecrementEi.exit

_ZN2v88internal12StatsCounter9DecrementEi.exit:   ; preds = %_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE4FreeEPS3_.exit, %bb.i
  %.0.i.i = phi ptr [ %i.ao, %bb.i ], [ %i.am, %_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE4FreeEPS3_.exit ]
  %i.ap = atomicrmw sub ptr %.0.i.i, i32 1 monotonic, align 4 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aq, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13GlobalHandles8MakeWeakEPmPvPFvRKNS_16WeakCallbackInfoIvEEENS_16WeakCallbackTypeE(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %.not.i = icmp eq i64 %i.a, 1995093329451155167
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, -4
  %i.e = or disjoint i8 %i.d, 2                   ; 3 uses
  store i8 %i.e, ptr %i.b, align 1
  switch i32 %3, label %_ZN2v88internal13GlobalHandles4Node8MakeWeakEPvPFvRKNS_16WeakCallbackInfoIvEEENS_16WeakCallbackTypeE.exit [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = and i8 %i.e, -26
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.g = and i8 %i.e, -26
  %i.h = or disjoint i8 %i.g, 8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %.sink.i = phi i8 [ %i.h, %bb.e ], [ %i.f, %bb.d ]
  store i8 %.sink.i, ptr %i.b, align 1
  br label %_ZN2v88internal13GlobalHandles4Node8MakeWeakEPvPFvRKNS_16WeakCallbackInfoIvEEENS_16WeakCallbackTypeE.exit

_ZN2v88internal13GlobalHandles4Node8MakeWeakEPvPFvRKNS_16WeakCallbackInfoIvEEENS_16WeakCallbackTypeE.exit: ; preds = %bb.c, %.sink.split.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13GlobalHandles8MakeWeakEPPm(ptr noundef %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  %.not.i = icmp eq i64 %i.b, 1995093329451155167
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal13GlobalHandles4Node8MakeWeakEPPm.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8) #22
  unreachable

_ZN2v88internal13GlobalHandles4Node8MakeWeakEPPm.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 11 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, -28
  %i.f = or disjoint i8 %i.e, 18
  store i8 %i.f, ptr %i.c, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef ptr @_ZN2v88internal13GlobalHandles13ClearWeaknessEPm(ptr noundef captures(none) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, -4
  %i.f = or disjoint i8 %i.e, 1
  store i8 %i.f, ptr %i.c, align 1
  store ptr null, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal13GlobalHandles22AnnotateStrongRetainerEPmPKc(ptr noundef writeonly captures(none) initializes((16, 24)) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal13GlobalHandles6IsWeakEPm(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 3
  %i.d = icmp eq i8 %i.c, 2
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13GlobalHandles33IterateWeakRootsForPhantomHandlesEPFbPNS0_4HeapENS0_14FullObjectSlotEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !noalias !12 ; 2 uses
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit
  %.sroa.7.012 = phi i64 [ 0, %.lr.ph ], [ %.sroa.7.1, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ] ; 2 uses
  %.sroa.06.011 = phi ptr [ %i.d, %.lr.ph ], [ %.sroa.06.1, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ] ; 3 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.011, i64 %.sroa.7.012 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 11 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1
  %i.i = and i8 %i.h, 3
  %i.j = icmp eq i8 %i.i, 2
  br i1 %i.j, label %bb.c, label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 55464
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = tail call noundef zeroext i1 %1(ptr noundef nonnull %i.l, i64 %i.m) #21, !inline_history !15
  br i1 %i.n, label %bb.d, label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %i.g, align 1
  %2 = lshr i8 %i.o, 3
  %3 = and i8 %2, 3
  switch i8 %3, label %default.unreachable [
    i8 2, label %bb.e
    i8 0, label %bb.f
    i8 1, label %bb.f
    i8 3, label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  store ptr null, ptr %i.q, align 8
  tail call void @_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE7ReleaseEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.f)
  br label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit

bb.f:                                             ; preds = %bb.d, %bb.d
  tail call void @_ZN2v88internal13GlobalHandles4Node26CollectPhantomCallbackDataEPSt6vectorISt4pairIPS2_NS1_22PendingPhantomCallbackEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull %i.e)
  br label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit

default.unreachable:                              ; preds = %bb.d
  unreachable

_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit: ; preds = %bb.d, %bb.f, %bb.e, %bb.c, %bb.b
  %i.r = add i64 %.sroa.7.012, 1                  ; 2 uses
  %i.s = icmp ult i64 %i.r, 256
  br i1 %i.s, label %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.011, i64 8216
  %i.u = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit

_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit: ; preds = %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit, %bb.g
  %.sroa.06.1 = phi ptr [ %.sroa.06.011, %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit ], [ %i.u, %bb.g ] ; 2 uses
  %.sroa.7.1 = phi i64 [ %i.r, %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit ], [ 0, %bb.g ]
  %.not = icmp eq ptr %.sroa.06.1, null
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13GlobalHandles35IterateYoungStrongAndDependentRootsEPNS0_11RootVisitorE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.07.010 = phi ptr [ %i.q, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.07.010, align 8     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.h = load i8, ptr %i.g, align 1
  %i.i = and i8 %i.h, 3
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = load ptr, ptr %1, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 9, ptr noundef %i.l, i64 %i.m) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.07.010, i64 8 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.d
  br i1 %i.r, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13GlobalHandles23ProcessWeakYoungObjectsEPNS0_11RootVisitorEPFbPNS0_4HeapENS0_14FullObjectSlotEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = icmp eq ptr %1, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread.us
  %.sroa.012.016.us = phi ptr [ %i.t, %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread.us ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.012.016.us, align 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 11 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 3
  %i.l = icmp eq i8 %i.k, 2
  br i1 %i.l, label %bb.b, label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 55464
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = tail call noundef zeroext i1 %2(ptr noundef nonnull %i.n, i64 %i.o) #21, !inline_history !15
  br i1 %i.p, label %bb.c, label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread.us

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.i, align 1
  %3 = lshr i8 %i.q, 3
  %4 = and i8 %3, 3
  switch i8 %4, label %.unreachabledefault [
    i8 2, label %bb.e
    i8 0, label %bb.d
    i8 1, label %bb.d
    i8 3, label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread.us
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  tail call void @_ZN2v88internal13GlobalHandles4Node26CollectPhantomCallbackDataEPSt6vectorISt4pairIPS2_NS1_22PendingPhantomCallbackEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull %i.g)
  br label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread.us

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  store ptr null, ptr %i.s, align 8
  tail call void @_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE7ReleaseEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread.us

_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread.us: ; preds = %bb.b, %bb.e, %bb.d, %bb.c, %.lr.ph.split.us
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.016.us, i64 8 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %._crit_edge, label %.lr.ph.split.us

.unreachabledefault:                              ; preds = %bb.c
  unreachable

default.unreachable:                              ; preds = %bb.g
  unreachable

._crit_edge:                                      ; preds = %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread, %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread.us, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread
  %.sroa.012.016 = phi ptr [ %i.ap, %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.012.016, align 8    ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 11 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1
  %i.y = and i8 %i.x, 3
  %i.z = icmp eq i8 %i.y, 2
  br i1 %i.z, label %bb.f, label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread

bb.f:                                             ; preds = %.lr.ph.split
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 55464
  %i.ac = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.ad = tail call noundef zeroext i1 %2(ptr noundef nonnull %i.ab, i64 %i.ac) #21, !inline_history !15
  %i.ae = load i8, ptr %i.w, align 1              ; 2 uses
  br i1 %i.ad, label %bb.g, label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit

bb.g:                                             ; preds = %bb.f
  %5 = lshr i8 %i.ae, 3
  %6 = and i8 %5, 3
  switch i8 %6, label %default.unreachable [
    i8 2, label %bb.h
    i8 0, label %bb.i
    i8 1, label %bb.i
    i8 3, label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread
  ]

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  store ptr null, ptr %i.ag, align 8
  tail call void @_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE7ReleaseEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.v)
  br label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread

bb.i:                                             ; preds = %bb.g, %bb.g
  tail call void @_ZN2v88internal13GlobalHandles4Node26CollectPhantomCallbackDataEPSt6vectorISt4pairIPS2_NS1_22PendingPhantomCallbackEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull %i.g)
  br label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread

_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit: ; preds = %bb.f
  %i.ah = and i8 %i.ae, 3
  %i.ai = icmp eq i8 %i.ah, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = select i1 %i.ai, ptr %i.ak, ptr null
  %i.am = load ptr, ptr %1, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 9, ptr noundef %i.al, i64 %i.ac) #21
  br label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread

_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread: ; preds = %bb.g, %bb.i, %bb.h, %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit, %.lr.ph.split
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 8 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.d
  br i1 %i.aq, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13GlobalHandles32InvokeSecondPassPhantomCallbacksEv(ptr noundef nonnull align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.v8::WeakCallbackInfo", align 8 ; 7 uses
  %2 = alloca [2 x %"class.std::unique_ptr.513"], align 16 ; 6 uses
  %3 = alloca [2 x %"class.std::unique_ptr.513"], align 16 ; 6 uses
  %4 = alloca %"class.v8::internal::GCCallbacksScope", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %6 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %.sroa.6 = alloca [2 x ptr], align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 55464
  call void @_ZN2v88internal16GCCallbacksScopeC1EPNS0_4HeapE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.g) #21
  %i.h = call noundef zeroext i1 @_ZNK2v88internal16GCCallbacksScope12CheckReenterEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  br i1 %i.h, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.i = load atomic volatile i64, ptr @_ZZN2v88internal13GlobalHandles32InvokeSecondPassPhantomCallbacksEvE28trace_event_unique_atomic758 acquire, align 8 ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #21 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str) #21 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  store atomic volatile i64 %i.p, ptr @_ZZN2v88internal13GlobalHandles32InvokeSecondPassPhantomCallbacksEvE28trace_event_unique_atomic758 release, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr null, ptr %5, align 8
  %i.q = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.r = and i8 %i.q, 5
  %.not15 = icmp eq i8 %i.r, 0
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.s = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #21 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i8 noundef signext 88, ptr noundef nonnull %.0, ptr noundef nonnull @.str.1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, i32 noundef 0) #21, !inline_history !16
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.f
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #21, !inline_history !17
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.f, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.ac = load ptr, ptr %3, align 16              ; 3 uses
  %.not.i.1 = icmp eq ptr %i.ac, null
  br i1 %.not.i.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ac) #21, !inline_history !17
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %.0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.w, ptr %i.ai, align 8
  store ptr %i.ag, ptr %5, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, %bb.e
  %i.aj = load ptr, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 55464
  call void @_ZN2v88internal4Heap23CallGCPrologueCallbacksENS_6GCTypeENS_15GCCallbackFlagsENS0_8GCTracer5Scope7ScopeIdE(ptr noundef nonnull align 8 dereferenceable(2992) %i.ak, i32 noundef 16, i32 noundef 0, i32 noundef 13) #21
  %i.al = load ptr, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 57328
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call i64 @_ZN2v84base9TimeTicks3NowEv() #21
  %i.ap = load atomic volatile i64, ptr @_ZZN2v88internal13GlobalHandles32InvokeSecondPassPhantomCallbacksEvE28trace_event_unique_atomic764 acquire, align 8 ; 2 uses
  %i.aq = inttoptr i64 %i.ap to ptr
  %.not16 = icmp eq i64 %i.ap, 0
  br i1 %.not16, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #21 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef ptr %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.2) #21 ; 2 uses
  %i.aw = ptrtoint ptr %i.av to i64
  store atomic volatile i64 %i.aw, ptr @_ZZN2v88internal13GlobalHandles32InvokeSecondPassPhantomCallbacksEvE28trace_event_unique_atomic764 release, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.012 = phi ptr [ %i.aq, %bb.g ], [ %i.av, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr null, ptr %6, align 8
  %i.ax = load atomic volatile i8, ptr %.012 monotonic, align 1
  %i.ay = and i8 %i.ax, 5
  %.not17 = icmp eq i8 %i.ay, 0
  br i1 %.not17, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.az = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #21 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call noundef i64 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i8 noundef signext 88, ptr noundef nonnull %.012, ptr noundef nonnull @.str.23, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %2, i32 noundef 0) #21, !inline_history !16
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load ptr, ptr %i.be, align 8            ; 3 uses
  %.not.i22 = icmp eq ptr %i.bf, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit24, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i23

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i23: ; preds = %bb.j
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bf) #21, !inline_history !17
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit24

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit24: ; preds = %bb.j, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i23
  %i.bj = load ptr, ptr %2, align 16              ; 3 uses
  %.not.i22.1 = icmp eq ptr %i.bj, null
  br i1 %.not.i22.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit24.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i23.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i23.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit24
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bj) #21, !inline_history !17
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit24.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit24.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i23.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %.012, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.23, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.bd, ptr %i.bp, align 8
  store ptr %i.bn, ptr %6, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit24.1, %bb.i
  %i.bq = phi ptr [ %i.bn, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit24.1 ], [ null, %bb.i ]
  %i.br = load ptr, ptr %i.a, align 8
  %i.bs = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %i.bx = phi ptr [ %i.bs, %.lr.ph ], [ %i.cb, %bb.l ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -32 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.by, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bx, i64 -24
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.bx, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  store ptr %i.by, ptr %i.c, align 8
  %i.bz = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %i.bz, ptr %1, align 8
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE17_M_default_appendEm:bb.a

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i25: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i26 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i26, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i25
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28, %bb.f
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #20
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

declare noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIPN2v88internal13GlobalHandles4NodeESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIPN2v88internal13GlobalHandles4NodeESaIS4_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.172) #22
  unreachable

_ZNKSt6vectorIPN2v88internal13GlobalHandles4NodeESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #19 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RSaIT1_E.exit28, label %_ZSt6fill_nIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i25

_ZSt6fill_nIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i25: ; preds = %_ZNKSt6vectorIPN2v88internal13GlobalHandles4NodeESaIS4_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i26 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i26, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RSaIT1_E.exit28

_ZSt27__uninitialized_default_n_aIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RSaIT1_E.exit28: ; preds = %_ZNKSt6vectorIPN2v88internal13GlobalHandles4NodeESaIS4_EE12_M_check_lenEmPKc.exit, %_ZSt6fill_nIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i25
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIPN2v88internal13GlobalHandles4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RSaIT1_E.exit28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPN2v88internal13GlobalHandles4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit

_ZNSt6vectorIPN2v88internal13GlobalHandles4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RSaIT1_E.exit28, %bb.f
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIPN2v88internal13GlobalHandles4NodeESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN2v88internal13GlobalHandles4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #20
  br label %_ZNSt12_Vector_baseIPN2v88internal13GlobalHandles4NodeESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIPN2v88internal13GlobalHandles4NodeESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIPN2v88internal13GlobalHandles4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPN2v88internal13GlobalHandles4NodeESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN2v88internal13GlobalHandles31PostGarbageCollectionProcessingENS1_15GCCallbackFlagsEE3$_0E9_M_invokeERKSt9_Any_data"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #1 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::DisallowJavascriptExecution", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8               ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 88
  store i8 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.b = load ptr, ptr %.val, align 8
  call void @_ZN2v88internal27DisallowJavascriptExecutionC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef %i.b) #21
  call void @_ZN2v88internal13GlobalHandles32InvokeSecondPassPhantomCallbacksEv(ptr noundef nonnull align 8 dereferenceable(104) %.val)
  call void @_ZN2v88internal27DisallowJavascriptExecutionD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN2v88internal13GlobalHandles31PostGarbageCollectionProcessingENS1_15GCCallbackFlagsEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal13GlobalHandles31PostGarbageCollectionProcessingENS1_15GCCallbackFlagsEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal13GlobalHandles31PostGarbageCollectionProcessingENS1_15GCCallbackFlagsEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal13GlobalHandles31PostGarbageCollectionProcessingENS1_15GCCallbackFlagsEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal13GlobalHandles31PostGarbageCollectionProcessingENS1_15GCCallbackFlagsEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2v88internal13GlobalHandles31PostGarbageCollectionProcessingENS1_15GCCallbackFlagsEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN2v88internal27DisallowJavascriptExecutionC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN2v88internal27DisallowJavascriptExecutionD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { builtin nounwind allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZSt11make_uniqueIN2v88internal13GlobalHandles9NodeSpaceINS2_4NodeEEEJPS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!7 = distinct !{!7, !"_ZSt11make_uniqueIN2v88internal13GlobalHandles9NodeSpaceINS2_4NodeEEEJPS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv: argument 0"}
!14 = distinct !{!14, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv"}
!15 = distinct !{null}
!16 = distinct !{null}
!17 = distinct !{null, null}
!18 = !{ptr @_ZN2v88internal13GlobalHandles22PendingPhantomCallback6InvokeEPNS0_7IsolateENS2_14InvocationTypeE}
!19 = distinct !{!19, !9}
!20 = distinct !{null}
!21 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!22 = !{!23, !25}
!23 = distinct !{!23, !24, !"_ZSt19__relocate_object_aIN2v88internal13GlobalHandles22PendingPhantomCallbackES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!24 = distinct !{!24, !"_ZSt19__relocate_object_aIN2v88internal13GlobalHandles22PendingPhantomCallbackES3_SaIS3_EEvPT_PT0_RT1_"}
!25 = distinct !{!25, !24, !"_ZSt19__relocate_object_aIN2v88internal13GlobalHandles22PendingPhantomCallbackES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!26 = distinct !{!26, !9}
!27 = !{i8 0, i8 2}
!28 = !{}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN2v88Platform23GetForegroundTaskRunnerEPNS_7IsolateE: argument 0"}
!31 = distinct !{!31, !"_ZN2v88Platform23GetForegroundTaskRunnerEPNS_7IsolateE"}
!32 = distinct !{null}
!33 = distinct !{null}
!34 = distinct !{null, null, null}
!35 = distinct !{null, null}
!36 = distinct !{null}
!37 = distinct !{null, null, null}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv: argument 0"}
!40 = distinct !{!40, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv: argument 0"}
!43 = distinct !{!43, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv: argument 0"}
!46 = distinct !{!46, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv: argument 0"}
!49 = distinct !{!49, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv"}
!50 = !{ptr @_ZN2v88internal13GlobalHandles28ApplyPersistentHandleVisitorEPNS_23PersistentHandleVisitorEPNS1_4NodeE}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv: argument 0"}
!53 = distinct !{!53, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv"}
!54 = !{i64 17125277}
!55 = distinct !{!55, !9}
!56 = !{!57, !59}
!57 = distinct !{!57, !58, !"_ZSt19__relocate_object_aISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!58 = distinct !{!58, !"_ZSt19__relocate_object_aISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEES7_SaIS7_EEvPT_PT0_RT1_"}
!59 = distinct !{!59, !58, !"_ZSt19__relocate_object_aISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!60 = distinct !{!60, !9}
!61 = distinct !{null}
end_hunk_1
