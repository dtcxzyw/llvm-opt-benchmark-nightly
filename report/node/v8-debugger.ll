Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/v8-debugger?download=true
inline.NumInlined: 2952
inline.NumDeleted: 1691
begin_hunk_0_@_ZN12v8_inspector10V8Debugger18getCompiledScriptsEiPNS_19V8DebuggerAgentImplE:bb.a
  %i.ci = ptrtoint ptr %i.br to i64
  store i64 %i.ci, ptr %i.ch, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.as, %i.aq
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.cj = add i64 %i.bw, -8
  %i.ck = sub i64 %i.cj, %i.bx                    ; 3 uses
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ck, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader65, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cn = and i64 %i.ck, -8
  %i.co = add i64 %i.cn, 8                        ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cg, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.as, i64 %i.co
  %bound0 = icmp ult ptr %i.cg, %i.cq
  %bound1 = icmp ult ptr %i.as, %i.cp
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader65, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cm, 4611686018427387900     ; 3 uses
  %i.cr = shl i64 %n.vec, 3                       ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cg, i64 %i.cr  ; 2 uses
  %i.ct = getelementptr i8, ptr %i.as, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cg, i64 %i.cu ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.as, i64 %i.cu ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.cv = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep62, align 8, !alias.scope !130
  %wide.load63 = load <2 x i64>, ptr %i.cv, align 8, !alias.scope !130
  %i.cw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !131, !noalias !132
  store <2 x i64> %wide.load63, ptr %i.cw, align 8, !alias.scope !131, !noalias !132
  %i.cx = getelementptr i8, ptr %next.gep62, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep62, align 8, !alias.scope !130
  store <2 x ptr> splat (ptr null), ptr %i.cx, align 8, !alias.scope !130
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader65

.lr.ph.i.i.i.i.preheader65:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cg, %vector.memcheck ], [ %i.cg, %.lr.ph.i.i.i.i.preheader ], [ %i.cs, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.i.i.i.i.preheader ], [ %i.ct, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader65, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader65 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader65 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.cz = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !129
  store i64 %i.cz, ptr %.012.i.i.i.i, align 8, !alias.scope !128
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !129
  %i.da = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.da, %i.aq
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !124

_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cg, %_ZNKSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.cs, %middle.block ], [ %i.db, %.lr.ph.i.i.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.as, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.by) #25
  br label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.n
  store ptr %i.dc, ptr %i.s, align 8
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce
  store ptr %i.dd, ptr %i.t, align 8
  br label %_ZNSt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNK2v85MaybeIiE2ToEPi.exit, %bb.k, %_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit, %bb.i
  %i.de = phi ptr [ %i.aq, %_ZNK2v85MaybeIiE2ToEPi.exit ], [ %i.bv, %bb.k ], [ %i.dc, %_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit ], [ %i.aq, %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit ], [ %i.aq, %bb.i ]
  %i.df = phi ptr [ %i.as, %_ZNK2v85MaybeIiE2ToEPi.exit ], [ %i.as, %bb.k ], [ %i.cg, %_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit ], [ %i.as, %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit ], [ %i.as, %bb.i ] ; 2 uses
  %i.dg = add nuw i64 %.0628, 1                   ; 2 uses
  %i.dh = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.di = load ptr, ptr %5, align 8               ; 3 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 3
  %i.dn = icmp ult i64 %i.dg, %i.dm
  br i1 %i.dn, label %bb.f, label %._crit_edge, !llvm.loop !125
}

declare void @_ZN2v85debug16GetLoadedScriptsEPNS_7IsolateERSt6vectorINS_6GlobalINS0_6ScriptEEESaIS6_EE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85debug6Script11WasCompiledEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85debug6Script10IsEmbeddedEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare i64 @_ZNK2v85debug6Script9ContextIdEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef i32 @_ZNK12v8_inspector15V8InspectorImpl14contextGroupIdEi(ptr noundef nonnull align 8 dereferenceable(520), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger20setBreakpointsActiveEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(817) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !guid !135 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = select i1 %1, i32 1, i32 -1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = add nsw i32 %i.f, %i.d                   ; 2 uses
  store i32 %i.g, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp ne i32 %i.g, 0
  tail call void @_ZN2v85debug20SetBreakPointsActiveEPNS_7IsolateEb(ptr noundef %i.i, i1 noundef zeroext %i.j) #24
  ret void
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #6

declare void @_ZN2v85debug20SetBreakPointsActiveEPNS_7IsolateEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger16removeBreakpointEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(817) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !guid !136 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v85debug16RemoveBreakpointEPNS_7IsolateEi(ptr noundef %i.b, i32 noundef %1) #24
  ret void
}

