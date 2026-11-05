Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/mark-compact?download=true
inline.NumInlined: 24171
inline.NumDeleted: 6162
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZN2v88internal20MarkCompactCollector40ReportAbortedEvacuationCandidateDueToOOMEmPNS0_12PageMetadataE:bb.a

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.b, %_ZNSt6vectorISt4pairImPN2v88internal12PageMetadataEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal20MarkCompactCollector23PinPreciseRootsIfNeededEv(ptr noundef nonnull align 8 dereferenceable(912) %0) local_unnamed_addr #0 align 2 !guid !803 {
bb.a:
  %1 = alloca [2 x %"class.std::unique_ptr.1522"], align 16 ; 6 uses
  %2 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %3 = alloca %"class.v8::internal::PrecisePagePinningVisitor", align 8 ; 7 uses
  %4 = alloca %"class.v8::internal::ClientRootVisitor", align 8 ; 5 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 47), align 1, !range !329, !noundef !330
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1864
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i64 @_ZN2v84base9TimeTicks3NowEv() #31
  %i.g = load atomic volatile i64, ptr @_ZZN2v88internal20MarkCompactCollector23PinPreciseRootsIfNeededEvE29trace_event_unique_atomic4985 acquire, align 8 ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #31 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.1) #31 ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  store atomic volatile i64 %i.n, ptr @_ZZN2v88internal20MarkCompactCollector23PinPreciseRootsIfNeededEvE29trace_event_unique_atomic4985 release, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.c ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr null, ptr %2, align 8
  %i.o = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.p = and i8 %i.o, 5
  %.not9 = icmp eq i8 %i.p, 0
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.q = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #31 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i64 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef signext 88, ptr noundef nonnull %.0, ptr noundef nonnull @.str.106, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %1, i32 noundef 0) #31, !inline_history !3
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.e
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #31, !inline_history !4
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.aa = load ptr, ptr %1, align 16              ; 3 uses
  %.not.i.1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aa) #31, !inline_history !4
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %.0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @.str.106, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.u, ptr %i.ag, align 8
  store ptr %i.ae, ptr %2, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, %bb.d
  %i.ah = load ptr, ptr %0, align 8               ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = add i64 %i.ai, -55464
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN2v88internal25PrecisePagePinningVisitorE, i64 16), ptr %3, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 55448 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !range !329, !noundef !330
  store i8 %i.ao, ptr %i.am, align 8
  call void @_ZN2v88internal4Heap29IterateRootsForPrecisePinningEPNS0_11RootVisitorE(ptr noundef nonnull align 8 dereferenceable(2992) %i.ah, ptr noundef nonnull %3) #31
  %i.ap = load i8, ptr %i.an, align 8, !range !329, !noundef !330
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN2v88internal17ClientRootVisitorINS0_11RootVisitorEEE, i64 16), ptr %4, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 64128
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.06.i = load ptr, ptr %i.au, align 8           ; 2 uses
  %.not7.i = icmp eq ptr %.06.i, null
  br i1 %.not7.i, label %"_ZN2v88internal15GlobalSafepoint21IterateClientIsolatesIZNS0_20MarkCompactCollector23PinPreciseRootsIfNeededEvE3$_0EEvT_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.av = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.08.i = phi ptr [ %.06.i, %.lr.ph.i ], [ %.0.i, %bb.h ] ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8
  call void @_ZN2v88internal7Isolate10SetCurrentEPS1_(ptr noundef nonnull %.08.i) #31
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i, i64 55464
  call void @_ZN2v88internal4Heap29IterateRootsForPrecisePinningEPNS0_11RootVisitorE(ptr noundef nonnull align 8 dereferenceable(2992) %i.ax, ptr noundef nonnull %4) #31
  call void @_ZN2v88internal7Isolate10SetCurrentEPS1_(ptr noundef %i.aw) #31
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i, i64 64144
  %.0.i = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not.i10 = icmp eq ptr %.0.i, null
  br i1 %.not.i10, label %"_ZN2v88internal15GlobalSafepoint21IterateClientIsolatesIZNS0_20MarkCompactCollector23PinPreciseRootsIfNeededEvE3$_0EEvT_.exit", label %bb.h, !llvm.loop !802

"_ZN2v88internal15GlobalSafepoint21IterateClientIsolatesIZNS0_20MarkCompactCollector23PinPreciseRootsIfNeededEvE3$_0EEvT_.exit": ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.i

