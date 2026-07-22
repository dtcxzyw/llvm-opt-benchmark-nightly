inline.NumInlined: 669
inline.NumDeleted: 414
begin_hunk_0_@_ZN2v88internal13DebugEvaluate5LocalEPNS0_7IsolateENS0_12StackFrameIdEiNS0_12DirectHandleINS0_6StringEEEb:bb.a
  %i.cv = ptrtoint ptr %.0.i.i.i to i64
  %i.cw = add i64 %i.cv, 8
  %i.cx = inttoptr i64 %i.cw to ptr
  store ptr %i.cx, ptr %i.cp, align 8
  store i64 %i.cm, ptr %.0.i.i.i, align 8
  %i.cy = call ptr @_ZN2v88internal8Compiler19GetFunctionFromEvalEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS4_INS0_18SharedFunctionInfoEEENS4_INS0_7ContextEEENS0_12LanguageModeENS0_16ParseRestrictionEiiNS0_21ParsingWhileDebuggingE(ptr noundef nonnull %0, ptr %3, ptr nonnull %.0.i.i.i, ptr nonnull %.sroa.0.0.copyload.i41, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef -1, i32 noundef -1, i32 noundef 0) #12 ; 3 uses
  %.not.i43 = icmp eq ptr %i.cy, null
  br i1 %.not.i43, label %_ZN2v88internal13DebugEvaluate8EvaluateEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS4_INS0_7ContextEEENS4_INS0_6ObjectEEENS4_INS0_6StringEEEb.exit46.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK2v88internal13DebugEvaluate14ContextBuilder10outer_infoEv.exit
  br i1 %4, label %bb.n, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i44

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i44: ; preds = %bb.m
  %i.cz = call ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef nonnull %0, ptr nonnull %i.cy, ptr nonnull %.0.i.i, ptr null, i64 0) #12
  br label %_ZN2v88internal13DebugEvaluate8EvaluateEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS4_INS0_7ContextEEENS4_INS0_6ObjectEEENS4_INS0_6StringEEEb.exit46

bb.n:                                             ; preds = %bb.m
  %i.da = load ptr, ptr %i.a, align 8
  call void @_ZN2v88internal5Debug24StartSideEffectCheckModeEv(ptr noundef nonnull align 8 dereferenceable(256) %i.da) #12
  %i.db = call ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef nonnull %0, ptr nonnull %i.cy, ptr nonnull %.0.i.i, ptr null, i64 0) #12
  %i.dc = load ptr, ptr %i.a, align 8
  call void @_ZN2v88internal5Debug23StopSideEffectCheckModeEv(ptr noundef nonnull align 8 dereferenceable(256) %i.dc) #12
  br label %_ZN2v88internal13DebugEvaluate8EvaluateEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS4_INS0_7ContextEEENS4_INS0_6ObjectEEENS4_INS0_6StringEEEb.exit46

_ZN2v88internal13DebugEvaluate8EvaluateEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS4_INS0_7ContextEEENS4_INS0_6ObjectEEENS4_INS0_6StringEEEb.exit46: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i44, %bb.n
  %.sroa.024.0.i45 = phi ptr [ %i.cz, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i44 ], [ %i.db, %bb.n ] ; 2 uses
  %i.dd = icmp eq ptr %.sroa.024.0.i45, null
  br i1 %i.dd, label %_ZN2v88internal13DebugEvaluate8EvaluateEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS4_INS0_7ContextEEENS4_INS0_6ObjectEEENS4_INS0_6StringEEEb.exit46.thread, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal13DebugEvaluate8EvaluateEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS4_INS0_7ContextEEENS4_INS0_6ObjectEEENS4_INS0_6StringEEEb.exit46
  call void @_ZN2v88internal13DebugEvaluate14ContextBuilder12UpdateValuesEv(ptr noundef nonnull align 8 dereferenceable(208) %6)
  br label %_ZN2v88internal13DebugEvaluate8EvaluateEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS4_INS0_7ContextEEENS4_INS0_6ObjectEEENS4_INS0_6StringEEEb.exit46.thread

