Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/builtins-intl?download=true
inline.NumInlined: 3195
inline.NumDeleted: 567
begin_hunk_0_@_ZN2v88internal44Builtin_NumberFormatPrototypeResolvedOptionsEiPmPNS0_7IsolateE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #11
  br label %bb.d

_ZNK2v88internal16BuiltinArguments8receiverEv.exit29.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ab = tail call ptr @_ZN2v88internal14JSNumberFormat18UnwrapNumberFormatEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef nonnull %2, ptr nonnull %i.l) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZNK2v88internal11MaybeHandleINS0_14JSNumberFormatEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, label %.critedge.i

_ZNK2v88internal11MaybeHandleINS0_14JSNumberFormatEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit29.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ad = load i64, ptr %i.ac, align 8
  br label %bb.d

.critedge.i:                                      ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit29.i
  %i.ae = tail call ptr @_ZN2v88internal14JSNumberFormat15ResolvedOptionsEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %2, ptr nonnull %i.ab) #11
  %i.af = load i64, ptr %i.ae, align 8
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %_ZNK2v88internal11MaybeHandleINS0_14JSNumberFormatEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit26.i
  %.sroa.045.1.i = phi i64 [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit26.i ], [ %i.af, %.critedge.i ], [ %i.ad, %_ZNK2v88internal11MaybeHandleINS0_14JSNumberFormatEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.ag = load i32, ptr %i.e, align 8
  %i.ah = add nsw i32 %i.ag, -1
  store i32 %i.ah, ptr %i.e, align 8
  %i.ai = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ai, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL49Builtin_Impl_NumberFormatPrototypeResolvedOptionsENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.e, !prof !102

bb.e:                                             ; preds = %bb.d
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL49Builtin_Impl_NumberFormatPrototypeResolvedOptionsENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL49Builtin_Impl_NumberFormatPrototypeResolvedOptionsENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  ret i64 %.sroa.045.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal41Builtin_NumberFormatPrototypeFormatNumberEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !126 {
bb.a:
  %3 = alloca [2 x %"class.v8::internal::DirectHandle.452"], align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i30.i = icmp ult i32 %0, 4
  br i1 %.not.i30.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !101

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub, 40
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 299
  br i1 %i.u, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit36.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.26, i64 38, i8 noundef zeroext 0) #11 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i, !prof !101

bb.c:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #10
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %i.v, ptr %3, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %3, i64 2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #11
  br label %bb.k

_ZNK2v88internal16BuiltinArguments8receiverEv.exit36.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ab = tail call ptr @_ZN2v88internal14JSNumberFormat18UnwrapNumberFormatEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef nonnull %2, ptr nonnull %i.l) #11 ; 4 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZNK2v88internal11MaybeHandleINS0_14JSNumberFormatEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, label %.critedge.i

_ZNK2v88internal11MaybeHandleINS0_14JSNumberFormatEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit36.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ad = load i64, ptr %i.ac, align 8
  br label %bb.k

.critedge.i:                                      ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit36.i
  %i.ae = load i64, ptr %i.ab, align 8
  %i.af = add i64 %i.ae, 39
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i64, ptr %i.ag, align 8            ; 3 uses
  %i.ai = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.aj = load ptr, ptr %i.c, align 8
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !101