bb.i:                                             ; preds = %"_ZN2v88internal15GlobalSafepoint21IterateClientIsolatesIZNS0_20MarkCompactCollector23PinPreciseRootsIfNeededEvE3$_0EEvT_.exit", %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.az = load ptr, ptr %2, align 8
  %.not.i11 = icmp eq ptr %i.az, null
  br i1 %.not.i11, label %_ZN2v88internal8GCTracer5ScopeD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = load atomic volatile i8, ptr %i.bb monotonic, align 1
  %.not1.i = icmp eq i8 %i.bc, 0
  br i1 %.not1.i, label %_ZN2v88internal8GCTracer5ScopeD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #31 ; 2 uses
  %i.be = load ptr, ptr %i.ba, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %i.bd, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.be, ptr noundef %i.bg, i64 noundef %i.bi) #31, !inline_history !335
  br label %_ZN2v88internal8GCTracer5ScopeD2Ev.exit

_ZN2v88internal8GCTracer5ScopeD2Ev.exit:          ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.bm = call i64 @_ZN2v84base9TimeTicks3NowEv() #31
  %i.bn = sub i64 %i.bm, %i.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 688 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = add nsw i64 %i.bn, %i.bp
  store i64 %i.bq, ptr %i.bo, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_ZN2v88internal8GCTracer5ScopeD2Ev.exit
  ret void
}

declare void @_ZN2v88internal4Heap29IterateRootsForPrecisePinningEPNS0_11RootVisitorE(ptr noundef nonnull align 8 dereferenceable(2992), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal20MarkCompactCollector23EvacuatePagesInParallelEv(ptr noundef nonnull align 8 dereferenceable(912) %0) local_unnamed_addr #0 align 2 !guid !839 {
bb.a:
  %1 = alloca %"class.v8::SourceLocation", align 8 ; 4 uses
  %2 = alloca %"class.std::unique_ptr.1201", align 8 ; 5 uses
  %3 = alloca [2 x %"class.std::unique_ptr.1522"], align 16 ; 6 uses
  %4 = alloca %"class.std::optional.1740", align 8 ; 6 uses
  %5 = alloca %"class.std::vector.1750", align 8  ; 13 uses
  %6 = alloca %"class.std::unique_ptr.1755", align 8 ; 8 uses
  %7 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 6 uses
  %8 = alloca %"class.std::unique_ptr.939", align 8 ; 5 uses
  %9 = alloca [2 x %"class.std::unique_ptr.1522"], align 16 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %10 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  tail call void @_ZN2v88internal20MarkCompactCollector23PinPreciseRootsIfNeededEv(ptr noundef nonnull align 8 dereferenceable(912) %0)
  %i.d = load ptr, ptr %0, align 8
  %i.e = tail call noundef zeroext i1 @_ZNK2v88internal4Heap13IsGCWithStackEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.d) #31
  br i1 %i.e, label %11, label %15

