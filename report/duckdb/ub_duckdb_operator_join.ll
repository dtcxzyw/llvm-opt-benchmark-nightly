Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_operator_join?download=true
inline.NumInlined: 13951
inline.NumDeleted: 6687
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN6duckdb24HashJoinLocalSourceState13ExternalProbeERNS_23HashJoinGlobalSinkStateERNS_25HashJoinGlobalSourceStateERNS_9DataChunkE:bb.a
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZNK6duckdb13JoinHashTable13ScanStructure17PointersExhaustedEv(ptr noundef nonnull align 8 dereferenceable(376) %i.a)
  br i1 %i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %.pre = load i8, ptr %i.b, align 1, !tbaa !1458, !range !457
  %i.j = trunc nuw i8 %.pre to i1
  br i1 %i.j, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.a, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1752 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !1451, !range !457, !noundef !458
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.thread, %bb.d
  store i8 1, ptr %i.b, align 1, !tbaa !1458
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1752
  store i8 0, ptr %i.n, align 8, !tbaa !1451
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.p = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13JoinHashTable10ProbeSpillESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.q = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_18ColumnDataConsumerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN6duckdb18ColumnDataConsumer11FinishChunkERNS_27ColumnDataConsumerScanStateE(ptr noundef nonnull align 8 dereferenceable(176) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.s) #30, !noalias !2675 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.t) #31, !noalias !2675
  unreachable

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.v = atomicrmw add ptr %i.u, i64 1 seq_cst, align 8 ; 0 uses
  %i.w = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.s) #30 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %.thread
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.y = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13JoinHashTable10ProbeSpillESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  %i.z = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_18ColumnDataConsumerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  tail call void @_ZNK6duckdb18ColumnDataConsumer9ScanChunkERNS_27ColumnDataConsumerScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(176) %i.z, ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 8 dereferenceable(72) %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  tail call void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 920
  tail call void @_ZN6duckdb18ExpressionExecutor7ExecuteEPNS_9DataChunkERS1_(ptr noundef nonnull align 8 dereferenceable(65) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %i.ab, ptr noundef nonnull align 8 dereferenceable(72) %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1459, !nonnull !458, !align !563
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 248
  tail call void @_ZN6duckdb9DataChunk16ReferenceColumnsERS0_RKNS_6vectorImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.aj = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13JoinHashTableESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 856
  %i.al = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb19TupleDataCollection5CountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.al)
  %i.an = load i64, ptr %i.am, align 8, !tbaa !497
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.h, label %_ZNK6duckdb12PhysicalJoin23EmptyResultIfRHSIsEmptyEv.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1430, !nonnull !458, !align !563
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 137
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !643
  switch i8 %i.as, label %_ZNK6duckdb12PhysicalJoin23EmptyResultIfRHSIsEmptyEv.exit [
    i8 3, label %_ZNK6duckdb12PhysicalJoin23EmptyResultIfRHSIsEmptyEv.exit.thread
    i8 2, label %_ZNK6duckdb12PhysicalJoin23EmptyResultIfRHSIsEmptyEv.exit.thread
    i8 5, label %_ZNK6duckdb12PhysicalJoin23EmptyResultIfRHSIsEmptyEv.exit.thread
    i8 9, label %_ZNK6duckdb12PhysicalJoin23EmptyResultIfRHSIsEmptyEv.exit.thread
    i8 10, label %_ZNK6duckdb12PhysicalJoin23EmptyResultIfRHSIsEmptyEv.exit.thread
  ]

_ZNK6duckdb12PhysicalJoin23EmptyResultIfRHSIsEmptyEv.exit: ; preds = %bb.h
  %i.at = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13JoinHashTableESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 464
  %i.av = load i8, ptr %i.au, align 8, !tbaa !1346
  %i.aw = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13JoinHashTableESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 466
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !1347, !range !457, !noundef !458
  %i.az = trunc nuw i8 %i.ay to i1
  tail call void @_ZN6duckdb22PhysicalComparisonJoin24ConstructEmptyJoinResultENS_8JoinTypeEbRNS_9DataChunkES3_(i8 noundef zeroext %i.av, i1 noundef zeroext %i.az, ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %3)
  store i8 1, ptr %i.k, align 8, !tbaa !1451
  br label %bb.i

