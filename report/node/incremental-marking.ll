inline.NumInlined: 1013
inline.NumDeleted: 555
begin_hunk_0_@_ZN2v88internal18IncrementalMarking5StartENS0_16GarbageCollectorENS0_23GarbageCollectionReasonE:bb.a

_ZN2v88internal8Counters28gc_incremental_marking_startEv.exit.sink.split: ; preds = %bb.q, %bb.r, %bb.o, %bb.p
  %.sink = phi ptr [ %i.ce, %bb.o ], [ %i.ce, %bb.p ], [ %i.cm, %bb.r ], [ %i.cm, %bb.q ]
  %.ph.a = phi i32 [ 5, %bb.o ], [ 5, %bb.p ], [ 7, %bb.r ], [ 7, %bb.q ]
  %.ph116 = phi ptr [ %i.ca, %bb.o ], [ %i.ca, %bb.p ], [ %i.ci, %bb.r ], [ %i.ci, %bb.q ]
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) #17
  br label %_ZN2v88internal8Counters28gc_incremental_marking_startEv.exit

_ZN2v88internal8Counters28gc_incremental_marking_startEv.exit: ; preds = %_ZN2v88internal8Counters28gc_incremental_marking_startEv.exit.sink.split, %.critedge62, %_ZN2v88internal8Counters26incremental_marking_reasonEv.exit
  %i.cq = phi i32 [ 7, %.critedge62 ], [ 5, %_ZN2v88internal8Counters26incremental_marking_reasonEv.exit ], [ %.ph.a, %_ZN2v88internal8Counters28gc_incremental_marking_startEv.exit.sink.split ] ; 6 uses
  %i.cr = phi ptr [ %i.ci, %.critedge62 ], [ %i.ca, %_ZN2v88internal8Counters26incremental_marking_reasonEv.exit ], [ %.ph116, %_ZN2v88internal8Counters28gc_incremental_marking_startEv.exit.sink.split ] ; 2 uses
  store i64 0, ptr %6, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal18IncrementalMarking5StartENS0_16GarbageCollectorENS0_23GarbageCollectionReasonE:bb.a
  %i.hr = call i64 @_ZN2v84base9TimeTicks3NowEv() #17
  %i.hs = sub nsw i64 %i.hr, %i.fj                ; 5 uses
  store i64 %i.hs, ptr %5, align 8
  %9 = zext nneg i32 %i.cq to i64                 ; 2 uses
  br i1 %i.i, label %bb.bp, label %_ZN2v88internal8GCTracer14AddScopeSampleENS1_5Scope7ScopeIdENS_4base9TimeDeltaE.exit

bb.bp:                                            ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit
end_hunk_1
