inline.NumInlined: 1550
inline.NumDeleted: 749
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal24Runtime_InstantiateAsmJsEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2416 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 2440 ; 3 uses
  %i.cb = load atomic ptr, ptr %i.ca acquire, align 8
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.h, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit

bb.h:                                             ; preds = %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 2456 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cd) #14
  %i.ce = load atomic ptr, ptr %i.ca monotonic, align 8
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.i, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.cg = tail call noundef ptr @_ZNK2v88internal9Histogram15CreateHistogramEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bz) #14
  store atomic ptr %i.cg, ptr %i.ca release, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i:  ; preds = %bb.i, %bb.h
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cd) #14
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit: ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i, %bb.g
  tail call void @_ZN2v88internal9Histogram9AddSampleEi(ptr noundef nonnull align 8 dereferenceable(48) %i.bz, i32 noundef 0) #14
  %i.ch = load i64, ptr %i.bv, align 8
  br label %_ZN2v88internalL34__RT_impl_Runtime_InstantiateAsmJsENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.j:                                             ; preds = %_ZN2v88internal6HandleINS0_11AsmWasmDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 368
  %.sroa.0.0.copyload.i18 = load i64, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.ck = load i64, ptr %i.cj, align 8
  %.not130 = icmp eq i64 %.sroa.0.0.copyload.i18, %i.ck
  br i1 %.not130, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.cm = load i64, ptr %i.cl, align 8
  br label %_ZN2v88internalL34__RT_impl_Runtime_InstantiateAsmJsENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.l:                                             ; preds = %bb.j
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 58656
  %i.co = load ptr, ptr %i.cn, align 8            ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2416 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 2440 ; 3 uses
  %i.cr = load atomic ptr, ptr %i.cq acquire, align 8
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.m, label %_ZN2v88internal8Counters24asmjs_instantiate_resultEv.exit20

bb.m:                                             ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 2456 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct) #14
  %i.cu = load atomic ptr, ptr %i.cq monotonic, align 8
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.n, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i19

bb.n:                                             ; preds = %bb.m
  %i.cw = tail call noundef ptr @_ZNK2v88internal9Histogram15CreateHistogramEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cp) #14
  store atomic ptr %i.cw, ptr %i.cq release, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i19

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i19: ; preds = %bb.n, %bb.m
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct) #14
  br label %_ZN2v88internal8Counters24asmjs_instantiate_resultEv.exit20

_ZN2v88internal8Counters24asmjs_instantiate_resultEv.exit20: ; preds = %bb.l, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i19
  tail call void @_ZN2v88internal9Histogram9AddSampleEi(ptr noundef nonnull align 8 dereferenceable(48) %i.cp, i32 noundef 1) #14
  tail call void @_ZN2v88internal18SharedFunctionInfo15DiscardCompiledEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %2, ptr nonnull %.0.i) #14
  br label %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread

_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %_ZN2v88internal8Counters24asmjs_instantiate_resultEv.exit20, %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit
  %i.cx = load i64, ptr %.0.i, align 8
  %i.cy = add i64 %i.cx, 55
  %i.cz = inttoptr i64 %i.cy to ptr               ; 2 uses
  %i.da = load atomic volatile i32, ptr %i.cz monotonic, align 4
  %i.db = or i32 %i.da, 8192
  store atomic volatile i32 %i.db, ptr %i.cz monotonic, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.dc = load i64, ptr %1, align 8
  store i64 %i.dc, ptr %3, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 58992
  %i.de = tail call ptr @_ZN2v88internal8Builtins11code_handleENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(20) %i.dd, i32 noundef 104) #14
  %i.df = load i64, ptr %i.de, align 8
  call void @_ZN2v88internal10JSFunction10UpdateCodeEPNS0_7IsolateENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %2, i64 %i.df, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %_ZN2v88internalL34__RT_impl_Runtime_InstantiateAsmJsENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL34__RT_impl_Runtime_InstantiateAsmJsENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread, %bb.k, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit
  %.sroa.066.1 = phi i64 [ 0, %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread ], [ %i.cm, %bb.k ], [ %i.ch, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit ]
  store ptr %i.b, ptr %i.a, align 8
  %i.dg = load i32, ptr %i.e, align 8
  %i.dh = add nsw i32 %i.dg, -1
  store i32 %i.dh, ptr %i.e, align 8
  %i.di = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.di, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.o, !prof !6

