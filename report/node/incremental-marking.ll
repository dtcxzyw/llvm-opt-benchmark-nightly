inline.NumInlined: 1013
inline.NumDeleted: 555
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2v88internal18IncrementalMarking4StepENS_4base9TimeDeltaEmNS0_10StepOriginE:bb.a
  %i.ef = sub i64 %2, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = sub nsw i64 %.sroa.09.0.copyload, %i.dv
  %i.ej = call { i64, i64 } @_ZN2v88internal20MarkCompactCollector22ProcessMarkingWorklistILNS1_29MarkingWorklistProcessingModeE0EEESt4pairImmENS_4base9TimeDeltaEm(ptr noundef nonnull align 8 dereferenceable(912) %i.eh, i64 %i.ei, i64 noundef %i.ef) #17
  %i.ek = extractvalue { i64, i64 } %i.ej, 0      ; 2 uses
  %i.el = call i64 @_ZN2v84base9TimeTicks3NowEv() #17
  %i.em = sub nsw i64 %i.el, %i.eb
  store i64 %i.em, ptr %12, align 8
  %i.en = load ptr, ptr %0, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 1864
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #17
  call void @_ZN2v88internal8GCTracer25AddIncrementalMarkingStepEdm(ptr noundef nonnull align 8 dereferenceable(6440) %i.ep, double noundef %i.eq, i64 noundef %i.ek) #17
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s
  %.085 = phi i64 [ %i.ek, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ]
  %i.er = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1112), align 8, !range !5, !noundef !6
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %bb.v
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eu = load ptr, ptr %i.et, align 8
  call void @_ZN2v88internal16MarkingWorklists5Local9ShareWorkEv(ptr noundef nonnull align 8 dereferenceable(136) %i.eu) #17
  %i.ev = load ptr, ptr %0, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 1928
  %i.ex = load ptr, ptr %i.ew, align 8
  call void @_ZN2v88internal17ConcurrentMarking21RescheduleJobIfNeededENS0_16GarbageCollectorENS_12TaskPriorityE(ptr noundef nonnull align 8 dereferenceable(112) %i.ex, i32 noundef 1, i8 noundef zeroext 1) #17
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ey = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1134), align 2, !range !5, !noundef !6
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.y, label %_ZNSt14_Optional_baseIN2v88internal14SafepointScopeELb0ELb0EED2Ev.exit, !prof !7

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.fa = sub nsw i64 %.sroa.09.0.copyload, %i.dv
  store i64 %i.fa, ptr %13, align 8
  %i.fb = call i64 @llvm.usub.sat.i64(i64 %2, i64 %i.dw)
  %i.fc = load ptr, ptr %0, align 8
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = add i64 %i.fd, -55464
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = icmp eq i32 %3, 0
  %.str.226..str.42.i = select i1 %i.fg, ptr @.str.226, ptr @.str.42
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.fh = call i64 @_ZN2v84base9TimeTicks3NowEv() #17
  %i.fi = sub nsw i64 %i.fh, %i.dj
  store i64 %i.fi, ptr %14, align 8
  %i.fj = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #17
  %i.fk = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #17
  %i.fl = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #17
  %i.fm = load ptr, ptr %0, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1864
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = call noundef double @_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv(ptr noundef nonnull align 8 dereferenceable(6440) %i.fo) #17
  %i.fq = fmul double %i.fp, 1.000000e+03
  %i.fr = fmul double %i.fq, f0x3EB0000000000000
  %i.fs = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #17
  %i.ft = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void (ptr, ptr, ...) @_ZN2v88internal7Isolate18PrintWithTimestampEPKcz(ptr noundef nonnull align 8 dereferenceable(64320) %i.ff, ptr noundef nonnull @.str.29, ptr noundef nonnull %.str.226..str.42.i, double noundef %i.fj, i64 noundef %.085, i64 noundef %i.fb, double noundef %i.fk, double noundef %i.fl, double noundef %i.fr, i64 noundef %i.dw, i64 noundef %2, double noundef %i.fs, double noundef %i.ft) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %_ZNSt14_Optional_baseIN2v88internal14SafepointScopeELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN2v88internal14SafepointScopeELb0ELb0EED2Ev.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.fu = load ptr, ptr %10, align 8
  %.not.i45 = icmp eq ptr %i.fu, null
  br i1 %.not.i45, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %_ZNSt14_Optional_baseIN2v88internal14SafepointScopeELb0ELb0EED2Ev.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = load atomic volatile i8, ptr %i.fw monotonic, align 1
  %.not1.i = icmp eq i8 %i.fx, 0
  br i1 %.not1.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fy = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #17 ; 2 uses
  %i.fz = load ptr, ptr %i.fv, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.gd = load i64, ptr %i.gc, align 8
  %i.ge = load ptr, ptr %i.fy, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(8) %i.fy, ptr noundef %i.fz, ptr noundef %i.gb, i64 noundef %i.gd) #17, !inline_history !19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %_ZNSt14_Optional_baseIN2v88internal14SafepointScopeELb0ELb0EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.gh = call i64 @_ZN2v84base9TimeTicks3NowEv() #17
  %i.gi = sub nsw i64 %i.gh, %i.bw                ; 4 uses
  store i64 %i.gi, ptr %6, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bv, i64 3504 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bv, i64 3520 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8
  %i.gm = add nsw i32 %i.gl, 1
  store i32 %i.gm, ptr %i.gk, align 8
  %i.gn = load i64, ptr %i.gj, align 8
  %i.go = add nsw i64 %i.gn, %i.gi
  store i64 %i.go, ptr %i.gj, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bv, i64 3512 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8
  %i.gr = icmp sgt i64 %i.gi, %i.gq
  br i1 %i.gr, label %bb.ac, label %_ZN2v88internal8GCTracer5ScopeD2Ev.exit