_ZNK6duckdb12PhysicalJoin23EmptyResultIfRHSIsEmptyEv.exit.thread: ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.g
  %i.ba = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
  %i.bb = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13JoinHashTableESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1368
  tail call void @_ZN6duckdb13JoinHashTable5ProbeERNS0_13ScanStructureERNS_9DataChunkERNS_19TupleDataChunkStateERNS0_10ProbeStateENS_12optional_ptrINS_6VectorELb1EEE(ptr noundef nonnull align 8 dereferenceable(1088) %i.bb, ptr noundef nonnull align 8 dereferenceable(376) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noundef nonnull align 8 dereferenceable(488) %i.bc, ptr noundef nonnull align 8 dereferenceable(384) %i.bd, ptr nonnull %i.ba)
  tail call void @_ZN6duckdb13JoinHashTable13ScanStructure4NextERNS_9DataChunkES3_S3_(ptr noundef nonnull align 8 dereferenceable(376) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %3)
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.c, %_ZNK6duckdb12PhysicalJoin23EmptyResultIfRHSIsEmptyEv.exit.thread, %_ZNK6duckdb12PhysicalJoin23EmptyResultIfRHSIsEmptyEv.exit, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb24HashJoinLocalSourceState14ExternalScanHTERNS_23HashJoinGlobalSinkStateERNS_25HashJoinGlobalSourceStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(1784) %0, ptr noundef nonnull align 8 dereferenceable(264) %1, ptr noundef nonnull align 8 dereferenceable(216) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !guid !2680 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1454
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb15JoinHTScanStateESt14default_deleteIS1_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.d = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13JoinHashTableESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 856
  %i.f = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.i = tail call noalias noundef nonnull dereferenceable(632) ptr @_Znwm(i64 noundef 632) #28, !noalias !2681 ; 4 uses
  %i.j = load i64, ptr %i.g, align 8, !tbaa !497, !noalias !2681
  %i.k = load i64, ptr %i.h, align 8, !tbaa !497, !noalias !2681
  invoke void @_ZN6duckdb22TupleDataChunkIteratorC1ERNS_19TupleDataCollectionENS_22TupleDataPinPropertiesEmmb(ptr noundef nonnull align 8 dereferenceable(632) %i.i, ptr noundef nonnull align 8 dereferenceable(192) %i.f, i8 noundef zeroext 4, i64 noundef %i.j, i64 noundef %i.k, i1 noundef zeroext false)
          to label %_ZN6duckdb9make_uniqINS_15JoinHTScanStateEJRNS_19TupleDataCollectionERmS4_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !2681

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #29, !noalias !2681
  resume { ptr, i32 } %i.l

_ZN6duckdb9make_uniqINS_15JoinHTScanStateEJRNS_19TupleDataCollectionERmS4_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 624
  store i64 0, ptr %i.m, align 8, !tbaa !2684, !noalias !2681
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1454 ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !1454
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb15JoinHTScanStateESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_15JoinHTScanStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_15JoinHTScanStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %_ZN6duckdb9make_uniqINS_15JoinHTScanStateEJRNS_19TupleDataCollectionERmS4_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  tail call void @_ZNKSt14default_deleteIN6duckdb15JoinHTScanStateEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.n)
  br label %_ZNSt10unique_ptrIN6duckdb15JoinHTScanStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15JoinHTScanStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_15JoinHTScanStateEJRNS_19TupleDataCollectionERmS4_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZN6duckdb10unique_ptrINS_15JoinHTScanStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.p = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13JoinHashTableESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.q = tail call noundef nonnull align 8 dereferenceable(632) ptr @_ZNK6duckdb10unique_ptrINS_15JoinHTScanStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNK6duckdb13JoinHashTable13ScanFullOuterERNS_15JoinHTScanStateERNS_6VectorERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(1088) %i.p, ptr noundef nonnull align 8 dereferenceable(632) %i.q, ptr noundef nonnull align 8 dereferenceable(104) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %3)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !486
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15JoinHTScanStateESt14default_deleteIS1_EED2Ev.exit
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1454 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !1454
  %.not.i.i.i.i.i7 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i7, label %_ZNSt10unique_ptrIN6duckdb15JoinHTScanStateESt14default_deleteIS1_EED2Ev.exit10, label %_ZN6duckdb10unique_ptrINS_15JoinHTScanStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit8