declare void @_ZN2v85debug16RemoveBreakpointEPNS_7IsolateEi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZN12v8_inspector10V8Debugger25getPauseOnExceptionsStateEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(817) %0) local_unnamed_addr #5 align 2 !guid !137 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 668
  %i.b = load i32, ptr %i.a, align 4
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger25setPauseOnExceptionsStateEN2v85debug19ExceptionBreakStateE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(817) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !guid !138 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 668 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, %1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @_ZN2v85debug22ChangeBreakOnExceptionEPNS_7IsolateENS0_19ExceptionBreakStateE(ptr noundef %i.e, i32 noundef %1) #24
  store i32 %1, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger18setPauseOnNextCallEbi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(817) %0, i1 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 align 2 !guid !139 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  %.not5 = icmp eq i32 %i.d, %2
  %or.cond = or i1 %.not, %.not5
  br i1 %or.cond, label %bb.e, label %bb.g

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 666 ; 3 uses
  %i.f = load i8, ptr %i.e, align 2, !range !77, !noundef !73
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 665
  %i.i = load i8, ptr %i.h, align 1, !range !77
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = select i1 %i.g, i1 true, i1 %i.j
  br i1 %i.k, label %_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv.exit.thread, label %_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv.exit

_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv.exit.thread: ; preds = %.critedge
  store i8 1, ptr %i.e, align 2
  br label %bb.g

_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv.exit: ; preds = %.critedge
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 664
  %4 = load i8, ptr %3, align 8, !range !77, !noundef !73
  %5 = trunc nuw i8 %4 to i1
  store i8 1, ptr %i.e, align 2
  br i1 %5, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %2, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @_ZN2v85debug26SetBreakOnNextFunctionCallEPNS_7IsolateE(ptr noundef %i.n) #24
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 666
  store i8 0, ptr %i.o, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 665
  %i.q = load i8, ptr %i.p, align 1, !range !77
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.t = load i8, ptr %i.s, align 8, !range !77
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = select i1 %i.r, i1 true, i1 %i.u
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void @_ZN2v85debug28ClearBreakOnNextFunctionCallEPNS_7IsolateE(ptr noundef %i.x) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv.exit.thread, %_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv.exit, %bb.d, %bb.c, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(817) %0) local_unnamed_addr #5 align 2 !guid !140 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 666
  %i.b = load i8, ptr %i.a, align 2, !range !77, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 665
  %i.e = load i8, ptr %i.d, align 1, !range !77
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %5, label %1

1:                                                ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 664
  %3 = load i8, ptr %2, align 8, !range !77, !noundef !73
  %4 = trunc nuw i8 %3 to i1
  br label %5

5:                                                ; preds = %1, %bb.a
  %6 = phi i1 [ %4, %1 ], [ true, %bb.a ]
  ret i1 %6
}

declare void @_ZN2v85debug26SetBreakOnNextFunctionCallEPNS_7IsolateE(ptr noundef) local_unnamed_addr #1

declare void @_ZN2v85debug28ClearBreakOnNextFunctionCallEPNS_7IsolateE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN12v8_inspector10V8Debugger15canBreakProgramEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(817) %0) local_unnamed_addr #0 align 2 !guid !141 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef zeroext i1 @_ZN2v85debug15CanBreakProgramEPNS_7IsolateE(ptr noundef %i.b) #24
  ret i1 %i.c
}