bb.ac:                                            ; preds = %bb.ab
  store i64 %i.gi, ptr %i.gp, align 8
  br label %_ZN2v88internal8GCTracer5ScopeD2Ev.exit

_ZN2v88internal8GCTracer5ScopeD2Ev.exit:          ; preds = %bb.ab, %bb.ac
  %i.gs = load ptr, ptr %i.bv, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = call noundef ptr @_ZN2v88internal7Isolate23GetCurrentLongTaskStatsEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.gu) #17
  %i.gw = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = add nsw i64 %i.gy, %i.gw
  store i64 %i.gz, ptr %i.gx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ha = load ptr, ptr %9, align 8
  %.not.i47 = icmp eq ptr %i.ha, null
  br i1 %.not.i47, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit49, label %bb.ad

bb.ad:                                            ; preds = %_ZN2v88internal8GCTracer5ScopeD2Ev.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = load atomic volatile i8, ptr %i.hc monotonic, align 1
  %.not1.i48 = icmp eq i8 %i.hd, 0
  br i1 %.not1.i48, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit49, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.he = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #17 ; 2 uses
  %i.hf = load ptr, ptr %i.hb, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.hj = load i64, ptr %i.hi, align 8
  %i.hk = load ptr, ptr %i.he, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 40
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef %i.hf, ptr noundef %i.hh, i64 noundef %i.hj) #17, !inline_history !19
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit49

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit49: ; preds = %_ZN2v88internal8GCTracer5ScopeD2Ev.exit, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.hn = load ptr, ptr %i.u, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hp = load atomic ptr, ptr %i.ho seq_cst, align 8
  %.not.i50 = icmp eq ptr %i.hp, null
  br i1 %.not.i50, label %_ZN2v88internal25NestedTimedHistogramScope4StopEv.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit49
  call void @_ZN2v88internal25NestedTimedHistogramScope12StopInternalEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
  br label %_ZN2v88internal25NestedTimedHistogramScope4StopEv.exit.i

_ZN2v88internal25NestedTimedHistogramScope4StopEv.exit.i: ; preds = %bb.af, %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit49
  %i.hq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1836), align 4, !range !5, !noundef !6
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.ag, label %_ZN2v88internal25NestedTimedHistogramScopeD2Ev.exit, !prof !7

bb.ag:                                            ; preds = %_ZN2v88internal25NestedTimedHistogramScope4StopEv.exit.i
  %i.hs = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8624
  %i.hx = load ptr, ptr %i.hw, align 8
  call preserve_mostcc void @_ZN2v88internal12V8FileLogger23CallEventLoggerInternalEPNS0_7IsolateEPKcNS_14LogEventStatusEb(ptr noundef %i.hx, ptr noundef %i.ht, i32 noundef 1, i1 noundef zeroext true)
  br label %_ZN2v88internal25NestedTimedHistogramScopeD2Ev.exit

