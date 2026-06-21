inline.NumInlined: 2952
inline.NumDeleted: 1691
begin_hunk_0_@_ZN12v8_inspector10V8Debugger7disableEv:bb.a
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(88) %i.bl) #24, !inline_history !34
  br label %_ZN12v8_inspector10V8Debugger23clearContinueToLocationEv.exit

_ZN12v8_inspector10V8Debugger23clearContinueToLocationEv.exit: ; preds = %bb.k, %_ZN12v8_inspector8String16D2Ev.exit.i, %_ZNKSt14default_deleteIN12v8_inspector16V8StackTraceImplEEclEPS1_.exit.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 672
  store i8 0, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bp, i8 0, i64 11, i1 false)
  %i.bs = load ptr, ptr %i.br, align 8
  call void @_ZN2v85debug24LeaveDebuggingForIsolateEPNS_7IsolateE(ptr noundef %i.bs) #24
  %i.bt = load ptr, ptr %i.br, align 8
  call void @_ZN2v85debug16SetDebugDelegateEPNS_7IsolateEPNS0_13DebugDelegateE(ptr noundef %i.bt, ptr noundef null) #24
  %i.bu = load ptr, ptr %i.br, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8
  call void @_ZN2v87Isolate27RemoveNearHeapLimitCallbackEPFmPvmmEm(ptr noundef nonnull align 1 dereferenceable(1) %i.bu, ptr noundef nonnull @_ZN12v8_inspector10V8Debugger21nearHeapLimitCallbackEPvmm, i64 noundef %i.bw) #24
  store i64 0, ptr %i.bv, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %_ZN12v8_inspector10V8Debugger23clearContinueToLocationEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger46quitMessageLoopIfAgentsFinishedInstrumentationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(817) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %1 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i32, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.i, align 8
  store i64 %i.f, ptr %1, align 8
  store ptr @"_ZNSt17_Function_handlerIFvPN12v8_inspector22V8InspectorSessionImplEEZNS0_10V8Debugger46quitMessageLoopIfAgentsFinishedInstrumentationEvE3$_0E9_M_invokeERKSt9_Any_dataOS2_", ptr %i.h, align 8
  store ptr @"_ZNSt17_Function_handlerIFvPN12v8_inspector22V8InspectorSessionImplEEZNS0_10V8Debugger46quitMessageLoopIfAgentsFinishedInstrumentationEvE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.g, align 8
  call void @_ZN12v8_inspector15V8InspectorImpl14forEachSessionEiRKSt8functionIFvPNS_22V8InspectorSessionImplEEE(ptr noundef nonnull align 8 dereferenceable(520) %i.c, i32 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1) #24
  %i.j = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #24, !inline_history !33 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.l = load i8, ptr %i.a, align 1, !range !30, !noundef !5
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.n = load ptr, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

declare void @_ZN12v8_inspector15V8InspectorImpl14forEachSessionEiRKSt8functionIFvPNS_22V8InspectorSessionImplEEE(ptr noundef nonnull align 8 dereferenceable(520), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger23clearContinueToLocationEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(817) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8_inspector::String16", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZNSt10unique_ptrIN12v8_inspector16V8StackTraceImplESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZN12v8_inspector8String16aSEOS0_.exit

_ZN12v8_inspector8String16aSEOS0_.exit:           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @_ZN2v85debug16RemoveBreakpointEPNS_7IsolateEi(ptr noundef %i.e, i32 noundef %i.b) #24
  store i32 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.g, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.l, align 8
  store i16 0, ptr %i.k, align 2
  %.pre.i.i = load ptr, ptr %1, align 8
  store i64 0, ptr %i.h, align 8
  store i16 0, ptr %.pre.i.i, align 2
  %i.m = load i64, ptr %i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr %1, align 8                ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.g
  br i1 %i.p, label %_ZN12v8_inspector8String16D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN12v8_inspector8String16aSEOS0_.exit
  %i.q = load i64, ptr %i.g, align 8
  %i.r = shl i64 %i.q, 1
  %i.s = add i64 %i.r, 2
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #25
  br label %_ZN12v8_inspector8String16D2Ev.exit

_ZN12v8_inspector8String16D2Ev.exit:              ; preds = %_ZN12v8_inspector8String16aSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  store ptr null, ptr %i.t, align 8
  %.not.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i1, label %_ZNSt10unique_ptrIN12v8_inspector16V8StackTraceImplESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN12v8_inspector16V8StackTraceImplEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN12v8_inspector16V8StackTraceImplEEclEPS1_.exit.i.i: ; preds = %_ZN12v8_inspector8String16D2Ev.exit
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(88) %i.u) #24, !inline_history !35
  br label %_ZNSt10unique_ptrIN12v8_inspector16V8StackTraceImplESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN12v8_inspector16V8StackTraceImplESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %_ZNKSt14default_deleteIN12v8_inspector16V8StackTraceImplEEclEPS1_.exit.i.i, %_ZN12v8_inspector8String16D2Ev.exit, %bb.a
  ret void
}