bb.o:                                             ; preds = %_ZN2v88internalL34__RT_impl_Runtime_InstantiateAsmJsENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #14
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.o, %_ZN2v88internalL34__RT_impl_Runtime_InstantiateAsmJsENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.066.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal25Runtime_NotifyDeoptimizedEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.478", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::interpreter::BytecodeArrayIterator", align 8 ; 11 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.489", align 8 ; 4 uses
  %6 = alloca [2 x %"class.std::unique_ptr.655"], align 16 ; 6 uses
  %7 = alloca %"class.v8::internal::TimerEventScope", align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %9 = alloca %"struct.v8::internal::Deoptimizer::DeoptInfo", align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::JavaScriptStackFrameIterator", align 8 ; 5 uses
  %11 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 5 uses
  %12 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.489", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = tail call noundef ptr @_ZN2v88internal11Deoptimizer4GrabEPNS0_7IsolateE(ptr noundef %2) #14 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr %2, ptr %7, align 8
  call void @_ZN2v88internal15TimerEventScopeINS0_24TimerEventDeoptimizeCodeEE13LogTimerEventENS_14LogEventStatusE(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0) #14
  %i.i = load atomic volatile i64, ptr @_ZZN2v88internalL35__RT_impl_Runtime_NotifyDeoptimizedENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateEE28trace_event_unique_atomic479 acquire, align 8 ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #14 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.15) #14, !inline_history !12 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  store atomic volatile i64 %i.p, ptr @_ZZN2v88internalL35__RT_impl_Runtime_NotifyDeoptimizedENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateEE28trace_event_unique_atomic479 release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ %i.j, %bb.a ], [ %i.o, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store ptr null, ptr %8, align 8
  %i.q = load atomic volatile i8, ptr %.0.i monotonic, align 1
  %i.r = and i8 %i.q, 5
  %.not57.i = icmp eq i8 %i.r, 0
  br i1 %.not57.i, label %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.s = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #14 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i8 noundef signext 88, ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.16, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %6, i32 noundef 0) #14, !inline_history !13
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %.not.i10 = icmp eq ptr %i.y, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #14, !inline_history !14
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.ac = load ptr, ptr %6, align 16              ; 3 uses
  %.not.i10.1 = icmp eq ptr %i.ac, null
  br i1 %.not.i10.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ac) #14, !inline_history !14
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %.0.i, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.16, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %i.w, ptr %i.ai, align 8
  store ptr %i.ag, ptr %8, align 8
  br label %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit

