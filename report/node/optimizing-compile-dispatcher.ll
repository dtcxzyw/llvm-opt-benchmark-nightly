Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/optimizing-compile-dispatcher?download=true
inline.NumInlined: 1216
inline.NumDeleted: 538
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal29OptimizingCompileTaskExecutor11CompileTask3RunEPNS_11JobDelegateE:bb.a

_ZN2v88internal29OptimizingCompileTaskExecutor25NextInputIfIsolateMatchesERNS0_26OptimizingCompileTaskStateE.exit.thread: ; preds = %.lr.ph, %bb.i
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by) #15
  call void @_ZN2v88internal12LocalIsolateD1Ev(ptr noundef nonnull align 8 dereferenceable(2024) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @_ZN2v84base3FPU17SetFlushDenormalsEb(i1 noundef zeroext %i.bs) #15
  %i.cu = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 88 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cv) #15
  store ptr null, ptr %i.ak, align 64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 96
  call void @_ZN2v84base17ConditionVariable9NotifyAllEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cw) #15
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cv) #15
  %i.cx = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 88 ; 3 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cy) #15
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.db = load ptr, ptr %i.cz, align 8
  %i.dc = load ptr, ptr %i.da, align 8            ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %.loopexit42.sink.split, label %.lr.ph64

_ZN2v88internal29OptimizingCompileTaskExecutor25NextInputIfIsolateMatchesERNS0_26OptimizingCompileTaskStateE.exit: ; preds = %bb.k, %bb.l
  %storemerge.i.i.i34 = phi ptr [ %i.cm, %bb.k ], [ %i.cs, %bb.l ]
  store ptr %storemerge.i.i.i34, ptr %i.ca, align 8
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by) #15
  %i.de = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal29OptimizingCompileTaskExecutor17RunCompilationJobERNS0_26OptimizingCompileTaskStateEPNS0_7IsolateERNS0_12LocalIsolateEPNS0_22TurbofanCompilationJobE(ptr noundef nonnull align 8 dereferenceable(137) %i.de, ptr noundef nonnull align 64 dereferenceable(64) %i.ak, ptr noundef nonnull %i.bo, ptr noundef nonnull align 8 dereferenceable(2024) %4, ptr noundef nonnull %i.ce)
  %i.df = load ptr, ptr %1, align 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = call noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  br i1 %i.dh, label %.loopexit, label %.lr.ph, !llvm.loop !234

.loopexit:                                        ; preds = %bb.h, %_ZN2v88internal29OptimizingCompileTaskExecutor25NextInputIfIsolateMatchesERNS0_26OptimizingCompileTaskStateE.exit
  call void @_ZN2v88internal12LocalIsolateD1Ev(ptr noundef nonnull align 8 dereferenceable(2024) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @_ZN2v84base3FPU17SetFlushDenormalsEb(i1 noundef zeroext %i.bs) #15
  %i.di = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 88 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dj) #15
  store ptr null, ptr %i.ak, align 64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  call void @_ZN2v84base17ConditionVariable9NotifyAllEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dk) #15
  br label %.loopexit42.sink.split

.loopexit42.sink.split:                           ; preds = %_ZN2v88internal29OptimizingCompileTaskExecutor25NextInputIfIsolateMatchesERNS0_26OptimizingCompileTaskStateE.exit.thread, %.lr.ph46, %.loopexit
  %.sink = phi ptr [ %i.dj, %.loopexit ], [ %i.aq, %.lr.ph46 ], [ %i.cy, %_ZN2v88internal29OptimizingCompileTaskExecutor25NextInputIfIsolateMatchesERNS0_26OptimizingCompileTaskStateE.exit.thread ]
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) #15
  br label %.loopexit42

.loopexit42:                                      ; preds = %.loopexit42.sink.split, %bb.e
  %i.dl = load ptr, ptr %3, align 8
  %.not.i35 = icmp eq ptr %i.dl, null
  br i1 %.not.i35, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.loopexit42
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = load atomic volatile i8, ptr %i.dn monotonic, align 1
  %.not1.i = icmp eq i8 %i.do, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dp = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #15 ; 2 uses
  %i.dq = load ptr, ptr %i.dm, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = load ptr, ptr %i.dp, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef %i.dq, ptr noundef %i.ds, i64 noundef %i.du) #15, !inline_history !4
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %.loopexit42, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2v88internal29OptimizingCompileTaskExecutor11CompileTask17GetMaxConcurrencyEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #15
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3
  %i.n = icmp ne ptr %i.g, null
  %.neg.i.i.i = sext i1 %i.n to i64
  %i.o = add nsw i64 %i.m, %.neg.i.i.i
  %i.p = shl nsw i64 %i.o, 6
  %i.q = load ptr, ptr %i.d, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load ptr, ptr %i.e, align 8
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #15
  %i.ae = add i64 %i.w, %1
  %i.af = add i64 %i.ae, %i.p
  %i.ag = add i64 %i.af, %i.ad
  %i.ah = load ptr, ptr %i.a, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.aj = load i64, ptr %i.ai, align 8
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ag)
  ret i64 %.sroa.speculated
}