declare noundef zeroext i1 @_ZN2v85debug15CanBreakProgramEPNS_7IsolateE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK12v8_inspector10V8Debugger24isInInstrumentationPauseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(817) %0) local_unnamed_addr #5 align 2 !guid !142 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i8, ptr %i.a, align 4, !range !77, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger12breakProgramEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(817) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !guid !143 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @_ZN2v85debug13BreakRightNowEPNS_7IsolateENS_4base7EnumSetINS0_11BreakReasonEiEE(ptr noundef %i.e, i32 0) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN2v85debug13BreakRightNowEPNS_7IsolateENS_4base7EnumSetINS0_11BreakReasonEiEE(ptr noundef, i32) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger17interruptAndBreakEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(817) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !guid !144 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @_ZN2v87Isolate16RequestInterruptEPFvPS0_PvES2_(ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull @"_ZZN12v8_inspector10V8Debugger17interruptAndBreakEiEN3$_08__invokeEPN2v87IsolateEPv", ptr noundef null) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN2v87Isolate16RequestInterruptEPFvPS0_PvES2_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN12v8_inspector10V8Debugger32requestPauseAfterInstrumentationEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(817) initializes((69, 70)) %0) local_unnamed_addr #8 align 2 !guid !145 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 69
  store i8 1, ptr %i.a, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger15continueProgramEib(ptr noundef nonnull align 8 dereferenceable(817) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 !guid !146 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  %4 = alloca %"class.v8::HandleScope", align 8   ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq i32 %i.c, %1
  %i.d = icmp ne i32 %i.c, 0
  %or.cond = and i1 %.not, %i.d
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.f = load i8, ptr %i.e, align 4, !range !77, !noundef !73
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.m, align 8
  store i64 %i.j, ptr %3, align 8
  store ptr @"_ZNSt17_Function_handlerIFvPN12v8_inspector22V8InspectorSessionImplEEZNS0_10V8Debugger46quitMessageLoopIfAgentsFinishedInstrumentationEvE3$_0E9_M_invokeERKSt9_Any_dataOS2_", ptr %i.l, align 8
  store ptr @"_ZNSt17_Function_handlerIFvPN12v8_inspector22V8InspectorSessionImplEEZNS0_10V8Debugger46quitMessageLoopIfAgentsFinishedInstrumentationEvE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.k, align 8
  call void @_ZN12v8_inspector15V8InspectorImpl14forEachSessionEiRKSt8functionIFvPNS_22V8InspectorSessionImplEEE(ptr noundef nonnull align 8 dereferenceable(520) %i.i, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #24
  %i.n = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #24, !inline_history !6 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.p = load i8, ptr %i.a, align 1, !range !77, !noundef !73
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.e, label %_ZN12v8_inspector10V8Debugger46quitMessageLoopIfAgentsFinishedInstrumentationEv.exit

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.r = load ptr, ptr %i.h, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #24, !inline_history !78
  br label %_ZN12v8_inspector10V8Debugger46quitMessageLoopIfAgentsFinishedInstrumentationEv.exit

_ZN12v8_inspector10V8Debugger46quitMessageLoopIfAgentsFinishedInstrumentationEv.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.m

bb.f:                                             ; preds = %bb.b
  br i1 %2, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8
  tail call void @_ZN2v85debug20SetTerminateOnResumeEPNS_7IsolateE(ptr noundef %i.y) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.z = load ptr, ptr %i.x, align 8              ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = add i64 %i.aa, 560
  %i.ac = inttoptr i64 %i.ab to ptr               ; 5 uses
  store ptr %i.z, ptr %4, align 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i32 noundef %1) #24 ; 3 uses
  %i.at = load ptr, ptr %i.x, align 8
  tail call void @_ZN2v87Isolate24AddCallCompletedCallbackEPFvPS0_E(ptr noundef nonnull align 1 dereferenceable(1) %i.at, ptr noundef nonnull @_ZN12v8_inspector10V8Debugger35terminateExecutionCompletedCallbackEPN2v87IsolateE) #24
  %i.au = icmp eq ptr %i.as, null
  br i1 %i.au, label %_ZN12v8_inspector10V8Debugger34installTerminateExecutionCallbacksEN2v85LocalINS1_7ContextEEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 4 uses
  %i.aw = load ptr, ptr %i.x, align 8
  %i.ax = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZN2v814PersistentBaseINS_7ContextEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef nonnull %i.ax) #24
  store ptr null, ptr %i.av, align 8
  br label %_ZN2v814PersistentBaseINS_7ContextEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit.i

_ZN2v814PersistentBaseINS_7ContextEE5ResetIS1_EEvPNS_7IsolateERKNS_5LocalIT_EE.exit.i: ; preds = %bb.i, %bb.h
  %i.az = load i64, ptr %i.as, align 8
  %i.ba = tail call noundef ptr @_ZN2v812api_internal18GlobalizeReferenceEPNS_8internal7IsolateEm(ptr noundef %i.aw, i64 noundef %i.az) #24
  store ptr %i.ba, ptr %i.av, align 8
  tail call void @_ZN2v812api_internal8MakeWeakEPPm(ptr noundef nonnull %i.av) #24
  %i.bb = tail call noundef ptr @_ZN2v87Context17GetMicrotaskQueueEv(ptr noundef nonnull align 1 dereferenceable(1) %i.as) #24 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
end_hunk_0
begin_hunk_1_@_ZN12v8_inspector10V8Debugger24asyncTaskStartedForStackEPv:bb.a
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = urem i64 %i.az, %i.am
  %.not19.i.i.i.i = icmp eq i64 %i.ba, %i.an
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !14

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.critedge, !llvm.loop !14

