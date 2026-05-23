inline.NumInlined: 13178
inline.NumDeleted: 2935
begin_hunk_0_@_ZN2v88internal21JSDisposableStackBase31InitializeJSDisposableStackBaseEPNS0_7IsolateENS0_12DirectHandleIS1_EE:bb.a
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = and i64 %i.al, -8589934592
  %i.an = or disjoint i64 %i.am, 4294967296
  store atomic volatile i64 %i.an, ptr %i.ak monotonic, align 8
  %i.ao = load i64, ptr %1, align 8               ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8            ; 5 uses
  %i.ar = add i64 %i.ao, 39                       ; 3 uses
  %i.as = inttoptr i64 %i.ar to ptr
  store atomic volatile i64 %i.aq, ptr %i.as monotonic, align 8
  %i.at = trunc i64 %i.aq to i1
  br i1 %i.at, label %bb.g, label %_ZN2v88internal36TorqueGeneratedJSDisposableStackBaseINS0_21JSDisposableStackBaseENS0_8JSObjectEE9set_errorENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.g:                                             ; preds = %_ZN2v88internal36TorqueGeneratedJSDisposableStackBaseINS0_21JSDisposableStackBaseENS0_8JSObjectEE9set_stackENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit
  %i.au = and i64 %i.ao, -262144
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load i64, ptr %i.av, align 262144       ; 2 uses
  %i.ax = and i64 %i.aw, 32
  %.not.i.i.i21 = icmp eq i64 %i.ax, 0
  %i.ay = and i64 %i.aw, 25
  %.not37.i.i.i22 = icmp eq i64 %i.ay, 0
  br i1 %.not37.i.i.i22, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.az = and i64 %i.aq, -262144
  %i.ba = inttoptr i64 %i.az to ptr
  %.sroa.0.0.copyload.i.i.i.i.i23 = load i64, ptr %i.ba, align 262144
  %i.bb = and i64 %.sroa.0.0.copyload.i.i.i.i.i23, 25
  %.not38.i.i.i24 = icmp eq i64 %i.bb, 0
  br i1 %.not38.i.i.i24, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ao, i64 noundef %i.ar, i64 %i.aq) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i21, label %_ZN2v88internal36TorqueGeneratedJSDisposableStackBaseINS0_21JSDisposableStackBaseENS0_8JSObjectEE9set_errorENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.k, !prof !28

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ao, i64 %i.ar, i64 %i.aq) #27
  br label %_ZN2v88internal36TorqueGeneratedJSDisposableStackBaseINS0_21JSDisposableStackBaseENS0_8JSObjectEE9set_errorENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal36TorqueGeneratedJSDisposableStackBaseINS0_21JSDisposableStackBaseENS0_8JSObjectEE9set_errorENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal36TorqueGeneratedJSDisposableStackBaseINS0_21JSDisposableStackBaseENS0_8JSObjectEE9set_stackENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit, %bb.j, %bb.k
  %i.bc = load i64, ptr %1, align 8               ; 4 uses
  %i.bd = load i64, ptr %i.ap, align 8            ; 5 uses
  %i.be = add i64 %i.bc, 47                       ; 3 uses
  %i.bf = inttoptr i64 %i.be to ptr
  store atomic volatile i64 %i.bd, ptr %i.bf monotonic, align 8
  %i.bg = trunc i64 %i.bd to i1
  br i1 %i.bg, label %bb.l, label %_ZN2v88internal36TorqueGeneratedJSDisposableStackBaseINS0_21JSDisposableStackBaseENS0_8JSObjectEE17set_error_messageENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.l:                                             ; preds = %_ZN2v88internal36TorqueGeneratedJSDisposableStackBaseINS0_21JSDisposableStackBaseENS0_8JSObjectEE9set_errorENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.bh = and i64 %i.bc, -262144
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load i64, ptr %i.bi, align 262144       ; 2 uses
  %i.bk = and i64 %i.bj, 32
  %.not.i.i.i27 = icmp eq i64 %i.bk, 0
  %i.bl = and i64 %i.bj, 25
  %.not37.i.i.i28 = icmp eq i64 %i.bl, 0
  br i1 %.not37.i.i.i28, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bm = and i64 %i.bd, -262144
  %i.bn = inttoptr i64 %i.bm to ptr
  %.sroa.0.0.copyload.i.i.i.i.i29 = load i64, ptr %i.bn, align 262144
  %i.bo = and i64 %.sroa.0.0.copyload.i.i.i.i.i29, 25
  %.not38.i.i.i30 = icmp eq i64 %i.bo, 0
  br i1 %.not38.i.i.i30, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bc, i64 noundef %i.be, i64 %i.bd) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  br i1 %.not.i.i.i27, label %_ZN2v88internal36TorqueGeneratedJSDisposableStackBaseINS0_21JSDisposableStackBaseENS0_8JSObjectEE17set_error_messageENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.p, !prof !28

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bc, i64 %i.be, i64 %i.bd) #27
  br label %_ZN2v88internal36TorqueGeneratedJSDisposableStackBaseINS0_21JSDisposableStackBaseENS0_8JSObjectEE17set_error_messageENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal36TorqueGeneratedJSDisposableStackBaseINS0_21JSDisposableStackBaseENS0_8JSObjectEE17set_error_messageENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal36TorqueGeneratedJSDisposableStackBaseINS0_21JSDisposableStackBaseENS0_8JSObjectEE9set_errorENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.o, %bb.p
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal12PropertyCell25InvalidateAndReplaceEntryEPNS0_7IsolateENS0_12DirectHandleINS0_16GlobalDictionaryEEENS0_13InternalIndexENS0_15PropertyDetailsENS4_INS0_6ObjectEEE(ptr noundef %0, ptr readonly captures(none) %1, i64 %2, i32 %3, ptr %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.963", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = shl i64 %2, 32
  %sext.i.i.i = add i64 %i.e, 21474836480
  %i.f = ashr exact i64 %sext.i.i.i, 29           ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #27
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ %i.j, %bb.a ] ; 3 uses
  %i.o = ptrtoint ptr %.0.i to i64
  %i.p = add i64 %i.o, 8
  %i.q = inttoptr i64 %i.p to ptr
  store ptr %i.q, ptr %i.i, align 8
  store i64 %i.h, ptr %.0.i, align 8
  %i.r = add i64 %i.h, 7
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.k, align 8
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.x = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #27
  br label %_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %bb.c
  %.0.i.i = phi ptr [ %i.x, %bb.c ], [ %i.u, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ] ; 3 uses
  %i.y = ptrtoint ptr %.0.i.i to i64
  %i.z = add i64 %i.y, 8
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %i.i, align 8
  store i64 %i.t, ptr %.0.i.i, align 8
  %i.ab = tail call ptr @_ZN2v88internal7Factory15NewPropertyCellENS0_12DirectHandleINS0_4NameEEENS0_15PropertyDetailsENS2_INS0_6ObjectEEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %.0.i.i, i32 %3, ptr %4, i8 noundef zeroext 1) #27 ; 2 uses
  %i.ac = load i64, ptr %1, align 8
  %i.ad = add i64 %i.ac, -1                       ; 3 uses
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ab, align 8            ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.f ; 2 uses
  store atomic volatile i64 %i.af, ptr %i.ah monotonic, align 8
  %i.ai = trunc i64 %i.af to i1
  br i1 %i.ai, label %bb.d, label %_ZN2v88internal16GlobalDictionary10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.d:                                             ; preds = %_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.aj = or disjoint i64 %i.ad, 1                ; 2 uses
  %i.ak = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.al = and i64 %i.ad, -262144
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 262144       ; 2 uses
  %i.ao = and i64 %i.an, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ao, 0
  %i.ap = and i64 %i.an, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aq = and i64 %i.af, -262144
  %i.ar = inttoptr i64 %i.aq to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ar, align 262144
  %i.as = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.aj, i64 noundef %i.ak, i64 %i.af) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal16GlobalDictionary10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.h, !prof !28

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.aj, i64 %i.ak, i64 %i.af) #27
  br label %_ZN2v88internal16GlobalDictionary10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal16GlobalDictionary10ValueAtPutENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.at = load i64, ptr %.0.i, align 8
  store i64 %i.at, ptr %5, align 8
  call void @_ZN2v88internal12PropertyCell18ClearAndInvalidateEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret ptr %i.ab
}

