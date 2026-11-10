Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/debug-evaluate?download=true
inline.NumInlined: 669
inline.NumDeleted: 414
begin_hunk_0_@_ZN2v88internal6PrintFEPKcz

declare noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 1, 4) i32 @_ZN2v88internal13DebugEvaluate26FunctionGetSideEffectStateEPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEE(ptr noundef %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 !guid !50 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.575", align 8 ; 5 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.495", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.495", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::interpreter::BytecodeArrayIterator", align 8 ; 12 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.495", align 8 ; 4 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1460), align 4, !range !18, !noundef !19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.c = load i64, ptr %1, align 8
  store i64 %i.c, ptr %3, align 8
  call void @_ZNK2v88internal18SharedFunctionInfo13DebugNameCStrEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.575") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %i.d = load ptr, ptr %2, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.4, ptr noundef %i.d) #12
  %i.e = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.e) #14
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.a
  %i.f = load i64, ptr %1, align 8
  %i.g = add i64 %i.f, 7
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = and i64 %i.i, 1
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread, label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit

_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit: ; preds = %bb.c
  %i.l = add nsw i64 %i.i, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = add i64 %i.n, 11
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i16, ptr %i.p monotonic, align 2
  %.off.i.i = add i16 %i.q, -184
  %switch.i.i = icmp ult i16 %.off.i.i, 3
  br i1 %switch.i.i, label %bb.d, label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread

bb.d:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.r = load i64, ptr %1, align 8
  store i64 %i.r, ptr %4, align 8
  %i.s = call { i64, i8 } @_ZNK2v88internal18SharedFunctionInfo15TryGetDebugInfoEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %0) #12 ; 2 uses
  %i.t = extractvalue { i64, i8 } %i.s, 0         ; 2 uses
  %i.u = extractvalue { i64, i8 } %i.s, 1
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit.i, label %.critedge.i

_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit.i: ; preds = %bb.d
  %i.w = add i64 %i.t, 55
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i64, ptr %i.x acquire, align 8
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit7.i, label %.critedge.i

_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit7.i: ; preds = %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit.i
  %i.aa = add i64 %i.t, 47
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i64, ptr %i.ab acquire, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit

.critedge.i:                                      ; preds = %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit.i, %bb.d
  %.sroa.0.0.copyload.i.i.i8.i = load i64, ptr %4, align 8
  %i.ad = add i64 %.sroa.0.0.copyload.i.i.i8.i, 7
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i64, ptr %i.ae acquire, align 8 ; 6 uses
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i.i

_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i: ; preds = %.critedge.i
  %i.ah = add nsw i64 %i.af, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i16, ptr %i.al monotonic, align 2
  %i.an = icmp eq i16 %i.am, 185
  br i1 %i.an, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i.i, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i.i

_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i.i: ; preds = %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i
  %i.ao = add i64 %i.af, 51
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i32, ptr %i.ap monotonic, align 4
  %i.ar = and i32 %i.aq, 15
  %i.as = icmp eq i32 %i.ar, 10
  br i1 %i.as, label %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit.i.i, label %bb.e, !prof !20

bb.e:                                             ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #13
  unreachable

_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit.i.i: ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i.i
  %i.at = add i64 %i.af, 7
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load i64, ptr %i.au, align 8
  br label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i.i

_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i.i: ; preds = %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit.i.i, %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i, %.critedge.i
  %.sroa.08.0.i.i = phi i64 [ %i.av, %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit.i.i ], [ %i.af, %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i ], [ %i.af, %.critedge.i ] ; 3 uses
  %i.aw = trunc i64 %.sroa.08.0.i.i to i1
  br i1 %i.aw, label %_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i, label %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.thread.i.i.i

_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i: ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i.i
  %i.ax = add nsw i64 %.sroa.08.0.i.i, -1
  %i.ay = inttoptr i64 %i.ax to ptr               ; 3 uses
  %i.az = load atomic volatile i64, ptr %i.ay monotonic, align 8
  %i.ba = add i64 %i.az, 11
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i16, ptr %i.bb monotonic, align 2
  %i.bd = icmp eq i16 %i.bc, 184
  br i1 %i.bd, label %_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit, label %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i

