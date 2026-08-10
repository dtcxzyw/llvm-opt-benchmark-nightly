inline.NumInlined: 841
inline.NumDeleted: 407
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2v88internal46Builtin_FunctionPrototypeLegacyArgumentsSetterEiPmPNS0_7IsolateE:bb.a
  br i1 %.not.i.i, label %_ZN2v88internalL51Builtin_Impl_FunctionPrototypeLegacyArgumentsSetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #12
  br label %_ZN2v88internalL51Builtin_Impl_FunctionPrototypeLegacyArgumentsSetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL51Builtin_Impl_FunctionPrototypeLegacyArgumentsSetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.f
  ret i64 %.sroa.019.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal43Builtin_FunctionPrototypeLegacyCallerGetterEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i13.i = icmp ult i32 %0, 4
  br i1 %.not.i13.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #13
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub, 40
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal12_GLOBAL__N_124IsSloppyNormalJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = add i16 %i.t, -2065
  %i.v = icmp ult i16 %i.u, 17
  br i1 %i.v, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_124IsSloppyNormalJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

bb.c:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.w = add i64 %i.m, 31
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = add i64 %i.y, 55
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i32, ptr %i.aa monotonic, align 4
  %i.ac = and i32 %i.ab, 31
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZN2v88internal12_GLOBAL__N_124IsSloppyNormalJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12_GLOBAL__N_124IsSloppyNormalJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal12_GLOBAL__N_124IsSloppyNormalJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.c
  %i.ae = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.af = add i64 %i.ae, 55
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i32, ptr %i.ag monotonic, align 4
  %i.ai = and i32 %i.ah, 64
  %.not.i15.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i15.i, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_124IsSloppyNormalJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal12_GLOBAL__N_124IsSloppyNormalJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal12_GLOBAL__N_124IsSloppyNormalJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.c, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.aj = tail call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 202, ptr null, i64 0) #12
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.ak, ptr noundef null) #12
  br label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_124IsSloppyNormalJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i
  tail call void @_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i32 noundef 114) #12
  %i.am = tail call ptr @_ZN2v88internal9Accessors23GetLegacyFunctionCallerEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEE(ptr noundef nonnull %2, ptr nonnull %i.l) #12
  %i.an = load i64, ptr %i.am, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal12_GLOBAL__N_124IsSloppyNormalJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  %.sroa.012.0.i = phi i64 [ %i.an, %bb.d ], [ %i.al, %_ZN2v88internal12_GLOBAL__N_124IsSloppyNormalJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.ao = load i32, ptr %i.e, align 8
  %i.ap = add nsw i32 %i.ao, -1
  store i32 %i.ap, ptr %i.e, align 8
  %i.aq = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL48Builtin_Impl_FunctionPrototypeLegacyCallerGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #12
  br label %_ZN2v88internalL48Builtin_Impl_FunctionPrototypeLegacyCallerGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL48Builtin_Impl_FunctionPrototypeLegacyCallerGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.f
  ret i64 %.sroa.012.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal43Builtin_FunctionPrototypeLegacyCallerSetterEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i11.i = icmp ult i32 %0, 4
  br i1 %.not.i11.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #13
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub, 40
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal12_GLOBAL__N_124IsSloppyNormalJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = add i16 %i.t, -2065
  %i.v = icmp ult i16 %i.u, 17
  br i1 %i.v, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_124IsSloppyNormalJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

bb.c:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.w = add i64 %i.m, 31
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = add i64 %i.y, 55
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i32, ptr %i.aa monotonic, align 4
  %i.ac = and i32 %i.ab, 31
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZN2v88internal12_GLOBAL__N_124IsSloppyNormalJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12_GLOBAL__N_124IsSloppyNormalJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal12_GLOBAL__N_124IsSloppyNormalJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.c
  %i.ae = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.af = add i64 %i.ae, 55
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i32, ptr %i.ag monotonic, align 4
  %i.ai = and i32 %i.ah, 64
  %.not.i13.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i13.i, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_124IsSloppyNormalJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal12_GLOBAL__N_124IsSloppyNormalJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal12_GLOBAL__N_124IsSloppyNormalJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.c, %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.aj = tail call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 202, ptr null, i64 0) #12
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.ak, ptr noundef null) #12
  br label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_124IsSloppyNormalJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.i
  tail call void @_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i32 noundef 114) #12
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.an = load i64, ptr %i.am, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal12_GLOBAL__N_124IsSloppyNormalJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  %.sroa.019.0.i = phi i64 [ %i.an, %bb.d ], [ %i.al, %_ZN2v88internal12_GLOBAL__N_124IsSloppyNormalJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.ao = load i32, ptr %i.e, align 8
  %i.ap = add nsw i32 %i.ao, -1
  store i32 %i.ap, ptr %i.e, align 8
  %i.aq = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL48Builtin_Impl_FunctionPrototypeLegacyCallerSetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #12
  br label %_ZN2v88internalL48Builtin_Impl_FunctionPrototypeLegacyCallerSetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL48Builtin_Impl_FunctionPrototypeLegacyCallerSetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.f
  ret i64 %.sroa.019.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_121CreateDynamicFunctionEPNS0_7IsolateENS0_16BuiltinArgumentsEPKc(ptr noundef %0, i64 %1, ptr %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.485", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::SaveAndSwitchContext", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::IncrementalStringBuilder", align 8 ; 81 uses
  %7 = alloca %"class.v8::internal::Factory::JSFunctionBuilder", align 8 ; 6 uses
  %i.a = trunc i64 %1 to i32                      ; 3 uses
  %i.b = add i32 %i.a, -5                         ; 5 uses
  %i.c = and i64 %1, 4294967295
  %.not.i135 = icmp eq i64 %i.c, 0
  br i1 %.not.i135, label %bb.b, label %_ZNK2v88internal16BuiltinArguments6targetEv.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #13
  unreachable

_ZNK2v88internal16BuiltinArguments6targetEv.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.e = shl i64 %1, 3
  %reass.sub.i = sub i64 %i.d, %i.e               ; 2 uses
  %i.f = add i64 %reass.sub.i, 16
  %i.g = inttoptr i64 %i.f to ptr                 ; 5 uses
  %i.h = load i64, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.i = add i64 %i.h, 39
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 8
  store i64 %i.k, ptr %4, align 8
  %i.l = call i64 @_ZNK2v88internal7Context12global_proxyEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 12 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 6 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.c, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !6

bb.c:                                             ; preds = %_ZNK2v88internal16BuiltinArguments6targetEv.exit
  %i.r = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #12
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %_ZNK2v88internal16BuiltinArguments6targetEv.exit, %bb.c
  %.0.i117 = phi ptr [ %i.r, %bb.c ], [ %i.n, %_ZNK2v88internal16BuiltinArguments6targetEv.exit ] ; 4 uses
  %i.s = ptrtoint ptr %.0.i117 to i64
  %i.t = add i64 %i.s, 8
  %i.u = inttoptr i64 %i.t to ptr
  store ptr %i.u, ptr %i.m, align 8
  store i64 %i.l, ptr %.0.i117, align 8
  %i.v = call noundef zeroext i1 @_ZN2v88internal8Builtins20AllowDynamicFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS4_INS0_8JSObjectEEE(ptr noundef nonnull %0, ptr nonnull %i.g, ptr nonnull %.0.i117) #12
  br i1 %i.v, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  call void @_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i32 noundef 35) #12
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 58816
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = icmp ne i64 %i.z, 0
  call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr [8 x i8], ptr %i.ac, i64 %i.z
  %i.ae = getelementptr i8, ptr %i.ad, i64 -8
  %.sroa.0.0.copyload.i136 = load i64, ptr %i.ae, align 8 ; 2 uses
  %i.af = load ptr, ptr %i.x, align 8             ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 560 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 568
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.e, label %_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !6

bb.e:                                             ; preds = %bb.d
  %i.al = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.af) #12
  br label %_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.al, %bb.e ], [ %i.ah, %bb.d ] ; 2 uses
  %i.am = ptrtoint ptr %.0.i.i.i to i64
  %i.an = add i64 %i.am, 8
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr %i.ao, ptr %i.ag, align 8
  store i64 %.sroa.0.0.copyload.i136, ptr %.0.i.i.i, align 8
  %i.ap = add i64 %.sroa.0.0.copyload.i136, -1
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load atomic volatile i64, ptr %i.aq monotonic, align 8
  %i.as = add i64 %i.ar, 31
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load i64, ptr %i.at, align 8
  call void @_ZN2v88internal20SaveAndSwitchContextC1EPNS0_7IsolateENS0_6TaggedINS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 %i.au) #12
  %i.av = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 104, ptr null, i64 0) #12
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.aw, ptr noundef null) #12 ; 0 uses
  call void @_ZN2v88internal11SaveContextD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %_ZNK2v88internal11MaybeHandleINS0_10JSFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.f:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN2v88internal24IncrementalStringBuilderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull %0) #12
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = icmp eq i32 %i.az, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = add i64 %i.bd, -1
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 4 uses
  %i.bh = load i32, ptr %i.bg, align 4            ; 2 uses
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bk = zext i32 %i.bh to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  store i8 40, ptr %i.bm, align 1
  %i.bn = load i32, ptr %i.bg, align 4
  %i.bo = load i32, ptr %i.bl, align 8
  %i.bp = icmp eq i32 %i.bn, %i.bo
  br i1 %i.bp, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit106.sink.split, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit106