_ZN2v88internal25NestedTimedHistogramScopeD2Ev.exit: ; preds = %_ZN2v88internal25NestedTimedHistogramScope4StopEv.exit.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret void
}

declare void @_ZN2v88internal4Heap36FinalizeIncrementalMarkingAtomicallyENS0_23GarbageCollectionReasonE(ptr noundef nonnull align 8 dereferenceable(2992), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18IncrementalMarking29AdvanceAndFinalizeIfNecessaryEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %_ZNK2v88internal18IncrementalMarking22IsMajorMarkingCompleteEv.exit.thread

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal18IncrementalMarking19AdvanceOnAllocationEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i8, ptr %i.d, align 8, !range !5, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  %1 = load i32, ptr %i.a, align 8
  %2 = icmp eq i32 %1, 2
  %or.cond = select i1 %i.f, i1 %2, i1 false
  br i1 %or.cond, label %bb.c, label %_ZNK2v88internal18IncrementalMarking22IsMajorMarkingCompleteEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2040
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp ne ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1880
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 @_ZN2v88internal16MarkingWorklists5Local7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(136) %i.n) #17 ; 2 uses
  %brmerge.not.i.i = select i1 %i.o, i1 %i.j, i1 false
  br i1 %brmerge.not.i.i, label %bb.d, label %_ZNK2v88internal18IncrementalMarking22IsMajorMarkingCompleteEv.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr %i.i, i64 -512
  %i.q = tail call noundef zeroext i1 @_ZNK2v88internal7CppHeap32ShouldFinalizeIncrementalMarkingEv(ptr noundef nonnull align 8 dereferenceable(672) %i.p) #17
  br i1 %i.q, label %bb.e, label %_ZNK2v88internal18IncrementalMarking22IsMajorMarkingCompleteEv.exit.thread

_ZNK2v88internal18IncrementalMarking22IsMajorMarkingCompleteEv.exit: ; preds = %bb.c
  br i1 %i.o, label %bb.e, label %_ZNK2v88internal18IncrementalMarking22IsMajorMarkingCompleteEv.exit.thread

bb.e:                                             ; preds = %bb.d, %_ZNK2v88internal18IncrementalMarking22IsMajorMarkingCompleteEv.exit
  %i.r = load ptr, ptr %0, align 8
  tail call void @_ZN2v88internal4Heap36FinalizeIncrementalMarkingAtomicallyENS0_23GarbageCollectionReasonE(ptr noundef nonnull align 8 dereferenceable(2992) %i.r, i32 noundef 8) #17
  br label %_ZNK2v88internal18IncrementalMarking22IsMajorMarkingCompleteEv.exit.thread

_ZNK2v88internal18IncrementalMarking22IsMajorMarkingCompleteEv.exit.thread: ; preds = %bb.d, %bb.a, %bb.e, %_ZNK2v88internal18IncrementalMarking22IsMajorMarkingCompleteEv.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18IncrementalMarking17AdvanceForTestingENS_4base9TimeDeltaEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0, i64 %1, i64 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN2v88internal18IncrementalMarking4StepENS_4base9TimeDeltaEmNS0_10StepOriginE(ptr noundef nonnull align 8 dereferenceable(248) %0, i64 %1, i64 noundef %2, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal18IncrementalMarking14ShouldFinalizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2040
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ne ptr %i.c, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1880
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 @_ZN2v88internal16MarkingWorklists5Local7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(136) %i.h) #17 ; 2 uses
  %brmerge.not = select i1 %i.i, i1 %i.d, i1 false
  br i1 %brmerge.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %i.c, i64 -512
  %i.k = tail call noundef zeroext i1 @_ZNK2v88internal7CppHeap32ShouldFinalizeIncrementalMarkingEv(ptr noundef nonnull align 8 dereferenceable(672) %i.j) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = phi i1 [ %i.i, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %i.l
}

declare noundef zeroext i1 @_ZN2v88internal16MarkingWorklists5Local7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK2v88internal7CppHeap32ShouldFinalizeIncrementalMarkingEv(ptr noundef nonnull align 8 dereferenceable(672)) local_unnamed_addr #3

declare noundef i64 @_ZN2v88internal17ConcurrentMarking16TotalMarkedBytesEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #3

declare void @_ZN4heap4base26IncrementalMarkingSchedule26AddConcurrentlyMarkedBytesEm(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef) local_unnamed_addr #3

