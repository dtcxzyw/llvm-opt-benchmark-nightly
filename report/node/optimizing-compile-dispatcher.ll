inline.NumInlined: 1216
inline.NumDeleted: 538
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal27OptimizingCompileDispatcher11FlushQueuesENS0_16BlockingBehaviorE:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.x, align 8
  call void @_ZN4heap4base5Stack24TrampolineCallbackHelperEPvPFvPS1_S2_PKvE(ptr noundef nonnull align 8 dereferenceable(80) %i.w, ptr noundef nonnull %2, ptr noundef nonnull @"_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal9LocalHeap28ExecuteMainThreadWhileParkedIZNS4_27OptimizingCompileDispatcher28WaitUntilCompilationJobsDoneEvE3$_0EEvT_EUlvE_EEvPS1_PvPKv") #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal29OptimizingCompileTaskExecutor31CancelCompilationJobsForIsolateEPNS0_7IsolateE.exit
  call void @_ZN2v88internal27OptimizingCompileDispatcher16FlushOutputQueueEv(ptr noundef nonnull align 8 dereferenceable(105) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal27OptimizingCompileDispatcher5FlushENS0_16BlockingBehaviorE(ptr noundef nonnull align 8 dereferenceable(105) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 576 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8
  tail call void @_ZN2v88internal27OptimizingCompileDispatcher11FlushQueuesENS0_16BlockingBehaviorE(ptr noundef nonnull align 8 dereferenceable(105) %0, i32 noundef %1)
  %i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 410), align 2, !range !8, !noundef !9
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %1, 0
  %i.l = select i1 %i.k, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.l) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store ptr %i.c, ptr %i.b, align 8
  %i.m = load i32, ptr %i.f, align 8
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.f, align 8
  %i.o = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.o, %i.e
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.d, !prof !46

bb.d:                                             ; preds = %bb.c
  store ptr %i.e, ptr %i.d, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.a) #15
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.d, %bb.c
  ret void
}

declare void @_ZN2v88internal6PrintFEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal27OptimizingCompileDispatcher13StartTearDownEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(105) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 576 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %0, align 8
  tail call void @_ZN2v88internal27OptimizingCompileInputQueue19FlushJobsForIsolateEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef %i.k)
  %i.l = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 88 ; 3 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #15
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.r, 6
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i
  %.not13.i = icmp eq i64 %i.r, 0
  br i1 %.not13.i, label %_ZN2v88internal29OptimizingCompileTaskExecutor31CancelCompilationJobsForIsolateEPNS0_7IsolateE.exit.thread, label %.lr.ph.i

_ZN2v88internal29OptimizingCompileTaskExecutor31CancelCompilationJobsForIsolateEPNS0_7IsolateE.exit.thread: ; preds = %bb.a
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #15
  br label %bb.e

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.014.i = phi ptr [ %i.x, %bb.d ], [ %i.p, %bb.a ] ; 3 uses
  %i.t = load ptr, ptr %.014.i, align 64
  %i.u = icmp eq ptr %i.t, %i.m
  br i1 %i.u, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not12.i = icmp eq ptr %i.w, null
  br i1 %.not12.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal22TurbofanCompilationJob6CancelEv(ptr noundef nonnull align 8 dereferenceable(80) %i.w) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.014.i, i64 64 ; 2 uses
  %.not.i1 = icmp eq ptr %i.x, %i.s
  br i1 %.not.i1, label %_ZN2v88internal29OptimizingCompileTaskExecutor31CancelCompilationJobsForIsolateEPNS0_7IsolateE.exit, label %.lr.ph.i

_ZN2v88internal29OptimizingCompileTaskExecutor31CancelCompilationJobsForIsolateEPNS0_7IsolateE.exit: ; preds = %bb.d
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #15
  %i.y = icmp eq ptr %i.a, null
  br i1 %i.y, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.e, !prof !91

