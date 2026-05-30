inline.NumInlined: 1787
inline.NumDeleted: 887
begin_hunk_0_@_ZN2v88internal14FeedbackVector19SetOptimizedOsrCodeEPNS0_7IsolateENS0_12FeedbackSlotENS0_6TaggedINS0_4CodeEEE:bb.a
  %i.b = sext i32 %i.a to i64
  %i.c = add nsw i64 %i.b, 47                     ; 4 uses
  %i.d = add i64 %.sroa.0.0.copyload.i.i.i, %i.c
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8 ; 2 uses
  %i.g = and i64 %i.f, 4294967295
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i64 %i.f, -3
  %i.j = add i64 %i.i, 7
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k acquire, align 8
  %i.m = add i64 %i.l, 51
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load atomic volatile i32, ptr %i.n monotonic, align 4
  %i.p = and i32 %i.o, 64
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %_ZNRSt8optionalIN2v88internal6TaggedINS1_4CodeEEEE5valueEv.exit, label %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.b
  %.sroa.04.0.copyload.i.i.i = load i64, ptr %0, align 8
  %i.q = add i64 %.sroa.04.0.copyload.i.i.i, %i.c
  %i.r = inttoptr i64 %i.q to ptr
  store atomic volatile i64 3, ptr %i.r monotonic, align 8
  br label %.critedge

_ZNRSt8optionalIN2v88internal6TaggedINS1_4CodeEEEE5valueEv.exit: ; preds = %bb.b
  %i.s = load atomic volatile i32, ptr %i.n monotonic, align 4
  %i.t = trunc i32 %i.s to i8
  %i.u = and i8 %i.t, 15
  %i.v = add i64 %3, 51
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i32, ptr %i.w monotonic, align 4
  %i.y = trunc i32 %i.x to i8
  %i.z = and i8 %i.y, 15
  %i.aa = icmp samesign ugt i8 %i.u, %i.z
  br i1 %i.aa, label %bb.k, label %.critedge, !prof !13

.critedge:                                        ; preds = %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit.i, %bb.a, %_ZNRSt8optionalIN2v88internal6TaggedINS1_4CodeEEEE5valueEv.exit
  %i.ab = add i64 %3, 23
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = or i64 %i.ad, 3                         ; 3 uses
  %.sroa.04.0.copyload.i.i = load i64, ptr %0, align 8
  %i.af = add i64 %.sroa.04.0.copyload.i.i, %i.c
  %i.ag = inttoptr i64 %i.af to ptr
  store atomic volatile i64 %i.ae, ptr %i.ag monotonic, align 8
  %.sroa.02.0.copyload.i.i = load i64, ptr %0, align 8 ; 4 uses
  %i.ah = add i64 %.sroa.02.0.copyload.i.i, %i.c  ; 2 uses
  %i.ai = and i64 %i.ae, 4294967295
  %.not = icmp eq i64 %i.ai, 3
  br i1 %.not, label %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.aj = and i64 %i.ae, -3                       ; 2 uses
  %i.ak = and i64 %.sroa.02.0.copyload.i.i, -262144
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 262144       ; 2 uses
  %i.an = and i64 %i.am, 32
  %.not.i.i.i.i = icmp eq i64 %i.an, 0
  %i.ao = and i64 %i.am, 25
  %.not38.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not38.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ap = and i64 %i.ad, -262144
  %i.aq = inttoptr i64 %i.ap to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.aq, align 262144
  %i.ar = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not39.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.02.0.copyload.i.i, i64 noundef %i.ah, i64 %i.aj) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br i1 %.not.i.i.i.i, label %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.02.0.copyload.i.i, i64 %i.ah, i64 %i.aj) #17
  br label %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit: ; preds = %.critedge, %bb.f, %bb.g
  %i.as = add i64 %3, 51
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load atomic volatile i32, ptr %i.at monotonic, align 4
  %i.av = trunc i32 %i.au to i8
  %i.aw = and i8 %i.av, 15
  switch i8 %i.aw, label %bb.j [
    i8 11, label %bb.h
    i8 12, label %_ZN2v88internal14FeedbackVector32set_maybe_has_optimized_osr_codeEbNS0_8CodeKindE.exit
  ], !prof !26

bb.h:                                             ; preds = %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit
  %i.ax = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 612), align 4, !range !27, !noundef !28
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %_ZN2v88internal14FeedbackVector32set_maybe_has_optimized_osr_codeEbNS0_8CodeKindE.exit, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.39) #18
  unreachable

bb.j:                                             ; preds = %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.40) #18
  unreachable

