inline.NumInlined: 431
inline.NumDeleted: 216
begin_hunk_0_@_ZN2v88internal9ArrayList3AddEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEES7_NS0_14AllocationTypeE:bb.a
  store atomic volatile i64 %i.ae, ptr %i.ah monotonic, align 8
  %i.ai = trunc i64 %i.ae to i1
  br i1 %i.ai, label %bb.g, label %_ZN2v88internal15TaggedArrayBaseINS0_9ArrayListENS0_14ArrayListShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit17

bb.g:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_9ArrayListENS0_14ArrayListShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.aj = or disjoint i64 %i.ac, 1                ; 2 uses
  %i.ak = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.al = and i64 %i.ac, -262144
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 262144       ; 2 uses
  %i.ao = and i64 %i.an, 32
  %.not.i.i.i.i.i13 = icmp eq i64 %i.ao, 0
  %i.ap = and i64 %i.an, 25
  %.not37.i.i.i.i.i14 = icmp eq i64 %i.ap, 0
  br i1 %.not37.i.i.i.i.i14, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aq = and i64 %i.ae, -262144
  %i.ar = inttoptr i64 %i.aq to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i15 = load i64, ptr %i.ar, align 262144
  %i.as = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i15, 25
  %.not38.i.i.i.i.i16 = icmp eq i64 %i.as, 0
  br i1 %.not38.i.i.i.i.i16, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.aj, i64 noundef %i.ak, i64 %i.ae) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i13, label %_ZN2v88internal15TaggedArrayBaseINS0_9ArrayListENS0_14ArrayListShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit17, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.aj, i64 %i.ak, i64 %i.ae) #11
  br label %_ZN2v88internal15TaggedArrayBaseINS0_9ArrayListENS0_14ArrayListShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit17

_ZN2v88internal15TaggedArrayBaseINS0_9ArrayListENS0_14ArrayListShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit17: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_9ArrayListENS0_14ArrayListShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.j, %bb.k
  %i.at = load i64, ptr %i.i, align 8
  %i.au = add i64 %i.at, -1
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = sext i32 %i.h to i64
  %i.ay = shl nsw i64 %i.ax, 32
  store atomic volatile i64 %i.ay, ptr %i.aw monotonic, align 8
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal9ArrayList12ToFixedArrayEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_14AllocationTypeE(ptr noundef %0, ptr nofree readonly captures(none) %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 5 uses
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = lshr i64 %i.e, 32                        ; 3 uses
  %i.g = trunc nuw i64 %i.f to i32                ; 3 uses
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 864
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.e, 576460756598390783
  br i1 %i.j, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, i32 noundef %i.g) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = shl nuw nsw i32 %i.g, 3
  %i.l = add nuw nsw i32 %i.k, 16
  %i.m = tail call i64 @_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.l, i8 noundef zeroext %2, i8 0, i8 noundef zeroext 0) #11 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.m, -1
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  store atomic volatile i64 %i.o, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = and i64 %i.e, 1152921500311879680
  store atomic volatile i64 %i.s, ptr %i.r monotonic, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN2v88internal10FixedArray3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_iNS0_14AllocationTypeENS0_14AllocationHintE.exit, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.y = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #11
  br label %_ZN2v88internal10FixedArray3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_iNS0_14AllocationTypeENS0_14AllocationHintE.exit