declare void @_ZN2v85debug24LeaveDebuggingForIsolateEPNS_7IsolateE(ptr noundef) local_unnamed_addr #1

declare void @_ZN2v87Isolate27RemoveNearHeapLimitCallbackEPFmPvmmEm(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK12v8_inspector10V8Debugger22isPausedInContextGroupEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(817) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ne i32 %i.b, 0
  %i.d = icmp eq i32 %i.b, %1
  %i.e = and i1 %i.c, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK12v8_inspector10V8Debugger7enabledEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(817) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger18getCompiledScriptsEiPNS_19V8DebuggerAgentImplE(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector.254") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(817) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::HandleScope", align 8   ; 7 uses
  %5 = alloca %"class.std::vector.259", align 8   ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 560
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  store ptr %i.b, ptr %4, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.a, align 8
  call void @_ZN2v85debug16GetLoadedScriptsEPNS_7IsolateERSt6vectorINS_6GlobalINS0_6ScriptEEESaIS6_EE(ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(24) %5) #24
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = load ptr, ptr %5, align 8                ; 3 uses
  %.not33 = icmp eq ptr %i.p, %i.q
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS1_EED2Ev.exit, %bb.a
  %.lcssa28 = phi ptr [ null, %bb.a ], [ %i.de, %_ZNSt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS1_EED2Ev.exit ]
  %.lcssa26 = phi ptr [ %i.p, %bb.a ], [ %i.dg, %_ZNSt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.lcssa24 = phi ptr [ %i.q, %bb.a ], [ %i.dh, %_ZNSt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  store ptr %.lcssa28, ptr %0, align 8
  %.not4.i.i.i = icmp eq ptr %.lcssa24, %.lcssa26
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2v86GlobalINS0_5debug6ScriptEEEEvT_S6_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyIN2v86GlobalINS0_5debug6ScriptEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyIN2v86GlobalINS0_5debug6ScriptEEEEvPT_.exit.i.i.i ], [ %.lcssa24, %._crit_edge ] ; 3 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8        ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZSt8_DestroyIN2v86GlobalINS0_5debug6ScriptEEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  call void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef nonnull %i.u) #24
  store ptr null, ptr %.05.i.i.i, align 8
  br label %_ZSt8_DestroyIN2v86GlobalINS0_5debug6ScriptEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN2v86GlobalINS0_5debug6ScriptEEEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %.lcssa26
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2v86GlobalINS0_5debug6ScriptEEEEvT_S6_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !36

_ZSt8_DestroyIPN2v86GlobalINS0_5debug6ScriptEEEEvT_S6_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN2v86GlobalINS0_5debug6ScriptEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8
  br label %_ZSt8_DestroyIPN2v86GlobalINS0_5debug6ScriptEEEEvT_S6_.exit.i

_ZSt8_DestroyIPN2v86GlobalINS0_5debug6ScriptEEEEvT_S6_.exit.i: ; preds = %_ZSt8_DestroyIPN2v86GlobalINS0_5debug6ScriptEEEEvT_S6_.exitthread-pre-split.i, %._crit_edge
  %i.x = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2v86GlobalINS0_5debug6ScriptEEEEvT_S6_.exitthread-pre-split.i ], [ %.lcssa24, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2v86GlobalINS0_5debug6ScriptEEESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN2v86GlobalINS0_5debug6ScriptEEEEvT_S6_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #25
  br label %_ZNSt6vectorIN2v86GlobalINS0_5debug6ScriptEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN2v86GlobalINS0_5debug6ScriptEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2v86GlobalINS0_5debug6ScriptEEEEvT_S6_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ad = load ptr, ptr %4, align 8               ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.d, !prof !6

bb.d:                                             ; preds = %_ZNSt6vectorIN2v86GlobalINS0_5debug6ScriptEEESaIS4_EED2Ev.exit
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = add i64 %i.af, 560
  %i.ah = inttoptr i64 %i.ag to ptr               ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.g, align 8
  store ptr %i.aj, ptr %i.ah, align 8
  store ptr %i.ai, ptr %i.g, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = add nsw i32 %i.al, -1
  store i32 %i.am, ptr %i.ak, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  store ptr %i.ap, ptr %i.an, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %i.ad) #24
  br label %_ZN2v811HandleScopeD2Ev.exit

_ZN2v811HandleScopeD2Ev.exit:                     ; preds = %_ZNSt6vectorIN2v86GlobalINS0_5debug6ScriptEEESaIS4_EED2Ev.exit, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS1_EED2Ev.exit
  %i.aq = phi ptr [ null, %.lr.ph ], [ %i.dd, %_ZNSt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS1_EED2Ev.exit ] ; 9 uses
  %i.ar = phi ptr [ %i.q, %.lr.ph ], [ %i.dh, %_ZNSt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS1_EED2Ev.exit ]
  %.0630 = phi i64 [ 0, %.lr.ph ], [ %i.df, %_ZNSt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.as = phi ptr [ null, %.lr.ph ], [ %i.de, %_ZNSt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS1_EED2Ev.exit ] ; 15 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.0630
  %i.au = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.av = load ptr, ptr %i.at, align 8, !nonnull !5, !noundef !5
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = add i64 %i.ax, 560
  %i.az = inttoptr i64 %i.ay to ptr               ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp eq ptr %i.ba, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.be = call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.au) #24
  br label %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit

_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.be, %bb.g ], [ %i.ba, %bb.f ] ; 6 uses
  %i.bf = ptrtoint ptr %.0.i.i to i64
  %i.bg = add i64 %i.bf, 8
  %i.bh = inttoptr i64 %i.bg to ptr
  store ptr %i.bh, ptr %i.az, align 8
  store i64 %i.aw, ptr %.0.i.i, align 8
  %i.bi = call noundef zeroext i1 @_ZNK2v85debug6Script11WasCompiledEv(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i) #24
  br i1 %i.bi, label %bb.h, label %_ZNSt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS1_EED2Ev.exit

