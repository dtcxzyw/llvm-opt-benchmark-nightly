Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/builtins-object?download=true
inline.NumInlined: 902
inline.NumDeleted: 369
begin_hunk_0_@_ZN2v88internal26Builtin_ObjectDefineSetterEiPmPNS0_7IsolateE:bb.a
.critedge.i.i:                                    ; preds = %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENSE_ISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  %.sroa.09.0.i8791.i.i = phi ptr [ %i.z, %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENSE_ISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i.i ], [ %i.l, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i ]
  %i.ac = load i64, ptr %i.p, align 8             ; 2 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %.critedge.i.i
  %i.ae = add nsw i64 %i.ac, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = add i64 %i.ag, 13
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i8, ptr %i.ai monotonic, align 1
  %i.ak = and i8 %i.aj, 2
  %.not98.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not98.i.i, label %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i, label %bb.f

_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i: ; preds = %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %.critedge.i.i
  %i.al = tail call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 142, ptr null, i64 0) #9
  %i.am = load i64, ptr %i.al, align 8
  %i.an = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.am, ptr noundef null) #9
  br label %_ZN2v88internal12_GLOBAL__N_120ObjectDefineAccessorILNS0_17AccessorComponentE1EEENS0_6TaggedINS0_6ObjectEEEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS9_IS5_EESM_.exit.i

bb.f:                                             ; preds = %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i8 0, i64 32, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.p, ptr %i.ap, align 8
  store i8 15, ptr %3, align 8
  %i.aq = load i64, ptr %i.n, align 8             ; 2 uses
  %i.ar = and i64 %i.aq, 1
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.critedge38.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = add nsw i64 %i.aq, -1
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load atomic volatile i64, ptr %i.au monotonic, align 8
  %i.aw = add i64 %i.av, 11
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i16, ptr %i.ax monotonic, align 2
  %i.az = icmp ult i16 %i.ay, 129
  br i1 %i.az, label %.critedge38.i.i, label %_ZN2v88internal6Object13ToPropertyKeyIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_.exit.i.i

_ZN2v88internal6Object13ToPropertyKeyIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_.exit.i.i: ; preds = %bb.g
  %i.ba = tail call ptr @_ZN2v88internal6Object20ConvertToPropertyKeyINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS5_9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %i.n) #9 ; 2 uses
  %.not99.i.i = icmp eq ptr %i.ba, null
  br i1 %.not99.i.i, label %bb.i, label %.critedge38.i.i

.critedge38.i.i:                                  ; preds = %_ZN2v88internal6Object13ToPropertyKeyIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_.exit.i.i, %bb.g, %bb.f
  %.sroa.07.0.i9397.i.i = phi ptr [ %i.ba, %_ZN2v88internal6Object13ToPropertyKeyIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_.exit.i.i ], [ %i.n, %bb.g ], [ %i.n, %bb.f ]
  %i.bb = call i16 @_ZN2v88internal10JSReceiver17DefineOwnPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEEPNS0_18PropertyDescriptorENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %2, ptr nonnull %.sroa.09.0.i8791.i.i, ptr nonnull %.sroa.07.0.i9397.i.i, ptr noundef nonnull %3, i64 4294967297) #9 ; 2 uses
  %i.bc = trunc i16 %i.bb to i1
  br i1 %i.bc, label %_ZNKR2v85MaybeIbE8FromJustEv.exit.i.i, label %bb.i

