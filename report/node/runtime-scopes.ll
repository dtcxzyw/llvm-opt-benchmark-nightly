inline.NumInlined: 2421
inline.NumDeleted: 838
begin_hunk_0_@_ZN2v88internal30Runtime_DisposeDisposableStackEiPmPNS0_7IsolateE:bb.a

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ak, i64 %i.am, i64 %i.al) #13
  br label %_ZN2v88internal36TorqueGeneratedJSDisposableStackBaseINS0_21JSDisposableStackBaseENS0_8JSObjectEE17set_error_messageENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal36TorqueGeneratedJSDisposableStackBaseINS0_21JSDisposableStackBaseENS0_8JSObjectEE17set_error_messageENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_3SmiEEENS0_6HandleIT_EEi.exit, %bb.q, %bb.p, %_ZN2v88internal36TorqueGeneratedJSDisposableStackBaseINS0_21JSDisposableStackBaseENS0_8JSObjectEE9set_errorENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.f
  %i.ax = load i64, ptr %1, align 8
  %i.ay = add i64 %i.ax, 31
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = and i64 %i.ba, -8589934592
  store atomic volatile i64 %i.bb, ptr %i.az monotonic, align 8
  %i.bc = load i64, ptr %i.q, align 8
  %i.bd = lshr i64 %i.bc, 32
  %i.be = trunc nuw i64 %i.bd to i32
  %i.bf = tail call ptr @_ZN2v88internal21JSDisposableStackBase16DisposeResourcesEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_28DisposableStackResourcesTypeE(ptr noundef nonnull %2, ptr nonnull %1, i32 noundef %i.be) #13 ; 2 uses
  %.not92 = icmp eq ptr %i.bf, null
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 912
  %.sroa.057.0.in = select i1 %.not92, ptr %i.bg, ptr %i.bf
  %.sroa.057.0 = load i64, ptr %.sroa.057.0.in, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.bh = load i32, ptr %i.e, align 8
  %i.bi = add nsw i32 %i.bh, -1
  store i32 %i.bi, ptr %i.e, align 8
  %i.bj = load ptr, ptr %i.c, align 8
  %.not.i2 = icmp eq ptr %i.bj, %i.d
  br i1 %.not.i2, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.r, !prof !5

bb.r:                                             ; preds = %_ZN2v88internal36TorqueGeneratedJSDisposableStackBaseINS0_21JSDisposableStackBaseENS0_8JSObjectEE17set_error_messageENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #13
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.r, %_ZN2v88internal36TorqueGeneratedJSDisposableStackBaseINS0_21JSDisposableStackBaseENS0_8JSObjectEE17set_error_messageENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  ret i64 %.sroa.057.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal48Runtime_HandleExceptionsInDisposeDisposableStackEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit4, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit4: ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %.not27 = icmp eq i32 %0, 1
  br i1 %.not27, label %bb.c, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, !prof !6

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit4
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit4
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = add i64 %i.m, -55464
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 960
  %i.q = load i64, ptr %i.p, align 8
  %.not28 = icmp eq i64 %i.k, %i.q
  br i1 %.not28, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.r = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.k, ptr noundef null) #13
  br label %_ZN2v88internalL58__RT_impl_Runtime_HandleExceptionsInDisposeDisposableStackENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.e:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.s = add i64 %i.h, -16
  %i.t = inttoptr i64 %i.s to ptr
  tail call void @_ZN2v88internal21JSDisposableStackBase21HandleErrorInDisposalEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEES7_(ptr noundef nonnull %2, ptr %1, ptr nonnull %i.j, ptr %i.t)
  %i.u = load i64, ptr %1, align 8
  br label %_ZN2v88internalL58__RT_impl_Runtime_HandleExceptionsInDisposeDisposableStackENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL58__RT_impl_Runtime_HandleExceptionsInDisposeDisposableStackENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.d
  %.sroa.018.0 = phi i64 [ %i.u, %bb.e ], [ %i.r, %bb.d ]
  store ptr %i.b, ptr %i.a, align 8
  %i.v = load i32, ptr %i.e, align 8
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.e, align 8
  %i.x = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.x, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.f, !prof !5

