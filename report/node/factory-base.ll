inline.NumInlined: 12826
inline.NumDeleted: 1652
begin_hunk_0_@_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE:bb.a
  %i.k = tail call i64 @_ZN2v88internal7Factory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.j, i8 noundef zeroext %.0.i, i8 noundef zeroext 0, i8 %3) #15 ; 2 uses
  %i.l = add i64 %i.k, -1
  %i.m = inttoptr i64 %i.l to ptr                 ; 4 uses
  store atomic volatile i64 %i.b, ptr %i.m monotonic, align 8
  %i.n = zext nneg i32 %i.j to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  store i64 0, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store atomic volatile i32 %1, ptr %i.q monotonic, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store atomic i32 3, ptr %i.r monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.e, label %_ZN2v88internal6HandleINS0_16SeqTwoByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.x = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  br label %_ZN2v88internal6HandleINS0_16SeqTwoByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_16SeqTwoByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.x, %bb.e ], [ %i.t, %bb.d ] ; 3 uses
  %i.y = ptrtoint ptr %.0.i.i.i to i64
  %i.z = add i64 %i.y, 8
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %i.s, align 8
  store i64 %i.k, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawStringWithMapINS0_16SeqTwoByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawStringWithMapINS0_16SeqTwoByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit: ; preds = %bb.c, %_ZN2v88internal6HandleINS0_16SeqTwoByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.sroa.024.0.i = phi ptr [ null, %bb.c ], [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_16SeqTwoByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ]
  ret ptr %.sroa.024.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewConsStringENS0_12DirectHandleINS0_6StringEEES6_ibNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, ptr %2, i32 noundef %3, i1 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::WriteBarrierModeScope", align 4 ; 6 uses
  %. = select i1 %4, i64 1608, i64 1600
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = add i64 %i.b, 7
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i8, ptr %i.d monotonic, align 1
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 3
  %i.h = tail call i64 @_ZN2v88internal7Factory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.g, i8 noundef zeroext %5, i8 noundef zeroext 0, i8 0) #15 ; 2 uses
  %i.i = add i64 %i.h, -1                         ; 3 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 5 uses
  store atomic volatile i64 %i.b, ptr %i.j monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.k = or disjoint i64 %i.i, 1                  ; 5 uses
  %i.l = and i64 %i.i, -262144
  %i.m = inttoptr i64 %i.l to ptr                 ; 3 uses
  %i.n = load i64, ptr %i.m, align 262144, !noalias !24 ; 2 uses
  %i.o = and i64 %i.n, 32
  %.not.i.i.i = icmp eq i64 %i.o, 0
  %i.p = and i64 %i.n, 24
  %.not7.i.i.i = icmp ne i64 %i.p, 0
  %i.q = and i1 %.not.i.i.i, %.not7.i.i.i
  %.1.i.i.i = select i1 %i.q, i32 1, i32 4
  call void @_ZN2v88internal21WriteBarrierModeScopeC1ENS0_6TaggedINS0_10HeapObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(4) %6, i64 %i.k, i32 noundef %.1.i.i.i) #15
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store atomic i32 3, ptr %i.r monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store atomic volatile i32 %3, ptr %i.s monotonic, align 4
  %i.t = load i64, ptr %1, align 8                ; 5 uses
  %i.u = load i32, ptr %6, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store atomic volatile i64 %i.t, ptr %i.v monotonic, align 8
  %i.w = icmp sgt i32 %i.u, 1
  %i.x = trunc i64 %i.t to i1
  %or.cond.i.i.i.i = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.b, label %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.y = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.z = load i64, ptr %i.m, align 262144         ; 2 uses
  %i.aa = and i64 %i.z, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.aa, 0
  %i.ab = and i64 %i.z, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not38.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ac = and i64 %i.t, -262144
  %i.ad = inttoptr i64 %i.ac to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.ad, align 262144
  %i.ae = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not39.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.k, i64 noundef %i.y, i64 %i.t) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.k, i64 %i.y, i64 %i.t) #15
  br label %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  %i.af = load i64, ptr %2, align 8               ; 5 uses
  %i.ag = load i32, ptr %6, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store atomic volatile i64 %i.af, ptr %i.ah monotonic, align 8
  %i.ai = icmp sgt i32 %i.ag, 1
  %i.aj = trunc i64 %i.af to i1
  %or.cond.i.i.i.i11 = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond.i.i.i.i11, label %bb.g, label %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit

bb.g:                                             ; preds = %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit
  %i.ak = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.al = load i64, ptr %i.m, align 262144        ; 2 uses
  %i.am = and i64 %i.al, 32
  %.not.i.i.i.i.i12 = icmp eq i64 %i.am, 0
  %i.an = and i64 %i.al, 25
  %.not38.i.i.i.i.i13 = icmp eq i64 %i.an, 0
  br i1 %.not38.i.i.i.i.i13, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ao = and i64 %i.af, -262144
  %i.ap = inttoptr i64 %i.ao to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i14 = load i64, ptr %i.ap, align 262144
  %i.aq = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i14, 25
  %.not39.i.i.i.i.i15 = icmp eq i64 %i.aq, 0
  br i1 %.not39.i.i.i.i.i15, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.k, i64 noundef %i.ak, i64 %i.af) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i12, label %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit, label %bb.k, !prof !9

bb.k:                                             ; preds = %bb.j
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.k, i64 %i.ak, i64 %i.af) #15
  br label %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit, %bb.j, %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %bb.l, label %_ZN2v88internal6HandleINS0_10ConsStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.l:                                             ; preds = %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit
  %i.aw = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #15
  br label %_ZN2v88internal6HandleINS0_10ConsStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10ConsStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit, %bb.l
  %.0.i.i = phi ptr [ %i.aw, %bb.l ], [ %i.as, %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit ] ; 3 uses
  %i.ax = ptrtoint ptr %.0.i.i to i64
  %i.ay = add i64 %i.ax, 8
  %i.az = inttoptr i64 %i.ay to ptr
  store ptr %i.az, ptr %i.ar, align 8
  store i64 %i.h, ptr %.0.i.i, align 8
  call void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret ptr %.0.i.i
}

; Function Attrs: nounwind
declare void @_ZN2v88internal21WriteBarrierModeScopeD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE14NumberToStringENS0_12DirectHandleINS0_6ObjectEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE11SmiToStringENS0_6TaggedINS0_3SmiEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.a, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = add nsw i64 %i.a, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.g, align 1
  %i.h = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE14DoubleToStringEdbNS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef %.0.copyload.i.i.i.i, i1 noundef zeroext true, i32 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.08.0 = phi ptr [ %i.d, %bb.b ], [ %i.h, %bb.c ]
  ret ptr %.sroa.08.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE11SmiToStringENS0_6TaggedINS0_3SmiEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 3 uses
  %i.b = lshr i64 %1, 32                          ; 2 uses
  %i.c = trunc nuw i64 %i.b to i32                ; 4 uses
  %i.d = icmp ult i64 %1, 429496729600
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2088
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.b
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.c, label %bb.d, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %i.q, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %i.r = ptrtoint ptr %.0.i to i64
  %i.s = add i64 %i.r, 8
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %i.l, align 8
  store i64 %i.k, ptr %.0.i, align 8
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 9608
  %i.v = load i64, ptr %i.u, align 8
  %i.w = add i64 %i.v, -1
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = lshr i64 %i.z, 32
  %i.ab = trunc nuw i64 %i.aa to i32
  %i.ac = sdiv i32 %i.ab, 2
  %i.ad = add nsw i32 %i.ac, -1
  %3 = and i32 %i.ad, %i.c                        ; 2 uses
  %4 = zext i32 %3 to i64                         ; 4 uses
  %i.ae = icmp eq i32 %2, 2
  br i1 %i.ae, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.af = shl i32 %3, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = icmp eq i64 %i.aj, %1                   ; 2 uses
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1512), align 8, !range !6, !noundef !7
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.h, label %bb.l, !prof !5

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 58656
  %i.ao = load ptr, ptr %i.an, align 8            ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8544
  %i.aq = load atomic ptr, ptr %i.ap acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %bb.i, label %_ZN2v88internal12StatsCounter9IncrementEi.exit.i, !prof !5

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8528
  %i.as = tail call noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ar) #15
  br label %_ZN2v88internal12StatsCounter9IncrementEi.exit.i

_ZN2v88internal12StatsCounter9IncrementEi.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.as, %bb.i ], [ %i.aq, %bb.h ]
  %i.at = atomicrmw add ptr %.0.i.i.i, i32 1 monotonic, align 4 ; 0 uses
  br i1 %i.ak, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal12StatsCounter9IncrementEi.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 8568
  %i.av = load atomic ptr, ptr %i.au acquire, align 8 ; 2 uses
  %.not.i.i17.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i17.i, label %bb.k, label %.thread.i, !prof !5

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 8552
  %i.ax = tail call noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #15
  br label %.thread.i

.thread.i:                                        ; preds = %bb.k, %bb.j
  %.0.i.i18.i = phi ptr [ %i.ax, %bb.k ], [ %i.av, %bb.j ]
  %i.ay = atomicrmw add ptr %.0.i.i18.i, i32 1 monotonic, align 4 ; 0 uses
  br label %.critedge

bb.l:                                             ; preds = %bb.g
  br i1 %i.ak, label %.critedge.i, label %.critedge

.critedge.i:                                      ; preds = %bb.l, %_ZN2v88internal12StatsCounter9IncrementEi.exit.i
  %i.az = getelementptr i8, ptr %i.ai, i64 8
  %i.ba = load atomic volatile i64, ptr %i.az monotonic, align 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = icmp eq ptr %i.bc, %i.be
  br i1 %i.bf, label %bb.m, label %_ZN2v88internal14SmiStringCache3GetEPNS0_7IsolateENS0_13InternalIndexENS0_6TaggedINS0_3SmiEEE.exit, !prof !5

bb.m:                                             ; preds = %.critedge.i
  %i.bg = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #15
  br label %_ZN2v88internal14SmiStringCache3GetEPNS0_7IsolateENS0_13InternalIndexENS0_6TaggedINS0_3SmiEEE.exit