bb.e:                                             ; preds = %_ZN2v88internal29OptimizingCompileTaskExecutor31CancelCompilationJobsForIsolateEPNS0_7IsolateE.exit.thread, %_ZN2v88internal29OptimizingCompileTaskExecutor31CancelCompilationJobsForIsolateEPNS0_7IsolateE.exit
  store ptr %i.c, ptr %i.b, align 8
  %i.z = load i32, ptr %i.f, align 8
  %i.aa = add nsw i32 %i.z, -1
  store i32 %i.aa, ptr %i.f, align 8
  %i.ab = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.ab, %i.e
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.f, !prof !46

bb.f:                                             ; preds = %bb.e
  store ptr %i.e, ptr %i.d, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.a) #15
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.f, %bb.e, %_ZN2v88internal29OptimizingCompileTaskExecutor31CancelCompilationJobsForIsolateEPNS0_7IsolateE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal27OptimizingCompileDispatcher25InstallOptimizedFunctionsEv(ptr noundef nonnull align 8 dereferenceable(105) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 5 uses
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.644", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 576 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #15, !noalias !92
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.j, align 8, !noalias !92
  %i.m = load ptr, ptr %i.k, align 8, !noalias !92 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN2v88internal28OptimizingCompileOutputQueue7DequeueEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.b

_ZN2v88internal28OptimizingCompileOutputQueue7DequeueEv.exit.thread: ; preds = %_ZNSt10unique_ptrIN2v88internal22TurbofanCompilationJobESt14default_deleteIS2_EED2Ev.exit, %bb.a
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #15, !noalias !92
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN2v88internal22TurbofanCompilationJobESt14default_deleteIS2_EED2Ev.exit
  %i.r = phi ptr [ %i.m, %.lr.ph ], [ %i.cd, %_ZNSt10unique_ptrIN2v88internal22TurbofanCompilationJobESt14default_deleteIS2_EED2Ev.exit ] ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !92 ; 7 uses
  %i.t = load ptr, ptr %i.o, align 8, !noalias !92
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  %.not.i.i = icmp eq ptr %i.r, %i.u
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  br label %_ZN2v88internal28OptimizingCompileOutputQueue7DequeueEv.exit

bb.d:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.p, align 8, !noalias !92
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef 512) #16, !noalias !92
  %i.x = load ptr, ptr %i.q, align 8, !noalias !92
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.q, align 8, !noalias !92
  %i.z = load ptr, ptr %i.y, align 8, !noalias !92 ; 3 uses
  store ptr %i.z, ptr %i.p, align 8, !noalias !92
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 512
  store ptr %i.aa, ptr %i.o, align 8, !noalias !92
  br label %_ZN2v88internal28OptimizingCompileOutputQueue7DequeueEv.exit

_ZN2v88internal28OptimizingCompileOutputQueue7DequeueEv.exit: ; preds = %bb.c, %bb.d
  %storemerge.i.i = phi ptr [ %i.v, %bb.c ], [ %i.z, %bb.d ]
  store ptr %storemerge.i.i, ptr %i.k, align 8, !noalias !92
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #15, !noalias !92
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal28OptimizingCompileOutputQueue7DequeueEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.sroa.0.0.copyload.i7 = load ptr, ptr %i.ad, align 8
  %i.ae = load i64, ptr %.sroa.0.0.copyload.i7, align 8
  %i.af = load ptr, ptr %0, align 8               ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 560 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 568
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !95