_ZN2v88internal13DebugEvaluate8EvaluateEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS4_INS0_7ContextEEENS4_INS0_6ObjectEEENS4_INS0_6StringEEEb.exit46.thread: ; preds = %_ZNK2v88internal13DebugEvaluate14ContextBuilder10outer_infoEv.exit, %_ZN2v88internal13DebugEvaluate8EvaluateEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS4_INS0_7ContextEEENS4_INS0_6ObjectEEENS4_INS0_6StringEEEb.exit46, %bb.o, %bb.i
  %.sroa.064.0 = phi ptr [ null, %bb.i ], [ null, %_ZN2v88internal13DebugEvaluate8EvaluateEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS4_INS0_7ContextEEENS4_INS0_6ObjectEEENS4_INS0_6StringEEEb.exit46 ], [ %.sroa.024.0.i45, %bb.o ], [ null, %_ZNK2v88internal13DebugEvaluate14ContextBuilder10outer_infoEv.exit ]
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 104
  call void @_ZN2v88internal13ScopeIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(98) dereferenceable(98) %i.de) #12
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @_ZN2v88internal14FrameInspectorD1Ev(ptr noundef nonnull align 8 dead_on_return(62) dereferenceable(62) %i.df) #12
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal13DebugEvaluate14ContextBuilderD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal13DebugEvaluate8EvaluateEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS4_INS0_7ContextEEENS4_INS0_6ObjectEEENS4_INS0_6StringEEEb.exit46.thread
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.dh to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dm) #14
  br label %_ZN2v88internal13DebugEvaluate14ContextBuilderD2Ev.exit

_ZN2v88internal13DebugEvaluate14ContextBuilderD2Ev.exit: ; preds = %_ZN2v88internal13DebugEvaluate8EvaluateEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS4_INS0_7ContextEEENS4_INS0_6ObjectEEENS4_INS0_6StringEEEb.exit46.thread, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %_ZN2v88internal13DebugEvaluate8EvaluateEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS4_INS0_7ContextEEENS4_INS0_6ObjectEEENS4_INS0_6StringEEEb.exit

_ZN2v88internal13DebugEvaluate8EvaluateEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS4_INS0_7ContextEEENS4_INS0_6ObjectEEENS4_INS0_6StringEEEb.exit: ; preds = %bb.f, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, %_ZN2v88internal7Isolate14native_contextEv.exit39, %_ZN2v88internal13DebugEvaluate14ContextBuilderD2Ev.exit
  %.sroa.064.1 = phi ptr [ %.sroa.064.0, %_ZN2v88internal13DebugEvaluate14ContextBuilderD2Ev.exit ], [ null, %_ZN2v88internal7Isolate14native_contextEv.exit39 ], [ %i.bl, %bb.f ], [ %i.bj, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  store i8 %i.d, ptr %i.c, align 4
  ret ptr %.sroa.064.1
}

declare void @_ZN2v88internal28DebuggableStackFrameIteratorC1EPNS0_7IsolateENS0_12StackFrameIdE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, i32 noundef) unnamed_addr #3

declare ptr @_ZN2v88internal17GetWasmDebugProxyEPNS0_9WasmFrameE(ptr noundef) local_unnamed_addr #3

declare ptr @_ZN2v88internal9ScopeInfo18CreateForWithScopeEPNS0_7IsolateENS0_17MaybeDirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #3

