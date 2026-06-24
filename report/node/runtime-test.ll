inline.NumInlined: 4591
inline.NumDeleted: 1452
begin_hunk_0_@_ZN2v88internal28Runtime_ActiveTierIsTurbofanEiPmPNS0_7IsolateE:bb.a
bb.b:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #30
  unreachable

_ZN2v88internalL38__RT_impl_Runtime_ActiveTierIsTurbofanENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread: ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.u = load i64, ptr %i.t, align 8
  store ptr %i.b, ptr %i.a, align 8
  store i32 %i.f, ptr %i.e, align 8
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internalL38__RT_impl_Runtime_ActiveTierIsTurbofanENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 55464
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i64 %i.h, ptr %3, align 8
  %i.w = call noundef zeroext i1 @_ZNK2v88internal10JSFunction20ActiveTierIsTurbofanENS0_17IsolateForSandboxE(ptr noundef nonnull align 8 dereferenceable(8) %3) #29
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = add i64 %i.x, -55464
  %i.z = inttoptr i64 %i.y to ptr
  %.sroa.03.0.in.v.i = select i1 %i.w, i64 672, i64 680
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.03.0.in.v.i
  %.sroa.03.0.i = load i64, ptr %.sroa.03.0.in.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %.pre = load i32, ptr %i.e, align 8
  %.pre32 = load ptr, ptr %i.c, align 8
  %i.aa = add nsw i32 %.pre, -1
  %i.ab = icmp eq ptr %.pre32, %i.d
  store ptr %i.b, ptr %i.a, align 8
  store i32 %i.aa, ptr %i.e, align 8
  br i1 %i.ab, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.c, !prof !14

