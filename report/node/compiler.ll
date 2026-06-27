inline.NumInlined: 6502
inline.NumDeleted: 2740
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_113CompileMaglevEPNS0_7IsolateENS0_6HandleINS0_10JSFunctionEEENS0_15ConcurrencyModeENS0_14BytecodeOffsetENS1_21CompileResultBehaviorE:bb.a
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.85) #22
  unreachable

bb.u:                                             ; preds = %_ZN2v88internal23OptimizedCompilationJob10PrepareJobEPNS0_7IsolateE.exit
  %i.ch = load ptr, ptr %9, align 8
  %.not.i37 = icmp eq ptr %i.ch, null
  br i1 %.not.i37, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = load atomic volatile i8, ptr %i.cj monotonic, align 1
  %.not1.i = icmp eq i8 %i.ck, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cl = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #21 ; 2 uses
  %i.cm = load ptr, ptr %i.ci, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = load ptr, ptr %i.cl, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef %i.cm, ptr noundef %i.co, i64 noundef %i.cq) #21, !inline_history !36
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %bb.u, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.cu = icmp eq i8 %.0, 0
  br i1 %i.cu, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit
  %i.cv = load ptr, ptr %8, align 8               ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 63936
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call i64 @_ZN2v84base9TimeTicks3NowEv() #21
  %i.cz = load ptr, ptr %i.cv, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = call noundef i32 %i.db(ptr noundef nonnull align 8 dereferenceable(56) %i.cv, ptr noundef null, ptr noundef %i.cx) #21, !inline_history !228 ; 2 uses
  switch i32 %i.dc, label %_ZN2v88internal23OptimizedCompilationJob10ExecuteJobEPNS0_16RuntimeCallStatsEPNS0_12LocalIsolateE.exit [
    i32 0, label %.sink.split.i.i38
    i32 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  br label %.sink.split.i.i38

.sink.split.i.i38:                                ; preds = %bb.y, %bb.x
  %.sink.i.i39 = phi i32 [ 4, %bb.y ], [ 2, %bb.x ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i32 %.sink.i.i39, ptr %i.dd, align 8
  br label %_ZN2v88internal23OptimizedCompilationJob10ExecuteJobEPNS0_16RuntimeCallStatsEPNS0_12LocalIsolateE.exit

_ZN2v88internal23OptimizedCompilationJob10ExecuteJobEPNS0_16RuntimeCallStatsEPNS0_12LocalIsolateE.exit: ; preds = %bb.x, %.sink.split.i.i38
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 2 uses
  %i.df = call i64 @_ZN2v84base9TimeTicks3NowEv() #21
  %i.dg = sub i64 %i.df, %i.cy
  %i.dh = load i64, ptr %i.de, align 8
  %i.di = add nsw i64 %i.dg, %i.dh
  store i64 %i.di, ptr %i.de, align 8
  switch i32 %i.dc, label %bb.z [
    i32 1, label %bb.ac
    i32 0, label %bb.aa
  ], !prof !229

bb.z:                                             ; preds = %_ZN2v88internal23OptimizedCompilationJob10ExecuteJobEPNS0_16RuntimeCallStatsEPNS0_12LocalIsolateE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.85) #22
  unreachable

bb.aa:                                            ; preds = %_ZN2v88internal23OptimizedCompilationJob10ExecuteJobEPNS0_16RuntimeCallStatsEPNS0_12LocalIsolateE.exit
  %i.dj = load ptr, ptr %8, align 8
  call void @_ZN2v88internal8Compiler28FinalizeMaglevCompilationJobEPNS0_6maglev20MaglevCompilationJobEPNS0_7IsolateE(ptr noundef %i.dj, ptr noundef nonnull %0)
  %i.dk = load ptr, ptr %8, align 8
  %i.dl = call ptr @_ZNK2v88internal6maglev20MaglevCompilationJob4codeEv(ptr noundef nonnull align 8 dereferenceable(152) %i.dk) #21
  br label %bb.ac

bb.ab:                                            ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 59560
  %i.dn = load ptr, ptr %i.dm, align 8
  call void @_ZN2v88internal6maglev26MaglevConcurrentDispatcher10EnqueueJobEOSt10unique_ptrINS1_20MaglevCompilationJobESt14default_deleteIS4_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.dn, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.do = load i64, ptr %1, align 8
  store i64 %i.do, ptr %10, align 8
  call void @_ZN2v88internal10JSFunction20SetTieringInProgressEPNS0_7IsolateEbNS0_14BytecodeOffsetE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %0, i1 noundef zeroext true, i32 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.dp = load i64, ptr %1, align 8
  store i64 %i.dp, ptr %11, align 8
  call void @_ZN2v88internal10JSFunction18SetInterruptBudgetEPNS0_7IsolateENS0_18BudgetModificationESt8optionalINS0_8CodeKindEE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %0, i32 noundef 1, i16 267) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN2v88internal23OptimizedCompilationJob10ExecuteJobEPNS0_16RuntimeCallStatsEPNS0_12LocalIsolateE.exit, %bb.aa, %bb.ab
  %.sroa.049.0 = phi ptr [ null, %bb.ab ], [ %i.dl, %bb.aa ], [ null, %_ZN2v88internal23OptimizedCompilationJob10ExecuteJobEPNS0_16RuntimeCallStatsEPNS0_12LocalIsolateE.exit ]
  %i.dq = load ptr, ptr %8, align 8               ; 3 uses
  %.not.i40 = icmp eq ptr %i.dq, null
  br i1 %.not.i40, label %_ZNSt10unique_ptrIN2v88internal6maglev20MaglevCompilationJobESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal6maglev20MaglevCompilationJobEEclEPS3_.exit.i