bb.h:                                             ; preds = %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit
  %i.bj = call noundef zeroext i1 @_ZNK2v85debug6Script10IsEmbeddedEv(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i) #24
  br i1 %i.bj, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = call i64 @_ZNK2v85debug6Script9ContextIdEv(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i) #24 ; 2 uses
  %i.bl = trunc i64 %i.bk to i1
  br i1 %i.bl, label %bb.j, label %_ZNSt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS1_EED2Ev.exit, !prof !7

bb.j:                                             ; preds = %bb.i
  %.sroa.512.0.extract.shift = lshr i64 %i.bk, 32
  %.sroa.512.0.extract.trunc = trunc nuw i64 %.sroa.512.0.extract.shift to i32
  %i.bm = load ptr, ptr %i.r, align 8
  %i.bn = call noundef i32 @_ZNK12v8_inspector15V8InspectorImpl14contextGroupIdEi(ptr noundef nonnull align 8 dereferenceable(520) %i.bm, i32 noundef %.sroa.512.0.extract.trunc) #24
  %.not = icmp eq i32 %i.bn, %2
  br i1 %.not, label %bb.k, label %_ZNSt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS1_EED2Ev.exit

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.bo = load ptr, ptr %i.r, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noalias noundef nonnull dereferenceable(304) ptr @_Znwm(i64 noundef 304) #23, !noalias !37 ; 3 uses
  %i.bs = load ptr, ptr %i.a, align 8, !noalias !37
  call void @_ZN12v8_inspector16V8DebuggerScriptC1EPN2v87IsolateENS1_5LocalINS1_5debug6ScriptEEEbPNS_19V8DebuggerAgentImplEPNS_17V8InspectorClientE(ptr noundef nonnull align 8 dereferenceable(304) %i.br, ptr noundef %i.bs, ptr nonnull %.0.i.i, i1 noundef zeroext false, ptr noundef %3, ptr noundef %i.bq) #24, !noalias !37
  %i.bt = load ptr, ptr %i.t, align 8
  %.not.i.i = icmp eq ptr %i.aq, %i.bt
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = ptrtoint ptr %i.br to i64
  store i64 %i.bu, ptr %i.aq, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.bv, ptr %i.s, align 8
  br label %_ZNSt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS1_EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bw = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.bx = ptrtoint ptr %i.as to i64               ; 4 uses
  %i.by = sub i64 %i.bw, %i.bx                    ; 3 uses
  %i.bz = icmp eq i64 %i.by, 9223372036854775800
  br i1 %i.bz, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.n:                                             ; preds = %bb.m
  store ptr %i.as, ptr %0, align 8
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #26
  unreachable

_ZNKSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.m
  %i.ca = ashr exact i64 %i.by, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ca, i64 1)
  %i.cb = add nsw i64 %.sroa.speculated.i.i, %i.ca ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.ca
  %i.cd = call i64 @llvm.umin.i64(i64 %i.cb, i64 1152921504606846975)
  %i.ce = select i1 %i.cc, i64 1152921504606846975, i64 %i.cd ; 3 uses
  %.not.i.i8 = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %.not.i.i8)
  %i.cf = shl nuw nsw i64 %i.ce, 3
  %i.cg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #23 ; 10 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.by
  %i.ci = ptrtoint ptr %i.br to i64
  store i64 %i.ci, ptr %i.ch, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.as, %i.aq
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.cj = sub i64 %i.bw, %i.bx
  %i.ck = add i64 %i.cj, -8                       ; 2 uses
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ck, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader67, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cg, i64 8
  %i.cn = add i64 %i.bw, -8
  %i.co = sub i64 %i.cn, %i.bx
  %i.cp = and i64 %i.co, -8                       ; 2 uses
  %scevgep61 = getelementptr i8, ptr %scevgep, i64 %i.cp
  %scevgep62 = getelementptr i8, ptr %i.as, i64 8
  %scevgep63 = getelementptr i8, ptr %scevgep62, i64 %i.cp
  %bound0 = icmp ult ptr %i.cg, %scevgep63
  %bound1 = icmp ult ptr %i.as, %scevgep61
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader67, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cm, 4611686018427387900     ; 3 uses
  %i.cq = shl i64 %n.vec, 3                       ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cg, i64 %i.cq  ; 2 uses
  %i.cs = getelementptr i8, ptr %i.as, i64 %i.cq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ct = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cg, i64 %i.ct ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.as, i64 %i.ct ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.cu = getelementptr i8, ptr %next.gep64, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep64, align 8, !alias.scope !45, !noalias !40
  %wide.load65 = load <2 x i64>, ptr %i.cu, align 8, !alias.scope !45, !noalias !40
  %i.cv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !48, !noalias !45
  store <2 x i64> %wide.load65, ptr %i.cv, align 8, !alias.scope !48, !noalias !45
  %i.cw = getelementptr i8, ptr %next.gep64, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep64, align 8, !alias.scope !45, !noalias !40
  store <2 x ptr> splat (ptr null), ptr %i.cw, align 8, !alias.scope !45, !noalias !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader67