_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, %bb.c
  %i.aj = call ptr @_ZNK2v88internal11Deoptimizer8functionEv(ptr noundef nonnull align 8 dereferenceable(370) %i.h) #14 ; 5 uses
  %i.ak = call ptr @_ZNK2v88internal11Deoptimizer13compiled_codeEv(ptr noundef nonnull align 8 dereferenceable(370) %i.h) #14 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.am = load i8, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.0.0.copyload.i11 = load i64, ptr %i.an, align 8, !noalias !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !15
  call void @_ZN2v88internal11Deoptimizer12GetDeoptInfoENS0_6TaggedINS0_4CodeEEEm(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::Deoptimizer::DeoptInfo") align 8 %9, i64 %.sroa.0.0.copyload.i11, i64 noundef %i.ap) #14
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ar = load i8, ptr %i.aq, align 8             ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.as = call ptr @_ZNK2v88internal11Deoptimizer8functionEv(ptr noundef nonnull align 8 dereferenceable(370) %i.h) #14
  %i.at = load i64, ptr %i.as, align 8
  %i.au = add i64 %i.at, 39
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = add i64 %i.aw, -1
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load atomic volatile i64, ptr %i.ay monotonic, align 8
  %i.ba = add i64 %i.az, 31
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 344 ; 2 uses
  store i64 %i.bc, ptr %i.bd, align 8
  call void @_ZN2v88internal11Deoptimizer22MaterializeHeapObjectsEv(ptr noundef nonnull align 8 dereferenceable(370) %i.h) #14
  call void @_ZN2v88internal11Deoptimizer18ProcessDeoptReasonENS0_16DeoptimizeReasonE(ptr noundef nonnull align 8 dereferenceable(370) %i.h, i8 noundef zeroext %i.ar) #14
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.be, align 4 ; 2 uses
  call void @_ZN2v88internal11DeoptimizerD1Ev(ptr noundef nonnull align 8 dereferenceable(370) %i.h) #14
  call void @_ZN2v88internal8MalloceddlEPv(ptr noundef nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @_ZN2v88internal18StackFrameIteratorC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(128) %10, ptr noundef nonnull %2) #14
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 96
  call void @_ZN2v88internal28JavaScriptStackFrameIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(128) %10) #14
  %.pre = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bg = load ptr, ptr %.pre, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call i64 %i.bi(ptr noundef nonnull align 8 dereferenceable(80) %.pre) #14, !inline_history !12
  store i64 %i.bj, ptr %i.bd, align 8
  %i.bk = icmp eq i8 %i.am, 2
  br i1 %i.bk, label %_ZN2v88internalL35__RT_impl_Runtime_NotifyDeoptimizedENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit
  switch i8 %i.ar, label %bb.i [
    i8 56, label %bb.f
    i8 54, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.bl = icmp eq i8 %i.ar, 56
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  br i1 %i.bl, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.bm = load i64, ptr %i.aj, align 8
  store i64 %i.bm, ptr %11, align 8
  %i.bn = call noundef zeroext i1 @_ZNK2v88internal10JSFunction18ActiveTierIsMaglevENS0_17IsolateForSandboxE(ptr noundef nonnull align 8 dereferenceable(8) %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br i1 %i.bn, label %bb.h, label %_ZN2v88internalL35__RT_impl_Runtime_NotifyDeoptimizedENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.h:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 58640
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = load i64, ptr %i.aj, align 8
  call void @_ZN2v88internal14TieringManager27MarkForTurboFanOptimizationENS0_6TaggedINS0_10JSFunctionEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i64 %i.bq) #14
  br label %_ZN2v88internalL35__RT_impl_Runtime_NotifyDeoptimizedENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

.critedge.i:                                      ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %_ZN2v88internalL35__RT_impl_Runtime_NotifyDeoptimizedENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.i:                                             ; preds = %bb.e
  %i.br = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.bs = add i64 %i.br, 67
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load atomic volatile i32, ptr %i.bt monotonic, align 4 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, -1                   ; 3 uses
  br i1 %i.bv, label %.critedge2.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = load i64, ptr %i.aj, align 8
  %i.bx = add i64 %i.br, 51
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load atomic volatile i32, ptr %i.by monotonic, align 4
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = and i8 %i.ca, 15
  %i.cc = call noundef zeroext i1 @_ZN2v88internal11Deoptimizer24DeoptExitIsInsideOsrLoopEPNS0_7IsolateENS0_6TaggedINS0_10JSFunctionEEENS0_14BytecodeOffsetES7_NS0_8CodeKindE(ptr noundef nonnull %2, i64 %i.bw, i32 %.sroa.0.0.copyload.i12, i32 %i.bu, i8 noundef zeroext %i.cb) #14
  br i1 %i.cc, label %.critedge2.i, label %_ZN2v88internalL35__RT_impl_Runtime_NotifyDeoptimizedENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

.critedge2.i:                                     ; preds = %bb.i, %bb.j
  %i.cd = load i64, ptr %i.aj, align 8
  %i.ce = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 10688
  %i.cg = add i64 %i.cd, 23
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load atomic volatile i32, ptr %i.ch monotonic, align 4
  %i.cj = lshr i32 %i.ci, 8
  %i.ck = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !7, !noundef !8
  %i.cl = trunc nuw i8 %i.ck to i1
  %.not.i.i = xor i1 %i.cl, true
  %i.cm = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !7
  %i.cn = trunc nuw i8 %i.cm to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.cn
  br i1 %or.cond.i.i, label %bb.k, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i

bb.k:                                             ; preds = %.critedge2.i
  %i.co = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.co, -1
  br i1 %.not11.i.i, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.co, i32 noundef 0) #14
  br label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i

_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i: ; preds = %bb.l, %bb.k, %.critedge2.i
  %i.cp = load ptr, ptr %i.cf, align 8
  %i.cq = zext nneg i32 %i.cj to i64
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.cq ; 3 uses
  %i.cs = load atomic i64, ptr %i.cr monotonic, align 8
  %i.ct = icmp ugt i64 %i.cs, -281474976710657
  br i1 %i.ct, label %bb.m, label %_ZNK2v88internal15JSDispatchEntry7GetCodeEv.exit.i.i, !prof !5

bb.m:                                             ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #15
  unreachable

