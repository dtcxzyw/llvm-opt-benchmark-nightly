inline.NumInlined: 1831
inline.NumDeleted: 992
begin_hunk_0_@_ZN5cppgc8internal7Sweeper11SweeperImpl27PerformSweepOnMutatorThreadEN2v84base9TimeDeltaENS0_14StatsCollector7ScopeIdENS0_12_GLOBAL__N_125MutatorThreadSweepingModeE:bb.a
  store i8 %i.aj, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ak = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #23
  %trunc.i = trunc nuw i32 %3 to i1
  %.str.115..str.116.i = select i1 %trunc.i, ptr @.str.115, ptr @.str.116
  store ptr %i.y, ptr %8, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5cppgc8internal7Sweeper11SweeperImpl27PerformSweepOnMutatorThreadEN2v84base9TimeDeltaENS0_14StatsCollector7ScopeIdENS0_12_GLOBAL__N_125MutatorThreadSweepingModeE:bb.a
.critedge:                                        ; preds = %bb.f, %bb.e
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cf = call fastcc noundef zeroext i1 @_ZN5cppgc8internal12_GLOBAL__N_120MutatorThreadSweeper28FinalizeAndSweepWithDeadlineENS0_14StatsCollector7ScopeIdERNS1_13SweepingStateEN2v84base9TimeTicksENS1_25MutatorThreadSweepingModeE(ptr noundef nonnull align 8 dereferenceable(56) %7, i32 noundef 32, ptr noundef nonnull align 8 dereferenceable(80) %i.ce, i64 %i.bv, i32 noundef %3)
  %.not.not = icmp ne i32 %3, 0
  %spec.select = and i1 %i.cf, %.not.not
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.critedge, %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EE14StartTraceImplIdPKcEEvS8_T_S8_T0_.exit
end_hunk_1