declare ptr @_ZN2v88internal7Factory14NewWithContextENS0_12DirectHandleINS0_7ContextEEENS2_INS0_9ScopeInfoEEENS2_INS0_10JSReceiverEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal13DebugEvaluate8EvaluateEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS4_INS0_7ContextEEENS4_INS0_6ObjectEEENS4_INS0_6StringEEEb(ptr noundef %0, ptr %1, ptr %2, ptr %3, ptr %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal8Compiler19GetFunctionFromEvalEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS4_INS0_18SharedFunctionInfoEEENS4_INS0_7ContextEEENS0_12LanguageModeENS0_16ParseRestrictionEiiNS0_21ParsingWhileDebuggingE(ptr noundef %0, ptr %4, ptr %1, ptr %2, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef -1, i32 noundef -1, i32 noundef 0) #12 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_10JSFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %5, label %bb.c, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit: ; preds = %bb.b
  %i.b = tail call ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef %0, ptr nonnull %i.a, ptr %3, ptr null, i64 0) #12
  br label %_ZNK2v88internal11MaybeHandleINS0_10JSFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 59496
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @_ZN2v88internal5Debug24StartSideEffectCheckModeEv(ptr noundef nonnull align 8 dereferenceable(256) %i.d) #12
  %i.e = tail call ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef %0, ptr nonnull %i.a, ptr %3, ptr null, i64 0) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 59496
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @_ZN2v88internal5Debug23StopSideEffectCheckModeEv(ptr noundef nonnull align 8 dereferenceable(256) %i.g) #12
  br label %_ZNK2v88internal11MaybeHandleINS0_10JSFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_10JSFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, %bb.c, %bb.a
  %.sroa.024.0 = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ %i.b, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit ]
  ret ptr %.sroa.024.0
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal13DebugEvaluate14ContextBuilder10outer_infoEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  %i.b = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.c = add i64 %i.b, 31
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 560 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 568
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.g) #12
  br label %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.m, %bb.b ], [ %i.i, %bb.a ] ; 3 uses
  %i.n = ptrtoint ptr %.0.i.i to i64
  %i.o = add i64 %i.n, 8
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.h, align 8
  store i64 %i.e, ptr %.0.i.i, align 8
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13DebugEvaluate14ContextBuilder12UpdateValuesEv(ptr noundef nonnull align 8 dereferenceable(208) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  tail call void @_ZN2v88internal13ScopeIterator7RestartEv(ptr noundef nonnull align 8 dereferenceable(98) %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %._crit_edge, label %.lr.ph39

.lr.ph39:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph39, %.loopexit
  %.sroa.030.038 = phi ptr [ %i.c, %.lr.ph39 ], [ %i.cl, %.loopexit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.030.038, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.g, align 8
  %i.w = call ptr @_ZN2v88internal14KeyAccumulator7GetKeysEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_17KeyCollectionModeENS0_14PropertyFilterENS0_17GetKeysConversionEbb(ptr noundef %i.v, ptr nonnull %i.t, i32 noundef 0, i32 noundef 18, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false) #12 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE5CheckEv.exit.preheader, !prof !5

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE5CheckEv.exit.preheader: ; preds = %bb.c
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, -1
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = lshr i64 %i.ac, 32
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #13
  unreachable

.lr.ph:                                           ; preds = %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE5CheckEv.exit.preheader, %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ], [ 0, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE5CheckEv.exit.preheader ] ; 2 uses
  %i.ag = phi ptr [ %i.cg, %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ], [ %i.aa, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE5CheckEv.exit.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 560 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 568
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp eq ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.e, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.e:                                             ; preds = %.lr.ph
  %i.aq = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.ak) #12
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %.lr.ph, %bb.e
  %.0.i = phi ptr [ %i.aq, %bb.e ], [ %i.am, %.lr.ph ] ; 6 uses
  %i.ar = ptrtoint ptr %.0.i to i64
  %i.as = add i64 %i.ar, 8
  %i.at = inttoptr i64 %i.as to ptr
  store ptr %i.at, ptr %i.al, align 8
  store i64 %i.aj, ptr %.0.i, align 8
  %i.au = load ptr, ptr %i.g, align 8             ; 6 uses
  %.sroa.03.0.copyload = load ptr, ptr %i.s, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %.pre.pre.i = load i64, ptr %.0.i, align 8
  %i.av = add i64 %.pre.pre.i, -1
  %i.aw = inttoptr i64 %i.av to ptr               ; 3 uses
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8
  %i.ay = add i64 %i.ax, 11
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load atomic volatile i16, ptr %i.az monotonic, align 2
  %i.bb = icmp eq i16 %i.ba, 128
  br i1 %i.bb, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = trunc i32 %i.bd to i1
  br i1 %i.be, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.bf = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.bf, ptr %1, align 8
  store i32 0, ptr %i.h, align 4
  store i8 0, ptr %i.i, align 8
  store i32 0, ptr %i.j, align 4
  store i32 0, ptr %i.k, align 8
  store ptr %i.au, ptr %i.l, align 8
  store ptr null, ptr %i.n, align 8
  store ptr %.sroa.03.0.copyload, ptr %i.o, align 8
  store ptr null, ptr %i.p, align 8
  %i.bg = ptrtoint ptr %.sroa.03.0.copyload to i64
  store i64 %i.bg, ptr %i.q, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 -1, i64 16, i1 false)
  %i.bh = load atomic volatile i64, ptr %i.aw monotonic, align 8
  %i.bi = add i64 %i.bh, 11
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load atomic volatile i16, ptr %i.bj monotonic, align 2
  %i.bl = and i16 %i.bk, -96
  %.not.i21.i.i.i = icmp eq i16 %i.bl, 32
  br i1 %.not.i21.i.i.i, label %bb.f, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.f:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.bm = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.au, i64 55448
  %i.bp = load i8, ptr %i.bo, align 8, !range !6
  %i.bq = trunc nuw i8 %i.bp to i1
  %not..i.i.i23.i.i.i = xor i1 %i.bn, true
  %i.br = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bq
  br i1 %i.br, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 64088
  %i.bt = load i8, ptr %i.bs, align 8, !range !6, !noundef !7
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZSt27__throw_bad_optional_accessv() #15
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %i.au, i64 64080
  %i.bw = load ptr, ptr %i.bv, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.f
  %.pn.i.i26.i.i.i = phi ptr [ %i.bw, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %i.au, %bb.f ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bx = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.by = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 1 dereferenceable(1) %i.au, ptr nonnull %.0.i) #12
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.by, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %.0.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.m, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %1) #12
  %i.bz = load i32, ptr %i.h, align 4
  %.not.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.ca = load ptr, ptr %i.l, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 648
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