_ZN2v88internal10FixedArray3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_iNS0_14AllocationTypeENS0_14AllocationHintE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi ptr [ %i.y, %bb.f ], [ %i.u, %bb.e ] ; 5 uses
  %i.z = ptrtoint ptr %.0.i.i.i to i64
  %i.aa = add i64 %i.z, 8
  %i.ab = inttoptr i64 %i.aa to ptr
  store ptr %i.ab, ptr %i.t, align 8
  store i64 %i.m, ptr %.0.i.i.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ae = load i64, ptr %i.ac, align 8
  %i.af = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.ae, i64 %i.f, ptr nonnull %i.ad) #11, !srcloc !8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.ag = load i64, ptr %.0.i.i.i, align 8
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
  %i.ai = or disjoint i64 %i.ah, 1
  %i.aj = and i64 %i.ah, -262144
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i64, ptr %i.ak, align 262144, !noalias !19 ; 2 uses
  %i.am = and i64 %i.al, 32
  %.not.i.i.i = icmp eq i64 %i.am, 0
  %i.an = and i64 %i.al, 24
  %.not7.i.i.i = icmp ne i64 %i.an, 0
  %i.ao = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.ao, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %3, i64 %i.ai, i32 noundef %.1.i.i.i) #11
  %i.ap = load i64, ptr %.0.i.i.i, align 8        ; 2 uses
  %i.aq = add i64 %i.ap, 15
  %i.ar = load i64, ptr %1, align 8
  %i.as = add i64 %i.ar, 23
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 55464
  %i.au = load i32, ptr %3, align 4
  call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.at, i64 %i.ap, i64 %i.aq, i64 %i.as, i32 noundef %i.g, i32 noundef %i.au) #11
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal10FixedArray3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_iNS0_14AllocationTypeENS0_14AllocationHintE.exit, %bb.b
  %.sroa.026.0 = phi ptr [ %i.i, %bb.b ], [ %.0.i.i.i, %_ZN2v88internal10FixedArray3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_iNS0_14AllocationTypeENS0_14AllocationHintE.exit ]
  ret ptr %.sroa.026.0
}

declare void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992), i64, i64, i64, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9ArrayList9RightTrimEPNS0_7IsolateEi(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp sgt i32 %2, %i.d
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i32 %2, %i.d
  br i1 %i.f, label %_ZN2v88internal15TaggedArrayBaseINS0_9ArrayListENS0_14ArrayListShapeENS0_16HeapObjectLayoutEE9RightTrimEPNS0_7IsolateEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 55464
  %i.h = ptrtoint ptr %0 to i64
  %i.i = or disjoint i64 %i.h, 1
  tail call void @_ZN2v88internal4Heap14RightTrimArrayINS0_9ArrayListEEEvNS0_6TaggedIT_EEii(ptr noundef nonnull align 8 dereferenceable(2992) %i.g, i64 %i.i, i32 noundef %2, i32 noundef %i.d) #11
  br label %_ZN2v88internal15TaggedArrayBaseINS0_9ArrayListENS0_14ArrayListShapeENS0_16HeapObjectLayoutEE9RightTrimEPNS0_7IsolateEi.exit

_ZN2v88internal15TaggedArrayBaseINS0_9ArrayListENS0_14ArrayListShapeENS0_16HeapObjectLayoutEE9RightTrimEPNS0_7IsolateEi.exit: ; preds = %bb.e, %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = lshr i64 %i.k, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = icmp slt i32 %2, %i.m
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_9ArrayListENS0_14ArrayListShapeENS0_16HeapObjectLayoutEE9RightTrimEPNS0_7IsolateEi.exit
  %i.o = zext nneg i32 %2 to i64
  %i.p = shl nuw nsw i64 %i.o, 32
  store atomic volatile i64 %i.p, ptr %i.j monotonic, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN2v88internal15TaggedArrayBaseINS0_9ArrayListENS0_14ArrayListShapeENS0_16HeapObjectLayoutEE9RightTrimEPNS0_7IsolateEi.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal13WeakArrayList8AddToEndEPNS0_7IsolateENS0_6HandleIS1_EENS0_23MaybeObjectDirectHandleE(ptr noundef %0, ptr %1, i32 %2, ptr nofree readonly captures(address_is_null) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = lshr i64 %i.d, 32
  %i.f = trunc nuw i64 %i.e to i32
  %4 = add nsw i32 %i.f, 1                        ; 3 uses
  %i.g = add i64 %i.a, 7
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8
  %i.j = lshr i64 %i.i, 32
  %i.k = trunc nuw i64 %i.j to i32                ; 2 uses
  %5 = icmp sgt i32 %4, %i.k
  br i1 %5, label %bb.b, label %_ZN2v88internal13WeakArrayList11EnsureSpaceEPNS0_7IsolateENS0_6HandleIS1_EEiNS0_14AllocationTypeE.exit

bb.b:                                             ; preds = %bb.a
  %i.l = sdiv i32 %4, 2
  %.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %i.l, i32 2)
  %i.m = sub i32 %4, %i.k
  %i.n = add i32 %i.m, %.sroa.speculated.i.i
  %i.o = tail call ptr @_ZN2v88internal7Factory24CopyWeakArrayListAndGrowENS0_12DirectHandleINS0_13WeakArrayListEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %1, i32 noundef %i.n, i8 noundef zeroext 0) #11 ; 2 uses
  %.pre = load i64, ptr %i.o, align 8             ; 2 uses
  %.pre30 = add i64 %.pre, 15
  %.pre31 = inttoptr i64 %.pre30 to ptr
  br label %_ZN2v88internal13WeakArrayList11EnsureSpaceEPNS0_7IsolateENS0_6HandleIS1_EEiNS0_14AllocationTypeE.exit

