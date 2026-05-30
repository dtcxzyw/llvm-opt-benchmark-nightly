inline.NumInlined: 1831
inline.NumDeleted: 992
begin_hunk_0_@_ZN5cppgc8internal7Sweeper11SweeperImpl17FinishIfOutOfWorkEv:bb.a

.loopexit.split.loop.exit35.i.i.i.i.i:            ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.027.044.i.i.i.i.i, i64 80
  br label %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPN5cppgc8internal12_GLOBAL__N_113SweepingStateESt6vectorIS5_SaIS5_EEEEZNS3_7Sweeper11SweeperImpl17FinishIfOutOfWorkEvEUlRKS5_E_EbT_SG_T0_.exit

.loopexit.split.loop.exit37.i.i.i.i.i:            ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.027.044.i.i.i.i.i, i64 160
  br label %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPN5cppgc8internal12_GLOBAL__N_113SweepingStateESt6vectorIS5_SaIS5_EEEEZNS3_7Sweeper11SweeperImpl17FinishIfOutOfWorkEvEUlRKS5_E_EbT_SG_T0_.exit

.loopexit.split.loop.exit39.i.i.i.i.i:            ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.027.044.i.i.i.i.i, i64 240
  br label %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPN5cppgc8internal12_GLOBAL__N_113SweepingStateESt6vectorIS5_SaIS5_EEEEZNS3_7Sweeper11SweeperImpl17FinishIfOutOfWorkEvEUlRKS5_E_EbT_SG_T0_.exit