11:                                               ; preds = %bb.a
  %12 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1200), align 16, !range !329, !noundef !330
  %13 = trunc nuw i8 %12 to i1
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %11, %bb.a
  %16 = phi i1 [ false, %bb.a ], [ %14, %11 ]
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %18 = load ptr, ptr %17, align 8                ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 696
  %20 = load ptr, ptr %19, align 8                ; 2 uses
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit, %15
  %.sroa.0137.0.lcssa = phi ptr [ null, %15 ], [ %.sroa.0137.7, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit ] ; 2 uses
  %.sroa.15.0.lcssa = phi ptr [ null, %15 ], [ %.sroa.15.6, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit ] ; 2 uses
  %.sroa.31.0.lcssa = phi ptr [ null, %15 ], [ %.sroa.31.7, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit ] ; 2 uses
  %.0.lcssa = phi i64 [ 0, %15 ], [ %i.x, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.g = load i64, ptr %i.f, align 8
  %.not.i.i = icmp ult i64 %i.g, 131072
  br i1 %.not.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit.preheader, label %bb.b, !prof !334

bb.b:                                             ; preds = %._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ult i64 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  br i1 %i.j, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.k, align 8, !nonnull !330, !noundef !330 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 808
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.l, align 8 ; 2 uses
  %i.m = load i8, ptr %.sroa.0.0.copyload.i.i.i.i, align 1
  %i.n = icmp slt i8 %i.m, -1
  br i1 %i.n, label %.lr.ph.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit.preheader

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit.preheader: ; preds = %.lr.ph.i.i, %._crit_edge, %bb.b, %bb.c
  %.sroa.9.0.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i, %bb.c ], [ %i.k, %bb.b ], [ undef, %._crit_edge ], [ %i.r, %.lr.ph.i.i ]
  %.sroa.0120.0.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i.i, %bb.c ], [ @_ZN4absl18container_internal11kSooControlE, %bb.b ], [ null, %._crit_edge ], [ %i.q, %.lr.ph.i.i ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.o = phi ptr [ %i.r, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.c ]
  %i.p = phi ptr [ %i.q, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load i8, ptr %i.q, align 1
  %i.t = icmp slt i8 %i.s, -1
  br i1 %i.t, label %.lr.ph.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit.preheader, !llvm.loop !804

.lr.ph:                                           ; preds = %15, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit
  %.0202 = phi i64 [ %i.x, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit ], [ 0, %15 ]
  %.sroa.0134.0201 = phi ptr [ %i.cp, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit ], [ %18, %15 ] ; 2 uses
  %.sroa.31.0200 = phi ptr [ %.sroa.31.7, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit ], [ null, %15 ] ; 5 uses
  %.sroa.15.0199 = phi ptr [ %.sroa.15.6, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit ], [ null, %15 ] ; 4 uses
  %.sroa.0137.0198 = phi ptr [ %.sroa.0137.7, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit ], [ null, %15 ] ; 6 uses
  %i.u = load ptr, ptr %.sroa.0134.0201, align 8  ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 240
  %i.w = load atomic i64, ptr %i.v monotonic, align 8 ; 4 uses
  %i.x = add nsw i64 %i.w, %.0202                 ; 2 uses
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2673
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = and i8 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 226), align 2, !range !329, !noundef !330
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = icmp eq i8 %i.ab, 0
  %or.cond.i = and i1 %i.ag, %i.af
  br i1 %or.cond.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 228), align 4
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul nsw i64 %i.ai, 262128
  %i.ak = udiv i64 %i.aj, 100
  %i.al = icmp sgt i64 %i.w, %i.ak
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = tail call noundef zeroext i1 @_ZNK2v88internal4Heap22CanExpandOldGenerationEm(ptr noundef nonnull align 8 dereferenceable(2992) %i.ad, i64 noundef %i.w) #31
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = and i32 %i.ao, 64
  %i.aq = icmp ne i32 %i.ap, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ar = phi i1 [ true, %bb.e ], [ %i.aq, %bb.f ] ; 2 uses
  %i.as = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 244), align 4, !range !329, !noundef !330
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.h, label %_ZN2v88internal12_GLOBAL__N_114ShouldMovePageEPNS0_12PageMetadataElNS1_19MemoryReductionModeE.exit

bb.h:                                             ; preds = %bb.g
  %i.au = ptrtoint ptr %i.ad to i64
  %i.av = add i64 %i.au, -55464
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = zext i1 %i.ar to i32
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 228), align 4
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.az, 262128
  %i.bb = udiv i64 %i.ba, 100
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 312
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = lshr i32 %i.bf, 6
  %.lobit.i = and i32 %i.bg, 1
  tail call void (ptr, ptr, ...) @_ZN2v88internal12PrintIsolateEPvPKcz(ptr noundef %i.aw, ptr noundef nonnull @.str.248, ptr noundef nonnull %i.u, i32 noundef %i.ax, i64 noundef %i.w, i64 noundef %i.bb, i64 noundef %i.bd, i32 noundef %.lobit.i) #31
  br label %_ZN2v88internal12_GLOBAL__N_114ShouldMovePageEPNS0_12PageMetadataElNS1_19MemoryReductionModeE.exit

_ZN2v88internal12_GLOBAL__N_114ShouldMovePageEPNS0_12PageMetadataElNS1_19MemoryReductionModeE.exit: ; preds = %bb.g, %bb.h
  %or.cond = or i1 %16, %i.ar
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_114ShouldMovePageEPNS0_12PageMetadataElNS1_19MemoryReductionModeE.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 88 ; 4 uses
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = or i32 %i.bi, 32
  store i32 %i.bj, ptr %i.bh, align 8
  %i.bk = load ptr, ptr %i.ac, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 216
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1754), align 2, !range !329, !noundef !330
  %i.bo = zext nneg i8 %i.bn to i32
  tail call void @_ZN2v88internal8NewSpace21PromotePageToOldSpaceEPNS0_12PageMetadataENS0_8FreeModeE(ptr noundef nonnull align 8 dereferenceable(96) %i.bm, ptr noundef nonnull %i.u, i32 noundef %i.bo) #31
  %i.bp = load i32, ptr %i.bh, align 8
  %i.bq = or i32 %i.bp, 32
  store i32 %i.bq, ptr %i.bh, align 8
  %i.br = load ptr, ptr %0, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 224
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 120
  %i.bx = atomicrmw sub ptr %i.bw, i64 %i.bv seq_cst, align 8 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_114ShouldMovePageEPNS0_12PageMetadataElNS1_19MemoryReductionModeE.exit, %bb.i
  %.not.i = icmp eq ptr %.sroa.15.0199, %.sroa.31.0200
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %.sroa.15.0199, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.15.0199, i64 8
  store ptr %i.u, ptr %i.by, align 8
  br label %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit

bb.l:                                             ; preds = %bb.j
  %i.bz = ptrtoint ptr %.sroa.31.0200 to i64
  %i.ca = ptrtoint ptr %.sroa.0137.0198 to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 4 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775792
  br i1 %i.cc, label %bb.m, label %_ZNKSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #34
  unreachable

_ZNKSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.cd = ashr exact i64 %i.cb, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i.i, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.ce, i64 576460752303423487)
  %i.ch = select i1 %i.cf, i64 576460752303423487, i64 %i.cg ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ch, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ci = shl nuw nsw i64 %i.ch, 4
  %i.cj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #35 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb ; 2 uses
  store i8 0, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.u, ptr %i.cl, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0137.0198, %.sroa.31.0200
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i ], [ %i.cj, %_ZNKSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i ], [ %.sroa.0137.0198, %_ZNKSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !840
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cm, %.sroa.31.0200
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !808

_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cj, %_ZNKSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cn, %.lr.ph.i.i.i.i.i ]
  %.not.i24.i.i = icmp eq ptr %.sroa.0137.0198, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE17_M_realloc_insertIJS3_RPNS2_12PageMetadataEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit23.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0137.0198, i64 noundef %i.cb) #33
  br label %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE17_M_realloc_insertIJS3_RPNS2_12PageMetadataEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE17_M_realloc_insertIJS3_RPNS2_12PageMetadataEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit23.i.i
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.ch
  br label %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit

_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit: ; preds = %bb.k, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE17_M_realloc_insertIJS3_RPNS2_12PageMetadataEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i
  %.sroa.0137.7 = phi ptr [ %i.cj, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE17_M_realloc_insertIJS3_RPNS2_12PageMetadataEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.0137.0198, %bb.k ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE17_M_realloc_insertIJS3_RPNS2_12PageMetadataEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.15.0199, %bb.k ]
  %.sroa.31.7 = phi ptr [ %i.co, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE17_M_realloc_insertIJS3_RPNS2_12PageMetadataEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.31.0200, %bb.k ] ; 2 uses
  %.sroa.15.6 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0134.0201, i64 8 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %20
  br i1 %i.cq, label %._crit_edge, label %.lr.ph

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit.backedge, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit.preheader
  %.sroa.9.0 = phi ptr [ %.sroa.9.0.ph, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit.preheader ], [ %.sroa.9.1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit.backedge ] ; 2 uses
  %.sroa.0120.0 = phi ptr [ %.sroa.0120.0.ph, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit.preheader ], [ %.sroa.0120.0.be, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit.backedge ] ; 6 uses
  %i.cr = icmp eq ptr %.sroa.0120.0, null         ; 2 uses
  %i.cs = icmp eq ptr %.sroa.0120.0, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.cr, %i.cs
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit
  %i.ct = load i8, ptr %.sroa.0120.0, align 1
  %i.cu = icmp sgt i8 %i.ct, -1
  br i1 %i.cu, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.p, !prof !332

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.o, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit
  br i1 %i.cs, label %bb.q, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratorESG_.exit, !prof !334

bb.q:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.268, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.277, ptr noundef nonnull @.str.275) #31
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratorESG_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.cr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratorESG_.exit
  %i.cv = load ptr, ptr %0, align 8
  %i.cw = tail call noundef zeroext i1 @_ZNK2v88internal4Heap13IsGCWithStackEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.cv) #31
  %.not163 = xor i1 %i.cw, true
  %i.cx = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1200), align 16, !range !329
  %i.cy = trunc nuw i8 %i.cx to i1
  %or.cond165 = select i1 %.not163, i1 true, i1 %i.cy
  br i1 %or.cond165, label %.loopexit172, label %bb.x