declare ptr @_ZN2v88internal7Factory15NewPropertyCellENS0_12DirectHandleINS0_4NameEEENS0_15PropertyDetailsENS2_INS0_6ObjectEEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32, ptr, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 1, 3) i32 @_ZN2v88internal12PropertyCell11InitialTypeEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef readonly captures(none) %0, i64 %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %1, %i.b
  %i.d = select i1 %i.c, i32 1, i32 2
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 4) i32 @_ZN2v88internal12PropertyCell11UpdatedTypeEPNS0_7IsolateENS0_6TaggedIS1_EENS4_INS0_6ObjectEEENS0_15PropertyDetailsE(ptr noundef readnone captures(none) %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = lshr i32 %3, 5
  %5 = and i32 %4, 7
  switch i32 %5, label %bb.f [
    i32 1, label %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.thread13
    i32 2, label %bb.b
    i32 3, label %._crit_edge
    i32 0, label %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.thread
    i32 4, label %bb.e
  ]

._crit_edge:                                      ; preds = %bb.a
  %.pre = add i64 %1, 23
  %.pre15 = inttoptr i64 %.pre to ptr
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %1, 23
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %2, %i.c
  br i1 %i.d, label %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.thread13, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.pre-phi16 = phi ptr [ %.pre15, %._crit_edge ], [ %i.b, %bb.b ]
  %i.e = load i64, ptr %.pre-phi16, align 8       ; 3 uses
  %i.f = and i64 %i.e, 1
  %i.g = icmp eq i64 %i.f, 0
  %i.h = and i64 %2, 1
  %i.i = icmp eq i64 %i.h, 0
  %or.cond.i = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond.i, label %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.thread13, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c
  %i.j = trunc i64 %i.e to i1
  %i.k = trunc i64 %2 to i1
  %or.cond48.i = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond48.i, label %bb.d, label %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.thread

bb.d:                                             ; preds = %.critedge.i
  %i.l = add nsw i64 %2, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8 ; 2 uses
  %i.o = add nsw i64 %i.e, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = icmp eq i64 %i.q, %i.n
  br i1 %i.r, label %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit, label %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.thread

_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit: ; preds = %bb.d
  %i.s = add i64 %i.n, 15
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i32, ptr %i.t acquire, align 4
  %i.v = and i32 %i.u, 33554432
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.thread13, label %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.thread

_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.thread: ; preds = %bb.d, %.critedge.i, %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit, %bb.a
  br label %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.thread13

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #28
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #28
  unreachable

_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.thread13: ; preds = %bb.c, %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit, %bb.b, %bb.a, %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.thread
  %.0 = phi i32 [ 0, %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.thread ], [ 2, %bb.a ], [ 2, %bb.b ], [ 3, %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit ], [ 3, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal12PropertyCell21PrepareForAndSetValueEPNS0_7IsolateENS0_12DirectHandleINS0_16GlobalDictionaryEEENS0_13InternalIndexENS4_INS0_6ObjectEEENS0_15PropertyDetailsE(ptr noundef %0, ptr readonly captures(none) %1, i64 %2, ptr %3, i32 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1258", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = shl i64 %2, 32
  %sext.i.i.i = add i64 %i.e, 21474836480
  %i.f = ashr exact i64 %sext.i.i.i, 29
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8 ; 6 uses
  %i.i = add i64 %i.h, 23                         ; 3 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 5 uses
  %i.l = trunc i64 %i.k to i1                     ; 2 uses
  br i1 %i.l, label %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.m = add nsw i64 %i.k, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 272
  br i1 %i.s, label %bb.b, label %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit.thread, !prof !377

bb.b:                                             ; preds = %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.390) #28
  unreachable

_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.a, %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit
  %i.t = add i64 %i.h, 15
  %i.u = inttoptr i64 %i.t to ptr                 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = lshr i64 %i.v, 32
  %i.x = trunc nuw i64 %i.w to i32                ; 4 uses
  %i.y = and i32 %i.x, 1
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = trunc i32 %4 to i1
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  %i.ac = and i32 %i.x, 2147483392
  %i.ad = and i32 %4, -2147483617
  %i.ae = load i64, ptr %3, align 8               ; 4 uses
  %6 = lshr i32 %i.x, 5
  %7 = and i32 %6, 7                              ; 2 uses
  switch i32 %7, label %bb.f [
    i32 1, label %_ZN2v88internal12PropertyCell11UpdatedTypeEPNS0_7IsolateENS0_6TaggedIS1_EENS4_INS0_6ObjectEEENS0_15PropertyDetailsE.exit
    i32 2, label %bb.c
    i32 3, label %._crit_edge.i
    i32 0, label %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.thread.i
    i32 4, label %bb.e
  ]

bb.c:                                             ; preds = %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.af = icmp eq i64 %i.ae, %i.k
  br i1 %i.af, label %_ZN2v88internal12PropertyCell11UpdatedTypeEPNS0_7IsolateENS0_6TaggedIS1_EENS4_INS0_6ObjectEEENS0_15PropertyDetailsE.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.c
  %i.ag = and i64 %i.k, 1
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = and i64 %i.ae, 1
  %i.aj = icmp eq i64 %i.ai, 0
  %or.cond.i.i = select i1 %i.ah, i1 %i.aj, i1 false
  br i1 %or.cond.i.i, label %_ZN2v88internal12PropertyCell11UpdatedTypeEPNS0_7IsolateENS0_6TaggedIS1_EENS4_INS0_6ObjectEEENS0_15PropertyDetailsE.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %._crit_edge.i
  %i.ak = trunc i64 %i.ae to i1
  %or.cond48.i.i = select i1 %i.l, i1 %i.ak, i1 false
  br i1 %or.cond48.i.i, label %bb.d, label %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.thread.i

bb.d:                                             ; preds = %.critedge.i.i
  %i.al = add nsw i64 %i.ae, -1
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load atomic volatile i64, ptr %i.am monotonic, align 8 ; 2 uses
  %i.ao = add nsw i64 %i.k, -1
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8
  %i.ar = icmp eq i64 %i.aq, %i.an
  br i1 %i.ar, label %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.i, label %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.thread.i

_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.i: ; preds = %bb.d
  %i.as = add i64 %i.an, 15
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load atomic volatile i32, ptr %i.at acquire, align 4
  %i.av = and i32 %i.au, 33554432
  %.not.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal12PropertyCell11UpdatedTypeEPNS0_7IsolateENS0_6TaggedIS1_EENS4_INS0_6ObjectEEENS0_15PropertyDetailsE.exit, label %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.thread.i

_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.i, %bb.d, %.critedge.i.i, %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit.thread
  br label %_ZN2v88internal12PropertyCell11UpdatedTypeEPNS0_7IsolateENS0_6TaggedIS1_EENS4_INS0_6ObjectEEENS0_15PropertyDetailsE.exit

bb.e:                                             ; preds = %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #28
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #28
  unreachable

_ZN2v88internal12PropertyCell11UpdatedTypeEPNS0_7IsolateENS0_6TaggedIS1_EENS4_INS0_6ObjectEEENS0_15PropertyDetailsE.exit: ; preds = %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.c, %._crit_edge.i, %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.i, %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.thread.i
  %.0.i25 = phi i32 [ 0, %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.thread.i ], [ 2, %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ 2, %bb.c ], [ 3, %_ZN2v88internalL19RemainsConstantTypeENS0_6TaggedINS0_12PropertyCellEEENS1_INS0_6ObjectEEE.exit.i ], [ 3, %._crit_edge.i ] ; 2 uses
  %i.aw = shl nuw nsw i32 %.0.i25, 5
  %i.ax = or disjoint i32 %i.aw, %i.ac
  %i.ay = or disjoint i32 %i.ax, %i.ad            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp eq ptr %i.ba, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal12PropertyCell11UpdatedTypeEPNS0_7IsolateENS0_6TaggedIS1_EENS4_INS0_6ObjectEEENS0_15PropertyDetailsE.exit
  %i.be = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #27
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %_ZN2v88internal12PropertyCell11UpdatedTypeEPNS0_7IsolateENS0_6TaggedIS1_EENS4_INS0_6ObjectEEENS0_15PropertyDetailsE.exit, %bb.g
  %.0.i = phi ptr [ %i.be, %bb.g ], [ %i.ba, %_ZN2v88internal12PropertyCell11UpdatedTypeEPNS0_7IsolateENS0_6TaggedIS1_EENS4_INS0_6ObjectEEENS0_15PropertyDetailsE.exit ] ; 5 uses
  %i.bf = ptrtoint ptr %.0.i to i64
  %i.bg = add i64 %i.bf, 8
  %i.bh = inttoptr i64 %i.bg to ptr
  store ptr %i.bh, ptr %i.az, align 8
  store i64 %i.h, ptr %.0.i, align 8
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.bi = tail call ptr @_ZN2v88internal12PropertyCell25InvalidateAndReplaceEntryEPNS0_7IsolateENS0_12DirectHandleINS0_16GlobalDictionaryEEENS0_13InternalIndexENS0_15PropertyDetailsENS4_INS0_6ObjectEEE(ptr noundef nonnull %0, ptr nonnull %1, i64 %2, i32 %i.ay, ptr nonnull %3)
  br label %bb.q

bb.i:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.bj = shl i32 %i.ay, 1
  %i.bk = ashr exact i32 %i.bj, 1
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 32                   ; 2 uses
  store atomic volatile i64 %i.bm, ptr %i.u release, align 8
  %i.bn = load i64, ptr %3, align 8               ; 5 uses
  store atomic volatile i64 %i.bn, ptr %i.j release, align 8
  %i.bo = trunc i64 %i.bn to i1
  br i1 %i.bo, label %bb.j, label %_ZN2v88internal12PropertyCell10TransitionENS0_15PropertyDetailsENS0_12DirectHandleINS0_6ObjectEEE.exit

bb.j:                                             ; preds = %bb.i
  %i.bp = and i64 %i.h, -262144
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load i64, ptr %i.bq, align 262144       ; 2 uses
  %i.bs = and i64 %i.br, 32
  %.not.i.i.i6.i = icmp eq i64 %i.bs, 0
  %i.bt = and i64 %i.br, 25
  %.not37.i.i.i7.i = icmp eq i64 %i.bt, 0
  br i1 %.not37.i.i.i7.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bu = and i64 %i.bn, -262144
  %i.bv = inttoptr i64 %i.bu to ptr
  %.sroa.0.0.copyload.i.i.i.i.i8.i = load i64, ptr %i.bv, align 262144
  %i.bw = and i64 %.sroa.0.0.copyload.i.i.i.i.i8.i, 25
  %.not38.i.i.i9.i = icmp eq i64 %i.bw, 0
  br i1 %.not38.i.i.i9.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.h, i64 noundef %i.i, i64 %i.bn) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  br i1 %.not.i.i.i6.i, label %_ZN2v88internal12PropertyCell10TransitionENS0_15PropertyDetailsENS0_12DirectHandleINS0_6ObjectEEE.exit, label %bb.n, !prof !28

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.h, i64 %i.i, i64 %i.bn) #27
  br label %_ZN2v88internal12PropertyCell10TransitionENS0_15PropertyDetailsENS0_12DirectHandleINS0_6ObjectEEE.exit