_ZNSt13unordered_mapIPvSt8weak_ptrIN12v8_inspector15AsyncStackTraceEESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S4_EEE4findERSA_.exit: ; preds = %bb.m, %bb.j, %bb.l
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.j ], [ %i.ar, %bb.l ], [ %i.aw, %bb.m ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8            ; 3 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %.critedge, label %_ZNKSt10__weak_ptrIN12v8_inspector15AsyncStackTraceELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit

_ZNKSt10__weak_ptrIN12v8_inspector15AsyncStackTraceELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit: ; preds = %_ZNSt13unordered_mapIPvSt8weak_ptrIN12v8_inspector15AsyncStackTraceEESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S4_EEE4findERSA_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  %i.bf = load atomic i32, ptr %i.be monotonic, align 8
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %.critedge, label %bb.o

bb.o:                                             ; preds = %_ZNKSt10__weak_ptrIN12v8_inspector15AsyncStackTraceELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %i.bd, ptr %i.bh, align 8
  %i.bi = load atomic i32, ptr %i.be monotonic, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %.06.i.i.i.i = phi i32 [ %i.bi, %bb.o ], [ %i.bm, %bb.q ] ; 3 uses
  %.not.not.not.i.not.i.i.i = icmp eq i32 %.06.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = add nsw i32 %.06.i.i.i.i, 1
  %i.bk = cmpxchg weak ptr %i.be, i32 %.06.i.i.i.i, i32 %i.bj acq_rel monotonic, align 8 ; 2 uses
  %i.bl = extractvalue { i32, i1 } %i.bk, 1
  %i.bm = extractvalue { i32, i1 } %i.bk, 0
  br i1 %i.bl, label %_ZNSt10shared_ptrIN12v8_inspector15AsyncStackTraceEEC2IS1_vEERKSt8weak_ptrIT_E.exit, label %bb.p, !llvm.loop !15

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i: ; preds = %bb.p
  tail call void @abort() #26
  unreachable

_ZNSt10shared_ptrIN12v8_inspector15AsyncStackTraceEEC2IS1_vEERKSt8weak_ptrIT_E.exit: ; preds = %bb.q
  %i.bn = load ptr, ptr %i.bb, align 8            ; 2 uses
  store ptr %i.bn, ptr %2, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.br = load ptr, ptr %i.bq, align 8
  %.not.i1 = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i1, label %bb.v, label %bb.r

bb.r:                                             ; preds = %_ZNSt10shared_ptrIN12v8_inspector15AsyncStackTraceEEC2IS1_vEERKSt8weak_ptrIT_E.exit
  store ptr %i.bn, ptr %i.bp, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bt = load ptr, ptr %i.bh, align 8            ; 3 uses
  store ptr %i.bt, ptr %i.bs, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN12v8_inspector15AsyncStackTraceEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  %i.bv = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = load i32, ptr %i.bu, align 4
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bu, align 4
  br label %_ZSt12construct_atISt10shared_ptrIN12v8_inspector15AsyncStackTraceEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

bb.u:                                             ; preds = %bb.s
  %i.by = atomicrmw volatile add ptr %i.bu, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN12v8_inspector15AsyncStackTraceEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

_ZSt12construct_atISt10shared_ptrIN12v8_inspector15AsyncStackTraceEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i: ; preds = %bb.u, %bb.t, %bb.r
  %i.bz = load ptr, ptr %i.bo, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr %i.ca, ptr %i.bo, align 8
  br label %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE9push_backERKS3_.exit

bb.v:                                             ; preds = %_ZNSt10shared_ptrIN12v8_inspector15AsyncStackTraceEEC2IS1_vEERKSt8weak_ptrIT_E.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZSt12construct_atISt10shared_ptrIN12v8_inspector15AsyncStackTraceEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, %bb.v
  %i.cc = load ptr, ptr %i.bh, align 8            ; 8 uses
  %.not.i.i2 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i2, label %_ZNSt12__shared_ptrIN12v8_inspector15AsyncStackTraceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE9push_backERKS3_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cd, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4
  %i.ci = load ptr, ptr %i.cc, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #24, !inline_history !12
  %i.cl = load ptr, ptr %i.cc, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #24, !inline_history !12
  br label %_ZNSt12__shared_ptrIN12v8_inspector15AsyncStackTraceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.co = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i3, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i = phi i32 [ %i.cg, %bb.z ], [ %i.cq, %bb.aa ]
  %i.cr = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cr, label %bb.ab, label %_ZNSt12__shared_ptrIN12v8_inspector15AsyncStackTraceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !74

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #24
  br label %_ZNSt12__shared_ptrIN12v8_inspector15AsyncStackTraceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12v8_inspector15AsyncStackTraceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE9push_backERKS3_.exit, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

.critedge:                                        ; preds = %.lr.ph.i.i.i.i, %bb.i, %_ZNSt13unordered_mapIPvSt8weak_ptrIN12v8_inspector15AsyncStackTraceEESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S4_EEE4findERSA_.exit, %bb.k, %..loopexit_crit_edge21.i.i.i.i, %_ZNKSt10__weak_ptrIN12v8_inspector15AsyncStackTraceELN9__gnu_cxx12_Lock_policyE2EE7expiredEv.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8            ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cv = load ptr, ptr %i.cu, align 8
  %.not.i4 = icmp eq ptr %i.ct, %i.cv
  br i1 %.not.i4, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.critedge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false)
  %i.cw = load ptr, ptr %i.cs, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store ptr %i.cx, ptr %i.cs, align 8
  br label %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

bb.ad:                                            ; preds = %.critedge
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr %i.ct)
  br label %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit: ; preds = %bb.ad, %bb.ac, %_ZNSt12__shared_ptrIN12v8_inspector15AsyncStackTraceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8            ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.dc = load ptr, ptr %i.db, align 8
  %.not.i5 = icmp eq ptr %i.da, %i.dc
  br i1 %.not.i5, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit
  call void @_ZN12v8_inspector14V8StackTraceIdC1Ev(ptr noundef nonnull align 8 dereferenceable(25) %i.da) #24
  %i.dd = load ptr, ptr %i.cz, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  store ptr %i.de, ptr %i.cz, align 8
  br label %_ZNSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

bb.af:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void @_ZNSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr %i.da)
  br label %_ZNSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

_ZNSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit: ; preds = %bb.af, %bb.ae, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger27asyncTaskStartedForSteppingEPv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(817) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #0 align 2 !guid !174 {
bb.a:
  %2 = alloca %"class.v8::HandleScope", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %1, %i.b
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 666
  %i.d = load i8, ptr %i.c, align 2, !range !77, !noundef !73
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 665 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !range !77
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %i.i, label %_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv.exit.thread, label %_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv.exit

_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv.exit.thread: ; preds = %bb.b
  store i8 1, ptr %i.f, align 1
  br label %bb.g

