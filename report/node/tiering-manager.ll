inline.NumInlined: 807
inline.NumDeleted: 401
begin_hunk_0_@_ZN2v88internal14TieringManager15NotifyICChangedENS0_6TaggedINS0_14FeedbackVectorEEE:bb.a
  %i.bo = load atomic volatile i16, ptr %i.bn monotonic, align 2
  %i.bp = icmp eq i16 %i.bo, 186
  br i1 %i.bp, label %_ZN2v88internal7SbxCastINS0_15InterpreterDataENS0_6ObjectENS0_6TaggedEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit.i.i, label %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.thread.i.i.i, !prof !9

_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.thread.i.i.i: ; preds = %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i, %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.22) #12
  unreachable

_ZN2v88internal7SbxCastINS0_15InterpreterDataENS0_6ObjectENS0_6TaggedEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit.i.i: ; preds = %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.br = load i64, ptr %i.bq, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit

_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit: ; preds = %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit7.i, %_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i, %_ZN2v88internal7SbxCastINS0_15InterpreterDataENS0_6ObjectENS0_6TaggedEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit.i.i
  %.sroa.0.0.i = phi i64 [ %i.aj, %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit7.i ], [ %i.br, %_ZN2v88internal7SbxCastINS0_15InterpreterDataENS0_6ObjectENS0_6TaggedEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit.i.i ], [ %.sroa.08.0.i.i, %_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i ]
  %i.bs = add i64 %.sroa.0.0.i, 7
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = lshr i64 %i.bu, 32
  %i.bw = trunc nuw i64 %i.bv to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.bx = add i64 %1, 39
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 304), align 16 ; 2 uses
  %i.cb = sdiv i32 1073741823, %i.ca
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.bw) ; 4 uses
  %i.cc = mul nsw i32 %.sroa.speculated, %i.ca    ; 4 uses
  %i.cd = add i64 %i.bz, 19
  %i.ce = inttoptr i64 %i.cd to ptr               ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4            ; 4 uses
  %i.cg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 691), align 1, !range !5, !noundef !6
  %i.ch = trunc nuw i8 %i.cg to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  br i1 %i.ch, label %bb.g, label %.critedge2

bb.g:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit
  store i64 %i.x, ptr %4, align 8
  %i.ci = call noundef i32 @_ZN2v88internal18SharedFunctionInfo23cached_tiering_decisionEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  %i.cj = icmp slt i32 %i.ci, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br i1 %i.cj, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ck = add i64 %1, 19
  %i.cl = inttoptr i64 %i.ck to ptr               ; 4 uses
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = zext i8 %i.cm to i32
  %i.co = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 696), align 8 ; 3 uses
  %i.cp = icmp sgt i32 %i.co, %i.cn
  br i1 %i.cp, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.cq = add i64 %1, 21
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = load i16, ptr %i.cr, align 2
  %i.ct = and i16 %i.cs, 4
  %.not121 = icmp eq i16 %i.ct, 0
  br i1 %.not121, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cu = sub nsw i32 %i.cc, %i.cf
  %i.cv = load atomic volatile i8, ptr %i.cl monotonic, align 1
  %i.cw = uitofp i8 %i.cv to float
  %i.cx = sitofp i32 %i.cu to float
  %i.cy = sitofp i32 %.sroa.speculated to float
  %i.cz = fdiv float %i.cx, %i.cy
  %i.da = call noundef float @llvm.ceil.f32(float %i.cz)
  %i.db = fadd float %i.da, %i.cw
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.dc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 52), align 4, !range !5, !noundef !6
  %i.dd = trunc nuw i8 %i.dc to i1
  %.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 268), align 4
  %.val122 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 292), align 4
  %i.de = select i1 %i.dd, i32 %.val, i32 %.val122
  %i.df = mul nsw i32 %i.de, %.sroa.speculated
  %i.dg = sub nsw i32 %i.df, %i.cf
  %i.dh = sitofp i32 %i.dg to float
  %i.di = sitofp i32 %.sroa.speculated to float
  %i.dj = fdiv float %i.dh, %i.di
  %i.dk = call noundef float @llvm.ceil.f32(float %i.dj)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.in = phi float [ %i.db, %bb.j ], [ %i.dk, %bb.k ]
  %.0 = fptosi float %.0.in to i32                ; 2 uses
  %.not = icmp sgt i32 %i.co, %.0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = trunc i32 %i.co to i8
  store atomic volatile i8 %i.dl, ptr %i.cl monotonic, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store i64 %i.x, ptr %5, align 8
  call void @_ZN2v88internal18SharedFunctionInfo27set_cached_tiering_decisionENS0_21CachedTieringDecisionE(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.dm = trunc i32 %.0 to i8
  store atomic volatile i8 %i.dm, ptr %i.cl monotonic, align 1
  br label %bb.p

bb.o:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store i64 %i.x, ptr %6, align 8
  call void @_ZN2v88internal18SharedFunctionInfo27set_cached_tiering_decisionENS0_21CachedTieringDecisionE(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.p

.critedge2:                                       ; preds = %_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o, %.critedge2, %bb.g
  %i.dn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 691), align 1, !range !5, !noundef !6
  %i.do = trunc nuw i8 %i.dn to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  br i1 %i.do, label %bb.q, label %.critedge4

bb.q:                                             ; preds = %bb.p
  store i64 %i.x, ptr %7, align 8
  %i.dp = call noundef i32 @_ZN2v88internal18SharedFunctionInfo23cached_tiering_decisionEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #11
  switch i32 %i.dp, label %bb.r [
    i32 3, label %_ZN2v88internal12_GLOBAL__N_136ShouldResetInterruptBudgetByICChangeENS0_21CachedTieringDecisionE.exit.thread
    i32 4, label %_ZN2v88internal12_GLOBAL__N_136ShouldResetInterruptBudgetByICChangeENS0_21CachedTieringDecisionE.exit.thread
    i32 0, label %_ZN2v88internal12_GLOBAL__N_136ShouldResetInterruptBudgetByICChangeENS0_21CachedTieringDecisionE.exit
    i32 1, label %_ZN2v88internal12_GLOBAL__N_136ShouldResetInterruptBudgetByICChangeENS0_21CachedTieringDecisionE.exit
    i32 2, label %_ZN2v88internal12_GLOBAL__N_136ShouldResetInterruptBudgetByICChangeENS0_21CachedTieringDecisionE.exit
    i32 5, label %_ZN2v88internal12_GLOBAL__N_136ShouldResetInterruptBudgetByICChangeENS0_21CachedTieringDecisionE.exit
  ]

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15) #12
  unreachable