declare void @_ZN2v88internal12LocalIsolateC1EPNS0_7IsolateENS0_10ThreadKindE(ptr noundef nonnull align 8 dereferenceable(2024), ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v88internal12LocalIsolateD1Ev(ptr noundef nonnull align 8 dereferenceable(2024)) unnamed_addr #9

declare noundef zeroext i1 @_ZN2v84base3FPU17GetFlushDenormalsEv() local_unnamed_addr #2

declare void @_ZN2v84base3FPU17SetFlushDenormalsEb(i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v88internal15TimerEventScopeINS0_29TimerEventRecompileConcurrentEE13LogTimerEventENS_14LogEventStatusE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZN2v88internal4Heap5stackEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #2

declare void @_ZN4heap4base5Stack24TrampolineCallbackHelperEPvPFvPS1_S2_PKvE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal9LocalHeap28ExecuteMainThreadWhileParkedIZNS4_27OptimizingCompileDispatcher28WaitUntilCompilationJobsDoneEvE3$_0EEvT_EUlvE_EEvPS1_PvPKv"(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 align 2 {
bb.a:
  %.sroa.0.0.copyload = load <2 x ptr>, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %.val = load ptr, ptr %1, align 8               ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val6 = load ptr, ptr %i.b, align 8            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 12 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 9 ; 2 uses
  %i.g = cmpxchg weak ptr %i.f, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.h = extractvalue { i8, i1 } %i.g, 1
  br i1 %i.h, label %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9LocalHeap12ParkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %.val) #15
  br label %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i

_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i: ; preds = %bb.b, %bb.a
  %.val.val.i = load ptr, ptr %.val6, align 8
  %i.i = getelementptr i8, ptr %.val6, i64 8
  %.val.val1.i = load ptr, ptr %i.i, align 8
  tail call void @_ZN2v88internal29OptimizingCompileTaskExecutor38WaitUntilCompilationJobsDoneForIsolateEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(137) %.val.val1.i, ptr noundef readnone %.val.val.i)
  %i.j = load i32, ptr %i.c, align 4
  %i.k = add nsw i32 %i.j, -1
  store i32 %i.k, ptr %i.c, align 4
  %i.l = cmpxchg weak ptr %i.f, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.m = extractvalue { i8, i1 } %i.l, 1
  br i1 %i.m, label %"_ZZN2v88internal9LocalHeap28ExecuteMainThreadWhileParkedIZNS0_27OptimizingCompileDispatcher28WaitUntilCompilationJobsDoneEvE3$_0EEvT_ENKUlvE_clEv.exit", label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i
  tail call void @_ZN2v88internal9LocalHeap14UnparkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %.val) #15
  br label %"_ZZN2v88internal9LocalHeap28ExecuteMainThreadWhileParkedIZNS0_27OptimizingCompileDispatcher28WaitUntilCompilationJobsDoneEvE3$_0EEvT_ENKUlvE_clEv.exit"

"_ZZN2v88internal9LocalHeap28ExecuteMainThreadWhileParkedIZNS0_27OptimizingCompileDispatcher28WaitUntilCompilationJobsDoneEvE3$_0EEvT_ENKUlvE_clEv.exit": ; preds = %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit.i, %bb.c
  store <2 x ptr> %.sroa.0.0.copyload, ptr %0, align 8
  ret void
}

declare void @_ZN2v88internal9LocalHeap12ParkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944)) local_unnamed_addr #2