_ZN2v88internal13WeakArrayList11EnsureSpaceEPNS0_7IsolateENS0_6HandleIS1_EEiNS0_14AllocationTypeE.exit: ; preds = %bb.a, %bb.b
  %.pre-phi32 = phi ptr [ %i.c, %bb.a ], [ %.pre31, %bb.b ] ; 2 uses
  %i.p = phi i64 [ %i.a, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.011.0.i = phi ptr [ %1, %bb.a ], [ %i.o, %bb.b ]
  %i.q = load i64, ptr %.pre-phi32, align 8       ; 2 uses
  %i.r = icmp eq i32 %2, 0
  %i.s = icmp eq ptr %3, null                     ; 2 uses
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN2v88internal13WeakArrayList11EnsureSpaceEPNS0_7IsolateENS0_6HandleIS1_EEiNS0_14AllocationTypeE.exit
  br i1 %i.s, label %bb.d, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i: ; preds = %bb.c
  %i.t = load i64, ptr %3, align 8
  %i.u = or i64 %i.t, 3
  br label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit

bb.e:                                             ; preds = %_ZN2v88internal13WeakArrayList11EnsureSpaceEPNS0_7IsolateENS0_6HandleIS1_EEiNS0_14AllocationTypeE.exit
  br i1 %i.s, label %bb.f, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i: ; preds = %bb.e
  %i.v = load i64, ptr %3, align 8
  br label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit

_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i
  %.sroa.05.0.i = phi i64 [ %i.u, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i ], [ %i.v, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i ] ; 5 uses
  %i.w = shl i64 %i.q, 3
  %sext29 = ashr i64 %i.w, 32
  %i.x = and i64 %sext29, -8
  %i.y = add i64 %i.p, 23
  %i.z = add i64 %i.y, %i.x                       ; 3 uses
  %i.aa = inttoptr i64 %i.z to ptr
  store atomic volatile i64 %.sroa.05.0.i, ptr %i.aa monotonic, align 8
  %i.ab = trunc i64 %.sroa.05.0.i to i1
  %i.ac = and i64 %.sroa.05.0.i, 4294967295
  %i.ad = icmp ne i64 %i.ac, 3
  %i.ae = and i1 %i.ad, %i.ab
  br i1 %i.ae, label %bb.g, label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

bb.g:                                             ; preds = %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit
  %i.af = and i64 %.sroa.05.0.i, -3               ; 2 uses
  %i.ag = and i64 %i.p, -262144
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load i64, ptr %i.ah, align 262144       ; 2 uses
  %i.aj = and i64 %i.ai, 32
  %.not.i.i.i.i = icmp eq i64 %i.aj, 0
  %i.ak = and i64 %i.ai, 25
  %.not37.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not37.i.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.al = and i64 %.sroa.05.0.i, -262144
  %i.am = inttoptr i64 %i.al to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.am, align 262144
  %i.an = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 25
  %.not38.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not38.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.p, i64 noundef %i.z, i64 %i.af) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i, label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.p, i64 %i.z, i64 %i.af) #11
  br label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit, %bb.j, %bb.k
  %i.ao = and i64 %i.q, -4294967296
  %i.ap = add i64 %i.ao, 4294967296
  store atomic volatile i64 %i.ap, ptr %.pre-phi32 monotonic, align 8
  ret ptr %.sroa.011.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal13WeakArrayList11EnsureSpaceEPNS0_7IsolateENS0_6HandleIS1_EEiNS0_14AllocationTypeE(ptr noundef %0, ptr %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = lshr i64 %i.d, 32
  %i.f = trunc nuw i64 %i.e to i32                ; 2 uses
  %i.g = icmp sgt i32 %2, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv i32 %2, 2
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 2)
  %i.i = add nsw i32 %.sroa.speculated.i, %2
  %i.j = sub i32 %i.i, %i.f
  %i.k = tail call ptr @_ZN2v88internal7Factory24CopyWeakArrayListAndGrowENS0_12DirectHandleINS0_13WeakArrayListEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %1, i32 noundef %i.j, i8 noundef zeroext %3) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.011.0 = phi ptr [ %i.k, %bb.b ], [ %1, %bb.a ]
  ret ptr %.sroa.011.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal13WeakArrayList8AddToEndEPNS0_7IsolateENS0_6HandleIS1_EENS0_23MaybeObjectDirectHandleENS0_6TaggedINS0_3SmiEEE(ptr noundef %0, ptr %1, i32 %2, ptr nofree readonly captures(address_is_null) %3, i64 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = lshr i64 %i.d, 32
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = add nsw i32 %i.f, 2                      ; 3 uses
  %i.h = add i64 %i.a, 7
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i64 %i.j, 32
  %i.l = trunc nuw i64 %i.k to i32                ; 2 uses
  %i.m = icmp sgt i32 %i.g, %i.l
  br i1 %i.m, label %bb.b, label %_ZN2v88internal13WeakArrayList11EnsureSpaceEPNS0_7IsolateENS0_6HandleIS1_EEiNS0_14AllocationTypeE.exit

bb.b:                                             ; preds = %bb.a
  %i.n = sdiv i32 %i.g, 2
  %.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 2)
  %i.o = sub i32 %i.g, %i.l
  %i.p = add i32 %i.o, %.sroa.speculated.i.i
  %i.q = tail call ptr @_ZN2v88internal7Factory24CopyWeakArrayListAndGrowENS0_12DirectHandleINS0_13WeakArrayListEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %1, i32 noundef %i.p, i8 noundef zeroext 0) #11 ; 2 uses
  %.pre = load i64, ptr %i.q, align 8             ; 2 uses
  %.pre38 = add i64 %.pre, 15
  %.pre39 = inttoptr i64 %.pre38 to ptr
  br label %_ZN2v88internal13WeakArrayList11EnsureSpaceEPNS0_7IsolateENS0_6HandleIS1_EEiNS0_14AllocationTypeE.exit