_ZNK2v88internal15JSDispatchEntry7GetCodeEv.exit.i.i: ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cv = load atomic i64, ptr %i.cu monotonic, align 8
  %i.cw = lshr i64 %i.cv, 16
  %i.cx = or i64 %i.cw, 1
  %i.cy = add nuw nsw i64 %i.cx, 39
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = load i64, ptr %i.cz, align 8
  store atomic i64 %i.da, ptr %i.cr monotonic, align 8
  %i.db = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !7, !noundef !8
  %i.dc = trunc nuw i8 %i.db to i1
  %.not8.i.i = xor i1 %i.dc, true
  %i.dd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !7
  %i.de = trunc nuw i8 %i.dd to i1
  %or.cond10.i.i = select i1 %.not8.i.i, i1 true, i1 %i.de
  br i1 %or.cond10.i.i, label %bb.n, label %_ZN2v88internal10JSFunction20ResetTieringRequestsEv.exit

bb.n:                                             ; preds = %_ZNK2v88internal15JSDispatchEntry7GetCodeEv.exit.i.i
  %i.df = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not12.i.i = icmp eq i32 %i.df, -1
  br i1 %.not12.i.i, label %_ZN2v88internal10JSFunction20ResetTieringRequestsEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.df, i32 noundef 2) #14
  br label %_ZN2v88internal10JSFunction20ResetTieringRequestsEv.exit

_ZN2v88internal10JSFunction20ResetTieringRequestsEv.exit: ; preds = %_ZNK2v88internal15JSDispatchEntry7GetCodeEv.exit.i.i, %bb.n, %bb.o
  %i.dg = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.dh = add i64 %i.dg, 51
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = load atomic volatile i32, ptr %i.di monotonic, align 4
  %i.dk = and i32 %i.dj, 64
  %.not = icmp eq i32 %i.dk, 0                    ; 3 uses
  br i1 %.not, label %bb.p, label %.thread

bb.p:                                             ; preds = %_ZN2v88internal10JSFunction20ResetTieringRequestsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  store i64 %i.dg, ptr %12, align 8
  call void @_ZN2v88internal4Code26SetMarkedForDeoptimizationEPNS0_7IsolateENS0_20LazyDeoptimizeReasonE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %2, i8 noundef zeroext 15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br i1 %i.bv, label %bb.q, label %bb.ah

.thread:                                          ; preds = %_ZN2v88internal10JSFunction20ResetTieringRequestsEv.exit
  br i1 %i.bv, label %bb.q, label %_ZN2v88internalL35__RT_impl_Runtime_NotifyDeoptimizedENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.q:                                             ; preds = %.thread, %bb.p
  %i.dl = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.dm = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 314), align 2, !range !7, !noundef !8
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.r, label %_ZN2v88internal12_GLOBAL__N_135DeoptAllOsrLoopsContainingDeoptExitEPNS0_7IsolateENS0_6TaggedINS0_10JSFunctionEEENS0_14BytecodeOffsetE.exit

bb.r:                                             ; preds = %bb.q
  %i.do = add i64 %i.dl, 47
  %i.dp = inttoptr i64 %i.do to ptr               ; 4 uses
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = add i64 %i.dq, 7
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = add i64 %i.dt, 20
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = and i8 %i.dw, 24
  %.not82.i = icmp eq i8 %i.dx, 0
  br i1 %.not82.i, label %_ZN2v88internal12_GLOBAL__N_135DeoptAllOsrLoopsContainingDeoptExitEPNS0_7IsolateENS0_6TaggedINS0_10JSFunctionEEENS0_14BytecodeOffsetE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.dy = add i64 %i.dl, 31
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = load atomic volatile i64, ptr %i.dz monotonic, align 8
  store i64 %i.ea, ptr %3, align 8
  %i.eb = call { i64, i8 } @_ZNK2v88internal18SharedFunctionInfo15TryGetDebugInfoEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %2) #14 ; 2 uses
  %i.ec = extractvalue { i64, i8 } %i.eb, 0       ; 2 uses
  %i.ed = extractvalue { i64, i8 } %i.eb, 1
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit.i.i, label %.critedge.i.i

_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit.i.i: ; preds = %bb.s
  %i.ef = add i64 %i.ec, 55
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load atomic volatile i64, ptr %i.eg acquire, align 8
  %i.ei = trunc i64 %i.eh to i1
  br i1 %i.ei, label %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit7.i.i, label %.critedge.i.i

_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit7.i.i: ; preds = %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit.i.i
  %i.ej = add i64 %i.ec, 47
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load atomic volatile i64, ptr %i.ek acquire, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit.i

