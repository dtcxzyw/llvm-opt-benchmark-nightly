inline.NumInlined: 229
inline.NumDeleted: 126
begin_hunk_0_@_ZN5folly10symbolizer25installFatalSignalHandlerESt6bitsetILm64EE:bb.a
  %1 = alloca %struct.stack_t, align 8            ; 6 uses
  %2 = alloca %struct.sigaction, align 8          ; 11 uses
  %3 = alloca %"class.google::ErrnoLogMessage", align 8 ; 7 uses
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = atomicrmw xchg ptr @_ZN5folly10symbolizer12_GLOBAL__N_117gAlreadyInstalledE, i8 1 seq_cst, align 1
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.v, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN5folly10symbolizer25installFatalSignalHandlerESt6bitsetILm64EE:bb.a
  store ptr @_ZN5folly10symbolizer12_GLOBAL__N_113signalHandlerEiP9siginfo_tPv, ptr %2, align 8, !tbaa !57
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly10symbolizer12_GLOBAL__N_113kFatalSignalsE, i64 8), align 8, !tbaa !58
  %.not28 = icmp eq ptr %i.ae, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.o

._crit_edge:                                      ; preds = %.critedge18, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.v

bb.o:                                             ; preds = %.lr.ph, %.critedge18
  %.01429 = phi ptr [ @_ZN5folly10symbolizer12_GLOBAL__N_113kFatalSignalsE, %.lr.ph ], [ %i.ar, %.critedge18 ] ; 4 uses
  %i.af = load i32, ptr %.01429, align 8, !tbaa !61 ; 4 uses
  %i.ag = icmp slt i32 %i.af, 64
  br i1 %i.ag, label %bb.p, label %.critedge18
end_hunk_1
begin_hunk_2_@_ZN5folly10symbolizer25installFatalSignalHandlerESt6bitsetILm64EE:bb.a
bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 ptrtoint (ptr @_ZN6google10LogMessage9SendToLogEv to i64), ptr %i.a, align 8, !tbaa !57
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !57
  call void @_ZN6google15ErrnoLogMessageC1EPKciilMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str, i32 noundef 633, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
end_hunk_2
