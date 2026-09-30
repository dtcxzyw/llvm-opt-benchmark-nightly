Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/runtime-internal?download=true
inline.NumInlined: 991
inline.NumDeleted: 393
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2v88internal31Runtime_ThrowThrowMethodMissingEiPmPNS0_7IsolateE:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = tail call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 213, ptr null, i64 0) #17
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.i, ptr noundef null) #17
  store ptr %i.b, ptr %i.a, align 8
  %i.k = load i32, ptr %i.e, align 8
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.e, align 8
  %i.m = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #17
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.b, %bb.a
  ret i64 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal34Runtime_ThrowSymbolIteratorInvalidEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef nonnull %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = tail call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 206, ptr null, i64 0) #17
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.i, ptr noundef null) #17
  store ptr %i.b, ptr %i.a, align 8
  %i.k = load i32, ptr %i.e, align 8
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.e, align 8
  %i.m = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #17
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.b, %bb.a
  ret i64 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal21Runtime_ThrowNoAccessEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::SaveAndSwitchContext", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 58816
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr i8, ptr %i.o, i64 -8
  %.sroa.0.0.copyload.i2 = load i64, ptr %i.p, align 8 ; 2 uses
  %i.q = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 560 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 568
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.b, label %_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.w = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.q) #17
  br label %_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.w, %bb.b ], [ %i.s, %bb.a ] ; 2 uses
  %i.x = ptrtoint ptr %.0.i.i.i to i64
  %i.y = add i64 %i.x, 8
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %i.z, ptr %i.r, align 8
  store i64 %.sroa.0.0.copyload.i2, ptr %.0.i.i.i, align 8
  %i.aa = add i64 %.sroa.0.0.copyload.i2, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8
  %i.ad = add i64 %i.ac, 31
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ae, align 8
  call void @_ZN2v88internal20SaveAndSwitchContextC1EPNS0_7IsolateENS0_6TaggedINS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %2, i64 %i.af) #17
  %i.ag = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 104, ptr null, i64 0) #17
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.ah, ptr noundef null) #17
  call void @_ZN2v88internal11SaveContextD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  store ptr %i.b, ptr %i.a, align 8
  %i.aj = load i32, ptr %i.e, align 8
  %i.ak = add nsw i32 %i.aj, -1
  store i32 %i.ak, ptr %i.e, align 8
  %i.al = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.al, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #17
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.c, %_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  ret i64 %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal27Runtime_ThrowNotConstructorEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.465"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %1, ptr %3, align 8
  %i.h = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 121, ptr nonnull %3, i64 1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.i = load i64, ptr %i.h, align 8
  %i.j = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.i, ptr noundef null) #17
  store ptr %i.b, ptr %i.a, align 8
  %i.k = load i32, ptr %i.e, align 8
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.e, align 8
  %i.m = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #17
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.b, %bb.a
  ret i64 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal29Runtime_ThrowApplyNonFunctionEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [2 x %"class.v8::internal::DirectHandle.465"], align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = tail call ptr @_ZN2v88internal6Object6TypeOfEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %2, ptr %1) #17 ; 2 uses
  %i.i = load i64, ptr %1, align 8
  %i.j = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 10624
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.i, %i.n
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.p = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.20, i64 4, i8 noundef zeroext 0) #17 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.c, label %bb.j, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #18
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 6912
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, -1                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = load i64, ptr %i.h, align 8              ; 3 uses
  %4 = or disjoint i64 %i.t, 1
  %i.w = icmp eq i64 %i.v, %4
  br i1 %i.w, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.y = add i64 %i.x, 11
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i16, ptr %i.z monotonic, align 2
  %i.ab = and i16 %i.aa, -96
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = add i64 %i.v, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2
  %i.aj = and i16 %i.ai, -96
  %i.ak = icmp eq i16 %i.aj, 0
  br i1 %i.ak, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread33, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit: ; preds = %bb.e, %bb.f
  %i.al = tail call noundef zeroext i1 @_ZNK2v88internal6String10SlowEqualsENS0_6TaggedIS1_EE(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i64 %i.v) #17
  br i1 %i.al, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread33

_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread: ; preds = %bb.d, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit
  %i.am = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.21, i64 9, i8 noundef zeroext 0) #17 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.g, label %bb.j, !prof !8