bb.f:                                             ; preds = %_ZN2v88internalL58__RT_impl_Runtime_HandleExceptionsInDisposeDisposableStackENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #13
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.f, %_ZN2v88internalL58__RT_impl_Runtime_HandleExceptionsInDisposeDisposableStackENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.018.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal27Runtime_DeclareEvalFunctionEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = tail call fastcc i64 @_ZN2v88internal12_GLOBAL__N_117DeclareEvalHelperEPNS0_7IsolateENS0_6HandleINS0_6StringEEENS4_INS0_6ObjectEEE(ptr noundef nonnull %2, ptr %1, ptr %i.j)
  store ptr %i.b, ptr %i.a, align 8
  %i.l = load i32, ptr %i.e, align 8
  %i.m = add nsw i32 %i.l, -1
  store i32 %i.m, ptr %i.e, align 8
  %i.n = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #13
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.d, %bb.c
  ret i64 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal22Runtime_DeclareEvalVarEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.i = tail call fastcc i64 @_ZN2v88internal12_GLOBAL__N_117DeclareEvalHelperEPNS0_7IsolateENS0_6HandleINS0_6StringEEENS4_INS0_6ObjectEEE(ptr noundef nonnull %2, ptr %1, ptr nonnull %i.h)
  store ptr %i.b, ptr %i.a, align 8
  %i.j = load i32, ptr %i.e, align 8
  %i.k = add nsw i32 %i.j, -1
  store i32 %i.k, ptr %i.e, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #13
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.b, %bb.a
  ret i64 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal26Runtime_NewSloppyArgumentsEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.511", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.511", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.511", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::DirectHandleVector", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call fastcc void @_ZN2v88internal12_GLOBAL__N_118GetCallerArgumentsEPNS0_7IsolateE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef %2)
  %i.h = load ptr, ptr %6, align 8                ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 3                   ; 2 uses
  %i.o = trunc i64 %i.n to i32                    ; 6 uses
  %i.p = load i64, ptr %1, align 8
  %i.q = add i64 %i.p, 31
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = add i64 %i.s, 55
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i32, ptr %i.u monotonic, align 4
  %i.w = trunc i32 %i.v to i8
  %i.x = and i8 %i.w, 31
  %i.y = add nsw i8 %i.x, -5
  %i.z = icmp ult i8 %i.y, 2
  br i1 %i.z, label %bb.a, label %bb.b, !prof !6

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #14
  unreachable

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.aa = tail call ptr @_ZN2v88internal7Factory18NewArgumentsObjectENS0_12DirectHandleINS0_10JSFunctionEEEi(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %1, i32 noundef %i.o) #13 ; 4 uses
  %i.ab = load i64, ptr %1, align 8
  %i.ac = add i64 %i.ab, 31
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.af = add i64 %i.ae, 49
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i16, ptr %i.ag, align 2            ; 2 uses
  %.0.i.i = tail call noundef i16 @llvm.usub.sat.i16(i16 %i.ah, i16 1)
  %i.ai = zext i16 %.0.i.i to i32
  %i.aj = icmp sgt i32 %i.o, 0
  br i1 %i.aj, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_118NewSloppyArgumentsINS1_15HandleArgumentsEEENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateENS4_INS0_10JSFunctionEEET_i.exit

bb.c:                                             ; preds = %bb.b
  %.not.i4 = icmp ult i16 %i.ah, 2
  br i1 %.not.i4, label %bb.aj, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %i.ai) ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 344 ; 2 uses
  %.sroa.0.0.copyload.i78.i = load i64, ptr %i.ak, align 8
  %i.al = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.am = load ptr, ptr %i.c, align 8
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.e, label %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !6

bb.e:                                             ; preds = %bb.d
  %i.ao = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #13
  br label %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.ao, %bb.e ], [ %i.al, %bb.d ] ; 3 uses
  %i.ap = ptrtoint ptr %.0.i.i.i to i64
  %i.aq = add i64 %i.ap, 8
  %i.ar = inttoptr i64 %i.aq to ptr
  store ptr %i.ar, ptr %i.a, align 8
  store i64 %.sroa.0.0.copyload.i78.i, ptr %.0.i.i.i, align 8
  %i.as = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %i.o, i8 noundef zeroext 0, i8 0) #13 ; 4 uses
  %i.at = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE26NewSloppyArgumentsElementsEiNS0_12DirectHandleINS0_7ContextEEENS4_INS0_10FixedArrayEEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %.sroa.speculated.i, ptr nonnull %.0.i.i.i, ptr %i.as, i8 noundef zeroext 0) #13 ; 3 uses
  %i.au = load i64, ptr %i.aa, align 8            ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ak, align 8
  %i.av = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8
  %i.ay = add i64 %i.ax, 31
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bc = load ptr, ptr %i.c, align 8
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.f, label %_ZN2v88internal7Isolate14native_contextEv.exit.i, !prof !6

