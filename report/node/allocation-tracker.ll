inline.NumInlined: 689
inline.NumDeleted: 442
begin_hunk_0_@_ZN2v88internal17AddressToTraceMap5PrintEv:bb.a
  br i1 %i.p, label %._crit_edge, label %.lr.ph, !llvm.loop !12
}

declare void @_ZN2v88internal6PrintFEPKcz(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17AllocationTrackerC2EPNS0_14HeapObjectsMapEPNS0_14StringsStorageE(ptr noundef nonnull align 8 dereferenceable(480) initializes((0, 16)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 2, ptr %i.b, align 8
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  store i64 0, ptr %i.h, align 8
  %calloc.i.i.i = tail call dereferenceable_or_null(192) ptr @calloc(i64 1, i64 192) ; 2 uses
  store ptr %calloc.i.i.i, ptr %i.g, align 8
  %i.i = icmp eq ptr %calloc.i.i.i, null
  br i1 %i.i, label %bb.b, label %_ZNSt6vectorIPN2v88internal17AllocationTracker12FunctionInfoESaIS4_EE9push_backERKS4_.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.15) #20
  unreachable

_ZNSt6vectorIPN2v88internal17AllocationTracker12FunctionInfoESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.a
  store i32 8, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 364
  store i32 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr null, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %i.r, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i64 1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 456
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.w = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr @.str.6, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store <4 x i32> <i32 0, i32 -1, i32 -1, i32 -1>, ptr %i.z, align 8
  store ptr @.str.10, ptr %i.w, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ac = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #19 ; 3 uses
  store ptr %i.w, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.f, align 8
  store ptr %i.ad, ptr %i.aa, align 8
  store ptr %i.ad, ptr %i.ab, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17AllocationTrackerD2Ev(ptr noundef nonnull align 8 dead_on_return(480) dereferenceable(480) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @_ZNSt10_HashtableIiSt4pairIKiN2v88internal17AllocationTracker10ScriptDataEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.f) #18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmN2v88internal17AddressToTraceMap10RangeStackEESt10_Select1stIS6_ESt4lessImESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.k) #18
  br label %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEED2Ev.exit

_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEED2Ev.exit: ; preds = %._crit_edge, %bb.b
  %i.l = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN2v88internal17AllocationTracker12FunctionInfoESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #17
  br label %_ZNSt6vectorIPN2v88internal17AllocationTracker12FunctionInfoESaIS4_EED2Ev.exit

_ZNSt6vectorIPN2v88internal17AllocationTracker12FunctionInfoESaIS4_EED2Ev.exit: ; preds = %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEED2Ev.exit, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN2v88internal19AllocationTraceNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.r) #18
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.sroa.04.07 = phi ptr [ %i.u, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %i.s = load ptr, ptr %.sroa.04.07, align 8      ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 40) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 8 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.d
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17AllocationTracker15AllocationEventEmi(ptr noundef nonnull align 8 dereferenceable(480) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::JavaScriptStackFrameIterator", align 8 ; 6 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.302", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  tail call void @_ZN2v88internal4Heap20CreateFillerObjectAtEmiNS0_20ClearFreedMemoryModeESt8optionalINS0_14AllocationTypeEE(ptr noundef nonnull align 8 dereferenceable(2992) %i.c, i64 noundef %1, i32 noundef %2, i32 noundef 1, i16 0) #18
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = add i64 %i.d, -55464
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN2v88internal18StackFrameIteratorC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %i.f) #18
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %._crit_edge.thread, label %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit

_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit: ; preds = %bb.a
  call void @_ZN2v88internal28JavaScriptStackFrameIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(128) %3) #18
  %.pre = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.j = icmp eq ptr %.pre, null
  br i1 %i.j, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.l = phi ptr [ %.pre, %.lr.ph ], [ %i.ab, %bb.b ] ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call i64 %i.o(ptr noundef nonnull align 8 dereferenceable(80) %i.l) #18
  %i.q = add i64 %i.p, 31
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8 ; 3 uses
  %i.t = load ptr, ptr %0, align 8
  %i.u = add i64 %i.s, -1                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i64 %i.s, ptr %4, align 8
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.x = call noundef i32 @_ZNK2v88internal10HeapObject11SizeFromMapENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 %i.w) #18
  %i.y = call noundef i32 @_ZN2v88internal14HeapObjectsMap14FindOrAddEntryEmjNS1_17MarkEntryAccessedENS1_14IsNativeObjectE(ptr noundef nonnull align 8 dereferenceable(136) %i.t, i64 noundef %i.u, i32 noundef %i.x, i32 noundef 0, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.z = call noundef i32 @_ZN2v88internal17AllocationTracker15AddFunctionInfoENS0_6TaggedINS0_18SharedFunctionInfoEEEjPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(480) %0, i64 %i.s, i32 noundef %i.y, ptr noundef %i.f)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store i32 %i.z, ptr %i.aa, align 4
  call void @_ZN2v88internal28JavaScriptStackFrameIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(128) %3) #18
  %i.ab = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  %i.ad = icmp samesign ugt i64 %indvars.iv, 62
  %.not23 = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %.not23, label %._crit_edge, label %bb.b, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.b
  %i.ae = shl i64 %indvars.iv.next, 2
  %5 = and i64 %i.ae, 17179869180
  %i.af = add nuw nsw i64 %5, 72
  br label %.lr.ph.preheader.i