_ZN2v88internal13WeakArrayList11EnsureSpaceEPNS0_7IsolateENS0_6HandleIS1_EEiNS0_14AllocationTypeE.exit: ; preds = %bb.a, %bb.b
  %.pre-phi40 = phi ptr [ %i.c, %bb.a ], [ %.pre39, %bb.b ] ; 2 uses
  %i.r = phi i64 [ %i.a, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.sroa.011.0.i = phi ptr [ %1, %bb.a ], [ %i.q, %bb.b ]
  %i.s = load i64, ptr %.pre-phi40, align 8       ; 2 uses
  %i.t = icmp eq i32 %2, 0
  %i.u = icmp eq ptr %3, null                     ; 2 uses
  br i1 %i.t, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN2v88internal13WeakArrayList11EnsureSpaceEPNS0_7IsolateENS0_6HandleIS1_EEiNS0_14AllocationTypeE.exit
  br i1 %i.u, label %bb.d, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i: ; preds = %bb.c
  %i.v = load i64, ptr %3, align 8
  %i.w = or i64 %i.v, 3
  br label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit

bb.e:                                             ; preds = %_ZN2v88internal13WeakArrayList11EnsureSpaceEPNS0_7IsolateENS0_6HandleIS1_EEiNS0_14AllocationTypeE.exit
  br i1 %i.u, label %bb.f, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i: ; preds = %bb.e
  %i.x = load i64, ptr %3, align 8
  br label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit

_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i
  %.sroa.05.0.i = phi i64 [ %i.w, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i ], [ %i.x, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i ] ; 5 uses
  %sh.diff = lshr i64 %i.s, 29
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %i.y = and i32 %tr.sh.diff, -8                  ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = add i64 %i.r, 23                        ; 2 uses
  %i.ab = add i64 %i.aa, %i.z                     ; 3 uses
  %i.ac = inttoptr i64 %i.ab to ptr
  store atomic volatile i64 %.sroa.05.0.i, ptr %i.ac monotonic, align 8
  %i.ad = trunc i64 %.sroa.05.0.i to i1
  %i.ae = and i64 %.sroa.05.0.i, 4294967295
  %i.af = icmp ne i64 %i.ae, 3
  %i.ag = and i1 %i.af, %i.ad
  br i1 %i.ag, label %bb.g, label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

bb.g:                                             ; preds = %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit
  %i.ah = and i64 %.sroa.05.0.i, -3               ; 2 uses
  %i.ai = and i64 %i.r, -262144
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load i64, ptr %i.aj, align 262144       ; 2 uses
  %i.al = and i64 %i.ak, 32
  %.not.i.i.i.i = icmp eq i64 %i.al, 0
  %i.am = and i64 %i.ak, 25
  %.not37.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not37.i.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.an = and i64 %.sroa.05.0.i, -262144
  %i.ao = inttoptr i64 %i.an to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ao, align 262144
  %i.ap = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 25
  %.not38.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not38.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.r, i64 noundef %i.ab, i64 %i.ah) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i, label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.r, i64 %i.ab, i64 %i.ah) #11
  br label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit, %bb.j, %bb.k
  %i.aq = add i32 %i.y, 8
  %i.ar = sext i32 %i.aq to i64
  %i.as = add i64 %i.aa, %i.ar
  %i.at = inttoptr i64 %i.as to ptr
  store atomic volatile i64 %4, ptr %i.at monotonic, align 8
  %i.au = and i64 %i.s, -4294967296
  %i.av = add i64 %i.au, 8589934592
  store atomic volatile i64 %i.av, ptr %.pre-phi40 monotonic, align 8
  ret ptr %.sroa.011.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal13WeakArrayList6AppendEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_23MaybeObjectDirectHandleENS0_14AllocationTypeE(ptr noundef %0, ptr %1, i32 %2, ptr nofree readonly captures(address_is_null) %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8                ; 8 uses
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8
  %.fr = freeze i64 %i.d                          ; 5 uses
  %i.e = lshr i64 %.fr, 32                        ; 4 uses
  %i.f = trunc nuw i64 %i.e to i32                ; 4 uses
  %i.g = add i64 %i.a, 7
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8
  %i.j = lshr i64 %i.i, 32
  %i.k = trunc nuw i64 %i.j to i32
  %.not = icmp slt i32 %i.f, %i.k
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %2, 0
  %i.m = icmp eq ptr %3, null                     ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.m, label %bb.d, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i: ; preds = %bb.c
  %i.n = load i64, ptr %3, align 8
  %i.o = or i64 %i.n, 3
  br label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.m, label %bb.f, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i: ; preds = %bb.e
  %i.p = load i64, ptr %3, align 8
  br label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit

_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i
  %.sroa.05.0.i = phi i64 [ %i.o, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i ], [ %i.p, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i ] ; 5 uses
  %i.q = shl nsw i32 %i.f, 3
  %i.r = sext i32 %i.q to i64
  %i.s = add i64 %i.a, 23
  %i.t = add i64 %i.s, %i.r                       ; 3 uses
  %i.u = inttoptr i64 %i.t to ptr
  store atomic volatile i64 %.sroa.05.0.i, ptr %i.u monotonic, align 8
  %i.v = trunc i64 %.sroa.05.0.i to i1
  %i.w = and i64 %.sroa.05.0.i, 4294967295
  %i.x = icmp ne i64 %i.w, 3
  %i.y = and i1 %i.x, %i.v
  br i1 %i.y, label %bb.g, label %.thread

bb.g:                                             ; preds = %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit
  %i.z = and i64 %.sroa.05.0.i, -3                ; 2 uses
  %i.aa = and i64 %i.a, -262144
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 262144       ; 2 uses
  %i.ad = and i64 %i.ac, 32
  %.not.i.i.i.i = icmp eq i64 %i.ad, 0
  %i.ae = and i64 %i.ac, 25
  %.not37.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not37.i.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.af = and i64 %.sroa.05.0.i, -262144
  %i.ag = inttoptr i64 %i.af to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ag, align 262144
  %i.ah = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 25
  %.not38.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not38.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.a, i64 noundef %i.t, i64 %i.z) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i, label %.thread, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.a, i64 %i.t, i64 %i.z) #11
  br label %.thread