_ZN2v88internal14FeedbackVector32set_maybe_has_optimized_osr_codeEbNS0_8CodeKindE.exit: ; preds = %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, %bb.h
  %.sink9.i = phi i8 [ -9, %bb.h ], [ -17, %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit ]
  %.sink.i = phi i8 [ 8, %bb.h ], [ 16, %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit ]
  %i.az = load i64, ptr %0, align 8
  %i.ba = add i64 %i.az, 20
  %i.bb = inttoptr i64 %i.ba to ptr               ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = and i8 %i.bc, %.sink9.i
  %i.be = or disjoint i8 %i.bd, %.sink.i
  store i8 %i.be, ptr %i.bb, align 1
  br label %bb.k

bb.k:                                             ; preds = %_ZNRSt8optionalIN2v88internal6TaggedINS1_4CodeEEEE5valueEv.exit, %_ZN2v88internal14FeedbackVector32set_maybe_has_optimized_osr_codeEbNS0_8CodeKindE.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal14FeedbackVector23osr_tiering_in_progressEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 21
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i16, ptr %i.c, align 2
  %i.e = and i16 %i.d, 2
  %i.f = icmp ne i16 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal14FeedbackVector27set_osr_tiering_in_progressEb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 21
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2
  %i.e = and i16 %i.d, -3
  %i.f = select i1 %1, i16 2, i16 0
  %i.g = or disjoint i16 %i.e, %i.f
  store i16 %i.g, ptr %i.c, align 2
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal14FeedbackVector10ClearSlotsEPNS0_7IsolateENS0_13ClearBehaviorE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::FeedbackNexus", align 8 ; 10 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 23
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, 31
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 10624
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.f, %i.k
  br i1 %i.l, label %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit.thread, label %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit

_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit: ; preds = %bb.a
  %i.m = add i64 %i.f, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 268
  br i1 %i.s, label %bb.b, label %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit.thread

bb.b:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 7864
  %i.u = load i64, ptr %i.t, align 8
  %i.v = add i64 %i.f, 7
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.cont.lr.ph, label %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit.thread

.cont.lr.ph:                                      ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 20
  br label %.cont

.cont:                                            ; preds = %.cont.lr.ph, %.cont22
  %i.af = phi i32 [ %i.x, %.cont.lr.ph ], [ %i.ca, %.cont22 ] ; 3 uses
  %.01439 = phi i1 [ false, %.cont.lr.ph ], [ %.1, %.cont22 ] ; 2 uses
  %.sroa.10.038 = phi i32 [ 0, %.cont.lr.ph ], [ %i.aw, %.cont22 ] ; 5 uses
  %i.ag = udiv i32 %.sroa.10.038, 6               ; 3 uses
  %i.ah = urem i32 %.sroa.10.038, 6
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i.i, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i.i

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i.i: ; preds = %.cont
  %i.aj = add nsw i32 %i.af, -1
  %i.ak = sdiv i32 %i.aj, 6
  %i.al = add nsw i32 %i.ak, 1
  %i.am = icmp ult i32 %i.ag, %i.al
  br i1 %i.am, label %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i.i, !prof !5

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i.i: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i.i, %.cont
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.37) #18
  unreachable

_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i.i
  %i.an = shl nuw nsw i32 %i.ag, 2
  %narrow = add nuw i32 %i.an, 15
  %i.ao = zext i32 %narrow to i64                 ; 2 uses
  %i.ap = add i64 %i.f, %i.ao
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = mul nuw nsw i32 %i.ah, 5                ; 2 uses
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i8
  %i.av = and i8 %i.au, 31
  switch i8 %i.av, label %bb.e [
    i8 20, label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
    i8 21, label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
    i8 22, label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
    i8 17, label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
    i8 16, label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
    i8 19, label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
    i8 25, label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
    i8 4, label %bb.c
    i8 23, label %bb.c
    i8 5, label %bb.c
    i8 7, label %bb.c
    i8 6, label %bb.c
    i8 8, label %bb.c
    i8 9, label %bb.c
    i8 2, label %bb.c
    i8 11, label %bb.c
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 1, label %bb.c
    i8 10, label %bb.c
    i8 3, label %bb.c
    i8 14, label %bb.c
    i8 15, label %bb.c
    i8 18, label %bb.c
    i8 24, label %bb.c
    i8 0, label %bb.d
  ]

bb.c:                                             ; preds = %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i
  br label %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit

bb.d:                                             ; preds = %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
  unreachable

bb.e:                                             ; preds = %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
  unreachable

