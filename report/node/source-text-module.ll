inline.NumInlined: 2605
inline.NumDeleted: 1302
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal9ZoneStackINS0_6HandleINS0_16SourceTextModuleEEEEC2EPNS0_4ZoneE:bb.a

bb.e:                                             ; preds = %_ZNSt11_Deque_baseIN2v88internal6HandleINS1_16SourceTextModuleEEENS1_22RecyclingZoneAllocatorIS4_EEE16_M_allocate_nodeEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = icmp ult ptr %i.s, %i.v
  br i1 %i.w, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIN2v88internal6HandleINS1_16SourceTextModuleEEENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZNSt11_Deque_baseIN2v88internal6HandleINS1_16SourceTextModuleEEENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i
  %.sroa.6.0 = phi ptr [ %.sroa.6.1, %_ZNSt11_Deque_baseIN2v88internal6HandleINS1_16SourceTextModuleEEENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i ], [ null, %bb.e ] ; 2 uses
  %i.x = phi ptr [ %i.ac, %_ZNSt11_Deque_baseIN2v88internal6HandleINS1_16SourceTextModuleEEENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i ], [ null, %bb.e ] ; 3 uses
  %.06.i.i.i = phi ptr [ %i.ad, %_ZNSt11_Deque_baseIN2v88internal6HandleINS1_16SourceTextModuleEEENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i ], [ %i.s, %bb.e ] ; 3 uses
  %i.y = load ptr, ptr %.06.i.i.i, align 8        ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %.not7.i.i.i.i.i.i = icmp ugt i64 %i.aa, 64
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt11_Deque_baseIN2v88internal6HandleINS1_16SourceTextModuleEEENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 64, ptr %i.ab, align 8
  store ptr %.sroa.6.0, ptr %i.y, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal6HandleINS1_16SourceTextModuleEEENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i

_ZNSt11_Deque_baseIN2v88internal6HandleINS1_16SourceTextModuleEEENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.sroa.6.1 = phi ptr [ %i.y, %bb.g ], [ %.sroa.6.0, %bb.f ]
  %i.ac = phi ptr [ %i.y, %bb.g ], [ %i.x, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.ae = icmp ult ptr %.06.i.i.i, %i.u
  br i1 %i.ae, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIN2v88internal6HandleINS1_16SourceTextModuleEEENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i, !llvm.loop !26

_ZNSt11_Deque_baseIN2v88internal6HandleINS1_16SourceTextModuleEEENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIN2v88internal6HandleINS1_16SourceTextModuleEEENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i, %bb.e
  %i.af = and i64 %.sroa.0.i.i.i.i.i.i.sroa.4.0.copyload, 2305843009213693950
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZNSt5dequeIN2v88internal6HandleINS1_16SourceTextModuleEEENS1_22RecyclingZoneAllocatorIS4_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt11_Deque_baseIN2v88internal6HandleINS1_16SourceTextModuleEEENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i.i.sroa.0.0.copyload, i64 8
  store i64 %.sroa.0.i.i.i.i.i.i.sroa.4.0.copyload, ptr %i.ah, align 8
  store ptr null, ptr %.sroa.0.i.i.i.i.i.i.sroa.0.0.copyload, align 8
  br label %_ZNSt5dequeIN2v88internal6HandleINS1_16SourceTextModuleEEENS1_22RecyclingZoneAllocatorIS4_EEED2Ev.exit

_ZNSt5dequeIN2v88internal6HandleINS1_16SourceTextModuleEEENS1_22RecyclingZoneAllocatorIS4_EEED2Ev.exit: ; preds = %_ZNSt11_Deque_baseIN2v88internal6HandleINS1_16SourceTextModuleEEENS1_22RecyclingZoneAllocatorIS4_EEE16_M_allocate_nodeEv.exit.i.i, %_ZNSt11_Deque_baseIN2v88internal6HandleINS1_16SourceTextModuleEEENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal16SourceTextModule18GetModuleNamespaceEPNS0_7IsolateENS0_12DirectHandleIS1_EEi(ptr noundef %0, ptr nofree readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 79
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #18
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i, align 8
  %i.t = tail call ptr @_ZN2v88internal6Module18GetModuleNamespaceEPNS0_7IsolateENS0_6HandleIS1_EE(ptr noundef nonnull %0, ptr nonnull %.0.i) #18
  ret ptr %i.t
}

declare ptr @_ZN2v88internal6Module18GetModuleNamespaceEPNS0_7IsolateENS0_6HandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal16SourceTextModule13GetImportMetaEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 87
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #18
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.a, %bb.b
  %.0.i11 = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.k = ptrtoint ptr %.0.i11 to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i11, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp eq i64 %i.d, %i.o
  br i1 %i.p, label %bb.c, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleINS0_5UnionIJS2_NS0_7TheHoleEEEEEEbPNS0_6HandleIT_EE.exit

bb.c:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.q = tail call ptr @_ZN2v88internal7Isolate41RunHostInitializeImportMetaObjectCallbackENS0_12DirectHandleINS0_16SourceTextModuleEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr nonnull %1) #18 ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleINS0_5UnionIJS2_NS0_7TheHoleEEEEEEbPNS0_6HandleIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %1, align 8                ; 4 uses
  %i.t = load i64, ptr %i.q, align 8              ; 5 uses
  %i.u = add i64 %i.s, 87                         ; 3 uses
  %i.v = inttoptr i64 %i.u to ptr
  store atomic volatile i64 %i.t, ptr %i.v release, align 8
  %i.w = trunc i64 %i.t to i1
  br i1 %i.w, label %bb.e, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleINS0_5UnionIJS2_NS0_7TheHoleEEEEEEbPNS0_6HandleIT_EE.exit

