inline.NumInlined: 1550
inline.NumDeleted: 749
begin_hunk_0_@_ZN2v88internal29Runtime_CheckTurboshaftTypeOfEiPmPNS0_7IsolateE:_ZN2v88internal11HandleScopeD2Ev.exit
  store i32 %i.c, ptr %i.a, align 8
  %i.d = load i64, ptr %1, align 8
  store i32 %i.b, ptr %i.a, align 8
  ret i64 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal27Runtime_CompileOptimizedOSREiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::JavaScriptStackFrameIterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZN2v88internal18StackFrameIteratorC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %2) #14
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 96
  call void @_ZN2v88internal28JavaScriptStackFrameIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(128) %3) #14
  %.pre.i = load ptr, ptr %i.h, align 8           ; 4 uses
  %i.i = load ptr, ptr %.pre.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(80) %.pre.i) #14, !inline_history !21
  %i.m = load ptr, ptr %.pre.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call i64 %i.o(ptr noundef nonnull align 8 dereferenceable(80) %.pre.i) #14, !inline_history !21
  %i.q = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_129GetOsrOffsetAndFunctionForOSREPNS0_7IsolateEPNS0_14BytecodeOffsetEPNS0_6HandleINS0_10JSFunctionEEE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.t = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #14
  br label %_ZN2v88internal12_GLOBAL__N_129GetOsrOffsetAndFunctionForOSREPNS0_7IsolateEPNS0_14BytecodeOffsetEPNS0_6HandleINS0_10JSFunctionEEE.exit

_ZN2v88internal12_GLOBAL__N_129GetOsrOffsetAndFunctionForOSREPNS0_7IsolateEPNS0_14BytecodeOffsetEPNS0_6HandleINS0_10JSFunctionEEE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.t, %bb.b ], [ %i.q, %bb.a ] ; 3 uses
  %i.u = ptrtoint ptr %.0.i.i.i to i64
  %i.v = add i64 %i.u, 8
  %i.w = inttoptr i64 %i.v to ptr
  store ptr %i.w, ptr %i.a, align 8
  store i64 %i.p, ptr %.0.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 63472
  %i.y = load ptr, ptr %i.x, align 8
  %.not.i2 = icmp eq ptr %i.y, null
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 613), align 1, !range !7
  %i.aa = select i1 %.not.i2, i8 0, i8 %i.z, !prof !5 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 196), align 4 ; 2 uses
  %i.ab = and i16 %.sroa.0.0.copyload.i.i.i, 256
  %.not.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.i, label %_ZN2v88internal7Isolate21EfficiencyModeEnabledEv.exit.i, label %bb.c, !prof !6

bb.c:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_129GetOsrOffsetAndFunctionForOSREPNS0_7IsolateEPNS0_14BytecodeOffsetEPNS0_6HandleINS0_10JSFunctionEEE.exit
  %i.ac = trunc i16 %.sroa.0.0.copyload.i.i.i to i1
  br i1 %i.ac, label %bb.d, label %bb.e, !prof !5

