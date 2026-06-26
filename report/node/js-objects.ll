inline.NumInlined: 7694
inline.NumDeleted: 2227
begin_hunk_0_@_ZN2v88internal10JSReceiver18CreateDataPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedES1_EEEEENS0_11PropertyKeyENS4_INS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE:bb.a

_ZN2v88internal11PropertyKey7GetNameEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.b
  %.sroa.02.0.copyload.i = phi ptr [ %i.k, %bb.b ], [ %2, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread ]
  %i.l = tail call i16 @_ZN2v88internal6Object20CannotCreatePropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_IS1_EESH_NS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, ptr nonnull %1, ptr %.sroa.02.0.copyload.i, ptr %4, i64 0) #21
  br label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.m = tail call i16 @_ZN2v88internal10JSReceiver18CreateDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11PropertyKeyENS4_INS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, ptr nonnull %1, ptr %2, i64 %3, ptr %4, i64 %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN2v88internal11PropertyKey7GetNameEPNS0_7IsolateE.exit
  %.sroa.016.0 = phi i16 [ %i.l, %_ZN2v88internal11PropertyKey7GetNameEPNS0_7IsolateE.exit ], [ %i.m, %bb.c ]
  ret i16 %.sroa.016.0
}

declare i16 @_ZN2v88internal6Object20CannotCreatePropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_IS1_EESH_NS_5MaybeINS0_11ShouldThrowEEE(ptr noundef, ptr, ptr, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i16 0, 258) i16 @_ZN2v88internal8JSObject18CreateDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11PropertyKeyENS4_INS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, ptr %1, ptr %2, i64 %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::LookupIterator", align 8 ; 5 uses
  %.not22 = icmp eq i64 %3, -1
  br i1 %.not22, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_122TryFastAddDataPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef %0, ptr %1, ptr %2, ptr %4, i32 noundef 0)
  br i1 %i.a, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef %0, ptr %1, ptr %2, i64 noundef %3, ptr %1, i32 noundef 1)
  %i.b = call i16 @_ZN2v88internal8JSObject30CheckIfCanDefineAsConfigurableEPNS0_7IsolateEPNS0_14LookupIteratorENS0_12DirectHandleINS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, ptr noundef nonnull %6, ptr poison, i64 %5) ; 3 uses
  %.sroa.6.0.extract.shift = lshr i16 %i.b, 8
  %i.c = and i16 %.sroa.6.0.extract.shift, %i.b
  %or.cond.not = icmp eq i16 %i.c, 0
  br i1 %or.cond.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = call i16 @_ZN2v88internal8JSObject33DefineOwnPropertyIgnoreAttributesEPNS0_14LookupIteratorENS0_12DirectHandleINS0_6ObjectEEENS0_18PropertyAttributesENS_5MaybeINS0_11ShouldThrowEEENS1_20AccessorInfoHandlingENS0_22EnforceDefineSemanticsENS0_11StoreOriginENS0_17MaybeDirectHandleIS5_EE(ptr noundef nonnull %6, ptr %4, i32 noundef 0, i64 4294967297, i32 noundef 1, i32 noundef 0, i32 noundef 1, i64 0)
  %i.e = trunc i16 %i.d to i1
  %i.f = icmp ne ptr %4, null
  %.not23 = select i1 %i.e, i1 %i.f, i1 false
  %spec.select = select i1 %.not23, i16 257, i16 0
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.012.0 = phi i16 [ %spec.select, %bb.d ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.sroa.012.1 = phi i16 [ %.sroa.012.0, %bb.e ], [ 257, %bb.b ]
  ret i16 %.sroa.012.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i16 @_ZN2v88internal10JSReceiver15AddPrivateFieldEPNS0_14LookupIteratorENS0_12DirectHandleINS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::PropertyDescriptor", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_ZN2v88internal14LookupIterator7GetNameEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call ptr @_ZN2v88internal7Factory12SizeToStringEmb(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i64 noundef %i.h, i1 noundef zeroext true) #21 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  store i64 %i.j, ptr %i.d, align 8
  br label %_ZN2v88internal14LookupIterator7GetNameEv.exit

_ZN2v88internal14LookupIterator7GetNameEv.exit:   ; preds = %bb.a, %bb.b
  %.sroa.01.0.copyload.i = phi ptr [ %i.i, %bb.b ], [ %i.e, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4
  switch i32 %i.l, label %bb.i [
    i32 5, label %bb.c
    i32 8, label %bb.d
    i32 7, label %bb.e
    i32 4, label %bb.e
    i32 6, label %bb.e
    i32 2, label %bb.e
    i32 1, label %bb.e
    i32 3, label %bb.f
  ]

bb.c:                                             ; preds = %_ZN2v88internal14LookupIterator7GetNameEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.m, align 8
  store i8 -1, ptr %3, align 8
  %i.o = call i16 @_ZN2v88internal7JSProxy16SetPrivateSymbolEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6SymbolEEEPNS0_18PropertyDescriptorENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %i.c, ptr %.sroa.0.0.copyload.i, ptr %.sroa.01.0.copyload.i, ptr noundef nonnull %3, i64 %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.j

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator7GetNameEv.exit
  %i.p = tail call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef 457, ptr null, i64 0) #21
  %i.q = load i64, ptr %i.p, align 8
  %i.r = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %i.c, i64 %i.q, ptr noundef null) #21 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %_ZN2v88internal14LookupIterator7GetNameEv.exit, %_ZN2v88internal14LookupIterator7GetNameEv.exit, %_ZN2v88internal14LookupIterator7GetNameEv.exit, %_ZN2v88internal14LookupIterator7GetNameEv.exit, %_ZN2v88internal14LookupIterator7GetNameEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #23
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal14LookupIterator7GetNameEv.exit
  %i.s = tail call noundef zeroext i1 @_ZNK2v88internal14LookupIterator9HasAccessEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #21
  br i1 %i.s, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.01.0.copyload.i34 = load ptr, ptr %i.u, align 8
  %i.v = tail call ptr @_ZN2v88internal7Isolate23ReportFailedAccessCheckENS0_12DirectHandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320) %i.t, ptr %.sroa.01.0.copyload.i34) #21
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #23
  unreachable