_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit: ; preds = %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i, %bb.c
  %.0.i.i.i = phi i32 [ 2, %bb.c ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i ], [ 1, %_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE.exit.i ]
  %i.aw = add nuw nsw i32 %.0.i.i.i, %.sroa.10.038 ; 2 uses
  %i.ax = shl nsw i32 %.sroa.10.038, 3
  %.sroa.0.0.copyload.i.i.i17 = load i64, ptr %0, align 8 ; 4 uses
  %narrow33 = add nuw i32 %i.ax, 47
  %i.ay = zext i32 %narrow33 to i64
  %i.az = add i64 %.sroa.0.0.copyload.i.i.i17, %i.ay
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load atomic volatile i64, ptr %i.ba monotonic, align 8
  %.not = icmp eq i64 %i.bb, %i.u
  br i1 %.not, label %.cont22, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr null, ptr %3, align 8
  store i64 %.sroa.0.0.copyload.i.i.i17, ptr %i.z, align 8
  store i32 %.sroa.10.038, ptr %i.aa, align 8
  store i8 0, ptr %i.ab, align 8
  store ptr %1, ptr %i.ac, align 8
  store ptr null, ptr %i.ad, align 8
  %i.bc = icmp eq i64 %.sroa.0.0.copyload.i.i.i17, 0
  br i1 %i.bc, label %_ZN2v88internal13FeedbackNexusC2EPNS0_7IsolateENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = add i64 %.sroa.0.0.copyload.i.i.i17, 23
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = add i64 %i.bf, 31
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.bj = add i64 %i.bi, 7
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load i32, ptr %i.bk, align 4            ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i.i.i, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i.i.i

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i.i.i: ; preds = %bb.g
  %i.bn = add nsw i32 %i.bl, -1
  %i.bo = sdiv i32 %i.bn, 6
  %i.bp = add nsw i32 %i.bo, 1
  %i.bq = icmp ult i32 %i.ag, %i.bp
  br i1 %i.bq, label %_ZNK2v88internal14FeedbackVector7GetKindENS0_12FeedbackSlotE.exit.i, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i.i.i, !prof !5

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i.i.i: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i.i.i, %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.37) #18
  unreachable

_ZNK2v88internal14FeedbackVector7GetKindENS0_12FeedbackSlotE.exit.i: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i.i.i
  %i.br = add i64 %i.bi, %i.ao
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = lshr i32 %i.bt, %i.as
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = and i8 %i.bv, 31
  br label %_ZN2v88internal13FeedbackNexusC2EPNS0_7IsolateENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit

_ZN2v88internal13FeedbackNexusC2EPNS0_7IsolateENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit: ; preds = %bb.f, %_ZNK2v88internal14FeedbackVector7GetKindENS0_12FeedbackSlotE.exit.i
  %i.bx = phi i8 [ %i.bw, %_ZNK2v88internal14FeedbackVector7GetKindENS0_12FeedbackSlotE.exit.i ], [ 0, %bb.f ]
  store i8 %i.bx, ptr %i.ae, align 4
  %i.by = call noundef zeroext i1 @_ZN2v88internal13FeedbackNexus5ClearENS0_13ClearBehaviorE(ptr noundef nonnull align 8 dereferenceable(88) %3, i32 noundef %2)
  %i.bz = or i1 %.01439, %i.by
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.pre = load i32, ptr %i.w, align 4
  br label %.cont22

.cont22:                                          ; preds = %_ZN2v88internal13FeedbackNexusC2EPNS0_7IsolateENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit, %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
  %i.ca = phi i32 [ %.pre, %_ZN2v88internal13FeedbackNexusC2EPNS0_7IsolateENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit ], [ %i.af, %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit ] ; 2 uses
  %.1 = phi i1 [ %i.bz, %_ZN2v88internal13FeedbackNexusC2EPNS0_7IsolateENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit ], [ %.01439, %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit ] ; 2 uses
  %i.cb = icmp slt i32 %i.aw, %i.ca
  br i1 %i.cb, label %.cont, label %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit.thread, !llvm.loop !29