_ZN2v88internal7Isolate21EfficiencyModeEnabledEv.exit.i: ; preds = %_ZN2v88internal12_GLOBAL__N_129GetOsrOffsetAndFunctionForOSREPNS0_7IsolateEPNS0_14BytecodeOffsetEPNS0_6HandleINS0_10JSFunctionEEE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 59476
  %i.ae = load atomic i32, ptr %i.ad seq_cst, align 4
  %.not = icmp eq i32 %i.ae, 2
  br i1 %.not, label %bb.e, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c, %_ZN2v88internal7Isolate21EfficiencyModeEnabledEv.exit.i
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %_ZN2v88internal7Isolate21EfficiencyModeEnabledEv.exit.i
  %.0.i3 = phi i8 [ 0, %bb.d ], [ %i.aa, %_ZN2v88internal7Isolate21EfficiencyModeEnabledEv.exit.i ], [ %i.aa, %bb.c ]
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 52), align 4, !range !7, !noundef !8
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 612), align 4, !range !7
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = select i1 %i.ag, i1 %i.ai, i1 false
  %i.ak = select i1 %i.aj, i8 11, i8 12
  %i.al = call ptr @_ZN2v88internal8Compiler19CompileOptimizedOSREPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS0_14BytecodeOffsetENS0_15ConcurrencyModeENS0_8CodeKindE(ptr noundef nonnull %2, ptr nonnull %.0.i.i.i, i32 %i.l, i8 noundef zeroext %.0.i3, i8 noundef zeroext %i.ak) #14 ; 2 uses
  %.not29.i = icmp eq ptr %i.al, null
  br i1 %.not29.i, label %_ZN2v88internal12_GLOBAL__N_119CompileOptimizedOSREPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS0_8CodeKindENS0_14BytecodeOffsetE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = add i64 %i.am, 51
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i32, ptr %i.ao monotonic, align 4
  %i.aq = and i32 %i.ap, 64
  %.not30.i = icmp eq i32 %i.aq, 0
  %spec.select.i = select i1 %.not30.i, i64 %i.am, i64 0
  br label %_ZN2v88internal12_GLOBAL__N_119CompileOptimizedOSREPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS0_8CodeKindENS0_14BytecodeOffsetE.exit

_ZN2v88internal12_GLOBAL__N_119CompileOptimizedOSREPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS0_8CodeKindENS0_14BytecodeOffsetE.exit: ; preds = %bb.f, %bb.e
  %.sroa.017.0.i = phi i64 [ %spec.select.i, %bb.f ], [ 0, %bb.e ]
  store ptr %i.b, ptr %i.a, align 8
  %i.ar = load i32, ptr %i.e, align 8
  %i.as = add nsw i32 %i.ar, -1
  store i32 %i.as, ptr %i.e, align 8
  %i.at = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.at, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.g, !prof !6

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_119CompileOptimizedOSREPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS0_8CodeKindENS0_14BytecodeOffsetE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #14
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.g, %_ZN2v88internal12_GLOBAL__N_119CompileOptimizedOSREPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS0_8CodeKindENS0_14BytecodeOffsetE.exit
  ret i64 %.sroa.017.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal37Runtime_CompileOptimizedOSRFromMaglevEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit:
  %3 = alloca %"class.v8::internal::JavaScriptStackFrameIterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8
  %i.i = lshr i64 %i.h, 32
  %i.j = trunc nuw i64 %i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZN2v88internal18StackFrameIteratorC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %2) #14
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96
  call void @_ZN2v88internal28JavaScriptStackFrameIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(128) %3) #14
  %.pre = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.l = load ptr, ptr %.pre, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call i64 %i.n(ptr noundef nonnull align 8 dereferenceable(80) %.pre) #14, !inline_history !22
  %i.p = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.q = load ptr, ptr %i.c, align 8
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.a, label %bb.b, !prof !5

bb.a:                                             ; preds = %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit
  %i.s = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #14
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit
  %.0.i.i.i = phi ptr [ %i.s, %bb.a ], [ %i.p, %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit ] ; 3 uses
  %i.t = ptrtoint ptr %.0.i.i.i to i64
  %i.u = add i64 %i.t, 8
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %i.a, align 8
  store i64 %i.o, ptr %.0.i.i.i, align 8
  %i.w = call fastcc i64 @_ZN2v88internal12_GLOBAL__N_129CompileOptimizedOSRFromMaglevEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS0_14BytecodeOffsetE(ptr noundef nonnull %2, ptr nonnull %.0.i.i.i, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  store ptr %i.b, ptr %i.a, align 8
  %i.x = load i32, ptr %i.e, align 8
  %i.y = add nsw i32 %i.x, -1
  store i32 %i.y, ptr %i.e, align 8
  %i.z = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.z, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #14
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.c, %bb.b
  ret i64 %i.w
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal44Runtime_CompileOptimizedOSRFromMaglevInlinedEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::JavaScriptStackFrameIterator", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8
  %i.i = lshr i64 %i.h, 32
  %i.j = trunc nuw i64 %i.i to i32
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #15
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit: ; preds = %bb.a
  %i.k = ptrtoint ptr %1 to i64
  %i.l = add i64 %i.k, -8
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZN2v88internal18StackFrameIteratorC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull %2) #14
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit, label %5