bb.s:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratorESG_.exit
  %i.cz = load i8, ptr %.sroa.0120.0, align 1
  %i.da = icmp sgt i8 %i.cz, -1
  br i1 %i.da, label %bb.u, label %bb.t, !prof !332

bb.t:                                             ; preds = %bb.s
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.268, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.272) #31
  tail call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.db = load ptr, ptr %.sroa.9.0, align 8
  tail call void @_ZN2v88internal20MarkCompactCollector42ReportAbortedEvacuationCandidateDueToFlagsEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef %i.db)
  %i.dc = load i8, ptr %.sroa.0120.0, align 1
  %i.dd = icmp sgt i8 %i.dc, -1
  br i1 %i.dd, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit.i, label %bb.v, !prof !332

bb.v:                                             ; preds = %bb.u
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.268, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.283) #31
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit.i: ; preds = %bb.u
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0120.0, i64 1 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 8 ; 2 uses
  %i.dg = load i8, ptr %i.de, align 1             ; 2 uses
  %i.dh = icmp slt i8 %i.dg, -1
  br i1 %i.dh, label %.lr.ph.i.i41, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator21skip_empty_or_deletedEv.exit.i

.lr.ph.i.i41:                                     ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit.i, %.lr.ph.i.i41
  %i.di = phi ptr [ %i.dl, %.lr.ph.i.i41 ], [ %i.df, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit.i ]
  %i.dj = phi ptr [ %i.dk, %.lr.ph.i.i41 ], [ %i.de, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.dm = load i8, ptr %i.dk, align 1             ; 2 uses
  %i.dn = icmp slt i8 %i.dm, -1
  br i1 %i.dn, label %.lr.ph.i.i41, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator21skip_empty_or_deletedEv.exit.i, !llvm.loop !804

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator21skip_empty_or_deletedEv.exit.i: ; preds = %.lr.ph.i.i41, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit.i
  %.sroa.9.1 = phi ptr [ %i.df, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit.i ], [ %i.dl, %.lr.ph.i.i41 ]
  %.sroa.0120.1 = phi ptr [ %i.de, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit.i ], [ %i.dk, %.lr.ph.i.i41 ]
  %i.do = phi i8 [ %i.dg, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit.i ], [ %i.dm, %.lr.ph.i.i41 ]
  %i.dp = icmp eq i8 %i.do, -1
  br i1 %i.dp, label %bb.w, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit.backedge, !prof !334

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit.backedge: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator21skip_empty_or_deletedEv.exit.i, %bb.w
  %.sroa.0120.0.be = phi ptr [ %.sroa.0120.1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator21skip_empty_or_deletedEv.exit.i ], [ null, %bb.w ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit

bb.w:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator21skip_empty_or_deletedEv.exit.i
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal12PageMetadataEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit.backedge

bb.x:                                             ; preds = %bb.r
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.dr = load ptr, ptr %i.dq, align 8            ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  %i.du = icmp eq ptr %i.dr, %i.dt
  br i1 %i.du, label %.loopexit172, label %.lr.ph208

.lr.ph208:                                        ; preds = %bb.x, %.lr.ph208
  %.sroa.0115.0206 = phi ptr [ %i.dw, %.lr.ph208 ], [ %i.dr, %bb.x ] ; 2 uses
  %i.dv = load ptr, ptr %.sroa.0115.0206, align 8
  tail call void @_ZN2v88internal20MarkCompactCollector42ReportAbortedEvacuationCandidateDueToFlagsEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef %i.dv)
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0115.0206, i64 8 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.dt
  br i1 %i.dx, label %.loopexit172, label %.lr.ph208

.loopexit172:                                     ; preds = %.lr.ph208, %bb.x, %bb.r
  %i.dy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1202), align 2, !range !329, !noundef !330
  %i.dz = trunc nuw i8 %i.dy to i1
  %i.ea = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1204), align 4, !range !329
  %i.eb = trunc nuw i8 %i.ea to i1
  %or.cond167 = select i1 %i.dz, i1 true, i1 %i.eb
  br i1 %or.cond167, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %.loopexit172
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ef = load ptr, ptr %i.ee, align 8            ; 2 uses
  %i.eg = icmp eq ptr %i.ed, %i.ef
  br i1 %i.eg, label %.loopexit, label %.lr.ph211