bb.i:                                             ; preds = %bb.f, %_ZN2v88internal14LookupIterator7GetNameEv.exit
  %i.x = tail call i16 @_ZN2v88internal6Object30TransitionAndWriteDataPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_18PropertyAttributesENS_5MaybeINS0_11ShouldThrowEEENS0_11StoreOriginE(ptr noundef nonnull %0, ptr %1, i32 noundef 0, i64 %2, i32 noundef 0) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.d, %bb.c
  %.sroa.033.0 = phi i16 [ %i.x, %bb.i ], [ %i.o, %bb.c ], [ 0, %bb.d ], [ 0, %bb.g ]
  ret i16 %.sroa.033.0
}

declare i16 @_ZN2v88internal7JSProxy16SetPrivateSymbolEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6SymbolEEEPNS0_18PropertyDescriptorENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef, ptr, ptr, ptr noundef, i64) local_unnamed_addr #2

declare i16 @_ZN2v88internal6Object30TransitionAndWriteDataPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EENS0_18PropertyAttributesENS_5MaybeINS0_11ShouldThrowEEENS0_11StoreOriginE(ptr noundef, ptr, i32 noundef, i64, i32 noundef) local_unnamed_addr #2

declare i16 @_ZN2v88internal7JSProxy24GetOwnPropertyDescriptorEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEEPNS0_18PropertyDescriptorE(ptr noundef, ptr, ptr, ptr noundef) local_unnamed_addr #2

