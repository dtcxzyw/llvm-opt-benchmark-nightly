Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/cpp-heap?download=true
inline.NumInlined: 1865
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK2v88internal7CppHeap17last_bytes_markedEv:bb.a
  ret i64 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal7CppHeap14AdvanceMarkingENS_4base9TimeDeltaESt8optionalImEN5cppgc18EmbedderStackStateE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(672) %0, i64 %1, i64 %2, i8 %3, i32 noundef %4) local_unnamed_addr #0 align 2 !guid !241 {
bb.a:
  %5 = alloca %"class.cppgc::internal::StatsCollector::InternalScope", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 554
  %i.b = load i8, ptr %i.a, align 2, !range !142, !noundef !143
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 618 ; 2 uses
  store i8 1, ptr %i.d, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !142, !noundef !143
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %i.i, i32 0, i32 4
  call void @_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EEC2IJEEEPS1_NS1_7ScopeIdEDpT_(ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef %i.f, i32 noundef %i.j)
  %i.k = load i8, ptr %i.g, align 8, !range !142, !noundef !143
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8
  call void @_ZN5cppgc8internal10MarkerBase37NotifyConcurrentMarkingOfWorkIfNeededEN2v812TaskPriorityE(ptr noundef nonnull align 8 dereferenceable(860) %i.n, i8 noundef zeroext 2) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %i.q = icmp eq i32 %4, 1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 464
  call void @_ZN5cppgc8internal19MutatorMarkingState31FlushNotFullyConstructedObjectsEv(ptr noundef nonnull align 8 dereferenceable(384) %i.r) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = trunc nuw i8 %3 to i1
  br i1 %i.s, label %_ZN2v88internal17UnifiedHeapMarker20AdvanceMarkingOnStepENS_4base9TimeDeltaESt8optionalImEN5cppgc18EmbedderStackStateE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 976
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !143, !align !147
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef i64 @_ZNK5cppgc8internal14StatsCollector21allocated_object_sizeEv(ptr noundef nonnull align 8 dereferenceable(336) %i.y) #24
  %i.aa = call noundef i64 @_ZN4heap4base26IncrementalMarkingSchedule30GetNextIncrementalStepDurationEm(ptr noundef nonnull align 8 dereferenceable(128) %i.u, i64 noundef %i.z) #24
  br label %_ZN2v88internal17UnifiedHeapMarker20AdvanceMarkingOnStepENS_4base9TimeDeltaESt8optionalImEN5cppgc18EmbedderStackStateE.exit

_ZN2v88internal17UnifiedHeapMarker20AdvanceMarkingOnStepENS_4base9TimeDeltaESt8optionalImEN5cppgc18EmbedderStackStateE.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i = phi i64 [ %2, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = call noundef zeroext i1 @_ZN5cppgc8internal10MarkerBase24AdvanceMarkingWithLimitsEN2v84base9TimeDeltaEm(ptr noundef nonnull align 8 dereferenceable(1072) %i.p, i64 %1, i64 noundef %.sroa.0.0.i) #24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ad = zext i1 %i.ab to i8
  store i8 %i.ad, ptr %i.ac, align 8
  store i8 0, ptr %i.d, align 2
  call void @_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EE13StopTraceImplEv(ptr noundef nonnull align 8 dereferenceable(20) %5)
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = icmp sgt i32 %i.af, 5
  br i1 %i.ag, label %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal17UnifiedHeapMarker20AdvanceMarkingOnStepENS_4base9TimeDeltaESt8optionalImEN5cppgc18EmbedderStackStateE.exit
  %i.ah = call i64 @_ZN2v84base9TimeTicks3NowEv() #24
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.ai, align 8
  %i.aj = sub nsw i64 %i.ah, %.sroa.01.0.copyload.i.i ; 2 uses
  %i.ak = load ptr, ptr %5, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.am = load i32, ptr %i.ae, align 8
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.an ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = add nsw i64 %i.ap, %i.aj
  store i64 %i.aq, ptr %i.ao, align 8
  %i.ar = load ptr, ptr %5, align 8               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 320
  %i.at = load ptr, ptr %i.as, align 8
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load i32, ptr %i.ae, align 8
  call void @_ZN5cppgc8internal14StatsCollector21RecordHistogramSampleENS1_7ScopeIdEN2v84base9TimeDeltaE(ptr noundef nonnull align 8 dereferenceable(336) %i.ar, i32 noundef %i.au, i64 %i.aj) #24
  br label %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit

_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit: ; preds = %_ZN2v88internal17UnifiedHeapMarker20AdvanceMarkingOnStepENS_4base9TimeDeltaESt8optionalImEN5cppgc18EmbedderStackStateE.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit
  %.0 = phi i1 [ %i.ab, %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EEC2IJEEEPS1_NS1_7ScopeIdEDpT_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !guid !244 {
bb.a:
  %3 = alloca [2 x %"class.std::unique_ptr.1247"], align 16 ; 6 uses
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call i64 @_ZN2v84base9TimeTicks3NowEv() #24
  store i64 %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 %2, ptr %i.c, align 8
  %i.d = load atomic volatile i64, ptr @_ZZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EE14StartTraceImplEvE28trace_event_unique_atomic458 acquire, align 8 ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.20) #24, !inline_history !242 ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  store atomic volatile i64 %i.k, ptr @_ZZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EE14StartTraceImplEvE28trace_event_unique_atomic458 release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.e, %bb.a ], [ %i.j, %bb.b ] ; 2 uses
  %i.l = load atomic volatile i8, ptr %.0.i.i monotonic, align 1
  %i.m = and i8 %i.l, 5
  %.not6.i.i = icmp eq i8 %i.m, 0
  br i1 %.not6.i.i, label %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EE10StartTraceIJEEEvDpT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.c, align 8
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 176
  %i.q = load i8, ptr %i.p, align 8
  %i.r = tail call noundef ptr @_ZN5cppgc8internal14StatsCollector12GetScopeNameENS1_7ScopeIdENS0_14CollectionTypeE(i32 noundef %i.n, i8 noundef zeroext %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.s = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i8 noundef signext 66, ptr noundef nonnull %.0.i.i, ptr noundef %i.r, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, i32 noundef 0) #24, !inline_history !242 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.i.i: ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #24, !inline_history !243
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.i.i, %bb.d
  %i.ac = load ptr, ptr %3, align 16              ; 3 uses
  %.not.i.1.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.1.i.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1.i.i, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1.i.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1.i.i: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ac) #24, !inline_history !243
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1.i.i

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1.i.i: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1.i.i, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EE10StartTraceIJEEEvDpT_.exit

_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EE10StartTraceIJEEEvDpT_.exit: ; preds = %bb.c, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1.i.i
  ret void
}