bb.f:                                             ; preds = %bb.e
  %i.al = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.af) #15
  br label %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.al, %bb.f ], [ %i.ah, %bb.e ] ; 5 uses
  %i.am = ptrtoint ptr %.0.i.i to i64
  %i.an = add i64 %i.am, 8
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr %i.ao, ptr %i.ag, align 8
  store i64 %i.ae, ptr %.0.i.i, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.aq = load i32, ptr %i.ap, align 8
  %.not48 = icmp eq i32 %i.aq, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  br i1 %.not48, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %3 = load i64, ptr %.0.i.i, align 8
  store i64 %3, ptr %1, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.as = load i8, ptr %i.ar, align 8
  %i.at = call noundef zeroext i1 @_ZNK2v88internal10JSFunction20HasAvailableCodeKindENS0_17IsolateForSandboxENS0_8CodeKindE(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %i.as) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br i1 %i.at, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 410), align 2, !range !8, !noundef !9
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.7) #15
  %i.aw = load i64, ptr %.0.i.i, align 8
  %i.ax = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal10ShortPrintILNS0_23HeapObjectReferenceTypeE1EmEEvNS0_10TaggedImplIXT_ET0_EEP8_IO_FILE(i64 %i.aw, ptr noundef %i.ax) #15
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.8) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ay = load ptr, ptr %0, align 8
  call void @_ZN2v88internal8Compiler29DisposeTurbofanCompilationJobEPNS0_7IsolateEPNS0_22TurbofanCompilationJobE(ptr noundef %i.ay, ptr noundef nonnull %i.s) #15
  br label %_ZNSt10unique_ptrIN2v88internal22TurbofanCompilationJobESt14default_deleteIS2_EED2Ev.exit, !llvm.loop !96

.critedge:                                        ; preds = %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.az = load i64, ptr %.0.i.i, align 8
  %i.ba = add i64 %i.az, 39
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = add i64 %i.bc, -1
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load atomic volatile i64, ptr %i.be monotonic, align 8
  %i.bg = add i64 %i.bf, 31
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load i64, ptr %i.bh, align 8
  store i64 %i.bi, ptr %2, align 8
  %i.bj = call i64 @_ZNK2v88internal7Context13global_objectEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #15 ; 2 uses
  %i.bk = load ptr, ptr %0, align 8               ; 3 uses
  %i.bl = add i64 %i.bj, 31
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = add i64 %i.bn, -1
  %i.bp = inttoptr i64 %i.bo to ptr               ; 2 uses
  %i.bq = load atomic volatile i64, ptr %i.bp monotonic, align 8
  %i.br = add i64 %i.bq, 11
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load atomic volatile i16, ptr %i.bs monotonic, align 2
  %i.bu = icmp eq i16 %i.bt, 302
  br i1 %i.bu, label %bb.l, label %.thread.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 664
  br label %_ZN2v88internal14JSGlobalObject10IsDetachedEPNS0_7IsolateE.exit

.thread.i.i.i.i:                                  ; preds = %bb.k
  %i.bw = load atomic volatile i64, ptr %i.bp monotonic, align 8
  %i.bx = add i64 %i.bw, 23
  %i.by = inttoptr i64 %i.bx to ptr
  br label %_ZN2v88internal14JSGlobalObject10IsDetachedEPNS0_7IsolateE.exit

_ZN2v88internal14JSGlobalObject10IsDetachedEPNS0_7IsolateE.exit: ; preds = %bb.l, %.thread.i.i.i.i
  %.sink.i.in.i.i = phi ptr [ %i.bv, %bb.l ], [ %i.by, %.thread.i.i.i.i ]
  %.sink.i.i.i = load i64, ptr %.sink.i.in.i.i, align 8
  %.not49 = icmp eq i64 %.sink.i.i.i, %i.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br i1 %.not49, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal14JSGlobalObject10IsDetachedEPNS0_7IsolateE.exit
  call void @_ZN2v88internal8Compiler29DisposeTurbofanCompilationJobEPNS0_7IsolateEPNS0_22TurbofanCompilationJobE(ptr noundef %i.bk, ptr noundef nonnull %i.s) #15
  br label %_ZNSt10unique_ptrIN2v88internal22TurbofanCompilationJobESt14default_deleteIS2_EED2Ev.exit, !llvm.loop !96

bb.n:                                             ; preds = %_ZN2v88internal14JSGlobalObject10IsDetachedEPNS0_7IsolateE.exit
  call void @_ZN2v88internal8Compiler30FinalizeTurbofanCompilationJobEPNS0_22TurbofanCompilationJobEPNS0_7IsolateE(ptr noundef nonnull %i.s, ptr noundef %i.bk) #15
  br label %_ZNSt10unique_ptrIN2v88internal22TurbofanCompilationJobESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal22TurbofanCompilationJobESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.j, %bb.m, %bb.n
  %i.bz = load ptr, ptr %i.s, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(80) %i.s) #15, !inline_history !64
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #15, !noalias !92
  %i.cc = load ptr, ptr %i.j, align 8, !noalias !92
  %i.cd = load ptr, ptr %i.k, align 8, !noalias !92 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZN2v88internal28OptimizingCompileOutputQueue7DequeueEv.exit.thread, label %bb.b