bb.e:                                             ; preds = %bb.d
  %i.x = and i64 %i.s, -262144
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load i64, ptr %i.y, align 262144         ; 2 uses
  %i.aa = and i64 %i.z, 32
  %.not.i.i.i = icmp eq i64 %i.aa, 0
  %i.ab = and i64 %i.z, 25
  %.not38.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not38.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ac = and i64 %i.t, -262144
  %i.ad = inttoptr i64 %i.ac to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.ad, align 262144
  %i.ae = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not39.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.s, i64 noundef %i.u, i64 %i.t) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  br i1 %.not.i.i.i, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleINS0_5UnionIJS2_NS0_7TheHoleEEEEEEbPNS0_6HandleIT_EE.exit, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.s, i64 %i.u, i64 %i.t) #18
  br label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleINS0_5UnionIJS2_NS0_7TheHoleEEEEEEbPNS0_6HandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleINS0_5UnionIJS2_NS0_7TheHoleEEEEEEbPNS0_6HandleIT_EE.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %bb.d, %bb.h, %bb.i, %bb.c
  %.sroa.024.0 = phi ptr [ null, %bb.c ], [ %.0.i11, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %i.q, %bb.d ], [ %i.q, %bb.h ], [ %i.q, %bb.i ]
  ret ptr %.sroa.024.0
}

declare ptr @_ZN2v88internal7Isolate41RunHostInitializeImportMetaObjectCallbackENS0_12DirectHandleINS0_16SourceTextModuleEEE(ptr noundef nonnull align 8 dereferenceable(64320), ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal16SourceTextModule30MaybeHandleEvaluationExceptionEPNS0_7IsolateEPNS0_15ZoneForwardListINS0_6HandleIS1_EEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.13", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.13", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.c = load i64, ptr %i.b, align 8
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, %i.c
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal7Isolate9exceptionEv.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19) #17
  unreachable