_ZN2v88internal12_GLOBAL__N_136ShouldResetInterruptBudgetByICChangeENS0_21CachedTieringDecisionE.exit.thread: ; preds = %bb.q, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.v

_ZN2v88internal12_GLOBAL__N_136ShouldResetInterruptBudgetByICChangeENS0_21CachedTieringDecisionE.exit: ; preds = %bb.q, %bb.q, %bb.q, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.dq = icmp sgt i32 %i.cc, %i.cf
  br i1 %i.dq, label %bb.s, label %bb.v

.critedge4:                                       ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %.old = icmp sgt i32 %i.cc, %i.cf
  br i1 %.old, label %bb.s, label %bb.v

bb.s:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_136ShouldResetInterruptBudgetByICChangeENS0_21CachedTieringDecisionE.exit, %.critedge4
  %i.dr = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1435), align 1, !range !5, !noundef !6
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store i64 %i.x, ptr %9, align 8
  call void @_ZNK2v88internal18SharedFunctionInfo13DebugNameCStrEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.470") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #11
  %i.dt = load ptr, ptr %8, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.4, ptr noundef %i.dt) #11
  %i.du = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.du, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.du) #13
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.t, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.s
  %i.dv = add i64 %1, 21
  %i.dw = inttoptr i64 %i.dv to ptr               ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 2
  %i.dy = or i16 %i.dx, 4
  store i16 %i.dy, ptr %i.dw, align 2
  store i32 %i.cc, ptr %i.ce, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.d, %_ZN2v88internal12_GLOBAL__N_136ShouldResetInterruptBudgetByICChangeENS0_21CachedTieringDecisionE.exit.thread, %.critedge4, %bb.u, %_ZN2v88internal12_GLOBAL__N_136ShouldResetInterruptBudgetByICChangeENS0_21CachedTieringDecisionE.exit, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZN2v88internal22CanCompileWithBaselineEPNS0_7IsolateENS0_6TaggedINS0_18SharedFunctionInfoEEE(ptr noundef, i64) local_unnamed_addr #3

declare void @_ZN2v88internal18SharedFunctionInfo27set_cached_tiering_decisionENS0_21CachedTieringDecisionE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare void @_ZNK2v88internal18SharedFunctionInfo13DebugNameCStrEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.470") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14TieringManager20OnInterruptTickScopeC2Ev(ptr nofree nonnull readnone align 1 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca [2 x %"class.std::unique_ptr.534"], align 16 ; 6 uses
  %2 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 9 uses
  %i.a = load atomic volatile i64, ptr @_ZZN2v88internal14TieringManager20OnInterruptTickScopeC1EvE28trace_event_unique_atomic546 acquire, align 8 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #11 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.5) #11 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  store atomic volatile i64 %i.h, ptr @_ZZN2v88internal14TieringManager20OnInterruptTickScopeC1EvE28trace_event_unique_atomic546 release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.b ]  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.i = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.j = and i8 %i.i, 5
  %.not7 = icmp eq i8 %i.j, 0
  br i1 %.not7, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.k = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #11 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 88, ptr noundef nonnull %.0, ptr noundef nonnull @.str.6, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %1, i32 noundef 0) #11, !inline_history !24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #11, !inline_history !25
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.u = load ptr, ptr %1, align 16               ; 3 uses
  %.not.i.1 = icmp eq ptr %i.u, null
  br i1 %.not.i.1, label %bb.e, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #11, !inline_history !25
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %.0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @.str.6, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.o, ptr %i.aa, align 8
  store ptr %i.y, ptr %2, align 8
  %i.ab = load atomic volatile i8, ptr %.0 monotonic, align 1
  %.not1.i = icmp eq i8 %i.ab, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #11 ; 2 uses
  %i.ae = load ptr, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.ad, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.ae, ptr noundef %i.ag, i64 noundef %i.ai) #11, !inline_history !26
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %bb.c, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