declare void @_ZN2v88internal16MarkingWorklists5Local11MergeOnHoldEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #3

declare void @_ZN2v88internal20MarkCompactCollector35MaybeEnableBackgroundThreadsInCycleENS1_10CallOriginE(ptr noundef nonnull align 8 dereferenceable(912), i32 noundef) local_unnamed_addr #3

declare void @_ZN2v88internal4Heap35PublishMainThreadPendingAllocationsEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #3

declare { i64, i64 } @_ZN2v88internal20MarkCompactCollector22ProcessMarkingWorklistILNS1_29MarkingWorklistProcessingModeE0EEESt4pairImmENS_4base9TimeDeltaEm(ptr noundef nonnull align 8 dereferenceable(912), i64, i64 noundef) local_unnamed_addr #3

declare void @_ZN2v88internal8GCTracer25AddIncrementalMarkingStepEdm(ptr noundef nonnull align 8 dereferenceable(6440), double noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN2v88internal16MarkingWorklists5Local9ShareWorkEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #3

declare void @_ZN2v88internal17ConcurrentMarking21RescheduleJobIfNeededENS0_16GarbageCollectorENS_12TaskPriorityE(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare noundef double @_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv(ptr noundef nonnull align 8 dereferenceable(6440)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal18AllocationObserverD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal18IncrementalMarking8ObserverD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN2v88internal18AllocationObserver15GetNextStepSizeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #10

declare noundef ptr @_ZNK2v88internal9Histogram15CreateHistogramEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal12V8FileLogger23CallEventLoggerInternalEPNS0_7IsolateEPKcNS_14LogEventStatusEb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1833), align 1, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 58736
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @_ZN2v88internal12V8FileLogger10TimerEventENS_14LogEventStatusEPKc(ptr noundef nonnull align 8 dereferenceable(168) %i.d, i32 noundef %2, ptr noundef %1) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 59664
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void %i.f(ptr noundef %1, i32 noundef %2) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @_ZN2v88internal12V8FileLogger10TimerEventENS_14LogEventStatusEPKc(ptr noundef nonnull align 8 dereferenceable(168), i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal8GCTracer5Scope15NeedsYoungEpochENS2_7ScopeIdE(i32 noundef %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 144, label %bb.c
    i32 147, label %bb.c
    i32 7, label %bb.c
    i32 92, label %bb.c
    i32 93, label %bb.c
    i32 94, label %bb.c
    i32 95, label %bb.c
    i32 96, label %bb.c
    i32 97, label %bb.c
    i32 98, label %bb.c
    i32 99, label %bb.c
    i32 100, label %bb.c
    i32 101, label %bb.c
    i32 102, label %bb.c
    i32 103, label %bb.c
    i32 104, label %bb.c
    i32 105, label %bb.c
    i32 106, label %bb.c
    i32 107, label %bb.c
    i32 108, label %bb.c
    i32 109, label %bb.c
    i32 110, label %bb.c
    i32 111, label %bb.c
    i32 112, label %bb.c
    i32 113, label %bb.c
    i32 114, label %bb.c
    i32 115, label %bb.c
    i32 116, label %bb.c
    i32 117, label %bb.c
    i32 118, label %bb.c
    i32 119, label %bb.c
    i32 120, label %bb.c
    i32 156, label %bb.c
    i32 157, label %bb.c
    i32 158, label %bb.c
    i32 122, label %bb.c
    i32 123, label %bb.c
    i32 124, label %bb.c
    i32 125, label %bb.c
    i32 126, label %bb.c
    i32 127, label %bb.c
    i32 128, label %bb.c
    i32 129, label %bb.c
    i32 130, label %bb.c
    i32 131, label %bb.c
    i32 132, label %bb.c
    i32 133, label %bb.c
    i32 134, label %bb.c
    i32 135, label %bb.c
    i32 136, label %bb.c
    i32 137, label %bb.c
    i32 138, label %bb.c
    i32 139, label %bb.c
    i32 140, label %bb.c
    i32 159, label %bb.c
    i32 160, label %bb.c
    i32 161, label %bb.c
    i32 162, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #12 comdat {
bb.a:
  tail call void @abort() #19
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #13

declare noundef ptr @_ZN2v88internal7Isolate23GetCurrentLongTaskStatsEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #3
end_hunk_0