_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPN5cppgc8internal12_GLOBAL__N_113SweepingStateESt6vectorIS5_SaIS5_EEEEZNS3_7Sweeper11SweeperImpl17FinishIfOutOfWorkEvEUlRKS5_E_EbT_SG_T0_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.j, %bb.l, %bb.n, %.loopexit.split.loop.exit35.i.i.i.i.i, %.loopexit.split.loop.exit37.i.i.i.i.i, %.loopexit.split.loop.exit39.i.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.027.1.i.i.i.i.i, %bb.l ], [ %spec.select.i.i.i.i.i, %bb.n ], [ %i.bc, %.loopexit.split.loop.exit39.i.i.i.i.i ], [ %.sroa.027.0.lcssa.i.i.i.i.i, %bb.j ], [ %i.bb, %.loopexit.split.loop.exit37.i.i.i.i.i ], [ %i.ba, %.loopexit.split.loop.exit35.i.i.i.i.i ], [ %.sroa.027.044.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.not7 = icmp eq ptr %.val4, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i
  br i1 %.not7, label %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPN5cppgc8internal12_GLOBAL__N_113SweepingStateESt6vectorIS5_SaIS5_EEEEZNS3_7Sweeper11SweeperImpl17FinishIfOutOfWorkEvEUlRKS5_E_EbT_SG_T0_.exit.thread, label %bb.q

_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPN5cppgc8internal12_GLOBAL__N_113SweepingStateESt6vectorIS5_SaIS5_EEEEZNS3_7Sweeper11SweeperImpl17FinishIfOutOfWorkEvEUlRKS5_E_EbT_SG_T0_.exit.thread: ; preds = %._crit_edge.i.i.i.i.i, %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPN5cppgc8internal12_GLOBAL__N_113SweepingStateESt6vectorIS5_SaIS5_EEEEZNS3_7Sweeper11SweeperImpl17FinishIfOutOfWorkEvEUlRKS5_E_EbT_SG_T0_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.be = load atomic i8, ptr %i.bd monotonic, align 8, !range !18, !noundef !13
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPN5cppgc8internal12_GLOBAL__N_113SweepingStateESt6vectorIS5_SaIS5_EEEEZNS3_7Sweeper11SweeperImpl17FinishIfOutOfWorkEvEUlRKS5_E_EbT_SG_T0_.exit.thread
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bh = load atomic i8, ptr %i.bg monotonic, align 8, !range !18, !noundef !13
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void @_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EEC2IJEEEPS1_NS1_7ScopeIdEDpT_(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %i.bk, i32 noundef 34)
  call void @_ZN5cppgc8internal7Sweeper11SweeperImpl13FinalizeSweepEv(ptr noundef nonnull align 8 dereferenceable(344) %0)
  call void @_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @_ZN5cppgc8internal7Sweeper11SweeperImpl10NotifyDoneEv(ptr noundef nonnull align 8 dereferenceable(344) %0)
  br label %bb.q

bb.q:                                             ; preds = %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPN5cppgc8internal12_GLOBAL__N_113SweepingStateESt6vectorIS5_SaIS5_EEEEZNS3_7Sweeper11SweeperImpl17FinishIfOutOfWorkEvEUlRKS5_E_EbT_SG_T0_.exit.thread, %bb.o, %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPN5cppgc8internal12_GLOBAL__N_113SweepingStateESt6vectorIS5_SaIS5_EEEEZNS3_7Sweeper11SweeperImpl17FinishIfOutOfWorkEvEUlRKS5_E_EbT_SG_T0_.exit, %bb.b, %bb.c, %bb.d, %bb.a, %bb.p
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal7Sweeper35WaitForConcurrentSweepingForTestingEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN5cppgc8internal7Sweeper11SweeperImpl35WaitForConcurrentSweepingForTestingEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #22, !inline_history !25
  br label %_ZN5cppgc8internal7Sweeper11SweeperImpl35WaitForConcurrentSweepingForTestingEv.exit

_ZN5cppgc8internal7Sweeper11SweeperImpl35WaitForConcurrentSweepingForTestingEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN5cppgc8internal7Sweeper27SweepForAllocationIfRunningEPNS0_9BaseSpaceEmN2v84base9TimeDeltaE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 337
  %i.d = load i8, ptr %i.c, align 1, !range !18, !noundef !13
  %i.e = trunc nuw i8 %i.d to i1
  %.not.i = xor i1 %i.e, true
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 339
  %i.g = load i8, ptr %i.f, align 1, !range !18
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.h
  br i1 %or.cond.i, label %_ZN5cppgc8internal7Sweeper11SweeperImpl27SweepForAllocationIfRunningEPNS0_9BaseSpaceEmN2v84base9TimeDeltaE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef zeroext i1 @_ZN5cppgc8internal7Sweeper11SweeperImpl23SweepForLargeAllocationEPNS0_9BaseSpaceEmN2v84base9TimeDeltaE(ptr noundef nonnull align 8 dereferenceable(344) %i.b, ptr noundef nonnull %1, i64 noundef %2, i64 %3)
  br label %_ZN5cppgc8internal7Sweeper11SweeperImpl27SweepForAllocationIfRunningEPNS0_9BaseSpaceEmN2v84base9TimeDeltaE.exit

bb.d:                                             ; preds = %bb.b
  %i.m = tail call noundef zeroext i1 @_ZN5cppgc8internal7Sweeper11SweeperImpl24SweepForNormalAllocationEPNS0_9BaseSpaceEmN2v84base9TimeDeltaE(ptr noundef nonnull align 8 dereferenceable(344) %i.b, ptr noundef nonnull %1, i64 noundef %2, i64 %3)
  br label %_ZN5cppgc8internal7Sweeper11SweeperImpl27SweepForAllocationIfRunningEPNS0_9BaseSpaceEmN2v84base9TimeDeltaE.exit

_ZN5cppgc8internal7Sweeper11SweeperImpl27SweepForAllocationIfRunningEPNS0_9BaseSpaceEmN2v84base9TimeDeltaE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i1 [ false, %bb.a ], [ %i.m, %bb.d ], [ %i.l, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK5cppgc8internal7Sweeper25IsSweepingOnMutatorThreadEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 339
  %i.d = load i8, ptr %i.c, align 1, !range !18, !noundef !13
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK5cppgc8internal7Sweeper20IsSweepingInProgressEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 337
  %i.d = load i8, ptr %i.c, align 1, !range !18, !noundef !13
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN5cppgc8internal7Sweeper27PerformSweepOnMutatorThreadEN2v84base9TimeDeltaENS0_14StatsCollector7ScopeIdE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call fastcc noundef zeroext i1 @_ZN5cppgc8internal7Sweeper11SweeperImpl27PerformSweepOnMutatorThreadEN2v84base9TimeDeltaENS0_14StatsCollector7ScopeIdENS0_12_GLOBAL__N_125MutatorThreadSweepingModeE(ptr noundef nonnull align 8 dereferenceable(344) %i.b, i64 %1, i32 noundef %2, i32 noundef 1)
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5cppgc8internal7Sweeper11SweeperImpl27PerformSweepOnMutatorThreadEN2v84base9TimeDeltaENS0_14StatsCollector7ScopeIdENS0_12_GLOBAL__N_125MutatorThreadSweepingModeE(ptr noundef nonnull align 8 dereferenceable(344) %0, i64 %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca [2 x %"class.std::unique_ptr.129"], align 16 ; 6 uses
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 5 uses
  %5 = alloca %"class.v8::base::TimeDelta", align 8 ; 3 uses
  %6 = alloca %"class.cppgc::internal::StatsCollector::InternalScope", align 8 ; 14 uses
  %7 = alloca %"class.cppgc::internal::(anonymous namespace)::MutatorThreadSweeper", align 8 ; 13 uses
  %8 = alloca %"class.cppgc::internal::StatsCollector::InternalScope", align 8 ; 9 uses
  store i64 %1, ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 337 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !18, !noundef !13
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN5cppgc8internal7Sweeper11SweeperImpl26MutatorThreadSweepingScopeD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 339 ; 2 uses
  store i8 1, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %_ZN5cppgc8internal7Sweeper11SweeperImpl26MutatorThreadSweepingScopeC2ERS2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.05.08.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.05.08.i, align 8    ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22, !inline_history !26
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i, i64 8 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.k
  br i1 %i.r, label %_ZN5cppgc8internal7Sweeper11SweeperImpl26MutatorThreadSweepingScopeC2ERS2_.exit, label %.lr.ph.i

_ZN5cppgc8internal7Sweeper11SweeperImpl26MutatorThreadSweepingScopeC2ERS2_.exit: ; preds = %.lr.ph.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  call void @_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EEC2IJEEEPS1_NS1_7ScopeIdEDpT_(ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef %i.t, i32 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.u = load ptr, ptr %0, align 8, !nonnull !13, !align !14
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8
  store ptr %i.x, ptr %7, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.y, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.z, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 %i.ab, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 44
  store i32 0, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 9
  %i.aj = load i8, ptr %i.ai, align 1, !range !18, !noundef !13
  store i8 %i.aj, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ak = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #22
  %trunc.i = trunc nuw i32 %3 to i1
  %.str.115..str.116.i = select i1 %trunc.i, ptr @.str.115, ptr @.str.116
  store ptr %i.y, ptr %8, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.am = call i64 @_ZN2v84base9TimeTicks3NowEv() #22
  store i64 %i.am, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store i32 %2, ptr %i.an, align 8
  %i.ao = load atomic volatile i64, ptr @_ZZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EE14StartTraceImplIdPKcEEvS8_T_S8_T0_E28trace_event_unique_atomic481 acquire, align 8 ; 2 uses
  %i.ap = inttoptr i64 %i.ao to ptr
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5cppgc8internal7Sweeper11SweeperImpl26MutatorThreadSweepingScopeC2ERS2_.exit
  %i.aq = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #22 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call noundef ptr %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.2) #22, !inline_history !27 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  store atomic volatile i64 %i.av, ptr @_ZZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EE14StartTraceImplIdPKcEEvS8_T_S8_T0_E28trace_event_unique_atomic481 release, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5cppgc8internal7Sweeper11SweeperImpl26MutatorThreadSweepingScopeC2ERS2_.exit
  %.0.i = phi ptr [ %i.ap, %_ZN5cppgc8internal7Sweeper11SweeperImpl26MutatorThreadSweepingScopeC2ERS2_.exit ], [ %i.au, %bb.c ] ; 2 uses
  %i.aw = load atomic volatile i8, ptr %.0.i monotonic, align 1
  %i.ax = and i8 %i.aw, 5
  %.not8.i = icmp eq i8 %i.ax, 0
  br i1 %.not8.i, label %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EE14StartTraceImplIdPKcEEvS8_T_S8_T0_.exit, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit11.i

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit11.i: ; preds = %bb.d
  %i.ay = load i32, ptr %i.an, align 8
  %i.az = load ptr, ptr %8, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 176
  %i.bb = load i8, ptr %i.ba, align 8
  %i.bc = call noundef ptr @_ZN5cppgc8internal14StatsCollector12GetScopeNameENS1_7ScopeIdENS0_14CollectionTypeE(i32 noundef %i.ay, i8 noundef zeroext %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr @.str.113, ptr %i.a, align 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @.str.114, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i8 4, ptr %i.b, align 1
  store double %i.ak, ptr %i.c, align 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 6, ptr %i.be, align 1
  store ptr %.str.115..str.116.i, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.bg = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #22 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef i64 %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i8 noundef signext 66, ptr noundef nonnull %.0.i, ptr noundef %i.bc, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %4, i32 noundef 0) #22, !inline_history !27 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8            ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i40, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit11.i
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bm) #22, !inline_history !28
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.i, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit11.i
  %i.bq = load ptr, ptr %4, align 16              ; 3 uses
  %.not.i.1.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.1.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1.i, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1.i: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bq) #22, !inline_history !28
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1.i

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1.i: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1.i, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EE14StartTraceImplIdPKcEEvS8_T_S8_T0_.exit

_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EE14StartTraceImplIdPKcEEvS8_T_S8_T0_.exit: ; preds = %bb.d, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1.i
  %i.bu = call i64 @_ZN2v84base9TimeTicks3NowEv() #22
  %.sroa.011.0.copyload = load i64, ptr %5, align 8
  %i.bv = call noundef i64 @_ZN2v84base4bits20SignedSaturatedAdd64Ell(i64 noundef %.sroa.011.0.copyload, i64 noundef %i.bu) #22 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bx = call fastcc noundef zeroext i1 @_ZN5cppgc8internal12_GLOBAL__N_120MutatorThreadSweeper28FinalizeAndSweepWithDeadlineENS0_14StatsCollector7ScopeIdERNS1_13SweepingStateEN2v84base9TimeTicksENS1_25MutatorThreadSweepingModeE(ptr noundef nonnull align 8 dereferenceable(56) %7, i32 noundef 32, ptr noundef nonnull align 8 dereferenceable(80) %i.bw, i64 %i.bv, i32 noundef %3)
  br i1 %i.bx, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EE14StartTraceImplIdPKcEEvS8_T_S8_T0_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val29 = load ptr, ptr %i.bz, align 8          ; 2 uses
  %i.ca = icmp eq ptr %.val, %.val29
  br i1 %i.ca, label %.critedge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.041.046, i64 80 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %.val29
  br i1 %i.cc, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.041.046 = phi ptr [ %i.cb, %bb.f ], [ %.val, %bb.e ] ; 2 uses
  %i.cd = call fastcc noundef zeroext i1 @_ZN5cppgc8internal12_GLOBAL__N_120MutatorThreadSweeper28FinalizeAndSweepWithDeadlineENS0_14StatsCollector7ScopeIdERNS1_13SweepingStateEN2v84base9TimeTicksENS1_25MutatorThreadSweepingModeE(ptr noundef nonnull align 8 dereferenceable(56) %7, i32 noundef 33, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.041.046, i64 %i.bv, i32 noundef %3)
  br i1 %i.cd, label %bb.f, label %.loopexit

.critedge:                                        ; preds = %bb.f, %bb.e
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cf = call fastcc noundef zeroext i1 @_ZN5cppgc8internal12_GLOBAL__N_120MutatorThreadSweeper28FinalizeAndSweepWithDeadlineENS0_14StatsCollector7ScopeIdERNS1_13SweepingStateEN2v84base9TimeTicksENS1_25MutatorThreadSweepingModeE(ptr noundef nonnull align 8 dereferenceable(56) %7, i32 noundef 32, ptr noundef nonnull align 8 dereferenceable(80) %i.ce, i64 %i.bv, i32 noundef %3)
  %.not.not = icmp ne i32 %3, 0
  %spec.select = and i1 %i.cf, %.not.not
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.critedge, %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EE14StartTraceImplIdPKcEEvS8_T_S8_T0_.exit
  %cond = phi i1 [ false, %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EE14StartTraceImplIdPKcEEvS8_T_S8_T0_.exit ], [ %spec.select, %.critedge ], [ false, %.lr.ph ] ; 3 uses
  call void @_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EE13StopTraceImplEv(ptr noundef nonnull align 8 dereferenceable(20) %8)
  %i.cg = load i32, ptr %i.an, align 8
  %i.ch = icmp sgt i32 %i.cg, 5
  br i1 %i.ch, label %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.ci = call i64 @_ZN2v84base9TimeTicks3NowEv() #22
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.al, align 8
  %i.cj = sub nsw i64 %i.ci, %.sroa.01.0.copyload.i.i ; 2 uses
  %i.ck = load ptr, ptr %8, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 96
  %i.cm = load i32, ptr %i.an, align 8
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cn ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = add nsw i64 %i.cp, %i.cj
  store i64 %i.cq, ptr %i.co, align 8
  %i.cr = load ptr, ptr %8, align 8               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 320
  %i.ct = load ptr, ptr %i.cs, align 8
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cu = load i32, ptr %i.an, align 8
  call void @_ZN5cppgc8internal14StatsCollector21RecordHistogramSampleENS1_7ScopeIdEN2v84base9TimeDeltaE(ptr noundef nonnull align 8 dereferenceable(336) %i.cr, i32 noundef %i.cu, i64 %i.cj) #22
  br label %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit

_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit: ; preds = %.loopexit, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %cond, label %bb.i, label %.critedge28

bb.i:                                             ; preds = %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit
  call void @_ZN5cppgc8internal7Sweeper11SweeperImpl54SynchronizeAndFinalizeConcurrentAndIncrementalSweepingEv(ptr noundef nonnull align 8 dereferenceable(344) %0)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8            ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cy, %i.cw
  br i1 %.not.i.i.i, label %_ZN5cppgc8internal7Sweeper11SweeperImpl13FinalizeSweepEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i ], [ %i.cw, %bb.i ] ; 2 uses
  call fastcc void @_ZN5cppgc8internal12_GLOBAL__N_113SweepingStateD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.05.i.i.i.i.i) #22
  %i.cz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cz, %i.cy
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN5cppgc8internal12_GLOBAL__N_113SweepingStateEEvT_S5_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPN5cppgc8internal12_GLOBAL__N_113SweepingStateEEvT_S5_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.cw, ptr %i.cx, align 8
  br label %_ZN5cppgc8internal7Sweeper11SweeperImpl13FinalizeSweepEv.exit

_ZN5cppgc8internal7Sweeper11SweeperImpl13FinalizeSweepEv.exit: ; preds = %bb.i, %_ZSt8_DestroyIPN5cppgc8internal12_GLOBAL__N_113SweepingStateEEvT_S5_.exit.i.i.i
  store i8 0, ptr %i.d, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 338 ; 2 uses
  store i8 1, ptr %i.da, align 2
  store i64 0, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EE13StopTraceImplEv(ptr noundef nonnull align 8 dereferenceable(20) %6)
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.dc = load i32, ptr %i.db, align 8
  %i.dd = icmp sgt i32 %i.dc, 5
  br i1 %i.dd, label %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit35, label %bb.j

bb.j:                                             ; preds = %_ZN5cppgc8internal7Sweeper11SweeperImpl13FinalizeSweepEv.exit
  %i.de = call i64 @_ZN2v84base9TimeTicks3NowEv() #22
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.01.0.copyload.i.i33 = load i64, ptr %i.df, align 8
  %i.dg = sub nsw i64 %i.de, %.sroa.01.0.copyload.i.i33 ; 2 uses
  %i.dh = load ptr, ptr %6, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %i.dj = load i32, ptr %i.db, align 8
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dk ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = add nsw i64 %i.dm, %i.dg
  store i64 %i.dn, ptr %i.dl, align 8
  %i.do = load ptr, ptr %6, align 8               ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 320
  %i.dq = load ptr, ptr %i.dp, align 8
  %.not.i.i34 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i34, label %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit35, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dr = load i32, ptr %i.db, align 8
  call void @_ZN5cppgc8internal14StatsCollector21RecordHistogramSampleENS1_7ScopeIdEN2v84base9TimeDeltaE(ptr noundef nonnull align 8 dereferenceable(336) %i.do, i32 noundef %i.dr, i64 %i.dg) #22
  br label %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit35

_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit35: ; preds = %_ZN5cppgc8internal7Sweeper11SweeperImpl13FinalizeSweepEv.exit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  store i8 0, ptr %i.da, align 2
  %i.ds = load ptr, ptr %i.s, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.du = load i8, ptr %i.dt, align 8
  call void @_ZN5cppgc8internal14StatsCollector23NotifySweepingCompletedENS_4Heap12SweepingTypeE(ptr noundef nonnull align 8 dereferenceable(336) %i.ds, i8 noundef zeroext %i.du) #22
  %i.dv = load i8, ptr %i.aa, align 8
  %i.dw = icmp eq i8 %i.dv, 1
  br i1 %i.dw, label %bb.l, label %_ZN5cppgc8internal7Sweeper11SweeperImpl10NotifyDoneEv.exit

bb.l:                                             ; preds = %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit35
  %i.dx = load ptr, ptr %0, align 8, !nonnull !13, !align !14
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 72
  %i.ea = load ptr, ptr %i.dz, align 8
  call void @_ZN5cppgc8internal11PageBackend18ReleasePooledPagesEv(ptr noundef nonnull align 8 dereferenceable(216) %i.ea) #22
  br label %_ZN5cppgc8internal7Sweeper11SweeperImpl10NotifyDoneEv.exit

.critedge28:                                      ; preds = %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EE13StopTraceImplEv(ptr noundef nonnull align 8 dereferenceable(20) %6)
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = icmp sgt i32 %i.ec, 5
  br i1 %i.ed, label %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit38, label %bb.m

bb.m:                                             ; preds = %.critedge28
  %i.ee = call i64 @_ZN2v84base9TimeTicks3NowEv() #22
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.01.0.copyload.i.i36 = load i64, ptr %i.ef, align 8
  %i.eg = sub nsw i64 %i.ee, %.sroa.01.0.copyload.i.i36 ; 2 uses
  %i.eh = load ptr, ptr %6, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 96
  %i.ej = load i32, ptr %i.eb, align 8
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ek ; 2 uses
  %i.em = load i64, ptr %i.el, align 8
  %i.en = add nsw i64 %i.em, %i.eg
  store i64 %i.en, ptr %i.el, align 8
  %i.eo = load ptr, ptr %6, align 8               ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 320
  %i.eq = load ptr, ptr %i.ep, align 8
  %.not.i.i37 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i37, label %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit38, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.er = load i32, ptr %i.eb, align 8
  call void @_ZN5cppgc8internal14StatsCollector21RecordHistogramSampleENS1_7ScopeIdEN2v84base9TimeDeltaE(ptr noundef nonnull align 8 dereferenceable(336) %i.eo, i32 noundef %i.er, i64 %i.eg) #22
  br label %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit38

_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit38: ; preds = %.critedge28, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZN5cppgc8internal7Sweeper11SweeperImpl10NotifyDoneEv.exit

_ZN5cppgc8internal7Sweeper11SweeperImpl10NotifyDoneEv.exit: ; preds = %bb.l, %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit35, %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit38
  store i8 0, ptr %i.g, align 1
  %i.es = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.et = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZN5cppgc8internal7Sweeper11SweeperImpl26MutatorThreadSweepingScopeD2Ev.exit, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %_ZN5cppgc8internal7Sweeper11SweeperImpl10NotifyDoneEv.exit, %.lr.ph.i39
  %.sroa.04.07.i = phi ptr [ %i.ez, %.lr.ph.i39 ], [ %i.es, %_ZN5cppgc8internal7Sweeper11SweeperImpl10NotifyDoneEv.exit ] ; 2 uses
  %i.ev = load ptr, ptr %.sroa.04.07.i, align 8   ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #22, !inline_history !29
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.et
  br i1 %i.fa, label %_ZN5cppgc8internal7Sweeper11SweeperImpl26MutatorThreadSweepingScopeD2Ev.exit, label %.lr.ph.i39

_ZN5cppgc8internal7Sweeper11SweeperImpl26MutatorThreadSweepingScopeD2Ev.exit: ; preds = %.lr.ph.i39, %_ZN5cppgc8internal7Sweeper11SweeperImpl10NotifyDoneEv.exit, %bb.a
  %.5 = phi i1 [ true, %bb.a ], [ %cond, %_ZN5cppgc8internal7Sweeper11SweeperImpl10NotifyDoneEv.exit ], [ %cond, %.lr.ph.i39 ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal7Sweeper31SweepingOnMutatorThreadObserverC2ERS1_(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5cppgc8internal7Sweeper31SweepingOnMutatorThreadObserverE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 312 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 320 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 328 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.f, align 8
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.e, align 8
  br label %_ZN5cppgc8internal7Sweeper11SweeperImpl32AddMutatorThreadSweepingObserverEPNS1_31SweepingOnMutatorThreadObserverE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 6 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorIPN5cppgc8internal7Sweeper31SweepingOnMutatorThreadObserverESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
end_hunk_0