_ZNKSt14default_deleteIN2v88internal6maglev20MaglevCompilationJobEEclEPS3_.exit.i: ; preds = %bb.ac
  call void @_ZN2v88internal6maglev20MaglevCompilationJobD1Ev(ptr noundef nonnull align 8 dereferenceable(152) %i.dq) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef 152) #23
  br label %_ZNSt10unique_ptrIN2v88internal6maglev20MaglevCompilationJobESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal6maglev20MaglevCompilationJobESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.ac, %_ZNKSt14default_deleteIN2v88internal6maglev20MaglevCompilationJobEEclEPS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.dr = load i8, ptr %i.c, align 8
  %.not.i41 = icmp eq i8 %i.dr, 2
  br i1 %.not.i41, label %_ZN2v88internal15InterruptsScopeD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt10unique_ptrIN2v88internal6maglev20MaglevCompilationJobESt14default_deleteIS3_EED2Ev.exit
  %i.ds = load ptr, ptr %7, align 8
  call void @_ZN2v88internal10StackGuard18PopInterruptsScopeEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ds) #21
  br label %_ZN2v88internal15InterruptsScopeD2Ev.exit

_ZN2v88internal15InterruptsScopeD2Ev.exit:        ; preds = %_ZNSt10unique_ptrIN2v88internal6maglev20MaglevCompilationJobESt14default_deleteIS3_EED2Ev.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret ptr %.sroa.049.0
}