_ZN2v88internal7Isolate9exceptionEv.exit:         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 55464
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = add i64 %i.e, -55464
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 960
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ne i64 %.sroa.0.0.copyload.i.i, %i.i ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZN2v88internal7Isolate9exceptionEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.047.064 = load ptr, ptr %i.k, align 8    ; 2 uses
  %i.l = icmp eq ptr %.sroa.047.064, null
  br i1 %i.l, label %.loopexit, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.c, %bb.e
  %.sroa.047.065 = phi ptr [ %.sroa.047.0, %bb.e ], [ %.sroa.047.064, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.047.065, i64 8
  %.sroa.07.0.copyload = load ptr, ptr %i.m, align 8
  %i.n = load i64, ptr %.sroa.07.0.copyload, align 8 ; 2 uses
  %i.o = add i64 %i.n, 23
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %.mask61 = and i64 %i.q, -4294967296
  %i.r = icmp eq i64 %.mask61, 17179869184
  br i1 %i.r, label %bb.e, label %bb.d, !prof !6

bb.d:                                             ; preds = %.lr.ph67
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #17
  unreachable

bb.e:                                             ; preds = %.lr.ph67
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i64 %i.n, ptr %3, align 8
  call void @_ZN2v88internal6Module11RecordErrorEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1, i64 %.sroa.0.0.copyload.i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %.sroa.047.0 = load ptr, ptr %.sroa.047.065, align 8 ; 2 uses
  %i.s = icmp eq ptr %.sroa.047.0, null
  br i1 %i.s, label %.loopexit, label %.lr.ph67

bb.f:                                             ; preds = %_ZN2v88internal7Isolate9exceptionEv.exit
  tail call void @_ZN2v88internal6Module11RecordErrorEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 %.sroa.0.0.copyload.i.i) #18
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.037.062 = load ptr, ptr %i.t, align 8    ; 2 uses
  %i.u = icmp eq ptr %.sroa.037.062, null
  br i1 %i.u, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.copyload.i29 = load i64, ptr %0, align 8 ; 2 uses
  %i.v = add i64 %.sroa.0.0.copyload.i29, 23
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load i64, ptr %i.w, align 8
  %.mask = and i64 %i.x, -4294967296
  %i.y = icmp eq i64 %.mask, 30064771072
  br i1 %i.y, label %bb.h, label %bb.g, !prof !6

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.sroa.037.063 = phi ptr [ %.sroa.037.0, %.lr.ph ], [ %.sroa.037.062, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.037.063, i64 8
  %.sroa.02.0.copyload = load ptr, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.aa = load i64, ptr %.sroa.02.0.copyload, align 8
  store i64 %i.aa, ptr %4, align 8
  call void @_ZN2v88internal6Module11RecordErrorEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %1, i64 %.sroa.0.0.copyload.i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.sroa.037.0 = load ptr, ptr %.sroa.037.063, align 8 ; 2 uses
  %i.ab = icmp eq ptr %.sroa.037.0, null
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %._crit_edge
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #17
  unreachable

bb.h:                                             ; preds = %._crit_edge
  %i.ac = add i64 %.sroa.0.0.copyload.i29, 39
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = icmp eq i64 %i.ae, %i.ag
  br i1 %i.ah, label %.loopexit, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #17
  unreachable

.loopexit:                                        ; preds = %bb.e, %bb.c, %bb.h
  ret i1 %i.j
}

declare void @_ZN2v88internal6Module11RecordErrorEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal16SourceTextModule8EvaluateEPNS0_7IsolateENS0_6HandleIS1_EE(ptr noundef %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::Zone", align 8 ; 5 uses
  %3 = alloca %"class.v8::internal::ZoneForwardList", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.v8::TryCatch", align 8      ; 7 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.13", align 8 ; 4 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, 23
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8
  %i.f = lshr i64 %i.e, 32
  %i.g = trunc nuw i64 %i.f to i32
  switch i32 %i.g, label %bb.b [
    i32 3, label %.critedge
    i32 5, label %.critedge
    i32 6, label %.critedge
  ], !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #17
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 58832
  %i.i = load ptr, ptr %i.h, align 8
  call void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %i.i, ptr noundef nonnull @__func__._ZN2v88internal16SourceTextModule8EvaluateEPNS0_7IsolateENS0_6HandleIS1_EE) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.j = ptrtoint ptr %2 to i64
  store i64 %i.j, ptr %3, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4
  %i.l = call ptr @_ZN2v88internal7Factory12NewJSPromiseEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #18 ; 6 uses
  %i.m = load i64, ptr %1, align 8                ; 4 uses
  %i.n = load i64, ptr %i.l, align 8              ; 5 uses
  %i.o = add i64 %i.m, 47                         ; 3 uses
  %i.p = inttoptr i64 %i.o to ptr
  store atomic volatile i64 %i.n, ptr %i.p monotonic, align 8
  %i.q = trunc i64 %i.n to i1
  br i1 %i.q, label %bb.c, label %_ZN2v88internal21TorqueGeneratedModuleINS0_6ModuleENS0_10HeapObjectEE24set_top_level_capabilityENS0_6TaggedINS0_5UnionIJNS0_9JSPromiseENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit

bb.c:                                             ; preds = %.critedge
  %i.r = and i64 %i.m, -262144
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 262144         ; 2 uses
  %i.u = and i64 %i.t, 32
  %.not.i.i.i = icmp eq i64 %i.u, 0
  %i.v = and i64 %i.t, 25
  %.not38.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not38.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = and i64 %i.n, -262144
  %i.x = inttoptr i64 %i.w to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.x, align 262144
  %i.y = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not39.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.m, i64 noundef %i.o, i64 %i.n) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br i1 %.not.i.i.i, label %_ZN2v88internal21TorqueGeneratedModuleINS0_6ModuleENS0_10HeapObjectEE24set_top_level_capabilityENS0_6TaggedINS0_5UnionIJNS0_9JSPromiseENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.m, i64 %i.o, i64 %i.n) #18
  br label %_ZN2v88internal21TorqueGeneratedModuleINS0_6ModuleENS0_10HeapObjectEE24set_top_level_capabilityENS0_6TaggedINS0_5UnionIJNS0_9JSPromiseENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal21TorqueGeneratedModuleINS0_6ModuleENS0_10HeapObjectEE24set_top_level_capabilityENS0_6TaggedINS0_5UnionIJNS0_9JSPromiseENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit: ; preds = %.critedge, %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN2v88TryCatchC1EPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(41) %4, ptr noundef nonnull %0) #18
  call void @_ZN2v88TryCatch10SetVerboseEb(ptr noundef nonnull align 8 dereferenceable(41) %4, i1 noundef zeroext false) #18
  call void @_ZN2v88TryCatch17SetCaptureMessageEb(ptr noundef nonnull align 8 dereferenceable(41) %4, i1 noundef zeroext false) #18
  %i.z = call ptr @_ZN2v88internal16SourceTextModule21InnerModuleEvaluationEPNS0_7IsolateENS0_6HandleIS1_EEPNS0_15ZoneForwardListIS5_EEPj(ptr noundef nonnull %0, ptr nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %i.a)
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZN2v88internal21TorqueGeneratedModuleINS0_6ModuleENS0_10HeapObjectEE24set_top_level_capabilityENS0_6TaggedINS0_5UnionIJNS0_9JSPromiseENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ab = load i64, ptr %1, align 8
  store i64 %i.ab, ptr %5, align 8
  %i.ac = call noundef zeroext i1 @_ZN2v88internal16SourceTextModule30MaybeHandleEvaluationExceptionEPNS0_7IsolateEPNS0_15ZoneForwardListINS0_6HandleIS1_EEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br i1 %i.ac, label %bb.i, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = call noundef zeroext i1 @_ZNK2v88TryCatch9HasCaughtEv(ptr noundef nonnull align 8 dereferenceable(41) %4) #18
  br i1 %i.ad, label %bb.k, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #17
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ae = load i64, ptr %1, align 8
  %i.af = add i64 %i.ae, 39
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %bb.l, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.l:                                             ; preds = %bb.k
  %i.an = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #18
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.k, %bb.l
  %.0.i = phi ptr [ %i.an, %bb.l ], [ %i.aj, %bb.k ] ; 3 uses
  %i.ao = ptrtoint ptr %.0.i to i64
  %i.ap = add i64 %i.ao, 8
  %i.aq = inttoptr i64 %i.ap to ptr
  store ptr %i.aq, ptr %i.ai, align 8
  store i64 %i.ah, ptr %.0.i, align 8
  %i.ar = call ptr @_ZN2v88internal9JSPromise6RejectENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEEb(ptr nonnull %i.l, ptr nonnull %.0.i, i1 noundef zeroext true) #18 ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit

bb.m:                                             ; preds = %_ZN2v88internal21TorqueGeneratedModuleINS0_6ModuleENS0_10HeapObjectEE24set_top_level_capabilityENS0_6TaggedINS0_5UnionIJNS0_9JSPromiseENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit
  %i.as = load i64, ptr %1, align 8               ; 2 uses
  %i.at = add i64 %i.as, 23
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = icmp sgt i64 %i.av, 21474836479
  br i1 %i.aw, label %bb.o, label %bb.n, !prof !6

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #17
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ax = add i64 %i.as, 135
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = and i64 %i.az, 9223372019674906624
end_hunk_0