bb.f:                                             ; preds = %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.be = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %2) #13
  br label %_ZN2v88internal7Isolate14native_contextEv.exit.i

_ZN2v88internal7Isolate14native_contextEv.exit.i: ; preds = %bb.f, %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.0.i.i.i.i = phi ptr [ %i.be, %bb.f ], [ %i.bb, %_ZN2v88internal6HandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ] ; 2 uses
  %i.bf = ptrtoint ptr %.0.i.i.i.i to i64
  %i.bg = add i64 %i.bf, 8
  %i.bh = inttoptr i64 %i.bg to ptr
  store ptr %i.bh, ptr %i.a, align 8
  store i64 %i.ba, ptr %.0.i.i.i.i, align 8
  %i.bi = add i64 %i.ba, 567
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load atomic volatile i64, ptr %i.bj monotonic, align 8 ; 5 uses
  %i.bl = add i64 %i.au, -1                       ; 3 uses
  %i.bm = inttoptr i64 %i.bl to ptr
  store atomic volatile i64 %i.bk, ptr %i.bm monotonic, align 8
  tail call void @_ZN2v88internal4Heap28NotifyObjectLayoutChangeDoneENS0_6TaggedINS0_10HeapObjectEEE(i64 %i.au) #13
  %i.bn = trunc i64 %i.bk to i1
  br i1 %i.bn, label %bb.g, label %_ZN2v88internal10HeapObject7set_mapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit.i

bb.g:                                             ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit.i
  %i.bo = and i64 %i.au, -262144
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load i64, ptr %i.bp, align 262144       ; 2 uses
  %i.br = and i64 %i.bq, 32
  %.not.i.i.i.i = icmp eq i64 %i.br, 0
  %i.bs = and i64 %i.bq, 25
  %.not38.i.i.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not38.i.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bt = and i64 %i.bk, -262144
  %i.bu = inttoptr i64 %i.bt to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.bu, align 262144
  %i.bv = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not39.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.au, i64 noundef %i.bl, i64 %i.bk) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i, label %_ZN2v88internal10HeapObject7set_mapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit.i, label %bb.k, !prof !5

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.au, i64 %i.bl, i64 %i.bk) #13
  br label %_ZN2v88internal10HeapObject7set_mapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit.i

_ZN2v88internal10HeapObject7set_mapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit.i: ; preds = %bb.k, %bb.j, %_ZN2v88internal7Isolate14native_contextEv.exit.i
  %i.bw = load i64, ptr %i.aa, align 8            ; 4 uses
  %i.bx = load i64, ptr %i.at, align 8            ; 5 uses
  %i.by = add i64 %i.bw, 15                       ; 3 uses
  %i.bz = inttoptr i64 %i.by to ptr
  store atomic volatile i64 %i.bx, ptr %i.bz monotonic, align 8
  %i.ca = trunc i64 %i.bx to i1
  br i1 %i.ca, label %bb.l, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit.i

bb.l:                                             ; preds = %_ZN2v88internal10HeapObject7set_mapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit.i
  %i.cb = and i64 %i.bw, -262144
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = load i64, ptr %i.cc, align 262144       ; 2 uses
  %i.ce = and i64 %i.cd, 32
  %.not.i.i.i80.i = icmp eq i64 %i.ce, 0
  %i.cf = and i64 %i.cd, 25
  %.not38.i.i.i81.i = icmp eq i64 %i.cf, 0
  br i1 %.not38.i.i.i81.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cg = and i64 %i.bx, -262144
  %i.ch = inttoptr i64 %i.cg to ptr
  %.sroa.0.0.copyload.i28.i.i.i82.i = load i64, ptr %i.ch, align 262144
  %i.ci = and i64 %.sroa.0.0.copyload.i28.i.i.i82.i, 25
  %.not39.i.i.i83.i = icmp eq i64 %i.ci, 0
  br i1 %.not39.i.i.i83.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bw, i64 noundef %i.by, i64 %i.bx) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  br i1 %.not.i.i.i80.i, label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit.i, label %bb.p, !prof !5

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bw, i64 %i.by, i64 %i.bx) #13
  br label %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.p, %bb.o, %_ZN2v88internal10HeapObject7set_mapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit.i
  %.0242.i = add nsw i32 %i.o, -1                 ; 2 uses
  %.not57243.i = icmp samesign ult i32 %.0242.i, %.sroa.speculated.i
  br i1 %.not57243.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit.i
  %7 = zext nneg i32 %.0242.i to i64
  %i.cj = zext nneg i32 %.sroa.speculated.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %7, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i ] ; 3 uses
  %i.ck = load i64, ptr %i.as, align 8
  %i.cl = add i64 %i.ck, -1                       ; 3 uses
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = load i64, ptr %i.co, align 8            ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv.i ; 2 uses
  store atomic volatile i64 %i.cp, ptr %i.cr monotonic, align 8
  %i.cs = trunc i64 %i.cp to i1
  br i1 %i.cs, label %bb.q, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

