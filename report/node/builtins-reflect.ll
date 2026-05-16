inline.NumInlined: 314
inline.NumDeleted: 183
begin_hunk_0_@_ZN2v88internal29Builtin_ReflectDefinePropertyEiPmPNS0_7IsolateE:bb.a
  br i1 %.not.i35.i, label %bb.c, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit36.i, !prof !5

bb.c:                                             ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit36.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i
  %i.m = add i64 %reass.sub.i, 56
  %i.n = inttoptr i64 %i.m to ptr                 ; 3 uses
  %.not.i37.i = icmp ult i32 %0, 7
  br i1 %.not.i37.i, label %bb.d, label %_ZNK2v88internal16BuiltinArguments2atINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_6HandleIT_EEi.exit.i, !prof !5

bb.d:                                             ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit36.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

_ZNK2v88internal16BuiltinArguments2atINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_6HandleIT_EEi.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit36.i
  %i.o = add i64 %reass.sub.i, 64
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.l, align 8              ; 2 uses
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_6HandleIT_EEi.exit.i
  %i.s = add nsw i64 %i.q, -1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.v = add i64 %i.u, 11
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i16, ptr %i.w monotonic, align 2
  %i.y = icmp ugt i16 %i.x, 299
  br i1 %i.y, label %bb.f, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments2atINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_6HandleIT_EEi.exit.i
  %i.z = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str, i64 22, i8 noundef zeroext 0) #10 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.e, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i, !prof !5

bb.e:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %i.z, ptr %3, align 8
  %i.ab = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 33, ptr nonnull %3, i64 1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.ac, ptr noundef null) #10
  br label %bb.j

bb.f:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ae = load i64, ptr %i.n, align 8             ; 2 uses
  %i.af = trunc i64 %i.ae to i1
  br i1 %i.af, label %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal6Object6ToNameINS0_12DirectHandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS3_IS1_EEE.exit.i

_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.f
  %i.ag = add nsw i64 %i.ae, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.aj = add i64 %i.ai, 11
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load atomic volatile i16, ptr %i.ak monotonic, align 2
  %i.am = icmp ult i16 %i.al, 129
  br i1 %i.am, label %.critedge.i, label %_ZN2v88internal6Object6ToNameINS0_12DirectHandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS3_IS1_EEE.exit.i

_ZN2v88internal6Object6ToNameINS0_12DirectHandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS3_IS1_EEE.exit.i: ; preds = %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %bb.f
  %i.an = tail call ptr @_ZN2v88internal6Object13ConvertToNameINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %i.n) #10 ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %_ZN2v88internal6Object6ToNameINS0_12DirectHandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS3_IS1_EEE.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ap = load i64, ptr %i.ao, align 8
  br label %bb.j

.critedge.i:                                      ; preds = %_ZN2v88internal6Object6ToNameINS0_12DirectHandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS3_IS1_EEE.exit.i, %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %.sroa.05.0.i8791.i = phi ptr [ %i.an, %_ZN2v88internal6Object6ToNameINS0_12DirectHandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS3_IS1_EEE.exit.i ], [ %i.n, %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i8 0, ptr %4, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i8 0, i64 32, i1 false)
  %i.ar = call noundef zeroext i1 @_ZN2v88internal18PropertyDescriptor20ToPropertyDescriptorEPNS0_7IsolateENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEPS1_(ptr noundef nonnull %2, ptr %i.p, ptr noundef nonnull %4) #10
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge.i
  %i.as = call i16 @_ZN2v88internal10JSReceiver17DefineOwnPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEEPNS0_18PropertyDescriptorENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %2, ptr nonnull %i.l, ptr nonnull %.sroa.05.0.i8791.i, ptr noundef nonnull %4, i64 1) #10 ; 2 uses
  %i.at = trunc i16 %i.as to i1
  br i1 %i.at, label %_ZNKR2v85MaybeIbE8FromJustEv.exit.i, label %bb.i

_ZNKR2v85MaybeIbE8FromJustEv.exit.i:              ; preds = %bb.h
  %i.au = and i16 %i.as, 256
  %.not92.i = icmp eq i16 %i.au, 0
  %.sroa.04.0.v.i.i = select i1 %.not92.i, i64 680, i64 672
  br label %bb.i

bb.i:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit.i, %bb.h, %.critedge.i
  %.sink.i = phi i64 [ 912, %.critedge.i ], [ %.sroa.04.0.v.i.i, %_ZNKR2v85MaybeIbE8FromJustEv.exit.i ], [ 912, %bb.h ]
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %.sink.i
  %.sroa.058.1.i = load i64, ptr %i.av, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i
  %.sroa.058.3.i = phi i64 [ %i.ad, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i ], [ %.sroa.058.1.i, %bb.i ], [ %i.ap, %bb.g ]
  store ptr %i.b, ptr %i.a, align 8
  %i.aw = load i32, ptr %i.e, align 8
  %i.ax = add nsw i32 %i.aw, -1
  store i32 %i.ax, ptr %i.e, align 8
  %i.ay = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ay, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL34Builtin_Impl_ReflectDefinePropertyENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.k, !prof !6