bb.c:                                             ; preds = %_ZN2v88internalL38__RT_impl_Runtime_ActiveTierIsTurbofanENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #29
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %_ZN2v88internalL38__RT_impl_Runtime_ActiveTierIsTurbofanENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread, %bb.c, %_ZN2v88internalL38__RT_impl_Runtime_ActiveTierIsTurbofanENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  %.sroa.015.035 = phi i64 [ %i.u, %_ZN2v88internalL38__RT_impl_Runtime_ActiveTierIsTurbofanENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread ], [ %.sroa.03.0.i, %bb.c ], [ %.sroa.03.0.i, %_ZN2v88internalL38__RT_impl_Runtime_ActiveTierIsTurbofanENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit ]
  ret i64 %.sroa.015.035
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZN2v88internal26Runtime_IsSparkplugEnabledEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 356), align 4, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = add i64 %i.d, -55464
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.03.0.in.v.i = select i1 %i.c, i64 672, i64 680
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.03.0.in.v.i
  %.sroa.03.0.i = load i64, ptr %.sroa.03.0.in.i, align 8
  ret i64 %.sroa.03.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZN2v88internal23Runtime_IsMaglevEnabledEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 52), align 4, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = add i64 %i.d, -55464
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.03.0.in.v.i = select i1 %i.c, i64 672, i64 680
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.03.0.in.v.i
  %.sroa.03.0.i = load i64, ptr %.sroa.03.0.in.i, align 8
  ret i64 %.sroa.03.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZN2v88internal25Runtime_IsTurbofanEnabledEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 449), align 1, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = add i64 %i.d, -55464
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.03.0.in.v.i = select i1 %i.c, i64 672, i64 680
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.03.0.in.v.i
  %.sroa.03.0.i = load i64, ptr %.sroa.03.0.in.i, align 8
  ret i64 %.sroa.03.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal30Runtime_CurrentFrameIsTurbofanEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::JavaScriptStackFrameIterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN2v88internal18StackFrameIteratorC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %2) #29
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 96
  call void @_ZN2v88internal28JavaScriptStackFrameIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(128) %3) #29
  %.pre = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %i.j = load ptr, ptr %.pre, align 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(80) %.pre) #29, !inline_history !20
  %i.m = icmp eq i32 %i.l, 17
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = add i64 %i.n, -55464
  %i.p = inttoptr i64 %i.o to ptr
  %.sroa.03.0.in.v.i = select i1 %i.m, i64 672, i64 680
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.03.0.in.v.i
  %.sroa.03.0.i = load i64, ptr %.sroa.03.0.in.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  store ptr %i.b, ptr %i.a, align 8
  %i.q = load i32, ptr %i.e, align 8
  %i.r = add nsw i32 %i.q, -1
  store i32 %i.r, ptr %i.e, align 8
  %i.s = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.s, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #29
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.b, %bb.a
  ret i64 %.sroa.03.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal32Runtime_OptimizeMaglevOnNextCallEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8
  %i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 453), align 1, !range !9, !noundef !10
  %i.j = add nuw nsw i8 %i.i, 11
  %i.k = tail call fastcc i64 @_ZN2v88internal12_GLOBAL__N_126OptimizeFunctionOnNextCallERNS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateENS0_8CodeKindE(i64 %i.a, ptr %1, ptr noundef %2, i8 noundef zeroext %i.j)
  store ptr %i.c, ptr %i.b, align 8
  %i.l = load i32, ptr %i.f, align 8
  %i.m = add nsw i32 %i.l, -1
  store i32 %i.m, ptr %i.f, align 8
  %i.n = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.n, %i.e
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.d, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #29
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.b, %bb.a
  ret i64 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal34Runtime_OptimizeFunctionOnNextCallEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8
  %i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 54), align 2, !range !9, !noundef !10
  %i.j = sub nuw nsw i8 12, %i.i
  %i.k = tail call fastcc i64 @_ZN2v88internal12_GLOBAL__N_126OptimizeFunctionOnNextCallERNS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateENS0_8CodeKindE(i64 %i.a, ptr %1, ptr noundef %2, i8 noundef zeroext %i.j)
  store ptr %i.c, ptr %i.b, align 8
  %i.l = load i32, ptr %i.f, align 8
  %i.m = add nsw i32 %i.l, -1
  store i32 %i.m, ptr %i.f, align 8
  %i.n = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.n, %i.e
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.d, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #29
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.b, %bb.a
  ret i64 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal39Runtime_EnsureFeedbackVectorForFunctionEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::IsCompiledScope", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::IsCompiledScope", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i = icmp eq i32 %0, 1
  br i1 %.not.i, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit: ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8                ; 4 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.j = add nsw i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2
  %i.p = add i16 %i.o, -2065
  %i.q = icmp ult i16 %i.p, 17
  br i1 %i.q, label %bb.c, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit, %bb.a
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1670), align 2, !range !9, !noundef !10
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN2v88internal12_GLOBAL__N_118CrashUnlessFuzzingEPNS0_7IsolateE.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #30
  unreachable

_ZN2v88internal12_GLOBAL__N_118CrashUnlessFuzzingEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.u = load i64, ptr %i.t, align 8
  br label %_ZN2v88internalL49__RT_impl_Runtime_EnsureFeedbackVectorForFunctionENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.c:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.v = add i64 %i.h, 31
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8 ; 2 uses
  %i.y = add i64 %i.x, 15
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i64, ptr %i.z acquire, align 8
  %.not.i.i.i = icmp eq i64 %i.aa, 446676598784
  br i1 %.not.i.i.i, label %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = add i64 %i.x, 7
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = trunc i64 %i.ad to i1
  br i1 %i.ae, label %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.i.i, label %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit

_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.i.i: ; preds = %bb.d
  %i.af = add nsw i64 %i.ad, -1
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i64, ptr %i.ag monotonic, align 8
  %i.ai = add i64 %i.ah, 11
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i16, ptr %i.aj monotonic, align 2
  %i.al = add i16 %i.ak, -177
  %i.am = icmp ult i16 %i.al, -4
  br i1 %i.am, label %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit, label %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit.thread