declare noundef zeroext i1 @_ZN2v88internal18SharedFunctionInfo12PassesFilterEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal11interpreter21BytecodeArrayIteratorC1ENS0_6HandleINS0_13BytecodeArrayEEEi(ptr noundef nonnull align 8 dereferenceable(48), ptr, i32 noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal11interpreter21BytecodeArrayIterator30CurrentBytecodeIsValidOSREntryEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i8 } @_ZN2v88internal14FeedbackVector19GetOptimizedOsrCodeEPNS0_7IsolateENS0_6HandleINS0_13BytecodeArrayEEENS0_12FeedbackSlotE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr %2, i32 %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = shl nsw i32 %3, 3
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8
  %i.b = sext i32 %i.a to i64
  %i.c = add nsw i64 %i.b, 47                     ; 2 uses
  %i.d = add i64 %.sroa.0.0.copyload.i.i, %i.c
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8 ; 2 uses
  %i.g = and i64 %i.f, 4294967295
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i64 %i.f, -3
  %i.j = add i64 %i.i, 7
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k acquire, align 8 ; 4 uses
  %i.m = add i64 %i.l, 51
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i32, ptr %i.n monotonic, align 4
  %i.p = and i32 %i.o, 64
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.d, label %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.b
  %.sroa.04.0.copyload.i.i = load i64, ptr %0, align 8
  %i.q = add i64 %.sroa.04.0.copyload.i.i, %i.c
  %i.r = inttoptr i64 %i.q to ptr
  store atomic volatile i64 3, ptr %i.r monotonic, align 8
  %i.s = icmp eq ptr %2, null
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit
  tail call void @_ZN2v88internal14FeedbackVector30RecomputeOptimizedOsrCodeFlagsEPNS0_7IsolateENS0_6HandleINS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr nonnull %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, %bb.b, %bb.a
  %.sroa.020.1 = phi i64 [ undef, %bb.a ], [ %i.l, %bb.b ], [ %i.l, %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit ], [ %i.l, %bb.c ]
  %.sroa.2.1 = phi i8 [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %_ZN2v88internal14FeedbackVector3SetENS0_12FeedbackSlotENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.020.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.1, 1
  ret { i64, i8 } %.fca.1.insert
}

declare i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator14GetSlotOperandEi(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v88internal11interpreter21BytecodeArrayIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14FeedbackVector30RecomputeOptimizedOsrCodeFlagsEPNS0_7IsolateENS0_6HandleINS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::interpreter::BytecodeArrayIterator", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN2v88internal11interpreter21BytecodeArrayIteratorC1ENS0_6HandleINS0_13BytecodeArrayEEEi(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr %2, i32 noundef 0) #21
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8
  %.not2329 = icmp ult ptr %i.c, %i.d
  br i1 %.not2329, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 36
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit
  %i.g = phi ptr [ %i.c, %.lr.ph ], [ %i.ao, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit ]
  %.031 = phi i8 [ 0, %.lr.ph ], [ %.3, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit ] ; 4 uses
  %.0730 = phi i1 [ false, %.lr.ph ], [ %.310, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit ] ; 4 uses
  %i.h = load i8, ptr %i.g, align 1
  %.not = icmp eq i8 %i.h, -107
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator14GetSlotOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %3, i32 noundef 2) #21
  %i.j = call { i64, i8 } @_ZN2v88internal14FeedbackVector19GetOptimizedOsrCodeEPNS0_7IsolateENS0_6HandleINS0_13BytecodeArrayEEENS0_12FeedbackSlotE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr null, i32 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i8 } %i.j, 1
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i8 } %i.j, 0
  %i.n = add i64 %i.m, 51
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = load atomic volatile i32, ptr %i.o monotonic, align 4
  %i.q = and i32 %i.p, 64
  %.not24 = icmp eq i32 %i.q, 0
  br i1 %.not24, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load atomic volatile i32, ptr %i.o monotonic, align 4
  %i.s = trunc i32 %i.r to i8
  %i.t = lshr i8 %i.s, 4
  %i.u = or i8 %i.t, %.031
  %i.v = load atomic volatile i32, ptr %i.o monotonic, align 4
  %i.w = and i32 %i.v, 15
  %i.x = icmp eq i32 %i.w, 11
  %4 = or i1 %.0730, %i.x
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b
  %.310 = phi i1 [ %.0730, %bb.b ], [ %.0730, %bb.d ], [ %4, %bb.e ], [ %.0730, %bb.c ] ; 2 uses
  %.3 = phi i8 [ %.031, %bb.b ], [ %.031, %bb.d ], [ %i.u, %bb.e ], [ %.031, %bb.c ] ; 2 uses
  %i.y = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = load i8, ptr %i.e, align 8
  %i.ab = lshr i8 %i.aa, 1
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [212 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes14kBytecodeSizesE, i64 %i.ac
  %i.ae = zext i8 %i.z to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ah ; 6 uses
  store ptr %i.ai, ptr %i.a, align 8
  %i.aj = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not.i.i = icmp ult ptr %i.ai, %i.aj
  br i1 %.not.i.i, label %bb.g, label %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit

bb.g:                                             ; preds = %bb.f
  %i.ak = load i8, ptr %i.ai, align 1             ; 2 uses
  %switch.selectcmp.i.i.i = icmp ult i8 %i.ak, 4
  br i1 %switch.selectcmp.i.i.i, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %bb.g
  %i.al = shl nuw nsw i8 %i.ak, 3
  %switch.shiftamt = zext nneg i8 %i.al to i32
  %switch.downshift = lshr i32 67240962, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.e, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  store ptr %i.am, ptr %i.a, align 8
  br label %.sink.split.i.i

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.e, align 8
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.h, %switch.lookup
  %i.an = phi ptr [ %i.am, %switch.lookup ], [ %i.ai, %bb.h ]
  %.sink.i.i = phi i32 [ 1, %switch.lookup ], [ 0, %bb.h ]
  store i32 %.sink.i.i, ptr %i.f, align 4
  br label %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit

_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit: ; preds = %bb.f, %.sink.split.i.i
  %i.ao = phi ptr [ %i.ai, %bb.f ], [ %i.an, %.sink.split.i.i ] ; 2 uses
  %.not23 = icmp ult ptr %i.ao, %i.aj
  br i1 %.not23, label %bb.b, label %._crit_edge, !llvm.loop !230

._crit_edge:                                      ; preds = %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit
  %i.ap = trunc i8 %.3 to i1                      ; 2 uses
  br i1 %.310, label %bb.k, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.0.lcssa40 = phi i1 [ %i.ap, %._crit_edge ], [ false, %bb.a ] ; 2 uses
  %i.aq = load i64, ptr %0, align 8
  %i.ar = add i64 %i.aq, 20
  %i.as = inttoptr i64 %i.ar to ptr               ; 2 uses
  %i.at = load i8, ptr %i.as, align 1             ; 2 uses
  %i.au = and i8 %i.at, 8
  %.not25 = icmp eq i8 %i.au, 0
  br i1 %.not25, label %bb.k, label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread
  %i.av = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 612), align 4, !range !7, !noundef !8
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZN2v88internal14FeedbackVector32set_maybe_has_optimized_osr_codeEbNS0_8CodeKindE.exit, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.67) #22
  unreachable