declare void @_ZN5cppgc8internal10MarkerBase37NotifyConcurrentMarkingOfWorkIfNeededEN2v812TaskPriorityE(ptr noundef nonnull align 8 dereferenceable(860), i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal7CppHeap13IsMarkingDoneEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(672) %0) local_unnamed_addr #6 align 2 !guid !245 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 554
  %i.b = load i8, ptr %i.a, align 2, !range !142, !noundef !143
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.e = load i8, ptr %i.d, align 8, !range !142
  %i.f = trunc nuw i8 %i.e to i1
  %not. = xor i1 %i.c, true
  %i.g = select i1 %not., i1 true, i1 %i.f
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal7CppHeap32ShouldFinalizeIncrementalMarkingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(672) %0) local_unnamed_addr #6 align 2 !guid !246 {
bb.a:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 481
  %2 = load i8, ptr %1, align 1
  %.not = icmp eq i8 %2, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 554
  %i.b = load i8, ptr %i.a, align 2, !range !142
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.e = load i8, ptr %i.d, align 8, !range !142
  %i.f = trunc nuw i8 %i.e to i1
  %not..i = xor i1 %i.c, true
  %3 = select i1 %.not, i1 true, i1 %not..i
  %i.g = select i1 %3, i1 true, i1 %i.f
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7CppHeap29EnterProcessGlobalAtomicPauseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(672) %0) local_unnamed_addr #0 align 2 !guid !247 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 554
  %i.b = load i8, ptr %i.a, align 2, !range !142, !noundef !143
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @_ZN5cppgc8internal10MarkerBase29EnterProcessGlobalAtomicPauseEv(ptr noundef nonnull align 8 dereferenceable(860) %i.e) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN5cppgc8internal10MarkerBase29EnterProcessGlobalAtomicPauseEv(ptr noundef nonnull align 8 dereferenceable(860)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7CppHeap15EnterFinalPauseEN5cppgc18EmbedderStackStateE(ptr noundef nonnull align 8 dereferenceable(672) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !guid !250 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK2v88internal7CppHeap13IsGCForbiddenEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1581), align 1, !range !142
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond.i, label %_ZNK2v88internal7CppHeap13IsGCForbiddenEv.exit, label %_ZNK2v88internal7CppHeap13IsGCForbiddenEv.exit.thread, !prof !251

_ZNK2v88internal7CppHeap13IsGCForbiddenEv.exit:   ; preds = %bb.a, %bb.b
  %i.h = tail call noundef zeroext i1 @_ZNK5cppgc8internal8HeapBase13IsGCForbiddenEv(ptr noundef nonnull align 8 dereferenceable(672) %0) #24
  br i1 %i.h, label %_ZNK2v88internal7CppHeap13IsGCForbiddenEv.exit.thread, label %bb.c, !prof !252

_ZNK2v88internal7CppHeap13IsGCForbiddenEv.exit.thread: ; preds = %bb.b, %_ZNK2v88internal7CppHeap13IsGCForbiddenEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #23
  unreachable

bb.c:                                             ; preds = %_ZNK2v88internal7CppHeap13IsGCForbiddenEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i8 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 554
  %i.k = load i8, ptr %i.j, align 2, !range !142, !noundef !143
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %_ZNSt10unique_ptrIN2v88internal39ConservativeTracedHandlesMarkingVisitorESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 55464
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 553 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 1
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 57344
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 208
  %i.w = load ptr, ptr %i.v, align 8
  br label %_ZN2v88internal12_GLOBAL__N_121GetV8MarkingWorklistsEPNS0_7IsolateEN5cppgc8internal14CollectionTypeE.exit

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 57352
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2072
  br label %_ZN2v88internal12_GLOBAL__N_121GetV8MarkingWorklistsEPNS0_7IsolateEN5cppgc8internal14CollectionTypeE.exit

_ZN2v88internal12_GLOBAL__N_121GetV8MarkingWorklistsEPNS0_7IsolateEN5cppgc8internal14CollectionTypeE.exit: ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.w, %bb.f ], [ %i.ab, %bb.g ]
  %i.ac = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22, !noalias !253 ; 2 uses
  %i.ad = load i8, ptr %i.q, align 1, !noalias !253
  tail call void @_ZN2v88internal39ConservativeTracedHandlesMarkingVisitorC1ERNS0_4HeapERNS0_16MarkingWorklists5LocalEN5cppgc8internal14CollectionTypeE(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(2992) %i.p, ptr noundef nonnull align 8 dereferenceable(136) %.0.i, i8 noundef zeroext %i.ad) #24, !noalias !253
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 968 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 4 uses
  store ptr %i.ac, ptr %i.ae, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal39ConservativeTracedHandlesMarkingVisitorESt14default_deleteIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121GetV8MarkingWorklistsEPNS0_7IsolateEN5cppgc8internal14CollectionTypeE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal39ConservativeTracedHandlesMarkingVisitorEEclEPS2_.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #25
  br label %_ZNKSt14default_deleteIN2v88internal39ConservativeTracedHandlesMarkingVisitorEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal39ConservativeTracedHandlesMarkingVisitorEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 64) #25
  br label %_ZNSt10unique_ptrIN2v88internal39ConservativeTracedHandlesMarkingVisitorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal39ConservativeTracedHandlesMarkingVisitorESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_121GetV8MarkingWorklistsEPNS0_7IsolateEN5cppgc8internal14CollectionTypeE.exit, %_ZNKSt14default_deleteIN2v88internal39ConservativeTracedHandlesMarkingVisitorEEclEPS2_.exit.i.i.i.i.i, %bb.d
  tail call void @_ZN5cppgc8internal10MarkerBase16EnterAtomicPauseENS_18EmbedderStackStateE(ptr noundef nonnull align 8 dereferenceable(860) %i.n, i32 noundef %1) #24
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN5cppgc8internal9Compactor24CancelIfShouldNotCompactENS_4Heap11MarkingTypeENS_18EmbedderStackStateE(ptr noundef nonnull align 8 dereferenceable(48) %i.an, i8 noundef zeroext 0, i32 noundef %1) #24
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %_ZNSt10unique_ptrIN2v88internal39ConservativeTracedHandlesMarkingVisitorESt14default_deleteIS2_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal7CppHeap13IsGCForbiddenEv(ptr noundef nonnull align 8 dereferenceable(672) %0) unnamed_addr #0 align 2 !guid !254 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1581), align 1, !range !142
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call noundef zeroext i1 @_ZNK5cppgc8internal8HeapBase13IsGCForbiddenEv(ptr noundef nonnull align 8 dereferenceable(512) %0) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = phi i1 [ true, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull align 8 dereferenceable(56) ptr @_ZN2v88internal17UnifiedHeapMarker20conservative_visitorEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(1072) %0) unnamed_addr #2 align 2 !guid !255 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 920
  ret ptr %i.a
}