_ZN2v88internal14SmiStringCache3GetEPNS0_7IsolateENS0_13InternalIndexENS0_6TaggedINS0_3SmiEEE.exit: ; preds = %.critedge.i, %bb.m
  %.0.i.i = phi ptr [ %i.bg, %bb.m ], [ %i.bc, %.critedge.i ] ; 3 uses
  %i.bh = ptrtoint ptr %.0.i.i to i64
  %i.bi = add i64 %i.bh, 8
  %i.bj = inttoptr i64 %i.bi to ptr
  store ptr %i.bj, ptr %i.bb, align 8
  store i64 %i.ba, ptr %.0.i.i, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 648
  %.pre65 = load i64, ptr %.phi.trans.insert, align 8
  %i.bk = icmp eq i64 %i.ba, %.pre65
  br i1 %i.bk, label %.critedge, label %bb.r

.critedge:                                        ; preds = %bb.l, %.thread.i, %bb.e, %_ZN2v88internal14SmiStringCache3GetEPNS0_7IsolateENS0_13InternalIndexENS0_6TaggedINS0_3SmiEEE.exit, %bb.f
  %.sroa.016.064 = phi i64 [ %4, %_ZN2v88internal14SmiStringCache3GetEPNS0_7IsolateENS0_13InternalIndexENS0_6TaggedINS0_3SmiEEE.exit ], [ %4, %bb.f ], [ -1, %bb.e ], [ %4, %.thread.i ], [ %4, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.bl = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.c, ptr nonnull %i.a, i64 32) #15 ; 2 uses
  %i.bm = extractvalue { i64, ptr } %i.bl, 0
  %i.bn = extractvalue { i64, ptr } %i.bl, 1
  %i.bo = icmp ne i32 %2, 0
  %i.bp = zext i1 %i.bo to i8
  %i.bq = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.bn, i64 %i.bm, i8 noundef zeroext %i.bp) ; 5 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.n, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedESt17basic_string_viewIcSt11char_traitsIcEENS0_14AllocationTypeE.exit, !prof !5

bb.n:                                             ; preds = %.critedge
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.22) #17
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedESt17basic_string_viewIcSt11char_traitsIcEENS0_14AllocationTypeE.exit: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedESt17basic_string_viewIcSt11char_traitsIcEENS0_14AllocationTypeE.exit
  call void @_ZN2v88internal14SmiStringCache3SetEPNS0_7IsolateENS0_13InternalIndexENS0_6TaggedINS0_3SmiEEENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull %0, i64 %.sroa.016.064, i64 %1, ptr nonnull %i.bq)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedESt17basic_string_viewIcSt11char_traitsIcEENS0_14AllocationTypeE.exit
  %i.bs = load i64, ptr %i.bq, align 8
  %i.bt = add i64 %i.bs, -1
  %i.bu = inttoptr i64 %i.bt to ptr               ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.bw = load atomic i32, ptr %i.bv monotonic, align 4
  %i.bx = icmp eq i32 %i.bw, 3
  %i.by = icmp sgt i64 %1, -1
  %or.cond = and i1 %i.by, %i.bx
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = add i64 %i.cc, -1
  %i.ce = inttoptr i64 %i.cd to ptr               ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = lshr i32 %i.c, 12
  %i.cm = xor i32 %i.cl, %i.c
  %i.cn = mul i32 %i.cg, %i.cm                    ; 2 uses
  %i.co = lshr i32 %i.cn, 12
  %i.cp = and i32 %i.co, 4095
  %i.cq = xor i32 %i.cp, %i.cn
  %i.cr = mul i32 %i.cq, %i.ci                    ; 2 uses
  %i.cs = lshr i32 %i.cr, 12
  %i.ct = and i32 %i.cs, 4095
  %i.cu = xor i32 %i.ct, %i.cr
  %i.cv = mul i32 %i.cu, %i.ck
  %i.cw = and i32 %i.cv, 16777215                 ; 2 uses
  %i.cx = lshr i32 %i.cw, 12
  %i.cy = xor i32 %i.cx, %i.cw
  %i.cz = shl nuw nsw i32 %i.cy, 2
  %i.da = shl i32 %i.ca, 26
  %i.db = or disjoint i32 %i.cz, %i.da
  store atomic i32 %i.db, ptr %i.bv monotonic, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %_ZN2v88internal14SmiStringCache3GetEPNS0_7IsolateENS0_13InternalIndexENS0_6TaggedINS0_3SmiEEE.exit, %bb.d
  %.sroa.046.1 = phi ptr [ %.0.i.i, %_ZN2v88internal14SmiStringCache3GetEPNS0_7IsolateENS0_13InternalIndexENS0_6TaggedINS0_3SmiEEE.exit ], [ %.0.i, %bb.d ], [ %i.bq, %bb.q ], [ %i.bq, %bb.p ]
  ret ptr %.sroa.046.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE14DoubleToStringEdbNS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 3 uses
  br i1 %2, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp oge double %1, f0xC1E0000000000000
  %i.c = fcmp ole double %1, f0x41DFFFFFFFC00000
  %or.cond.i.i = and i1 %i.b, %i.c
  br i1 %or.cond.i.i, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i1 @llvm.is.fpclass.f64(double %1, i32 32)
  br i1 %i.d, label %.thread, label %_ZN2v88internal11IsSmiDoubleEd.exit.i

_ZN2v88internal11IsSmiDoubleEd.exit.i:            ; preds = %bb.c
  %i.e = fptosi double %1 to i32                  ; 2 uses
  %i.f = sitofp i32 %i.e to double
  %i.g = fcmp oeq double %1, %i.f
  br i1 %i.g, label %bb.d, label %.thread

bb.d:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i
  %i.h = sext i32 %i.e to i64
  %i.i = shl nsw i64 %i.h, 32
  %i.j = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE11SmiToStringENS0_6TaggedINS0_3SmiEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.i, i32 noundef %3)
  br label %bb.t

.thread:                                          ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i, %bb.c, %bb.b, %bb.a
  %.not = icmp eq i32 %3, 0                       ; 2 uses
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.k = bitcast double %1 to i64                 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9616
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, -1
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 4
  %i.r = lshr i64 %i.k, 32
  %i.s = xor i64 %i.r, %i.k
  %i.t = trunc i64 %i.s to i32
  %i.u = add i32 %i.q, -1
  %i.v = and i32 %i.u, %i.t
  %i.w = zext i32 %i.v to i64                     ; 5 uses
  %i.x = icmp eq i32 %3, 2
  br i1 %i.x, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.w ; 2 uses
  %.0.copyload.i.i.i.i = load i64, ptr %i.z, align 1
  %i.aa = icmp eq i64 %.0.copyload.i.i.i.i, %i.k  ; 2 uses
  %i.ab = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1512), align 8, !range !6, !noundef !7
end_hunk_0
begin_hunk_1_@_ZN2v88internal17DoubleStringCache3SetEPNS0_7IsolateENS0_13InternalIndexEmNS0_12DirectHandleINS0_6StringEEE:bb.a
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = add i32 %i.bf, -1
  %i.bk = and i32 %i.bj, %i.bi
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bl
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a, %bb.d, %_ZN2v88internal17DoubleStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit, %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit
  %.sroa.032.0 = phi ptr [ %i.a, %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit ], [ %.0.i.i.i, %_ZN2v88internal17DoubleStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit ], [ %i.a, %bb.d ], [ %i.a, %bb.b ], [ %i.a, %bb.a ]
  %.0 = phi ptr [ %i.g, %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit ], [ %i.bn, %_ZN2v88internal17DoubleStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit ], [ %i.g, %bb.d ], [ %i.g, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  store i64 %2, ptr %.0, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.bp = load i64, ptr %.sroa.032.0, align 8     ; 3 uses
  %i.bq = load i64, ptr %3, align 8               ; 5 uses
  store atomic volatile i64 %i.bq, ptr %i.bo monotonic, align 8
  %i.br = trunc i64 %i.bq to i1
  br i1 %i.br, label %bb.j, label %_ZN2v88internal12TaggedMemberINS0_5UnionIJNS0_3SmiENS0_6StringEEEENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS5_EENS0_16WriteBarrierModeE.exit

bb.j:                                             ; preds = %.critedge
  %i.bs = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.bt = and i64 %i.bp, -262144
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load i64, ptr %i.bu, align 262144       ; 2 uses
  %i.bw = and i64 %i.bv, 32
  %.not.i.i.i.i = icmp eq i64 %i.bw, 0
  %i.bx = and i64 %i.bv, 25
  %.not38.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not38.i.i.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.by = and i64 %i.bq, -262144
  %i.bz = inttoptr i64 %i.by to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.bz, align 262144
  %i.ca = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not39.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bp, i64 noundef %i.bs, i64 %i.bq) #15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12TaggedMemberINS0_5UnionIJNS0_3SmiENS0_6StringEEEENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS5_EENS0_16WriteBarrierModeE.exit, label %bb.n, !prof !9

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bp, i64 %i.bs, i64 %i.bq) #15
  br label %_ZN2v88internal12TaggedMemberINS0_5UnionIJNS0_3SmiENS0_6StringEEEENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS5_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12TaggedMemberINS0_5UnionIJNS0_3SmiENS0_6StringEEEENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS5_EENS0_16WriteBarrierModeE.exit: ; preds = %.critedge, %bb.m, %bb.n
  ret void
}

declare { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef, ptr, i64) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14SmiStringCache3SetEPNS0_7IsolateENS0_13InternalIndexENS0_6TaggedINS0_3SmiEEENS0_12DirectHandleINS0_6StringEEE(ptr noundef %0, i64 %1, i64 %2, ptr %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9608 ; 6 uses
  %i.b = trunc i64 %1 to i32
  %i.c = shl i32 %i.b, 1                          ; 5 uses
  %i.d = load i64, ptr %i.a, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr                 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, -8589934592
  %i.j = icmp eq i64 %i.i, 1099511627776
  br i1 %i.j, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = sext i32 %i.c to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = icmp eq i64 %i.n, 0
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 704), align 64, !range !6
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond = select i1 %i.o, i1 true, i1 %i.q
  br i1 %or.cond, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 200), align 8 ; 2 uses
  %i.r = and i16 %.sroa.0.0.copyload.i.i, 256
  %.not.i = icmp eq i16 %i.r, 0
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 59181
  %i.t = load atomic i8, ptr %i.s seq_cst, align 1, !range !6, !noundef !7
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %..critedge_crit_edge, label %bb.e