bb.g:                                             ; preds = %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #18
  unreachable

_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread33: ; preds = %bb.f, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit
  %i.ao = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.22, i64 2, i8 noundef zeroext 0) #17 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit5, !prof !8

bb.h:                                             ; preds = %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread33
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #18
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit5: ; preds = %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread33
  %i.aq = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewConsStringINS0_6HandleEQsr3stdE16is_convertible_vITL0__INS0_6StringEENS0_12DirectHandleIS7_EEEEENT_IS7_E9MaybeTypeESC_SC_NS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ao, ptr nonnull %i.h, i8 noundef zeroext 0) #17 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit5
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #18
  unreachable

bb.j:                                             ; preds = %bb.b, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit5
  %.sroa.013.0 = phi ptr [ %i.am, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread ], [ %i.p, %bb.b ], [ %i.aq, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit5 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %1, ptr %3, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.013.0, ptr %i.as, align 8
  %i.at = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 13, ptr nonnull %3, i64 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.au = load i64, ptr %i.at, align 8
  %i.av = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.au, ptr noundef null) #17
  store ptr %i.b, ptr %i.a, align 8
  %i.aw = load i32, ptr %i.e, align 8
  %i.ax = add nsw i32 %i.aw, -1
  store i32 %i.ax, ptr %i.e, align 8
  %i.ay = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.ay, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.k, !prof !9

bb.k:                                             ; preds = %bb.j
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #17
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.k, %bb.j
  ret i64 %i.av
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal18Runtime_StackGuardEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [2 x %"class.std::unique_ptr.523"], align 16 ; 6 uses
  %4 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %5 = alloca %"class.v8::internal::StackLimitCheck", align 8 ; 4 uses
  %i.a = load atomic volatile i64, ptr @_ZZN2v88internalL28__RT_impl_Runtime_StackGuardENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateEE28trace_event_unique_atomic328 acquire, align 8 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #17 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.23) #17, !inline_history !12 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  store atomic volatile i64 %i.h, ptr @_ZZN2v88internalL28__RT_impl_Runtime_StackGuardENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateEE28trace_event_unique_atomic328 release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %4, align 8
  %i.i = load atomic volatile i8, ptr %.0.i monotonic, align 1
  %i.j = and i8 %i.i, 5
  %.not11.i = icmp eq i8 %i.j, 0
  br i1 %.not11.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.k = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #17 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 88, ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.24, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, i32 noundef 0) #17, !inline_history !0
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i2 = icmp eq ptr %i.q, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #17, !inline_history !1
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.u = load ptr, ptr %3, align 16               ; 3 uses
  %.not.i2.1 = icmp eq ptr %i.u, null
  br i1 %.not.i2.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #17, !inline_history !1
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %.0.i, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.24, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.o, ptr %i.aa, align 8
  store ptr %i.y, ptr %4, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr %2, ptr %5, align 8
  %i.ab = call noundef zeroext i1 @_ZNK2v88internal15StackLimitCheck15JsHasOverflowedEm(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 0) #17
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = call i64 @_ZN2v88internal7Isolate13StackOverflowEv(ptr noundef nonnull align 8 dereferenceable(64320) %2) #17
  br label %_ZN2v88internalL28__RT_impl_Runtime_StackGuardENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = call i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, i32 noundef 2) #17
  br label %_ZN2v88internalL28__RT_impl_Runtime_StackGuardENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL28__RT_impl_Runtime_StackGuardENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %bb.f, %bb.g
  %.sroa.09.0.i = phi i64 [ %i.ac, %bb.f ], [ %i.ae, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.af = load ptr, ptr %4, align 8
  %.not.i3 = icmp eq ptr %i.af, null
  br i1 %.not.i3, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internalL28__RT_impl_Runtime_StackGuardENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = load atomic volatile i8, ptr %i.ah monotonic, align 1
  %.not1.i = icmp eq i8 %i.ai, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #17 ; 2 uses
  %i.ak = load ptr, ptr %i.ag, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = load ptr, ptr %i.aj, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef %i.ak, ptr noundef %i.am, i64 noundef %i.ao) #17, !inline_history !2
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %_ZN2v88internalL28__RT_impl_Runtime_StackGuardENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i64 %.sroa.09.0.i
}

end_hunk_0