bb.k:                                             ; preds = %bb.j
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #10
  br label %_ZN2v88internalL34Builtin_Impl_ReflectDefinePropertyENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL34Builtin_Impl_ReflectDefinePropertyENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.j, %bb.k
  ret i64 %.sroa.058.3.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal22Builtin_ReflectOwnKeysEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i21.i = icmp ult i32 %0, 5
  br i1 %.not.i21.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub = sub i64 %i.i, %i.j
  %i.k = add i64 %reass.sub, 48
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 299
  br i1 %i.u, label %bb.d, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.4, i64 15, i8 noundef zeroext 0) #10 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %i.v, ptr %3, align 8
  %i.x = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 33, ptr nonnull %3, i64 1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.y = load i64, ptr %i.x, align 8
  %i.z = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.y, ptr noundef null) #10
  br label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.aa = tail call ptr @_ZN2v88internal14KeyAccumulator7GetKeysEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_17KeyCollectionModeENS0_14PropertyFilterENS0_17GetKeysConversionEbb(ptr noundef nonnull %2, ptr nonnull %i.l, i32 noundef 0, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #10 ; 3 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, label %.critedge.i

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ac = load i64, ptr %i.ab, align 8
  br label %bb.e

.critedge.i:                                      ; preds = %bb.d
  %i.ad = load i64, ptr %i.aa, align 8
  %i.ae = add i64 %i.ad, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %4 = load i64, ptr %i.ag, align 8
  %5 = lshr i64 %4, 32
  %6 = trunc nuw i64 %5 to i32
  %i.ah = tail call ptr @_ZN2v88internal7Factory22NewJSArrayWithElementsENS0_12DirectHandleINS0_14FixedArrayBaseEEENS0_12ElementsKindEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.aa, i8 noundef zeroext 3, i32 noundef %6, i8 noundef zeroext 0) #10
  %i.ai = load i64, ptr %i.ah, align 8
  br label %bb.e

bb.e:                                             ; preds = %.critedge.i, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i
  %.sroa.032.1.i = phi i64 [ %i.z, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i ], [ %i.ai, %.critedge.i ], [ %i.ac, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.aj = load i32, ptr %i.e, align 8
  %i.ak = add nsw i32 %i.aj, -1
  store i32 %i.ak, ptr %i.e, align 8
  %i.al = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.al, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL27Builtin_Impl_ReflectOwnKeysENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #10
  br label %_ZN2v88internalL27Builtin_Impl_ReflectOwnKeysENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL27Builtin_Impl_ReflectOwnKeysENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.f
  ret i64 %.sroa.032.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal18Builtin_ReflectSetEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::PropertyKey", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8
  %.not.i35.i = icmp sgt i32 %0, 5
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.a, 3
  %reass.sub.i = sub i64 %i.i, %i.j               ; 4 uses
  %i.k = add i64 %reass.sub.i, 48
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 3 uses
  %.sroa.0.0.i.i = select i1 %.not.i35.i, ptr %i.l, ptr %i.m ; 3 uses
  %.not.i36.i = icmp sgt i32 %0, 6
  %i.n = add i64 %reass.sub.i, 56
  %i.o = inttoptr i64 %i.n to ptr
  %.sroa.0.0.i37.i = select i1 %.not.i36.i, ptr %i.o, ptr %i.m ; 3 uses
  %.not.i41.i = icmp sgt i32 %0, 7
  %i.p = add i64 %reass.sub.i, 64
  %i.q = inttoptr i64 %i.p to ptr
  %.sroa.0.0.i42.i = select i1 %.not.i41.i, ptr %i.q, ptr %i.m
  %i.r = load i64, ptr %.sroa.0.0.i.i, align 8    ; 2 uses
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i.i, label %bb.b

_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i.i: ; preds = %bb.a
  %i.t = add nsw i64 %i.r, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.w = add i64 %i.v, 11
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i16, ptr %i.x monotonic, align 2
  %i.z = icmp ugt i16 %i.y, 299
  br i1 %i.z, label %_ZN2v88internal7TryCastINS0_10JSReceiverENS0_6ObjectENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i.i, %bb.a
  %i.aa = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.5, i64 11, i8 noundef zeroext 0) #10 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.c, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %i.aa, ptr %3, align 8
  %i.ac = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 33, ptr nonnull %3, i64 1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.ad, ptr noundef null) #10
  br label %bb.e

_ZN2v88internal7TryCastINS0_10JSReceiverENS0_6ObjectENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i: ; preds = %_ZN2v88internal2IsINS0_10JSReceiverENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.i.i
  %i.af = icmp sgt i32 %0, 8
  %i.ag = add i64 %reass.sub.i, 72
  %i.ah = inttoptr i64 %i.ag to ptr
  %.sroa.055.0.i = select i1 %i.af, ptr %i.ah, ptr %.sroa.0.0.i.i
  %i.ai = load i64, ptr %.sroa.0.0.i37.i, align 8 ; 2 uses
  %i.aj = trunc i64 %i.ai to i1
  br i1 %i.aj, label %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal6Object6ToNameINS0_12DirectHandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS3_IS1_EEE.exit.i