bb.q:                                             ; preds = %.lr.ph.i
  %i.ct = or disjoint i64 %i.cl, 1                ; 2 uses
  %i.cu = ptrtoint ptr %i.cr to i64               ; 2 uses
  %i.cv = and i64 %i.cl, -262144
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = load i64, ptr %i.cw, align 262144       ; 2 uses
  %i.cy = and i64 %i.cx, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cy, 0
  %i.cz = and i64 %i.cx, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.da = and i64 %i.cp, -262144
  %i.db = inttoptr i64 %i.da to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i = load i64, ptr %i.db, align 262144
  %i.dc = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i, 25
  %.not39.i.i.i.i.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not39.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ct, i64 noundef %i.cu, i64 %i.cp) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, label %bb.u, !prof !5

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ct, i64 %i.cu, i64 %i.cp) #13
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.u, %bb.t, %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %.not57.i = icmp slt i64 %indvars.iv.next.i, %i.cj
  br i1 %.not57.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, %_ZN2v88internal8JSObject12set_elementsENS0_6TaggedINS0_14FixedArrayBaseEEENS0_16WriteBarrierModeE.exit.i
  %i.dd = load i64, ptr %1, align 8
  %i.de = add i64 %i.dd, 31
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = load atomic volatile i64, ptr %i.df monotonic, align 8
  %i.dh = add i64 %i.dg, 23
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = load atomic volatile i64, ptr %i.di acquire, align 8 ; 3 uses
  %i.dk = trunc i64 %i.dj to i1
  br i1 %i.dk, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i.i, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i.i

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i.i: ; preds = %._crit_edge.i
  %i.dl = add nsw i64 %i.dj, -1
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = load atomic volatile i64, ptr %i.dm monotonic, align 8
  %i.do = add i64 %i.dn, 11
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = load atomic volatile i16, ptr %i.dp monotonic, align 2
  %i.dr = icmp eq i16 %i.dq, 284
  br i1 %i.dr, label %_ZNK2v88internal18SharedFunctionInfo10scope_infoEv.exit.i, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i.i

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i.i, %._crit_edge.i
  %i.ds = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 10624
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 296
  %i.dw = load i64, ptr %i.dv, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo10scope_infoEv.exit.i

_ZNK2v88internal18SharedFunctionInfo10scope_infoEv.exit.i: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i.i, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i.i
  %.sroa.06.0.i.i.i.i = phi i64 [ %i.dw, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread.i.i.i.i ], [ %i.dj, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.i.i.i.i ]
  %i.dx = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.dy = load ptr, ptr %i.c, align 8
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %bb.v, label %.lr.ph245.i, !prof !6

bb.v:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo10scope_infoEv.exit.i
  %i.ea = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #13
  br label %.lr.ph245.i

.lr.ph245.i:                                      ; preds = %bb.v, %_ZNK2v88internal18SharedFunctionInfo10scope_infoEv.exit.i
  %.0.i.i74.i = phi ptr [ %i.ea, %bb.v ], [ %i.dx, %_ZNK2v88internal18SharedFunctionInfo10scope_infoEv.exit.i ] ; 6 uses
  %i.eb = ptrtoint ptr %.0.i.i74.i to i64
  %i.ec = add i64 %i.eb, 8
  %i.ed = inttoptr i64 %i.ec to ptr
  store ptr %i.ed, ptr %i.a, align 8
  store i64 %.sroa.06.0.i.i.i.i, ptr %.0.i.i74.i, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 656 ; 2 uses
  %umax.i = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated.i, i32 1)
  %wide.trip.count.i = zext nneg i32 %umax.i to i64
  br label %bb.w