_ZNKR2v85MaybeIbE8FromJustEv.exit.i.i:            ; preds = %.critedge38.i.i
  %i.bd = and i16 %i.bb, 256
  %.not100.i.i = icmp eq i16 %i.bd, 0
  br i1 %.not100.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit.i.i
  call void @_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i32 noundef 34) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNKR2v85MaybeIbE8FromJustEv.exit.i.i, %.critedge38.i.i, %_ZN2v88internal6Object13ToPropertyKeyIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_.exit.i.i
  %.sink.i.i = phi i64 [ 912, %_ZN2v88internal6Object13ToPropertyKeyIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_IS1_E9MaybeTypeEPNS0_7IsolateES6_.exit.i.i ], [ 912, %.critedge38.i.i ], [ 648, %bb.h ], [ 648, %_ZNKR2v85MaybeIbE8FromJustEv.exit.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %.sink.i.i
  %.sroa.054.1.i.i = load i64, ptr %i.be, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %_ZN2v88internal12_GLOBAL__N_120ObjectDefineAccessorILNS0_17AccessorComponentE1EEENS0_6TaggedINS0_6ObjectEEEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS9_IS5_EESM_.exit.i

_ZN2v88internal12_GLOBAL__N_120ObjectDefineAccessorILNS0_17AccessorComponentE1EEENS0_6TaggedINS0_6ObjectEEEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS9_IS5_EESM_.exit.i: ; preds = %bb.i, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i, %bb.e
  %.sroa.054.2.i.i = phi i64 [ %.sroa.054.1.i.i, %bb.i ], [ %i.an, %_ZN2v88internal10IsCallableENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i ], [ %i.ab, %bb.e ]
  store ptr %i.b, ptr %i.a, align 8
  %i.bf = load i32, ptr %i.e, align 8
  %i.bg = add nsw i32 %i.bf, -1
  store i32 %i.bg, ptr %i.e, align 8
  %i.bh = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.bh, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL31Builtin_Impl_ObjectDefineSetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.j, !prof !14

bb.j:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ObjectDefineAccessorILNS0_17AccessorComponentE1EEENS0_6TaggedINS0_6ObjectEEEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS9_IS5_EESM_.exit.i
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #9
  br label %_ZN2v88internalL31Builtin_Impl_ObjectDefineSetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL31Builtin_Impl_ObjectDefineSetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_120ObjectDefineAccessorILNS0_17AccessorComponentE1EEENS0_6TaggedINS0_6ObjectEEEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS9_IS5_EESM_.exit.i, %bb.j
  ret i64 %.sroa.054.2.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal26Builtin_ObjectLookupGetterEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !24 {
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
  %.not.i6.i = icmp ult i32 %0, 4
  br i1 %.not.i6.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments2atINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_6HandleIT_EEi.exit.i, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v88internal16BuiltinArguments2atINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_6HandleIT_EEi.exit.i: ; preds = %bb.a
  %.not.i7.i = icmp eq i32 %0, 4
  br i1 %.not.i7.i, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_6HandleIT_EEi.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

bb.d:                                             ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_6HandleIT_EEi.exit.i
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.a, 3
  %reass.sub.i = sub i64 %i.i, %i.j               ; 2 uses
  %i.k = add i64 %reass.sub.i, 40
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = add i64 %reass.sub.i, 48
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call fastcc i64 @_ZN2v88internal12_GLOBAL__N_120ObjectLookupAccessorEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_6ObjectEEENS0_17AccessorComponentE(ptr noundef nonnull %2, ptr %i.l, ptr %i.n, i32 noundef 0)
  store ptr %i.c, ptr %i.b, align 8
  %i.p = load i32, ptr %i.f, align 8
  %i.q = add nsw i32 %i.p, -1
  store i32 %i.q, ptr %i.f, align 8
  %i.r = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.r, %i.e
  br i1 %.not.i.i, label %_ZN2v88internalL31Builtin_Impl_ObjectLookupGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.e, !prof !14

bb.e:                                             ; preds = %bb.d
  store ptr %i.e, ptr %i.d, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #9
  br label %_ZN2v88internalL31Builtin_Impl_ObjectLookupGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL31Builtin_Impl_ObjectLookupGetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  ret i64 %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal26Builtin_ObjectLookupSetterEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !25 {
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
  %.not.i6.i = icmp ult i32 %0, 4
  br i1 %.not.i6.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments2atINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_6HandleIT_EEi.exit.i, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v88internal16BuiltinArguments2atINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_6HandleIT_EEi.exit.i: ; preds = %bb.a
  %.not.i7.i = icmp eq i32 %0, 4
  br i1 %.not.i7.i, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_6HandleIT_EEi.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

bb.d:                                             ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_6HandleIT_EEi.exit.i
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.a, 3
  %reass.sub.i = sub i64 %i.i, %i.j               ; 2 uses
  %i.k = add i64 %reass.sub.i, 40
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = add i64 %reass.sub.i, 48
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call fastcc i64 @_ZN2v88internal12_GLOBAL__N_120ObjectLookupAccessorEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_6ObjectEEENS0_17AccessorComponentE(ptr noundef nonnull %2, ptr %i.l, ptr %i.n, i32 noundef 1)
  store ptr %i.c, ptr %i.b, align 8
  %i.p = load i32, ptr %i.f, align 8
  %i.q = add nsw i32 %i.p, -1
  store i32 %i.q, ptr %i.f, align 8
  %i.r = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.r, %i.e
  br i1 %.not.i.i, label %_ZN2v88internalL31Builtin_Impl_ObjectLookupSetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.e, !prof !14

bb.e:                                             ; preds = %bb.d
  store ptr %i.e, ptr %i.d, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #9
  br label %_ZN2v88internalL31Builtin_Impl_ObjectLookupSetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL31Builtin_Impl_ObjectLookupSetterENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  ret i64 %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal20Builtin_ObjectFreezeEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !26 {
bb.a:
  %3 = zext nneg i32 %0 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i10.i = icmp sgt i32 %0, 5
  %i.h = ptrtoint ptr %1 to i64
  %i.i = shl nuw nsw i64 %3, 3
  %reass.sub = sub i64 %i.h, %i.i
  %i.j = add i64 %reass.sub, 48
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i10.i, ptr %i.k, ptr %i.l ; 3 uses
  %i.m = load i64, ptr %.sroa.0.0.i.i, align 8    ; 3 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread.i

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.a
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 299
  br i1 %i.u, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread.i

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.a
  store ptr %i.b, ptr %i.a, align 8
  store i32 %i.f, ptr %i.e, align 8
  br label %_ZN2v88internalL25Builtin_Impl_ObjectFreezeENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.v = tail call i16 @_ZN2v88internal10JSReceiver17SetIntegrityLevelEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_18PropertyAttributesENS0_11ShouldThrowE(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i, i32 noundef 5, i32 noundef 1) #9
  %i.w = trunc i16 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 912
  %spec.select.i = select i1 %i.w, ptr %.sroa.0.0.i.i, ptr %i.x
  %.sroa.017.0.pre.i = load i64, ptr %spec.select.i, align 8 ; 2 uses
  %.pre.i = load i32, ptr %i.e, align 8
  %.pre35.i = load ptr, ptr %i.c, align 8
  %i.y = add nsw i32 %.pre.i, -1
  %i.z = icmp eq ptr %.pre35.i, %i.d
  store ptr %i.b, ptr %i.a, align 8
  store i32 %i.y, ptr %i.e, align 8
  br i1 %i.z, label %_ZN2v88internalL25Builtin_Impl_ObjectFreezeENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.b, !prof !15

bb.b:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #9
  br label %_ZN2v88internalL25Builtin_Impl_ObjectFreezeENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL25Builtin_Impl_ObjectFreezeENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, %bb.b
  %.sroa.017.038.i = phi i64 [ %i.m, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread.i ], [ %.sroa.017.0.pre.i, %bb.b ], [ %.sroa.017.0.pre.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i ]
  ret i64 %.sroa.017.038.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal31Builtin_ObjectPrototypeGetProtoEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !28 {
bb.a:
  %3 = alloca %"class.v8::internal::PrototypeIterator", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i14.i = icmp ult i32 %0, 4
  br i1 %.not.i14.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
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
  br i1 %i.n, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i, !prof !12

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 299
  br i1 %i.u, label %.critedge.i, label %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i, !prof !13

_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.v = tail call ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef nonnull %2, ptr nonnull %i.l, ptr noundef null) #9 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %.thread.sink.split.i, label %.critedge.i

.critedge.i:                                      ; preds = %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %.sroa.08.0.i4145.i = phi ptr [ %i.v, %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i ], [ %i.l, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr %2, ptr %3, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %.sroa.08.0.i4145.i, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  store i8 0, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.aa, align 8
  br label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.i.i

_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.i.i: ; preds = %bb.c, %.critedge.i
  %i.ab = call noundef zeroext i1 @_ZN2v88internal17PrototypeIterator23AdvanceFollowingProxiesEv(ptr noundef nonnull align 8 dereferenceable(36) %3)
  br i1 %i.ab, label %bb.c, label %_ZN2v88internal10JSReceiver12GetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.thread.i

_ZN2v88internal10JSReceiver12GetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.thread.i: ; preds = %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %.thread.sink.split.i

bb.c:                                             ; preds = %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.i.i
  %i.ac = load i8, ptr %i.z, align 4, !range !16, !noundef !17
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN2v88internal10JSReceiver12GetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i, label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.i.i, !llvm.loop !27

_ZN2v88internal10JSReceiver12GetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i: ; preds = %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr %i.x, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %.not51.i = icmp eq ptr %.sroa.01.0.copyload.i.i.i, null
  br i1 %.not51.i, label %.thread.sink.split.i, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal10JSReceiver12GetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i
  %i.ae = load i64, ptr %.sroa.01.0.copyload.i.i.i, align 8 ; 2 uses
  %i.af = icmp eq ptr %2, null
  br i1 %i.af, label %_ZN2v88internalL36Builtin_Impl_ObjectPrototypeGetProtoENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %.thread.i, !prof !29

.thread.sink.split.i:                             ; preds = %_ZN2v88internal10JSReceiver12GetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.i, %_ZN2v88internal10JSReceiver12GetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit.thread.i, %_ZN2v88internal6Object8ToObjectINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleISG_EEEEENSF_ISC_E9MaybeTypeEPNS0_7IsolateESH_PKc.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ah = load i64, ptr %i.ag, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.sink.split.i, %bb.d
  %.sroa.024.149.i = phi i64 [ %i.ae, %bb.d ], [ %i.ah, %.thread.sink.split.i ] ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.ai = load i32, ptr %i.e, align 8
  %i.aj = add nsw i32 %i.ai, -1
  store i32 %i.aj, ptr %i.e, align 8
  %i.ak = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ak, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL36Builtin_Impl_ObjectPrototypeGetProtoENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.e, !prof !14

bb.e:                                             ; preds = %.thread.i
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #9
  br label %_ZN2v88internalL36Builtin_Impl_ObjectPrototypeGetProtoENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL36Builtin_Impl_ObjectPrototypeGetProtoENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.d, %.thread.i, %bb.e
  %.sroa.024.150.i = phi i64 [ %i.ae, %bb.d ], [ %.sroa.024.149.i, %.thread.i ], [ %.sroa.024.149.i, %bb.e ]
  ret i64 %.sroa.024.150.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal31Builtin_ObjectPrototypeSetProtoEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !30 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.456"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i34.i = icmp ult i32 %0, 4
  br i1 %.not.i34.i, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i: ; preds = %bb.a
  %i.h = sext i32 %0 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl nsw i64 %i.h, 3
  %reass.sub.i = sub i64 %i.i, %i.j               ; 2 uses
  %i.k = add i64 %reass.sub.i, 40
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq i64 %i.m, %i.p
  br i1 %i.q, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread.i, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.i

_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.i: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.r = load i64, ptr %i.n, align 8              ; 5 uses
  %i.s = icmp eq i64 %i.m, %i.r
  br i1 %i.s, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread.i, label %bb.d

_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread.i: ; preds = %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.i, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit.i
  %i.t = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.4, i64 30, i8 noundef zeroext 0) #9 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.c, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i, !prof !11

bb.c:                                             ; preds = %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i: ; preds = %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr %i.t, ptr %3, align 8
  %i.v = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 34, ptr nonnull %3, i64 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.w = load i64, ptr %i.v, align 8
  %i.x = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.w, ptr noundef null) #9
  br label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit33.thread.i

bb.d:                                             ; preds = %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.i
  %.not.i35.i = icmp eq i32 %0, 4
  br i1 %.not.i35.i, label %bb.e, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i, !prof !11

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i: ; preds = %bb.d
  %i.y = add i64 %reass.sub.i, 48
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = icmp eq i64 %i.aa, %i.p
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i
  %i.ac = trunc i64 %i.aa to i1
  br i1 %i.ac, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit33.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit33.thread.i

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit33.i: ; preds = %bb.f
  %i.ad = add nsw i64 %i.aa, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2
  %i.aj = icmp ugt i16 %i.ai, 299
  %i.ak = trunc i64 %i.m to i1
  %or.cond.i = and i1 %i.aj, %i.ak
  br i1 %or.cond.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit33.thread.i

bb.g:                                             ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i
  %.old.i = trunc i64 %i.m to i1
  br i1 %.old.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit33.thread.i

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.g, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit33.i
  %i.al = add nsw i64 %i.m, -1
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load atomic volatile i64, ptr %i.am monotonic, align 8
  %i.ao = add i64 %i.an, 11
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i16, ptr %i.ap monotonic, align 2
  %i.ar = icmp ugt i16 %i.aq, 299
  br i1 %i.ar, label %bb.h, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit33.thread.i

bb.h:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.as = tail call i16 @_ZN2v88internal10JSReceiver12SetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEEbNS0_11ShouldThrowE(ptr noundef nonnull %2, ptr nonnull %i.l, ptr nonnull %i.z, i1 noundef zeroext true, i32 noundef 1) #9
  %i.at = trunc i16 %i.as to i1
  br i1 %i.at, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.av = load i64, ptr %i.au, align 8
  br label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit33.thread.i

bb.j:                                             ; preds = %bb.h
  %i.aw = load i64, ptr %i.n, align 8
  br label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit33.thread.i

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit33.thread.i: ; preds = %bb.j, %bb.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.g, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit33.i, %bb.f, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i
  %.sroa.052.1.i = phi i64 [ %i.x, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i ], [ %i.av, %bb.i ], [ %i.aw, %bb.j ], [ %i.r, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit33.i ], [ %i.r, %bb.f ], [ %i.r, %bb.g ], [ %i.r, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  store ptr %i.b, ptr %i.a, align 8
  %i.ax = load i32, ptr %i.e, align 8
  %i.ay = add nsw i32 %i.ax, -1
  store i32 %i.ay, ptr %i.e, align 8
  %i.az = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.az, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL36Builtin_Impl_ObjectPrototypeSetProtoENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.k, !prof !14

bb.k:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit33.thread.i
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #9
  br label %_ZN2v88internalL36Builtin_Impl_ObjectPrototypeSetProtoENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL36Builtin_Impl_ObjectPrototypeSetProtoENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit33.thread.i, %bb.k
  ret i64 %.sroa.052.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal35Builtin_ObjectGetOwnPropertySymbolsEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !31 {
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
  %.not.i23.i.i = icmp sgt i32 %0, 5
  %i.h = ptrtoint ptr %1 to i64
  %i.i = shl nuw nsw i64 %3, 3
  %reass.sub = sub i64 %i.h, %i.i
  %i.j = add i64 %reass.sub, 48
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i.i = select i1 %.not.i23.i.i, ptr %i.k, ptr %i.l ; 3 uses
  %i.m = load i64, ptr %.sroa.0.0.i.i.i, align 8  ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i.i, !prof !12

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %bb.a
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 299
  br i1 %i.u, label %.critedge.i.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i.i, !prof !13

_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %bb.a
  %i.v = tail call ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i.i, ptr noundef null) #9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.b, label %.critedge.i.i

bb.b:                                             ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %bb.c

.critedge.i.i:                                    ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  %.sroa.07.0.i5357.i.i = phi ptr [ %i.v, %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i.i ], [ %.sroa.0.0.i.i.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i ]
  %i.x = tail call ptr @_ZN2v88internal14KeyAccumulator7GetKeysEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_17KeyCollectionModeENS0_14PropertyFilterENS0_17GetKeysConversionEbb(ptr noundef nonnull %2, ptr nonnull %.sroa.07.0.i5357.i.i, i32 noundef 0, i32 noundef 8, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #9 ; 3 uses
  %.not60.i.i = icmp eq ptr %i.x, null
  br i1 %.not60.i.i, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i, label %.critedge22.i.i

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i: ; preds = %.critedge.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %bb.c

.critedge22.i.i:                                  ; preds = %.critedge.i.i
  %i.z = load i64, ptr %i.x, align 8
  %i.aa = add i64 %i.z, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = lshr i64 %i.ad, 32
  %i.af = trunc nuw i64 %i.ae to i32
  %i.ag = tail call ptr @_ZN2v88internal7Factory22NewJSArrayWithElementsENS0_12DirectHandleINS0_14FixedArrayBaseEEENS0_12ElementsKindEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.x, i8 noundef zeroext 3, i32 noundef %i.af, i8 noundef zeroext 0) #9
  br label %bb.c

bb.c:                                             ; preds = %.critedge22.i.i, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i, %bb.b
  %.sroa.036.1.in.i.i = phi ptr [ %i.w, %bb.b ], [ %i.ag, %.critedge22.i.i ], [ %i.y, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i.i ]
  %.sroa.036.1.i.i = load i64, ptr %.sroa.036.1.in.i.i, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.ah = load i32, ptr %i.e, align 8
  %i.ai = add nsw i32 %i.ah, -1
  store i32 %i.ai, ptr %i.e, align 8
  %i.aj = load ptr, ptr %i.c, align 8
  %.not.i.i.i = icmp eq ptr %i.aj, %i.d
  br i1 %.not.i.i.i, label %_ZN2v88internalL40Builtin_Impl_ObjectGetOwnPropertySymbolsENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #9
  br label %_ZN2v88internalL40Builtin_Impl_ObjectGetOwnPropertySymbolsENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL40Builtin_Impl_ObjectGetOwnPropertySymbolsENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.d
  ret i64 %.sroa.036.1.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal22Builtin_ObjectIsFrozenEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !32 {
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
  %.not.i13.i = icmp sgt i32 %0, 5
  %i.h = ptrtoint ptr %1 to i64
  %i.i = shl nuw nsw i64 %3, 3
  %reass.sub = sub i64 %i.h, %i.i
  %i.j = add i64 %reass.sub, 48
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i13.i, ptr %i.k, ptr %i.l ; 2 uses
  %i.m = load i64, ptr %.sroa.0.0.i.i, align 8    ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZNKR2v85MaybeIbE8FromJustEv.exit.thread.i

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.a
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 299
  br i1 %i.u, label %bb.b, label %_ZNKR2v85MaybeIbE8FromJustEv.exit.thread.i

bb.b:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.v = tail call i16 @_ZN2v88internal10JSReceiver18TestIntegrityLevelEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i, i32 noundef 5) #9
  %.fr43.i = freeze i16 %i.v                      ; 2 uses
  %i.w = trunc i16 %.fr43.i to i1
  br i1 %i.w, label %_ZNKR2v85MaybeIbE8FromJustEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %bb.d

_ZNKR2v85MaybeIbE8FromJustEv.exit.i:              ; preds = %bb.b
  %i.y = and i16 %.fr43.i, 256
  %.sroa.5.0.extract.trunc.not.i = icmp eq i16 %i.y, 0
  %spec.select.i = select i1 %.sroa.5.0.extract.trunc.not.i, i64 680, i64 672
  br label %_ZNKR2v85MaybeIbE8FromJustEv.exit.thread.i

_ZNKR2v85MaybeIbE8FromJustEv.exit.thread.i:       ; preds = %bb.a, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNKR2v85MaybeIbE8FromJustEv.exit.i
  %i.z = phi i64 [ %spec.select.i, %_ZNKR2v85MaybeIbE8FromJustEv.exit.i ], [ 672, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ 672, %bb.a ]
  %.in.in.in.i = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %.in.in.i = ptrtoint ptr %.in.in.in.i to i64
  %.in.i = add i64 %.in.in.i, -55464
  %i.aa = inttoptr i64 %.in.i to ptr
  %.sroa.03.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  br label %bb.d

bb.d:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit.thread.i, %bb.c
  %.sroa.019.0.in.i = phi ptr [ %i.x, %bb.c ], [ %.sroa.03.0.in.i.i, %_ZNKR2v85MaybeIbE8FromJustEv.exit.thread.i ]
  %.sroa.019.0.i = load i64, ptr %.sroa.019.0.in.i, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.ab = load i32, ptr %i.e, align 8
  %i.ac = add nsw i32 %i.ab, -1
  store i32 %i.ac, ptr %i.e, align 8
  %i.ad = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ad, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL27Builtin_Impl_ObjectIsFrozenENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.e, !prof !14

bb.e:                                             ; preds = %bb.d
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #9
  br label %_ZN2v88internalL27Builtin_Impl_ObjectIsFrozenENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL27Builtin_Impl_ObjectIsFrozenENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  ret i64 %.sroa.019.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal22Builtin_ObjectIsSealedEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !33 {
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
  %.not.i13.i = icmp sgt i32 %0, 5
  %i.h = ptrtoint ptr %1 to i64
  %i.i = shl nuw nsw i64 %3, 3
  %reass.sub = sub i64 %i.h, %i.i
  %i.j = add i64 %reass.sub, 48
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i13.i, ptr %i.k, ptr %i.l ; 2 uses
  %i.m = load i64, ptr %.sroa.0.0.i.i, align 8    ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZNKR2v85MaybeIbE8FromJustEv.exit.thread.i

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.a
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 299
  br i1 %i.u, label %bb.b, label %_ZNKR2v85MaybeIbE8FromJustEv.exit.thread.i

bb.b:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.v = tail call i16 @_ZN2v88internal10JSReceiver18TestIntegrityLevelEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_18PropertyAttributesE(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i, i32 noundef 4) #9
  %.fr43.i = freeze i16 %i.v                      ; 2 uses
  %i.w = trunc i16 %.fr43.i to i1
  br i1 %i.w, label %_ZNKR2v85MaybeIbE8FromJustEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 912
  br label %bb.d

_ZNKR2v85MaybeIbE8FromJustEv.exit.i:              ; preds = %bb.b
  %i.y = and i16 %.fr43.i, 256
  %.sroa.5.0.extract.trunc.not.i = icmp eq i16 %i.y, 0
  %spec.select.i = select i1 %.sroa.5.0.extract.trunc.not.i, i64 680, i64 672
  br label %_ZNKR2v85MaybeIbE8FromJustEv.exit.thread.i

_ZNKR2v85MaybeIbE8FromJustEv.exit.thread.i:       ; preds = %bb.a, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZNKR2v85MaybeIbE8FromJustEv.exit.i
  %i.z = phi i64 [ %spec.select.i, %_ZNKR2v85MaybeIbE8FromJustEv.exit.i ], [ 672, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ 672, %bb.a ]
  %.in.in.in.i = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %.in.in.i = ptrtoint ptr %.in.in.in.i to i64
  %.in.i = add i64 %.in.in.i, -55464
  %i.aa = inttoptr i64 %.in.i to ptr
  %.sroa.03.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  br label %bb.d

bb.d:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit.thread.i, %bb.c
  %.sroa.019.0.in.i = phi ptr [ %i.x, %bb.c ], [ %.sroa.03.0.in.i.i, %_ZNKR2v85MaybeIbE8FromJustEv.exit.thread.i ]
  %.sroa.019.0.i = load i64, ptr %.sroa.019.0.in.i, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.ab = load i32, ptr %i.e, align 8
  %i.ac = add nsw i32 %i.ab, -1
  store i32 %i.ac, ptr %i.e, align 8
  %i.ad = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ad, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL27Builtin_Impl_ObjectIsSealedENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.e, !prof !14

bb.e:                                             ; preds = %bb.d
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #9
  br label %_ZN2v88internalL27Builtin_Impl_ObjectIsSealedENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL27Builtin_Impl_ObjectIsSealedENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  ret i64 %.sroa.019.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal39Builtin_ObjectGetOwnPropertyDescriptorsEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !35 {
bb.a:
  %3 = alloca %"class.v8::internal::PropertyDescriptor", align 8 ; 7 uses
  %4 = zext nneg i32 %0 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i52.i = icmp sgt i32 %0, 5
  %i.h = ptrtoint ptr %1 to i64
  %i.i = shl nuw nsw i64 %4, 3
  %reass.sub = sub i64 %i.h, %i.i
  %i.j = add i64 %reass.sub, 48
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i52.i, ptr %i.k, ptr %i.l ; 3 uses
  %i.m = load i64, ptr %.sroa.0.0.i.i, align 8    ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i, !prof !12

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.a
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 299
  br i1 %i.u, label %.critedge.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i, !prof !13

_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %bb.a
  %i.v = tail call ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i, ptr noundef null) #9 ; 2 uses
  %.not114.i = icmp eq ptr %i.v, null
  br i1 %.not114.i, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.x = load i64, ptr %i.w, align 8
  br label %.thread.i

.critedge.i:                                      ; preds = %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %.sroa.07.0.i101105.i = phi ptr [ %i.v, %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit.i ], [ %.sroa.0.0.i.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i.i ] ; 2 uses
  %i.y = tail call ptr @_ZN2v88internal14KeyAccumulator7GetKeysEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_17KeyCollectionModeENS0_14PropertyFilterENS0_17GetKeysConversionEbb(ptr noundef nonnull %2, ptr nonnull %.sroa.07.0.i101105.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #9 ; 3 uses
  %.not115.i = icmp eq ptr %i.y, null
  br i1 %.not115.i, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, label %.critedge47.i

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i: ; preds = %.critedge.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.aa = load i64, ptr %i.z, align 8
  br label %.thread.i

.critedge47.i:                                    ; preds = %.critedge.i
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ab, align 8
  %i.ac = add i64 %.sroa.0.0.copyload.i.i.i.i, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.af = add i64 %i.ae, 31
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = add i64 %i.ah, 1375
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i64, ptr %i.aj monotonic, align 8
  %i.al = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.am = load ptr, ptr %i.c, align 8
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.c, label %_ZN2v88internal7Isolate15object_functionEv.exit.i, !prof !11

bb.c:                                             ; preds = %.critedge47.i
  %i.ao = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %2) #9
  br label %_ZN2v88internal7Isolate15object_functionEv.exit.i

_ZN2v88internal7Isolate15object_functionEv.exit.i: ; preds = %bb.c, %.critedge47.i
  %.0.i.i.i.i = phi ptr [ %i.ao, %bb.c ], [ %i.al, %.critedge47.i ] ; 3 uses
  %i.ap = ptrtoint ptr %.0.i.i.i.i to i64
  %i.aq = add i64 %i.ap, 8
  %i.ar = inttoptr i64 %i.aq to ptr
  store ptr %i.ar, ptr %i.a, align 8
  store i64 %i.ak, ptr %.0.i.i.i.i, align 8
  %i.as = tail call ptr @_ZN2v88internal7Factory11NewJSObjectENS0_12DirectHandleINS0_10JSFunctionEEENS0_14AllocationTypeENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %.0.i.i.i.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #9 ; 2 uses
  %i.at = load i64, ptr %i.y, align 8
  %i.au = add i64 %i.at, -1
  %i.av = inttoptr i64 %i.au to ptr               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = lshr i64 %i.ax, 32
  %i.az = trunc nuw i64 %i.ay to i32
  %.not119.i = icmp sgt i32 %i.az, 0
  br i1 %.not119.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal7Isolate15object_functionEv.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %i.bb = phi ptr [ %i.av, %.lr.ph.i ], [ %i.bv, %bb.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.be = load atomic volatile i64, ptr %i.bd monotonic, align 8
  %i.bf = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bg = load ptr, ptr %i.c, align 8
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.e, label %_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.bi = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #9
  br label %_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.bi, %bb.e ], [ %i.bf, %bb.d ] ; 4 uses
  %i.bj = ptrtoint ptr %.0.i.i.i to i64
  %i.bk = add i64 %i.bj, 8
  %i.bl = inttoptr i64 %i.bk to ptr
  store ptr %i.bl, ptr %i.a, align 8
  store i64 %i.be, ptr %.0.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store i8 0, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i8 0, i64 32, i1 false)
  %i.bm = call i16 @_ZN2v88internal10JSReceiver24GetOwnPropertyDescriptorEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEEPNS0_18PropertyDescriptorE(ptr noundef nonnull %2, ptr nonnull %.sroa.07.0.i101105.i, ptr nonnull %.0.i.i.i, ptr noundef nonnull %3) #9 ; 2 uses
  %i.bn = trunc i16 %i.bm to i1
  br i1 %i.bn, label %_ZNKR2v85MaybeIbE8FromJustEv.exit50.i, label %bb.j

_ZNKR2v85MaybeIbE8FromJustEv.exit50.i:            ; preds = %_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.bo = and i16 %i.bm, 256
  %.not116.i = icmp eq i16 %i.bo, 0
  br i1 %.not116.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit50.i
  %i.bp = call ptr @_ZN2v88internal18PropertyDescriptor8ToObjectEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %2) #9
  %i.bq = call i16 @_ZN2v88internal10JSReceiver18CreateDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %2, ptr %i.as, ptr nonnull %.0.i.i.i, ptr %i.bp, i64 1) #9 ; 2 uses
  %i.br = trunc i16 %i.bq to i1
  br i1 %i.br, label %_ZNKR2v85MaybeIbE8FromJustEv.exit.i, label %bb.g, !prof !14

bb.g:                                             ; preds = %bb.f
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #9
  br label %_ZNKR2v85MaybeIbE8FromJustEv.exit.i

_ZNKR2v85MaybeIbE8FromJustEv.exit.i:              ; preds = %bb.g, %bb.f
  %i.bs = and i16 %i.bq, 256
  %.not117.i = icmp eq i16 %i.bs, 0
  br i1 %.not117.i, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #10
  unreachable

bb.i:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit.i, %_ZNKR2v85MaybeIbE8FromJustEv.exit50.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bt = load i64, ptr %i.y, align 8
  %i.bu = add i64 %i.bt, -1
  %i.bv = inttoptr i64 %i.bu to ptr               ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = ashr i64 %i.bx, 32
  %.not.i = icmp slt i64 %indvars.iv.next.i, %i.by
  br i1 %.not.i, label %bb.d, label %._crit_edge.i, !llvm.loop !34

bb.j:                                             ; preds = %_ZN2v88internal6HandleINS0_4NameEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ca = load i64, ptr %i.bz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %.thread.i

._crit_edge.i:                                    ; preds = %bb.i, %_ZN2v88internal7Isolate15object_functionEv.exit.i
  %i.cb = load i64, ptr %i.as, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.i, %bb.j, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i, %bb.b
  %.sroa.078.4112.i = phi i64 [ %i.cb, %._crit_edge.i ], [ %i.ca, %bb.j ], [ %i.aa, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.i ], [ %i.x, %bb.b ]
  store ptr %i.b, ptr %i.a, align 8
  %i.cc = load i32, ptr %i.e, align 8
  %i.cd = add nsw i32 %i.cc, -1
  store i32 %i.cd, ptr %i.e, align 8
  %i.ce = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.ce, %i.d
  br i1 %.not.i.i, label %_ZN2v88internalL44Builtin_Impl_ObjectGetOwnPropertyDescriptorsENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.k, !prof !14

bb.k:                                             ; preds = %.thread.i
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #9
  br label %_ZN2v88internalL44Builtin_Impl_ObjectGetOwnPropertyDescriptorsENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL44Builtin_Impl_ObjectGetOwnPropertyDescriptorsENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %.thread.i, %bb.k
  ret i64 %.sroa.078.4112.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal18Builtin_ObjectSealEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !36 {
bb.a:
  %3 = zext nneg i32 %0 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not.i10.i = icmp sgt i32 %0, 5
  %i.h = ptrtoint ptr %1 to i64
  %i.i = shl nuw nsw i64 %3, 3
  %reass.sub = sub i64 %i.h, %i.i
  %i.j = add i64 %reass.sub, 48
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.0.0.i.i = select i1 %.not.i10.i, ptr %i.k, ptr %i.l ; 3 uses
  %i.m = load i64, ptr %.sroa.0.0.i.i, align 8    ; 3 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread.i

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.a
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp ugt i16 %i.t, 299
  br i1 %i.u, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread.i

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.a
  store ptr %i.b, ptr %i.a, align 8
  store i32 %i.f, ptr %i.e, align 8
  br label %_ZN2v88internalL23Builtin_Impl_ObjectSealENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.v = tail call i16 @_ZN2v88internal10JSReceiver17SetIntegrityLevelEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_18PropertyAttributesENS0_11ShouldThrowE(ptr noundef nonnull %2, ptr nonnull %.sroa.0.0.i.i, i32 noundef 4, i32 noundef 1) #9
  %i.w = trunc i16 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 912
  %spec.select.i = select i1 %i.w, ptr %.sroa.0.0.i.i, ptr %i.x
  %.sroa.017.0.pre.i = load i64, ptr %spec.select.i, align 8 ; 2 uses
  %.pre.i = load i32, ptr %i.e, align 8
  %.pre35.i = load ptr, ptr %i.c, align 8
  %i.y = add nsw i32 %.pre.i, -1
  %i.z = icmp eq ptr %.pre35.i, %i.d
  store ptr %i.b, ptr %i.a, align 8
  store i32 %i.y, ptr %i.e, align 8
  br i1 %i.z, label %_ZN2v88internalL23Builtin_Impl_ObjectSealENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit, label %bb.b, !prof !15

bb.b:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #9
  br label %_ZN2v88internalL23Builtin_Impl_ObjectSealENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit

_ZN2v88internalL23Builtin_Impl_ObjectSealENS0_16BuiltinArgumentsEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, %bb.b
  %.sroa.017.038.i = phi i64 [ %i.m, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.thread.i ], [ %.sroa.017.0.pre.i, %bb.b ], [ %.sroa.017.0.pre.i, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread.i ]
  ret i64 %.sroa.017.038.i
}

declare ptr @_ZN2v88internal6Object13ConvertToNameINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_4NameEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #4

declare ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef, ptr, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11PropertyKeyC2INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_INS0_4NameEENS3_IS5_EEEEEPNS0_7IsolateES6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr %2) unnamed_addr #5 comdat align 2 !guid !37 {
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
  %i.k = load atomic i32, ptr %i.j monotonic, align 8 ; 4 uses
  %i.l = and i32 %i.k, -536870909
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 10624
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.p, align 8, !range !16, !noundef !17
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  br label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread6

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 55464
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = add i64 %i.w, -55464
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 648
  br label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread6

_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread6: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.z, %bb.f ], [ %i.s, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 1432
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = add i64 %i.ab, -1
  %i.ad = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ae = lshr exact i32 %i.k, 2
  %i.af = and i32 %i.ae, 16777215                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 68
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = lshr i32 %i.af, 12
  %i.an = xor i32 %i.am, %i.af
  %i.ao = mul i32 %i.al, %i.an                    ; 2 uses
  %i.ap = lshr i32 %i.ao, 12
  %i.aq = and i32 %i.ap, 4095
  %i.ar = xor i32 %i.aq, %i.ao
  %i.as = mul i32 %i.ar, %i.aj                    ; 2 uses
  %i.at = lshr i32 %i.as, 12
  %i.au = and i32 %i.at, 4095
  %i.av = xor i32 %i.au, %i.as
  %i.aw = mul i32 %i.av, %i.ah
  %i.ax = and i32 %i.aw, 16777215                 ; 2 uses
  %i.ay = lshr i32 %i.ax, 12
  %i.az = xor i32 %i.ay, %i.ax
  %i.ba = zext nneg i32 %i.az to i64
  store i64 %i.ba, ptr %i.d, align 8
  br label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

bb.g:                                             ; preds = %bb.b
  %i.bb = trunc i32 %i.k to i1
  %i.bc = and i32 %i.k, 3
  %i.bd = icmp eq i32 %i.bc, 0
  %or.cond.i.i = or i1 %i.bd, %i.bb
  br i1 %or.cond.i.i, label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit, label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread

_ZN2v88internal4Name14AsIntegerIndexEPm.exit:     ; preds = %bb.g
  %i.be = tail call noundef zeroext i1 @_ZN2v88internal6String18SlowAsIntegerIndexEPm(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull %i.d) #9
  br i1 %i.be, label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit, label %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread

_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread: ; preds = %bb.g, %bb.a, %_ZN2v88internal4Name14AsIntegerIndexEPm.exit
  store i64 -1, ptr %i.d, align 8
  %i.bf = load i64, ptr %2, align 8
  %i.bg = add i64 %i.bf, -1
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load atomic volatile i64, ptr %i.bh monotonic, align 8
  %i.bj = add i64 %i.bi, 11
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load atomic volatile i16, ptr %i.bk monotonic, align 2
  %i.bm = and i16 %i.bl, -96
  %.not.i = icmp eq i16 %i.bm, 32
  br i1 %.not.i, label %bb.h, label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

bb.h:                                             ; preds = %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread
  %i.bn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.bq = load i8, ptr %i.bp, align 8, !range !16
  %i.br = trunc nuw i8 %i.bq to i1
  %not..i.i.i = xor i1 %i.bo, true
  %i.bs = select i1 %not..i.i.i, i1 true, i1 %i.br
  br i1 %i.bs, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.bu = load i8, ptr %i.bt, align 8, !range !16, !noundef !17
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt27__throw_bad_optional_accessv() #11
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i: ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.bx = load ptr, ptr %i.bw, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i:  ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, %bb.h
  %.pn.i.i = phi ptr [ %i.bx, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i ], [ %1, %bb.h ]
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 58464
  %i.by = load ptr, ptr %.in.i.i, align 8
  %i.bz = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %2) #9
  br label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i, %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread, %_ZN2v88internal4Name14AsIntegerIndexEPm.exit, %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread6
  %storemerge.in = phi ptr [ %2, %_ZN2v88internal4Name14AsIntegerIndexEPm.exit ], [ %2, %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread6 ], [ %i.bz, %_ZNK2v88internal7Isolate12string_tableEv.exit.i ], [ %2, %_ZN2v88internal4Name14AsIntegerIndexEPm.exit.thread ]
  %storemerge = ptrtoint ptr %storemerge.in to i64
  store i64 %storemerge, ptr %0, align 8
  ret void
}
end_hunk_0