_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv.exit: ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 664
  %4 = load i8, ptr %3, align 8, !range !77, !noundef !73
  %5 = trunc nuw i8 %4 to i1
  store i8 1, ptr %i.f, align 1
  br i1 %5, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 @_ZN2v87Isolate9InContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.k) #24
  br i1 %i.l, label %bb.d, label %_ZN12v8_inspector10V8Debugger21currentContextGroupIdEv.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.m = load ptr, ptr %i.j, align 8              ; 4 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = add i64 %i.n, 560
  %i.p = inttoptr i64 %i.o to ptr                 ; 5 uses
  store ptr %i.m, ptr %2, align 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 4 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load ptr, ptr %i.j, align 8
  %i.aa = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.z) #24
  %i.ab = tail call noundef i32 @_ZNK12v8_inspector15V8InspectorImpl14contextGroupIdEN2v85LocalINS1_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(520) %i.y, ptr %i.aa) #24
  %i.ac = icmp eq ptr %i.m, null
  br i1 %i.ac, label %_ZN2v811HandleScopeD2Ev.exit.i, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load ptr, ptr %i.p, align 8
  store ptr %i.q, ptr %i.p, align 8
  store ptr %i.ae, ptr %i.ad, align 8
  %i.af = load i32, ptr %i.u, align 8
  %i.ag = add nsw i32 %i.af, -1
  store i32 %i.ag, ptr %i.u, align 8
  %i.ah = load ptr, ptr %i.r, align 8
  %.not.i.i = icmp eq ptr %i.ah, %i.s
  br i1 %.not.i.i, label %_ZN2v811HandleScopeD2Ev.exit.i, label %bb.f, !prof !75

bb.f:                                             ; preds = %bb.e
  store ptr %i.s, ptr %i.r, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.m) #24
  br label %_ZN2v811HandleScopeD2Ev.exit.i

_ZN2v811HandleScopeD2Ev.exit.i:                   ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZN12v8_inspector10V8Debugger21currentContextGroupIdEv.exit