declare noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14TieringManager15OnInterruptTickENS0_12DirectHandleINS0_10JSFunctionEEENS0_8CodeKindE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr %1, i8 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::IsCompiledScope", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.15", align 8 ; 5 uses
  %6 = alloca %"class.v8::internal::IsCompiledScope", align 8 ; 5 uses
  %7 = alloca %"class.v8::internal::IsCompiledScope", align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 5 uses
  %9 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.15", align 8 ; 6 uses
  %10 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.15", align 8 ; 4 uses
  %11 = alloca %"class.v8::internal::IsCompiledScope", align 8 ; 5 uses
  %12 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.15", align 8 ; 4 uses
  %13 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.15", align 8 ; 4 uses
  %14 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %15 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %16 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 31
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @_ZN2v88internal15IsCompiledScopeC2ENS0_6TaggedINS0_18SharedFunctionInfoEEEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %6, i64 %i.d, ptr noundef %i.e)
  %.fca.0.load.i = load ptr, ptr %6, align 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.fca.1.load.i = load i8, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store ptr %.fca.0.load.i, ptr %7, align 8
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 %.fca.1.load.i, ptr %.sroa.217.0..sroa_idx, align 8
  %i.f = load i64, ptr %1, align 8                ; 2 uses
  %i.g = add i64 %i.f, 31
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8 ; 2 uses
  %i.j = add i64 %i.i, 15
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k acquire, align 8
  %.not.i.i.i = icmp eq i64 %i.l, 446676598784
  br i1 %.not.i.i.i, label %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = add i64 %i.i, 7
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.i.i, label %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.thread.i.i

_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.i.i: ; preds = %bb.b
  %i.q = add nsw i64 %i.o, -1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = add i64 %i.s, 11
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i16, ptr %i.u monotonic, align 2
  %i.w = add i16 %i.v, -177
  %i.x = icmp ult i16 %i.w, -4
  br i1 %i.x, label %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.thread.i.i, label %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit

_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.thread.i.i: ; preds = %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.i.i, %bb.b
  %i.y = add i64 %i.f, 47
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = add i64 %i.aa, 7
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.ad, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2
  %i.ak = icmp eq i16 %i.aj, 269
  br label %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit

_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit: ; preds = %bb.a, %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.i.i, %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.thread.i.i
  %i.al = phi i1 [ false, %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.i.i ], [ %i.ak, %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.thread.i.i ], [ false, %bb.a ] ; 4 uses
  %i.am = load ptr, ptr %0, align 8
  %i.an = load i64, ptr %1, align 8               ; 3 uses
  %i.ao = add i64 %i.an, 31
  %i.ap = inttoptr i64 %i.ao to ptr               ; 3 uses
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8 ; 2 uses
  %i.ar = add i64 %i.aq, 15
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load atomic volatile i64, ptr %i.as acquire, align 8
  %.not.i.i.i.i = icmp eq i64 %i.at, 446676598784
  br i1 %.not.i.i.i.i, label %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit
  %i.au = add i64 %i.aq, 7
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = trunc i64 %i.aw to i1
  br i1 %i.ax, label %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.i.i.i, label %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit.i

_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.i.i.i: ; preds = %bb.c
  %i.ay = add nsw i64 %i.aw, -1
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load atomic volatile i64, ptr %i.az monotonic, align 8
  %i.bb = add i64 %i.ba, 11
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load atomic volatile i16, ptr %i.bc monotonic, align 2
  %i.be = add i16 %i.bd, -177
  %i.bf = icmp ult i16 %i.be, -4
  br i1 %i.bf, label %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit.i, label %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit.thread.i

_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit.thread.i: ; preds = %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.i.i.i, %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  br label %_ZN2v88internal12_GLOBAL__N_126FirstTimeTierUpToSparkplugEPNS0_7IsolateENS0_6TaggedINS0_10JSFunctionEEE.exit

_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit.i: ; preds = %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.i.i.i, %bb.c
  %i.bg = add i64 %i.an, 47
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = add i64 %i.bi, 7
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = add i64 %i.bl, -1
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load atomic volatile i64, ptr %i.bn monotonic, align 8
  %i.bp = add i64 %i.bo, 11
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load atomic volatile i16, ptr %i.bq monotonic, align 2
  %i.bs = icmp eq i16 %i.br, 269
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  br i1 %i.bs, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_126FirstTimeTierUpToSparkplugEPNS0_7IsolateENS0_6TaggedINS0_10JSFunctionEEE.exit
end_hunk_0