declare ptr @_ZNK2v88internal14LookupIterator12GetAccessorsEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare ptr @_ZN2v88internal12AccessorPair12GetComponentEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_IS1_EENS0_17AccessorComponentE(ptr noundef, ptr, ptr, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden i16 @_ZN2v88internal10JSReceiver17SetIntegrityLevelEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_18PropertyAttributesENS0_11ShouldThrowE(ptr noundef %0, ptr %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::PropertyKey", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::PropertyDescriptor", align 8 ; 6 uses
  %7 = alloca %"class.v8::internal::PropertyDescriptor", align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::PropertyDescriptor", align 8 ; 8 uses
  %9 = alloca %"class.v8::internal::PropertyDescriptor", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp ugt i16 %i.g, 302
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.i = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.j = add i64 %i.i, 14
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i8, ptr %i.k, align 1
  %i.m = and i8 %i.l, -8
  %i.n = icmp eq i8 %i.m, 56
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 305
  br i1 %i.s, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call i16 @_ZN2v88internal8JSObject18TestIntegrityLevelEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_18PropertyAttributesE(ptr noundef %0, ptr nonnull %1, i32 noundef %2) ; 2 uses
  %i.u = trunc i16 %i.t to i1
  br i1 %i.u, label %_ZNKR2v85MaybeIbE8FromJustEv.exit62, label %_ZNK2v88internal17MaybeDirectHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNKR2v85MaybeIbE8FromJustEv.exit62:              ; preds = %bb.d
  %.not162 = icmp samesign ult i16 %i.t, 256
  br i1 %.not162, label %bb.e, label %_ZNK2v88internal17MaybeDirectHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.e:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit62
  %i.v = icmp eq i32 %2, 4
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = tail call i16 @_ZN2v88internal8JSObject31PreventExtensionsWithTransitionILNS0_18PropertyAttributesE4EEENS_5MaybeIbEEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11ShouldThrowE(ptr noundef %0, ptr nonnull %1, i32 noundef %3) ; 2 uses
  %.sroa.0110.0.extract.trunc = trunc i16 %i.w to i8
  %.sroa.12.0.extract.shift = lshr i16 %i.w, 8
  %.sroa.12.0.extract.trunc = trunc nuw i16 %.sroa.12.0.extract.shift to i8
  br label %_ZNK2v88internal17MaybeDirectHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.x = tail call i16 @_ZN2v88internal8JSObject31PreventExtensionsWithTransitionILNS0_18PropertyAttributesE5EEENS_5MaybeIbEEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11ShouldThrowE(ptr noundef %0, ptr nonnull %1, i32 noundef %3) ; 2 uses
  %.sroa.0110.0.extract.trunc111 = trunc i16 %i.x to i8
  %.sroa.12.0.extract.shift115 = lshr i16 %i.x, 8
  %.sroa.12.0.extract.trunc116 = trunc nuw i16 %.sroa.12.0.extract.shift115 to i8
  br label %_ZNK2v88internal17MaybeDirectHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.a
  %i.y = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp eq i16 %i.ab, 302
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge
  %i.ad = tail call i16 @_ZN2v88internal7JSProxy17PreventExtensionsENS0_12DirectHandleIS1_EENS0_11ShouldThrowE(ptr nonnull %1, i32 noundef %3) #21
  br label %_ZN2v88internal10JSReceiver17PreventExtensionsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11ShouldThrowE.exit

bb.i:                                             ; preds = %.critedge
  %i.ae = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.af = add i64 %i.ae, 11
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i16, ptr %i.ag monotonic, align 2
  %i.ai = and i16 %i.ah, -2
  %i.aj = icmp eq i16 %i.ai, 300
  br i1 %i.aj, label %_ZN2v88internal10JSReceiver17PreventExtensionsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11ShouldThrowE.exit.thread, label %bb.j

_ZN2v88internal10JSReceiver17PreventExtensionsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11ShouldThrowE.exit.thread: ; preds = %bb.i
  %i.ak = tail call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 457, ptr null, i64 0) #21
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.al, ptr noundef null) #21 ; 0 uses
  br label %_ZNK2v88internal17MaybeDirectHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.j:                                             ; preds = %bb.i
  %i.an = tail call i16 @_ZN2v88internal8JSObject17PreventExtensionsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11ShouldThrowE(ptr noundef %0, ptr nonnull %1, i32 noundef %3)
  br label %_ZN2v88internal10JSReceiver17PreventExtensionsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11ShouldThrowE.exit