.preheader.i:                                     ; preds = %_ZN2v88internal23SloppyArgumentsElements18set_mapped_entriesEiNS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_4HoleEEEEEE.exit.i
  %.pre.i = load i64, ptr %.0.i.i74.i, align 8    ; 2 uses
  %i.ef = add i64 %.pre.i, 23
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = lshr i64 %i.eh, 32
  %i.ej = trunc nuw i64 %i.ei to i32
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %.lr.ph247.i, label %_ZN2v88internal12_GLOBAL__N_118NewSloppyArgumentsINS1_15HandleArgumentsEEENS0_12DirectHandleINS0_8JSObjectEEEPNS0_7IsolateENS4_INS0_10JSFunctionEEET_i.exit

bb.w:                                             ; preds = %_ZN2v88internal23SloppyArgumentsElements18set_mapped_entriesEiNS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_4HoleEEEEEE.exit.i, %.lr.ph245.i
  %indvars.iv253.i = phi i64 [ 0, %.lr.ph245.i ], [ %indvars.iv.next254.i, %_ZN2v88internal23SloppyArgumentsElements18set_mapped_entriesEiNS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_4HoleEEEEEE.exit.i ] ; 4 uses
  %i.el = load i64, ptr %i.as, align 8
  %i.em = add i64 %i.el, -1                       ; 3 uses
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv253.i
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = load i64, ptr %i.ep, align 8            ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv253.i ; 2 uses
  store atomic volatile i64 %i.eq, ptr %i.es monotonic, align 8
  %i.et = trunc i64 %i.eq to i1
  br i1 %i.et, label %bb.x, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit89.i

bb.x:                                             ; preds = %bb.w
  %i.eu = or disjoint i64 %i.em, 1                ; 2 uses
  %i.ev = ptrtoint ptr %i.es to i64               ; 2 uses
  %i.ew = and i64 %i.em, -262144
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = load i64, ptr %i.ex, align 262144       ; 2 uses
  %i.ez = and i64 %i.ey, 32
  %.not.i.i.i.i.i85.i = icmp eq i64 %i.ez, 0
  %i.fa = and i64 %i.ey, 25
  %.not38.i.i.i.i.i86.i = icmp eq i64 %i.fa, 0
  br i1 %.not38.i.i.i.i.i86.i, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.fb = and i64 %i.eq, -262144
  %i.fc = inttoptr i64 %i.fb to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i87.i = load i64, ptr %i.fc, align 262144
  %i.fd = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i87.i, 25
  %.not39.i.i.i.i.i88.i = icmp eq i64 %i.fd, 0
  br i1 %.not39.i.i.i.i.i88.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.eu, i64 noundef %i.ev, i64 %i.eq) #13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  br i1 %.not.i.i.i.i.i85.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit89.i, label %bb.ab, !prof !5

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.eu, i64 %i.ev, i64 %i.eq) #13
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit89.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit89.i: ; preds = %bb.ab, %bb.aa, %bb.w
  %i.fe = load i64, ptr %i.at, align 8
  %i.ff = add i64 %i.fe, -1                       ; 3 uses
  %i.fg = inttoptr i64 %i.ff to ptr
  %i.fh = load i64, ptr %i.ee, align 8            ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv253.i ; 2 uses
  store atomic volatile i64 %i.fh, ptr %i.fj monotonic, align 8
  %i.fk = trunc i64 %i.fh to i1
  br i1 %i.fk, label %bb.ac, label %_ZN2v88internal23SloppyArgumentsElements18set_mapped_entriesEiNS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_4HoleEEEEEE.exit.i