_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZN2v88internal7TryCastINS0_10JSReceiverENS0_6ObjectENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i
  %i.ak = add nsw i64 %i.ai, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = icmp ult i16 %i.ap, 129
  br i1 %i.aq, label %.critedge.i, label %_ZN2v88internal6Object6ToNameINS0_12DirectHandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS3_IS1_EEE.exit.i

_ZN2v88internal6Object6ToNameINS0_12DirectHandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS3_IS1_EEE.exit.i: ; preds = %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZN2v88internal7TryCastINS0_10JSReceiverENS0_6ObjectENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i
  %i.ar = tail call ptr @_ZN2v88internal6Object13ConvertToNameINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i37.i) #10 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %_ZN2v88internal6Object6ToNameINS0_12DirectHandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS3_IS1_EEE.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.at = load i64, ptr %i.as, align 8
  br label %bb.e

.critedge.i:                                      ; preds = %_ZN2v88internal6Object6ToNameINS0_12DirectHandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS3_IS1_EEE.exit.i, %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %.sroa.05.0.i9094.i = phi ptr [ %i.ar, %_ZN2v88internal6Object6ToNameINS0_12DirectHandleEEENT_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES4_IS1_EQsr3stdE16is_convertible_vISA_NS3_IS1_EEE.exit.i ], [ %.sroa.0.0.i37.i, %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZN2v88internal11PropertyKeyC2INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_INS0_4NameEENS3_IS5_EEEEEPNS0_7IsolateES6_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %2, ptr nonnull %.sroa.05.0.i9094.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %4, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.av = load i64, ptr %i.au, align 8
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull %2, ptr %.sroa.055.0.i, ptr %.sroa.0.0.copyload.i.i.i, i64 noundef %i.av, ptr nonnull %.sroa.0.0.i.i, i32 noundef 3)
  %i.aw = call i16 @_ZN2v88internal6Object16SetSuperPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %5, ptr %.sroa.0.0.i42.i, i32 noundef 0, i64 1) #10 ; 2 uses
  %i.ax = trunc i16 %i.aw to i1
  %i.ay = and i16 %i.aw, 256
  %.not95.i = icmp eq i16 %i.ay, 0
  %.sroa.04.0.v.i.i = select i1 %.not95.i, i64 680, i64 672
  %.sroa.072.0.in.v.i = select i1 %i.ax, i64 %.sroa.04.0.v.i.i, i64 912
  %.sroa.072.0.in.i = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.072.0.in.v.i
  %.sroa.072.0.i = load i64, ptr %.sroa.072.0.in.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.e

bb.e:                                             ; preds = %.critedge.i, %bb.d, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i
  %.sroa.072.2.i = phi i64 [ %i.ae, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i ], [ %.sroa.072.0.i, %.critedge.i ], [ %i.at, %bb.d ]
  store ptr %i.c, ptr %i.b, align 8
  %i.az = load i32, ptr %i.f, align 8
  %i.ba = add nsw i32 %i.az, -1
  store i32 %i.ba, ptr %i.f, align 8
  %i.bb = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.bb, %i.e
  br i1 %.not.i.i, label %_ZN2v88internalL23Builtin_Impl_ReflectSetENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  store ptr %i.e, ptr %i.d, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #10
  br label %_ZN2v88internalL23Builtin_Impl_ReflectSetENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL23Builtin_Impl_ReflectSetENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.f
  ret i64 %.sroa.072.2.i
}

declare i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320), i64, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal18PropertyDescriptor20ToPropertyDescriptorEPNS0_7IsolateENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEPS1_(ptr noundef, ptr, ptr noundef) local_unnamed_addr #2

declare i16 @_ZN2v88internal10JSReceiver17DefineOwnPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEEPNS0_18PropertyDescriptorENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef, ptr, ptr, ptr noundef, i64) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #3

declare ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal6Object13ConvertToNameINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal14KeyAccumulator7GetKeysEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_17KeyCollectionModeENS0_14PropertyFilterENS0_17GetKeysConversionEbb(ptr noundef, ptr, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory22NewJSArrayWithElementsENS0_12DirectHandleINS0_14FixedArrayBaseEEENS0_12ElementsKindEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11PropertyKeyC2INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_INS0_4NameEENS3_IS5_EEEEEPNS0_7IsolateES6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr %2) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp ult i16 %i.h, 128
  br i1 %i.i, label %bb.b, label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load atomic i32, ptr %i.j monotonic, align 4 ; 4 uses
  %i.l = and i32 %i.k, -536870909
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.g

end_hunk_0