_ZN12v8_inspector10V8Debugger21currentContextGroupIdEv.exit: ; preds = %bb.c, %_ZN2v811HandleScopeD2Ev.exit.i
  %.0.i = phi i32 [ %i.ab, %_ZN2v811HandleScopeD2Ev.exit.i ], [ 0, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.0.i, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.j, align 8
  call void @_ZN2v85debug26SetBreakOnNextFunctionCallEPNS_7IsolateE(ptr noundef %i.aj) #24
  br label %bb.g

bb.g:                                             ; preds = %_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv.exit.thread, %_ZN12v8_inspector10V8Debugger21currentContextGroupIdEv.exit, %_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger25asyncTaskFinishedForStackEPv(ptr noundef nonnull align 8 dereferenceable(817) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !guid !176 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNSt13unordered_setIPvSt4hashIS0_ESt8equal_toIS0_ESaIS0_EE4findERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZNSt13unordered_setIPvSt4hashIS0_ESt8equal_toIS0_ESaIS0_EE4findERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -8
  store ptr %i.i, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -16
  store ptr %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.n = load ptr, ptr %i.m, align 8              ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE8pop_backEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.o, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4
  %i.t = load ptr, ptr %i.n, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #24, !inline_history !16
  %i.w = load ptr, ptr %i.n, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #24, !inline_history !16
  br label %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE8pop_backEv.exit

bb.f:                                             ; preds = %bb.d
  %i.z = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.r, %bb.g ], [ %i.ab, %bb.h ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.i, label %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE8pop_backEv.exit, !prof !74

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #24
  br label %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE8pop_backEv.exit

_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE8pop_backEv.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -32
  store ptr %i.af, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ai = load i64, ptr %i.ah, align 8
  %.not.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.not.i.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE8pop_backEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.sroa.06.0.in.i.i = phi ptr [ %i.aj, %bb.j ], [ %.sroa.06.0.i.i, %bb.l ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8 ; 3 uses
  %i.ak = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.ak, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = icmp eq ptr %1, %i.am
  br i1 %i.an, label %_ZNSt13unordered_setIPvSt4hashIS0_ESt8equal_toIS0_ESaIS0_EE4findERKS0_.exit, label %bb.k, !llvm.loop !175

bb.m:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE8pop_backEv.exit
  %i.ao = ptrtoint ptr %1 to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = urem i64 %i.ao, %i.aq                   ; 2 uses
  %i.as = load ptr, ptr %i.ag, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i1, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = icmp eq ptr %1, %i.ax
  br i1 %i.ay, label %_ZNSt13unordered_setIPvSt4hashIS0_ESt8equal_toIS0_ESaIS0_EE4findERKS0_.exit, label %.lr.ph.i.i.i.i

bb.o:                                             ; preds = %bb.p
  %i.az = icmp eq ptr %1, %i.bc
  br i1 %i.az, label %_ZNSt13unordered_setIPvSt4hashIS0_ESt8equal_toIS0_ESaIS0_EE4findERKS0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !17

.lr.ph.i.i.i.i:                                   ; preds = %bb.n, %bb.o
  %.020.i.i.i.i = phi ptr [ %i.ba, %bb.o ], [ %i.av, %bb.n ]
  %i.ba = load ptr, ptr %.020.i.i.i.i, align 8    ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = urem i64 %i.bd, %i.aq
  %.not19.i.i.i.i = icmp eq i64 %i.be, %i.ar
  br i1 %.not19.i.i.i.i, label %bb.o, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !17

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.p
  br label %.loopexit, !llvm.loop !17

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.k, %..loopexit_crit_edge21.i.i.i.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.bf = load i32, ptr %i.b, align 8
  %.not.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i, label %_ZN12v8_inspector10V8Debugger25asyncTaskCanceledForStackEPv.exit, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bh = call noundef i64 @_ZNSt10_HashtableIPvSt4pairIKS0_St8weak_ptrIN12v8_inspector15AsyncStackTraceEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.bi = call noundef i64 @_ZNSt10_HashtableIPvS0_SaIS0_ENSt8__detail9_IdentityESt8equal_toIS0_ESt4hashIS0_ENS2_18_Mod_range_hashingENS2_20_Default_ranged_hashENS2_20_Prime_rehash_policyENS2_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %_ZN12v8_inspector10V8Debugger25asyncTaskCanceledForStackEPv.exit

_ZN12v8_inspector10V8Debugger25asyncTaskCanceledForStackEPv.exit: ; preds = %.loopexit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSt13unordered_setIPvSt4hashIS0_ESt8equal_toIS0_ESaIS0_EE4findERKS0_.exit

_ZNSt13unordered_setIPvSt4hashIS0_ESt8equal_toIS0_ESaIS0_EE4findERKS0_.exit: ; preds = %bb.o, %bb.l, %bb.n, %bb.b, %bb.a, %_ZN12v8_inspector10V8Debugger25asyncTaskCanceledForStackEPv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger28asyncTaskFinishedForSteppingEPv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(817) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #0 align 2 !guid !177 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %1, %i.b
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 665
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 666
  %i.e = load i8, ptr %i.d, align 2, !range !77, !noundef !73
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.h = load i8, ptr %i.g, align 8, !range !77
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void @_ZN2v85debug28ClearBreakOnNextFunctionCallEPNS_7IsolateE(ptr noundef %i.l) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger23asyncStackTraceCapturedEi(ptr noundef nonnull align 8 dereferenceable(817) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !guid !184 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %2 = alloca %"class.std::shared_ptr", align 8   ; 8 uses
  %3 = alloca %"struct.v8_inspector::V8StackTraceId", align 8 ; 6 uses
end_hunk_1
begin_hunk_2_@_ZN12v8_inspector10V8Debugger15storeStackTraceESt10shared_ptrINS_15AsyncStackTraceEE:bb.a
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #24, !inline_history !11
  br label %_ZNSt8weak_ptrIN12v8_inspector15AsyncStackTraceEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt10__weak_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKSt10shared_ptrIT_EEE5valueERS2_E4typeESE_.exit

_ZNSt8weak_ptrIN12v8_inspector15AsyncStackTraceEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt10__weak_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKSt10shared_ptrIT_EEE5valueERS2_E4typeESE_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  store ptr %i.j, ptr %i.i, align 8
  %i.z = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i64 %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger24externalAsyncTaskStartedERKNS_14V8StackTraceIdE(ptr noundef nonnull align 8 dereferenceable(817) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #0 align 2 !guid !374 {
bb.a:
  %2 = alloca %"class.v8::HandleScope", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK12v8_inspector14V8StackTraceId9IsInvalidEv(ptr noundef nonnull align 8 dereferenceable(25) %1) #24
  br i1 %i.c, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.j, ptr %i.e, align 8
  br label %_ZNSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775776
  br i1 %i.o, label %bb.f, label %_ZNKSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #26
  unreachable

_ZNKSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.p = ashr exact i64 %i.n, 5                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 288230376151711743)
  %i.t = select i1 %i.r, i64 288230376151711743, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 5
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #23 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.v, %_ZNKSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.k, %_ZNKSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !alias.scope !375
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !22

_ZNSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.y, %.lr.ph.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.aa = load ptr, ptr %i.g, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ac) #25
  br label %_ZNSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.v, ptr %i.d, align 8
  store ptr %i.z, ptr %i.e, align 8
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ad, ptr %i.g, align 8
  br label %_ZNSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.d, %_ZNSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ah = load ptr, ptr %i.ag, align 8
  %.not.i5 = icmp eq ptr %i.af, %i.ah
  br i1 %.not.i5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE9push_backERKS1_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ai = load ptr, ptr %i.ae, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.aj, ptr %i.ae, align 8
  br label %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

bb.i:                                             ; preds = %_ZNSt6vectorIN12v8_inspector14V8StackTraceIdESaIS1_EE9push_backERKS1_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr %i.af)
  br label %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit: ; preds = %bb.h, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.am = load i64, ptr %1, align 8
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %.not.i.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit
  store ptr %i.an, ptr %i.ap, align 8
  %i.as = load ptr, ptr %i.ao, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.at, ptr %i.ao, align 8
  br label %_ZNSt6vectorIPvSaIS0_EE9push_backEOS0_.exit

bb.k:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit
  %i.au = load ptr, ptr %i.al, align 8            ; 4 uses
  %i.av = ptrtoint ptr %i.ap to i64
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw                    ; 5 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775800
  br i1 %i.ay, label %bb.l, label %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #26
  unreachable

_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.az = ashr exact i64 %i.ax, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.ba = add nsw i64 %.sroa.speculated.i.i.i.i, %i.az ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.az
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 1152921504606846975)
  %i.bd = select i1 %i.bb, i64 1152921504606846975, i64 %i.bc ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #23 ; 4 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %i.ax ; 2 uses
  store ptr %i.an, ptr %i.bg, align 8
  %i.bh = icmp sgt i64 %i.ax, 0
  br i1 %i.bh, label %bb.m, label %_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bf, ptr align 8 %i.au, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.m, %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  %i.bj = load ptr, ptr %i.aq, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.bl) #25
  br label %_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  store ptr %i.bf, ptr %i.al, align 8
  store ptr %i.bi, ptr %i.ao, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.bm, ptr %i.aq, align 8
  br label %_ZNSt6vectorIPvSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorIPvSaIS0_EE9push_backEOS0_.exit:      ; preds = %bb.j, %_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bo = load i8, ptr %i.bn, align 8, !range !77, !noundef !73
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.o, label %bb.t