bb.h:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %i.bk
  store i16 40, ptr %i.bq, align 2
  %i.br = load i32, ptr %i.bg, align 4
  %i.bs = load i32, ptr %i.bl, align 8
  %i.bt = icmp eq i32 %i.br, %i.bs
  br i1 %i.bt, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit106.sink.split, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit106

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit106.sink.split: ; preds = %bb.h, %bb.g
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #12
  br label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit106

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit106: ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit106.sink.split, %bb.h, %bb.g
  %i.bu = load i32, ptr %i.ay, align 8
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = load i8, ptr %3, align 1                ; 3 uses
  %.not5.i394 = icmp eq i8 %i.bw, 0               ; 2 uses
  br i1 %i.bv, label %.preheader388, label %.preheader389

.preheader389:                                    ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit106
  br i1 %.not5.i394, label %.critedge370.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader389
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.k

.preheader388:                                    ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit106
  br i1 %.not5.i394, label %_ZN2v88internal24IncrementalStringBuilder13AppendCStringIcEEvPKT_.exit.thread, label %.lr.ph396

.lr.ph396:                                        ; preds = %.preheader388
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph396, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit124
  %i.cd = phi i8 [ %i.bw, %.lr.ph396 ], [ %i.cr, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit124 ]
  %.0.i395 = phi ptr [ %3, %.lr.ph396 ], [ %i.ce, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit124 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i395, i64 1 ; 2 uses
  %i.cf = load ptr, ptr %i.ca, align 8
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = add i64 %i.cg, -1
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %i.cb, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cm = zext i32 %i.cj to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm
  store i8 %i.cd, ptr %i.cn, align 1
  %i.co = load i32, ptr %i.cb, align 4
  %i.cp = load i32, ptr %i.cc, align 8
  %i.cq = icmp eq i32 %i.co, %i.cp
  br i1 %i.cq, label %bb.j, label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit124

bb.j:                                             ; preds = %bb.i
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #12
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit124

_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit124: ; preds = %bb.i, %bb.j
  %i.cr = load i8, ptr %i.ce, align 1             ; 2 uses
  %.not5.i = icmp eq i8 %i.cr, 0
  br i1 %.not5.i, label %_ZN2v88internal24IncrementalStringBuilder13AppendCStringIcEEvPKT_.exit, label %bb.i, !llvm.loop !7

bb.k:                                             ; preds = %.lr.ph, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit127
  %i.cs = phi i8 [ %i.bw, %.lr.ph ], [ %i.dh, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit127 ]
  %.1.i393 = phi ptr [ %3, %.lr.ph ], [ %i.ct, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit127 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.1.i393, i64 1 ; 2 uses
  %i.cu = load ptr, ptr %i.bx, align 8
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = add i64 %i.cv, -1
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = load i32, ptr %i.by, align 4            ; 2 uses
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.by, align 4
  %i.da = sext i8 %i.cs to i16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dc = zext i32 %i.cy to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.dc
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_121CreateDynamicFunctionEPNS0_7IsolateENS0_16BuiltinArgumentsEPKc:bb.a

_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi5EEEvRAT__Kc.exit: ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi5EEEvRAT__Kc.exit.sink.split, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit125.2, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit122.2, %bb.bc
  %i.ye = icmp sgt i32 %i.a, 5
  br i1 %i.ye, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit139, label %bb.bj

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit139: ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi5EEEvRAT__Kc.exit
  %.neg = mul i64 %1, -4294967296
  %i.yf = ashr exact i64 %.neg, 32
  %i.yg = add i64 %i.yf, %1
  %i.yh = shl nsw i64 %i.yg, 3
  %i.yi = sub i64 %i.d, %i.yh
  %i.yj = inttoptr i64 %i.yi to ptr               ; 3 uses
  %i.yk = load i64, ptr %i.yj, align 8            ; 2 uses
  %i.yl = trunc i64 %i.yk to i1
  br i1 %i.yl, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i142, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit143

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i142: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit139
  %i.ym = add nsw i64 %i.yk, -1
  %i.yn = inttoptr i64 %i.ym to ptr
  %i.yo = load atomic volatile i64, ptr %i.yn monotonic, align 8
  %i.yp = add i64 %i.yo, 11
  %i.yq = inttoptr i64 %i.yp to ptr
  %i.yr = load atomic volatile i16, ptr %i.yq monotonic, align 2
  %i.ys = icmp ult i16 %i.yr, 128
  br i1 %i.ys, label %.thread350, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit143

_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit143: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit139, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i142
  %i.yt = call ptr @_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %0, ptr nonnull %i.yj) #12 ; 2 uses
  %.not375 = icmp eq ptr %i.yt, null
  br i1 %.not375, label %.critedge99, label %.thread350

.thread350:                                       ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i142, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit143
  %.sroa.07.0.i141345349 = phi ptr [ %i.yt, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit143 ], [ %i.yj, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i142 ]
  call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr nonnull %.sroa.07.0.i141345349) #12
  br label %bb.bj