bb.l:                                             ; preds = %bb.a
  %i.ai = icmp sgt i32 %i.f, 0
  br i1 %i.ai, label %.lr.ph.preheader.i, label %.loopexit

.lr.ph.preheader.i:                               ; preds = %bb.l
  %invariant.op.i = add i64 %i.a, 23              ; 3 uses
  %i.aj = icmp eq i64 %i.e, 1
  br i1 %i.aj, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.e, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.056.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %spec.select.i.1, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ak = shl nsw i64 %indvars.iv.i, 3
  %.reass.i = add i64 %invariant.op.i, %i.ak
  %i.al = inttoptr i64 %.reass.i to ptr
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = and i64 %i.am, 4294967295
  %i.ao = icmp ne i64 %i.an, 3
  %i.ap = zext i1 %i.ao to i32
  %spec.select.i = add nuw nsw i32 %.056.i, %i.ap
  %indvars.iv.next.i = shl i64 %indvars.iv.i, 3
  %i.aq = or disjoint i64 %indvars.iv.next.i, 8
  %.reass.i.1 = add i64 %invariant.op.i, %i.aq
  %i.ar = inttoptr i64 %.reass.i.1 to ptr
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8
  %i.at = and i64 %i.as, 4294967295
  %i.au = icmp ne i64 %i.at, 3
  %i.av = zext i1 %i.au to i32
  %spec.select.i.1 = add nuw nsw i32 %spec.select.i, %i.av ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !24

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %i.aw = and i64 %.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.aw, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.loopexit.loopexit.unr-lcssa ]
  %.056.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %spec.select.i.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod93 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod93)
  %i.ax = shl nsw i64 %indvars.iv.i.epil.init, 3
  %.reass.i.epil = add i64 %invariant.op.i, %i.ax
  %i.ay = inttoptr i64 %.reass.i.epil to ptr
  %i.az = load atomic volatile i64, ptr %i.ay monotonic, align 8
  %i.ba = and i64 %i.az, 4294967295
  %i.bb = icmp ne i64 %i.ba, 3
  %i.bc = zext i1 %i.bb to i32
  %spec.select.i.epil = add nuw nsw i32 %.056.i.epil.init, %i.bc
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.1, %.loopexit.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.lr.ph.i.epil.preheader ]
  %6 = add nuw nsw i32 %spec.select.i.lcssa, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.l
  %.05.lcssa.i = phi i32 [ 1, %bb.l ], [ %6, %.loopexit.loopexit ] ; 4 uses
  %i.bd = sdiv i32 %i.f, 4                        ; 2 uses
  %i.be = icmp slt i32 %.05.lcssa.i, %i.bd
  %i.bf = mul nsw i32 %i.bd, 3
  %7 = icmp slt i32 %i.bf, %.05.lcssa.i
  %or.cond = select i1 %i.be, i1 true, i1 %7
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit
  %i.bg = sdiv i32 %.05.lcssa.i, 2
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 2)
  %i.bh = add nsw i32 %.sroa.speculated.i, %.05.lcssa.i
  %i.bi = tail call ptr @_ZN2v88internal7Factory20CompactWeakArrayListENS0_12DirectHandleINS0_13WeakArrayListEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %1, i32 noundef %i.bh, i8 noundef zeroext %4) #11
  br label %bb.o

