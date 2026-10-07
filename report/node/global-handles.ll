Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/global-handles?download=true
inline.NumInlined: 969
inline.NumDeleted: 547
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE7ReleaseEPS3_:bb.a
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
  br i1 %.not.i.i, label %bb.i, label %_ZN2v88internal12StatsCounter9DecrementEi.exit, !prof !10

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
define hidden void @_ZN2v88internal13GlobalHandles8MakeWeakEPmPvPFvRKNS_16WeakCallbackInfoIvEEENS_16WeakCallbackTypeE(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %.not.i = icmp eq i64 %i.a, 1995093329451155167
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !10

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
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal13GlobalHandles4Node8MakeWeakEPPm.exit, !prof !10

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
define hidden noundef ptr @_ZN2v88internal13GlobalHandles13ClearWeaknessEPm(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 align 2 {
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
define hidden void @_ZN2v88internal13GlobalHandles22AnnotateStrongRetainerEPmPKc(ptr nofree noundef writeonly captures(none) initializes((16, 24)) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal13GlobalHandles6IsWeakEPm(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 3
  %i.d = icmp eq i8 %i.c, 2
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13GlobalHandles33IterateWeakRootsForPhantomHandlesEPFbPNS0_4HeapENS0_14FullObjectSlotEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !noalias !20 ; 2 uses
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit
  %.sroa.06.012 = phi ptr [ %i.d, %.lr.ph ], [ %.sroa.06.1, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ] ; 3 uses
  %.sroa.7.011 = phi i64 [ 0, %.lr.ph ], [ %.sroa.7.1, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.012, i64 %.sroa.7.011 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 11 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1
  %i.i = and i8 %i.h, 3
  %i.j = icmp eq i8 %i.i, 2
  br i1 %i.j, label %bb.c, label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 55464
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = tail call noundef zeroext i1 %1(ptr noundef nonnull %i.l, i64 %i.m) #21, !inline_history !0
  br i1 %i.n, label %bb.d, label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %i.g, align 1
  %i.p = lshr i8 %i.o, 3
  %i.q = and i8 %i.p, 3
  switch i8 %i.q, label %default.unreachable [
    i8 2, label %bb.e
    i8 0, label %bb.f
    i8 1, label %bb.f
    i8 3, label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit
  ]

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  store ptr null, ptr %i.s, align 8
  tail call void @_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE7ReleaseEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.f)
  br label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit

bb.f:                                             ; preds = %bb.d, %bb.d
  tail call void @_ZN2v88internal13GlobalHandles4Node26CollectPhantomCallbackDataEPSt6vectorISt4pairIPS2_NS1_22PendingPhantomCallbackEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull %i.e)
  br label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit

default.unreachable:                              ; preds = %bb.d
  unreachable

_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit: ; preds = %bb.d, %bb.f, %bb.e, %bb.c, %bb.b
  %i.t = add i64 %.sroa.7.011, 1                  ; 2 uses
  %i.u = icmp ult i64 %i.t, 256
  br i1 %i.u, label %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 8216
  %i.w = load ptr, ptr %i.v, align 8
  br label %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit

_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit: ; preds = %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit, %bb.g
  %.sroa.7.1 = phi i64 [ %i.t, %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit ], [ 0, %bb.g ]
  %.sroa.06.1 = phi ptr [ %.sroa.06.012, %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit ], [ %i.w, %bb.g ] ; 2 uses
  %.not = icmp eq ptr %.sroa.06.1, null
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13GlobalHandles35IterateYoungStrongAndDependentRootsEPNS0_11RootVisitorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
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
define hidden void @_ZN2v88internal13GlobalHandles23ProcessWeakYoungObjectsEPNS0_11RootVisitorEPFbPNS0_4HeapENS0_14FullObjectSlotEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 align 2 {
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
  %.sroa.012.016.us = phi ptr [ %i.v, %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread.us ], [ %i.b, %.lr.ph ] ; 2 uses
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
  %i.p = tail call noundef zeroext i1 %2(ptr noundef nonnull %i.n, i64 %i.o) #21, !inline_history !0
  br i1 %i.p, label %bb.c, label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread.us

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.i, align 1
  %i.r = lshr i8 %i.q, 3
  %i.s = and i8 %i.r, 3
  switch i8 %i.s, label %.unreachabledefault [
    i8 2, label %bb.e
    i8 0, label %bb.d
    i8 1, label %bb.d
    i8 3, label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread.us
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  tail call void @_ZN2v88internal13GlobalHandles4Node26CollectPhantomCallbackDataEPSt6vectorISt4pairIPS2_NS1_22PendingPhantomCallbackEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull %i.g)
  br label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread.us

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  store ptr null, ptr %i.u, align 8
  tail call void @_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE7ReleaseEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread.us

_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread.us: ; preds = %bb.b, %bb.e, %bb.d, %bb.c, %.lr.ph.split.us
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.016.us, i64 8 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.d
  br i1 %i.w, label %._crit_edge, label %.lr.ph.split.us

.unreachabledefault:                              ; preds = %bb.c
  unreachable

default.unreachable:                              ; preds = %bb.g
  unreachable

._crit_edge:                                      ; preds = %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread, %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread.us, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread
  %.sroa.012.016 = phi ptr [ %i.at, %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.x = load ptr, ptr %.sroa.012.016, align 8    ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 11 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = and i8 %i.z, 3
  %i.ab = icmp eq i8 %i.aa, 2
  br i1 %i.ab, label %bb.f, label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread

bb.f:                                             ; preds = %.lr.ph.split
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 55464
  %i.ae = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.af = tail call noundef zeroext i1 %2(ptr noundef nonnull %i.ad, i64 %i.ae) #21, !inline_history !0
  %i.ag = load i8, ptr %i.y, align 1              ; 2 uses
  br i1 %i.af, label %bb.g, label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = lshr i8 %i.ag, 3
  %i.ai = and i8 %i.ah, 3
  switch i8 %i.ai, label %default.unreachable [
    i8 2, label %bb.h
    i8 0, label %bb.i
    i8 1, label %bb.i
    i8 3, label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread
  ]

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  store ptr null, ptr %i.ak, align 8
  tail call void @_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE7ReleaseEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  br label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread

bb.i:                                             ; preds = %bb.g, %bb.g
  tail call void @_ZN2v88internal13GlobalHandles4Node26CollectPhantomCallbackDataEPSt6vectorISt4pairIPS2_NS1_22PendingPhantomCallbackEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull %i.g)
  br label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread

_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit: ; preds = %bb.f
  %i.al = and i8 %i.ag, 3
  %i.am = icmp eq i8 %i.al, 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = select i1 %i.am, ptr %i.ao, ptr null
  %i.aq = load ptr, ptr %1, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 9, ptr noundef %i.ap, i64 %i.ae) #21
  br label %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread

_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit.thread: ; preds = %bb.g, %bb.i, %bb.h, %_ZN2v88internal13GlobalHandles19ResetWeakNodeIfDeadEPNS1_4NodeEPFbPNS0_4HeapENS0_14FullObjectSlotEE.exit, %.lr.ph.split
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 8 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.d
  br i1 %i.au, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13GlobalHandles32InvokeSecondPassPhantomCallbacksEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #1 align 2 {
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
end_hunk_0
begin_hunk_1_@_ZN2v88internal13GlobalHandles31PostGarbageCollectionProcessingENS_15GCCallbackFlagsE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 59181
  %i.k = load atomic i8, ptr %i.j seq_cst, align 1, !range !35, !noundef !36
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.critedge, label %bb.d

_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit: ; preds = %bb.c
  %i.m = trunc i16 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.m, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.split, %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1963), align 1, !range !35, !noundef !36
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56008
  %i.r = load atomic i32, ptr %i.q monotonic, align 4
  %i.s = icmp eq i32 %i.r, 4
  %i.t = and i32 %1, 28
  %i.u = icmp ne i32 %i.t, 0
  %or.cond = or i1 %i.u, %i.s
  br i1 %or.cond, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.b, %.split, %bb.e, %bb.d, %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit
  tail call void @_ZN2v88internal13GlobalHandles32InvokeSecondPassPhantomCallbacksEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
  br label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !range !35, !noundef !36
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.y = tail call noundef ptr @_ZN2v88internal2V818GetCurrentPlatformEv() #21 ; 2 uses
  %i.z = load ptr, ptr %0, align 8
  %i.aa = load ptr, ptr %i.y, align 8, !noalias !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !37
  call void %i.ac(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.z, i8 noundef zeroext 2) #21, !inline_history !29
  %i.ad = load ptr, ptr %4, align 8               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ae = load ptr, ptr %0, align 8
  %i.af = ptrtoint ptr %0 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ai, align 8
  store i64 %i.af, ptr %6, align 8
  store ptr @"_ZNSt17_Function_handlerIFvvEZN2v88internal13GlobalHandles31PostGarbageCollectionProcessingENS1_15GCCallbackFlagsEE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.ah, align 8
  store ptr @"_ZNSt17_Function_handlerIFvvEZN2v88internal13GlobalHandles31PostGarbageCollectionProcessingENS1_15GCCallbackFlagsEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.ag, align 8
  call void @_ZN2v88internal18MakeCancelableTaskEPNS0_7IsolateESt8functionIFvvEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.487") align 8 %5, ptr noundef %i.ae, ptr noundef nonnull %6) #21
  %i.aj = load ptr, ptr %5, align 8               ; 2 uses
  store ptr null, ptr %5, align 8
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %spec.select.i = select i1 %i.ak, ptr null, ptr %i.al
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr @.constant, ptr %2, align 8
  %i.am = ptrtoint ptr %spec.select.i to i64
  store i64 %i.am, ptr %3, align 8
  %i.an = load ptr, ptr %i.ad, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #21, !inline_history !30
  %i.aq = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i: ; preds = %bb.g
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aq) #21, !inline_history !31
  br label %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.au = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i4 = icmp eq ptr %i.au, null
  br i1 %.not.i4, label %_ZNSt10unique_ptrIN2v88internal14CancelableTaskESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal14CancelableTaskEEclEPS2_.exit.i

_ZNKSt14default_deleteIN2v88internal14CancelableTaskEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #21, !inline_history !32
  br label %_ZNSt10unique_ptrIN2v88internal14CancelableTaskESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal14CancelableTaskESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN2v88internal14CancelableTaskEEclEPS2_.exit.i
  %i.ay = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not.i5 = icmp eq ptr %i.ay, null
  br i1 %.not.i5, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal14CancelableTaskESt14default_deleteIS2_EED2Ev.exit
  %i.az = call noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3) #21, !inline_history !33 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt10unique_ptrIN2v88internal14CancelableTaskESt14default_deleteIS2_EED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 8 uses
  %.not.i.i6 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i6, label %_ZNSt12__shared_ptrIN2v810TaskRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  %i.bd = load atomic i64, ptr %i.bc acquire, align 8 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 4294967297
  %i.bf = trunc i64 %i.bd to i32                  ; 2 uses
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bc, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 0, ptr %i.bg, align 4
  %i.bh = load ptr, ptr %i.bb, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #21, !inline_history !34
  %i.bk = load ptr, ptr %i.bb, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #21, !inline_history !34
  br label %_ZNSt12__shared_ptrIN2v810TaskRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.bn = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = add nsw i32 %i.bf, -1
  store i32 %i.bo, ptr %i.bc, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bp = atomicrmw volatile add ptr %i.bc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.bf, %bb.l ], [ %i.bp, %bb.m ]
  %i.bq = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bq, label %bb.n, label %_ZNSt12__shared_ptrIN2v810TaskRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !10

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #21
  br label %_ZNSt12__shared_ptrIN2v810TaskRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v810TaskRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZNSt12__shared_ptrIN2v810TaskRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.f, %bb.a
  ret void
}