bb.bj:                                            ; preds = %.thread350, %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi5EEEvRAT__Kc.exit
  %i.yu = load i32, ptr %i.ay, align 8
  %i.yv = icmp eq i32 %i.yu, 0
  br i1 %i.yv, label %bb.bk, label %.critedge374.preheader

.critedge374.preheader:                           ; preds = %bb.bj
  %i.yw = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 9 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.yz = load ptr, ptr %i.yw, align 8
  %i.za = load i64, ptr %i.yz, align 8
  %i.zb = add i64 %i.za, -1
  %i.zc = inttoptr i64 %i.zb to ptr
  %i.zd = load i32, ptr %i.yx, align 4            ; 2 uses
  %i.ze = add nsw i32 %i.zd, 1
  store i32 %i.ze, ptr %i.yx, align 4
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  %i.zg = zext i32 %i.zd to i64
  %i.zh = getelementptr inbounds nuw [2 x i8], ptr %i.zf, i64 %i.zg
  store i16 10, ptr %i.zh, align 2
  %i.zi = load i32, ptr %i.yx, align 4            ; 2 uses
  %i.zj = load i32, ptr %i.yy, align 8
  %i.zk = icmp eq i32 %i.zi, %i.zj
  br i1 %i.zk, label %bb.bo, label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit

bb.bk:                                            ; preds = %bb.bj
  %i.zl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.zm = load i32, ptr %i.zl, align 8
  %i.zn = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 11 uses
  %i.zo = load i32, ptr %i.zn, align 4            ; 4 uses
  %i.zp = sub nsw i32 %i.zm, %i.zo
  %i.zq = icmp sgt i32 %i.zp, 4
  %i.zr = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.zs = load ptr, ptr %i.zr, align 8
  %i.zt = load i64, ptr %i.zs, align 8
  %i.zu = add i64 %i.zt, -1
  %i.zv = inttoptr i64 %i.zu to ptr               ; 2 uses
  br i1 %i.zq, label %bb.bl, label %.preheader

.preheader:                                       ; preds = %bb.bk
  %i.zw = add nsw i32 %i.zo, 1
  store i32 %i.zw, ptr %i.zn, align 4
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  %i.zy = zext i32 %i.zo to i64
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zx, i64 %i.zy
  store i8 10, ptr %i.zz, align 1
  %i.aaa = load i32, ptr %i.zn, align 4           ; 2 uses
  %i.aab = load i32, ptr %i.zl, align 8
  %i.aac = icmp eq i32 %i.aaa, %i.aab
  br i1 %i.aac, label %bb.bm, label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit

bb.bl:                                            ; preds = %bb.bk
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  %i.aae = zext i32 %i.zo to i64
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aad, i64 %i.aae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aaf, ptr noundef nonnull align 1 dereferenceable(3) @.str.3, i64 3, i1 false)
  %i.aag = load i32, ptr %i.zn, align 4
  %i.aah = add nsw i32 %i.aag, 3                  ; 2 uses
  store i32 %i.aah, ptr %i.zn, align 4
  %i.aai = load i32, ptr %i.zl, align 8
  %i.aaj = icmp eq i32 %i.aah, %i.aai
  br i1 %i.aaj, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi4EEEvRAT__Kc.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi4EEEvRAT__Kc.exit

bb.bm:                                            ; preds = %.preheader
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #12
  %.pre455 = load i32, ptr %i.zn, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit

_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit: ; preds = %.preheader, %bb.bm
  %i.aak = phi i32 [ %i.aaa, %.preheader ], [ %.pre455, %bb.bm ] ; 2 uses
  %i.aal = load ptr, ptr %i.zr, align 8
  %i.aam = load i64, ptr %i.aal, align 8
  %i.aan = add i64 %i.aam, -1
  %i.aao = inttoptr i64 %i.aan to ptr
  %i.aap = add nsw i32 %i.aak, 1
  store i32 %i.aap, ptr %i.zn, align 4
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  %i.aar = zext i32 %i.aak to i64
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aaq, i64 %i.aar
  store i8 125, ptr %i.aas, align 1
  %i.aat = load i32, ptr %i.zn, align 4           ; 2 uses
  %i.aau = load i32, ptr %i.zl, align 8
  %i.aav = icmp eq i32 %i.aat, %i.aau
  br i1 %i.aav, label %bb.bn, label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.1

bb.bn:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #12
  %.pre456 = load i32, ptr %i.zn, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.1

_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.1: ; preds = %bb.bn, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit
  %i.aaw = phi i32 [ %.pre456, %bb.bn ], [ %i.aat, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit ] ; 2 uses
  %i.aax = load ptr, ptr %i.zr, align 8
  %i.aay = load i64, ptr %i.aax, align 8
  %i.aaz = add i64 %i.aay, -1
  %i.aba = inttoptr i64 %i.aaz to ptr
  %i.abb = add nsw i32 %i.aaw, 1
  store i32 %i.abb, ptr %i.zn, align 4
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aba, i64 16
  %i.abd = zext i32 %i.aaw to i64
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abc, i64 %i.abd
  store i8 41, ptr %i.abe, align 1
  %i.abf = load i32, ptr %i.zn, align 4
  %i.abg = load i32, ptr %i.zl, align 8
  %i.abh = icmp eq i32 %i.abf, %i.abg
  br i1 %i.abh, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi4EEEvRAT__Kc.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi4EEEvRAT__Kc.exit

bb.bo:                                            ; preds = %.critedge374.preheader
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #12
  %.pre453 = load i32, ptr %i.yx, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit

_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit: ; preds = %.critedge374.preheader, %bb.bo
  %i.abi = phi i32 [ %i.zi, %.critedge374.preheader ], [ %.pre453, %bb.bo ] ; 2 uses
  %i.abj = load ptr, ptr %i.yw, align 8
  %i.abk = load i64, ptr %i.abj, align 8
  %i.abl = add i64 %i.abk, -1
  %i.abm = inttoptr i64 %i.abl to ptr
  %i.abn = add nsw i32 %i.abi, 1
  store i32 %i.abn, ptr %i.yx, align 4
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  %i.abp = zext i32 %i.abi to i64
  %i.abq = getelementptr inbounds nuw [2 x i8], ptr %i.abo, i64 %i.abp
  store i16 125, ptr %i.abq, align 2
  %i.abr = load i32, ptr %i.yx, align 4           ; 2 uses
  %i.abs = load i32, ptr %i.yy, align 8
  %i.abt = icmp eq i32 %i.abr, %i.abs
  br i1 %i.abt, label %bb.bp, label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.1