_ZN6duckdb10unique_ptrINS_15JoinHTScanStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit8: ; preds = %bb.d
  tail call void @_ZNKSt14default_deleteIN6duckdb15JoinHTScanStateEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.v)
  br label %_ZNSt10unique_ptrIN6duckdb15JoinHTScanStateESt14default_deleteIS1_EED2Ev.exit10

_ZNSt10unique_ptrIN6duckdb15JoinHTScanStateESt14default_deleteIS1_EED2Ev.exit10: ; preds = %_ZN6duckdb10unique_ptrINS_15JoinHTScanStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit8, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #30, !noalias !2685 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15JoinHTScanStateESt14default_deleteIS1_EED2Ev.exit10
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.x) #31, !noalias !2685
  unreachable

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt10unique_ptrIN6duckdb15JoinHTScanStateESt14default_deleteIS1_EED2Ev.exit10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1453
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1452
  %i.ac = sub i64 %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.ae = atomicrmw add ptr %i.ad, i64 %i.ac seq_cst, align 8 ; 0 uses
  %i.af = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #30 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit, %_ZNSt10unique_ptrIN6duckdb15JoinHTScanStateESt14default_deleteIS1_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb24HashJoinLocalSourceState12TaskFinishedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1784) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !guid !2686 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.147", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1448
  switch i8 %i.b, label %bb.d [
    i8 0, label %bb.i
    i8 1, label %bb.i
    i8 2, label %bb.b
    i8 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1201
  %4 = load i8, ptr %3, align 1, !tbaa !1458, !range !457, !noundef !458
  %5 = trunc nuw i8 %4 to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1752
  %i.d = load i8, ptr %i.c, align 8, !range !457
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %6 = select i1 %5, i1 %i.f, i1 false
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1454
  %.not.i = icmp eq ptr %i.h, null
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.k unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !502    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.l) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.h, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.i) #30
  br label %bb.j

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.c, %bb.b
  %.06 = phi i1 [ %.not.i, %bb.c ], [ %6, %bb.b ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.06

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.pn10 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn11, %bb.h ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.k:                                             ; preds = %bb.f
  unreachable
}

declare void @_ZN6duckdb13JoinHashTable8FinalizeEmmb(ptr noundef nonnull align 8 dereferenceable(1088), i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN6duckdb18ColumnDataConsumer11FinishChunkERNS_27ColumnDataConsumerScanStateE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

declare void @_ZNK6duckdb18ColumnDataConsumer9ScanChunkERNS_27ColumnDataConsumerScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #6

declare void @_ZNK6duckdb13JoinHashTable13ScanFullOuterERNS_15JoinHTScanStateERNS_6VectorERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(1088), ptr noundef nonnull align 8 dereferenceable(632), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(632) ptr @_ZNK6duckdb10unique_ptrINS_15JoinHTScanStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2687 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.147", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1454   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_15JoinHTScanStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !496

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.46, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !502    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_15JoinHTScanStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i8 0, 3) i8 @_ZNK6duckdb16PhysicalHashJoin15GetDataInternalERNS_16ExecutionContextERNS_9DataChunkERNS_19OperatorSourceInputE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !guid !2693 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 8 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !1025, !nonnull !458, !align !563 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1026, !nonnull !458, !align !563 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store atomic i8 1, ptr %i.f seq_cst, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.h = load i8, ptr %i.g, align 8, !tbaa !1318, !range !457, !noundef !458
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.k = load i8, ptr %i.j, align 1, !tbaa !643
  %i.l = tail call noundef zeroext i1 @_ZN6duckdb19PropagatesBuildSideENS_8JoinTypeE(i8 noundef zeroext %i.k)
  br i1 %i.l, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.n = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #30, !noalias !2694 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.n) #31, !noalias !2694
  unreachable