_ZN2v88internal14FeedbackVector32set_maybe_has_optimized_osr_codeEbNS0_8CodeKindE.exit: ; preds = %bb.i
  %i.ax = and i8 %i.at, -9
  store i8 %i.ax, ptr %i.as, align 1
  br i1 %.0.lcssa40, label %bb.n, label %bb.l

bb.k:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.0.lcssa41 = phi i1 [ %i.ap, %._crit_edge ], [ %.0.lcssa40, %._crit_edge.thread ]
  br i1 %.0.lcssa41, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal14FeedbackVector32set_maybe_has_optimized_osr_codeEbNS0_8CodeKindE.exit, %bb.k
  %i.ay = load i64, ptr %0, align 8
  %i.az = add i64 %i.ay, 20
  %i.ba = inttoptr i64 %i.az to ptr               ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1             ; 2 uses
  %i.bc = and i8 %i.bb, 16
  %.not26 = icmp eq i8 %i.bc, 0
  br i1 %.not26, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = and i8 %i.bb, -17
  store i8 %i.bd, ptr %i.ba, align 1
  br label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal14FeedbackVector32set_maybe_has_optimized_osr_codeEbNS0_8CodeKindE.exit, %bb.m, %bb.l, %bb.k
  call void @_ZN2v88internal11interpreter21BytecodeArrayIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