_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit: ; preds = %bb.d, %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.i.i
  %i.an = add i64 %i.h, 47
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = add i64 %i.ap, 7
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = add i64 %i.as, -1
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load atomic volatile i64, ptr %i.au monotonic, align 8
  %i.aw = add i64 %i.av, 11
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i16, ptr %i.ax monotonic, align 2
  %i.az = icmp eq i16 %i.ay, 269
  br i1 %i.az, label %bb.e, label %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit.thread

bb.e:                                             ; preds = %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.bb = load i64, ptr %i.ba, align 8
  br label %_ZN2v88internalL49__RT_impl_Runtime_EnsureFeedbackVectorForFunctionENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit.thread: ; preds = %bb.c, %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.i.i, %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr null, ptr %4, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 0, ptr %i.bc, align 8
  %i.bd = load i64, ptr %1, align 8
  %i.be = add i64 %i.bd, 31
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load atomic volatile i64, ptr %i.bf monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN2v88internal15IsCompiledScopeC2ENS0_6TaggedINS0_18SharedFunctionInfoEEEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %3, i64 %i.bg, ptr noundef nonnull %2)
  %.fca.0.load.i.i = load ptr, ptr %3, align 8
  %.fca.1.gep.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load.i.i = load i8, ptr %.fca.1.gep.i.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %.fca.0.load.i.i, ptr %4, align 8
  store i8 %.fca.1.load.i.i, ptr %i.bc, align 8
  %i.bh = trunc nuw i8 %.fca.1.load.i.i to i1
  br i1 %i.bh, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit.thread
  %i.bi = call noundef zeroext i1 @_ZN2v88internal8Compiler7CompileEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS1_18ClearExceptionFlagEPNS0_15IsCompiledScopeE(ptr noundef nonnull %2, ptr nonnull %1, i32 noundef 1, ptr noundef nonnull %4) #29
  br i1 %i.bi, label %bb.g, label %_ZN2v88internal12_GLOBAL__N_131EnsureCompiledAndFeedbackVectorEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEEPNS0_15IsCompiledScopeE.exit

bb.g:                                             ; preds = %bb.f, %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit.thread
  %i.bj = load i64, ptr %1, align 8
  %i.bk = add i64 %i.bj, 31
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load atomic volatile i64, ptr %i.bl monotonic, align 8
  %i.bn = add i64 %i.bm, 31
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 10624
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = icmp eq i64 %i.bp, %i.bu
  br i1 %i.bv, label %_ZN2v88internal12_GLOBAL__N_131EnsureCompiledAndFeedbackVectorEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEEPNS0_15IsCompiledScopeE.exit, label %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit.i

_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit.i: ; preds = %bb.g
  %i.bw = add i64 %i.bp, -1
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load atomic volatile i64, ptr %i.bx monotonic, align 8
  %i.bz = add i64 %i.by, 11
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i16, ptr %i.ca monotonic, align 2
  %i.cc = icmp eq i16 %i.cb, 268
  br i1 %i.cc, label %bb.h, label %_ZN2v88internal12_GLOBAL__N_131EnsureCompiledAndFeedbackVectorEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEEPNS0_15IsCompiledScopeE.exit

bb.h:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit.i
  call void @_ZN2v88internal10JSFunction20EnsureFeedbackVectorEPNS0_7IsolateENS0_12DirectHandleIS1_EEPNS0_15IsCompiledScopeE(ptr noundef nonnull %2, ptr nonnull %1, ptr noundef nonnull %4) #29
  br label %_ZN2v88internal12_GLOBAL__N_131EnsureCompiledAndFeedbackVectorEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEEPNS0_15IsCompiledScopeE.exit