5:                                                ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  call void @_ZN2v88internal28JavaScriptStackFrameIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(128) %3) #14
  %.pre = load ptr, ptr %i.n, align 8
  br label %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit

_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, %5
  %6 = phi ptr [ null, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit ], [ %.pre, %5 ] ; 6 uses
  %7 = load i64, ptr %i.m, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 88
  %10 = load ptr, ptr %9, align 8
  %11 = call i64 %10(ptr noundef nonnull align 8 dereferenceable(80) %6) #14, !inline_history !23
  %.not20 = icmp eq i64 %7, %11
  br i1 %.not20, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.q = load ptr, ptr %6, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call i64 %i.s(ptr noundef nonnull align 8 dereferenceable(80) %6) #14, !inline_history !23
  store i64 %i.t, ptr %4, align 8
  %i.u = call noundef zeroext i1 @_ZNK2v88internal10JSFunction20ActiveTierIsTurbofanENS0_17IsolateForSandboxE(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 58640
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %6, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call i64 %i.z(ptr noundef nonnull align 8 dereferenceable(80) %6) #14, !inline_history !23
  call void @_ZN2v88internal14TieringManager27MarkForTurboFanOptimizationENS0_6TaggedINS0_10JSFunctionEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 %i.aa) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZN2v88internal28JavaScriptStackFrameIteratorC2EPNS0_7IsolateE.exit
  %i.ab = call fastcc i64 @_ZN2v88internal12_GLOBAL__N_129CompileOptimizedOSRFromMaglevEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS0_14BytecodeOffsetE(ptr noundef nonnull %2, ptr nonnull %i.m, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  store ptr %i.b, ptr %i.a, align 8
  %i.ac = load i32, ptr %i.e, align 8
  %i.ad = add nsw i32 %i.ac, -1
  store i32 %i.ad, ptr %i.e, align 8
  %i.ae = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.ae, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #14
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.f, %bb.e
  ret i64 %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal35Runtime_LogOrTraceOptimizedOSREntryEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::JavaScriptStackFrameIterator", align 8 ; 5 uses
  %4 = alloca %"class.std::unique_ptr.677", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 624), align 16, !range !7, !noundef !8
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1842), align 2, !range !7
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = select i1 %i.i, i1 true, i1 %i.k, !prof !24
  br i1 %i.l, label %.critedge.i, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.24) #15
  unreachable

.critedge.i:                                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZN2v88internal18StackFrameIteratorC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull %2) #14
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 96
  call void @_ZN2v88internal28JavaScriptStackFrameIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(128) %3) #14
  %.pre.i = load ptr, ptr %i.m, align 8           ; 4 uses
  %i.n = load ptr, ptr %.pre.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(80) %.pre.i) #14, !inline_history !21
  %i.r = load ptr, ptr %.pre.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call i64 %i.t(ptr noundef nonnull align 8 dereferenceable(80) %.pre.i) #14, !inline_history !21
  %i.v = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.w = load ptr, ptr %i.c, align 8
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_129GetOsrOffsetAndFunctionForOSREPNS0_7IsolateEPNS0_14BytecodeOffsetEPNS0_6HandleINS0_10JSFunctionEEE.exit, !prof !5

bb.c:                                             ; preds = %.critedge.i
  %i.y = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #14
  br label %_ZN2v88internal12_GLOBAL__N_129GetOsrOffsetAndFunctionForOSREPNS0_7IsolateEPNS0_14BytecodeOffsetEPNS0_6HandleINS0_10JSFunctionEEE.exit