_ZN2v88internal10JSReceiver17PreventExtensionsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11ShouldThrowE.exit: ; preds = %bb.h, %bb.j
  %.sroa.014.0.i = phi i16 [ %i.ad, %bb.h ], [ %i.an, %bb.j ]
  %i.ao = trunc i16 %.sroa.014.0.i to i1
  br i1 %i.ao, label %bb.k, label %_ZNK2v88internal17MaybeDirectHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.k:                                             ; preds = %_ZN2v88internal10JSReceiver17PreventExtensionsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11ShouldThrowE.exit
  %i.ap = tail call ptr @_ZN2v88internal14KeyAccumulator7GetKeysEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_17KeyCollectionModeENS0_14PropertyFilterENS0_17GetKeysConversionEbb(ptr noundef %0, ptr nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #21 ; 4 uses
  %.not163 = icmp eq ptr %i.ap, null
  br i1 %.not163, label %_ZNK2v88internal17MaybeDirectHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i8 0, i64 32, i1 false)
  store i8 8, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i8 0, i64 32, i1 false)
  store i8 40, ptr %7, align 8
  %i.as = icmp eq i32 %2, 4
  %i.at = load i64, ptr %i.ap, align 8
  %i.au = add i64 %i.at, -1
  %i.av = inttoptr i64 %i.au to ptr               ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = lshr i64 %i.ax, 32
  %i.az = trunc nuw i64 %i.ay to i32
  %.not51171 = icmp sgt i32 %i.az, 0              ; 2 uses
  br i1 %i.as, label %.preheader, label %.preheader167

.preheader167:                                    ; preds = %bb.l
  br i1 %.not51171, label %.lr.ph, label %.critedge55

.lr.ph:                                           ; preds = %.preheader167
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.p

.preheader:                                       ; preds = %bb.l
  br i1 %.not51171, label %.lr.ph173, label %.critedge55

.lr.ph173:                                        ; preds = %.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 568
  br label %bb.n

bb.m:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.bi = load i64, ptr %i.ap, align 8
  %i.bj = add i64 %i.bi, -1
  %i.bk = inttoptr i64 %i.bj to ptr               ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = ashr i64 %i.bm, 32
  %.not51 = icmp slt i64 %indvars.iv.next178, %i.bn
  br i1 %.not51, label %bb.n, label %.critedge55, !llvm.loop !37

bb.n:                                             ; preds = %.lr.ph173, %bb.m
  %indvars.iv177 = phi i64 [ 0, %.lr.ph173 ], [ %indvars.iv.next178, %bb.m ] ; 2 uses
  %i.bo = phi ptr [ %i.av, %.lr.ph173 ], [ %i.bk, %bb.m ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv177
  %i.br = load atomic volatile i64, ptr %i.bq monotonic, align 8
  %i.bs = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bt = load ptr, ptr %i.bh, align 8
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.o, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !7

bb.o:                                             ; preds = %bb.n
  %i.bv = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.n, %bb.o
  %.0.i = phi ptr [ %i.bv, %bb.o ], [ %i.bs, %bb.n ] ; 3 uses
  %i.bw = ptrtoint ptr %.0.i to i64
  %i.bx = add i64 %i.bw, 8
  %i.by = inttoptr i64 %i.bx to ptr
  store ptr %i.by, ptr %i.bg, align 8
  store i64 %i.br, ptr %.0.i, align 8
  %i.bz = call i16 @_ZN2v88internal10JSReceiver17DefineOwnPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEEPNS0_18PropertyDescriptorENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %0, ptr nonnull %1, ptr nonnull %.0.i, ptr noundef nonnull %6, i64 4294967297)
  %i.ca = trunc i16 %i.bz to i1
  br i1 %i.ca, label %bb.m, label %.critedge55