bb.bp:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #12
  %.pre454 = load i32, ptr %i.yx, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.1

_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.1: ; preds = %bb.bp, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit
  %i.abu = phi i32 [ %.pre454, %bb.bp ], [ %i.abr, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit ] ; 2 uses
  %i.abv = load ptr, ptr %i.yw, align 8
  %i.abw = load i64, ptr %i.abv, align 8
  %i.abx = add i64 %i.abw, -1
  %i.aby = inttoptr i64 %i.abx to ptr
  %i.abz = add nsw i32 %i.abu, 1
  store i32 %i.abz, ptr %i.yx, align 4
  %i.aca = getelementptr inbounds nuw i8, ptr %i.aby, i64 16
  %i.acb = zext i32 %i.abu to i64
  %i.acc = getelementptr inbounds nuw [2 x i8], ptr %i.aca, i64 %i.acb
  store i16 41, ptr %i.acc, align 2
  %i.acd = load i32, ptr %i.yx, align 4
  %i.ace = load i32, ptr %i.yy, align 8
  %i.acf = icmp eq i32 %i.acd, %i.ace
  br i1 %i.acf, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi4EEEvRAT__Kc.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi4EEEvRAT__Kc.exit

_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi4EEEvRAT__Kc.exit.sink.split: ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.1, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.1, %bb.bl
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #12
  br label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi4EEEvRAT__Kc.exit

_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi4EEEvRAT__Kc.exit: ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi4EEEvRAT__Kc.exit.sink.split, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit.1, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.1, %bb.bl
  %i.acg = call ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #12 ; 2 uses
  %.not376 = icmp eq ptr %i.acg, null
  br i1 %.not376, label %.critedge99, label %bb.bq

bb.bq:                                            ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi4EEEvRAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.ach = sext i32 %i.b to i64
  %smax = call i32 @llvm.smax.i32(i32 %i.b, i32 0)
  %wide.trip.count423 = zext nneg i32 %smax to i64
  %exitcond422518 = icmp slt i32 %i.b, 1
  br i1 %exitcond422518, label %._crit_edge, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit145

bb.br:                                            ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit145
  %indvars.iv.next419 = add nuw nsw i64 %indvars.iv417514, 1 ; 3 uses
  %exitcond422 = icmp eq i64 %indvars.iv.next419, %wide.trip.count423
  br i1 %exitcond422, label %._crit_edge, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit145, !llvm.loop !12

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit145: ; preds = %bb.bq, %bb.br
  %indvars.iv417514 = phi i64 [ %indvars.iv.next419, %bb.br ], [ 0, %bb.bq ] ; 3 uses
  %i.aci = shl i64 %indvars.iv417514, 32
  %sext512 = sub i64 -25769803776, %i.aci
  %i.acj = ashr exact i64 %sext512, 32
  %i.ack = add i64 %1, %i.acj
  %i.acl = shl nsw i64 %i.ack, 3
  %i.acm = sub i64 %i.d, %i.acl
  %i.acn = inttoptr i64 %i.acm to ptr
  %i.aco = load i64, ptr %i.acn, align 8
  %i.acp = call noundef zeroext i1 @_ZN2v88internal6Object10IsCodeLikeENS0_6TaggedIS1_EEPNS0_7IsolateE(i64 %i.aco, ptr noundef nonnull %0) #12
  br i1 %i.acp, label %bb.br, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit145._crit_edge, !llvm.loop !12

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit145._crit_edge: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit145
  br label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.br, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit145._crit_edge, %bb.bq
  %indvars.iv418.lcssa = phi i64 [ %indvars.iv417514, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit145._crit_edge ], [ 0, %bb.bq ], [ %indvars.iv.next419, %bb.br ]
  %.not406.le = icmp sge i64 %indvars.iv418.lcssa, %i.ach
  %i.acq = load i64, ptr %i.g, align 8
  %i.acr = add i64 %i.acq, 39
  %i.acs = inttoptr i64 %i.acr to ptr
  %i.act = load i64, ptr %i.acs, align 8
  %i.acu = add i64 %i.act, -1
  %i.acv = inttoptr i64 %i.acu to ptr
  %i.acw = load atomic volatile i64, ptr %i.acv monotonic, align 8
  %i.acx = add i64 %i.acw, 31
  %i.acy = inttoptr i64 %i.acx to ptr
  %i.acz = load i64, ptr %i.acy, align 8
  %i.ada = load ptr, ptr %i.m, align 8            ; 2 uses
  %i.adb = load ptr, ptr %i.o, align 8
  %i.adc = icmp eq ptr %i.ada, %i.adb
  br i1 %i.adc, label %bb.bs, label %_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !6