_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i: ; preds = %_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i
  %i.be = load atomic volatile i64, ptr %i.ay monotonic, align 8
  %i.bf = add i64 %i.be, 11
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load atomic volatile i16, ptr %i.bg monotonic, align 2
  %i.bi = icmp eq i16 %i.bh, 186
  br i1 %i.bi, label %_ZN2v88internal7SbxCastINS0_15InterpreterDataENS0_6ObjectENS0_6TaggedEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit.i.i, label %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.thread.i.i.i, !prof !51

_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.thread.i.i.i: ; preds = %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i, %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #13
  unreachable

_ZN2v88internal7SbxCastINS0_15InterpreterDataENS0_6ObjectENS0_6TaggedEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit.i.i: ; preds = %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bk = load i64, ptr %i.bj, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit

_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit: ; preds = %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit7.i, %_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i, %_ZN2v88internal7SbxCastINS0_15InterpreterDataENS0_6ObjectENS0_6TaggedEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit.i.i
  %.sroa.0.0.i = phi i64 [ %i.ac, %_ZNRSt8optionalIN2v88internal6TaggedINS1_9DebugInfoEEEE5valueEv.exit7.i ], [ %i.bk, %_ZN2v88internal7SbxCastINS0_15InterpreterDataENS0_6ObjectENS0_6TaggedEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit.i.i ], [ %.sroa.08.0.i.i, %_ZN2v88internal2IsINS0_13BytecodeArrayENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = icmp eq ptr %i.bm, %i.bo
  br i1 %i.bp, label %bb.f, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !17

bb.f:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit
  %i.bq = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #12
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit, %bb.f
  %.0.i = phi ptr [ %i.bq, %bb.f ], [ %i.bm, %_ZNK2v88internal18SharedFunctionInfo16GetBytecodeArrayINS0_7IsolateEEENS0_6TaggedINS0_13BytecodeArrayEEEPT_.exit ] ; 4 uses
  %i.br = ptrtoint ptr %.0.i to i64
  %i.bs = add i64 %i.br, 8
  %i.bt = inttoptr i64 %i.bs to ptr
  store ptr %i.bt, ptr %i.bl, align 8
  store i64 %.sroa.0.0.i, ptr %.0.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.bu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1460), align 4, !range !18, !noundef !19
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.bw = load i64, ptr %.0.i, align 8
  call void @_ZN2v88internal5PrintILNS0_23HeapObjectReferenceTypeE1EmEEvNS0_10TaggedImplIXT_ET0_EE(i64 %i.bw) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @_ZN2v88internal11interpreter21BytecodeArrayIteratorC1ENS0_6HandleINS0_13BytecodeArrayEEEi(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %.0.i, i32 noundef 0) #12
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bz = load ptr, ptr %i.by, align 8            ; 3 uses
  %.promoted = load ptr, ptr %i.bx, align 8       ; 2 uses
  %.not101 = icmp ult ptr %.promoted, %i.bz
  br i1 %.not101, label %.lr.ph, label %.thread127

.thread127:                                       ; preds = %bb.h
  call void @_ZN2v88internal11interpreter21BytecodeArrayIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit

.lr.ph:                                           ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 36
  %.promoted105 = load i8, ptr %i.ca, align 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit
  %.0.i.i.i107.a = phi i8 [ %.promoted105, %.lr.ph ], [ %.0.i.i.i106, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit ] ; 2 uses
  %.020102 = phi i1 [ false, %.lr.ph ], [ %.121.ph, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit ] ; 105 uses
  %i.cc = phi ptr [ %.promoted, %.lr.ph ], [ %i.cz, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit ] ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1             ; 9 uses
  %i.ce = add i8 %i.cd, 61
  %i.cf = icmp ult i8 %i.ce, 16
  %i.cg = add i8 %i.cd, -11
  %i.ch = icmp ult i8 %i.cg, 24
  %or.cond = or i1 %i.ch, %i.cf
  br i1 %or.cond, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ci = add i8 %i.cd, 107
  %i.cj = icmp ult i8 %i.ci, 25
  br i1 %i.cj, label %switch.early.test.i.i, label %switch.early.test.i.a

switch.early.test.i.i:                            ; preds = %bb.j
  switch i8 %i.cd, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread [
    i8 -107, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit
    i8 -95, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit
    i8 -94, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit
    i8 -93, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit
    i8 -92, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit
  ]

switch.early.test.i.a:                            ; preds = %bb.j
  switch i8 %i.cd, label %bb.k [
    i8 -68, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -73, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -82, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
  ]