declare void @_ZN2v88internal9LocalHeap14UnparkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIPN2v88internal22TurbofanCompilationJobESaIS3_EE8_M_eraseESt15_Deque_iteratorIS3_RS3_PS3_ES9_(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef dead_on_return %2, ptr noundef dead_on_return %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %5 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %7 = alloca %"struct.std::_Deque_iterator", align 8 ; 3 uses
  %8 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %9 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %10 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %11 = alloca %"struct.std::_Deque_iterator", align 8 ; 3 uses
  %i.a = load ptr, ptr %2, align 8                ; 6 uses
  %i.b = load ptr, ptr %3, align 8                ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load <2 x ptr>, ptr %13, align 8
  store <2 x ptr> %i.d, ptr %12, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %14 = load ptr, ptr %i.f, align 8
  store ptr %14, ptr %i.e, align 8
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !noalias !271 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.l = icmp eq ptr %i.a, %i.h                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 5 uses
  br i1 %i.l, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.r = icmp eq ptr %i.b, %i.n
  br i1 %i.r, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.i, align 8, !noalias !272 ; 2 uses
  %i.t = load ptr, ptr %i.j, align 8, !noalias !272 ; 2 uses
  %i.u = load ptr, ptr %i.k, align 8, !noalias !272 ; 4 uses
  %i.v = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.w = icmp ult ptr %i.u, %i.v
  br i1 %i.w, label %.lr.ph.i.i.i, label %_ZNSt5dequeIPN2v88internal22TurbofanCompilationJobESaIS3_EE5clearEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.06.i.pn.i.i = phi ptr [ %.06.i.i.i, %.lr.ph.i.i.i ], [ %i.u, %bb.e ]
  %.06.i.i.i = getelementptr inbounds nuw i8, ptr %.06.i.pn.i.i, i64 8 ; 3 uses
  %i.x = load ptr, ptr %.06.i.i.i, align 8
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef 512) #16
  %i.y = icmp ult ptr %.06.i.i.i, %i.v
  br i1 %i.y, label %.lr.ph.i.i.i, label %_ZNSt5dequeIPN2v88internal22TurbofanCompilationJobESaIS3_EE5clearEv.exit, !llvm.loop !1

_ZNSt5dequeIPN2v88internal22TurbofanCompilationJobESaIS3_EE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %bb.e
  store ptr %i.h, ptr %i.m, align 8
  store ptr %i.s, ptr %i.o, align 8
  store ptr %i.t, ptr %i.p, align 8
  store ptr %i.u, ptr %i.q, align 8
  store ptr %i.h, ptr %0, align 8, !alias.scope !273
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.z, align 8, !alias.scope !273
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %i.aa, align 8, !alias.scope !273
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.u, ptr %i.ab, align 8, !alias.scope !273
  br label %bb.t