.critedge.i.i:                                    ; preds = %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit.i.i, %bb.s
  %.sroa.0.0.copyload.i.i.i8.i.i = load i64, ptr %3, align 8
  %i.em = add i64 %.sroa.0.0.copyload.i.i.i8.i.i, 7
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = load atomic volatile i64, ptr %i.en acquire, align 8 ; 6 uses
  %i.ep = trunc i64 %i.eo to i1
  br i1 %i.ep, label %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i.i, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i.i.i

_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i.i: ; preds = %.critedge.i.i
  %i.eq = add nsw i64 %i.eo, -1
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = load atomic volatile i64, ptr %i.er monotonic, align 8
  %i.et = add i64 %i.es, 11
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = load atomic volatile i16, ptr %i.eu monotonic, align 2
  %i.ew = icmp eq i16 %i.ev, 185
  br i1 %i.ew, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i.i.i, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i.i.i

_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i.i.i: ; preds = %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i.i
  %i.ex = add i64 %i.eo, 51
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = load atomic volatile i32, ptr %i.ey monotonic, align 4
  %i.fa = and i32 %i.ez, 15
  %i.fb = icmp eq i32 %i.fa, 10
  br i1 %i.fb, label %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit.i.i.i, label %bb.t, !prof !6

bb.t:                                             ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #15
  unreachable

_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit.i.i.i: ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i.i.i
  %i.fc = add i64 %i.eo, 7
  %i.fd = inttoptr i64 %i.fc to ptr
  %i.fe = load i64, ptr %i.fd, align 8
  br label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i.i.i

_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i.i.i: ; preds = %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit.i.i.i, %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i.i, %.critedge.i.i
  %.sroa.08.0.i.i.i = phi i64 [ %i.fe, %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit.i.i.i ], [ %i.eo, %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i.i ], [ %i.eo, %.critedge.i.i ] ; 3 uses
  %i.ff = trunc i64 %.sroa.08.0.i.i.i to i1
  br i1 %i.ff, label %_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i.i, label %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.thread.i.i.i.i

_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i.i: ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i.i.i
  %i.fg = add nsw i64 %.sroa.08.0.i.i.i, -1
  %i.fh = inttoptr i64 %i.fg to ptr               ; 3 uses
  %i.fi = load atomic volatile i64, ptr %i.fh monotonic, align 8
  %i.fj = add i64 %i.fi, 11
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = load atomic volatile i16, ptr %i.fk monotonic, align 2
  %i.fm = icmp eq i16 %i.fl, 184
  br i1 %i.fm, label %_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit.i, label %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i.i

_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i.i: ; preds = %_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i.i
  %i.fn = load atomic volatile i64, ptr %i.fh monotonic, align 8
  %i.fo = add i64 %i.fn, 11
  %i.fp = inttoptr i64 %i.fo to ptr
  %i.fq = load atomic volatile i16, ptr %i.fp monotonic, align 2
  %i.fr = icmp eq i16 %i.fq, 186
  br i1 %i.fr, label %_ZN2v88internal7SbxCastINS0_15InterpreterDataENS0_6ObjectENS0_6TaggedEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit.i.i.i, label %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.thread.i.i.i.i, !prof !11

_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i.i, %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #15
  unreachable

_ZN2v88internal7SbxCastINS0_15InterpreterDataENS0_6ObjectENS0_6TaggedEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit.i.i.i: ; preds = %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.ft = load i64, ptr %i.fs, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit.i