bb.d:                                             ; preds = %.critedge.i
  %i.al = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.d, %.critedge.i
  %.0.i.i.i = phi ptr [ %i.al, %bb.d ], [ %i.ai, %.critedge.i ] ; 2 uses
  %i.am = ptrtoint ptr %.0.i.i.i to i64
  %i.an = add i64 %i.am, 8
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr %i.ao, ptr %i.a, align 8
  store i64 %i.ah, ptr %.0.i.i.i, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = icmp eq i64 %i.ah, %i.aq
  br i1 %i.ar, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.as = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_119CreateBoundFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_7BuiltinEi(ptr noundef nonnull %2, ptr nonnull %i.ab, i32 noundef 1573, i32 noundef 1) ; 2 uses
  %i.at = load i64, ptr %i.ab, align 8            ; 4 uses
  %i.au = load i64, ptr %i.as, align 8            ; 5 uses
  %i.av = add i64 %i.at, 39                       ; 3 uses
  %i.aw = inttoptr i64 %i.av to ptr
  store atomic volatile i64 %i.au, ptr %i.aw monotonic, align 8
  %i.ax = trunc i64 %i.au to i1
  br i1 %i.ax, label %bb.f, label %_ZN2v88internal29TorqueGeneratedJSNumberFormatINS0_14JSNumberFormatENS0_8JSObjectEE16set_bound_formatENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ay = and i64 %i.at, -262144
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load i64, ptr %i.az, align 262144       ; 2 uses
  %i.bb = and i64 %i.ba, 32
  %.not.i.i.i.i = icmp eq i64 %i.bb, 0
  %i.bc = and i64 %i.ba, 25
  %.not38.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not38.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bd = and i64 %i.au, -262144
  %i.be = inttoptr i64 %i.bd to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.be, align 262144
  %i.bf = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not39.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.at, i64 noundef %i.av, i64 %i.au) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i, label %_ZN2v88internal29TorqueGeneratedJSNumberFormatINS0_14JSNumberFormatENS0_8JSObjectEE16set_bound_formatENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i, label %bb.j, !prof !102

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.at, i64 %i.av, i64 %i.au) #11
  br label %_ZN2v88internal29TorqueGeneratedJSNumberFormatINS0_14JSNumberFormatENS0_8JSObjectEE16set_bound_formatENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal29TorqueGeneratedJSNumberFormatINS0_14JSNumberFormatENS0_8JSObjectEE16set_bound_formatENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.j, %bb.i, %bb.e
  %i.bg = load i64, ptr %i.as, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal29TorqueGeneratedJSNumberFormatINS0_14JSNumberFormatENS0_8JSObjectEE16set_bound_formatENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %_ZNK2v88internal11MaybeHandleINS0_14JSNumberFormatEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i
  %.sroa.066.2.i = phi i64 [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i ], [ %i.ad, %_ZNK2v88internal11MaybeHandleINS0_14JSNumberFormatEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i ], [ %i.bg, %_ZN2v88internal29TorqueGeneratedJSNumberFormatINS0_14JSNumberFormatENS0_8JSObjectEE16set_bound_formatENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i ], [ %i.ah, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.bh = load i32, ptr %i.e, align 8
  %i.bi = add nsw i32 %i.bh, -1
  store i32 %i.bi, ptr %i.e, align 8
  %i.bj = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.bj, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL46Builtin_Impl_NumberFormatPrototypeFormatNumberENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.l, !prof !102

bb.l:                                             ; preds = %bb.k
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL46Builtin_Impl_NumberFormatPrototypeFormatNumberENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL46Builtin_Impl_NumberFormatPrototypeFormatNumberENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.k, %bb.l
  ret i64 %.sroa.066.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal40Builtin_NumberFormatInternalFormatNumberEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !127 {
bb.a:
  %3 = zext nneg i32 %0 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i19.i = load i64, ptr %i.h, align 8 ; 2 uses
  %i.i = icmp eq ptr %i.b, %i.d
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !101

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.a, align 8
  store i64 %.sroa.0.0.copyload.i19.i, ptr %.0.i.i.i, align 8
  %i.n = add i64 %.sroa.0.0.copyload.i19.i, 31
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.q = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.c, label %_ZN2v88internal6HandleINS0_14JSNumberFormatEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !101

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.t = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal6HandleINS0_14JSNumberFormatEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_14JSNumberFormatEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.c, %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.0.i.i18.i = phi ptr [ %i.t, %bb.c ], [ %i.q, %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ] ; 3 uses
  %i.u = ptrtoint ptr %.0.i.i18.i to i64
  %i.v = add i64 %i.u, 8
  %i.w = inttoptr i64 %i.v to ptr
  store ptr %i.w, ptr %i.a, align 8
  store i64 %i.p, ptr %.0.i.i18.i, align 8
  %.not.i20.i = icmp sgt i32 %0, 5
  %i.x = ptrtoint ptr %1 to i64
  %i.y = shl nuw nsw i64 %3, 3
  %reass.sub = sub i64 %i.x, %i.y
  %i.z = add i64 %reass.sub, 48
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i20.i, ptr %i.aa, ptr %i.ab
  %i.ac = tail call ptr @_ZN2v88internal14JSNumberFormat20NumberFormatFunctionEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_6HandleINS0_6ObjectEEE(ptr noundef nonnull %2, ptr nonnull %.0.i.i18.i, ptr %.sroa.0.0.i.i) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 912
  %.sroa.031.0.in.i = select i1 %.not.i, ptr %i.ad, ptr %i.ac
  %.sroa.031.0.i = load i64, ptr %.sroa.031.0.in.i, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.ae = load i32, ptr %i.e, align 8
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.e, align 8
  %i.ag = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ag, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL45Builtin_Impl_NumberFormatInternalFormatNumberENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.d, !prof !102

bb.d:                                             ; preds = %_ZN2v88internal6HandleINS0_14JSNumberFormatEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL45Builtin_Impl_NumberFormatInternalFormatNumberENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL45Builtin_Impl_NumberFormatInternalFormatNumberENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal6HandleINS0_14JSNumberFormatEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.d
  ret i64 %.sroa.031.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal40Builtin_NumberFormatPrototypeFormatRangeEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !128 {
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
  %i.i = tail call i64 @_ZN2v88internal17NumberFormatRangeINS0_6StringETnPFNS0_17MaybeDirectHandleIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_14JSNumberFormatEEENS0_6HandleINS0_6ObjectEEESD_EXadL_ZNS9_18FormatNumericRangeES7_SA_SD_SD_EEEENS0_6TaggedISC_EENS0_16BuiltinArgumentsES7_PKc(i64 %i.a, ptr %1, ptr noundef %2, ptr noundef nonnull @.str.27)
  store ptr %i.c, ptr %i.b, align 8
  %i.j = load i32, ptr %i.f, align 8
  %i.k = add nsw i32 %i.j, -1
  store i32 %i.k, ptr %i.f, align 8
  %i.l = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.l, %i.e
  br i1 %.not.i.i, label %_ZN2v88internalL45Builtin_Impl_NumberFormatPrototypeFormatRangeENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.b, !prof !102

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.d, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL45Builtin_Impl_NumberFormatPrototypeFormatRangeENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL45Builtin_Impl_NumberFormatPrototypeFormatRangeENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  ret i64 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal47Builtin_NumberFormatPrototypeFormatRangeToPartsEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !129 {
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
  %i.i = tail call i64 @_ZN2v88internal17NumberFormatRangeINS0_7JSArrayETnPFNS0_17MaybeDirectHandleIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_14JSNumberFormatEEENS0_6HandleINS0_6ObjectEEESD_EXadL_ZNS9_25FormatNumericRangeToPartsES7_SA_SD_SD_EEEENS0_6TaggedISC_EENS0_16BuiltinArgumentsES7_PKc(i64 %i.a, ptr %1, ptr noundef %2, ptr noundef nonnull @.str.30)
  store ptr %i.c, ptr %i.b, align 8
  %i.j = load i32, ptr %i.f, align 8
  %i.k = add nsw i32 %i.j, -1
  store i32 %i.k, ptr %i.f, align 8
  %i.l = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.l, %i.e
  br i1 %.not.i.i, label %_ZN2v88internalL52Builtin_Impl_NumberFormatPrototypeFormatRangeToPartsENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.b, !prof !102

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.d, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL52Builtin_Impl_NumberFormatPrototypeFormatRangeToPartsENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL52Builtin_Impl_NumberFormatPrototypeFormatRangeToPartsENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  ret i64 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal33Builtin_DateTimeFormatConstructorEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !130 {
bb.a:
  %3 = alloca [2 x %"class.v8::internal::DirectHandle.452"], align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::PropertyDescriptor", align 8 ; 6 uses
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.i, align 8
  %i.j = add i64 %.sroa.0.0.copyload.i.i.i.i, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = add i64 %i.l, 31
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, 791
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = icmp eq ptr %i.c, %i.e
  br i1 %i.s, label %bb.b, label %_ZN2v88internal7Isolate30intl_date_time_format_functionEv.exit.i, !prof !101

bb.b:                                             ; preds = %bb.a
  %i.t = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %2) #11
  br label %_ZN2v88internal7Isolate30intl_date_time_format_functionEv.exit.i

_ZN2v88internal7Isolate30intl_date_time_format_functionEv.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i = phi ptr [ %i.t, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.u = ptrtoint ptr %.0.i.i.i.i to i64
  %i.v = add i64 %i.u, 8
  %i.w = inttoptr i64 %i.v to ptr
  store ptr %i.w, ptr %i.b, align 8
  store i64 %i.r, ptr %.0.i.i.i.i, align 8
  tail call void @_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i32 noundef 56) #11
  %i.x = ptrtoint ptr %1 to i64
  %i.y = shl nsw i64 %i.a, 3
  %reass.sub.i.i.i = sub i64 %i.x, %i.y           ; 6 uses
  %i.z = add i64 %reass.sub.i.i.i, 8
  %i.aa = inttoptr i64 %i.z to ptr                ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 4 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp eq i64 %i.ab, %i.ad
  %.not.i.i.i = icmp eq i32 %0, 0                 ; 2 uses
  br i1 %i.ae, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN2v88internal7Isolate30intl_date_time_format_functionEv.exit.i
  br i1 %.not.i.i.i, label %bb.d, label %.thread.i.i, !prof !101

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  unreachable

.thread.i.i:                                      ; preds = %bb.c
  %i.af = add i64 %reass.sub.i.i.i, 16
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  br label %_ZNK2v88internal16BuiltinArguments6targetEv.exit85.i.i

bb.e:                                             ; preds = %_ZN2v88internal7Isolate30intl_date_time_format_functionEv.exit.i
  br i1 %.not.i.i.i, label %bb.f, label %._ZNK2v88internal16BuiltinArguments6targetEv.exit85.i_crit_edge.i, !prof !103

._ZNK2v88internal16BuiltinArguments6targetEv.exit85.i_crit_edge.i: ; preds = %bb.e
  %.pre.i = add i64 %reass.sub.i.i.i, 16
  %.pre10.i = inttoptr i64 %.pre.i to ptr
  br label %_ZNK2v88internal16BuiltinArguments6targetEv.exit85.i.i

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  unreachable

_ZNK2v88internal16BuiltinArguments6targetEv.exit85.i.i: ; preds = %._ZNK2v88internal16BuiltinArguments6targetEv.exit85.i_crit_edge.i, %.thread.i.i
  %.pre-phi11.i = phi ptr [ %.pre10.i, %._ZNK2v88internal16BuiltinArguments6targetEv.exit85.i_crit_edge.i ], [ %i.ag, %.thread.i.i ]
  %.sroa.030.0117.i.i = phi ptr [ %i.aa, %._ZNK2v88internal16BuiltinArguments6targetEv.exit85.i_crit_edge.i ], [ %i.ag, %.thread.i.i ]
  %i.ah = tail call ptr @_ZN2v88internal10JSFunction13GetDerivedMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_10JSReceiverEEE(ptr noundef nonnull %2, ptr %.pre-phi11.i, ptr %.sroa.030.0117.i.i) #11 ; 2 uses
  %.not.i7.i = icmp eq ptr %i.ah, null
  br i1 %.not.i7.i, label %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i, label %.critedge.i.i

_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i: ; preds = %_ZNK2v88internal16BuiltinArguments6targetEv.exit85.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.aj = load i64, ptr %i.ai, align 8
  br label %_ZN2v88internal12_GLOBAL__N_123LegacyFormatConstructorINS0_16JSDateTimeFormatEEENS0_6TaggedINS0_6ObjectEEENS0_16BuiltinArgumentsEPNS0_7IsolateENS_7Isolate17UseCounterFeatureENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEPKc.exit.i

.critedge.i.i:                                    ; preds = %_ZNK2v88internal16BuiltinArguments6targetEv.exit85.i.i
  %.not.i87.i.i = icmp sgt i32 %0, 6
  %i.ak = add i64 %reass.sub.i.i.i, 56
  %i.al = inttoptr i64 %i.ak to ptr
  %.sroa.0.0.i88.i.i = select i1 %.not.i87.i.i, ptr %i.al, ptr %i.ac
  %.not.i86.i.i = icmp sgt i32 %0, 5
  %i.am = add i64 %reass.sub.i.i.i, 48
  %i.an = inttoptr i64 %i.am to ptr
  %.sroa.0.0.i.i.i = select i1 %.not.i86.i.i, ptr %i.an, ptr %i.ac
  %i.ao = tail call ptr @_ZN2v88internal16JSDateTimeFormat3NewEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_6ObjectEEES8_PKc(ptr noundef nonnull %2, ptr nonnull %i.ah, ptr %.sroa.0.0.i.i.i, ptr %.sroa.0.0.i88.i.i, ptr noundef nonnull @.str.31) #11 ; 3 uses
  %.not104.i.i = icmp eq ptr %i.ao, null
  br i1 %.not104.i.i, label %_ZNK2v88internal11MaybeHandleINS0_16JSDateTimeFormatEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i, label %.critedge76.i.i

_ZNK2v88internal11MaybeHandleINS0_16JSDateTimeFormatEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i: ; preds = %.critedge.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.aq = load i64, ptr %i.ap, align 8
  br label %_ZN2v88internal12_GLOBAL__N_123LegacyFormatConstructorINS0_16JSDateTimeFormatEEENS0_6TaggedINS0_6ObjectEEENS0_16BuiltinArgumentsEPNS0_7IsolateENS_7Isolate17UseCounterFeatureENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEPKc.exit.i

.critedge76.i.i:                                  ; preds = %.critedge.i.i
  %i.ar = load i64, ptr %i.aa, align 8
  %i.as = load i64, ptr %i.ac, align 8
  %i.at = icmp eq i64 %i.ar, %i.as
  br i1 %i.at, label %bb.g, label %bb.o

bb.g:                                             ; preds = %.critedge76.i.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal33Builtin_DateTimeFormatConstructorEiPmPNS0_7IsolateE:bb.a

_ZNKR2v85MaybeIbE8FromJustEv.exit.i.i:            ; preds = %bb.k
  %i.bw = and i16 %i.bt, 256
  %.not106.i.i = icmp eq i16 %i.bw, 0
  br i1 %.not106.i.i, label %bb.m, label %bb.n, !prof !101

bb.m:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #10
  unreachable

bb.n:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit.i.i, %bb.l
  %.sroa.046.0.in.i.i = phi ptr [ %i.bv, %bb.l ], [ %i.av, %_ZNKR2v85MaybeIbE8FromJustEv.exit.i.i ]
  %.sroa.046.0.i.i = load i64, ptr %.sroa.046.0.in.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %_ZN2v88internal12_GLOBAL__N_123LegacyFormatConstructorINS0_16JSDateTimeFormatEEENS0_6TaggedINS0_6ObjectEEENS0_16BuiltinArgumentsEPNS0_7IsolateENS_7Isolate17UseCounterFeatureENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEPKc.exit.i

bb.o:                                             ; preds = %.critedge78.i.i, %.critedge76.i.i
  %i.bx = load i64, ptr %i.ao, align 8
  br label %_ZN2v88internal12_GLOBAL__N_123LegacyFormatConstructorINS0_16JSDateTimeFormatEEENS0_6TaggedINS0_6ObjectEEENS0_16BuiltinArgumentsEPNS0_7IsolateENS_7Isolate17UseCounterFeatureENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEPKc.exit.i

_ZN2v88internal12_GLOBAL__N_123LegacyFormatConstructorINS0_16JSDateTimeFormatEEENS0_6TaggedINS0_6ObjectEEENS0_16BuiltinArgumentsEPNS0_7IsolateENS_7Isolate17UseCounterFeatureENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEPKc.exit.i: ; preds = %bb.o, %bb.n, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i, %_ZNK2v88internal11MaybeHandleINS0_16JSDateTimeFormatEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i, %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i
  %.sroa.046.3.i.i = phi i64 [ %i.aj, %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i ], [ %i.aq, %_ZNK2v88internal11MaybeHandleINS0_16JSDateTimeFormatEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i ], [ %i.bx, %bb.o ], [ %.sroa.046.0.i.i, %bb.n ], [ %i.bp, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i.i ], [ %i.ay, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE2ToIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i ]
  store ptr %i.c, ptr %i.b, align 8
  %i.by = load i32, ptr %i.f, align 8
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.f, align 8
  %i.ca = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.ca, %i.e
  br i1 %.not.i.i, label %_ZN2v88internalL38Builtin_Impl_DateTimeFormatConstructorENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.p, !prof !102

bb.p:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_123LegacyFormatConstructorINS0_16JSDateTimeFormatEEENS0_6TaggedINS0_6ObjectEEENS0_16BuiltinArgumentsEPNS0_7IsolateENS_7Isolate17UseCounterFeatureENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEPKc.exit.i
  store ptr %i.e, ptr %i.d, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL38Builtin_Impl_DateTimeFormatConstructorENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL38Builtin_Impl_DateTimeFormatConstructorENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_123LegacyFormatConstructorINS0_16JSDateTimeFormatEEENS0_6TaggedINS0_6ObjectEEENS0_16BuiltinArgumentsEPNS0_7IsolateENS_7Isolate17UseCounterFeatureENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEPKc.exit.i, %bb.p
  ret i64 %.sroa.046.3.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal37Builtin_DateTimeFormatPrototypeFormatEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !131 {
bb.a:
  %3 = alloca [2 x %"class.v8::internal::DirectHandle.452"], align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i30.i = icmp ult i32 %0, 4
  br i1 %.not.i30.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !101

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub, 40
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 299
  br i1 %i.u, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit36.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.32, i64 40, i8 noundef zeroext 0) #11 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i, !prof !101

bb.c:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #10
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %i.v, ptr %3, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %3, i64 2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #11
  br label %bb.k

_ZNK2v88internal16BuiltinArguments8receiverEv.exit36.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ab = tail call ptr @_ZN2v88internal16JSDateTimeFormat20UnwrapDateTimeFormatEPNS0_7IsolateENS0_6HandleINS0_10JSReceiverEEE(ptr noundef nonnull %2, ptr nonnull %i.l) #11 ; 4 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZNK2v88internal11MaybeHandleINS0_16JSDateTimeFormatEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, label %.critedge.i

_ZNK2v88internal11MaybeHandleINS0_16JSDateTimeFormatEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit36.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ad = load i64, ptr %i.ac, align 8
  br label %bb.k

.critedge.i:                                      ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit36.i
  %i.ae = load i64, ptr %i.ab, align 8
  %i.af = add i64 %i.ae, 55
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i64, ptr %i.ag, align 8            ; 3 uses
  %i.ai = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.aj = load ptr, ptr %i.c, align 8
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !101

bb.d:                                             ; preds = %.critedge.i
  %i.al = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.d, %.critedge.i
  %.0.i.i.i = phi ptr [ %i.al, %bb.d ], [ %i.ai, %.critedge.i ] ; 2 uses
  %i.am = ptrtoint ptr %.0.i.i.i to i64
  %i.an = add i64 %i.am, 8
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr %i.ao, ptr %i.a, align 8
  store i64 %i.ah, ptr %.0.i.i.i, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = icmp eq i64 %i.ah, %i.aq
  br i1 %i.ar, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.as = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_119CreateBoundFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_7BuiltinEi(ptr noundef nonnull %2, ptr nonnull %i.ab, i32 noundef 1520, i32 noundef 1) ; 2 uses
  %i.at = load i64, ptr %i.ab, align 8            ; 4 uses
  %i.au = load i64, ptr %i.as, align 8            ; 5 uses
  %i.av = add i64 %i.at, 55                       ; 3 uses
  %i.aw = inttoptr i64 %i.av to ptr
  store atomic volatile i64 %i.au, ptr %i.aw monotonic, align 8
  %i.ax = trunc i64 %i.au to i1
  br i1 %i.ax, label %bb.f, label %_ZN2v88internal31TorqueGeneratedJSDateTimeFormatINS0_16JSDateTimeFormatENS0_8JSObjectEE16set_bound_formatENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ay = and i64 %i.at, -262144
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load i64, ptr %i.az, align 262144       ; 2 uses
  %i.bb = and i64 %i.ba, 32
  %.not.i.i.i.i = icmp eq i64 %i.bb, 0
  %i.bc = and i64 %i.ba, 25
  %.not38.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not38.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bd = and i64 %i.au, -262144
  %i.be = inttoptr i64 %i.bd to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.be, align 262144
  %i.bf = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not39.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.at, i64 noundef %i.av, i64 %i.au) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i, label %_ZN2v88internal31TorqueGeneratedJSDateTimeFormatINS0_16JSDateTimeFormatENS0_8JSObjectEE16set_bound_formatENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i, label %bb.j, !prof !102

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.at, i64 %i.av, i64 %i.au) #11
  br label %_ZN2v88internal31TorqueGeneratedJSDateTimeFormatINS0_16JSDateTimeFormatENS0_8JSObjectEE16set_bound_formatENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal31TorqueGeneratedJSDateTimeFormatINS0_16JSDateTimeFormatENS0_8JSObjectEE16set_bound_formatENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.j, %bb.i, %bb.e
  %i.bg = load i64, ptr %i.as, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal31TorqueGeneratedJSDateTimeFormatINS0_16JSDateTimeFormatENS0_8JSObjectEE16set_bound_formatENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %_ZNK2v88internal11MaybeHandleINS0_16JSDateTimeFormatEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i
  %.sroa.065.2.i = phi i64 [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit33.i ], [ %i.ad, %_ZNK2v88internal11MaybeHandleINS0_16JSDateTimeFormatEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i ], [ %i.bg, %_ZN2v88internal31TorqueGeneratedJSDateTimeFormatINS0_16JSDateTimeFormatENS0_8JSObjectEE16set_bound_formatENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i ], [ %i.ah, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.bh = load i32, ptr %i.e, align 8
  %i.bi = add nsw i32 %i.bh, -1
  store i32 %i.bi, ptr %i.e, align 8
  %i.bj = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.bj, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL42Builtin_Impl_DateTimeFormatPrototypeFormatENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.l, !prof !102

bb.l:                                             ; preds = %bb.k
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL42Builtin_Impl_DateTimeFormatPrototypeFormatENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL42Builtin_Impl_DateTimeFormatPrototypeFormatENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.k, %bb.l
  ret i64 %.sroa.065.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal36Builtin_DateTimeFormatInternalFormatEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !132 {
bb.a:
  %3 = zext nneg i32 %0 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i19.i = load i64, ptr %i.h, align 8 ; 2 uses
  %i.i = icmp eq ptr %i.b, %i.d
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !101

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.a, align 8
  store i64 %.sroa.0.0.copyload.i19.i, ptr %.0.i.i.i, align 8
  %i.n = add i64 %.sroa.0.0.copyload.i19.i, 31
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.q = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.c, label %_ZN2v88internal6HandleINS0_16JSDateTimeFormatEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !101

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.t = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal6HandleINS0_16JSDateTimeFormatEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_16JSDateTimeFormatEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.c, %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.0.i.i18.i = phi ptr [ %i.t, %bb.c ], [ %i.q, %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ] ; 3 uses
  %i.u = ptrtoint ptr %.0.i.i18.i to i64
  %i.v = add i64 %i.u, 8
  %i.w = inttoptr i64 %i.v to ptr
  store ptr %i.w, ptr %i.a, align 8
  store i64 %i.p, ptr %.0.i.i18.i, align 8
  %.not.i20.i = icmp sgt i32 %0, 5
  %i.x = ptrtoint ptr %1 to i64
  %i.y = shl nuw nsw i64 %3, 3
  %reass.sub = sub i64 %i.x, %i.y
  %i.z = add i64 %reass.sub, 48
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i20.i, ptr %i.aa, ptr %i.ab
  %i.ac = tail call ptr @_ZN2v88internal16JSDateTimeFormat14DateTimeFormatEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEEPKc(ptr noundef nonnull %2, ptr nonnull %.0.i.i18.i, ptr %.sroa.0.0.i.i, ptr noundef nonnull @.str.33) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 912
  %.sroa.032.0.in.i = select i1 %.not.i, ptr %i.ad, ptr %i.ac
  %.sroa.032.0.i = load i64, ptr %.sroa.032.0.in.i, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.ae = load i32, ptr %i.e, align 8
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.e, align 8
  %i.ag = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ag, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL41Builtin_Impl_DateTimeFormatInternalFormatENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.d, !prof !102

bb.d:                                             ; preds = %_ZN2v88internal6HandleINS0_16JSDateTimeFormatEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL41Builtin_Impl_DateTimeFormatInternalFormatENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL41Builtin_Impl_DateTimeFormatInternalFormatENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal6HandleINS0_16JSDateTimeFormatEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.d
  ret i64 %.sroa.032.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal31Builtin_IntlGetCanonicalLocalesEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !133 {
bb.a:
  %3 = zext nneg i32 %0 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i10.i = icmp sgt i32 %0, 5
  %i.h = ptrtoint ptr %1 to i64
  %i.i = shl nuw nsw i64 %3, 3
  %reass.sub = sub i64 %i.h, %i.i
  %i.j = add i64 %reass.sub, 48
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i10.i, ptr %i.k, ptr %i.l
  %i.m = tail call ptr @_ZN2v88internal4Intl19GetCanonicalLocalesEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull %2, ptr %.sroa.0.0.i.i) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 912
  %.sroa.017.0.in.i = select i1 %.not.i, ptr %i.n, ptr %i.m
  %.sroa.017.0.i = load i64, ptr %.sroa.017.0.in.i, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.o = load i32, ptr %i.e, align 8
  %i.p = add nsw i32 %i.o, -1
  store i32 %i.p, ptr %i.e, align 8
  %i.q = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.q, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL36Builtin_Impl_IntlGetCanonicalLocalesENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.b, !prof !102

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL36Builtin_Impl_IntlGetCanonicalLocalesENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL36Builtin_Impl_IntlGetCanonicalLocalesENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  ret i64 %.sroa.017.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal29Builtin_IntlSupportedValuesOfEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !134 {
bb.a:
  %3 = zext nneg i32 %0 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i10.i = icmp sgt i32 %0, 5
  %i.h = ptrtoint ptr %1 to i64
  %i.i = shl nuw nsw i64 %3, 3
  %reass.sub = sub i64 %i.h, %i.i
  %i.j = add i64 %reass.sub, 48
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i10.i, ptr %i.k, ptr %i.l
  %i.m = tail call ptr @_ZN2v88internal4Intl17SupportedValuesOfEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull %2, ptr %.sroa.0.0.i.i) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 912
  %.sroa.017.0.in.i = select i1 %.not.i, ptr %i.n, ptr %i.m
  %.sroa.017.0.i = load i64, ptr %.sroa.017.0.in.i, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.o = load i32, ptr %i.e, align 8
  %i.p = add nsw i32 %i.o, -1
  store i32 %i.p, ptr %i.e, align 8
  %i.q = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.q, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL34Builtin_Impl_IntlSupportedValuesOfENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.b, !prof !102

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL34Builtin_Impl_IntlSupportedValuesOfENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL34Builtin_Impl_IntlSupportedValuesOfENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  ret i64 %.sroa.017.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal29Builtin_ListFormatConstructorEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #0 !guid !135 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.452"], align 8 ; 4 uses
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8
  tail call void @_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i32 noundef 60) #11
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.a, 3
  %reass.sub.i.i.i = sub i64 %i.i, %i.j           ; 4 uses
  %i.k = add i64 %reass.sub.i.i.i, 8
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.q = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.34, i64 15, i8 noundef zeroext 0) #11 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.c, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i.i, !prof !101

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #10
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %i.q, ptr %3, align 8
  %i.s = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 54, ptr nonnull %3, i64 1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.t = load i64, ptr %i.s, align 8
  %i.u = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.t, ptr noundef null) #11
  br label %_ZN2v88internal12_GLOBAL__N_123DisallowCallConstructorINS0_12JSListFormatEEENS0_6TaggedINS0_6ObjectEEENS0_16BuiltinArgumentsEPNS0_7IsolateENS_7Isolate17UseCounterFeatureEPKc.exit.i

bb.d:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %0, 0
  br i1 %.not.i.i.i, label %bb.e, label %_ZNK2v88internal16BuiltinArguments6targetEv.exit.i.i, !prof !101

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  unreachable

_ZNK2v88internal16BuiltinArguments6targetEv.exit.i.i: ; preds = %bb.d
  %i.v = add i64 %reass.sub.i.i.i, 16
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = tail call ptr @_ZN2v88internal10JSFunction13GetDerivedMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_10JSReceiverEEE(ptr noundef nonnull %2, ptr %i.w, ptr nonnull %i.l) #11 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.x, null
  br i1 %.not.i5.i, label %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i, label %.critedge.i.i

_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i: ; preds = %_ZNK2v88internal16BuiltinArguments6targetEv.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.z = load i64, ptr %i.y, align 8
  br label %_ZN2v88internal12_GLOBAL__N_123DisallowCallConstructorINS0_12JSListFormatEEENS0_6TaggedINS0_6ObjectEEENS0_16BuiltinArgumentsEPNS0_7IsolateENS_7Isolate17UseCounterFeatureEPKc.exit.i

.critedge.i.i:                                    ; preds = %_ZNK2v88internal16BuiltinArguments6targetEv.exit.i.i
  %.not.i40.i.i = icmp sgt i32 %0, 5
  %i.aa = add i64 %reass.sub.i.i.i, 48
  %i.ab = inttoptr i64 %i.aa to ptr
  %.sroa.0.0.i.i.i = select i1 %.not.i40.i.i, ptr %i.ab, ptr %i.n
  %.not.i41.i.i = icmp sgt i32 %0, 6
  %i.ac = add i64 %reass.sub.i.i.i, 56
  %i.ad = inttoptr i64 %i.ac to ptr
  %.sroa.0.0.i42.i.i = select i1 %.not.i41.i.i, ptr %i.ad, ptr %i.n
  %i.ae = tail call ptr @_ZN2v88internal12JSListFormat3NewEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_6ObjectEEES8_PKc(ptr noundef nonnull %2, ptr nonnull %i.x, ptr %.sroa.0.0.i.i.i, ptr %.sroa.0.0.i42.i.i, ptr noundef nonnull @.str.34) #11 ; 2 uses
  %.not53.i.i = icmp eq ptr %i.ae, null
  br i1 %.not53.i.i, label %_ZNK2v88internal11MaybeHandleINS0_12JSListFormatEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i, label %bb.f

_ZNK2v88internal11MaybeHandleINS0_12JSListFormatEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i: ; preds = %.critedge.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ag = load i64, ptr %i.af, align 8
  br label %_ZN2v88internal12_GLOBAL__N_123DisallowCallConstructorINS0_12JSListFormatEEENS0_6TaggedINS0_6ObjectEEENS0_16BuiltinArgumentsEPNS0_7IsolateENS_7Isolate17UseCounterFeatureEPKc.exit.i

bb.f:                                             ; preds = %.critedge.i.i
  %i.ah = load i64, ptr %i.ae, align 8
  br label %_ZN2v88internal12_GLOBAL__N_123DisallowCallConstructorINS0_12JSListFormatEEENS0_6TaggedINS0_6ObjectEEENS0_16BuiltinArgumentsEPNS0_7IsolateENS_7Isolate17UseCounterFeatureEPKc.exit.i

_ZN2v88internal12_GLOBAL__N_123DisallowCallConstructorINS0_12JSListFormatEEENS0_6TaggedINS0_6ObjectEEENS0_16BuiltinArgumentsEPNS0_7IsolateENS_7Isolate17UseCounterFeatureEPKc.exit.i: ; preds = %bb.f, %_ZNK2v88internal11MaybeHandleINS0_12JSListFormatEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i, %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i.i
  %.sroa.025.2.i.i = phi i64 [ %i.u, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i.i ], [ %i.z, %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i ], [ %i.ah, %bb.f ], [ %i.ag, %_ZNK2v88internal11MaybeHandleINS0_12JSListFormatEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i ]
  store ptr %i.c, ptr %i.b, align 8
  %i.ai = load i32, ptr %i.f, align 8
  %i.aj = add nsw i32 %i.ai, -1
  store i32 %i.aj, ptr %i.f, align 8
  %i.ak = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.ak, %i.e
  br i1 %.not.i.i, label %_ZN2v88internalL34Builtin_Impl_ListFormatConstructorENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.g, !prof !102

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_123DisallowCallConstructorINS0_12JSListFormatEEENS0_6TaggedINS0_6ObjectEEENS0_16BuiltinArgumentsEPNS0_7IsolateENS_7Isolate17UseCounterFeatureEPKc.exit.i
  store ptr %i.e, ptr %i.d, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL34Builtin_Impl_ListFormatConstructorENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL34Builtin_Impl_ListFormatConstructorENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_123DisallowCallConstructorINS0_12JSListFormatEEENS0_6TaggedINS0_6ObjectEEENS0_16BuiltinArgumentsEPNS0_7IsolateENS_7Isolate17UseCounterFeatureEPKc.exit.i, %bb.g
  ret i64 %.sroa.025.2.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal42Builtin_ListFormatPrototypeResolvedOptionsEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !136 {
bb.a:
  %3 = alloca [2 x %"class.v8::internal::DirectHandle.452"], align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i17.i = icmp ult i32 %0, 4
  br i1 %.not.i17.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !101

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub, 40
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal14IsJSListFormatENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal14IsJSListFormatENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal14IsJSListFormatENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp eq i16 %i.t, 2131
  br i1 %i.u, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit23.i, label %_ZN2v88internal14IsJSListFormatENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal14IsJSListFormatENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal14IsJSListFormatENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.35, i64 41, i8 noundef zeroext 0) #11 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit20.i, !prof !101

bb.c:                                             ; preds = %_ZN2v88internal14IsJSListFormatENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #10
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit20.i: ; preds = %_ZN2v88internal14IsJSListFormatENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %i.v, ptr %3, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %3, i64 2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #11
  br label %bb.d

_ZNK2v88internal16BuiltinArguments8receiverEv.exit23.i: ; preds = %_ZN2v88internal14IsJSListFormatENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ab = tail call ptr @_ZN2v88internal12JSListFormat15ResolvedOptionsEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %2, ptr nonnull %i.l) #11
  %i.ac = load i64, ptr %i.ab, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit23.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit20.i
  %.sroa.035.0.i = phi i64 [ %i.ac, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit23.i ], [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit20.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.ad = load i32, ptr %i.e, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal47Builtin_V8BreakIteratorPrototypeResolvedOptionsEiPmPNS0_7IsolateE:bb.a
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp eq i16 %i.t, 2145
  br i1 %i.u, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit23.i, label %_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.90, i64 46, i8 noundef zeroext 0) #11 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit20.i, !prof !101

