Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/option-utils?download=true
inline.NumInlined: 326
inline.NumDeleted: 190
begin_hunk_0_@llvm.lifetime.end.p0

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal21CoerceOptionsToObjectEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEEPKc(ptr noundef %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @_ZN2v88internal7Factory24NewJSObjectWithNullProtoEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  br label %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread26

bb.c:                                             ; preds = %bb.a
  %i.f = trunc i64 %i.a to i1
  br i1 %i.f, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit, !prof !5

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.c
  %i.g = add nsw i64 %i.a, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = add i64 %i.i, 11
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i16, ptr %i.k monotonic, align 2
  %i.m = icmp ugt i16 %i.l, 299
  br i1 %i.m, label %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread26, label %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit, !prof !6

_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit: ; preds = %bb.c, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.n = tail call ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef nonnull %0, ptr nonnull %1, ptr noundef %2) #9
  br label %_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread26

_ZNK2v88internal11MaybeHandleINS0_10JSReceiverEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread26: ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit, %bb.b
  %.sroa.011.0 = phi ptr [ %i.e, %bb.b ], [ %i.n, %_ZN2v88internal6Object8ToObjectIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_10JSReceiverEE9MaybeTypeEPNS0_7IsolateES6_PKc.exit ], [ %1, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  ret ptr %.sroa.011.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i16 0, 258) i16 @_ZN2v88internal15GetStringOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEPKcPS7_(ptr noundef %0, ptr %1, ptr %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::PropertyKey", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @_ZN2v88internal11PropertyKeyC2INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_INS0_4NameEENS3_IS5_EEEEEPNS0_7IsolateES6_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %0, ptr %2)
  %i.a = load ptr, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load i64, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef %0, ptr %1, ptr %i.a, i64 noundef %i.c, ptr %1, i32 noundef 3)
  %i.d = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %5, i1 noundef zeroext false) #9 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = trunc i64 %i.e to i1
  br i1 %i.i, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.c
  %i.j = add nsw i64 %i.e, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2
  %i.p = icmp ult i16 %i.o, 128
  br i1 %i.p, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread41, label %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %bb.c, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.q = call ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %0, ptr nonnull %i.d) #9 ; 2 uses
  %.not44 = icmp eq ptr %i.q, null
  br i1 %.not44, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread41

_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread41: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.sroa.07.0.i3943 = phi ptr [ %i.q, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ %i.d, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %i.r = ptrtoint ptr %.sroa.07.0.i3943 to i64
  store i64 %i.r, ptr %4, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread41, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit, %bb.b, %bb.a
  %.sroa.5.1 = phi i16 [ 0, %bb.a ], [ 1, %bb.b ], [ 257, %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread41 ], [ 256, %_ZN2v88internal6Object8ToStringIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit ]
  ret i16 %.sroa.5.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i16 0, 258) i16 @_ZN2v88internal13GetBoolOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEPKcPb(ptr noundef %0, ptr %1, ptr %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::PropertyKey", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @_ZN2v88internal11PropertyKeyC2INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_INS0_4NameEENS3_IS5_EEEEEPNS0_7IsolateES6_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %0, ptr %2)
  %i.a = load ptr, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load i64, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef %0, ptr %1, ptr %i.a, i64 noundef %i.c, ptr %1, i32 noundef 3)
  %i.d = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %5, i1 noundef zeroext false) #9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef zeroext i1 @_ZN2v88internal6Object12BooleanValueINS0_7IsolateEEEbNS0_6TaggedIS1_EEPT_(i64 %i.e, ptr noundef nonnull %0) #9
  %i.j = zext i1 %i.i to i8
  store i8 %i.j, ptr %4, align 1
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.4.0 = phi i16 [ 0, %bb.a ], [ 257, %bb.c ], [ 1, %bb.b ]
  ret i16 %.sroa.4.0
}

declare noundef zeroext i1 @_ZN2v88internal6Object12BooleanValueINS0_7IsolateEEEbNS0_6TaggedIS1_EEPT_(i64, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 0, -4294967294) i64 @_ZN2v88internal19DefaultNumberOptionEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEEiiiNS3_INS0_6StringEEE(ptr noundef %0, ptr %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8                ; 5 uses
  %i.b = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 10624
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.a, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.21.0.insert.ext.i = zext i32 %4 to i64
  %.sroa.21.0.insert.shift.i = shl nuw i64 %.sroa.21.0.insert.ext.i, 32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = and i64 %i.a, 1
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread62, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.c
  %i.j = add nsw i64 %i.a, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2
  %i.p = icmp eq i16 %i.o, 130
  br i1 %i.p, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread62, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.q = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %1) #9 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.d, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread62_crit_edge

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread62_crit_edge: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.pre = load i64, ptr %i.q, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread62

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread62: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread62_crit_edge, %bb.c, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.r = phi i64 [ %.pre, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit._ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread62_crit_edge ], [ %i.a, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %i.a, %bb.c ] ; 5 uses
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread62
  %i.t = add nsw i64 %i.r, -1
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.w = add i64 %i.v, 11
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i16, ptr %i.x monotonic, align 2
  %i.z = icmp eq i16 %i.y, 130
  br i1 %i.z, label %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.aa, align 8
  %i.ab = fcmp uno double %.0.copyload.i.i.i.i, 0.000000e+00
  br i1 %i.ab, label %.critedge, label %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread62, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ac = and i64 %i.r, 1
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.thread

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit: ; preds = %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.ae = lshr i64 %i.r, 32
  %i.af = trunc nuw i64 %i.ae to i32
  %7 = sitofp i32 %i.af to double                 ; 3 uses
  %8 = sitofp i32 %2 to double
  %9 = fcmp olt double %7, %8
  %10 = sitofp i32 %3 to double
  %11 = fcmp ogt double %7, %10
  %or.cond = or i1 %9, %11
  br i1 %or.cond, label %.critedge, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit19

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.thread: ; preds = %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.ag = add nsw i64 %i.r, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.ai, align 1 ; 3 uses
  %i.aj = sitofp i32 %2 to double
  %i.ak = fcmp olt double %.0.copyload.i.i.i.i.i, %i.aj
  %i.al = sitofp i32 %3 to double
  %i.am = fcmp ogt double %.0.copyload.i.i.i.i.i, %i.al
  %or.cond70 = or i1 %i.ak, %i.am
  br i1 %or.cond70, label %.critedge, label %.thread65