bb.j:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.cc = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %1, i32 noundef 0) #12
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %bb.i, %bb.j
  %.sroa.07.0.i = phi ptr [ %i.cc, %bb.j ], [ %i.cb, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.cd = call noundef zeroext i1 @_ZN2v88internal13ScopeIterator16SetVariableValueENS0_6HandleINS0_6StringEEENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(98) %i.a, ptr nonnull %.0.i, ptr %.sroa.07.0.i) #12 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = load i64, ptr %i.w, align 8
  %i.cf = add i64 %i.ce, -1
  %i.cg = inttoptr i64 %i.cf to ptr               ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = ashr i64 %i.ci, 32
  %i.ck = icmp slt i64 %indvars.iv.next, %i.cj
  br i1 %i.ck, label %.lr.ph, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE5CheckEv.exit.preheader, %bb.b
  call void @_ZN2v88internal13ScopeIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(98) %i.a) #12
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.030.038, i64 24 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.e
  br i1 %i.cm, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal13DebugEvaluate20WithTopmostArgumentsEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef %0, ptr %1) local_unnamed_addr #0 align 2 {
_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit:
  %2 = alloca %"class.v8::internal::JavaScriptStackFrameIterator", align 8 ; 5 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.550", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.547", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 59496
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr %i.c, align 4, !range !6, !noundef !7
  store i8 1, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZN2v88internal18StackFrameIteratorC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull %0) #12
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  call void @_ZN2v88internal28JavaScriptStackFrameIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(128) %2) #12
  %.pre = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.f = load ptr, ptr %.pre, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call i64 %i.h(ptr noundef nonnull align 8 dereferenceable(80) %.pre) #12
  %i.j = add i64 %i.i, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = add i64 %i.l, 31
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 8 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %bb.a, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.a:                                             ; preds = %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit
  %i.u = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #12
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit, %bb.a
  %.0.i = phi ptr [ %i.u, %bb.a ], [ %i.q, %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit ] ; 5 uses
  %i.v = ptrtoint ptr %.0.i to i64
  %i.w = add i64 %i.v, 8
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %i.p, align 8
  store i64 %i.o, ptr %.0.i, align 8
  %i.y = call ptr @_ZN2v88internal7Factory28NewSlowJSObjectWithNullProtoEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #12 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5376
  %i.aa = load ptr, ptr %i.e, align 8
  %i.ab = call ptr @_ZN2v88internal9Accessors20FunctionGetArgumentsEPNS0_15JavaScriptFrameEi(ptr noundef %i.aa, i32 noundef 0) #12
  %i.ac = call ptr @_ZN2v88internal8JSObject30SetOwnPropertyIgnoreAttributesENS0_12DirectHandleIS1_EENS2_INS0_4NameEEENS2_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr %i.y, ptr nonnull %i.z, ptr %i.ab, i32 noundef 0) #12
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.b, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit, !prof !5

bb.b:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #13
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.ae = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(80) %i.ae) #12 ; 2 uses
  %i.aj = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.ak = load ptr, ptr %i.r, align 8
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.c, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.c:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit
  %i.am = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #12
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit, %bb.c
  %.0.i.i44 = phi ptr [ %i.am, %bb.c ], [ %i.aj, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit ] ; 3 uses
  %i.an = ptrtoint ptr %.0.i.i44 to i64
  %i.ao = add i64 %i.an, 8
  %i.ap = inttoptr i64 %i.ao to ptr
  store ptr %i.ap, ptr %i.p, align 8
  store i64 %i.ai, ptr %.0.i.i44, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = icmp eq i64 %i.ai, %i.ar
  br i1 %i.as, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit43, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 7568
  %i.au = call ptr @_ZN2v88internal8JSObject30SetOwnPropertyIgnoreAttributesENS0_12DirectHandleIS1_EENS2_INS0_4NameEEENS2_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr %i.y, ptr nonnull %i.at, ptr nonnull %.0.i.i44, i32 noundef 0) #12
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit43, !prof !5

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #13
end_hunk_0