..critedge_crit_edge:                             ; preds = %bb.d
  %.pre = load i64, ptr %i.a, align 8
  %.pre51 = add i64 %.pre, -1
  %.pre52 = inttoptr i64 %.pre51 to ptr
  br label %.critedge

_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit: ; preds = %bb.c
  %i.v = trunc i16 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.v, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 180), align 4
  %spec.select.i = tail call i32 @llvm.usub.sat.i32(i32 %i.w, i32 1) ; 4 uses
  %i.x = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i, i1 false)
  %i.y = sub nuw nsw i32 32, %i.x                 ; 2 uses
  %i.z = icmp ugt i32 %spec.select.i, 127
  br i1 %i.z, label %bb.g, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp ult i32 %spec.select.i, 67108864
  br i1 %i.aa, label %bb.i, label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #17
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ab = shl nuw i32 2, %i.y
  %i.ac = shl nuw i32 16, %i.y                    ; 2 uses
  %i.ad = add nuw nsw i32 %i.ac, 16
  %i.ae = tail call i64 @_ZN2v88internal7Factory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ad, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 0) #15 ; 3 uses
  %i.af = icmp samesign ugt i32 %spec.select.i, 4095
  %i.ag = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1222), align 2, !range !6
  %i.ah = trunc nuw i8 %i.ag to i1
  %or.cond.i.i.i = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %or.cond.i.i.i, label %bb.j, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.ai = and i64 %i.ae, -262144
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.an = load atomic ptr, ptr %i.am seq_cst, align 8
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i.i, !prof !5

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #17
  unreachable

_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i.i: ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 224
  %narrow.i = add nuw nsw i32 %i.ac, 131072
  %i.ap = lshr i32 %narrow.i, 17
  %i.aq = zext nneg i32 %i.ap to i64
  store i64 %i.aq, ptr %i.ao, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 232
  store atomic i64 0, ptr %i.ar seq_cst, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i.i: ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i.i, %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.at = load i64, ptr %i.as, align 8
  %i.au = add i64 %i.ae, -1
  %i.av = inttoptr i64 %i.au to ptr               ; 3 uses
  store atomic volatile i64 %i.at, ptr %i.av monotonic, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = zext nneg i32 %i.ab to i64
  %i.ay = shl nuw nsw i64 %i.ax, 32
  store atomic volatile i64 %i.ay, ptr %i.aw monotonic, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp eq ptr %i.ba, %i.bc
  br i1 %i.bd, label %bb.l, label %_ZN2v88internal14SmiStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit, !prof !5

bb.l:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i.i
  %i.be = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #15
  br label %_ZN2v88internal14SmiStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit

_ZN2v88internal14SmiStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit: ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i.i, %bb.l
  %.0.i.i.i.i = phi ptr [ %i.be, %bb.l ], [ %i.ba, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i.i ] ; 4 uses
  %i.bf = ptrtoint ptr %.0.i.i.i.i to i64
  %i.bg = add i64 %i.bf, 8
  %i.bh = inttoptr i64 %i.bg to ptr
  store ptr %i.bh, ptr %i.az, align 8
  store i64 %i.ae, ptr %.0.i.i.i.i, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bj = load i64, ptr %i.aw, align 8
  %i.bk = ashr i64 %i.bj, 32
  %i.bl = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 %i.bk, ptr nonnull %i.bi) #15, !srcloc !10 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 55464
  %i.bn = load i64, ptr %.0.i.i.i.i, align 8      ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = add i64 %i.bo, -55464
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 9608
  store i64 %i.bn, ptr %i.br, align 8
  %i.bs = add i64 %i.bn, -1
  %i.bt = inttoptr i64 %i.bs to ptr               ; 2 uses
  %i.bu = lshr i64 %2, 32
  %4 = trunc nuw i64 %i.bu to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = lshr i64 %i.bw, 32
  %i.by = trunc nuw i64 %i.bx to i32
  %i.bz = sdiv i32 %i.by, 2
  %i.ca = add i32 %i.bz, 2147483647
  %i.cb = and i32 %i.ca, %4
  %i.cc = shl i32 %i.cb, 1
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.b, %bb.a, %_ZN2v88internal14SmiStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit, %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit
  %.pre-phi53 = phi ptr [ %.pre52, %..critedge_crit_edge ], [ %i.f, %bb.b ], [ %i.f, %bb.a ], [ %i.bt, %_ZN2v88internal14SmiStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit ], [ %i.f, %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit ]
  %.sroa.037.0 = phi ptr [ %i.a, %..critedge_crit_edge ], [ %i.a, %bb.b ], [ %i.a, %bb.a ], [ %.0.i.i.i.i, %_ZN2v88internal14SmiStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit ], [ %i.a, %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit ]
  %.0 = phi i32 [ %i.c, %..critedge_crit_edge ], [ %i.c, %bb.b ], [ %i.c, %bb.a ], [ %i.cc, %_ZN2v88internal14SmiStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit ], [ %i.c, %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre-phi53, i64 16
  %i.ce = sext i32 %.0 to i64                     ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.ce
  store atomic volatile i64 %2, ptr %i.cf monotonic, align 8
  %i.cg = load i64, ptr %.sroa.037.0, align 8
  %i.ch = add i64 %i.cg, -1                       ; 3 uses
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load i64, ptr %3, align 8               ; 5 uses
  %i.ck = getelementptr [8 x i8], ptr %i.ci, i64 %i.ce
  %i.cl = getelementptr i8, ptr %i.ck, i64 24     ; 2 uses
  store atomic volatile i64 %i.cj, ptr %i.cl monotonic, align 8
  %i.cm = trunc i64 %i.cj to i1
  br i1 %i.cm, label %bb.m, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.m:                                             ; preds = %.critedge
  %i.cn = or disjoint i64 %i.ch, 1                ; 2 uses
  %i.co = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.cp = and i64 %i.ch, -262144
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load i64, ptr %i.cq, align 262144       ; 2 uses
  %i.cs = and i64 %i.cr, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.cs, 0
  %i.ct = and i64 %i.cr, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not38.i.i.i.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cu = and i64 %i.cj, -262144
  %i.cv = inttoptr i64 %i.cu to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.cv, align 262144
  %i.cw = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not39.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cn, i64 noundef %i.co, i64 %i.cj) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.q, !prof !9

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cn, i64 %i.co, i64 %i.cj) #15
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %.critedge, %bb.p, %bb.q
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewRawSharedOneByteStringEi(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i32 %1, 536870888
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @_ZN2v88internal7Factory27NewInvalidStringLengthErrorEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.c, ptr noundef null) #15 ; 0 uses
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawStringWithMapINS0_16SeqOneByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add nuw nsw i32 %1, 23
  %i.h = and i32 %i.g, 1073741816                 ; 2 uses
  %i.i = tail call i64 @_ZN2v88internal7Factory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.h, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 0) #15 ; 2 uses
  %i.j = add i64 %i.i, -1
  %i.k = inttoptr i64 %i.j to ptr                 ; 4 uses
  store atomic volatile i64 %i.f, ptr %i.k monotonic, align 8
  %i.l = zext nneg i32 %i.h to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  store i64 0, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store atomic volatile i32 %1, ptr %i.o monotonic, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store atomic i32 3, ptr %i.p monotonic, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.d, label %_ZN2v88internal6HandleINS0_16SeqOneByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.v = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  br label %_ZN2v88internal6HandleINS0_16SeqOneByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_16SeqOneByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.r, %bb.c ] ; 3 uses
  %i.w = ptrtoint ptr %.0.i.i.i to i64
  %i.x = add i64 %i.w, 8
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %i.y, ptr %i.q, align 8
  store i64 %i.i, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawStringWithMapINS0_16SeqOneByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawStringWithMapINS0_16SeqOneByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit: ; preds = %bb.b, %_ZN2v88internal6HandleINS0_16SeqOneByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.sroa.024.0.i = phi ptr [ null, %bb.b ], [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_16SeqOneByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ]
  ret ptr %.sroa.024.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewRawSharedTwoByteStringEi(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i32 %1, 536870888
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @_ZN2v88internal7Factory27NewInvalidStringLengthErrorEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.c, ptr noundef null) #15 ; 0 uses
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawStringWithMapINS0_16SeqTwoByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %i.f = load i64, ptr %i.e, align 8
  %i.g = shl nuw nsw i32 %1, 1
  %i.h = add nuw nsw i32 %i.g, 22
  %i.i = and i32 %i.h, 2147483640                 ; 2 uses
  %i.j = tail call i64 @_ZN2v88internal7Factory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.i, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 0) #15 ; 2 uses
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  store atomic volatile i64 %i.f, ptr %i.l monotonic, align 8
  %i.m = zext nneg i32 %i.i to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  store i64 0, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store atomic volatile i32 %1, ptr %i.p monotonic, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store atomic i32 3, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.d, label %_ZN2v88internal6HandleINS0_16SeqTwoByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.w = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  br label %_ZN2v88internal6HandleINS0_16SeqTwoByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_16SeqTwoByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.w, %bb.d ], [ %i.s, %bb.c ] ; 3 uses
  %i.x = ptrtoint ptr %.0.i.i.i to i64
  %i.y = add i64 %i.x, 8
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %i.z, ptr %i.r, align 8
  store i64 %i.j, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawStringWithMapINS0_16SeqTwoByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawStringWithMapINS0_16SeqTwoByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit: ; preds = %bb.b, %_ZN2v88internal6HandleINS0_16SeqTwoByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.sroa.024.0.i = phi ptr [ null, %bb.b ], [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_16SeqTwoByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ]
  ret ptr %.sroa.024.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewBigIntEjNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i32 %1, 16777216
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, i32 noundef %1) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = shl nuw nsw i32 %1, 3
  %i.c = add nuw nsw i32 %i.b, 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.e = load i64, ptr %i.d, align 8
  %i.f = tail call i64 @_ZN2v88internal7Factory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.c, i8 noundef zeroext %2, i8 noundef zeroext 0, i8 0) #15 ; 2 uses
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  store atomic volatile i64 %i.e, ptr %i.h monotonic, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.d, label %_ZN2v88internal6HandleINS0_22FreshlyAllocatedBigIntEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #15
  br label %_ZN2v88internal6HandleINS0_22FreshlyAllocatedBigIntEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_22FreshlyAllocatedBigIntEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.o, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