bb.n:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store i64 %i.a, ptr %5, align 8
  call void @_ZN2v88internal13WeakArrayList7CompactEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr poison)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.063.0 = phi ptr [ %i.bi, %bb.m ], [ %1, %bb.n ] ; 4 uses
  %i.bj = load i64, ptr %.sroa.063.0, align 8     ; 5 uses
  %i.bk = add i64 %i.bj, 15
  %i.bl = inttoptr i64 %i.bk to ptr               ; 4 uses
  %i.bm = load i64, ptr %i.bl, align 8            ; 4 uses
  %i.bn = icmp eq i32 %2, 0
  %i.bo = icmp eq ptr %3, null                    ; 2 uses
  br i1 %i.bn, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  br i1 %i.bo, label %bb.q, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i29, !prof !7

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i29: ; preds = %bb.p
  %i.bp = load i64, ptr %3, align 8
  %i.bq = or i64 %i.bp, 3
  br label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit30

bb.r:                                             ; preds = %bb.o
  br i1 %i.bo, label %bb.s, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i27, !prof !7

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i27: ; preds = %bb.r
  %i.br = load i64, ptr %3, align 8
  br label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit30

_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit30: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i29, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i27
  %.sroa.05.0.i28 = phi i64 [ %i.bq, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i29 ], [ %i.br, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i27 ] ; 5 uses
  %i.bs = shl i64 %i.bm, 3
  %sext87 = ashr i64 %i.bs, 32
  %i.bt = and i64 %sext87, -8
  %i.bu = add i64 %i.bj, 23
  %i.bv = add i64 %i.bu, %i.bt                    ; 3 uses
  %i.bw = inttoptr i64 %i.bv to ptr
  store atomic volatile i64 %.sroa.05.0.i28, ptr %i.bw monotonic, align 8
  %i.bx = trunc i64 %.sroa.05.0.i28 to i1
  %i.by = and i64 %.sroa.05.0.i28, 4294967295
  %i.bz = icmp ne i64 %i.by, 3
  %i.ca = and i1 %i.bz, %i.bx
  br i1 %i.ca, label %bb.t, label %.thread