bb.o:                                             ; preds = %_ZNSt6vectorIPvSaIS0_EE9push_backEOS0_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 666
  %i.br = load i8, ptr %i.bq, align 2, !range !77, !noundef !73
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 665
  %i.bu = load i8, ptr %i.bt, align 1, !range !77
  %i.bv = trunc nuw i8 %i.bu to i1
  %or.cond.i = select i1 %i.bs, i1 true, i1 %i.bv
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  br i1 %or.cond.i, label %_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv.exit.thread, label %_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv.exit

_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv.exit.thread: ; preds = %bb.o
  store i8 1, ptr %i.bw, align 8
  br label %bb.t

_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv.exit: ; preds = %bb.o
  %3 = load i8, ptr %i.bw, align 8, !range !77, !noundef !73
  %4 = trunc nuw i8 %3 to i1
  store i8 1, ptr %i.bw, align 8
  br i1 %4, label %bb.t, label %bb.p

bb.p:                                             ; preds = %_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef zeroext i1 @_ZN2v87Isolate9InContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.by) #24
  br i1 %i.bz, label %bb.q, label %_ZN12v8_inspector10V8Debugger21currentContextGroupIdEv.exit

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ca = load ptr, ptr %i.bx, align 8            ; 4 uses
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = add i64 %i.cb, 560
  %i.cd = inttoptr i64 %i.cc to ptr               ; 5 uses
  store ptr %i.ca, ptr %2, align 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8            ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.cg, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 4 uses
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = load ptr, ptr %i.bx, align 8
  %i.co = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.cn) #24
  %i.cp = tail call noundef i32 @_ZNK12v8_inspector15V8InspectorImpl14contextGroupIdEN2v85LocalINS1_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(520) %i.cm, ptr %i.co) #24
  %i.cq = icmp eq ptr %i.ca, null
  br i1 %i.cq, label %_ZN2v811HandleScopeD2Ev.exit.i, label %bb.r, !prof !74

bb.r:                                             ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cs = load ptr, ptr %i.cd, align 8
  store ptr %i.ce, ptr %i.cd, align 8
  store ptr %i.cs, ptr %i.cr, align 8
  %i.ct = load i32, ptr %i.ci, align 8
  %i.cu = add nsw i32 %i.ct, -1
  store i32 %i.cu, ptr %i.ci, align 8
  %i.cv = load ptr, ptr %i.cf, align 8
  %.not.i.i6 = icmp eq ptr %i.cv, %i.cg
  br i1 %.not.i.i6, label %_ZN2v811HandleScopeD2Ev.exit.i, label %bb.s, !prof !75

bb.s:                                             ; preds = %bb.r
  store ptr %i.cg, ptr %i.cf, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.ca) #24
  br label %_ZN2v811HandleScopeD2Ev.exit.i

_ZN2v811HandleScopeD2Ev.exit.i:                   ; preds = %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZN12v8_inspector10V8Debugger21currentContextGroupIdEv.exit