._crit_edge.thread:                               ; preds = %bb.a, %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %i.ah = load i16, ptr %i.ag, align 8
  %i.ai = call noundef i32 @_ZN2v88internal17AllocationTracker27functionInfoIndexForVMStateENS_8StateTagE(ptr noundef nonnull align 8 dereferenceable(480) %0, i16 noundef zeroext %i.ah) ; 2 uses
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %_ZNK2v84base6VectorIKjE6lengthEv.exit.i.thread, label %_ZNK2v84base6VectorIKjE6lengthEv.exit.i.thread39

_ZNK2v84base6VectorIKjE6lengthEv.exit.i.thread:   ; preds = %._crit_edge.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN2v88internal19AllocationTraceTree14AddPathFromEndENS_4base6VectorIKjEE.exit

_ZNK2v84base6VectorIKjE6lengthEv.exit.i.thread39: ; preds = %._crit_edge.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.ai, ptr %i.ak, align 8
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge, %_ZNK2v84base6VectorIKjE6lengthEv.exit.i.thread39
  %.idx.i = phi i64 [ 76, %_ZNK2v84base6VectorIKjE6lengthEv.exit.i.thread39 ], [ %i.af, %._crit_edge ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.pn10.i.idx = phi i64 [ %.pn10.i.add, %.lr.ph.i ], [ %.idx.i, %.lr.ph.preheader.i ]
  %.069.i = phi ptr [ %i.an, %.lr.ph.i ], [ %i.al, %.lr.ph.preheader.i ]
  %.pn10.i.add = add nsw i64 %.pn10.i.idx, -4     ; 3 uses
  %.0.i.ptr = getelementptr inbounds i8, ptr %0, i64 %.pn10.i.add
  %i.am = load i32, ptr %.0.i.ptr, align 4
  %i.an = call noundef ptr @_ZN2v88internal19AllocationTraceNode14FindOrAddChildEj(ptr noundef nonnull align 8 dereferenceable(48) %.069.i, i32 noundef %i.am) ; 2 uses
  %.not.i = icmp eq i64 %.pn10.i.add, 72
  br i1 %.not.i, label %_ZN2v88internal19AllocationTraceTree14AddPathFromEndENS_4base6VectorIKjEE.exit, label %.lr.ph.i, !llvm.loop !6

_ZN2v88internal19AllocationTraceTree14AddPathFromEndENS_4base6VectorIKjEE.exit: ; preds = %.lr.ph.i, %_ZNK2v84base6VectorIKjE6lengthEv.exit.i.thread
  %.06.lcssa.i = phi ptr [ %i.aj, %_ZNK2v84base6VectorIKjE6lengthEv.exit.i.thread ], [ %i.an, %.lr.ph.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.06.lcssa.i, i64 12 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = add i32 %i.ap, %2
  store i32 %i.aq, ptr %i.ao, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.lcssa.i, i64 16 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.av = getelementptr inbounds nuw i8, ptr %.06.lcssa.i, i64 20
  %i.aw = load i32, ptr %i.av, align 4
  call void @_ZN2v88internal17AddressToTraceMap8AddRangeEmij(ptr noundef nonnull align 8 dereferenceable(48) %i.au, i64 noundef %1, i32 noundef %2, i32 noundef %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

declare void @_ZN2v88internal4Heap20CreateFillerObjectAtEmiNS0_20ClearFreedMemoryModeESt8optionalINS0_14AllocationTypeEE(ptr noundef nonnull align 8 dereferenceable(2992), i64 noundef, i32 noundef, i32 noundef, i16) local_unnamed_addr #6

declare noundef i32 @_ZN2v88internal14HeapObjectsMap14FindOrAddEntryEmjNS1_17MarkEntryAccessedENS1_14IsNativeObjectE(ptr noundef nonnull align 8 dereferenceable(136), i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal17AllocationTracker15AddFunctionInfoENS0_6TaggedINS0_18SharedFunctionInfoEEEjPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(480) %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"struct.v8::internal::Script::PositionInfo", align 8 ; 6 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.523", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.523", align 8 ; 4 uses
  %7 = alloca %"class.std::unique_ptr.532", align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.302", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.302", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.b = zext i32 %2 to i64
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = xor i32 %2, -1
  %i.e = shl i32 %2, 15
  %i.f = add i32 %i.e, %i.d                       ; 2 uses
  %i.g = lshr i32 %i.f, 12
  %i.h = xor i32 %i.g, %i.f
  %i.i = mul i32 %i.h, 5                          ; 2 uses
  %i.j = lshr i32 %i.i, 4
  %i.k = xor i32 %i.j, %i.i
  %i.l = mul i32 %i.k, 2057                       ; 2 uses
  %i.m = lshr i32 %i.l, 16
  %.masked.i.i = and i32 %i.l, 1073741823
  %i.n = xor i32 %.masked.i.i, %i.m               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = add i32 %i.p, -1                         ; 2 uses
  %i.r = and i32 %i.q, %i.n
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.s ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.y = zext i32 %i.q to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.z = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.ae, %bb.c ] ; 2 uses
  %.013.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i ], [ %i.ad, %bb.c ]
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.aa, %i.c
  br i1 %i.ab, label %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE14LookupOrInsertERKS2_j.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = add nsw i64 %.013.i.i.i.i, 1
  %i.ad = and i64 %i.ac, %i.y                     ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.b, label %.loopexit.i.i.i, !llvm.loop !14

.loopexit.i.i.i:                                  ; preds = %bb.c, %bb.a
  %.lcssa.i.ph.i.i.i = phi ptr [ %i.u, %bb.a ], [ %i.ae, %bb.c ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.lcssa.i.ph.i.i.i, i64 16
  store ptr %i.c, ptr %.lcssa.i.ph.i.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.lcssa.i.ph.i.i.i, i64 8
  store ptr null, ptr %i.aj, align 8
  %i.ak = or disjoint i32 %i.n, -2147483648
  store i32 %i.ak, ptr %i.ai, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = add i32 %i.am, 1                        ; 3 uses
  store i32 %i.an, ptr %i.al, align 4
  %i.ao = lshr i32 %i.an, 2
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = load i32, ptr %i.o, align 8
  %.not.i.i.i.i = icmp ult i32 %i.ap, %i.aq
  br i1 %.not.i.i.i.i, label %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE14LookupOrInsertERKS2_j.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit.i.i.i
  tail call void @_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE6ResizeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a), !inline_history !15
  %i.ar = load i32, ptr %i.o, align 8
  %i.as = add i32 %i.ar, -1                       ; 2 uses
  %i.at = and i32 %i.as, %i.n
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.au ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i.i.i.i.i, label %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE14LookupOrInsertERKS2_j.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d
  %i.ba = zext i32 %i.as to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %i.bb = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %i.bg, %bb.f ] ; 2 uses
  %.013.i.i.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i ], [ %i.bf, %bb.f ]
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp eq ptr %i.bc, %i.c
  br i1 %i.bd, label %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE14LookupOrInsertERKS2_j.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = add nsw i64 %.013.i.i.i.i.i, 1
  %i.bf = and i64 %i.be, %i.ba                    ; 2 uses
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.bf ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %bb.e, label %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE14LookupOrInsertERKS2_j.exit, !llvm.loop !14

