inline.NumInlined: 1245
inline.NumDeleted: 558
begin_hunk_0_@_ZN2v88internal12PrintIsolateEPvPKcz
declare void @_ZN2v88internal12PrintIsolateEPvPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @_ZN2v88internal4Heap19PrintFreeListsStatsEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv(ptr noundef nonnull align 8 dereferenceable(6440) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 3
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5072 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !5, !noundef !6
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2040
  %i.h = load ptr, ptr %i.g, align 8
  %.not1 = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5073 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !range !5
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond = select i1 %.not1, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal8GCTracer9StopCycleENS0_16GarbageCollectorE(ptr noundef nonnull align 8 dereferenceable(6440) %0, i32 noundef 1)
  store i8 0, ptr %i.c, align 8
  store i8 0, ptr %i.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5074
  store i8 0, ptr %i.l, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8GCTracer24StopYoungCycleIfFinishedEv(ptr noundef nonnull align 8 dereferenceable(6440) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %.not = icmp eq i32 %i.c, 3
  br i1 %.not, label %bb.b, label %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5075 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !5, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2040
  %i.i = load ptr, ptr %i.h, align 8
  %.not1 = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5077 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !range !5
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond = select i1 %.not1, i1 %i.l, i1 false
  %or.cond.not = xor i1 %or.cond, true
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5076 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4, !range !5
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond6 = select i1 %or.cond.not, i1 true, i1 %i.o
  br i1 %or.cond6, label %bb.d, label %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5078
  %i.q = load i8, ptr %i.p, align 2, !range !5, !noundef !6
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = load i32, ptr %i.a, align 8
  %i.t = icmp eq i32 %i.s, 0
  %i.u = select i1 %i.t, i32 0, i32 2
  tail call void @_ZN2v88internal8GCTracer9StopCycleENS0_16GarbageCollectorE(ptr noundef nonnull align 8 dereferenceable(6440) %0, i32 noundef %i.u)
  store i8 0, ptr %i.d, align 1
  store i8 0, ptr %i.j, align 1
  store i8 0, ptr %i.m, align 4
  %i.v = load i32, ptr %i.b, align 4
  %.not.i = icmp eq i32 %i.v, 3
  %or.cond7 = select i1 %i.r, i1 %.not.i, i1 false
  br i1 %or.cond7, label %bb.e, label %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5072 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !range !5, !noundef !6
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2040
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not1.i = icmp eq ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 5073 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !range !5
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond.i = select i1 %.not1.i, i1 true, i1 %i.ae
  br i1 %or.cond.i, label %bb.g, label %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal8GCTracer9StopCycleENS0_16GarbageCollectorE(ptr noundef nonnull align 8 dereferenceable(6440) %0, i32 noundef 1)
  store i8 0, ptr %i.w, align 8
  store i8 0, ptr %i.ac, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5074
  store i8 0, ptr %i.af, align 2
  br label %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit

_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8GCTracer49NotifyFullSweepingCompletedAndStopCycleIfFinishedEv(ptr noundef nonnull align 8 dereferenceable(6440) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  switch i32 %i.b, label %_ZN2v88internal8GCTracer5Event22IsYoungGenerationEventENS2_4TypeE.exit [
    i32 3, label %bb.b
    i32 0, label %bb.b
    i32 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5078
  %i.d = load i8, ptr %i.c, align 2, !range !5, !noundef !6
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5072 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !range !5, !noundef !6
  %i.h = trunc nuw i8 %i.g to i1
  switch i32 %i.b, label %_ZN2v88internal8GCTracer50NotifyYoungSweepingCompletedAndStopCycleIfFinishedEv.exit [
    i32 3, label %bb.c
    i32 0, label %bb.c
    i32 4, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5075 ; 2 uses
  store i8 1, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %.not.i.i = icmp eq i32 %i.k, 3
  br i1 %.not.i.i, label %bb.d, label %_ZN2v88internal8GCTracer50NotifyYoungSweepingCompletedAndStopCycleIfFinishedEv.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2040
  %i.n = load ptr, ptr %i.m, align 8
  %.not1.i.i = icmp ne ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5077 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !range !5
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond.i.i = select i1 %.not1.i.i, i1 %i.q, i1 false
  %or.cond.not.i.i = xor i1 %or.cond.i.i, true
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5076 ; 2 uses
  %i.s = load i8, ptr %i.r, align 4, !range !5
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond6.i.i = select i1 %or.cond.not.i.i, i1 true, i1 %i.t
  br i1 %or.cond6.i.i, label %bb.e, label %_ZN2v88internal8GCTracer50NotifyYoungSweepingCompletedAndStopCycleIfFinishedEv.exit

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i32 %i.b, 0
  %i.v = select i1 %i.u, i32 0, i32 2
  tail call void @_ZN2v88internal8GCTracer9StopCycleENS0_16GarbageCollectorE(ptr noundef nonnull align 8 dereferenceable(6440) %0, i32 noundef %i.v)
  store i8 0, ptr %i.i, align 1
  store i8 0, ptr %i.o, align 1
  store i8 0, ptr %i.r, align 4
  %i.w = load i32, ptr %i.j, align 4
  %.not.i.i.i = icmp eq i32 %i.w, 3
  %or.cond7.i.i = select i1 %i.e, i1 %.not.i.i.i, i1 false
  %i.x = load i8, ptr %i.f, align 8, !range !5
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond5 = select i1 %or.cond7.i.i, i1 %i.y, i1 false
  br i1 %or.cond5, label %bb.f, label %_ZN2v88internal8GCTracer50NotifyYoungSweepingCompletedAndStopCycleIfFinishedEv.exit

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2040
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not1.i.i.i = icmp eq ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 5073 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !range !5
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond.i.i.i = select i1 %.not1.i.i.i, i1 true, i1 %i.ae
  br i1 %or.cond.i.i.i, label %bb.g, label %_ZN2v88internal8GCTracer50NotifyYoungSweepingCompletedAndStopCycleIfFinishedEv.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal8GCTracer9StopCycleENS0_16GarbageCollectorE(ptr noundef nonnull align 8 dereferenceable(6440) %0, i32 noundef 1)
  store i8 0, ptr %i.f, align 8
  store i8 0, ptr %i.ac, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5074
  store i8 0, ptr %i.af, align 2
  br label %_ZN2v88internal8GCTracer50NotifyYoungSweepingCompletedAndStopCycleIfFinishedEv.exit

_ZN2v88internal8GCTracer50NotifyYoungSweepingCompletedAndStopCycleIfFinishedEv.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %not. = xor i1 %i.h, true
  %1 = and i1 %i.e, %not.
  br i1 %1, label %_ZN2v88internal8GCTracer5Event22IsYoungGenerationEventENS2_4TypeE.exit, label %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit

_ZN2v88internal8GCTracer5Event22IsYoungGenerationEventENS2_4TypeE.exit: ; preds = %bb.a, %_ZN2v88internal8GCTracer50NotifyYoungSweepingCompletedAndStopCycleIfFinishedEv.exit
  %i.ag = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1065), align 1, !range !5, !noundef !6
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN2v88internal8GCTracer5Event22IsYoungGenerationEventENS2_4TypeE.exit
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = add i64 %i.aj, -55464
  %i.al = inttoptr i64 %i.ak to ptr
  tail call void (ptr, ptr, ...) @_ZN2v88internal12PrintIsolateEPvPKcz(ptr noundef %i.al, ptr noundef nonnull @.str.23) #19
  %i.am = load ptr, ptr %0, align 8
  tail call void @_ZN2v88internal4Heap19PrintFreeListsStatsEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.am) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN2v88internal8GCTracer5Event22IsYoungGenerationEventENS2_4TypeE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 5072 ; 2 uses
  store i8 1, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ap = load i32, ptr %i.ao, align 4
  %.not.i = icmp eq i32 %i.ap, 3
  br i1 %.not.i, label %bb.j, label %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2040
  %i.as = load ptr, ptr %i.ar, align 8
  %.not1.i = icmp eq ptr %i.as, null
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 5073 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !range !5
  %i.av = trunc nuw i8 %i.au to i1
  %or.cond.i = select i1 %.not1.i, i1 true, i1 %i.av
  br i1 %or.cond.i, label %bb.k, label %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal8GCTracer9StopCycleENS0_16GarbageCollectorE(ptr noundef nonnull align 8 dereferenceable(6440) %0, i32 noundef 1)
  store i8 0, ptr %i.an, align 8
  store i8 0, ptr %i.at, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5074
  store i8 0, ptr %i.aw, align 2
  br label %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit

_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit: ; preds = %bb.k, %bb.j, %bb.i, %_ZN2v88internal8GCTracer50NotifyYoungSweepingCompletedAndStopCycleIfFinishedEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8GCTracer50NotifyYoungSweepingCompletedAndStopCycleIfFinishedEv(ptr noundef nonnull align 8 dereferenceable(6440) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  switch i32 %i.b, label %_ZN2v88internal8GCTracer5Event22IsYoungGenerationEventENS2_4TypeE.exit [
    i32 3, label %bb.b
    i32 0, label %bb.b
    i32 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5075 ; 2 uses
  store i8 1, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %.not.i = icmp eq i32 %i.e, 3
  br i1 %.not.i, label %bb.c, label %_ZN2v88internal8GCTracer5Event22IsYoungGenerationEventENS2_4TypeE.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2040
  %i.h = load ptr, ptr %i.g, align 8
  %.not1.i = icmp ne ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5077 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !range !5
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond.i = select i1 %.not1.i, i1 %i.k, i1 false
  %or.cond.not.i = xor i1 %or.cond.i, true
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5076 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4, !range !5
  %i.n = trunc nuw i8 %i.m to i1
  %or.cond6.i = select i1 %or.cond.not.i, i1 true, i1 %i.n
  br i1 %or.cond6.i, label %bb.d, label %_ZN2v88internal8GCTracer5Event22IsYoungGenerationEventENS2_4TypeE.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5078
  %i.p = load i8, ptr %i.o, align 2, !range !5, !noundef !6
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = icmp eq i32 %i.b, 0
  %i.s = select i1 %i.r, i32 0, i32 2
  tail call void @_ZN2v88internal8GCTracer9StopCycleENS0_16GarbageCollectorE(ptr noundef nonnull align 8 dereferenceable(6440) %0, i32 noundef %i.s)
  store i8 0, ptr %i.c, align 1
  store i8 0, ptr %i.i, align 1
  store i8 0, ptr %i.l, align 4
  %i.t = load i32, ptr %i.d, align 4
  %.not.i.i = icmp eq i32 %i.t, 3
  %or.cond7.i = select i1 %i.q, i1 %.not.i.i, i1 false
  br i1 %or.cond7.i, label %bb.e, label %_ZN2v88internal8GCTracer5Event22IsYoungGenerationEventENS2_4TypeE.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5072 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !range !5, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %_ZN2v88internal8GCTracer5Event22IsYoungGenerationEventENS2_4TypeE.exit

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2040
  %i.z = load ptr, ptr %i.y, align 8
  %.not1.i.i = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5073 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !range !5
  %i.ac = trunc nuw i8 %i.ab to i1
  %or.cond.i.i = select i1 %.not1.i.i, i1 true, i1 %i.ac
  br i1 %or.cond.i.i, label %bb.g, label %_ZN2v88internal8GCTracer5Event22IsYoungGenerationEventENS2_4TypeE.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal8GCTracer9StopCycleENS0_16GarbageCollectorE(ptr noundef nonnull align 8 dereferenceable(6440) %0, i32 noundef 1)
  store i8 0, ptr %i.u, align 8
  store i8 0, ptr %i.aa, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 5074
  store i8 0, ptr %i.ad, align 2
  br label %_ZN2v88internal8GCTracer5Event22IsYoungGenerationEventENS2_4TypeE.exit

_ZN2v88internal8GCTracer5Event22IsYoungGenerationEventENS2_4TypeE.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal8GCTracer28NotifyYoungSweepingCompletedEv(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(6440) initializes((5075, 5076)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5075
  store i8 1, ptr %i.a, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8GCTracer24NotifyFullCppGCCompletedEv(ptr noundef nonnull align 8 dereferenceable(6440) initializes((5073, 5074)) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2040
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -512
  %i.e = tail call noundef ptr @_ZNK2v88internal7CppHeap17GetMetricRecorderEv(ptr noundef nonnull align 8 dereferenceable(672) %i.d) #19 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5073 ; 2 uses
  store i8 1, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8
  switch i32 %i.h, label %_ZN2v88internal8GCTracer5Event22IsYoungGenerationEventENS2_4TypeE.exit [
    i32 3, label %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit.sink.split
    i32 0, label %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit.sink.split
    i32 4, label %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit.sink.split
  ]

_ZN2v88internal8GCTracer5Event22IsYoungGenerationEventENS2_4TypeE.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %.not.i = icmp eq i32 %i.j, 3
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit

bb.b:                                             ; preds = %_ZN2v88internal8GCTracer5Event22IsYoungGenerationEventENS2_4TypeE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5072 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !range !5, !noundef !6
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal8GCTracer9StopCycleENS0_16GarbageCollectorE(ptr noundef nonnull align 8 dereferenceable(6440) %0, i32 noundef 1)
  store i8 0, ptr %i.k, align 8
  store i8 0, ptr %i.f, align 1
  br label %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit.sink.split

_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit.sink.split: ; preds = %bb.a, %bb.a, %bb.a, %bb.c
  %.sink = phi i8 [ 0, %bb.c ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5074
  store i8 %.sink, ptr %i.n, align 2
  br label %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit

_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit: ; preds = %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit.sink.split, %bb.b, %_ZN2v88internal8GCTracer5Event22IsYoungGenerationEventENS2_4TypeE.exit
  ret void
}

declare noundef ptr @_ZNK2v88internal7CppHeap17GetMetricRecorderEv(ptr noundef nonnull align 8 dereferenceable(672)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8GCTracer25NotifyYoungCppGCCompletedEv(ptr noundef nonnull align 8 dereferenceable(6440) initializes((5076, 5077)) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2040
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -512
  %i.e = tail call noundef ptr @_ZNK2v88internal7CppHeap17GetMetricRecorderEv(ptr noundef nonnull align 8 dereferenceable(672) %i.d) #19 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5076 ; 2 uses
  store i8 1, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %.not.i = icmp eq i32 %i.i, 3
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal8GCTracer24StopYoungCycleIfFinishedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5075 ; 2 uses
end_hunk_0