_ZN2v88internal12_GLOBAL__N_131EnsureCompiledAndFeedbackVectorEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEEPNS0_15IsCompiledScopeE.exit: ; preds = %bb.f, %bb.g, %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit.i, %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.ce = load i64, ptr %i.cd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %_ZN2v88internalL49__RT_impl_Runtime_EnsureFeedbackVectorForFunctionENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL49__RT_impl_Runtime_EnsureFeedbackVectorForFunctionENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_118CrashUnlessFuzzingEPNS0_7IsolateE.exit, %_ZN2v88internal12_GLOBAL__N_131EnsureCompiledAndFeedbackVectorEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEEPNS0_15IsCompiledScopeE.exit, %bb.e
  %.sroa.019.1 = phi i64 [ %i.u, %_ZN2v88internal12_GLOBAL__N_118CrashUnlessFuzzingEPNS0_7IsolateE.exit ], [ %i.bb, %bb.e ], [ %i.ce, %_ZN2v88internal12_GLOBAL__N_131EnsureCompiledAndFeedbackVectorEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEEPNS0_15IsCompiledScopeE.exit ]
  store ptr %i.b, ptr %i.a, align 8
  %i.cf = load i32, ptr %i.e, align 8
  %i.cg = add nsw i32 %i.cf, -1
  store i32 %i.cg, ptr %i.e, align 8
  %i.ch = load ptr, ptr %i.c, align 8
  %.not.i2 = icmp eq ptr %i.ch, %i.d
  br i1 %.not.i2, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.i, !prof !5

bb.i:                                             ; preds = %_ZN2v88internalL49__RT_impl_Runtime_EnsureFeedbackVectorForFunctionENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #29
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.i, %_ZN2v88internalL49__RT_impl_Runtime_EnsureFeedbackVectorForFunctionENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.019.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal38Runtime_PrepareFunctionForOptimizationEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::IsCompiledScope", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::IsCompiledScope", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.off = add i32 %0, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit: ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8                ; 3 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.j = add nsw i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2
  %i.p = add i16 %i.o, -2065
  %i.q = icmp ult i16 %i.p, 17
  br i1 %i.q, label %bb.c, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.a, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1670), align 2, !range !9, !noundef !10
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN2v88internalL48__RT_impl_Runtime_PrepareFunctionForOptimizationENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread, label %bb.b, !prof !5

bb.b:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #30
  unreachable

_ZN2v88internalL48__RT_impl_Runtime_PrepareFunctionForOptimizationENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread: ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.u = load i64, ptr %i.t, align 8
  store ptr %i.b, ptr %i.a, align 8
  store i32 %i.f, ptr %i.e, align 8
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

bb.c:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr null, ptr %4, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 0, ptr %i.v, align 8
  %i.w = add i64 %i.h, 31
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN2v88internal15IsCompiledScopeC2ENS0_6TaggedINS0_18SharedFunctionInfoEEEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %3, i64 %i.y, ptr noundef nonnull %2)
  %.fca.0.load.i.i = load ptr, ptr %3, align 8
  %.fca.1.gep.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load.i.i = load i8, ptr %.fca.1.gep.i.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %.fca.0.load.i.i, ptr %4, align 8
  store i8 %.fca.1.load.i.i, ptr %i.v, align 8
  %i.z = trunc nuw i8 %.fca.1.load.i.i to i1
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = call noundef zeroext i1 @_ZN2v88internal8Compiler7CompileEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS1_18ClearExceptionFlagEPNS0_15IsCompiledScopeE(ptr noundef nonnull %2, ptr nonnull %1, i32 noundef 1, ptr noundef nonnull %4) #29
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = load i64, ptr %1, align 8
  %i.ac = add i64 %i.ab, 31
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.af = add i64 %i.ae, 31
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 10624
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 104
  %i.am = load i64, ptr %i.al, align 8
  %i.an = icmp eq i64 %i.ah, %i.am
  br i1 %i.an, label %bb.f, label %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit.i

_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit.i: ; preds = %bb.e
  %i.ao = add i64 %i.ah, -1
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8
  %i.ar = add i64 %i.aq, 11
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load atomic volatile i16, ptr %i.as monotonic, align 2
  %i.au = icmp eq i16 %i.at, 268
  br i1 %i.au, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit.i, %bb.e
  %i.av = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1670), align 2, !range !9, !noundef !10
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZN2v88internalL48__RT_impl_Runtime_PrepareFunctionForOptimizationENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, label %bb.g, !prof !5

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #30
  unreachable