declare void @_ZN5cppgc8internal10MarkerBase16EnterAtomicPauseENS_18EmbedderStackStateE(ptr noundef nonnull align 8 dereferenceable(860), i32 noundef) local_unnamed_addr #3

declare void @_ZN5cppgc8internal9Compactor24CancelIfShouldNotCompactENS_4Heap11MarkingTypeENS_18EmbedderStackStateE(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal7CppHeap31FinishConcurrentMarkingIfNeededEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(672) %0) local_unnamed_addr #0 align 2 !guid !256 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 554
  %i.b = load i8, ptr %i.a, align 2, !range !142, !noundef !143
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 @_ZN5cppgc8internal10MarkerBase29JoinConcurrentMarkingIfNeededEv(ptr noundef nonnull align 8 dereferenceable(860) %i.e) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN5cppgc8internal10MarkerBase29JoinConcurrentMarkingIfNeededEv(ptr noundef nonnull align 8 dereferenceable(860)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7CppHeap25ReEnableConcurrentMarkingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(672) %0) local_unnamed_addr #0 align 2 !guid !257 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.b = load i8, ptr %i.a, align 8, !range !142, !noundef !143
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !145

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @_ZN5cppgc8internal10MarkerBase25ReEnableConcurrentMarkingEv(ptr noundef nonnull align 8 dereferenceable(860) %i.e) #24
  ret void
}
end_hunk_0