_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit.thread: ; preds = %.cont22, %bb.b, %bb.a, %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit
  %.0 = phi i1 [ false, %bb.a ], [ false, %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit ], [ false, %bb.b ], [ %.1, %.cont22 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal13FeedbackNexus5ClearENS0_13ClearBehaviorE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4
  switch i8 %i.b, label %bb.m [
    i8 17, label %bb.b
    i8 20, label %bb.b
    i8 16, label %bb.b
    i8 22, label %bb.b
    i8 19, label %bb.e
    i8 2, label %bb.g
    i8 11, label %bb.g
    i8 3, label %bb.g
    i8 14, label %bb.g
    i8 15, label %bb.g
    i8 12, label %bb.g
    i8 13, label %bb.g
    i8 5, label %bb.g
    i8 8, label %bb.g
    i8 9, label %bb.g
    i8 1, label %bb.g
    i8 10, label %bb.g
    i8 6, label %bb.g
    i8 7, label %bb.g
    i8 4, label %bb.g
    i8 21, label %bb.g
    i8 18, label %bb.g
    i8 23, label %bb.g
    i8 25, label %bb.g
    i8 24, label %bb.i
    i8 0, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %bb.m, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i32 @_ZNK2v88internal13FeedbackNexus8ic_stateEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 314), align 2, !range !27, !noundef !28
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = icmp ne i32 %i.d, 1
  %.not18 = and i1 %i.g, %i.f
  br i1 %.not18, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i = select i1 %i.i, ptr %i.j, ptr %i.h
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.k, align 8
  %i.l = shl nsw i32 %.sroa.0.0.copyload.i.i, 3
  %i.m = sext i32 %i.l to i64
  %i.n = add i64 %.sroa.0.0.i.i, 47
  %i.o = add i64 %i.n, %i.m
  %i.p = inttoptr i64 %i.o to ptr
  store atomic volatile i64 0, ptr %i.p release, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.q = tail call noundef i32 @_ZNK2v88internal13FeedbackNexus8ic_stateEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 314), align 2, !range !27, !noundef !28
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = icmp ne i32 %i.q, 1
  %.not17 = and i1 %i.t, %i.s
  br i1 %.not17, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i7 = select i1 %i.v, ptr %i.w, ptr %i.u
  %.sroa.0.0.i.i8 = load i64, ptr %.sroa.0.0.in.i.i7, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i9 = load i32, ptr %i.x, align 8
  %i.y = shl nsw i32 %.sroa.0.0.copyload.i.i9, 3
  %i.z = sext i32 %i.y to i64
  %i.aa = add i64 %.sroa.0.0.i.i8, 47
  %i.ab = add i64 %i.aa, %i.z
  %i.ac = inttoptr i64 %i.ab to ptr
  store atomic volatile i64 0, ptr %i.ac release, align 8
  br label %bb.m

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ad = tail call noundef i32 @_ZNK2v88internal13FeedbackNexus8ic_stateEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.ae = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 314), align 2, !range !27, !noundef !28
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = icmp ne i32 %i.ad, 1
  %.not16 = and i1 %i.ag, %i.af
  br i1 %.not16, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal13FeedbackNexus22ConfigureUninitializedEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.ah = icmp eq i32 %1, 0
  br i1 %i.ah, label %bb.m, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.ai = tail call noundef i32 @_ZNK2v88internal13FeedbackNexus8ic_stateEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.aj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 314), align 2, !range !27, !noundef !28
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = icmp ne i32 %i.ai, 1
  %.not15 = and i1 %i.al, %i.ak
  br i1 %.not15, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 7864
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = load ptr, ptr %0, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.in.i.i12 = select i1 %i.ar, ptr %i.as, ptr %i.aq
  %.sroa.0.0.i.i13 = load i64, ptr %.sroa.0.0.in.i.i12, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i14 = load i32, ptr %i.at, align 8
  tail call void @_ZNK2v88internal11NexusConfig15SetFeedbackPairENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotENS2_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeES9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 %.sroa.0.0.i.i13, i32 %.sroa.0.0.copyload.i.i14, i64 0, i32 noundef 0, i64 %i.ap, i32 noundef 0)
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
  unreachable

bb.m:                                             ; preds = %bb.i, %bb.k, %bb.j, %bb.g, %bb.h, %bb.e, %bb.f, %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ false, %bb.g ], [ true, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ true, %bb.k ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZNK2v88internal11NexusConfig9NewHandleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 6 uses
  %i.d = and i64 %1, 3
  %i.e = icmp eq i64 %i.d, 3
  %i.f = and i64 %1, 4294967295
  %i.g = icmp ne i64 %i.f, 3
  %i.h = and i1 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %1, -3
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 560 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 568
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.d, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.c) #17
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.o, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %i.p = ptrtoint ptr %.0.i.i.i to i64
  %i.q = add i64 %i.p, 8
  %i.r = inttoptr i64 %i.q to ptr
  store ptr %i.r, ptr %i.j, align 8
  store i64 %i.i, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal6handleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEEPNS0_7IsolateE.exit

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 560 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 568
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.e, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i, !prof !13

bb.e:                                             ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i
  %i.x = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.c) #17
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i: ; preds = %bb.e, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i
  %.0.i.i.i.i = phi ptr [ %i.x, %bb.e ], [ %i.t, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i ] ; 3 uses
  %i.y = ptrtoint ptr %.0.i.i.i.i to i64
  %i.z = add i64 %i.y, 8
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %i.s, align 8
  store i64 %1, ptr %.0.i.i.i.i, align 8
  br label %_ZN2v88internal6handleENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEEPNS0_7IsolateE.exit

bb.f:                                             ; preds = %bb.a
  %i.ab = and i64 %1, 3
  %i.ac = icmp eq i64 %i.ab, 3
end_hunk_0