_ZN12v8_inspector10V8Debugger21currentContextGroupIdEv.exit: ; preds = %bb.p, %_ZN2v811HandleScopeD2Ev.exit.i
  %.0.i = phi i32 [ %i.cp, %_ZN2v811HandleScopeD2Ev.exit.i ], [ 0, %bb.p ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.0.i, ptr %i.cw, align 4
  %i.cx = load ptr, ptr %i.bx, align 8
  call void @_ZN2v85debug26SetBreakOnNextFunctionCallEPNS_7IsolateE(ptr noundef %i.cx) #24
  br label %bb.t

bb.t:                                             ; preds = %_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv.exit.thread, %_ZN12v8_inspector10V8Debugger21currentContextGroupIdEv.exit, %_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv.exit, %_ZNSt6vectorIPvSaIS0_EE9push_backEOS0_.exit, %bb.a, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZNK12v8_inspector14V8StackTraceId9IsInvalidEv(ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger25externalAsyncTaskFinishedERKNS_14V8StackTraceIdE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(817) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1) local_unnamed_addr #0 align 2 !guid !376 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -32
  store ptr %i.h, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -16
  store ptr %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.m = load ptr, ptr %i.l, align 8              ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE8pop_backEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #24, !inline_history !16
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #24, !inline_history !16
  br label %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE8pop_backEv.exit

bb.f:                                             ; preds = %bb.d
  %i.y = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.q, %bb.g ], [ %i.aa, %bb.h ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.i, label %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE8pop_backEv.exit, !prof !74

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #24
  br label %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE8pop_backEv.exit

_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE8pop_backEv.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8
  store ptr %i.ae, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load i8, ptr %i.af, align 8, !range !77, !noundef !73
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE8pop_backEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i8 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 666
  %i.ak = load i8, ptr %i.aj, align 2, !range !77, !noundef !73
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 665
  %i.an = load i8, ptr %i.am, align 1, !range !77
  %i.ao = trunc nuw i8 %i.an to i1
  %or.cond.i = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void @_ZN2v85debug28ClearBreakOnNextFunctionCallEPNS_7IsolateE(ptr noundef %i.aq) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %_ZNSt6vectorISt10shared_ptrIN12v8_inspector15AsyncStackTraceEESaIS3_EE8pop_backEv.exit, %bb.a, %bb.b, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger18asyncTaskScheduledERKNS_10StringViewEPvb(ptr noundef nonnull align 8 dereferenceable(817) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 !guid !377 {
bb.a:
  tail call void @_ZN12v8_inspector10V8Debugger26asyncTaskScheduledForStackERKNS_10StringViewEPvbb(ptr noundef nonnull align 8 dereferenceable(817) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext false)
  tail call void @_ZN12v8_inspector10V8Debugger29asyncTaskCandidateForSteppingEPv(ptr noundef nonnull align 8 dereferenceable(817) %0, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger17asyncTaskCanceledEPv(ptr noundef nonnull align 8 dereferenceable(817) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !guid !378 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = load i32, ptr %i.b, align 8
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN12v8_inspector10V8Debugger25asyncTaskCanceledForStackEPv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = call noundef i64 @_ZNSt10_HashtableIPvSt4pairIKS0_St8weak_ptrIN12v8_inspector15AsyncStackTraceEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.g = call noundef i64 @_ZNSt10_HashtableIPvS0_SaIS0_ENSt8__detail9_IdentityESt8equal_toIS0_ESt4hashIS0_ENS2_18_Mod_range_hashingENS2_20_Default_ranged_hashENS2_20_Prime_rehash_policyENS2_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %_ZN12v8_inspector10V8Debugger25asyncTaskCanceledForStackEPv.exit

_ZN12v8_inspector10V8Debugger25asyncTaskCanceledForStackEPv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.not.i.i = icmp eq ptr %1, %i.i
  br i1 %.not.i.i, label %bb.c, label %_ZN12v8_inspector10V8Debugger28asyncTaskCanceledForSteppingEPv.exit

bb.c:                                             ; preds = %_ZN12v8_inspector10V8Debugger25asyncTaskCanceledForStackEPv.exit
  store ptr null, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 665
  store i8 0, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 666
  %i.l = load i8, ptr %i.k, align 2, !range !77, !noundef !73
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.o = load i8, ptr %i.n, align 8, !range !77
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = select i1 %i.m, i1 true, i1 %i.p
  br i1 %i.q, label %_ZN12v8_inspector10V8Debugger28asyncTaskCanceledForSteppingEPv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void @_ZN2v85debug28ClearBreakOnNextFunctionCallEPNS_7IsolateE(ptr noundef %i.s) #24
  br label %_ZN12v8_inspector10V8Debugger28asyncTaskCanceledForSteppingEPv.exit

_ZN12v8_inspector10V8Debugger28asyncTaskCanceledForSteppingEPv.exit: ; preds = %_ZN12v8_inspector10V8Debugger25asyncTaskCanceledForStackEPv.exit, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger25asyncTaskCanceledForStackEPv(ptr noundef nonnull align 8 dereferenceable(817) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !guid !379 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = load i32, ptr %i.b, align 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = call noundef i64 @_ZNSt10_HashtableIPvSt4pairIKS0_St8weak_ptrIN12v8_inspector15AsyncStackTraceEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.g = call noundef i64 @_ZNSt10_HashtableIPvS0_SaIS0_ENSt8__detail9_IdentityESt8equal_toIS0_ESt4hashIS0_ENS2_18_Mod_range_hashingENS2_20_Default_ranged_hashENS2_20_Prime_rehash_policyENS2_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger28asyncTaskCanceledForSteppingEPv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(817) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #0 align 2 !guid !380 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %1, %i.b
  br i1 %.not.i, label %bb.b, label %_ZN12v8_inspector10V8Debugger28asyncTaskFinishedForSteppingEPv.exit

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 665
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 666
  %i.e = load i8, ptr %i.d, align 2, !range !77, !noundef !73
end_hunk_2