declare noundef ptr @_ZN2v88internal2V818GetCurrentPlatformEv() local_unnamed_addr #7

declare void @_ZN2v88internal18MakeCancelableTaskEPNS0_7IsolateESt8functionIFvvEE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.487") align 8, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13GlobalHandles18IterateStrongRootsEPNS0_11RootVisitorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !noalias !40 ; 2 uses
  %.not11 = icmp eq ptr %i.d, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit
  %.sroa.07.013 = phi ptr [ %.sroa.07.1, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ], [ %i.d, %bb.a ] ; 3 uses
  %.sroa.7.012 = phi i64 [ %.sroa.7.1, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %.sroa.07.013, i64 %.sroa.7.012 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 11
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 3
  %i.i = icmp eq i8 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = load ptr, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 9, ptr noundef %i.k, i64 %i.l) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.p = add i64 %.sroa.7.012, 1                  ; 2 uses
  %i.q = icmp ult i64 %i.p, 256
  br i1 %i.q, label %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.07.013, i64 8216
  %i.s = load ptr, ptr %i.r, align 8
  br label %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit

_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.7.1 = phi i64 [ %i.p, %bb.c ], [ 0, %bb.d ]
  %.sroa.07.1 = phi ptr [ %.sroa.07.013, %bb.c ], [ %i.s, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %.sroa.07.1, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13GlobalHandles16IterateWeakRootsEPNS0_11RootVisitorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !noalias !43 ; 2 uses
  %.not11 = icmp eq ptr %i.d, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit
  %.sroa.07.013 = phi ptr [ %.sroa.07.1, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ], [ %i.d, %bb.a ] ; 3 uses
  %.sroa.7.012 = phi i64 [ %.sroa.7.1, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %.sroa.07.013, i64 %.sroa.7.012 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 11
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 3
  %i.i = icmp eq i8 %i.h, 2
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = load ptr, ptr %1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 9, ptr noundef null, i64 %i.j) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.n = add i64 %.sroa.7.012, 1                  ; 2 uses
  %i.o = icmp ult i64 %i.n, 256
  br i1 %i.o, label %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.07.013, i64 8216
  %i.q = load ptr, ptr %i.p, align 8
  br label %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit

_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.7.1 = phi i64 [ %i.n, %bb.c ], [ 0, %bb.d ]
  %.sroa.07.1 = phi ptr [ %.sroa.07.013, %bb.c ], [ %i.q, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %.sroa.07.1, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13GlobalHandles15IterateAllRootsEPNS0_11RootVisitorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !noalias !46 ; 2 uses
  %.not11 = icmp eq ptr %i.d, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit
  %.sroa.07.013 = phi ptr [ %.sroa.07.1, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ], [ %i.d, %bb.a ] ; 3 uses
  %.sroa.7.012 = phi i64 [ %.sroa.7.1, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %.sroa.07.013, i64 %.sroa.7.012 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 11
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 3                           ; 2 uses
  %i.i = add nsw i8 %i.h, -1
  %spec.select.i = icmp ult i8 %i.i, 2
  br i1 %spec.select.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.j = icmp eq i8 %i.h, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.j, ptr %i.l, ptr null
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = load ptr, ptr %1, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 9, ptr noundef %i.m, i64 %i.n) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.r = add i64 %.sroa.7.012, 1                  ; 2 uses
  %i.s = icmp ult i64 %i.r, 256
  br i1 %i.s, label %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.07.013, i64 8216
  %i.u = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit

_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.7.1 = phi i64 [ %i.r, %bb.c ], [ 0, %bb.d ]
  %.sroa.07.1 = phi ptr [ %.sroa.07.013, %bb.c ], [ %i.u, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %.sroa.07.1, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13GlobalHandles20IterateAllYoungRootsEPNS0_11RootVisitorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
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
  %.sroa.07.010 = phi ptr [ %i.s, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.07.010, align 8     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.h = load i8, ptr %i.g, align 1
  %i.i = and i8 %i.h, 3                           ; 2 uses
  %i.j = add nsw i8 %i.i, -1
  %spec.select.i = icmp ult i8 %i.j, 2
  br i1 %spec.select.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.k = icmp eq i8 %i.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %i.m, ptr null
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = load ptr, ptr %1, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 9, ptr noundef %i.n, i64 %i.o) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.07.010, i64 8 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.d
  br i1 %i.t, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13GlobalHandles28ApplyPersistentHandleVisitorEPNS_23PersistentHandleVisitorEPNS1_4NodeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(104) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i16, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i16 noundef zeroext %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13GlobalHandles25IterateAllRootsForTestingEPNS_23PersistentHandleVisitorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !49 ; 2 uses
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit
  %.sroa.06.012 = phi ptr [ %.sroa.06.1, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ], [ %i.e, %bb.a ] ; 3 uses
  %.sroa.7.011 = phi i64 [ %.sroa.7.1, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.012, i64 %.sroa.7.011 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.h = load i8, ptr %i.g, align 1
  %i.i = and i8 %i.h, 3
  %i.j = add nsw i8 %i.i, -1
  %spec.select.i = icmp ult i8 %i.j, 2
  br i1 %spec.select.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %i.f, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i16, ptr %i.k, align 8
  %i.m = load ptr, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i16 noundef zeroext %i.l) #21, !inline_history !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.p = add i64 %.sroa.7.011, 1                  ; 2 uses
  %i.q = icmp ult i64 %i.p, 256
  br i1 %i.q, label %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 8216
  %i.s = load ptr, ptr %i.r, align 8
  br label %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit

_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.7.1 = phi i64 [ %i.p, %bb.c ], [ 0, %bb.d ]
  %.sroa.06.1 = phi ptr [ %.sroa.06.012, %bb.c ], [ %i.s, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %.sroa.06.1, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal13GlobalHandles11RecordStatsEPNS0_9HeapStatsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef writeonly captures(none) initializes((104, 144)) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !noalias !53 ; 2 uses
  %.not19 = icmp eq ptr %i.h, null
  br i1 %.not19, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit
  %i.i = phi i64 [ %i.u, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ], [ 0, %bb.a ] ; 4 uses
  %i.j = phi i64 [ %i.v, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ], [ 0, %bb.a ] ; 4 uses
  %i.k = phi i64 [ %i.w, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ], [ 0, %bb.a ] ; 4 uses
  %i.l = phi i64 [ %i.n, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ], [ 0, %bb.a ]
  %.sroa.015.021 = phi ptr [ %.sroa.015.1, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ], [ %i.h, %bb.a ] ; 3 uses
  %.sroa.7.020 = phi i64 [ %.sroa.7.1, %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit ], [ 0, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.sroa.015.021, i64 %.sroa.7.020
  %i.n = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.n, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 11
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 3
  switch i8 %i.q, label %default.unreachable [
    i8 2, label %bb.b
    i8 3, label %bb.c
    i8 0, label %bb.d
    i8 1, label %bb.e
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.r = add i64 %i.i, 1                          ; 2 uses
  store i64 %i.r, ptr %i.b, align 8
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.s = add i64 %i.j, 1                          ; 2 uses
  store i64 %i.s, ptr %i.c, align 8
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.t = add i64 %i.k, 1                          ; 2 uses
  store i64 %i.t, ptr %i.d, align 8
  br label %bb.e

default.unreachable:                              ; preds = %.lr.ph
  unreachable

bb.e:                                             ; preds = %.lr.ph, %bb.c, %bb.d, %bb.b
  %i.u = phi i64 [ %i.i, %.lr.ph ], [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %i.r, %bb.b ]
  %i.v = phi i64 [ %i.j, %.lr.ph ], [ %i.s, %bb.c ], [ %i.j, %bb.d ], [ %i.j, %bb.b ]
  %i.w = phi i64 [ %i.k, %.lr.ph ], [ %i.k, %bb.c ], [ %i.t, %bb.d ], [ %i.k, %bb.b ]
  %i.x = add i64 %.sroa.7.020, 1                  ; 2 uses
  %i.y = icmp ult i64 %i.x, 256
  br i1 %i.y, label %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 8216
  %i.aa = load ptr, ptr %i.z, align 8
  br label %_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit

_ZN2v88internal13GlobalHandles12NodeIteratorINS1_9NodeBlockINS1_4NodeEEEEppEv.exit: ; preds = %bb.e, %bb.f
  %.sroa.7.1 = phi i64 [ %i.x, %bb.e ], [ 0, %bb.f ]
  %.sroa.015.1 = phi ptr [ %.sroa.015.021, %bb.e ], [ %i.aa, %bb.f ] ; 2 uses
  %.not = icmp eq ptr %.sroa.015.1, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14EternalHandlesD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(56) dereferenceable(56) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge, %bb.b
  %i.m = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIPmSaIS0_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #20
  br label %_ZNSt6vectorIPmSaIS0_EED2Ev.exit

_ZNSt6vectorIPmSaIS0_EED2Ev.exit:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.sroa.05.08 = phi ptr [ %i.u, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %i.s = load ptr, ptr %.sroa.05.08, align 8      ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 8 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.d
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14EternalHandles15IterateAllRootsEPNS0_11RootVisitorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8
  br label %.lr.ph.i.i

._crit_edge:                                      ; preds = %.lr.ph.i.i, %bb.a
  ret void

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %.015 = phi i32 [ %i.f, %.lr.ph ], [ %i.o, %.lr.ph.i.i ] ; 2 uses
  %.sroa.09.014 = phi ptr [ %i.b, %.lr.ph ], [ %i.p, %.lr.ph.i.i ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.09.014, align 8     ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %.015, i32 256)
  %i.i = sext i32 %.sroa.speculated to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.i
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = load ptr, ptr %1, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 7, ptr noundef null, i64 %i.h, i64 %i.k) #21
  %i.o = add nsw i32 %.015, -256
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.09.014, i64 8 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %._crit_edge, label %.lr.ph.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14EternalHandles17IterateYoungRootsEPNS0_11RootVisitorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.05.08 = phi ptr [ %i.b, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %i.g = load i32, ptr %.sroa.05.08, align 4      ; 2 uses
  %i.h = ashr i32 %i.g, 8
  %i.i = sext i32 %i.h to i64
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = and i32 %i.g, 255
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.n
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = load ptr, ptr %1, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 7, ptr noundef null, i64 %i.p) #21
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 4 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14EternalHandles31PostGarbageCollectionProcessingEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre17 = load ptr, ptr %i.f, align 8
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.pre18 = load ptr, ptr %i.c, align 8           ; 2 uses
  %.pre19 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.g = ptrtoint ptr %.pre18 to i64
  %i.h = ptrtoint ptr %.pre19 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp ugt i64 %.1, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.l = sub nuw i64 %.1, %i.j
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.l)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.c:                                             ; preds = %._crit_edge
  %i.m = icmp ult i64 %.1, %i.j
  br i1 %i.m, label %bb.d, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.pre19, i64 %.1 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre18, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.n, ptr %i.c, align 8
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.o = phi ptr [ %.pre17, %.lr.ph ], [ %i.ag, %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 3 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 4 uses
  %.sroa.07.015 = phi ptr [ %i.b, %.lr.ph ], [ %i.ah, %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.thread ] ; 2 uses
end_hunk_1
