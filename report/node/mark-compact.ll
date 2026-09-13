Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/mark-compact?download=true
inline.NumInlined: 24171
inline.NumDeleted: 6162
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZN4heap4base8WorklistIN2v88internal6detail20HeapObjectAndSlotPODINS3_18FullHeapObjectSlotEEELt64EE5LocalD2Ev:bb.a

_ZNK4heap4base8WorklistIN2v88internal6detail20HeapObjectAndSlotPODINS3_18FullHeapObjectSlotEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5: ; preds = %_ZNK4heap4base8WorklistIN2v88internal6detail20HeapObjectAndSlotPODINS3_18FullHeapObjectSlotEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIN2v88internal9EphemeronELt64EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i16, ptr %i.c, align 2
  %.not6 = icmp eq i16 %i.d, 0
  br i1 %.not6, label %.critedge, label %bb.c, !prof !60

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.214) #34
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not2 = icmp eq ptr %i.f, null
  br i1 %.not2, label %.critedge4, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = load i16, ptr %i.g, align 2
  %.not7 = icmp eq i16 %i.h, 0
  br i1 %.not7, label %.critedge4, label %bb.e, !prof !60

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.215) #34
  unreachable

.critedge4:                                       ; preds = %.critedge, %bb.d
  %i.i = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #31
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZNK4heap4base8WorklistIN2v88internal9EphemeronELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, label %bb.f

bb.f:                                             ; preds = %.critedge4
  tail call void @free(ptr noundef %i.b) #31
  br label %_ZNK4heap4base8WorklistIN2v88internal9EphemeronELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit

_ZNK4heap4base8WorklistIN2v88internal9EphemeronELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit: ; preds = %.critedge4, %bb.f
  %i.k = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.l = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #31
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNK4heap4base8WorklistIN2v88internal9EphemeronELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5, label %bb.g

bb.g:                                             ; preds = %_ZNK4heap4base8WorklistIN2v88internal9EphemeronELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit
  tail call void @free(ptr noundef %i.k) #31
  br label %_ZNK4heap4base8WorklistIN2v88internal9EphemeronELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5

_ZNK4heap4base8WorklistIN2v88internal9EphemeronELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5: ; preds = %_ZNK4heap4base8WorklistIN2v88internal9EphemeronELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt64EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i16, ptr %i.c, align 2
  %.not6 = icmp eq i16 %i.d, 0
  br i1 %.not6, label %.critedge, label %bb.c, !prof !60

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.214) #34
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not2 = icmp eq ptr %i.f, null
  br i1 %.not2, label %.critedge4, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = load i16, ptr %i.g, align 2
  %.not7 = icmp eq i16 %i.h, 0
  br i1 %.not7, label %.critedge4, label %bb.e, !prof !60

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.215) #34
  unreachable

.critedge4:                                       ; preds = %.critedge, %bb.d
  %i.i = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #31
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, label %bb.f

bb.f:                                             ; preds = %.critedge4
  tail call void @free(ptr noundef %i.b) #31
  br label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit

_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit: ; preds = %.critedge4, %bb.f
  %i.k = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.l = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #31
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5, label %bb.g

bb.g:                                             ; preds = %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit
  tail call void @free(ptr noundef %i.k) #31
  br label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5

_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5: ; preds = %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_15TransitionArrayEEELt64EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i16, ptr %i.c, align 2
  %.not6 = icmp eq i16 %i.d, 0
  br i1 %.not6, label %.critedge, label %bb.c, !prof !60

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.214) #34
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not2 = icmp eq ptr %i.f, null
  br i1 %.not2, label %.critedge4, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = load i16, ptr %i.g, align 2
  %.not7 = icmp eq i16 %i.h, 0
  br i1 %.not7, label %.critedge4, label %bb.e, !prof !60

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.215) #34
  unreachable

.critedge4:                                       ; preds = %.critedge, %bb.d
  %i.i = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #31
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_15TransitionArrayEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, label %bb.f

bb.f:                                             ; preds = %.critedge4
  tail call void @free(ptr noundef %i.b) #31
  br label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_15TransitionArrayEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit

_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_15TransitionArrayEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit: ; preds = %.critedge4, %bb.f
  %i.k = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.l = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #31
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_15TransitionArrayEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5, label %bb.g

bb.g:                                             ; preds = %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_15TransitionArrayEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit
  tail call void @free(ptr noundef %i.k) #31
  br label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_15TransitionArrayEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5

_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_15TransitionArrayEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5: ; preds = %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_15TransitionArrayEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #20 {
bb.a:
  %.fr27 = freeze ptr %1                          ; 3 uses
  %.fr26 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr26 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr27 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr26, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.fr26, i64 8 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.fr26, i64 24 ; 4 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEET_SK_SK_T0_.exit"
  %i.j = icmp eq i64 %i.cs, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph42, !llvm.loop !712

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i25.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ed, %bb.b ] ; 3 uses
  %storemerge23.lcssa = phi ptr [ %.fr27, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i.i25.lcssa, 4             ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i.i25.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.m ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_T0_SL_T1_T2_.exit.i.i.i", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.ay, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_T0_SL_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.010.i.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.w, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.x = icmp slt i64 %.010.i.i.i, %i.o
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.y = shl i64 %.037.i.i.i.i, 1                 ; 2 uses
  %i.z = add i64 %i.y, 2                          ; 2 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.z
  %i.ab = or disjoint i64 %i.y, 1                 ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.ab
  %.val.i.i.i.i.i = load i64, ptr %i.aa, align 8
  %.val1.i.i.i.i.i = load i64, ptr %i.ac, align 8
  %i.ad = icmp ult i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ad, i64 %i.ab, i64 %i.z ; 4 uses
  %i.ae = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %spec.select.i.i.i.i ; 2 uses
  %i.af = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.037.i.i.i.i ; 2 uses
  %i.ag = load i64, ptr %i.ae, align 8
  store i64 %i.ag, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ak, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !713

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.al = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.al, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = load i64, ptr %i.s, align 8
  store i64 %i.am, ptr %i.t, align 8
  %i.an = load ptr, ptr %i.u, align 8
  store ptr %i.an, ptr %i.v, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ao = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_T0_SL_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.011.i.i.i.i.i = phi i64 [ %.0912.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0912.in.i.i.i.i.i = add nsw i64 %.011.i.i.i.i.i, -1
  %.0912.i.i.i.i.i = sdiv i64 %.0912.in.i.i.i.i.i, 2 ; 4 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0912.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.ap, align 8 ; 2 uses
  %i.aq = icmp ult i64 %.val.i.i.i.i.i.i, %.sroa.03.0.copyload.i.i.i
  br i1 %i.aq, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_T0_SL_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.011.i.i.i.i.i ; 2 uses
  store i64 %.val.i.i.i.i.i.i, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.at, ptr %i.au, align 8
  %i.av = icmp sgt i64 %.0912.i.i.i.i.i, %.010.i.i.i
  br i1 %i.av, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_T0_SL_T1_T2_.exit.i.i.i", !llvm.loop !714

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_T0_SL_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0912.i.i.i.i.i, %bb.f ]
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i.i, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i, ptr %i.ax, align 8
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.ay = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_RT0_.exit.i.i", label %bb.c, !llvm.loop !715

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_T0_SL_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i25.lcssa, 16
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.az, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_RT0_.exit.i.i" ], [ %storemerge23.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_RT0_.exit.i.i" ] ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.az, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i11.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  %.sroa.4.0.copyload.i.i12.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i11.i, align 8
  %i.ba = load i64, ptr %.fr26, align 8
  store i64 %i.ba, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.g, align 8
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx.i.i11.i, align 8
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = sub i64 %i.bc, %i.a                     ; 3 uses
  %i.be = ashr exact i64 %i.bd, 4                 ; 3 uses
  %i.bf = add nsw i64 %i.be, -1
  %i.bg = lshr i64 %i.bf, 1
  %i.bh = icmp sgt i64 %i.be, 2
  br i1 %i.bh, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i21.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i21.i
  %.037.i.i.i22.i = phi i64 [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i21.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bi = shl i64 %.037.i.i.i22.i, 1              ; 2 uses
  %i.bj = add i64 %i.bi, 2                        ; 2 uses
  %i.bk = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.bj
  %i.bl = or disjoint i64 %i.bi, 1                ; 2 uses
  %i.bm = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.bl
  %.val.i.i.i.i23.i = load i64, ptr %i.bk, align 8
  %.val1.i.i.i.i24.i = load i64, ptr %i.bm, align 8
  %i.bn = icmp ult i64 %.val.i.i.i.i23.i, %.val1.i.i.i.i24.i
  %spec.select.i.i.i25.i = select i1 %i.bn, i64 %i.bl, i64 %i.bj ; 4 uses
  %i.bo = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %spec.select.i.i.i25.i ; 2 uses
  %i.bp = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.037.i.i.i22.i ; 2 uses
  %i.bq = load i64, ptr %i.bo, align 8
  store i64 %i.bq, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bs, ptr %i.bt, align 8
  %i.bu = icmp slt i64 %spec.select.i.i.i25.i, %i.bg
  br i1 %i.bu, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i13.i, !llvm.loop !713

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i21.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i21.i ] ; 5 uses
  %i.bv = and i64 %i.bd, 16
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bx = add nsw i64 %i.be, -2
  %i.by = ashr exact i64 %i.bx, 1
  %i.bz = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.by
  br i1 %i.bz, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.ca = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.cb = or disjoint i64 %i.ca, 1                ; 2 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i14.i ; 2 uses
  %i.ce = load i64, ptr %i.cc, align 8
  store i64 %i.ce, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.cg, ptr %i.ch, align 8
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.011.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i14.i, %bb.h ], [ %i.cb, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.011.i.i.i.i17.i = phi i64 [ %.0912.i.i56.i.i.i, %bb.i ], [ %.011.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.0912.in.i.i.i.i18.i = add nsw i64 %.011.i.i.i.i17.i, -1
  %.0912.i.i56.i.i.i = lshr i64 %.0912.in.i.i.i.i18.i, 1 ; 3 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0912.i.i56.i.i.i ; 2 uses
  %.val.i.i.i.i.i19.i = load i64, ptr %i.ci, align 8 ; 2 uses
  %i.cj = icmp ult i64 %.val.i.i.i.i.i19.i, %.sroa.03.0.copyload.i.i10.i
  br i1 %i.cj, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.ck = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.011.i.i.i.i17.i ; 2 uses
  store i64 %.val.i.i.i.i.i19.i, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.cm, ptr %i.cn, align 8
  %.not7.i.i.i = icmp eq i64 %.0912.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i, !llvm.loop !714

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.h ], [ %.011.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.co = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i20.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i10.i, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %.sroa.4.0.copyload.i.i12.i, ptr %i.cp, align 8
  %i.cq = icmp sgt i64 %i.bd, 16
  br i1 %i.cq, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_T0_.exit", !llvm.loop !716

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2341 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %.fr27, %.lr.ph ] ; 5 uses
  %.02440 = phi i64 [ %i.cs, %bb.b ], [ %2, %.lr.ph ]
  %i.cr = phi i64 [ %i.ee, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cs = add nsw i64 %.02440, -1                 ; 3 uses
  %i.ct = lshr i64 %i.cr, 1
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.ct ; 5 uses
  %i.cv = getelementptr inbounds i8, ptr %storemerge2341, i64 -16 ; 3 uses
  %.val.i.i.i = load i64, ptr %i.f, align 8       ; 5 uses
  %.val1.i.i.i = load i64, ptr %i.cu, align 8     ; 5 uses
  %i.cw = icmp ult i64 %.val.i.i.i, %.val1.i.i.i
  %.val1.i27.i.i = load i64, ptr %i.cv, align 8   ; 6 uses
  br i1 %i.cw, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph42
  %i.cx = icmp ult i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cy = load i64, ptr %.fr26, align 8
  store i64 %.val1.i.i.i, ptr %.fr26, align 8
  store i64 %i.cy, ptr %i.cu, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.g, align 8
  %i.db = load ptr, ptr %i.cz, align 8
  store ptr %i.db, ptr %i.g, align 8
  store ptr %i.da, ptr %i.cz, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.dc = icmp ult i64 %.val.i.i.i, %.val1.i27.i.i
  %i.dd = load i64, ptr %.fr26, align 8           ; 2 uses
  br i1 %i.dc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 %.val1.i27.i.i, ptr %.fr26, align 8
  store i64 %i.dd, ptr %i.cv, align 8
  %i.de = getelementptr inbounds i8, ptr %storemerge2341, i64 -8 ; 2 uses
  %i.df = load ptr, ptr %i.g, align 8
  %i.dg = load ptr, ptr %i.de, align 8
  store ptr %i.dg, ptr %i.g, align 8
  store ptr %i.df, ptr %i.de, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  store i64 %.val.i.i.i, ptr %.fr26, align 8
  store i64 %i.dd, ptr %i.f, align 8
  %i.dh = load ptr, ptr %i.g, align 8
  %i.di = load ptr, ptr %i.h, align 8
  store ptr %i.di, ptr %i.g, align 8
  store ptr %i.dh, ptr %i.h, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph42
  %i.dj = icmp ult i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.dj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dk = load i64, ptr %.fr26, align 8
  store i64 %.val.i.i.i, ptr %.fr26, align 8
  store i64 %i.dk, ptr %i.f, align 8
  %i.dl = load ptr, ptr %i.g, align 8
  %i.dm = load ptr, ptr %i.h, align 8
  store ptr %i.dm, ptr %i.g, align 8
  store ptr %i.dl, ptr %i.h, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.dn = icmp ult i64 %.val1.i.i.i, %.val1.i27.i.i
  %i.do = load i64, ptr %.fr26, align 8           ; 2 uses
  br i1 %i.dn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i64 %.val1.i27.i.i, ptr %.fr26, align 8
  store i64 %i.do, ptr %i.cv, align 8
  %i.dp = getelementptr inbounds i8, ptr %storemerge2341, i64 -8 ; 2 uses
  %i.dq = load ptr, ptr %i.g, align 8
  %i.dr = load ptr, ptr %i.dp, align 8
  store ptr %i.dr, ptr %i.g, align 8
  store ptr %i.dq, ptr %i.dp, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  store i64 %.val1.i.i.i, ptr %.fr26, align 8
  store i64 %i.do, ptr %i.cu, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.dt = load ptr, ptr %i.g, align 8
  %i.du = load ptr, ptr %i.ds, align 8
  store ptr %i.du, ptr %i.g, align 8
  store ptr %i.dt, ptr %i.ds, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_SK_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_SK_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader", %bb.v
  %.sroa.014.0.i.i = phi ptr [ %i.dw, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2341, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i64, ptr %.fr26, align 8  ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_SK_T0_.exit.i"
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_SK_T0_.exit.i" ], [ %i.dw, %bb.t ] ; 9 uses
  %.val.i.i14.i = load i64, ptr %.sroa.014.1.i.i, align 8 ; 2 uses
  %i.dv = icmp ult i64 %.val.i.i14.i, %.val1.i.i13.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 16 ; 2 uses
  br i1 %i.dv, label %bb.t, label %.preheader.i.i, !llvm.loop !717

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %.val1.i11.i.i = load i64, ptr %.sroa.0.1.i.i, align 8 ; 2 uses
  %i.dx = icmp ult i64 %.val1.i.i13.i, %.val1.i11.i.i
  br i1 %i.dx, label %.preheader.i.i, label %bb.u, !llvm.loop !718

bb.u:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEET_SK_SK_T0_.exit"

bb.v:                                             ; preds = %bb.u
  store i64 %.val1.i11.i.i, ptr %.sroa.014.1.i.i, align 8
  store i64 %.val.i.i14.i, ptr %.sroa.0.1.i.i, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.ea = load ptr, ptr %i.dy, align 8
  %i.eb = load ptr, ptr %i.dz, align 8
  store ptr %i.eb, ptr %i.dy, align 8
  store ptr %i.ea, ptr %i.dz, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_SK_T0_.exit.i", !llvm.loop !719

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEET_SK_SK_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_T0_T1_"(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2341, i64 noundef %i.cs)
  %i.ec = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.ed = sub i64 %i.ec, %i.a                     ; 2 uses
  %i.ee = ashr exact i64 %i.ed, 4                 ; 2 uses
  %i.ef = icmp sgt i64 %i.ee, 16
  br i1 %i.ef, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_T0_.exit", !llvm.loop !712

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEET_SK_SK_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_SK_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN2v88internal12PageMetadataEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_20MarkCompactCollector27CollectEvacuationCandidatesEPNS4_10PagedSpaceEE3$_0EEEvT_SK_RT0_.exit.i.i"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #21

declare void @_ZN2v88internal16LargeObjectSpace22ShrinkPageToObjectSizeEPNS0_17LargePageMetadataENS0_6TaggedINS0_10HeapObjectEEEm(ptr noundef nonnull align 8 dereferenceable(272), ptr noundef, i64, i64 noundef) local_unnamed_addr #1

declare void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal20MarkCompactCollector28CustomRootBodyMarkingVisitorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal20MarkCompactCollector28CustomRootBodyMarkingVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, %3
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal20MarkCompactCollector28CustomRootBodyMarkingVisitor10MarkObjectENS0_6TaggedINS0_10HeapObjectEEENS3_INS0_6ObjectEEE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal20MarkCompactCollector28CustomRootBodyMarkingVisitor10MarkObjectENS0_6TaggedINS0_10HeapObjectEEENS3_INS0_6ObjectEEE.exit
  %.sroa.0.032 = phi i64 [ %2, %.lr.ph ], [ %i.ba, %_ZN2v88internal20MarkCompactCollector28CustomRootBodyMarkingVisitor10MarkObjectENS0_6TaggedINS0_10HeapObjectEEENS3_INS0_6ObjectEEE.exit ] ; 2 uses
  %i.c = inttoptr i64 %.sroa.0.032 to ptr
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZN2v88internal20MarkCompactCollector28CustomRootBodyMarkingVisitor10MarkObjectENS0_6TaggedINS0_10HeapObjectEEENS3_INS0_6ObjectEEE.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = and i64 %i.d, -262144
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 262144 ; 2 uses
  %i.j = and i64 %.sroa.0.0.copyload.i, 64
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %_ZN2v88internal20MarkCompactCollector28CustomRootBodyMarkingVisitor10MarkObjectENS0_6TaggedINS0_10HeapObjectEEENS3_INS0_6ObjectEEE.exit

.critedge.i.i:                                    ; preds = %bb.c
  %i.k = and i64 %.sroa.0.0.copyload.i, 1
  %.not.i4 = icmp eq i64 %i.k, 0
  br i1 %.not.i4, label %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit, label %bb.d, !prof !60

bb.d:                                             ; preds = %.critedge.i.i
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = add i64 %i.l, -55464
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 55448
  %i.p = load i8, ptr %i.o, align 8, !range !57, !noundef !58
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit, label %_ZN2v88internal20MarkCompactCollector28CustomRootBodyMarkingVisitor10MarkObjectENS0_6TaggedINS0_10HeapObjectEEENS3_INS0_6ObjectEEE.exit

_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit: ; preds = %bb.d, %.critedge.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = load atomic ptr, ptr %i.v seq_cst, align 8
  %.not.i.i5 = icmp eq ptr %i.w, null
  br i1 %.not.i.i5, label %bb.e, label %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !62

bb.e:                                             ; preds = %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.243) #34
  unreachable

_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = add i64 %i.x, 336
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = lshr i64 %i.d, 3
  %i.ab = and i64 %i.aa, 63
  %i.ac = shl nuw i64 1, %i.ab                    ; 2 uses
  %i.ad = lshr i64 %i.d, 9
  %i.ae = and i64 %i.ad, 511
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ae ; 2 uses
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit
  %.0.i.i = phi i64 [ %i.ag, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit ], [ %i.ak, %bb.g ] ; 3 uses
  %i.ah = and i64 %.0.i.i, %i.ac
  %.not16.not.not.i.not.not.not.i.not.not = icmp eq i64 %i.ah, 0
  br i1 %.not16.not.not.i.not.not.not.i.not.not, label %bb.g, label %_ZN2v88internal20MarkCompactCollector28CustomRootBodyMarkingVisitor10MarkObjectENS0_6TaggedINS0_10HeapObjectEEENS3_INS0_6ObjectEEE.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = or i64 %.0.i.i, %i.ac
  %i.aj = cmpxchg volatile ptr %i.af, i64 %.0.i.i, i64 %i.ai monotonic monotonic, align 8 ; 2 uses
  %i.ak = extractvalue { i64, i1 } %i.aj, 0
  %.not.i.i6 = extractvalue { i64, i1 } %i.aj, 1
  br i1 %.not.i.i6, label %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit, label %bb.f, !llvm.loop !14

_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit: ; preds = %bb.g
  %i.al = load ptr, ptr %i.s, align 8             ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = load i16, ptr %i.ao, align 2            ; 2 uses
  %i.aq = load i16, ptr %i.an, align 2
  %i.ar = icmp eq i16 %i.ap, %i.aq
  br i1 %i.ar, label %bb.h, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !62

bb.h:                                             ; preds = %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.al)
  %i.as = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.al) ; 3 uses
  store ptr %i.as, ptr %i.am, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit, %bb.h
  %i.at = phi i16 [ %i.ap, %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit ], [ %.pre.i, %bb.h ] ; 2 uses
  %i.au = phi ptr [ %i.an, %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit ], [ %i.as, %bb.h ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.aw = add i16 %i.at, 1
  store i16 %i.aw, ptr %i.av, align 2
  %i.ax = zext i16 %i.at to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ax
  store i64 %i.d, ptr %i.az, align 8
  br label %_ZN2v88internal20MarkCompactCollector28CustomRootBodyMarkingVisitor10MarkObjectENS0_6TaggedINS0_10HeapObjectEEENS3_INS0_6ObjectEEE.exit

_ZN2v88internal20MarkCompactCollector28CustomRootBodyMarkingVisitor10MarkObjectENS0_6TaggedINS0_10HeapObjectEEENS3_INS0_6ObjectEEE.exit: ; preds = %bb.f, %bb.c, %bb.d, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.b
  %i.ba = add i64 %.sroa.0.032, 8                 ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %3
  br i1 %i.bb, label %bb.b, label %._crit_edge, !llvm.loop !720
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal20MarkCompactCollector28CustomRootBodyMarkingVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.231) #34
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal20MarkCompactCollector28CustomRootBodyMarkingVisitor29VisitInstructionStreamPointerENS0_6TaggedINS0_4CodeEEENS0_21OffHeapFullObjectSlotE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN2v88internal20MarkCompactCollector28CustomRootBodyMarkingVisitor10MarkObjectENS0_6TaggedINS0_10HeapObjectEEENS3_INS0_6ObjectEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = and i64 %i.b, -262144
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 262144 ; 2 uses
  %i.i = and i64 %.sroa.0.0.copyload.i, 64
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %_ZN2v88internal20MarkCompactCollector28CustomRootBodyMarkingVisitor10MarkObjectENS0_6TaggedINS0_10HeapObjectEEENS3_INS0_6ObjectEEE.exit

.critedge.i.i:                                    ; preds = %bb.b
  %i.j = and i64 %.sroa.0.0.copyload.i, 1
  %.not.i3 = icmp eq i64 %i.j, 0
  br i1 %.not.i3, label %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit, label %bb.c, !prof !60

bb.c:                                             ; preds = %.critedge.i.i
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = add i64 %i.k, -55464
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 55448
  %i.o = load i8, ptr %i.n, align 8, !range !57, !noundef !58
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit, label %_ZN2v88internal20MarkCompactCollector28CustomRootBodyMarkingVisitor10MarkObjectENS0_6TaggedINS0_10HeapObjectEEENS3_INS0_6ObjectEEE.exit

_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit: ; preds = %bb.c, %.critedge.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.v = load atomic ptr, ptr %i.u seq_cst, align 8
  %.not.i.i4 = icmp eq ptr %i.v, null
  br i1 %.not.i.i4, label %bb.d, label %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !62

bb.d:                                             ; preds = %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.243) #34
  unreachable

_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = add i64 %i.w, 336
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = lshr i64 %i.b, 3
  %i.aa = and i64 %i.z, 63
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  %i.ac = lshr i64 %i.b, 9
  %i.ad = and i64 %i.ac, 511
end_hunk_0