_ZN6duckdb23StateWithBlockableTasks4LockEv.exit:  ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.p = load atomic i8, ptr %i.o seq_cst, align 8
  %.not = icmp eq i8 %i.p, 4
  br i1 %.not, label %_ZNSt11unique_lockISt5mutexED2Ev.exit40, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit
  store atomic i8 4, ptr %i.o seq_cst, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.r = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13JoinHashTableESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.f unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb13JoinHashTable5ResetEv(ptr noundef nonnull align 8 dereferenceable(1088) %i.r)
          to label %bb.g unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.t = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20TemporaryMemoryStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.h unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb20TemporaryMemoryState7SetZeroEv(ptr noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit40 unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit45.loopexit.split-lp.loopexit.split-lp

_ZNSt11unique_lockISt5mutexED2Ev.exit40:          ; preds = %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit, %bb.h
  %i.v = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #30 ; 0 uses
  br label %bb.ao

bb.i:                                             ; preds = %bb.b, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 4 uses
  %i.x = load atomic i8, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN6duckdb25HashJoinGlobalSourceState10InitializeERNS_23HashJoinGlobalSinkStateE(ptr noundef nonnull align 8 dereferenceable(216) %i.c, ptr noundef nonnull align 8 dereferenceable(264) %i.b)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = load atomic i8, ptr %i.w seq_cst, align 8
  %.not3773 = icmp eq i8 %i.z, 4
  br i1 %.not3773, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 6 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.an
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !486
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ag = tail call noundef zeroext i1 @_ZNK6duckdb24HashJoinLocalSourceState12TaskFinishedEv(ptr noundef nonnull align 8 dereferenceable(1784) %i.e)
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = tail call noundef zeroext i1 @_ZN6duckdb25HashJoinGlobalSourceState10AssignTaskERNS_23HashJoinGlobalSinkStateERNS_24HashJoinLocalSourceStateE(ptr noundef nonnull align 8 dereferenceable(216) %i.c, ptr noundef nonnull align 8 dereferenceable(264) %i.b, ptr noundef nonnull align 8 dereferenceable(1784) %i.e)
  br i1 %i.ah, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @_ZN6duckdb24HashJoinLocalSourceState11ExecuteTaskERNS_23HashJoinGlobalSinkStateERNS_25HashJoinGlobalSourceStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(1784) %i.e, ptr noundef nonnull align 8 dereferenceable(264) %i.b, ptr noundef nonnull align 8 dereferenceable(216) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %2)
  br label %bb.an

bb.p:                                             ; preds = %bb.n
  %i.ai = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #30, !noalias !2695 ; 2 uses
  %.not.i.i.i.i41 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i41, label %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit42, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.ai) #31, !noalias !2695
  unreachable

_ZN6duckdb23StateWithBlockableTasks4LockEv.exit42: ; preds = %bb.p
  %i.aj = invoke noundef zeroext i1 @_ZN6duckdb25HashJoinGlobalSourceState19TryPrepareNextStageERNS_23HashJoinGlobalSinkStateE(ptr noundef nonnull align 8 dereferenceable(216) %i.c, ptr noundef nonnull align 8 dereferenceable(264) %i.b)
end_hunk_0