_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE14LookupOrInsertERKS2_j.exit: ; preds = %bb.b, %bb.e, %bb.f, %.loopexit.i.i.i, %bb.d
  %.0.i.i.i = phi ptr [ %i.bb, %bb.e ], [ %.lcssa.i.ph.i.i.i, %.loopexit.i.i.i ], [ %i.aw, %bb.d ], [ %i.bg, %bb.f ], [ %i.z, %bb.b ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.g, label %_ZNSt6vectorIPN2v88internal17AllocationTracker12FunctionInfoESaIS4_EE9push_backERKS4_.exit

bb.g:                                             ; preds = %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEE14LookupOrInsertERKS2_j.exit
  %i.bn = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19 ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  store ptr @.str.6, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 28
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store <4 x i32> <i32 0, i32 -1, i32 -1, i32 -1>, ptr %i.bq, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store i64 %1, ptr %8, align 8
  call void @_ZNK2v88internal18SharedFunctionInfo13DebugNameCStrEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.532") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  %i.bv = load ptr, ptr %7, align 8
  %i.bw = call noundef ptr @_ZN2v88internal14StringsStorage7GetCopyEPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, ptr noundef %i.bv) #18
  store ptr %i.bw, ptr %i.bn, align 8
  %i.bx = load ptr, ptr %7, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.bx) #17
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.g, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  store i32 %2, ptr %i.bo, align 8
  %i.by = add i64 %1, 39
end_hunk_0