end_hunk_1
begin_hunk_2_@_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE:bb.a
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #15, !inline_history !50
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #15
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #15, !inline_history !50
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.n, %bb.c ], [ %i.r, %bb.d ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  ret i8 %i.u
}

declare void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i16 @_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = load atomic volatile i64, ptr %0 monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = and i16 %i.g, 16
  %.not.i = icmp eq i16 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #15, !inline_history !51
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #15
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #15, !inline_history !51
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.n, %bb.c ], [ %i.r, %bb.d ]
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.0.i, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  ret i16 %i.u
}

declare void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare ptr @_ZNK2v88internal13AstConsString12AllocateFlatINS0_7IsolateEEENS0_6HandleINS0_6StringEEEPT_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringHasher20HashSequentialStringIhEEjPKT_jNS0_8HashSeedE(ptr noundef %0, i32 noundef %1, ptr %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.thread128, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %1, 17
  br i1 %i.a, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.b = load i8, ptr %0, align 1
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = add nsw i64 %i.c, -48                    ; 5 uses
  %i.e = icmp ugt i64 %i.d, 9
  br i1 %i.e, label %.thread128, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not140 = icmp eq i32 %1, 1
  br i1 %.not140, label %._crit_edge.thread, label %.thread128

bb.f:                                             ; preds = %bb.d
  %i.g = icmp samesign ugt i32 %1, 10
  br i1 %i.g, label %.lr.ph155, label %.preheader141

.preheader141:                                    ; preds = %bb.f
  %.not158 = icmp eq i32 %1, 1
  br i1 %.not158, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader141
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.091150 = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.o, %bb.g ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = add nsw i32 %i.j, -48                    ; 2 uses
  %i.l = icmp ugt i32 %i.k, 9
  br i1 %i.l, label %.thread128, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.m = mul i64 %.091150, 10
  %i.n = zext nneg i32 %i.k to i64
  %i.o = add i64 %i.m, %i.n                       ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %bb.g
  %i.p = icmp ugt i64 %i.o, 4294967294
  br i1 %i.p, label %._crit_edge156, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader141, %bb.e, %._crit_edge
  %.2.ph = phi i64 [ %i.o, %._crit_edge ], [ 0, %bb.e ], [ %i.d, %.preheader141 ]
  %i.q = trunc nuw i64 %.2.ph to i32              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load i32, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = load i32, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = load i32, ptr %i.v, align 8
  %i.x = lshr i32 %i.q, 12
  %i.y = xor i32 %i.x, %i.q
  %i.z = mul i32 %i.y, %i.s                       ; 2 uses
  %i.aa = lshr i32 %i.z, 12
  %i.ab = and i32 %i.aa, 4095
  %i.ac = xor i32 %i.ab, %i.z
  %i.ad = mul i32 %i.ac, %i.u                     ; 2 uses
  %i.ae = lshr i32 %i.ad, 12
  %i.af = and i32 %i.ae, 4095
  %i.ag = xor i32 %i.af, %i.ad
  %i.ah = mul i32 %i.ag, %i.w
  %i.ai = and i32 %i.ah, 16777215                 ; 2 uses
  %i.aj = lshr i32 %i.ai, 12
  %i.ak = xor i32 %i.aj, %i.ai
  %i.al = shl nuw nsw i32 %i.ak, 2
  %i.am = shl nuw nsw i32 %1, 26
  %i.an = or disjoint i32 %i.al, %i.am
  br label %bb.u

.lr.ph155:                                        ; preds = %bb.f, %bb.h
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %bb.h ], [ 1, %bb.f ] ; 2 uses
  %.013.i153 = phi i64 [ %i.av, %bb.h ], [ %i.d, %bb.f ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv168
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -48                  ; 2 uses
  %i.as = icmp ult i32 %i.ar, 10
  br i1 %i.as, label %bb.h, label %.thread128

bb.h:                                             ; preds = %.lr.ph155
  %i.at = mul i64 %.013.i153, 10
  %i.au = zext nneg i32 %i.ar to i64
  %i.av = add i64 %i.at, %i.au                    ; 2 uses
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next169 to i32
  %exitcond171.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond171.not, label %._crit_edge156, label %.lr.ph155, !llvm.loop !53

._crit_edge156:                                   ; preds = %bb.h, %._crit_edge
  %.013.i.lcssa = phi i64 [ %i.o, %._crit_edge ], [ %i.av, %bb.h ]
  %i.aw = icmp ugt i64 %.013.i.lcssa, 9007199254740991
  br i1 %i.aw, label %.thread128, label %_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit

_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit: ; preds = %._crit_edge156
  %i.ax = load i64, ptr %2, align 8               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = zext nneg i32 %1 to i64                 ; 7 uses
  %i.ba = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.bb = xor i64 %i.ba, %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = load i64, ptr %i.bc, align 8            ; 3 uses
  %i.be = zext i64 %i.bb to i128
  %i.bf = zext i64 %i.bd to i128
  %i.bg = mul nuw i128 %i.bf, %i.be               ; 2 uses
  %i.bh = lshr i128 %i.bg, 64
  %i.bi = xor i128 %i.bh, %i.bg
  %i.bj = trunc i128 %i.bi to i64
  %i.bk = xor i64 %i.az, %i.bj
  %i.bl = xor i64 %i.bk, %i.ax                    ; 2 uses
  %i.bm = icmp ugt i32 %1, 3
  br i1 %i.bm, label %bb.i, label %bb.j, !prof !9

bb.i:                                             ; preds = %_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit
  %i.bn = getelementptr i8, ptr %0, i64 %i.az
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4     ; 2 uses
  %.0.copyload.i = load i32, ptr %0, align 1
  %i.bp = zext i32 %.0.copyload.i to i64
  %i.bq = shl nuw i64 %i.bp, 32
  %.0.copyload.i37 = load i32, ptr %i.bo, align 1
  %i.br = zext i32 %.0.copyload.i37 to i64
  %i.bs = or disjoint i64 %i.bq, %i.br
  %i.bt = and i64 %i.az, 24
  %i.bu = lshr i64 %i.az, 3
  %i.bv = lshr exact i64 %i.bt, %i.bu             ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv
  %.0.copyload.i38 = load i32, ptr %i.bw, align 1
  %i.bx = zext i32 %.0.copyload.i38 to i64
  %i.by = shl nuw i64 %i.bx, 32
  %i.bz = sub nsw i64 0, %i.bv
  %i.ca = getelementptr inbounds i8, ptr %i.bo, i64 %i.bz
  %.0.copyload.i39 = load i32, ptr %i.ca, align 1
  %i.cb = zext i32 %.0.copyload.i39 to i64
  %i.cc = or disjoint i64 %i.by, %i.cb
  %i.cd = xor i64 %i.cc, %i.bl
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36

bb.j:                                             ; preds = %_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit
  %i.ce = shl nuw nsw i64 %i.c, 56
  %i.cf = lshr i64 %i.az, 1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i64
  %i.cj = shl nuw nsw i64 %i.ci, 32
  %i.ck = or disjoint i64 %i.cj, %i.ce
  %i.cl = getelementptr i8, ptr %0, i64 %i.az
  %i.cm = getelementptr i8, ptr %i.cl, i64 -1
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = zext i8 %i.cn to i64
  %i.cp = or disjoint i64 %i.ck, %i.co
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36:  ; preds = %bb.i, %bb.j
  %.0101 = phi i64 [ %i.cd, %bb.i ], [ %i.bl, %bb.j ]
  %.0100 = phi i64 [ %i.bs, %bb.i ], [ %i.cp, %bb.j ]
  %i.cq = xor i64 %.0100, %i.bd
  %i.cr = zext i64 %i.cq to i128
  %i.cs = zext i64 %.0101 to i128
  %i.ct = mul nuw i128 %i.cr, %i.cs               ; 2 uses
  %i.cu = trunc i128 %i.ct to i64
  %i.cv = lshr i128 %i.ct, 64
  %3 = trunc nuw i128 %i.cv to i64
  %4 = xor i64 %i.az, %i.cu
  %i.cw = xor i64 %4, %i.ba
  %i.cx = xor i64 %i.bd, %3
  %i.cy = zext i64 %i.cw to i128
  %5 = zext i64 %i.cx to i128
  %i.cz = mul nuw i128 %5, %i.cy                  ; 2 uses
  %i.da = lshr i128 %i.cz, 64
  %i.db = xor i128 %i.da, %i.cz
  %i.dc = trunc i128 %i.db to i32
  %i.dd = and i32 %i.dc, 1073741823               ; 2 uses
  %i.de = icmp eq i32 %i.dd, 0
  %i.df = shl nuw i32 %i.dd, 2
  %i.dg = select i1 %i.de, i32 108, i32 %i.df     ; 3 uses
  %i.dh = icmp ult i32 %i.dg, 536870912
  %i.di = or i32 %i.dg, 536870912
  %spec.select = select i1 %i.dh, i32 %i.di, i32 %i.dg
  br label %bb.u

bb.k:                                             ; preds = %bb.b
  %i.dj = icmp ugt i32 %1, 16383
  br i1 %i.dj, label %bb.l, label %.thread128

bb.l:                                             ; preds = %bb.k
  %i.dk = shl i32 %1, 2
  %i.dl = or disjoint i32 %i.dk, 2
  br label %bb.u

.thread128:                                       ; preds = %.lr.ph, %.lr.ph155, %._crit_edge156, %bb.e, %bb.c, %bb.k, %bb.a
  %i.dm = load i64, ptr %2, align 8               ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.do = zext i32 %1 to i64                      ; 9 uses
  %i.dp = load i64, ptr %i.dn, align 8            ; 3 uses
  %i.dq = xor i64 %i.dp, %i.dm
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ds = load i64, ptr %i.dr, align 8            ; 5 uses
  %i.dt = zext i64 %i.dq to i128
  %i.du = zext i64 %i.ds to i128
  %i.dv = mul nuw i128 %i.du, %i.dt               ; 2 uses
  %i.dw = lshr i128 %i.dv, 64
  %i.dx = xor i128 %i.dw, %i.dv
  %i.dy = trunc i128 %i.dx to i64
  %i.dz = xor i64 %i.do, %i.dy
  %i.ea = xor i64 %i.dz, %i.dm                    ; 7 uses
  %i.eb = icmp ult i32 %1, 17
  br i1 %i.eb, label %bb.m, label %bb.q, !prof !9

bb.m:                                             ; preds = %.thread128
  %i.ec = icmp samesign ugt i32 %1, 3
  br i1 %i.ec, label %bb.n, label %bb.o, !prof !9

bb.n:                                             ; preds = %bb.m
  %i.ed = getelementptr i8, ptr %0, i64 %i.do
  %i.ee = getelementptr i8, ptr %i.ed, i64 -4     ; 2 uses
  %.0.copyload.i52 = load i32, ptr %0, align 1
  %i.ef = zext i32 %.0.copyload.i52 to i64
  %i.eg = shl nuw i64 %i.ef, 32
  %.0.copyload.i53 = load i32, ptr %i.ee, align 1
  %i.eh = zext i32 %.0.copyload.i53 to i64
  %i.ei = or disjoint i64 %i.eg, %i.eh
  %i.ej = and i64 %i.do, 24
  %i.ek = lshr i64 %i.do, 3
  %i.el = lshr exact i64 %i.ej, %i.ek             ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 %i.el
  %.0.copyload.i54 = load i32, ptr %i.em, align 1
  %i.en = zext i32 %.0.copyload.i54 to i64
  %i.eo = shl nuw i64 %i.en, 32
  %i.ep = sub nsw i64 0, %i.el
  %i.eq = getelementptr inbounds i8, ptr %i.ee, i64 %i.ep
  %.0.copyload.i55 = load i32, ptr %i.eq, align 1
  %i.er = zext i32 %.0.copyload.i55 to i64
  %i.es = or disjoint i64 %i.eo, %i.er
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

bb.o:                                             ; preds = %bb.m
  br i1 %.not, label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit, label %bb.p, !prof !5

bb.p:                                             ; preds = %bb.o
  %i.et = load i8, ptr %0, align 1
  %i.eu = zext i8 %i.et to i64
  %i.ev = shl nuw i64 %i.eu, 56
  %i.ew = lshr i64 %i.do, 1
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = zext i8 %i.ey to i64
  %i.fa = shl nuw nsw i64 %i.ez, 32
  %i.fb = or disjoint i64 %i.fa, %i.ev
  %i.fc = getelementptr i8, ptr %0, i64 %i.do
  %i.fd = getelementptr i8, ptr %i.fc, i64 -1
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = zext i8 %i.fe to i64
  %i.fg = or disjoint i64 %i.fb, %i.ff
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

bb.q:                                             ; preds = %.thread128
  %i.fh = icmp ugt i32 %1, 48
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fj = load i64, ptr %i.fi, align 8            ; 3 uses
  br i1 %i.fh, label %.preheader, label %.thread131, !prof !5

.preheader:                                       ; preds = %bb.q, %.preheader
  %.065.i = phi i64 [ %i.fs, %.preheader ], [ %i.ea, %bb.q ]
  %.063.i = phi ptr [ %i.gn, %.preheader ], [ %0, %bb.q ] ; 7 uses
  %.062.i = phi i64 [ %i.go, %.preheader ], [ %i.do, %bb.q ]
  %.061.i = phi i64 [ %i.gc, %.preheader ], [ %i.ea, %bb.q ]
  %.0.i = phi i64 [ %i.gm, %.preheader ], [ %i.ea, %bb.q ]
  %.0.copyload.i56 = load i64, ptr %.063.i, align 1
  %i.fk = xor i64 %.0.copyload.i56, %i.dp
  %i.fl = getelementptr inbounds nuw i8, ptr %.063.i, i64 8
  %.0.copyload.i57 = load i64, ptr %i.fl, align 1
  %i.fm = xor i64 %.0.copyload.i57, %.065.i
  %i.fn = zext i64 %i.fk to i128
  %i.fo = zext i64 %i.fm to i128
  %i.fp = mul nuw i128 %i.fo, %i.fn               ; 2 uses
  %i.fq = lshr i128 %i.fp, 64
  %i.fr = xor i128 %i.fq, %i.fp
  %i.fs = trunc i128 %i.fr to i64                 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.063.i, i64 16
  %.0.copyload.i58 = load i64, ptr %i.ft, align 1
  %i.fu = xor i64 %.0.copyload.i58, %i.ds
  %i.fv = getelementptr inbounds nuw i8, ptr %.063.i, i64 24
  %.0.copyload.i59 = load i64, ptr %i.fv, align 1
  %i.fw = xor i64 %.0.copyload.i59, %.061.i
  %i.fx = zext i64 %i.fu to i128
  %i.fy = zext i64 %i.fw to i128
  %i.fz = mul nuw i128 %i.fy, %i.fx               ; 2 uses
  %i.ga = lshr i128 %i.fz, 64
  %i.gb = xor i128 %i.ga, %i.fz
  %i.gc = trunc i128 %i.gb to i64                 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.063.i, i64 32
  %.0.copyload.i60 = load i64, ptr %i.gd, align 1
  %i.ge = xor i64 %i.fj, %.0.copyload.i60
  %i.gf = getelementptr inbounds nuw i8, ptr %.063.i, i64 40
  %.0.copyload.i61 = load i64, ptr %i.gf, align 1
  %i.gg = xor i64 %.0.copyload.i61, %.0.i
  %i.gh = zext i64 %i.ge to i128
  %i.gi = zext i64 %i.gg to i128
  %i.gj = mul nuw i128 %i.gi, %i.gh               ; 2 uses
  %i.gk = lshr i128 %i.gj, 64
  %i.gl = xor i128 %i.gk, %i.gj
  %i.gm = trunc i128 %i.gl to i64                 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.063.i, i64 48 ; 3 uses
  %i.go = add i64 %.062.i, -48                    ; 5 uses
  %i.gp = icmp ugt i64 %i.go, 47
  br i1 %i.gp, label %.preheader, label %bb.r, !prof !9, !llvm.loop !54

bb.r:                                             ; preds = %.preheader
  %i.gq = xor i64 %i.gc, %i.fs
  %i.gr = xor i64 %i.gq, %i.gm                    ; 2 uses
  %i.gs = icmp samesign ugt i64 %i.go, 16
  br i1 %i.gs, label %.thread131, label %bb.t

.thread131:                                       ; preds = %bb.q, %bb.r
  %.1.i139 = phi i64 [ %i.go, %bb.r ], [ %i.do, %bb.q ] ; 3 uses
  %.164.i137 = phi ptr [ %i.gn, %bb.r ], [ %0, %bb.q ] ; 6 uses
  %.166.i135 = phi i64 [ %i.gr, %bb.r ], [ %i.ea, %bb.q ]
  %.0.copyload.i62 = load i64, ptr %.164.i137, align 1
  %i.gt = xor i64 %i.fj, %.0.copyload.i62
  %i.gu = getelementptr inbounds nuw i8, ptr %.164.i137, i64 8
  %.0.copyload.i63 = load i64, ptr %i.gu, align 1
  %i.gv = xor i64 %.166.i135, %.0.copyload.i63
  %i.gw = xor i64 %i.gv, %i.ds
  %i.gx = zext i64 %i.gt to i128
  %i.gy = zext i64 %i.gw to i128
  %i.gz = mul nuw i128 %i.gy, %i.gx               ; 2 uses
  %i.ha = lshr i128 %i.gz, 64
  %i.hb = xor i128 %i.ha, %i.gz
  %i.hc = trunc i128 %i.hb to i64                 ; 2 uses
  %i.hd = icmp samesign ugt i64 %.1.i139, 32
  br i1 %i.hd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread131
  %i.he = getelementptr inbounds nuw i8, ptr %.164.i137, i64 16
  %.0.copyload.i64 = load i64, ptr %i.he, align 1
  %i.hf = xor i64 %.0.copyload.i64, %i.fj
  %i.hg = getelementptr inbounds nuw i8, ptr %.164.i137, i64 24
  %.0.copyload.i65 = load i64, ptr %i.hg, align 1
  %i.hh = xor i64 %.0.copyload.i65, %i.hc
  %i.hi = zext i64 %i.hf to i128
  %i.hj = zext i64 %i.hh to i128
  %i.hk = mul nuw i128 %i.hj, %i.hi               ; 2 uses
  %i.hl = lshr i128 %i.hk, 64
  %i.hm = xor i128 %i.hl, %i.hk
  %i.hn = trunc i128 %i.hm to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread131, %bb.r
  %.1.i138 = phi i64 [ %.1.i139, %bb.s ], [ %.1.i139, %.thread131 ], [ %i.go, %bb.r ]
  %.164.i136 = phi ptr [ %.164.i137, %bb.s ], [ %.164.i137, %.thread131 ], [ %i.gn, %bb.r ]
  %.2.i24 = phi i64 [ %i.hn, %bb.s ], [ %i.hc, %.thread131 ], [ %i.gr, %bb.r ]
  %i.ho = getelementptr i8, ptr %.164.i136, i64 %.1.i138 ; 2 uses
  %i.hp = getelementptr i8, ptr %i.ho, i64 -16
  %.0.copyload.i66 = load i64, ptr %i.hp, align 1
  %i.hq = getelementptr i8, ptr %i.ho, i64 -8
  %.0.copyload.i67 = load i64, ptr %i.hq, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit:    ; preds = %bb.o, %bb.n, %bb.p, %bb.t
  %.0103 = phi i64 [ %i.es, %bb.n ], [ %.0.copyload.i67, %bb.t ], [ 0, %bb.p ], [ 0, %bb.o ]
  %.0102 = phi i64 [ %i.ei, %bb.n ], [ %.0.copyload.i66, %bb.t ], [ %i.fg, %bb.p ], [ 0, %bb.o ]
  %.3.i = phi i64 [ %i.ea, %bb.n ], [ %.2.i24, %bb.t ], [ %i.ea, %bb.p ], [ %i.ea, %bb.o ]
  %i.hr = xor i64 %.0102, %i.ds
  %i.hs = xor i64 %.3.i, %.0103
  %i.ht = zext i64 %i.hr to i128
  %i.hu = zext i64 %i.hs to i128
  %i.hv = mul nuw i128 %i.hu, %i.ht               ; 2 uses
  %i.hw = trunc i128 %i.hv to i64
  %i.hx = lshr i128 %i.hv, 64
  %6 = trunc nuw i128 %i.hx to i64
  %7 = xor i64 %i.do, %i.hw
  %i.hy = xor i64 %7, %i.dp
  %i.hz = xor i64 %i.ds, %6
  %i.ia = zext i64 %i.hy to i128
  %8 = zext i64 %i.hz to i128
  %i.ib = mul nuw i128 %8, %i.ia                  ; 2 uses
  %i.ic = lshr i128 %i.ib, 64
  %i.id = xor i128 %i.ic, %i.ib
  %i.ie = trunc i128 %i.id to i32
  %i.if = and i32 %i.ie, 1073741823               ; 2 uses
  %i.ig = icmp eq i32 %i.if, 0
  %i.ih = shl nuw i32 %i.if, 2
  %i.ii = or disjoint i32 %i.ih, 2
  %i.ij = select i1 %i.ig, i32 110, i32 %i.ii
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.thread, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit, %bb.l
  %.1 = phi i32 [ %i.ij, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit ], [ %i.dl, %bb.l ], [ %spec.select, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36 ], [ %i.an, %._crit_edge.thread ]
  ret i32 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal19SequentialStringKeyIhED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #20
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringHasher20HashSequentialStringItEEjPKT_jNS0_8HashSeedE(ptr noundef %0, i32 noundef %1, ptr %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.thread133.thread206, label %bb.b

.thread133.thread206:                             ; preds = %bb.a
  %i.a = load i64, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %._crit_edge168

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %1, 17
  br i1 %i.c, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.d = load i16, ptr %0, align 2                ; 3 uses
  %i.e = zext i16 %i.d to i64
  %i.f = add nsw i64 %i.e, -48                    ; 5 uses
  %i.g = icmp ugt i64 %i.f, 9
  %i.h = lshr i16 %i.d, 8
  %i.i = zext nneg i16 %i.h to i64
  br i1 %i.g, label %.lr.ph167.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not147 = icmp eq i32 %1, 1
  br i1 %.not147, label %._crit_edge.thread, label %.lr.ph167.preheader

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i32 %1, 10
  br i1 %i.k, label %.lr.ph162, label %.preheader148

.preheader148:                                    ; preds = %bb.f
  %.not169 = icmp eq i32 %1, 1
  br i1 %.not169, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader148
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.096157 = phi i64 [ %i.f, %.lr.ph.preheader ], [ %i.s, %bb.g ]
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32
  %i.o = add nsw i32 %i.n, -48                    ; 2 uses
  %i.p = icmp ugt i32 %i.o, 9
  br i1 %i.p, label %.lr.ph167.preheader, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.q = mul i64 %.096157, 10
  %i.r = zext nneg i32 %i.o to i64
  %i.s = add i64 %i.q, %i.r                       ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !55

._crit_edge:                                      ; preds = %bb.g
  %i.t = icmp ugt i64 %i.s, 4294967294
  br i1 %i.t, label %._crit_edge163, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader148, %bb.e, %._crit_edge
  %.2.ph = phi i64 [ %i.s, %._crit_edge ], [ 0, %bb.e ], [ %i.f, %.preheader148 ]
  %i.u = trunc nuw i64 %.2.ph to i32              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load i32, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = lshr i32 %i.u, 12
  %i.ac = xor i32 %i.ab, %i.u
  %i.ad = mul i32 %i.ac, %i.w                     ; 2 uses
  %i.ae = lshr i32 %i.ad, 12
  %i.af = and i32 %i.ae, 4095
  %i.ag = xor i32 %i.af, %i.ad
  %i.ah = mul i32 %i.ag, %i.y                     ; 2 uses
  %i.ai = lshr i32 %i.ah, 12
  %i.aj = and i32 %i.ai, 4095
  %i.ak = xor i32 %i.aj, %i.ah
  %i.al = mul i32 %i.ak, %i.aa
  %i.am = and i32 %i.al, 16777215                 ; 2 uses
  %i.an = lshr i32 %i.am, 12
  %i.ao = xor i32 %i.an, %i.am
  %i.ap = shl nuw nsw i32 %i.ao, 2
  %i.aq = shl nuw nsw i32 %1, 26
  %i.ar = or disjoint i32 %i.ap, %i.aq
  br label %bb.z

.lr.ph162:                                        ; preds = %bb.f, %bb.h
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %bb.h ], [ 1, %bb.f ] ; 2 uses
  %.013.i160 = phi i64 [ %i.az, %bb.h ], [ %i.f, %bb.f ]
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv180
  %i.at = load i16, ptr %i.as, align 2
  %i.au = zext i16 %i.at to i32
  %i.av = add nsw i32 %i.au, -48                  ; 2 uses
  %i.aw = icmp ult i32 %i.av, 10
  br i1 %i.aw, label %bb.h, label %.lr.ph167.preheader

bb.h:                                             ; preds = %.lr.ph162
  %i.ax = mul i64 %.013.i160, 10
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = add i64 %i.ax, %i.ay                    ; 2 uses
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next181 to i32
  %exitcond183.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond183.not, label %._crit_edge163, label %.lr.ph162, !llvm.loop !56

._crit_edge163:                                   ; preds = %bb.h, %._crit_edge
  %.013.i.lcssa = phi i64 [ %i.s, %._crit_edge ], [ %i.az, %bb.h ]
  %i.ba = icmp ugt i64 %.013.i.lcssa, 9007199254740991
  br i1 %i.ba, label %.lr.ph167.preheader, label %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit

_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit: ; preds = %._crit_edge163
  %i.bb = load i64, ptr %2, align 8               ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %wide.trip.count187 = zext nneg i32 %1 to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %bb.k, label %bb.j, !llvm.loop !57

bb.j:                                             ; preds = %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit, %bb.i
  %indvars.iv184 = phi i64 [ 0, %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit ], [ %indvars.iv.next185, %bb.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv184
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = icmp ugt i16 %i.be, 255
  br i1 %i.bf, label %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41, label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.bg = tail call noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.bb, ptr noundef nonnull %i.bc) #15
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit

_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41:   ; preds = %bb.j
  %i.bh = shl nuw nsw i32 %1, 1
  %i.bi = zext nneg i32 %i.bh to i64              ; 7 uses
  %i.bj = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.bk = xor i64 %i.bj, %i.bb
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bm = load i64, ptr %i.bl, align 8            ; 4 uses
  %i.bn = zext i64 %i.bk to i128
  %i.bo = zext i64 %i.bm to i128
  %i.bp = mul nuw i128 %i.bo, %i.bn               ; 2 uses
  %i.bq = lshr i128 %i.bp, 64
  %i.br = xor i128 %i.bq, %i.bp
  %i.bs = trunc i128 %i.br to i64
  %i.bt = xor i64 %i.bi, %i.bs
  %i.bu = xor i64 %i.bt, %i.bb                    ; 3 uses
  %i.bv = icmp ult i32 %1, 9
  br i1 %i.bv, label %bb.l, label %.thread, !prof !9

bb.l:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41
  %.not146 = icmp eq i32 %1, 1
  br i1 %.not146, label %bb.n, label %bb.m, !prof !5

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr i8, ptr %0, i64 %i.bi
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4     ; 2 uses
  %.0.copyload.i = load i32, ptr %0, align 2
  %i.by = zext i32 %.0.copyload.i to i64
  %i.bz = shl nuw i64 %i.by, 32
  %.0.copyload.i42 = load i32, ptr %i.bx, align 1
  %i.ca = zext i32 %.0.copyload.i42 to i64
  %i.cb = or disjoint i64 %i.bz, %i.ca
  %i.cc = and i64 %i.bi, 24
  %i.cd = lshr i64 %i.bi, 3
  %i.ce = lshr exact i64 %i.cc, %i.cd             ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce
  %.0.copyload.i43 = load i32, ptr %i.cf, align 1
  %i.cg = zext i32 %.0.copyload.i43 to i64
  %i.ch = shl nuw i64 %i.cg, 32
  %i.ci = sub nsw i64 0, %i.ce
  %i.cj = getelementptr inbounds i8, ptr %i.bx, i64 %i.ci
  %.0.copyload.i44 = load i32, ptr %i.cj, align 1
  %i.ck = zext i32 %.0.copyload.i44 to i64
  %i.cl = or disjoint i64 %i.ch, %i.ck
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i

bb.n:                                             ; preds = %bb.l
  %i.cm = and i16 %i.d, 255
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = shl nuw i64 %i.cn, 56
  %i.cp = shl nuw nsw i64 %i.i, 32
  %i.cq = or disjoint i64 %i.cp, %i.co
  %i.cr = getelementptr i8, ptr %0, i64 %i.bi
  %i.cs = getelementptr i8, ptr %i.cr, i64 -1
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = zext i8 %i.ct to i64
  %i.cv = or disjoint i64 %i.cq, %i.cu
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i

.thread:                                          ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41
  %.0.copyload.i51 = load i64, ptr %0, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = xor i64 %i.cx, %.0.copyload.i51
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.copyload.i52 = load i64, ptr %i.cz, align 2
  %i.da = xor i64 %i.bm, %.0.copyload.i52
  %i.db = xor i64 %i.da, %i.bu
  %i.dc = zext i64 %i.cy to i128
  %i.dd = zext i64 %i.db to i128
  %i.de = mul nuw i128 %i.dd, %i.dc               ; 2 uses
  %i.df = lshr i128 %i.de, 64
  %i.dg = xor i128 %i.df, %i.de
  %i.dh = trunc i128 %i.dg to i64
  %i.di = getelementptr i8, ptr %0, i64 %i.bi     ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 -16
  %.0.copyload.i55 = load i64, ptr %i.dj, align 1
  %i.dk = getelementptr i8, ptr %i.di, i64 -8
  %.0.copyload.i56 = load i64, ptr %i.dk, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i:  ; preds = %.thread, %bb.n, %bb.m
  %.0108 = phi i64 [ %i.cl, %bb.m ], [ %.0.copyload.i56, %.thread ], [ 0, %bb.n ]
  %.0107 = phi i64 [ %i.cb, %bb.m ], [ %.0.copyload.i55, %.thread ], [ %i.cv, %bb.n ]
  %.3.i.i = phi i64 [ %i.bu, %bb.m ], [ %i.dh, %.thread ], [ %i.bu, %bb.n ]
  %i.dl = xor i64 %.0107, %i.bm
  %i.dm = xor i64 %.3.i.i, %.0108
  %i.dn = zext i64 %i.dl to i128
  %i.do = zext i64 %i.dm to i128
  %i.dp = mul nuw i128 %i.do, %i.dn               ; 2 uses
  %i.dq = trunc i128 %i.dp to i64
  %i.dr = lshr i128 %i.dp, 64
  %3 = trunc nuw i128 %i.dr to i64
  %4 = xor i64 %i.bi, %i.dq
  %i.ds = xor i64 %4, %i.bj
  %i.dt = xor i64 %i.bm, %3
  %i.du = zext i64 %i.ds to i128
  %5 = zext i64 %i.dt to i128
  %i.dv = mul nuw i128 %5, %i.du                  ; 2 uses
  %i.dw = lshr i128 %i.dv, 64
  %i.dx = xor i128 %i.dw, %i.dv
  %i.dy = trunc i128 %i.dx to i64
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit

_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit: ; preds = %bb.k, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i
  %.0.i = phi i64 [ %i.bg, %bb.k ], [ %i.dy, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i ]
  %i.dz = trunc i64 %.0.i to i32
  %i.ea = and i32 %i.dz, 1073741823               ; 2 uses
  %i.eb = icmp eq i32 %i.ea, 0
  %i.ec = shl nuw i32 %i.ea, 2
  %i.ed = select i1 %i.eb, i32 108, i32 %i.ec     ; 3 uses
  %i.ee = icmp ult i32 %i.ed, 536870912
  %i.ef = or i32 %i.ed, 536870912
  %spec.select = select i1 %i.ee, i32 %i.ef, i32 %i.ed
  br label %bb.z

bb.o:                                             ; preds = %bb.b
  %i.eg = icmp ugt i32 %1, 16383
  br i1 %i.eg, label %bb.p, label %.lr.ph167.preheader

bb.p:                                             ; preds = %bb.o
  %i.eh = shl i32 %1, 2
  %i.ei = or disjoint i32 %i.eh, 2
  br label %bb.z

.lr.ph167.preheader:                              ; preds = %.lr.ph, %.lr.ph162, %._crit_edge163, %bb.o, %bb.c, %bb.e
  %i.ej = load i64, ptr %2, align 8               ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %wide.trip.count192 = zext i32 %1 to i64
  br label %.lr.ph167

bb.q:                                             ; preds = %.lr.ph167
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %._crit_edge168, label %.lr.ph167, !llvm.loop !57

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %bb.q
  %indvars.iv189 = phi i64 [ 0, %.lr.ph167.preheader ], [ %indvars.iv.next190, %bb.q ] ; 2 uses
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv189
  %i.em = load i16, ptr %i.el, align 2
  %i.en = icmp ugt i16 %i.em, 255
  br i1 %i.en, label %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit, label %bb.q

._crit_edge168:                                   ; preds = %bb.q, %.thread133.thread206
  %i.eo = phi ptr [ %i.b, %.thread133.thread206 ], [ %i.ek, %bb.q ]
  %i.ep = phi i64 [ %i.a, %.thread133.thread206 ], [ %i.ej, %bb.q ]
  %i.eq = tail call noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef %0, i32 noundef %1, i64 noundef %i.ep, ptr noundef nonnull %i.eo) #15
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37