bb.c:                                             ; preds = %_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #10
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit20.i: ; preds = %_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %i.v, ptr %3, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %3, i64 2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #11
  br label %bb.d

_ZNK2v88internal16BuiltinArguments8receiverEv.exit23.i: ; preds = %_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ab = tail call ptr @_ZN2v88internal17JSV8BreakIterator15ResolvedOptionsEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %2, ptr nonnull %i.l) #11
  %i.ac = load i64, ptr %i.ab, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit23.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit20.i
  %.sroa.035.0.i = phi i64 [ %i.ac, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit23.i ], [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit20.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.ad = load i32, ptr %i.e, align 8
  %i.ae = add nsw i32 %i.ad, -1
  store i32 %i.ae, ptr %i.e, align 8
  %i.af = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.af, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL52Builtin_Impl_V8BreakIteratorPrototypeResolvedOptionsENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.e, !prof !102

bb.e:                                             ; preds = %bb.d
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL52Builtin_Impl_V8BreakIteratorPrototypeResolvedOptionsENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL52Builtin_Impl_V8BreakIteratorPrototypeResolvedOptionsENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  ret i64 %.sroa.035.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal41Builtin_V8BreakIteratorPrototypeAdoptTextEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !193 {
bb.a:
  %3 = alloca [2 x %"class.v8::internal::DirectHandle.452"], align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i22.i = icmp ult i32 %0, 4
  br i1 %.not.i22.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !101

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub, 40
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp eq i16 %i.t, 2145
  br i1 %i.u, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit28.i, label %_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.91, i64 44, i8 noundef zeroext 0) #11 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit25.i, !prof !101

bb.c:                                             ; preds = %_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #10
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit25.i: ; preds = %_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %i.v, ptr %3, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %3, i64 2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #11
  br label %bb.k

_ZNK2v88internal16BuiltinArguments8receiverEv.exit28.i: ; preds = %_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ab = add i64 %i.m, 47
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.ae = icmp eq ptr %i.b, %i.d
  br i1 %i.ae, label %bb.d, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !101

bb.d:                                             ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit28.i
  %i.af = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.d, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit28.i
  %.0.i.i.i = phi ptr [ %i.af, %bb.d ], [ %i.b, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit28.i ] ; 2 uses
  %i.ag = ptrtoint ptr %.0.i.i.i to i64
  %i.ah = add i64 %i.ag, 8
  %i.ai = inttoptr i64 %i.ah to ptr
  store ptr %i.ai, ptr %i.a, align 8
  store i64 %i.ad, ptr %.0.i.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp eq i64 %i.ad, %i.ak
  br i1 %i.al, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.am = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_119CreateBoundFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_7BuiltinEi(ptr noundef nonnull %2, ptr nonnull %i.l, i32 noundef 1606, i32 noundef 1) ; 2 uses
  %i.an = load i64, ptr %i.l, align 8             ; 4 uses
  %i.ao = load i64, ptr %i.am, align 8            ; 5 uses
  %i.ap = add i64 %i.an, 47                       ; 3 uses
  %i.aq = inttoptr i64 %i.ap to ptr
  store atomic volatile i64 %i.ao, ptr %i.aq monotonic, align 8
  %i.ar = trunc i64 %i.ao to i1
  br i1 %i.ar, label %bb.f, label %_ZN2v88internal32TorqueGeneratedJSV8BreakIteratorINS0_17JSV8BreakIteratorENS0_8JSObjectEE20set_bound_adopt_textENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i

bb.f:                                             ; preds = %bb.e
  %i.as = and i64 %i.an, -262144
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load i64, ptr %i.at, align 262144       ; 2 uses
  %i.av = and i64 %i.au, 32
  %.not.i.i.i.i = icmp eq i64 %i.av, 0
  %i.aw = and i64 %i.au, 25
  %.not38.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not38.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ax = and i64 %i.ao, -262144
  %i.ay = inttoptr i64 %i.ax to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.ay, align 262144
  %i.az = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not39.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.an, i64 noundef %i.ap, i64 %i.ao) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i, label %_ZN2v88internal32TorqueGeneratedJSV8BreakIteratorINS0_17JSV8BreakIteratorENS0_8JSObjectEE20set_bound_adopt_textENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i, label %bb.j, !prof !102

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.an, i64 %i.ap, i64 %i.ao) #11
  br label %_ZN2v88internal32TorqueGeneratedJSV8BreakIteratorINS0_17JSV8BreakIteratorENS0_8JSObjectEE20set_bound_adopt_textENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal32TorqueGeneratedJSV8BreakIteratorINS0_17JSV8BreakIteratorENS0_8JSObjectEE20set_bound_adopt_textENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.j, %bb.i, %bb.e
  %i.ba = load i64, ptr %i.am, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal32TorqueGeneratedJSV8BreakIteratorINS0_17JSV8BreakIteratorENS0_8JSObjectEE20set_bound_adopt_textENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit25.i
  %.sroa.053.1.i = phi i64 [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit25.i ], [ %i.ba, %_ZN2v88internal32TorqueGeneratedJSV8BreakIteratorINS0_17JSV8BreakIteratorENS0_8JSObjectEE20set_bound_adopt_textENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i ], [ %i.ad, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.bb = load i32, ptr %i.e, align 8
  %i.bc = add nsw i32 %i.bb, -1
  store i32 %i.bc, ptr %i.e, align 8
  %i.bd = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.bd, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL46Builtin_Impl_V8BreakIteratorPrototypeAdoptTextENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.l, !prof !102

bb.l:                                             ; preds = %bb.k
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL46Builtin_Impl_V8BreakIteratorPrototypeAdoptTextENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL46Builtin_Impl_V8BreakIteratorPrototypeAdoptTextENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.k, %bb.l
  ret i64 %.sroa.053.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal40Builtin_V8BreakIteratorInternalAdoptTextEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !194 {
bb.a:
  %3 = zext nneg i32 %0 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i22.i = load i64, ptr %i.h, align 8 ; 2 uses
  %i.i = icmp eq ptr %i.b, %i.d
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !101

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.a, align 8
  store i64 %.sroa.0.0.copyload.i22.i, ptr %.0.i.i.i, align 8
  %i.n = add i64 %.sroa.0.0.copyload.i22.i, 31
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.q = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.c, label %_ZN2v88internal6HandleINS0_17JSV8BreakIteratorEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !101

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.t = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal6HandleINS0_17JSV8BreakIteratorEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_17JSV8BreakIteratorEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.c, %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.0.i.i21.i = phi ptr [ %i.t, %bb.c ], [ %i.q, %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ] ; 3 uses
  %i.u = ptrtoint ptr %.0.i.i21.i to i64
  %i.v = add i64 %i.u, 8
  %i.w = inttoptr i64 %i.v to ptr
  store ptr %i.w, ptr %i.a, align 8
  store i64 %i.p, ptr %.0.i.i21.i, align 8
  %.not.i23.i = icmp sgt i32 %0, 5
  %i.x = ptrtoint ptr %1 to i64
  %i.y = shl nuw nsw i64 %3, 3
  %reass.sub = sub i64 %i.x, %i.y
  %i.z = add i64 %reass.sub, 48
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 2 uses
  %.sroa.0.0.i.i = select i1 %.not.i23.i, ptr %i.aa, ptr %i.ab ; 3 uses
  %i.ac = load i64, ptr %.sroa.0.0.i.i, align 8   ; 2 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZN2v88internal6HandleINS0_17JSV8BreakIteratorEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.ae = add nsw i64 %i.ac, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2
  %i.ak = icmp ult i16 %i.aj, 128
  br i1 %i.ak, label %.critedge.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i

_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZN2v88internal6HandleINS0_17JSV8BreakIteratorEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.al = tail call ptr @_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %bb.e

.critedge.i:                                      ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %.sroa.07.0.i5256.i = phi ptr [ %i.al, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.i ], [ %.sroa.0.0.i.i, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i.i ]
  tail call void @_ZN2v88internal17JSV8BreakIterator9AdoptTextEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6StringEEE(ptr noundef nonnull %2, ptr nonnull %.0.i.i21.i, ptr nonnull %.sroa.07.0.i5256.i) #11
  br label %bb.e

bb.e:                                             ; preds = %.critedge.i, %bb.d
  %.sroa.035.0.in.i = phi ptr [ %i.ab, %.critedge.i ], [ %i.am, %bb.d ]
  %.sroa.035.0.i = load i64, ptr %.sroa.035.0.in.i, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.an = load i32, ptr %i.e, align 8
  %i.ao = add nsw i32 %i.an, -1
  store i32 %i.ao, ptr %i.e, align 8
  %i.ap = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ap, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL45Builtin_Impl_V8BreakIteratorInternalAdoptTextENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.f, !prof !102

bb.f:                                             ; preds = %bb.e
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL45Builtin_Impl_V8BreakIteratorInternalAdoptTextENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL45Builtin_Impl_V8BreakIteratorInternalAdoptTextENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.f
  ret i64 %.sroa.035.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal37Builtin_V8BreakIteratorPrototypeFirstEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !195 {
bb.a:
  %3 = alloca [2 x %"class.v8::internal::DirectHandle.452"], align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i22.i = icmp ult i32 %0, 4
  br i1 %.not.i22.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !101

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub, 40
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp eq i16 %i.t, 2145
  br i1 %i.u, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit28.i, label %_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.92, i64 40, i8 noundef zeroext 0) #11 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit25.i, !prof !101

bb.c:                                             ; preds = %_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #10
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit25.i: ; preds = %_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %i.v, ptr %3, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.l, ptr %i.x, align 8
  %i.y = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %3, i64 2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.z, ptr noundef null) #11
  br label %bb.k

_ZNK2v88internal16BuiltinArguments8receiverEv.exit28.i: ; preds = %_ZN2v88internal19IsJSV8BreakIteratorENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ab = add i64 %i.m, 55
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.ae = icmp eq ptr %i.b, %i.d
  br i1 %i.ae, label %bb.d, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !101

bb.d:                                             ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit28.i
  %i.af = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.d, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit28.i
  %.0.i.i.i = phi ptr [ %i.af, %bb.d ], [ %i.b, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit28.i ] ; 2 uses
  %i.ag = ptrtoint ptr %.0.i.i.i to i64
  %i.ah = add i64 %i.ag, 8
  %i.ai = inttoptr i64 %i.ah to ptr
  store ptr %i.ai, ptr %i.a, align 8
  store i64 %i.ad, ptr %.0.i.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp eq i64 %i.ad, %i.ak
  br i1 %i.al, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.am = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_119CreateBoundFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_7BuiltinEi(ptr noundef nonnull %2, ptr nonnull %i.l, i32 noundef 1609, i32 noundef 0) ; 2 uses
  %i.an = load i64, ptr %i.l, align 8             ; 4 uses
  %i.ao = load i64, ptr %i.am, align 8            ; 5 uses
  %i.ap = add i64 %i.an, 55                       ; 3 uses
  %i.aq = inttoptr i64 %i.ap to ptr
  store atomic volatile i64 %i.ao, ptr %i.aq monotonic, align 8
  %i.ar = trunc i64 %i.ao to i1
  br i1 %i.ar, label %bb.f, label %_ZN2v88internal32TorqueGeneratedJSV8BreakIteratorINS0_17JSV8BreakIteratorENS0_8JSObjectEE15set_bound_firstENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i

bb.f:                                             ; preds = %bb.e
  %i.as = and i64 %i.an, -262144
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load i64, ptr %i.at, align 262144       ; 2 uses
  %i.av = and i64 %i.au, 32
  %.not.i.i.i.i = icmp eq i64 %i.av, 0
  %i.aw = and i64 %i.au, 25
  %.not38.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not38.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ax = and i64 %i.ao, -262144
  %i.ay = inttoptr i64 %i.ax to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.ay, align 262144
  %i.az = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not39.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.an, i64 noundef %i.ap, i64 %i.ao) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i, label %_ZN2v88internal32TorqueGeneratedJSV8BreakIteratorINS0_17JSV8BreakIteratorENS0_8JSObjectEE15set_bound_firstENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i, label %bb.j, !prof !102

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.an, i64 %i.ap, i64 %i.ao) #11
  br label %_ZN2v88internal32TorqueGeneratedJSV8BreakIteratorINS0_17JSV8BreakIteratorENS0_8JSObjectEE15set_bound_firstENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal32TorqueGeneratedJSV8BreakIteratorINS0_17JSV8BreakIteratorENS0_8JSObjectEE15set_bound_firstENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.j, %bb.i, %bb.e
  %i.ba = load i64, ptr %i.am, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal32TorqueGeneratedJSV8BreakIteratorINS0_17JSV8BreakIteratorENS0_8JSObjectEE15set_bound_firstENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit25.i
  %.sroa.053.1.i = phi i64 [ %i.aa, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit25.i ], [ %i.ba, %_ZN2v88internal32TorqueGeneratedJSV8BreakIteratorINS0_17JSV8BreakIteratorENS0_8JSObjectEE15set_bound_firstENS0_6TaggedINS0_5UnionIJNS0_10JSFunctionENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.i ], [ %i.ad, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.bb = load i32, ptr %i.e, align 8
  %i.bc = add nsw i32 %i.bb, -1
  store i32 %i.bc, ptr %i.e, align 8
  %i.bd = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.bd, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL42Builtin_Impl_V8BreakIteratorPrototypeFirstENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.l, !prof !102

bb.l:                                             ; preds = %bb.k
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #11
  br label %_ZN2v88internalL42Builtin_Impl_V8BreakIteratorPrototypeFirstENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL42Builtin_Impl_V8BreakIteratorPrototypeFirstENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.k, %bb.l
  ret i64 %.sroa.053.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal36Builtin_V8BreakIteratorInternalFirstEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #0 !guid !196 {
end_hunk_2