_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit.i: ; preds = %_ZN2v88internal7SbxCastINS0_15InterpreterDataENS0_6ObjectENS0_6TaggedEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit.i.i.i, %_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i.i, %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit7.i.i
  %.sroa.0.0.i.i = phi i64 [ %i.el, %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit7.i.i ], [ %i.ft, %_ZN2v88internal7SbxCastINS0_15InterpreterDataENS0_6ObjectENS0_6TaggedEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit.i.i.i ], [ %.sroa.08.0.i.i.i, %_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i.i ]
  %i.fu = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.fv = load ptr, ptr %i.c, align 8
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %bb.u, label %_ZN2v88internal6HandleINS0_13BytecodeArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.u:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit.i
  %i.fx = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #14
  br label %_ZN2v88internal6HandleINS0_13BytecodeArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_13BytecodeArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.u, %_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit.i
  %.0.i.i.i = phi ptr [ %i.fx, %bb.u ], [ %i.fu, %_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit.i ] ; 3 uses
  %i.fy = ptrtoint ptr %.0.i.i.i to i64
  %i.fz = add i64 %i.fy, 8
  %i.ga = inttoptr i64 %i.fz to ptr
  store ptr %i.ga, ptr %i.a, align 8
  store i64 %.sroa.0.0.i.i, ptr %.0.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.gb = load i64, ptr %i.dp, align 8
  %i.gc = add i64 %i.gb, 7
  %i.gd = inttoptr i64 %i.gc to ptr
  %i.ge = load i64, ptr %i.gd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN2v88internal11interpreter21BytecodeArrayIteratorC1ENS0_6HandleINS0_13BytecodeArrayEEEi(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr nonnull %.0.i.i.i, i32 noundef 0) #14
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gh = load ptr, ptr %i.gf, align 8            ; 2 uses
  %i.gi = load ptr, ptr %i.gg, align 8
  %.not8392.i = icmp ult ptr %i.gh, %i.gi
  br i1 %.not8392.i, label %.lr.ph.i, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %_ZN2v88internal6HandleINS0_13BytecodeArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.gj = load i64, ptr %i.dp, align 8
  %i.gk = add i64 %i.gj, 7
  %i.gl = inttoptr i64 %i.gk to ptr
  %i.gm = load i64, ptr %i.gl, align 8
  br label %bb.ac

.lr.ph.i:                                         ; preds = %_ZN2v88internal6HandleINS0_13BytecodeArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.gn = add i64 %i.ge, 47
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i, %.lr.ph.i
  %i.gr = phi ptr [ %i.gh, %.lr.ph.i ], [ %i.it, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i ]
  %.01795.i = phi i1 [ false, %.lr.ph.i ], [ %.2.i, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i ] ; 4 uses
  %.01894.i = phi i8 [ 0, %.lr.ph.i ], [ %.220.i, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i ] ; 5 uses
  %.02193.i = phi i1 [ false, %.lr.ph.i ], [ %.223.i, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i ] ; 5 uses
  %i.gs = load i8, ptr %i.gr, align 1
  %.not.i16 = icmp eq i8 %i.gs, -107
  br i1 %.not.i16, label %bb.w, label %_ZN2v88internal12_GLOBAL__N_122TryGetOptimizedOsrCodeEPNS0_7IsolateENS0_6TaggedINS0_14FeedbackVectorEEERKNS0_11interpreter21BytecodeArrayIteratorEPNS4_INS0_4CodeEEE.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.gt = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator14GetSlotOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %4, i32 noundef 2) #14
  %i.gu = shl nsw i32 %i.gt, 3
  %i.gv = sext i32 %i.gu to i64
  %i.gw = add i64 %i.gn, %i.gv
  %i.gx = inttoptr i64 %i.gw to ptr               ; 2 uses
  %i.gy = load atomic volatile i64, ptr %i.gx monotonic, align 8 ; 2 uses
  %i.gz = and i64 %i.gy, 4294967295
  %i.ha = icmp eq i64 %i.gz, 3
  br i1 %i.ha, label %_ZN2v88internal12_GLOBAL__N_122TryGetOptimizedOsrCodeEPNS0_7IsolateENS0_6TaggedINS0_14FeedbackVectorEEERKNS0_11interpreter21BytecodeArrayIteratorEPNS4_INS0_4CodeEEE.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hb = and i64 %i.gy, -3
  %i.hc = add i64 %i.hb, 7
  %i.hd = inttoptr i64 %i.hc to ptr
  %i.he = load atomic volatile i64, ptr %i.hd acquire, align 8 ; 2 uses
  %i.hf = add i64 %i.he, 51
  %i.hg = inttoptr i64 %i.hf to ptr               ; 3 uses
  %i.hh = load atomic volatile i32, ptr %i.hg monotonic, align 4
  %i.hi = and i32 %i.hh, 64
  %.not.i.i.i = icmp eq i32 %i.hi, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal12_GLOBAL__N_122TryGetOptimizedOsrCodeEPNS0_7IsolateENS0_6TaggedINS0_14FeedbackVectorEEERKNS0_11interpreter21BytecodeArrayIteratorEPNS4_INS0_4CodeEEE.exit.i, label %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit.i.i.i

_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit.i.i.i: ; preds = %bb.x
  store atomic volatile i64 3, ptr %i.gx monotonic, align 8
end_hunk_0