_ZN2v88internal6detail10IsOnly8BitEPKtj.exit:     ; preds = %.lr.ph167
  %i.er = shl i32 %1, 1                           ; 5 uses
  %i.es = zext i32 %i.er to i64                   ; 9 uses
  %i.et = load i64, ptr %i.ek, align 8            ; 3 uses
  %i.eu = xor i64 %i.et, %i.ej
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ew = load i64, ptr %i.ev, align 8            ; 5 uses
  %i.ex = zext i64 %i.eu to i128
  %i.ey = zext i64 %i.ew to i128
  %i.ez = mul nuw i128 %i.ey, %i.ex               ; 2 uses
  %i.fa = lshr i128 %i.ez, 64
  %i.fb = xor i128 %i.fa, %i.ez
  %i.fc = trunc i128 %i.fb to i64
  %i.fd = xor i64 %i.es, %i.fc
  %i.fe = xor i64 %i.fd, %i.ej                    ; 7 uses
  %i.ff = icmp ult i32 %i.er, 17
  br i1 %i.ff, label %bb.r, label %bb.v, !prof !9

bb.r:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit
  %i.fg = icmp samesign ugt i32 %i.er, 3
  br i1 %i.fg, label %bb.s, label %bb.t, !prof !9

bb.s:                                             ; preds = %bb.r
  %i.fh = getelementptr i8, ptr %0, i64 %i.es
  %i.fi = getelementptr i8, ptr %i.fh, i64 -4     ; 2 uses
  %.0.copyload.i57 = load i32, ptr %0, align 1
  %i.fj = zext i32 %.0.copyload.i57 to i64
  %i.fk = shl nuw i64 %i.fj, 32
  %.0.copyload.i58 = load i32, ptr %i.fi, align 1
  %i.fl = zext i32 %.0.copyload.i58 to i64
  %i.fm = or disjoint i64 %i.fk, %i.fl
  %i.fn = and i64 %i.es, 24
  %i.fo = lshr i64 %i.es, 3
  %i.fp = lshr exact i64 %i.fn, %i.fo             ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 %i.fp
  %.0.copyload.i59 = load i32, ptr %i.fq, align 1
  %i.fr = zext i32 %.0.copyload.i59 to i64
  %i.fs = shl nuw i64 %i.fr, 32
  %i.ft = sub nsw i64 0, %i.fp
  %i.fu = getelementptr inbounds i8, ptr %i.fi, i64 %i.ft
  %.0.copyload.i60 = load i32, ptr %i.fu, align 1
  %i.fv = zext i32 %.0.copyload.i60 to i64
  %i.fw = or disjoint i64 %i.fs, %i.fv
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