bb.bs:                                            ; preds = %._crit_edge
  %i.add = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #12
  br label %_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %._crit_edge, %bb.bs
  %.0.i.i130 = phi ptr [ %i.add, %bb.bs ], [ %i.ada, %._crit_edge ] ; 3 uses
  %i.ade = ptrtoint ptr %.0.i.i130 to i64
  %i.adf = add i64 %i.ade, 8
  %i.adg = inttoptr i64 %i.adf to ptr
  store ptr %i.adg, ptr %i.m, align 8
  store i64 %i.acz, ptr %.0.i.i130, align 8
  %i.adh = call ptr @_ZN2v88internal8Compiler21GetFunctionFromStringEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS0_6HandleINS0_6ObjectEEEib(ptr noundef nonnull %0, ptr nonnull %.0.i.i130, ptr nonnull %i.acg, i32 noundef %i.tt, i1 noundef zeroext %.not406.le) #12 ; 2 uses
  %.not377 = icmp eq ptr %i.adh, null
  br i1 %.not377, label %_ZNK2v88internal11MaybeHandleINS0_10JSFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.adi = call ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef nonnull %0, ptr nonnull %i.adh, ptr nonnull %.0.i117, ptr null, i64 0) #12 ; 6 uses
  %.not378 = icmp eq ptr %i.adi, null
  br i1 %.not378, label %_ZNK2v88internal11MaybeHandleINS0_10JSFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.adj = load i64, ptr %i.adi, align 8
  %i.adk = add i64 %i.adj, 31
  %i.adl = inttoptr i64 %i.adk to ptr
  %i.adm = load atomic volatile i64, ptr %i.adl monotonic, align 8
  %i.adn = add i64 %i.adm, 55
  %i.ado = inttoptr i64 %i.adn to ptr             ; 2 uses
  %i.adp = load atomic volatile i32, ptr %i.ado monotonic, align 4
  %i.adq = or i32 %i.adp, 33554432
  store atomic volatile i32 %i.adq, ptr %i.ado monotonic, align 4
  %i.adr = add i64 %reass.sub.i, 8
  %i.ads = inttoptr i64 %i.adr to ptr             ; 2 uses
  %i.adt = load i64, ptr %i.ads, align 8          ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.adv = load i64, ptr %i.adu, align 8
  %i.adw = icmp eq i64 %i.adt, %i.adv
  br i1 %i.adw, label %_ZNK2v88internal11MaybeHandleINS0_10JSFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit: ; preds = %bb.bu
  %i.adx = load i64, ptr %i.g, align 8
  %i.ady = icmp eq i64 %i.adt, %i.adx
  br i1 %i.ady, label %_ZNK2v88internal11MaybeHandleINS0_10JSFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit
  %i.adz = call ptr @_ZN2v88internal10JSFunction13GetDerivedMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_10JSReceiverEEE(ptr noundef nonnull %0, ptr nonnull %i.g, ptr nonnull %i.ads) #12 ; 2 uses
  %.not379 = icmp eq ptr %i.adz, null
  br i1 %.not379, label %_ZNK2v88internal11MaybeHandleINS0_10JSFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.aea = load i64, ptr %i.adi, align 8
  %i.aeb = add i64 %i.aea, 31
  %i.aec = inttoptr i64 %i.aeb to ptr
  %i.aed = load atomic volatile i64, ptr %i.aec monotonic, align 8
  %i.aee = load ptr, ptr %i.m, align 8            ; 2 uses
  %i.aef = load ptr, ptr %i.o, align 8
  %i.aeg = icmp eq ptr %i.aee, %i.aef
  br i1 %i.aeg, label %bb.bx, label %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !6

bb.bx:                                            ; preds = %bb.bw
  %i.aeh = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #12
  br label %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.bw, %bb.bx
  %.0.i.i133 = phi ptr [ %i.aeh, %bb.bx ], [ %i.aee, %bb.bw ] ; 4 uses
  %i.aei = ptrtoint ptr %.0.i.i133 to i64
  %i.aej = add i64 %i.aei, 8
  %i.aek = inttoptr i64 %i.aej to ptr
  store ptr %i.aek, ptr %i.m, align 8
  store i64 %i.aed, ptr %.0.i.i133, align 8
  %i.ael = call ptr @_ZN2v88internal3Map14AsLanguageModeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_18SharedFunctionInfoEEE(ptr noundef nonnull %0, ptr nonnull %i.adz, ptr nonnull %.0.i.i133) #12
  %i.aem = load i64, ptr %i.adi, align 8
  %i.aen = add i64 %i.aem, 39
  %i.aeo = inttoptr i64 %i.aen to ptr
  %i.aep = load i64, ptr %i.aeo, align 8
  %i.aeq = load ptr, ptr %i.m, align 8            ; 2 uses
  %i.aer = load ptr, ptr %i.o, align 8
  %i.aes = icmp eq ptr %i.aeq, %i.aer
  br i1 %i.aes, label %bb.by, label %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread366, !prof !6

bb.by:                                            ; preds = %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.aet = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #12
  br label %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread366