bb.t:                                             ; preds = %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit30
  %i.cb = and i64 %.sroa.05.0.i28, -3             ; 2 uses
  %i.cc = and i64 %i.bj, -262144
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load i64, ptr %i.cd, align 262144       ; 2 uses
  %i.cf = and i64 %i.ce, 32
  %.not.i.i.i.i33 = icmp eq i64 %i.cf, 0
  %i.cg = and i64 %i.ce, 25
  %.not37.i.i.i.i34 = icmp eq i64 %i.cg, 0
  br i1 %.not37.i.i.i.i34, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ch = and i64 %.sroa.05.0.i28, -262144
  %i.ci = inttoptr i64 %i.ch to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i35 = load i64, ptr %i.ci, align 262144
  %i.cj = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i35, 25
  %.not38.i.i.i.i36 = icmp eq i64 %i.cj, 0
  br i1 %.not38.i.i.i.i36, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bj, i64 noundef %i.bv, i64 %i.cb) #11
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  br i1 %.not.i.i.i.i33, label %.thread, label %bb.x, !prof !12

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bj, i64 %i.bv, i64 %i.cb) #11
  br label %.thread

.thread:                                          ; preds = %bb.x, %bb.w, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit30, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit, %bb.j, %bb.k
  %.sink = phi i64 [ %.fr, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit ], [ %.fr, %bb.k ], [ %.fr, %bb.j ], [ %i.bm, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit30 ], [ %i.bm, %bb.w ], [ %i.bm, %bb.x ]
  %.sink90 = phi ptr [ %i.c, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit ], [ %i.c, %bb.k ], [ %i.c, %bb.j ], [ %i.bl, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit30 ], [ %i.bl, %bb.w ], [ %i.bl, %bb.x ]
  %.sroa.020.1 = phi ptr [ %1, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit ], [ %1, %bb.k ], [ %1, %bb.j ], [ %.sroa.063.0, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit30 ], [ %.sroa.063.0, %bb.w ], [ %.sroa.063.0, %bb.x ]
  %i.ck = and i64 %.sink, -4294967296
  %i.cl = add i64 %i.ck, 4294967296
  store atomic volatile i64 %i.cl, ptr %.sink90 monotonic, align 8
  ret ptr %.sroa.020.1
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef i32 @_ZNK2v88internal13WeakArrayList17CountLiveElementsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 2 uses
  %i.a = add i64 %.sroa.0.0.copyload.i, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = lshr i64 %.fr, 32                        ; 4 uses
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %invariant.op = add i64 %.sroa.0.0.copyload.i, 23 ; 3 uses
  %i.g = icmp eq i64 %i.d, 1
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.h = and i64 %.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.h, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.056.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod11 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.i = shl nsw i64 %indvars.iv.epil.init, 3
  %.reass.epil = add i64 %i.i, %invariant.op
  %i.j = inttoptr i64 %.reass.epil to ptr
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = and i64 %i.k, 4294967295
  %i.m = icmp ne i64 %i.l, 3
  %i.n = zext i1 %i.m to i32
  %spec.select.epil = add nuw nsw i32 %.056.epil.init, %i.n
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.05.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil.preheader ]
  ret i32 %.05.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.056 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %spec.select.1, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.o = shl nsw i64 %indvars.iv, 3
  %.reass = add i64 %i.o, %invariant.op
  %i.p = inttoptr i64 %.reass to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = and i64 %i.q, 4294967295
  %i.s = icmp ne i64 %i.r, 3
  %i.t = zext i1 %i.s to i32
  %spec.select = add nuw nsw i32 %.056, %i.t
  %indvars.iv.next = shl i64 %indvars.iv, 3
  %i.u = or disjoint i64 %indvars.iv.next, 8
  %.reass.1 = add i64 %i.u, %invariant.op
  %i.v = inttoptr i64 %.reass.1 to ptr
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.x = and i64 %i.w, 4294967295
  %i.y = icmp ne i64 %i.x, 3
  %i.z = zext i1 %i.y to i32
  %spec.select.1 = add nuw nsw i32 %spec.select, %i.z ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !24
}

declare ptr @_ZN2v88internal7Factory20CompactWeakArrayListENS0_12DirectHandleINS0_13WeakArrayListEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13WeakArrayList7CompactEPNS0_7IsolateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i, 15
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = lshr i64 %i.c, 32                        ; 2 uses
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.i
  %.sroa.02.0.copyload.i.pre = load i64, ptr %0, align 8
  %.pre = add i64 %.sroa.02.0.copyload.i.pre, 15
  %.pre18 = inttoptr i64 %.pre to ptr
  %i.g = sext i32 %.1 to i64
  %i.h = shl nsw i64 %i.g, 32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi19 = phi ptr [ %.pre18, %._crit_edge.loopexit ], [ %i.b, %bb.a ]
  %.0.lcssa = phi i64 [ %i.h, %._crit_edge.loopexit ], [ 0, %bb.a ]
  store atomic volatile i64 %.0.lcssa, ptr %.pre-phi19 monotonic, align 8
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.i
end_hunk_0