bb.p:                                             ; preds = %.lr.ph, %.critedge57
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge57 ] ; 2 uses
  %i.cb = phi ptr [ %i.av, %.lr.ph ], [ %i.cx, %.critedge57 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv
  %i.ce = load atomic volatile i64, ptr %i.cd monotonic, align 8
  %i.cf = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.cg = load ptr, ptr %i.bb, align 8
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.q, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit68, !prof !7

bb.q:                                             ; preds = %bb.p
  %i.ci = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #21
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit68

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit68: ; preds = %bb.p, %bb.q
  %.0.i67 = phi ptr [ %i.ci, %bb.q ], [ %i.cf, %bb.p ] ; 4 uses
  %i.cj = ptrtoint ptr %.0.i67 to i64
  %i.ck = add i64 %i.cj, 8
  %i.cl = inttoptr i64 %i.ck to ptr
  store ptr %i.cl, ptr %i.ba, align 8
  store i64 %i.ce, ptr %.0.i67, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store i8 0, ptr %8, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN2v88internal11PropertyKeyC2INS0_6ObjectENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS4_IS6_EEEEEPNS0_7IsolateES7_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %0, ptr nonnull %.0.i67)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %4, align 8
  %i.cm = load i64, ptr %i.bd, align 8
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull %0, ptr nonnull %1, ptr %.sroa.0.0.copyload.i.i.i, i64 noundef %i.cm, ptr nonnull %1, i32 noundef 1)
  %i.cn = call i16 @_ZN2v88internal10JSReceiver24GetOwnPropertyDescriptorEPNS0_14LookupIteratorEPNS0_18PropertyDescriptorE(ptr noundef nonnull %5, ptr noundef nonnull %8) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.co = trunc i16 %i.cn to i1
  br i1 %i.co, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %.critedge59

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit68
  %i.cp = and i16 %i.cn, 256
  %.not164 = icmp eq i16 %i.cp, 0
  br i1 %.not164, label %.critedge57, label %bb.r

bb.r:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.cq = load ptr, ptr %i.be, align 8
  %.not.i = icmp eq ptr %i.cq, null
  %i.cr = load ptr, ptr %i.bf, align 8
  %.fr = freeze ptr %i.cr
  %.not165 = icmp eq ptr %.fr, null
  %or.cond = and i1 %.not.i, %.not165
  %i.cs = select i1 %or.cond, ptr %7, ptr %6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i64 40, i1 false)
  %i.ct = call i16 @_ZN2v88internal10JSReceiver17DefineOwnPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEEPNS0_18PropertyDescriptorENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %0, ptr nonnull %1, ptr nonnull %.0.i67, ptr noundef nonnull %9, i64 4294967297)
  %i.cu = trunc i16 %i.ct to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br i1 %i.cu, label %.critedge57, label %.critedge59

.critedge57:                                      ; preds = %bb.r, %_ZNKR2v85MaybeIbE8FromJustEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cv = load i64, ptr %i.ap, align 8
  %i.cw = add i64 %i.cv, -1
  %i.cx = inttoptr i64 %i.cw to ptr               ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = ashr i64 %i.cz, 32
  %.not = icmp slt i64 %indvars.iv.next, %i.da
  br i1 %.not, label %bb.p, label %.critedge55, !llvm.loop !38

.critedge59:                                      ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit68, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.critedge55