declare noundef zeroext i1 @_ZN2v88internal14FeedbackVector23osr_tiering_in_progressEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler17NewCompilationJobEPNS0_7IsolateENS0_6HandleINS0_10JSFunctionEEENS1_17IsScriptAvailableENS0_14BytecodeOffsetE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.1184") align 8, ptr noundef, ptr, i32 noundef, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_125PrepareJobWithHandleScopeEPNS0_23OptimizedCompilationJobEPNS0_7IsolateEPNS0_24OptimizedCompilationInfoENS0_15ConcurrencyModeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext range(i8 0, 2) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.467", align 8 ; 6 uses
  %5 = alloca %"class.v8::internal::DisallowJavascriptExecution", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::CompilationHandleScope", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN2v88internal22PersistentHandlesScopeC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %1) #21
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1433), align 1, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_114CompilerTracer15TracePrepareJobEPNS0_7IsolateEPNS0_24OptimizedCompilationInfoENS0_15ConcurrencyModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = add i8 %i.e, -11
  %i.g = icmp ult i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_114CompilerTracer15TracePrepareJobEPNS0_7IsolateEPNS0_24OptimizedCompilationInfoENS0_15ConcurrencyModeE.exit

bb.c:                                             ; preds = %bb.b
  %i.h = call noundef ptr @_ZN2v88internal7Isolate13GetCodeTracerEv(ptr noundef nonnull align 8 dereferenceable(64320) %1) #21 ; 4 uses
  %i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1904), align 16, !range !7, !noundef !8
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 144 ; 9 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  br i1 %i.j, label %bb.d, label %_ZN2v88internal10CodeTracer5ScopeC2EPS1_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.h, align 8
  %i.o = call noundef ptr @_ZN2v84base2OS5FOpenEPKcS3_(ptr noundef %i.n, ptr noundef nonnull @.str.38) #21 ; 3 uses
  store ptr %i.o, ptr %i.k, align 8
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.g, !prof !5

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.39) #22
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.p = phi ptr [ %i.o, %bb.e ], [ %i.l, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 152 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8
  br label %_ZN2v88internal10CodeTracer5ScopeC2EPS1_.exit.i

_ZN2v88internal10CodeTracer5ScopeC2EPS1_.exit.i:  ; preds = %bb.g, %bb.c
  %i.t = phi ptr [ %i.p, %bb.g ], [ %i.l, %bb.c ]
  %.val.i = load i8, ptr %i.d, align 8
  %i.u = getelementptr i8, ptr %2, i64 40
  %.val4.i = load ptr, ptr %i.u, align 8
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.t, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.60) #21
  %i.v = load i64, ptr %.val4.i, align 8
  %i.w = load ptr, ptr %i.k, align 8
  call void @_ZN2v88internal10ShortPrintILNS0_23HeapObjectReferenceTypeE1EmEEvNS0_10TaggedImplIXT_ET0_EEP8_IO_FILE(i64 %i.v, ptr noundef %i.w) #21
  %i.x = load ptr, ptr %i.k, align 8
  %i.y = call noundef ptr @_ZN2v88internal16CodeKindToStringENS0_8CodeKindE(i8 noundef zeroext %.val.i) #21
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.x, ptr noundef nonnull @.str.41, ptr noundef %i.y) #21
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aa = load i32, ptr %i.z, align 8
  %.not.i = icmp eq i32 %i.aa, -1
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal10CodeTracer5ScopeC2EPS1_.exit.i
  %i.ab = load ptr, ptr %i.k, align 8
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.ab, ptr noundef nonnull @.str.36) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN2v88internal10CodeTracer5ScopeC2EPS1_.exit.i
  %i.ac = load ptr, ptr %i.k, align 8
  %i.ad = icmp eq i8 %3, 0
  %.str.79..str.80.i.i = select i1 %i.ad, ptr @.str.79, ptr @.str.80
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.ac, ptr noundef nonnull @.str.78, ptr noundef nonnull %.str.79..str.80.i.i) #21
  %.val5.val.i = load ptr, ptr %i.k, align 8
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %.val5.val.i, ptr noundef nonnull @.str.42) #21
  %i.ae = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1904), align 16, !range !7, !noundef !8
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.j, label %_ZN2v88internal12_GLOBAL__N_114CompilerTracer15TracePrepareJobEPNS0_7IsolateEPNS0_24OptimizedCompilationInfoENS0_15ConcurrencyModeE.exit

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 152 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %_ZN2v88internal12_GLOBAL__N_114CompilerTracer15TracePrepareJobEPNS0_7IsolateEPNS0_24OptimizedCompilationInfoENS0_15ConcurrencyModeE.exit

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.k, align 8
  %i.al = call noundef i32 @fclose(ptr noundef %i.ak) ; 0 uses
  store ptr null, ptr %i.k, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114CompilerTracer15TracePrepareJobEPNS0_7IsolateEPNS0_24OptimizedCompilationInfoENS0_15ConcurrencyModeE.exit