bb.t:                                             ; preds = %bb.r
  %.not.i.i36 = icmp eq i32 %i.er, 0
  br i1 %.not.i.i36, label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28, label %bb.u, !prof !5

bb.u:                                             ; preds = %bb.t
  %i.fx = load i8, ptr %0, align 1
  %i.fy = zext i8 %i.fx to i64
  %i.fz = shl nuw i64 %i.fy, 56
  %i.ga = lshr exact i64 %i.es, 1
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1
  %i.gd = zext i8 %i.gc to i64
  %i.ge = shl nuw nsw i64 %i.gd, 32
  %i.gf = or disjoint i64 %i.ge, %i.fz
  %i.gg = getelementptr i8, ptr %0, i64 %i.es
  %i.gh = getelementptr i8, ptr %i.gg, i64 -1
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = zext i8 %i.gi to i64
  %i.gk = or disjoint i64 %i.gf, %i.gj
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

bb.v:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit
  %i.gl = icmp ugt i32 %i.er, 48
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gn = load i64, ptr %i.gm, align 8            ; 3 uses
  br i1 %i.gl, label %.preheader, label %.thread137, !prof !5

.preheader:                                       ; preds = %bb.v, %.preheader
  %.065.i.i31 = phi i64 [ %i.gw, %.preheader ], [ %i.fe, %bb.v ]
  %.063.i.i32 = phi ptr [ %i.hr, %.preheader ], [ %0, %bb.v ] ; 7 uses
  %.062.i.i33 = phi i64 [ %i.hs, %.preheader ], [ %i.es, %bb.v ]
  %.061.i.i34 = phi i64 [ %i.hg, %.preheader ], [ %i.fe, %bb.v ]
  %.0.i.i35 = phi i64 [ %i.hq, %.preheader ], [ %i.fe, %bb.v ]
  %.0.copyload.i61 = load i64, ptr %.063.i.i32, align 1
  %i.go = xor i64 %.0.copyload.i61, %i.et
  %i.gp = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 8
  %.0.copyload.i62 = load i64, ptr %i.gp, align 1
  %i.gq = xor i64 %.0.copyload.i62, %.065.i.i31
  %i.gr = zext i64 %i.go to i128
  %i.gs = zext i64 %i.gq to i128
  %i.gt = mul nuw i128 %i.gs, %i.gr               ; 2 uses
  %i.gu = lshr i128 %i.gt, 64
  %i.gv = xor i128 %i.gu, %i.gt
  %i.gw = trunc i128 %i.gv to i64                 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 16
  %.0.copyload.i63 = load i64, ptr %i.gx, align 1
  %i.gy = xor i64 %.0.copyload.i63, %i.ew
  %i.gz = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 24
  %.0.copyload.i64 = load i64, ptr %i.gz, align 1
  %i.ha = xor i64 %.0.copyload.i64, %.061.i.i34
  %i.hb = zext i64 %i.gy to i128
  %i.hc = zext i64 %i.ha to i128
  %i.hd = mul nuw i128 %i.hc, %i.hb               ; 2 uses
  %i.he = lshr i128 %i.hd, 64
  %i.hf = xor i128 %i.he, %i.hd
  %i.hg = trunc i128 %i.hf to i64                 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 32
  %.0.copyload.i65 = load i64, ptr %i.hh, align 1
  %i.hi = xor i64 %i.gn, %.0.copyload.i65
  %i.hj = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 40
  %.0.copyload.i66 = load i64, ptr %i.hj, align 1
  %i.hk = xor i64 %.0.copyload.i66, %.0.i.i35
  %i.hl = zext i64 %i.hi to i128
  %i.hm = zext i64 %i.hk to i128
  %i.hn = mul nuw i128 %i.hm, %i.hl               ; 2 uses
  %i.ho = lshr i128 %i.hn, 64
  %i.hp = xor i128 %i.ho, %i.hn
  %i.hq = trunc i128 %i.hp to i64                 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 48 ; 3 uses
  %i.hs = add i64 %.062.i.i33, -48                ; 5 uses
  %i.ht = icmp ugt i64 %i.hs, 47
  br i1 %i.ht, label %.preheader, label %bb.w, !prof !9, !llvm.loop !54