_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread366: ; preds = %bb.by, %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.0.i.i134 = phi ptr [ %i.aet, %bb.by ], [ %i.aeq, %_ZN2v88internal6HandleINS0_18SharedFunctionInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 3 uses
  %i.aeu = ptrtoint ptr %.0.i.i134 to i64
  %i.aev = add i64 %i.aeu, 8
  %i.aew = inttoptr i64 %i.aev to ptr
  store ptr %i.aew, ptr %i.m, align 8
  store i64 %i.aep, ptr %.0.i.i134, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @_ZN2v88internal7Factory17JSFunctionBuilderC1EPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS5_INS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull %0, ptr nonnull %.0.i.i133, ptr nonnull %.0.i.i134) #12
  %i.aex = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aey = ptrtoint ptr %i.ael to i64
  store i64 %i.aey, ptr %i.aex, align 8
  %i.aez = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 0, ptr %i.aez, align 8
  %i.afa = call ptr @_ZN2v88internal7Factory17JSFunctionBuilder5BuildEv(ptr noundef nonnull align 8 dereferenceable(48) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %_ZNK2v88internal11MaybeHandleINS0_10JSFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

.critedge99:                                      ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit.peel, %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi4EEEvRAT__Kc.exit, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit143
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %_ZNK2v88internal11MaybeHandleINS0_10JSFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_10JSFunctionEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %.critedge99, %bb.bv, %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread366, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit, %bb.bu, %bb.bt, %_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.sroa.0215.11 = phi ptr [ null, %_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ null, %.critedge99 ], [ null, %bb.bt ], [ null, %_ZN2v88internal6HandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ null, %bb.bv ], [ %i.adi, %bb.bu ], [ %i.adi, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit ], [ %i.afa, %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread366 ]
  ret ptr %.sroa.0215.11
}

declare noundef zeroext i1 @_ZN2v88internal8Builtins20AllowDynamicFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS4_INS0_8JSObjectEEE(ptr noundef, ptr, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE(ptr noundef nonnull align 8 dereferenceable(64320), i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal20SaveAndSwitchContextC1EPNS0_7IsolateENS0_6TaggedINS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64) unnamed_addr #2

declare i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320), i64, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v88internal11SaveContextD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #3

declare void @_ZN2v88internal24IncrementalStringBuilderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #2