.critedge55:                                      ; preds = %.critedge57, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %bb.m, %.preheader167, %.preheader, %.critedge59
  %.sroa.0110.3 = phi i8 [ 0, %.critedge59 ], [ 1, %bb.m ], [ 1, %.preheader ], [ 1, %.preheader167 ], [ 0, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ 1, %.critedge57 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZNK2v88internal17MaybeDirectHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal17MaybeDirectHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit62, %bb.f, %bb.g, %bb.d, %.critedge55, %bb.k, %_ZN2v88internal10JSReceiver17PreventExtensionsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11ShouldThrowE.exit, %_ZN2v88internal10JSReceiver17PreventExtensionsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11ShouldThrowE.exit.thread
  %.sroa.0110.5 = phi i8 [ 0, %bb.k ], [ 0, %_ZN2v88internal10JSReceiver17PreventExtensionsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11ShouldThrowE.exit ], [ 0, %_ZN2v88internal10JSReceiver17PreventExtensionsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11ShouldThrowE.exit.thread ], [ %.sroa.0110.3, %.critedge55 ], [ %.sroa.0110.0.extract.trunc, %bb.f ], [ 0, %bb.d ], [ %.sroa.0110.0.extract.trunc111, %bb.g ], [ 1, %_ZNKR2v85MaybeIbE8FromJustEv.exit62 ]
  %.sroa.12.6 = phi i8 [ undef, %bb.k ], [ 0, %_ZN2v88internal10JSReceiver17PreventExtensionsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11ShouldThrowE.exit ], [ 0, %_ZN2v88internal10JSReceiver17PreventExtensionsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_11ShouldThrowE.exit.thread ], [ %.sroa.0110.3, %.critedge55 ], [ %.sroa.12.0.extract.trunc, %bb.f ], [ 0, %bb.d ], [ %.sroa.12.0.extract.trunc116, %bb.g ], [ 1, %_ZNKR2v85MaybeIbE8FromJustEv.exit62 ]
  %.sroa.12.0.insert.ext = zext i8 %.sroa.12.6 to i16
  %.sroa.12.0.insert.shift = shl nuw i16 %.sroa.12.0.insert.ext, 8
  %.sroa.0110.0.insert.ext = zext i8 %.sroa.0110.5 to i16
  %.sroa.0110.0.insert.insert = or disjoint i16 %.sroa.12.0.insert.shift, %.sroa.0110.0.insert.ext
  ret i16 %.sroa.0110.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i16 0, 258) i16 @_ZN2v88internal8JSObject18TestIntegrityLevelEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_18PropertyAttributesE(ptr noundef %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 7 uses
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp ult i16 %i.g, 1042
  br i1 %i.h, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.j = add i64 %i.i, 14
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i8, ptr %i.k, align 1
  %i.m = and i8 %i.l, -8
  %i.n = icmp eq i8 %i.m, 56
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.p = add i64 %i.o, 15
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i32, ptr %i.q monotonic, align 4
  %i.s = and i32 %i.r, 134217728
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_122FastTestIntegrityLevelEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_18PropertyAttributesE.exit

bb.d:                                             ; preds = %bb.c
  %i.t = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.u = add i64 %i.t, 14
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load i8, ptr %i.v, align 1
  %i.x = lshr i8 %i.w, 2                          ; 5 uses
  %i.y = icmp eq i8 %i.x, 13
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.z = add i64 %i.a, 15
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 10624
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96 ; 2 uses
  %i.ag = add i64 %i.ab, -1
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = lshr i64 %i.aj, 32                      ; 3 uses
  %.not35.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not35.i.i.i, label %_ZN2v88internal12_GLOBAL__N_126TestElementsIntegrityLevelEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_18PropertyAttributesE.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 104 ; 2 uses
  %.not43.i.i.i = icmp eq i32 %2, 5
  br i1 %.not43.i.i.i, label %.lr.ph.split.i.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.us.i.i.i
  %.sroa.019.036.us.i.i.i = phi i64 [ %i.bk, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.us.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.an = mul i64 %.sroa.019.036.us.i.i.i, 12884901888 ; 2 uses
  %sext.i.i.i.us.i.i.i = add i64 %i.an, 17179869184
  %i.ao = ashr exact i64 %sext.i.i.i.us.i.i.i, 29
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 %i.ao
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8 ; 4 uses
  %i.ar = load i64, ptr %i.af, align 8
  %i.as = icmp eq i64 %i.aq, %i.ar
  br i1 %i.as, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.us.i.i.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us.i.i.i

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us.i.i.i: ; preds = %.lr.ph.split.us.i.i.i
  %i.at = load i64, ptr %i.am, align 8
  %.not.i.us.i.i.i = icmp eq i64 %i.aq, %i.at
  br i1 %.not.i.us.i.i.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.us.i.i.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.us.i.i.i

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.us.i.i.i: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us.i.i.i
  %i.au = trunc i64 %i.aq to i1
  br i1 %i.au, label %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit.i.us.i.i.i, label %_ZN2v88internal6Object9FilterKeyENS0_6TaggedIS1_EENS0_14PropertyFilterE.exit.us.i.i.i

_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit.i.us.i.i.i: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.us.i.i.i
  %i.av = add nsw i64 %i.aq, -1
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8
  %i.ay = add i64 %i.ax, 11
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load atomic volatile i16, ptr %i.az monotonic, align 2
  %i.bb = icmp eq i16 %i.ba, 128
  br i1 %i.bb, label %bb.f, label %_ZN2v88internal6Object9FilterKeyENS0_6TaggedIS1_EENS0_14PropertyFilterE.exit.us.i.i.i

bb.f:                                             ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit.i.us.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = trunc i32 %i.bd to i1
  br i1 %i.be, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.us.i.i.i, label %_ZN2v88internal6Object9FilterKeyENS0_6TaggedIS1_EENS0_14PropertyFilterE.exit.us.i.i.i

_ZN2v88internal6Object9FilterKeyENS0_6TaggedIS1_EENS0_14PropertyFilterE.exit.us.i.i.i: ; preds = %bb.f, %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit.i.us.i.i.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.us.i.i.i
  %sext.i.i.us.i.i.i = add i64 %i.an, 25769803776
  %i.bf = ashr exact i64 %sext.i.i.us.i.i.i, 29
  %i.bg = getelementptr inbounds i8, ptr %i.al, i64 %i.bf
  %i.bh = load atomic volatile i64, ptr %i.bg monotonic, align 8
  %i.bi = and i64 %i.bh, 68719476736
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_ZN2v88internal12_GLOBAL__N_122FastTestIntegrityLevelEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_18PropertyAttributesE.exit, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.us.i.i.i

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.us.i.i.i: ; preds = %_ZN2v88internal6Object9FilterKeyENS0_6TaggedIS1_EENS0_14PropertyFilterE.exit.us.i.i.i, %bb.f, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.us.i.i.i, %.lr.ph.split.us.i.i.i
  %i.bk = add nuw nsw i64 %.sroa.019.036.us.i.i.i, 1 ; 2 uses
  %.not.us.i.i.i = icmp eq i64 %i.bk, %i.ak
  br i1 %.not.us.i.i.i, label %_ZN2v88internal12_GLOBAL__N_126TestElementsIntegrityLevelEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_18PropertyAttributesE.exit.thread.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i
  %.sroa.019.036.i.i.i = phi i64 [ %i.ck, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.bl = mul i64 %.sroa.019.036.i.i.i, 12884901888 ; 2 uses
  %sext.i.i.i.i.i.i = add i64 %i.bl, 17179869184
  %i.bm = ashr exact i64 %sext.i.i.i.i.i.i, 29
  %i.bn = getelementptr inbounds i8, ptr %i.al, i64 %i.bm
  %i.bo = load atomic volatile i64, ptr %i.bn monotonic, align 8 ; 4 uses
  %i.bp = load i64, ptr %i.af, align 8
  %i.bq = icmp eq i64 %i.bo, %i.bp
  br i1 %i.bq, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i: ; preds = %.lr.ph.split.i.i.i
  %i.br = load i64, ptr %i.am, align 8
  %.not.i.i.i.i = icmp eq i64 %i.bo, %i.br
  br i1 %.not.i.i.i.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.i.i.i

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i
  %i.bs = trunc i64 %i.bo to i1
  br i1 %i.bs, label %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i, label %_ZN2v88internal6Object9FilterKeyENS0_6TaggedIS1_EENS0_14PropertyFilterE.exit.i.i.i

_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  %i.bt = add nsw i64 %i.bo, -1
  %i.bu = inttoptr i64 %i.bt to ptr               ; 2 uses
  %i.bv = load atomic volatile i64, ptr %i.bu monotonic, align 8
  %i.bw = add i64 %i.bv, 11
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load atomic volatile i16, ptr %i.bx monotonic, align 2
  %i.bz = icmp eq i16 %i.by, 128
  br i1 %i.bz, label %bb.g, label %_ZN2v88internal6Object9FilterKeyENS0_6TaggedIS1_EENS0_14PropertyFilterE.exit.i.i.i

bb.g:                                             ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = trunc i32 %i.cb to i1
  br i1 %i.cc, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i, label %_ZN2v88internal6Object9FilterKeyENS0_6TaggedIS1_EENS0_14PropertyFilterE.exit.i.i.i

_ZN2v88internal6Object9FilterKeyENS0_6TaggedIS1_EENS0_14PropertyFilterE.exit.i.i.i: ; preds = %bb.g, %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  %sext.i.i.i.i.i = add i64 %i.bl, 25769803776
  %i.cd = ashr exact i64 %sext.i.i.i.i.i, 29
  %i.ce = getelementptr inbounds i8, ptr %i.al, i64 %i.cd
  %i.cf = load atomic volatile i64, ptr %i.ce monotonic, align 8 ; 2 uses
  %i.cg = and i64 %i.cf, 68719476736
  %i.ch = icmp ne i64 %i.cg, 0
  %i.ci = and i64 %i.cf, 21474836480
  %i.cj = icmp ne i64 %i.ci, 0
  %or.cond.i.i.i = and i1 %i.ch, %i.cj
  br i1 %or.cond.i.i.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i, label %_ZN2v88internal12_GLOBAL__N_122FastTestIntegrityLevelEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_18PropertyAttributesE.exit

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5ToKeyENS0_13ReadOnlyRootsENS0_13InternalIndexEPNS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i: ; preds = %_ZN2v88internal6Object9FilterKeyENS0_6TaggedIS1_EENS0_14PropertyFilterE.exit.i.i.i, %bb.g, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.i, %.lr.ph.split.i.i.i
  %i.ck = add nuw nsw i64 %.sroa.019.036.i.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ck, %i.ak
  br i1 %.not.i.i.i, label %_ZN2v88internal12_GLOBAL__N_126TestElementsIntegrityLevelEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_18PropertyAttributesE.exit.thread.i, label %.lr.ph.split.i.i.i

bb.h:                                             ; preds = %bb.d
  %i.cl = add nsw i8 %i.x, -18
  %i.cm = icmp ult i8 %i.cl, 24
  br i1 %i.cm, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cn = icmp eq i32 %2, 5
  br i1 %i.cn, label %bb.j, label %.critedge.i.i

bb.j:                                             ; preds = %bb.i
  %i.co = add i64 %i.a, 55
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = load i64, ptr %i.cp, align 8
  %.not.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i, label %.split.i.i, label %_ZN2v88internal12_GLOBAL__N_122FastTestIntegrityLevelEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_18PropertyAttributesE.exit

.split.i.i:                                       ; preds = %bb.j
  %i.cr = tail call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_128TestPropertiesIntegrityLevelENS0_6TaggedINS0_8JSObjectEEENS0_18PropertyAttributesE(i64 %i.a, i32 noundef 5)
  br i1 %i.cr, label %_ZN2v88internal12_GLOBAL__N_126TestElementsIntegrityLevelEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_18PropertyAttributesE.exit.thread.i, label %_ZN2v88internal12_GLOBAL__N_122FastTestIntegrityLevelEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_18PropertyAttributesE.exit

.critedge.i.i:                                    ; preds = %bb.i
  %i.cs = tail call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_128TestPropertiesIntegrityLevelENS0_6TaggedINS0_8JSObjectEEENS0_18PropertyAttributesE(i64 %i.a, i32 noundef %2)
  br i1 %i.cs, label %_ZN2v88internal12_GLOBAL__N_126TestElementsIntegrityLevelEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_18PropertyAttributesE.exit.thread.i, label %_ZN2v88internal12_GLOBAL__N_122FastTestIntegrityLevelEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_18PropertyAttributesE.exit

bb.k:                                             ; preds = %bb.h
  %i.ct = and i8 %i.x, 62                         ; 3 uses
  %i.cu = icmp eq i8 %i.ct, 10
  br i1 %i.cu, label %_ZN2v88internal12_GLOBAL__N_126TestElementsIntegrityLevelEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_18PropertyAttributesE.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
end_hunk_0