bb.ac:                                            ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit89.i
  %i.fl = or disjoint i64 %i.ff, 1                ; 2 uses
  %i.fm = ptrtoint ptr %i.fj to i64               ; 2 uses
  %i.fn = and i64 %i.ff, -262144
  %i.fo = inttoptr i64 %i.fn to ptr
  %i.fp = load i64, ptr %i.fo, align 262144       ; 2 uses
  %i.fq = and i64 %i.fp, 32
  %.not.i.i.i.i.i90.i = icmp eq i64 %i.fq, 0
  %i.fr = and i64 %i.fp, 25
  %.not38.i.i.i.i.i91.i = icmp eq i64 %i.fr, 0
  br i1 %.not38.i.i.i.i.i91.i, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.fs = and i64 %i.fh, -262144
  %i.ft = inttoptr i64 %i.fs to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i92.i = load i64, ptr %i.ft, align 262144
  %i.fu = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i92.i, 25
  %.not39.i.i.i.i.i93.i = icmp eq i64 %i.fu, 0
  br i1 %.not39.i.i.i.i.i93.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.fl, i64 noundef %i.fm, i64 %i.fh) #13
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  br i1 %.not.i.i.i.i.i90.i, label %_ZN2v88internal23SloppyArgumentsElements18set_mapped_entriesEiNS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_4HoleEEEEEE.exit.i, label %bb.ag, !prof !5

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.fl, i64 %i.fm, i64 %i.fh) #13
  br label %_ZN2v88internal23SloppyArgumentsElements18set_mapped_entriesEiNS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_4HoleEEEEEE.exit.i

_ZN2v88internal23SloppyArgumentsElements18set_mapped_entriesEiNS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_4HoleEEEEEE.exit.i: ; preds = %bb.ag, %bb.af, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit89.i
  %indvars.iv.next254.i = add nuw nsw i64 %indvars.iv253.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next254.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.w, !llvm.loop !15

.lr.ph247.i:                                      ; preds = %.preheader.i, %_ZN2v88internal23SloppyArgumentsElements18set_mapped_entriesEiNS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_4HoleEEEEEE.exit99.i
  %i.fv = phi i64 [ %i.gr, %_ZN2v88internal23SloppyArgumentsElements18set_mapped_entriesEiNS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_4HoleEEEEEE.exit99.i ], [ %.pre.i, %.preheader.i ]
  %.054246.i = phi i32 [ %i.gq, %_ZN2v88internal23SloppyArgumentsElements18set_mapped_entriesEiNS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_4HoleEEEEEE.exit99.i ], [ 0, %.preheader.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i64 %i.fv, ptr %3, align 8
  %i.fw = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo23ContextLocalIsParameterEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.054246.i) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br i1 %i.fw, label %bb.ah, label %_ZN2v88internal23SloppyArgumentsElements18set_mapped_entriesEiNS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_4HoleEEEEEE.exit99.i

bb.ah:                                            ; preds = %.lr.ph247.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.fx = load i64, ptr %.0.i.i74.i, align 8
  store i64 %i.fx, ptr %4, align 8
  %i.fy = call noundef i32 @_ZNK2v88internal9ScopeInfo27ContextLocalParameterNumberEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %.054246.i) #13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.not58.i = icmp slt i32 %i.fy, %.sroa.speculated.i
  br i1 %.not58.i, label %bb.ai, label %_ZN2v88internal23SloppyArgumentsElements18set_mapped_entriesEiNS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_4HoleEEEEEE.exit99.i

bb.ai:                                            ; preds = %bb.ah
  %i.fz = load i64, ptr %i.as, align 8
  %i.ga = add i64 %i.fz, -1
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = load i64, ptr %i.ee, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.ge = sext i32 %i.fy to i64                   ; 2 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.ge
  store atomic volatile i64 %i.gc, ptr %i.gf monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.gg = load i64, ptr %.0.i.i74.i, align 8
  store i64 %i.gg, ptr %5, align 8
  %i.gh = call noundef i32 @_ZNK2v88internal9ScopeInfo19ContextHeaderLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %i.gi = add nsw i32 %i.gh, %.054246.i
  %i.gj = sext i32 %i.gi to i64
  %i.gk = shl nsw i64 %i.gj, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.gl = load i64, ptr %i.at, align 8
  %i.gm = add i64 %i.gl, -1
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.go, i64 %i.ge
  store atomic volatile i64 %i.gk, ptr %i.gp monotonic, align 8
  br label %_ZN2v88internal23SloppyArgumentsElements18set_mapped_entriesEiNS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_4HoleEEEEEE.exit99.i

_ZN2v88internal23SloppyArgumentsElements18set_mapped_entriesEiNS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_4HoleEEEEEE.exit99.i: ; preds = %bb.ai, %bb.ah, %.lr.ph247.i
  %i.gq = add nuw nsw i32 %.054246.i, 1           ; 2 uses
end_hunk_0