declare void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal24IncrementalStringBuilder6LengthEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal6Object10IsCodeLikeENS0_6TaggedIS1_EEPNS0_7IsolateE(i64, ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal8Compiler21GetFunctionFromStringEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS0_6HandleINS0_6ObjectEEEib(ptr noundef, ptr, ptr, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE(ptr noundef, ptr, ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN2v88internal10JSFunction13GetDerivedMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_10JSReceiverEEE(ptr noundef, ptr, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal3Map14AsLanguageModeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_18SharedFunctionInfoEEE(ptr noundef, ptr, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal7Factory17JSFunctionBuilderC1EPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS5_INS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr, ptr) unnamed_addr #2

declare ptr @_ZN2v88internal7Factory17JSFunctionBuilder5BuildEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #4

declare i64 @_ZNK2v88internal7Context12global_proxyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #2

declare void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare ptr @_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal6String11SlowFlattenINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE(ptr noundef %0, ptr %1, i8 noundef zeroext %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 3 uses
  %4 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %5 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 3 uses
  %6 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %.critedge, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n acquire, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal17PrototypeIterator23AdvanceFollowingProxiesEv:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 560 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 568
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = icmp eq ptr %i.al, %i.an
  br i1 %i.ao, label %bb.e, label %_ZNK2v88internal17PrototypeIterator9HasAccessEv.exit, !prof !6

bb.e:                                             ; preds = %bb.d
  %i.ap = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %i.ac) #12
  br label %_ZNK2v88internal17PrototypeIterator9HasAccessEv.exit

_ZNK2v88internal17PrototypeIterator9HasAccessEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i = phi ptr [ %i.ap, %bb.e ], [ %i.al, %bb.d ] ; 3 uses
  %i.aq = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.ar = add i64 %i.aq, 8
  %i.as = inttoptr i64 %i.ar to ptr
  store ptr %i.as, ptr %i.ak, align 8
  store i64 %i.aj, ptr %.0.i.i.i.i.i, align 8
  %.sroa.01.0.copyload.i = load ptr, ptr %i.a, align 8
  %i.at = call noundef zeroext i1 @_ZN2v88internal7Isolate9MayAccessENS0_12DirectHandleINS0_13NativeContextEEENS2_INS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320) %i.ac, ptr nonnull %.0.i.i.i.i.i, ptr %.sroa.01.0.copyload.i) #12
  br i1 %i.at, label %_ZNK2v88internal17PrototypeIterator9HasAccessEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK2v88internal17PrototypeIterator9HasAccessEv.exit
  %i.au = load ptr, ptr %0, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 664
  %i.aw = ptrtoint ptr %i.av to i64
  store i64 %i.aw, ptr %i.a, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.ax, align 4
  br label %bb.g

_ZNK2v88internal17PrototypeIterator9HasAccessEv.exit.thread: ; preds = %_ZNK2v88internal13JSGlobalProxy14IsDetachedFromEPNS0_7IsolateENS0_6TaggedINS0_14JSGlobalObjectEEE.exit.i, %_ZN2v88internal19IsAccessCheckNeededENS0_6TaggedINS0_10HeapObjectEEENS0_16PtrComprCageBaseE.exit.i, %_ZNK2v88internal17PrototypeIterator9HasAccessEv.exit
  %i.ay = call noundef zeroext i1 @_ZN2v88internal17PrototypeIterator43AdvanceFollowingProxiesIgnoringAccessChecksEv(ptr noundef nonnull align 8 dereferenceable(36) %0)
  br label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal17PrototypeIterator9HasAccessEv.exit.thread, %bb.f
  %.0 = phi i1 [ %i.ay, %_ZNK2v88internal17PrototypeIterator9HasAccessEv.exit.thread ], [ true, %bb.f ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal17PrototypeIterator43AdvanceFollowingProxiesIgnoringAccessChecksEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp eq ptr %i.b, null                   ; 3 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = icmp eq i16 %i.j, 302
  br i1 %i.k, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %storemerge.in.i = select i1 %i.c, ptr %i.l, ptr %i.b
  %storemerge.i = load i64, ptr %storemerge.in.i, align 8
  %i.m = add i64 %storemerge.i, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8 ; 2 uses
  %i.p = add i64 %i.o, 23
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  %i.s = load ptr, ptr %0, align 8                ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 664
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp eq i64 %i.r, %i.u
  br i1 %i.v, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 8
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = add i64 %i.o, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp ne i16 %i.ab, 304
  %i.ad = zext i1 %i.ac to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ae = phi i8 [ 1, %bb.c ], [ 0, %bb.d ], [ %i.ad, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.ae, ptr %i.af, align 4
  br i1 %i.c, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %i.r, ptr %i.l, align 8
  br label %_ZN2v88internal17PrototypeIterator22AdvanceIgnoringProxiesEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 560 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 568
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.i, label %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit.i, !prof !6

bb.i:                                             ; preds = %bb.h
  %i.al = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.s) #12
  br label %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.al, %bb.i ], [ %i.ah, %bb.h ] ; 3 uses
  %i.am = ptrtoint ptr %.0.i.i.i to i64
  %i.an = add i64 %i.am, 8
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr %i.ao, ptr %i.ag, align 8
  store i64 %i.r, ptr %.0.i.i.i, align 8
  store ptr %.0.i.i.i, ptr %i.a, align 8
  br label %_ZN2v88internal17PrototypeIterator22AdvanceIgnoringProxiesEv.exit

bb.j:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8            ; 2 uses
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 8
  %i.as = icmp sgt i32 %i.aq, 102399
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %0, align 8
  %i.au = tail call i64 @_ZN2v88internal7Isolate13StackOverflowEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.at) #12 ; 0 uses
  br label %_ZN2v88internal17PrototypeIterator22AdvanceIgnoringProxiesEv.exit

bb.l:                                             ; preds = %bb.j
  %i.av = tail call ptr @_ZN2v88internal7JSProxy12GetPrototypeENS0_12DirectHandleIS1_EE(ptr nonnull %i.b) #12 ; 3 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.m

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.l
  store ptr null, ptr %i.a, align 8
  br label %_ZN2v88internal17PrototypeIterator22AdvanceIgnoringProxiesEv.exit

bb.m:                                             ; preds = %bb.l
  store ptr %i.av, ptr %i.a, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = load i64, ptr %i.av, align 8
  %i.ba = load ptr, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 664
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = icmp eq i64 %i.az, %i.bc
  %i.be = zext i1 %i.bd to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bf = phi i8 [ 1, %bb.m ], [ %i.be, %bb.n ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.bf, ptr %i.bg, align 4
  br label %_ZN2v88internal17PrototypeIterator22AdvanceIgnoringProxiesEv.exit

_ZN2v88internal17PrototypeIterator22AdvanceIgnoringProxiesEv.exit: ; preds = %bb.o, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit, %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit.i, %bb.g, %bb.k
  %.1 = phi i1 [ true, %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit.i ], [ false, %bb.k ], [ true, %bb.g ], [ false, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit ], [ true, %bb.o ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN2v88internal7Isolate9MayAccessENS0_12DirectHandleINS0_13NativeContextEEENS2_INS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320), ptr, ptr) local_unnamed_addr #2

declare i64 @_ZNK2v88internal7Context13global_objectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #8

declare i64 @_ZN2v88internal7Isolate13StackOverflowEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #2

declare ptr @_ZN2v88internal7JSProxy12GetPrototypeENS0_12DirectHandleIS1_EE(ptr) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare ptr @_ZN2v88internal15JSBoundFunction8ToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal10JSFunction8ToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal9Accessors26GetLegacyFunctionArgumentsEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEE(ptr noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal9Accessors23GetLegacyFunctionCallerEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEE(ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin nounwind allocsize(0) }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8, !11}
!11 = !{!"llvm.loop.peeled.count", i32 1}
!12 = distinct !{!12, !8}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!15 = distinct !{!15, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!20 = distinct !{!20, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!21 = distinct !{!21, !8, !22, !23}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !8, !23, !22}
!25 = distinct !{!25, !8}
end_hunk_2