.lr.ph.i.i.i.i.preheader67:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cg, %vector.memcheck ], [ %i.cg, %.lr.ph.i.i.i.i.preheader ], [ %i.cr, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.i.i.i.i.preheader ], [ %i.cs, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader67, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader67 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader67 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.cy = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !43, !noalias !40
  store i64 %i.cy, ptr %.012.i.i.i.i, align 8, !alias.scope !40, !noalias !43
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !43, !noalias !40
  %i.cz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cz, %i.aq
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !53

_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cg, %_ZNKSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.cr, %middle.block ], [ %i.da, %.lr.ph.i.i.i.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.as, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %6 = load ptr, ptr %i.t, align 8
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 %7, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %8) #25
  br label %_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.o
  store ptr %i.db, ptr %i.s, align 8
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce
  store ptr %i.dc, ptr %i.t, align 8
  br label %_ZNSt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.i, %bb.l, %_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit, %bb.j
  %i.dd = phi ptr [ %i.aq, %bb.i ], [ %i.bv, %bb.l ], [ %i.db, %_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit ], [ %i.aq, %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit ], [ %i.aq, %bb.j ]
  %i.de = phi ptr [ %i.as, %bb.i ], [ %i.as, %bb.l ], [ %i.cg, %_ZNSt6vectorISt10unique_ptrIN12v8_inspector16V8DebuggerScriptESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit ], [ %i.as, %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit ], [ %i.as, %bb.j ] ; 2 uses
  %i.df = add nuw i64 %.0630, 1                   ; 2 uses
  %i.dg = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.dh = load ptr, ptr %5, align 8               ; 3 uses
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = ashr exact i64 %i.dk, 3
  %i.dm = icmp ult i64 %i.df, %i.dl
  br i1 %i.dm, label %bb.f, label %._crit_edge, !llvm.loop !54
}

declare void @_ZN2v85debug16GetLoadedScriptsEPNS_7IsolateERSt6vectorINS_6GlobalINS0_6ScriptEEESaIS6_EE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85debug6Script11WasCompiledEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85debug6Script10IsEmbeddedEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare i64 @_ZNK2v85debug6Script9ContextIdEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef i32 @_ZNK12v8_inspector15V8InspectorImpl14contextGroupIdEi(ptr noundef nonnull align 8 dereferenceable(520), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger20setBreakpointsActiveEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(817) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
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
define hidden void @_ZN12v8_inspector10V8Debugger16removeBreakpointEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(817) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v85debug16RemoveBreakpointEPNS_7IsolateEi(ptr noundef %i.b, i32 noundef %1) #24
  ret void
}

declare void @_ZN2v85debug16RemoveBreakpointEPNS_7IsolateEi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZN12v8_inspector10V8Debugger25getPauseOnExceptionsStateEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(817) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 668
  %i.b = load i32, ptr %i.a, align 4
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger25setPauseOnExceptionsStateEN2v85debug19ExceptionBreakStateE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(817) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
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
define hidden void @_ZN12v8_inspector10V8Debugger18setPauseOnNextCallEbi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(817) %0, i1 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
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
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 666 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2, !range !30, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 665
  %i.i = load i8, ptr %i.h, align 1, !range !30
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond.i = select i1 %i.g, i1 true, i1 %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.l = load i8, ptr %i.k, align 8, !range !30
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %or.cond.i, i1 true, i1 %i.m
  store i8 1, ptr %i.e, align 2
  br i1 %i.n, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %2, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @_ZN2v85debug26SetBreakOnNextFunctionCallEPNS_7IsolateE(ptr noundef %i.q) #24
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 666
  store i8 0, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 665
  %i.t = load i8, ptr %i.s, align 1, !range !30
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.w = load i8, ptr %i.v, align 8, !range !30
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = select i1 %i.u, i1 true, i1 %i.x
  br i1 %i.y, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void @_ZN2v85debug28ClearBreakOnNextFunctionCallEPNS_7IsolateE(ptr noundef %i.aa) #24
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.d, %bb.c, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK12v8_inspector10V8Debugger35hasScheduledBreakOnNextFunctionCallEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(817) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 666
  %i.b = load i8, ptr %i.a, align 2, !range !30, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 665
  %i.e = load i8, ptr %i.d, align 1, !range !30
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.h = load i8, ptr %i.g, align 8, !range !30
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %or.cond, i1 true, i1 %i.i
  ret i1 %i.j
}

declare void @_ZN2v85debug26SetBreakOnNextFunctionCallEPNS_7IsolateE(ptr noundef) local_unnamed_addr #1

declare void @_ZN2v85debug28ClearBreakOnNextFunctionCallEPNS_7IsolateE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN12v8_inspector10V8Debugger15canBreakProgramEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(817) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef zeroext i1 @_ZN2v85debug15CanBreakProgramEPNS_7IsolateE(ptr noundef %i.b) #24
  ret i1 %i.c
}

declare noundef zeroext i1 @_ZN2v85debug15CanBreakProgramEPNS_7IsolateE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK12v8_inspector10V8Debugger24isInInstrumentationPauseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(817) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
end_hunk_0