.loopexit:                                        ; preds = %_ZN2v88internal28OptimizingCompileOutputQueue7DequeueEv.exit, %_ZN2v88internal28OptimizingCompileOutputQueue7DequeueEv.exit.thread
  %i.cf = icmp eq ptr %i.a, null
  br i1 %i.cf, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.o, !prof !95

bb.o:                                             ; preds = %.loopexit
  store ptr %i.c, ptr %i.b, align 8
  %i.cg = load i32, ptr %i.f, align 8
  %i.ch = add nsw i32 %i.cg, -1
  store i32 %i.ch, ptr %i.f, align 8
  %i.ci = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.ci, %i.e
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.p, !prof !46

bb.p:                                             ; preds = %bb.o
  store ptr %i.e, ptr %i.d, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.a) #15
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.p, %bb.o, %.loopexit
  ret void
}

declare noundef zeroext i1 @_ZNK2v88internal10JSFunction20HasAvailableCodeKindENS0_17IsolateForSandboxENS0_8CodeKindE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v88internal10ShortPrintILNS0_23HeapObjectReferenceTypeE1EmEEvNS0_10TaggedImplIXT_ET0_EEP8_IO_FILE(i64, ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal8Compiler30FinalizeTurbofanCompilationJobEPNS0_22TurbofanCompilationJobEPNS0_7IsolateE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal27OptimizingCompileDispatcher24InstallGeneratedBuiltinsEi(ptr noundef nonnull align 8 dereferenceable(105) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %0, align 8
  %i.c = tail call noundef i32 @_ZN2v88internal28OptimizingCompileOutputQueue24InstallGeneratedBuiltinsEPNS0_7IsolateEi(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef %i.b, i32 noundef %1)
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal28OptimizingCompileOutputQueue24InstallGeneratedBuiltinsEPNS0_7IsolateEi(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.std::_Deque_iterator", align 8 ; 8 uses
  %4 = alloca %"struct.std::_Deque_iterator", align 8 ; 9 uses
  %5 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %7 = alloca %"struct.std::_Deque_iterator", align 8 ; 8 uses
  %8 = alloca %"struct.std::_Deque_iterator", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 63768
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !95

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !97 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !97 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !noalias !97 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !noalias !97 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !noalias !100 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !noalias !100 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !noalias !100 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !noalias !100 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.t = icmp eq ptr %i.e, %i.m
  br i1 %i.t, label %"_ZSt4sortISt15_Deque_iteratorIPN2v88internal22TurbofanCompilationJobERS4_PS4_EZNS2_28OptimizingCompileOutputQueue24InstallGeneratedBuiltinsEPNS2_7IsolateEiE3$_0EvT_SC_T0_.exit.thread", label %bb.d

"_ZSt4sortISt15_Deque_iteratorIPN2v88internal22TurbofanCompilationJobERS4_PS4_EZNS2_28OptimizingCompileOutputQueue24InstallGeneratedBuiltinsEPNS2_7IsolateEiE3$_0EvT_SC_T0_.exit.thread": ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  store ptr %i.e, ptr %7, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.g, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.i, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.k, ptr %i.w, align 8
  store ptr %i.m, ptr %8, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.o, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.q, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.s, ptr %i.z, align 8
  %i.aa = ptrtoint ptr %i.s to i64
  %i.ab = ptrtoint ptr %i.k to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = icmp ne ptr %i.s, null
  %.neg.i.i.i = sext i1 %i.ae to i64
  %i.af = add nsw i64 %i.ad, %.neg.i.i.i
  %i.ag = shl nsw i64 %i.af, 6
  %i.ah = ptrtoint ptr %i.m to i64
  %i.ai = ptrtoint ptr %i.o to i64
end_hunk_0