bb.k:                                             ; preds = %switch.early.test.i.a
  %7 = add i8 %i.cd, -100
  %8 = icmp ult i8 %7, 10
  br i1 %8, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit

_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit: ; preds = %bb.k, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i
  switch i8 %i.cd, label %bb.l [
    i8 116, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 115, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 114, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 112, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -92, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -93, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -94, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -95, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 3, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 2, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 1, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 0, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 42, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 35, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 51, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 53, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 36, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 46, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -65, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 64, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 77, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 65, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 78, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 66, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 79, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 67, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 80, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 68, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 81, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 69, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 82, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 91, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 72, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 85, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 92, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 70, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 83, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 71, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 84, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 73, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 86, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 74, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 87, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 75, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 88, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 89, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 90, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 94, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 93, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 95, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -116, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -115, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -114, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -113, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -112, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -111, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -124, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -122, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -123, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -121, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -120, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -125, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -117, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -109, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -108, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 117, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 118, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 119, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 121, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 120, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 122, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 123, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 124, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 30, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 31, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 34, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 33, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 32, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -128, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 125, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 126, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 127, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -127, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -126, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -63, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -81, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -80, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -79, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -78, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -107, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -75, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -74, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -72, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -71, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -70, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -45, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -76, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 -73, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
    i8 57, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread.fold.split
    i8 58, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread.fold.split
    i8 59, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread.fold.split
    i8 61, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread.fold.split
    i8 62, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread.fold.split
    i8 39, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread.fold.split
    i8 113, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread.fold.split
    i8 111, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread.fold.split
    i8 110, label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread.fold.split
  ]

bb.l:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit
  %i.ck = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1460), align 4, !range !18, !noundef !19
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %.split, label %.loopexit

.split:                                           ; preds = %bb.l
  %i.cm = call noundef ptr @_ZN2v88internal11interpreter9Bytecodes8ToStringENS1_8BytecodeE(i8 noundef zeroext %i.cd) #12
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.5, ptr noundef %i.cm) #12
  call void @_ZN2v88internal11interpreter21BytecodeArrayIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %.thread

_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread.fold.split: ; preds = %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit
  br label %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread

_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread: ; preds = %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread.fold.split, %bb.k, %bb.i, %switch.early.test.i.i, %switch.early.test.i.a, %switch.early.test.i.a, %switch.early.test.i.a
  %.121.ph = phi i1 [ %.020102, %bb.k ], [ true, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread.fold.split ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit ], [ %.020102, %switch.early.test.i.a ], [ %.020102, %switch.early.test.i.a ], [ %.020102, %switch.early.test.i.a ], [ %.020102, %switch.early.test.i.i ], [ %.020102, %bb.i ] ; 2 uses
  %i.cn = lshr i8 %.0.i.i.i107.a, 1
  %i.co = zext nneg i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [212 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes14kBytecodeSizesE, i64 %i.co
  %i.cq = zext i8 %i.cd to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ct ; 6 uses
  store ptr %i.cu, ptr %i.bx, align 8
  %.not.i.i = icmp ult ptr %i.cu, %i.bz
  br i1 %.not.i.i, label %bb.m, label %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit

bb.m:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread
  %i.cv = load i8, ptr %i.cu, align 1             ; 2 uses
  %switch.selectcmp.i.i.i = icmp ult i8 %i.cv, 4
  br i1 %switch.selectcmp.i.i.i, label %switch.lookup, label %bb.n

switch.lookup:                                    ; preds = %bb.m
  %i.cw = shl nuw nsw i8 %i.cv, 3
  %switch.shiftamt = zext nneg i8 %i.cw to i32
  %switch.downshift = lshr i32 67240962, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8 ; 2 uses
  store i8 %switch.masked, ptr %i.ca, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 1 ; 2 uses
  store ptr %i.cx, ptr %i.bx, align 8
  br label %.sink.split.i.i

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %i.ca, align 8
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.n, %switch.lookup
  %.0.i.i.i108 = phi i8 [ %switch.masked, %switch.lookup ], [ 1, %bb.n ]
  %i.cy = phi ptr [ %i.cx, %switch.lookup ], [ %i.cu, %bb.n ]
  %.sink.i.i = phi i32 [ 1, %switch.lookup ], [ 0, %bb.n ]
  store i32 %.sink.i.i, ptr %i.cb, align 4
  br label %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit

_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread, %.sink.split.i.i
  %.0.i.i.i106 = phi i8 [ %.0.i.i.i107.a, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread ], [ %.0.i.i.i108, %.sink.split.i.i ]
  %i.cz = phi ptr [ %i.cu, %_ZN2v88internal12_GLOBAL__N_123BytecodeHasNoSideEffectENS0_11interpreter8BytecodeE.exit.thread ], [ %i.cy, %.sink.split.i.i ] ; 2 uses
  %.not = icmp ult ptr %i.cz, %i.bz
  br i1 %.not, label %bb.i, label %.loopexit, !llvm.loop !49

.loopexit:                                        ; preds = %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit, %bb.l
  %.02099 = phi i1 [ %.020102, %bb.l ], [ %.121.ph, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit ]
  %.not96 = phi i1 [ true, %bb.l ], [ false, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit ]
  call void @_ZN2v88internal11interpreter21BytecodeArrayIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %cond.fr = freeze i1 %.02099
  %. = select i1 %cond.fr, i32 2, i32 3
  br i1 %.not96, label %.thread, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit

.thread:                                          ; preds = %.loopexit, %.split
  br label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit

_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread: ; preds = %bb.c, %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit
  %i.da = load i64, ptr %1, align 8
  %i.db = add i64 %i.da, 15
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = load atomic volatile i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = trunc i64 %i.dd to i1
  br i1 %i.de, label %_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit, label %_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit.thread

_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit: ; preds = %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread
  %i.df = add nsw i64 %i.dd, -1
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = load atomic volatile i64, ptr %i.dg monotonic, align 8
  %i.di = add i64 %i.dh, 11
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load atomic volatile i16, ptr %i.dj monotonic, align 2
  %i.dl = icmp eq i16 %i.dk, 248
  br i1 %i.dl, label %bb.o, label %_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit.thread

bb.o:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.dm = load i64, ptr %1, align 8
  store i64 %i.dm, ptr %6, align 8
  %i.dn = call i64 @_ZNK2v88internal18SharedFunctionInfo7GetCodeEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %0) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.do = add i64 %i.dn, 89
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = load i16, ptr %i.dp, align 2
  %i.dr = icmp eq i16 %i.dq, 122
  %i.ds = select i1 %i.dr, i32 3, i32 1
  br label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit

_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit.thread: ; preds = %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread, %_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit
  %i.dt = load i64, ptr %1, align 8
  %i.du = add i64 %i.dt, 15
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load atomic volatile i64, ptr %i.dv acquire, align 8 ; 2 uses
  %i.dx = and i64 %i.dw, 1
  %i.dy = icmp eq i64 %i.dx, 0
  %i.dz = icmp ult i64 %i.dw, 9195524980736
  %i.ea = and i1 %i.dz, %i.dy
  br i1 %i.ea, label %bb.p, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit

bb.p:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit.thread
  %i.eb = load i64, ptr %1, align 8
  %i.ec = add i64 %i.eb, 15
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = load atomic volatile i64, ptr %i.ed acquire, align 8 ; 2 uses
  %i.ef = icmp ult i64 %i.ee, 9195524980736
  br i1 %i.ef, label %bb.r, label %bb.q, !prof !20

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #13
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.eg = lshr i64 %i.ee, 32
  %i.eh = trunc nuw nsw i64 %i.eg to i32          ; 2 uses
  switch i32 %i.eh, label %bb.t [
    i32 942, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 572, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 577, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 579, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 580, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 581, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 582, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 1104, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 1100, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 583, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 584, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 1102, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 585, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 586, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 587, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 1107, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 597, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 590, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 591, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 592, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 1106, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 1108, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 836, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 202, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 835, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 232, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 855, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 248, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 227, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 797, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 798, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 246, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 812, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 817, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 819, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 821, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 824, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 825, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 843, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 844, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 247, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 849, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 868, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 845, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 875, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 877, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 878, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 846, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 881, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 829, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 803, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 872, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 221, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 807, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 854, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 865, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 860, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 790, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 791, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 678, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 1249, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 1237, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 679, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 680, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 681, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 682, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 1240, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 1248, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 1260, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 1242, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 1243, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 1244, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 1245, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 685, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 847, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 686, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 687, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 1253, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 1257, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 1239, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 1254, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 848, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 1241, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 690, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 1250, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
    i32 1251, label %_ZN2v88internal12_GLOBAL__N_125BuiltinGetSideEffectStateENS0_7BuiltinE.exit
end_hunk_0