_ZN2v88internal12_GLOBAL__N_114CompilerTracer15TracePrepareJobEPNS0_7IsolateEPNS0_24OptimizedCompilationInfoENS0_15ConcurrencyModeE.exit: ; preds = %bb.a, %bb.b, %bb.i, %bb.j, %bb.k
  call void @_ZN2v88internal24OptimizedCompilationInfo38ReopenAndCanonicalizeHandlesInNewScopeEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN2v88internal27DisallowJavascriptExecutionC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %5, ptr noundef %1) #21
  %i.am = call i64 @_ZN2v84base9TimeTicks3NowEv() #21
  %i.an = load ptr, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef i32 %i.ap(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) #21, !inline_history !227 ; 2 uses
  switch i32 %i.aq, label %_ZN2v88internal23OptimizedCompilationJob10PrepareJobEPNS0_7IsolateE.exit [
    i32 0, label %.sink.split.i.i
    i32 1, label %bb.l
  ]

bb.l:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_114CompilerTracer15TracePrepareJobEPNS0_7IsolateEPNS0_24OptimizedCompilationInfoENS0_15ConcurrencyModeE.exit
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.l, %_ZN2v88internal12_GLOBAL__N_114CompilerTracer15TracePrepareJobEPNS0_7IsolateEPNS0_24OptimizedCompilationInfoENS0_15ConcurrencyModeE.exit
  %.sink.i.i = phi i32 [ 4, %bb.l ], [ 1, %_ZN2v88internal12_GLOBAL__N_114CompilerTracer15TracePrepareJobEPNS0_7IsolateEPNS0_24OptimizedCompilationInfoENS0_15ConcurrencyModeE.exit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink.i.i, ptr %i.ar, align 8
  br label %_ZN2v88internal23OptimizedCompilationJob10PrepareJobEPNS0_7IsolateE.exit

_ZN2v88internal23OptimizedCompilationJob10PrepareJobEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_114CompilerTracer15TracePrepareJobEPNS0_7IsolateEPNS0_24OptimizedCompilationInfoENS0_15ConcurrencyModeE.exit, %.sink.split.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = call i64 @_ZN2v84base9TimeTicks3NowEv() #21
  %i.au = sub i64 %i.at, %i.am
  %i.av = load i64, ptr %i.as, align 8
  %i.aw = add nsw i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.as, align 8
  call void @_ZN2v88internal27DisallowJavascriptExecutionD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ax = load ptr, ptr %i.a, align 8
  call void @_ZN2v88internal22PersistentHandlesScope6DetachEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.467") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %6) #21
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 176 ; 2 uses
  %i.az = load ptr, ptr %4, align 8
  store ptr null, ptr %4, align 8
  %i.ba = load ptr, ptr %i.ay, align 8            ; 3 uses
  store ptr %i.az, ptr %i.ay, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal22CompilationHandleScopeD2Ev.exit, label %_ZN2v88internal24OptimizedCompilationInfo22set_persistent_handlesESt10unique_ptrINS0_17PersistentHandlesESt14default_deleteIS3_EE.exit.i

_ZN2v88internal24OptimizedCompilationInfo22set_persistent_handlesESt10unique_ptrINS0_17PersistentHandlesESt14default_deleteIS3_EE.exit.i: ; preds = %_ZN2v88internal23OptimizedCompilationJob10PrepareJobEPNS0_7IsolateE.exit
  call void @_ZN2v88internal17PersistentHandlesD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ba) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 64) #23
  %.pr.i = load ptr, ptr %4, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
end_hunk_0