_ZN2v88internal12PropertyCell10TransitionENS0_15PropertyDetailsENS0_12DirectHandleINS0_6ObjectEEE.exit: ; preds = %bb.i, %bb.m, %bb.n
  store atomic volatile i64 %i.bm, ptr %i.u release, align 8
  %.not = icmp eq i32 %7, %.0.i25
  br i1 %.not, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN2v88internal12PropertyCell10TransitionENS0_15PropertyDetailsENS0_12DirectHandleINS0_6ObjectEEE.exit
  %i.bx = and i32 %i.x, 4
  %i.by = icmp eq i32 %i.bx, 0
  %i.bz = and i32 %4, 4
  %i.ca = icmp ne i32 %i.bz, 0
  %or.cond = select i1 %i.by, i1 %i.ca, i1 false
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %_ZN2v88internal12PropertyCell10TransitionENS0_15PropertyDetailsENS0_12DirectHandleINS0_6ObjectEEE.exit
  %i.cb = load i64, ptr %.0.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.cc = add i64 %i.cb, 31
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load i64, ptr %i.cd, align 8
  store i64 %i.ce, ptr %5, align 8
  call void @_ZN2v88internal13DependentCode26DeoptimizeDependencyGroupsEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0, i32 4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.h
  %.sroa.053.0 = phi ptr [ %i.bi, %bb.h ], [ %.0.i, %bb.o ], [ %.0.i, %bb.p ]
  ret ptr %.sroa.053.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12PropertyCell19InvalidateProtectorEPNS0_7IsolateE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1258", align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 23
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store atomic volatile i64 0, ptr %i.b release, align 8
  %.sroa.02.0.copyload.i = load i64, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.d = add i64 %.sroa.02.0.copyload.i, 31
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8
  store i64 %i.f, ptr %2, align 8
  call void @_ZN2v88internal13DependentCode26DeoptimizeDependencyGroupsEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %1, i32 4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal12PropertyCell21CheckDataIsCompatibleENS0_15PropertyDetailsENS0_6TaggedINS0_6ObjectEEE(i32 %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = lshr i32 %0, 5
  %i.b = and i32 %i.a, 7                          ; 2 uses
  %.not = icmp eq i32 %i.b, 4
  br i1 %.not, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.391) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 10624
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %1, %i.g
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %i.b, 2
  br i1 %i.i, label %bb.h, label %bb.e, !prof !28

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.392) #28
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.j = trunc i64 %1 to i1
  br i1 %i.j, label %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit, label %._ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit_crit_edge

._ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit_crit_edge: ; preds = %bb.f
  %i.k = trunc i32 %0 to i1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !5

_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.f
  %i.l = add nsw i64 %1, -1
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = add i64 %i.n, 11
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i16, ptr %i.p monotonic, align 2
  %i.r = icmp eq i16 %i.q, 203
  br i1 %i.r, label %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit._ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit_crit_edge, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit._ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit_crit_edge: ; preds = %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit
  %i.s = trunc i32 %0 to i1
  br i1 %i.s, label %bb.h, label %bb.g, !prof !28

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit
  %i.t = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = icmp eq i16 %i.w, 140
  %i.y = trunc i32 %0 to i1
  %i.z = xor i1 %i.x, %i.y
  br i1 %i.z, label %bb.g, label %bb.h, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit._ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit_crit_edge, %._ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit_crit_edge, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.393) #28
  unreachable

bb.h:                                             ; preds = %_ZN2v88internal14IsAccessorInfoENS0_6TaggedINS0_6ObjectEEE.exit._ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit_crit_edge, %._ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit_crit_edge, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit, %bb.d
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 -2147483648, 2147483585) i32 @_ZNK2v88internal17JSGeneratorObject11code_offsetEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 47
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = lshr i64 %i.c, 32
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = add nsw i32 %i.e, -63
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK2v88internal17JSGeneratorObject15source_positionEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.711", align 8 ; 5 uses
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.843", align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 2 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 63
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp sgt i64 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.394) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.f = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.g = add i64 %.sroa.0.0.copyload.i.i, 23
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8
  %i.j = add i64 %i.i, 31
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  store i64 %i.l, ptr %1, align 8
  %i.m = call { i64, i8 } @_ZNK2v88internal18SharedFunctionInfo15TryGetDebugInfoEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.f) #27 ; 2 uses
  %i.n = extractvalue { i64, i8 } %i.m, 0         ; 2 uses
  %i.o = extractvalue { i64, i8 } %i.m, 1
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit.i, label %.critedge.i

_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit.i: ; preds = %bb.c
  %i.q = add i64 %i.n, 55
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i64, ptr %i.r acquire, align 8
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit7.i, label %.critedge.i

_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit7.i: ; preds = %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit.i
  %i.u = add i64 %i.n, 47
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i64, ptr %i.v acquire, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit

.critedge.i:                                      ; preds = %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit.i, %bb.c
  %.sroa.0.0.copyload.i.i.i8.i = load i64, ptr %1, align 8
  %i.x = add i64 %.sroa.0.0.copyload.i.i.i8.i, 7
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i64, ptr %i.y acquire, align 8 ; 6 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i.i

_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i: ; preds = %.critedge.i
  %i.ab = add nsw i64 %i.z, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8
  %i.ae = add i64 %i.ad, 11
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i16, ptr %i.af monotonic, align 2
  %i.ah = icmp eq i16 %i.ag, 185
  br i1 %i.ah, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i.i, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i.i

_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i.i: ; preds = %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i
end_hunk_0