_ZN2v88internal12_GLOBAL__N_129GetOsrOffsetAndFunctionForOSREPNS0_7IsolateEPNS0_14BytecodeOffsetEPNS0_6HandleINS0_10JSFunctionEEE.exit: ; preds = %.critedge.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.v, %.critedge.i ] ; 3 uses
  %i.z = ptrtoint ptr %.0.i.i.i to i64
  %i.aa = add i64 %i.z, 8
  %i.ab = inttoptr i64 %i.aa to ptr
  store ptr %i.ab, ptr %i.a, align 8
  store i64 %i.u, ptr %.0.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 624), align 16, !range !7, !noundef !8
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %bb.k

bb.d:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_129GetOsrOffsetAndFunctionForOSREPNS0_7IsolateEPNS0_14BytecodeOffsetEPNS0_6HandleINS0_10JSFunctionEEE.exit
  %i.ae = call noundef ptr @_ZN2v88internal7Isolate13GetCodeTracerEv(ptr noundef nonnull align 8 dereferenceable(64320) %2) #14 ; 5 uses
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1904), align 16, !range !7, !noundef !8
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 144 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  br i1 %i.ag, label %bb.e, label %_ZN2v88internal10CodeTracer5ScopeC2EPS1_.exit

bb.e:                                             ; preds = %bb.d
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.ae, align 8
  %i.al = call noundef ptr @_ZN2v84base2OS5FOpenEPKcS3_(ptr noundef %i.ak, ptr noundef nonnull @.str.22) #14 ; 3 uses
  store ptr %i.al, ptr %i.ah, align 8
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %bb.g, label %bb.h, !prof !5

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #15
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.am = phi ptr [ %i.al, %bb.f ], [ %i.ai, %bb.e ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 152 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8
  br label %_ZN2v88internal10CodeTracer5ScopeC2EPS1_.exit

_ZN2v88internal10CodeTracer5ScopeC2EPS1_.exit:    ; preds = %bb.d, %bb.h
  %i.aq = phi ptr [ %i.am, %bb.h ], [ %i.ai, %bb.d ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.as = load i64, ptr %.0.i.i.i, align 8
  store i64 %i.as, ptr %5, align 8
  call void @_ZN2v88internal10JSFunction13DebugNameCStrEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.677") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  %i.at = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.aq, ptr noundef nonnull @.str.25, ptr noundef %i.at, i32 noundef %i.q) #14
  %i.au = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i2 = icmp eq ptr %i.au, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZN2v88internal10CodeTracer5ScopeC2EPS1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.au) #16
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZN2v88internal10CodeTracer5ScopeC2EPS1_.exit, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.av = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1904), align 16, !range !7, !noundef !8
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 152 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.ax, align 8
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.ar, align 8
  %i.bc = call noundef i32 @fclose(ptr noundef %i.bb) ; 0 uses
  store ptr null, ptr %i.ar, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_129GetOsrOffsetAndFunctionForOSREPNS0_7IsolateEPNS0_14BytecodeOffsetEPNS0_6HandleINS0_10JSFunctionEEE.exit, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.i, %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.be = load i64, ptr %i.bd, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.bf = load i32, ptr %i.e, align 8
  %i.bg = add nsw i32 %i.bf, -1
  store i32 %i.bg, ptr %i.e, align 8
  %i.bh = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.bh, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #14
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.l, %bb.k
  ret i64 %i.be
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal33Runtime_ResolvePossiblyDirectEvalEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.625"], align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.687", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 344 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.i, align 8
  %i.j = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = add i64 %i.l, 31
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.b, %i.d
  br i1 %i.p, label %bb.b, label %_ZN2v88internal7Isolate14native_contextEv.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.q = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %2) #14
  br label %_ZN2v88internal7Isolate14native_contextEv.exit

_ZN2v88internal7Isolate14native_contextEv.exit:   ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.q, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
end_hunk_0