bb.h:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit.i
  call void @_ZN2v88internal10JSFunction20EnsureFeedbackVectorEPNS0_7IsolateENS0_12DirectHandleIS1_EEPNS0_15IsCompiledScopeE(ptr noundef nonnull %2, ptr nonnull %1, ptr noundef nonnull %4) #29
  %i.ax = load i64, ptr %1, align 8               ; 2 uses
  %i.ay = add i64 %i.ax, 31
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = load atomic volatile i64, ptr %i.az monotonic, align 8
  %i.bb = add i64 %i.ba, 55
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load atomic volatile i32, ptr %i.bc monotonic, align 4
  %i.be = lshr i32 %i.bd, 19
  %i.bf = trunc i32 %i.be to i8
  %i.bg = and i8 %i.bf, 15
  %.off.i.i = add nsw i8 %i.bg, -1
  %switch.i.i = icmp ult i8 %.off.i.i, 4
  br i1 %switch.i.i, label %_ZN2v88internalL48__RT_impl_Runtime_PrepareFunctionForOptimizationENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = load atomic volatile i64, ptr %i.az monotonic, align 8
  %i.bi = add i64 %i.bh, 15
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load atomic volatile i64, ptr %i.bj acquire, align 8 ; 2 uses
  %i.bl = trunc i64 %i.bk to i1
  br i1 %i.bl, label %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.i, label %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread.i

_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.i: ; preds = %bb.i
  %i.bm = add nsw i64 %i.bk, -1
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load atomic volatile i64, ptr %i.bn monotonic, align 8
  %i.bp = add i64 %i.bo, 11
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load atomic volatile i16, ptr %i.bq monotonic, align 2
  %i.bs = icmp eq i16 %i.br, 144
  br i1 %i.bs, label %_ZN2v88internal12_GLOBAL__N_117IsAsmWasmFunctionEPNS0_7IsolateENS0_6TaggedINS0_10JSFunctionEEE.exit.thread, label %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread.i

_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread.i: ; preds = %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.i, %bb.i
  %i.bt = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 10688
  %i.bv = add i64 %i.ax, 23
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load atomic volatile i32, ptr %i.bw monotonic, align 4
  %i.by = lshr i32 %i.bx, 8
  %i.bz = load ptr, ptr %i.bu, align 8
  %i.ca = zext nneg i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.ca ; 2 uses
  %i.cc = load atomic i64, ptr %i.cb monotonic, align 8
  %i.cd = icmp ugt i64 %i.cc, -281474976710657
  br i1 %i.cd, label %bb.j, label %_ZN2v88internal12_GLOBAL__N_117IsAsmWasmFunctionEPNS0_7IsolateENS0_6TaggedINS0_10JSFunctionEEE.exit, !prof !6

bb.j:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #30
  unreachable

_ZN2v88internal12_GLOBAL__N_117IsAsmWasmFunctionEPNS0_7IsolateENS0_6TaggedINS0_10JSFunctionEEE.exit: ; preds = %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cf = load atomic i64, ptr %i.ce monotonic, align 8
  %i.cg = lshr i64 %i.cf, 16
  %i.ch = or i64 %i.cg, 1
  %i.ci = add nuw nsw i64 %i.ch, 89
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = load i16, ptr %i.cj, align 2
  %i.cl = icmp eq i16 %i.ck, 105
  br i1 %i.cl, label %_ZN2v88internal12_GLOBAL__N_117IsAsmWasmFunctionEPNS0_7IsolateENS0_6TaggedINS0_10JSFunctionEEE.exit.thread, label %bb.l