.critedge:                                        ; preds = %bb.c, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8            ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load ptr, ptr %i.ae, align 8            ; 4 uses
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = icmp ne ptr %i.ad, null
  %.neg.i = sext i1 %i.ak to i64
  %i.al = add nsw i64 %i.aj, %.neg.i
  %i.am = shl nsw i64 %i.al, 6
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.ap = ptrtoint ptr %i.b to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3
  %i.at = add nsw i64 %i.am, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  %i.ba = add nsw i64 %i.at, %i.az                ; 5 uses
  %i.bb = sub i64 0, %i.ba
  %i.bc = load ptr, ptr %i.j, align 8, !noalias !274 ; 3 uses
  %i.bd = load ptr, ptr %i.k, align 8, !noalias !274 ; 3 uses
  %i.be = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bf = sub i64 %i.ah, %i.be
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = icmp ne ptr %i.af, null
  %.neg.i5 = sext i1 %i.bh to i64
  %i.bi = add nsw i64 %i.bg, %.neg.i5
  %i.bj = shl nsw i64 %i.bi, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8            ; 3 uses
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.ax, %i.bm
  %i.bo = ashr exact i64 %i.bn, 3
  %i.bp = ptrtoint ptr %i.bc to i64
  %i.bq = ptrtoint ptr %i.h to i64                ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 3                 ; 2 uses
  %i.bt = add nsw i64 %i.bo, %i.bs
  %i.bu = add i64 %i.bt, %i.bj                    ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8            ; 4 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.be
  %i.ca = ashr exact i64 %i.bz, 3
  %i.cb = icmp ne ptr %i.bx, null
  %.neg.i.i = sext i1 %i.cb to i64
  %i.cc = add nsw i64 %i.ca, %.neg.i.i
  %i.cd = shl nsw i64 %i.cc, 6
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8            ; 3 uses
  %i.cg = ptrtoint ptr %i.n to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = ashr exact i64 %i.ci, 3                 ; 2 uses
  %i.ck = sub i64 %i.bs, %i.ba
  %i.cl = add i64 %i.ck, %i.cj
  %i.cm = add i64 %i.cl, %i.cd
  %i.cn = lshr i64 %i.cm, 1
  %.not = icmp ugt i64 %i.bu, %i.cn
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.critedge
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.co = load ptr, ptr %i.i, align 8, !noalias !275
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !276
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !277
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !277
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !277
  store ptr %i.h, ptr %8, align 8, !noalias !278
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.co, ptr %i.cr, align 8, !noalias !278
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.bc, ptr %i.cs, align 8, !noalias !278
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.bd, ptr %i.ct, align 8, !noalias !278
  store ptr %i.a, ptr %9, align 8, !noalias !278
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.bl, ptr %i.cu, align 8, !noalias !278
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.av, ptr %i.cv, align 8, !noalias !278
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.af, ptr %i.cw, align 8, !noalias !278
  store ptr %i.b, ptr %10, align 8, !noalias !278
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ao, ptr %i.cx, align 8, !noalias !278
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.cq, ptr %i.cy, align 8, !noalias !278
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.ad, ptr %i.cz, align 8, !noalias !278
  call void @_ZSt24__copy_move_backward_ditILb1EPN2v88internal22TurbofanCompilationJobERS3_PS3_St15_Deque_iteratorIS3_S4_S5_EET3_S6_IT0_T1_T2_ESC_S8_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %11, ptr noundef nonnull dead_on_return %8, ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10), !noalias !277
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !277
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !277
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !277
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !276
  %.pre91 = load ptr, ptr %i.g, align 8, !noalias !279 ; 2 uses
  %.pre92 = load ptr, ptr %i.j, align 8, !noalias !279
  %.pre93 = load ptr, ptr %i.k, align 8, !noalias !279
  %.pre108 = ptrtoint ptr %.pre91 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi109 = phi i64 [ %.pre108, %bb.g ], [ %i.bq, %bb.f ]
  %i.da = phi ptr [ %.pre93, %bb.g ], [ %i.bd, %bb.f ] ; 4 uses
  %i.db = phi ptr [ %.pre92, %bb.g ], [ %i.bc, %bb.f ]
  %i.dc = phi ptr [ %.pre91, %bb.g ], [ %i.h, %bb.f ]
  %i.dd = load ptr, ptr %i.i, align 8, !noalias !279 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = sub i64 %.pre-phi109, %i.de
  %i.dg = ashr exact i64 %i.df, 3
  %i.dh = add nsw i64 %i.dg, %i.ba                ; 6 uses
  %i.di = icmp sgt i64 %i.dh, -1
  br i1 %i.di, label %bb.i, label %_ZStplRKSt15_Deque_iteratorIPN2v88internal22TurbofanCompilationJobERS3_PS3_El.exit

bb.i:                                             ; preds = %bb.h
  %i.dj = icmp samesign ult i64 %i.dh, 64
  br i1 %i.dj, label %_ZStplRKSt15_Deque_iteratorIPN2v88internal22TurbofanCompilationJobERS3_PS3_El.exit.thread, label %_ZStplRKSt15_Deque_iteratorIPN2v88internal22TurbofanCompilationJobERS3_PS3_El.exit.thread125

_ZStplRKSt15_Deque_iteratorIPN2v88internal22TurbofanCompilationJobERS3_PS3_El.exit.thread: ; preds = %bb.i
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.ba
  br label %_ZNSt5dequeIPN2v88internal22TurbofanCompilationJobESaIS3_EE17_M_erase_at_beginESt15_Deque_iteratorIS3_RS3_PS3_E.exit

_ZStplRKSt15_Deque_iteratorIPN2v88internal22TurbofanCompilationJobERS3_PS3_El.exit.thread125: ; preds = %bb.i
  %i.dl = lshr i64 %i.dh, 3
  %.idx126 = and i64 %i.dl, 1152921504606846968
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx126 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !280 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 512
  %i.dp = and i64 %i.dh, 63
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dp
  br label %.lr.ph.i.i

_ZStplRKSt15_Deque_iteratorIPN2v88internal22TurbofanCompilationJobERS3_PS3_El.exit: ; preds = %bb.h
  %i.dr = ashr i64 %i.dh, 3
  %.idx = and i64 %i.dr, -8
  %i.ds = getelementptr inbounds i8, ptr %i.da, i64 %.idx ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !280 ; 3 uses
end_hunk_0