.critedge:                                        ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.thread, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit, %_ZN2v88internal5IsNaNENS0_6TaggedINS0_6ObjectEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store ptr %5, ptr %6, align 8
  %i.an = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 267, ptr nonnull %6, i64 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ao, ptr noundef null) #9 ; 0 uses
  br label %bb.d

.thread65:                                        ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.thread
  %i.aq = tail call double @llvm.floor.f64(double %.0.copyload.i.i.i.i.i)
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit19

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit19: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit, %.thread65
  %i.ar = phi double [ %i.aq, %.thread65 ], [ %7, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit ]
  %i.as = fptosi double %i.ar to i32
  %.sroa.21.0.insert.ext.i20 = zext i32 %i.as to i64
  %.sroa.21.0.insert.shift.i21 = shl nuw i64 %.sroa.21.0.insert.ext.i20, 32
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit19, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit, %bb.b
  %.sroa.032.1 = phi i64 [ 1, %bb.b ], [ 0, %.critedge ], [ 1, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit19 ], [ 0, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit ]
  %.sroa.5.sroa.0.1 = phi i64 [ %.sroa.21.0.insert.shift.i, %bb.b ], [ 0, %.critedge ], [ %.sroa.21.0.insert.shift.i21, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit19 ], [ 0, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit ]
  %.sroa.032.0.insert.insert = or disjoint i64 %.sroa.5.sroa.0.1, %.sroa.032.1
  ret i64 %.sroa.032.0.insert.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 0, -4294967294) i64 @_ZN2v88internal15GetNumberOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEiii(ptr noundef %0, ptr %1, ptr %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %.pre.pre.i = load i64, ptr %2, align 8
  %i.a = add i64 %.pre.pre.i, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 128
  br i1 %i.g, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.k = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.k, ptr %6, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr null, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.v = ptrtoint ptr %1 to i64
  store i64 %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 -1, i64 16, i1 false)
  %i.x = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.y = add i64 %i.x, 11
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i16, ptr %i.z monotonic, align 2
  %i.ab = and i16 %i.aa, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ab, 32
  br i1 %.not.i21.i.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !7, !noundef !8
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.af = load i8, ptr %i.ae, align 8, !range !7
  %i.ag = trunc nuw i8 %i.af to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ad, true
  %i.ah = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ag
  br i1 %i.ah, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.aj = load i8, ptr %i.ai, align 8, !range !7, !noundef !8
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #10
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.am = load ptr, ptr %i.al, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.b
  %.pn.i.i26.i.i.i = phi ptr [ %i.am, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.an = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.ao = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2) #9
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.ao, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %2, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.q, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %6) #9
  %i.ap = load i32, ptr %i.l, align 4
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.aq = load ptr, ptr %i.p, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.e

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.as = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %6, i1 noundef zeroext false) #9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread
  %.sroa.07.0.i17 = phi ptr [ %i.ar, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread ], [ %i.as, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ]
  %i.at = call i64 @_ZN2v88internal19DefaultNumberOptionEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEEiiiNS3_INS0_6StringEEE(ptr noundef %0, ptr nonnull %.sroa.07.0.i17, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nonnull %2)
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %bb.e
  %.sroa.012.0.insert.insert = phi i64 [ %i.at, %bb.e ], [ 0, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ]
  ret i64 %.sroa.012.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i8, double } @_ZN2v88internal23GetNumberOptionAsDoubleEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEd(ptr noundef %0, ptr %1, ptr %2, double noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %.pre.pre.i = load i64, ptr %2, align 8
  %i.a = add i64 %.pre.pre.i, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 128
  br i1 %i.g, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.k = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.k, ptr %5, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.v = ptrtoint ptr %1 to i64
  store i64 %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 -1, i64 16, i1 false)
  %i.x = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.y = add i64 %i.x, 11
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i16, ptr %i.z monotonic, align 2
  %i.ab = and i16 %i.aa, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ab, 32
  br i1 %.not.i21.i.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !7, !noundef !8
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.af = load i8, ptr %i.ae, align 8, !range !7
  %i.ag = trunc nuw i8 %i.af to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ad, true
  %i.ah = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ag
end_hunk_0