bb.w:                                             ; preds = %.preheader
  %i.hu = xor i64 %i.hg, %i.gw
  %i.hv = xor i64 %i.hu, %i.hq                    ; 2 uses
  %i.hw = icmp samesign ugt i64 %i.hs, 16
  br i1 %i.hw, label %.thread137, label %bb.y

.thread137:                                       ; preds = %bb.v, %bb.w
  %.1.i.i26145 = phi i64 [ %i.hs, %bb.w ], [ %i.es, %bb.v ] ; 3 uses
  %.164.i.i25143 = phi ptr [ %i.hr, %bb.w ], [ %0, %bb.v ] ; 6 uses
  %.166.i.i24141 = phi i64 [ %i.hv, %bb.w ], [ %i.fe, %bb.v ]
  %.0.copyload.i67 = load i64, ptr %.164.i.i25143, align 1
  %i.hx = xor i64 %i.gn, %.0.copyload.i67
  %i.hy = getelementptr inbounds nuw i8, ptr %.164.i.i25143, i64 8
  %.0.copyload.i68 = load i64, ptr %i.hy, align 1
  %i.hz = xor i64 %.166.i.i24141, %.0.copyload.i68
  %i.ia = xor i64 %i.hz, %i.ew
  %i.ib = zext i64 %i.hx to i128
  %i.ic = zext i64 %i.ia to i128
  %i.id = mul nuw i128 %i.ic, %i.ib               ; 2 uses
  %i.ie = lshr i128 %i.id, 64
  %i.if = xor i128 %i.ie, %i.id
  %i.ig = trunc i128 %i.if to i64                 ; 2 uses
  %i.ih = icmp samesign ugt i64 %.1.i.i26145, 32
  br i1 %i.ih, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread137
  %i.ii = getelementptr inbounds nuw i8, ptr %.164.i.i25143, i64 16
  %.0.copyload.i69 = load i64, ptr %i.ii, align 1
  %i.ij = xor i64 %.0.copyload.i69, %i.gn
  %i.ik = getelementptr inbounds nuw i8, ptr %.164.i.i25143, i64 24
  %.0.copyload.i70 = load i64, ptr %i.ik, align 1
  %i.il = xor i64 %.0.copyload.i70, %i.ig
  %i.im = zext i64 %i.ij to i128
  %i.in = zext i64 %i.il to i128
  %i.io = mul nuw i128 %i.in, %i.im               ; 2 uses
  %i.ip = lshr i128 %i.io, 64
  %i.iq = xor i128 %i.ip, %i.io
  %i.ir = trunc i128 %i.iq to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread137, %bb.w
  %.1.i.i26144 = phi i64 [ %.1.i.i26145, %bb.x ], [ %.1.i.i26145, %.thread137 ], [ %i.hs, %bb.w ]
  %.164.i.i25142 = phi ptr [ %.164.i.i25143, %bb.x ], [ %.164.i.i25143, %.thread137 ], [ %i.hr, %bb.w ]
  %.2.i.i27 = phi i64 [ %i.ir, %bb.x ], [ %i.ig, %.thread137 ], [ %i.hv, %bb.w ]
  %i.is = getelementptr i8, ptr %.164.i.i25142, i64 %.1.i.i26144 ; 2 uses
  %i.it = getelementptr i8, ptr %i.is, i64 -16
  %.0.copyload.i71 = load i64, ptr %i.it, align 1
  %i.iu = getelementptr i8, ptr %i.is, i64 -8
  %.0.copyload.i72 = load i64, ptr %i.iu, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28: ; preds = %bb.t, %bb.y, %bb.u, %bb.s
  %.0106 = phi i64 [ %i.fw, %bb.s ], [ %.0.copyload.i72, %bb.y ], [ 0, %bb.u ], [ 0, %bb.t ]
  %.0105 = phi i64 [ %i.fm, %bb.s ], [ %.0.copyload.i71, %bb.y ], [ %i.gk, %bb.u ], [ 0, %bb.t ]
  %.3.i.i29 = phi i64 [ %i.fe, %bb.s ], [ %.2.i.i27, %bb.y ], [ %i.fe, %bb.u ], [ %i.fe, %bb.t ]
  %i.iv = xor i64 %.0105, %i.ew
  %i.iw = xor i64 %.3.i.i29, %.0106
  %i.ix = zext i64 %i.iv to i128
  %i.iy = zext i64 %i.iw to i128
  %i.iz = mul nuw i128 %i.iy, %i.ix               ; 2 uses
  %i.ja = trunc i128 %i.iz to i64
  %i.jb = lshr i128 %i.iz, 64
  %6 = trunc nuw i128 %i.jb to i64
  %7 = xor i64 %i.es, %i.ja
  %i.jc = xor i64 %7, %i.et
  %i.jd = xor i64 %i.ew, %6
  %i.je = zext i64 %i.jc to i128
  %8 = zext i64 %i.jd to i128
  %i.jf = mul nuw i128 %8, %i.je                  ; 2 uses
  %i.jg = lshr i128 %i.jf, 64
  %i.jh = xor i128 %i.jg, %i.jf
  %i.ji = trunc i128 %i.jh to i64
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37