_ZN2v88internal12_GLOBAL__N_117IsAsmWasmFunctionEPNS0_7IsolateENS0_6TaggedINS0_10JSFunctionEEE.exit.thread: ; preds = %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.i, %_ZN2v88internal12_GLOBAL__N_117IsAsmWasmFunctionEPNS0_7IsolateENS0_6TaggedINS0_10JSFunctionEEE.exit
  %i.cm = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1670), align 2, !range !9, !noundef !10
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZN2v88internalL48__RT_impl_Runtime_PrepareFunctionForOptimizationENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, label %bb.k, !prof !5

bb.k:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IsAsmWasmFunctionEPNS0_7IsolateENS0_6TaggedINS0_10JSFunctionEEE.exit.thread
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #30
  unreachable

bb.l:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IsAsmWasmFunctionEPNS0_7IsolateENS0_6TaggedINS0_10JSFunctionEEE.exit
  %i.co = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1668), align 4, !range !9, !noundef !10
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1519), align 1, !range !9
  %i.cr = trunc nuw i8 %i.cq to i1
  %or.cond = select i1 %i.cp, i1 true, i1 %i.cr
  br i1 %or.cond, label %bb.m, label %_ZN2v88internalL48__RT_impl_Runtime_PrepareFunctionForOptimizationENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.m:                                             ; preds = %bb.l
  call void @_ZN2v88internal23ManualOptimizationTable33MarkFunctionForManualOptimizationEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEEPNS0_15IsCompiledScopeE(ptr noundef nonnull %2, ptr nonnull %1, ptr noundef nonnull %4) #29
  br label %_ZN2v88internalL48__RT_impl_Runtime_PrepareFunctionForOptimizationENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL48__RT_impl_Runtime_PrepareFunctionForOptimizationENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %bb.f, %bb.h, %_ZN2v88internal12_GLOBAL__N_117IsAsmWasmFunctionEPNS0_7IsolateENS0_6TaggedINS0_10JSFunctionEEE.exit.thread, %bb.l, %bb.m
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.022.0 = load i64, ptr %.sroa.022.0.in, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %.pre = load i32, ptr %i.e, align 8
  %.pre49 = load ptr, ptr %i.c, align 8
  %i.cs = add nsw i32 %.pre, -1
  %i.ct = icmp eq ptr %.pre49, %i.d
  store ptr %i.b, ptr %i.a, align 8
  store i32 %i.cs, ptr %i.e, align 8
  br i1 %i.ct, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.n, !prof !21

bb.n:                                             ; preds = %_ZN2v88internalL48__RT_impl_Runtime_PrepareFunctionForOptimizationENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #29
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %_ZN2v88internalL48__RT_impl_Runtime_PrepareFunctionForOptimizationENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread, %bb.n, %_ZN2v88internalL48__RT_impl_Runtime_PrepareFunctionForOptimizationENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  %.sroa.022.153 = phi i64 [ %i.u, %_ZN2v88internalL48__RT_impl_Runtime_PrepareFunctionForOptimizationENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread ], [ %.sroa.022.0, %bb.n ], [ %.sroa.022.0, %_ZN2v88internalL48__RT_impl_Runtime_PrepareFunctionForOptimizationENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit ]
  ret i64 %.sroa.022.153
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal19Runtime_OptimizeOsrEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::IsCompiledScope", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::JavaScriptStackFrameIterator", align 8 ; 6 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.476", align 8 ; 6 uses
  %6 = alloca %"class.v8::internal::IsCompiledScope", align 8 ; 5 uses
  %7 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.507", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = icmp eq i32 %0, 1
  br i1 %i.h, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, label %bb.e

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit: ; preds = %bb.a
  %i.i = load i64, ptr %1, align 8                ; 2 uses
  %i.j = and i64 %i.i, 1
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1670), align 2, !range !9, !noundef !10
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN2v88internalL29__RT_impl_Runtime_OptimizeOsrENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #30
  unreachable

_ZN2v88internalL29__RT_impl_Runtime_OptimizeOsrENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.o = load i64, ptr %i.n, align 8
  store i32 %i.f, ptr %i.e, align 8
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
end_hunk_0