.lr.ph211:                                        ; preds = %bb.y, %bb.aa
  %.sroa.0111.0209 = phi ptr [ %i.ep, %bb.aa ], [ %i.ed, %bb.y ] ; 2 uses
  %i.eh = load ptr, ptr %.sroa.0111.0209, align 8
  %i.ei = load ptr, ptr %0, align 8
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = add i64 %i.ej, -55464
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = tail call noundef ptr @_ZN2v88internal7Isolate10fuzzer_rngEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.el) #31
  %i.en = tail call noundef double @_ZN2v84base21RandomNumberGenerator10NextDoubleEv(ptr noundef nonnull align 8 dereferenceable(24) %i.em) #31
  %i.eo = fcmp olt double %i.en, 5.000000e-02
  br i1 %i.eo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph211
  tail call void @_ZN2v88internal20MarkCompactCollector42ReportAbortedEvacuationCandidateDueToFlagsEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef %i.eh)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph211
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0111.0209, i64 8 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.ef
  br i1 %i.eq, label %.loopexit, label %.lr.ph211

.loopexit:                                        ; preds = %bb.aa, %bb.y, %.loopexit172
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %i.ev = icmp eq ptr %i.es, %i.eu
  br i1 %i.ev, label %._crit_edge219, label %.lr.ph218

._crit_edge219:                                   ; preds = %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit55, %.loopexit
  %.sroa.0137.1.lcssa = phi ptr [ %.sroa.0137.0.lcssa, %.loopexit ], [ %.sroa.0137.2, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit55 ] ; 3 uses
  %.sroa.15.1.lcssa = phi ptr [ %.sroa.15.0.lcssa, %.loopexit ], [ %.sroa.15.2, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit55 ] ; 3 uses
  %.sroa.31.1.lcssa = phi ptr [ %.sroa.31.0.lcssa, %.loopexit ], [ %.sroa.31.2, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit55 ] ; 3 uses
  %.1.lcssa = phi i64 [ %.0.lcssa, %.loopexit ], [ %.2, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit55 ]
  %i.ew = load ptr, ptr %0, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 264
  %i.ey = load ptr, ptr %i.ex, align 8            ; 4 uses
  %.not = icmp eq ptr %i.ey, null
  br i1 %.not, label %bb.at, label %bb.ag

.lr.ph218:                                        ; preds = %.loopexit, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit55
  %.1216 = phi i64 [ %.2, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit55 ], [ %.0.lcssa, %.loopexit ] ; 2 uses
  %.sroa.0107.0215 = phi ptr [ %i.fz, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit55 ], [ %i.es, %.loopexit ] ; 2 uses
  %.sroa.31.1214 = phi ptr [ %.sroa.31.2, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit55 ], [ %.sroa.31.0.lcssa, %.loopexit ] ; 6 uses
  %.sroa.15.1213 = phi ptr [ %.sroa.15.2, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit55 ], [ %.sroa.15.0.lcssa, %.loopexit ] ; 5 uses
  %.sroa.0137.1212 = phi ptr [ %.sroa.0137.2, %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit55 ], [ %.sroa.0137.0.lcssa, %.loopexit ] ; 7 uses
  %i.ez = load ptr, ptr %.sroa.0107.0215, align 8 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 88
  %i.fb = load i32, ptr %i.fa, align 8
  %i.fc = and i32 %i.fb, 256
  %.not169 = icmp eq i32 %i.fc, 0
  br i1 %.not169, label %bb.ab, label %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit55

bb.ab:                                            ; preds = %.lr.ph218
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 240
  %i.fe = load atomic i64, ptr %i.fd monotonic, align 8
  %i.ff = add i64 %i.fe, %.1216                   ; 2 uses
  %.not.i42 = icmp eq ptr %.sroa.15.1213, %.sroa.31.1214
  br i1 %.not.i42, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 0, ptr %.sroa.15.1213, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.15.1213, i64 8
  store ptr %i.ez, ptr %i.fg, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.15.1213, i64 16
  br label %_ZNSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12emplace_backIJS3_RPNS2_12PageMetadataEEEERS6_DpOT_.exit55

bb.ad:                                            ; preds = %bb.ab
  %i.fi = ptrtoint ptr %.sroa.31.1214 to i64
  %i.fj = ptrtoint ptr %.sroa.0137.1212 to i64
  %i.fk = sub i64 %i.fi, %i.fj                    ; 4 uses
  %i.fl = icmp eq i64 %i.fk, 9223372036854775792
  br i1 %i.fl, label %bb.ae, label %_ZNKSt6vectorISt4pairIN2v88internal16ParallelWorkItemEPNS2_19MutablePageMetadataEESaIS6_EE12_M_check_lenEmPKc.exit.i.i43

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #34
  unreachable
end_hunk_0