_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37: ; preds = %._crit_edge168, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28
  %.0.i30 = phi i64 [ %i.eq, %._crit_edge168 ], [ %i.ji, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28 ]
  %i.jj = trunc i64 %.0.i30 to i32
  %i.jk = and i32 %i.jj, 1073741823               ; 2 uses
  %i.jl = icmp eq i32 %i.jk, 0
  %i.jm = shl nuw i32 %i.jk, 2
  %i.jn = or disjoint i32 %i.jm, 2
  %i.jo = select i1 %i.jl, i32 110, i32 %i.jn
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.thread, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37, %bb.p
  %.1 = phi i32 [ %i.jo, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37 ], [ %i.ei, %bb.p ], [ %spec.select, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit ], [ %i.ar, %._crit_edge.thread ]
  ret i32 %.1
}

declare noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14StringTableKeyD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal19SequentialStringKeyItED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE8AllocateINS0_12LocalIsolateEEENS0_6HandleIS2_EEPT_iPSt8optionalINS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSE_2EEEEENS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl nsw i32 %1, 3
  %i.b = add i32 %i.a, 16                         ; 3 uses
  %i.c = tail call i64 @_ZN2v88internal12LocalFactory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.b, i8 noundef zeroext %3, i8 noundef zeroext 0, i8 %4) #15 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq i8 %3, 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 2788
  %i.h = load i32, ptr %i.g, align 4
  %.0.i.i14 = select i1 %i.f, i32 %i.h, i32 131072
  %i.i = icmp sgt i32 %i.b, %.0.i.i14
  %i.j = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1222), align 2, !range !6
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond.i = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit

bb.b:                                             ; preds = %bb.a
  %i.l = and i64 %i.c, -262144
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = load atomic ptr, ptr %i.p seq_cst, align 8
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.c, label %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #17
  unreachable

_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  %i.s = sext i32 %i.b to i64
  %i.t = add nsw i64 %i.s, 131064
  %i.u = lshr i64 %i.t, 17
  store i64 %i.u, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  store atomic i64 0, ptr %i.v seq_cst, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit

_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit: ; preds = %bb.a, %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 80
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.c, -1
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  store atomic volatile i64 %i.x, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = sext i32 %1 to i64
  %i.ac = shl nsw i64 %i.ab, 32
  store atomic volatile i64 %i.ac, ptr %i.aa monotonic, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !range !6, !noundef !7
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit
  %i.ag = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.d, i64 noundef %i.c) #15
  br label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit

bb.e:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8            ; 5 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ai) #15
  %.pre = load ptr, ptr %i.ai, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = phi ptr [ %.pre, %bb.f ], [ %i.aj, %bb.e ]
  %.0.i.i = phi ptr [ %i.an, %bb.f ], [ %i.aj, %bb.e ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ap, ptr %i.ai, align 8
  store i64 %i.c, ptr %.0.i.i, align 8
  br label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit

_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit: ; preds = %bb.d, %bb.g
  %.012.i.i = phi ptr [ %i.ag, %bb.d ], [ %.0.i.i, %bb.g ]
  ret ptr %.012.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal15TaggedArrayBaseINS0_17TrustedFixedArrayENS0_17TrustedArrayShapeENS0_19TrustedObjectLayoutEE8AllocateINS0_12LocalIsolateEEENS0_6HandleIS2_EEPT_iPSt8optionalINS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSE_2EEEEENS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl nsw i32 %1, 3
  %i.b = add i32 %i.a, 16                         ; 3 uses
  %i.c = tail call i64 @_ZN2v88internal12LocalFactory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.b, i8 noundef zeroext %3, i8 noundef zeroext 0, i8 %4) #15 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq i8 %3, 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 2788
  %i.h = load i32, ptr %i.g, align 4
  %.0.i.i14 = select i1 %i.f, i32 %i.h, i32 131072
  %i.i = icmp sgt i32 %i.b, %.0.i.i14
  %i.j = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1222), align 2, !range !6
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond.i = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit

bb.b:                                             ; preds = %bb.a
  %i.l = and i64 %i.c, -262144
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = load atomic ptr, ptr %i.p seq_cst, align 8
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.c, label %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #17
  unreachable

_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  %i.s = sext i32 %i.b to i64
  %i.t = add nsw i64 %i.s, 131064
  %i.u = lshr i64 %i.t, 17
  store i64 %i.u, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  store atomic i64 0, ptr %i.v seq_cst, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit

_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit: ; preds = %bb.a, %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 848
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.c, -1
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  store atomic volatile i64 %i.x, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = sext i32 %1 to i64
  %i.ac = shl nsw i64 %i.ab, 32
  store atomic volatile i64 %i.ac, ptr %i.aa monotonic, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !range !6, !noundef !7
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit
  %i.ag = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.d, i64 noundef %i.c) #15
  br label %_ZN2v88internal6HandleINS0_17TrustedFixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit

bb.e:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8            ; 5 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ai) #15
end_hunk_2
